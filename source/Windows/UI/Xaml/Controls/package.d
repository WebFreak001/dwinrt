module Windows.UI.Xaml.Controls;

import dwinrt;

@uuid("7b0fc253-86a5-4b43-9872-0b8a6234b74b")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBar : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsOpen(bool* return_value);
	HRESULT set_IsOpen(bool value);
	HRESULT get_IsSticky(bool* return_value);
	HRESULT set_IsSticky(bool value);
	HRESULT add_Opened(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Opened(EventRegistrationToken token);
	HRESULT add_Closed(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
}

@uuid("c3ab17b3-7ad7-4676-9910-7fe3f0e8e993")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBar2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ClosedDisplayMode(Windows.UI.Xaml.Controls.AppBarClosedDisplayMode* return_value);
	HRESULT set_ClosedDisplayMode(Windows.UI.Xaml.Controls.AppBarClosedDisplayMode value);
}

@uuid("982b001f-752e-4e7a-b055-54802c9ea749")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBar3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.AppBarTemplateSettings* return_value);
	HRESULT add_Opening(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Opening(EventRegistrationToken token);
	HRESULT add_Closing(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Closing(EventRegistrationToken token);
}

@uuid("94ebc8cd-0a64-4da3-bf43-f13100a46605")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBar4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("4459a451-69e8-440c-9896-4bb4f5f642d1")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarButton")
interface IAppBarButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Label(HSTRING* return_value);
	HRESULT set_Label(HSTRING value);
	HRESULT get_Icon(Windows.UI.Xaml.Controls.IconElement* return_value);
	HRESULT set_Icon(Windows.UI.Xaml.Controls.IconElement value);
}

@uuid("0b282150-198b-4e84-8f1c-9f6a8ba267a7")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarButton")
interface IAppBarButton3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LabelPosition(Windows.UI.Xaml.Controls.CommandBarLabelPosition* return_value);
	HRESULT set_LabelPosition(Windows.UI.Xaml.Controls.CommandBarLabelPosition value);
}

@uuid("bdbb1bb6-cb2e-4276-abd6-7935130510e0")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarButton")
interface IAppBarButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.AppBarButton* return_instance);
}

@uuid("7ccd13e6-5301-407f-874e-dc9160aa07af")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarButton")
interface IAppBarButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LabelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IconProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsCompactProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4d7bf314-2ede-4328-8906-752a1f27cdfa")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarButton")
interface IAppBarButtonStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LabelPositionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsInOverflowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DynamicOverflowOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("614708d1-8e65-43cb-92d7-8eee17515f8d")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.AppBar* return_instance);
}

@uuid("f003e4e2-7b0f-4f4a-970d-ae8a0eaa9b70")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnClosed(IInspectable e);
	HRESULT abi_OnOpened(IInspectable e);
}

@uuid("412bbbc8-51d0-4b49-ab62-a3dd6bdcb298")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarOverrides3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnClosing(IInspectable e);
	HRESULT abi_OnOpening(IInspectable e);
}

@uuid("05da25cd-f407-48de-8b50-ff87d1e2818f")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarSeparator")
interface IAppBarSeparatorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.AppBarSeparator* return_instance);
}

@uuid("37f23484-5b35-4663-a75d-f2d50cb9c619")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarSeparator")
interface IAppBarSeparatorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsCompactProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("36c753f9-7373-4e5e-9ba4-c3622a003c4e")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarSeparator")
interface IAppBarSeparatorStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsInOverflowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DynamicOverflowOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("79bb7e8d-dca9-4b5f-a448-37b13238ed76")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsOpenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsStickyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("222355e9-0384-49de-8738-dfc9d409ac5d")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ClosedDisplayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ba02082e-1165-4451-94b3-eb3ac73e4196")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2e914438-fd53-4b8d-858b-3644269f8e4d")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarToggleButton")
interface IAppBarToggleButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Label(HSTRING* return_value);
	HRESULT set_Label(HSTRING value);
	HRESULT get_Icon(Windows.UI.Xaml.Controls.IconElement* return_value);
	HRESULT set_Icon(Windows.UI.Xaml.Controls.IconElement value);
}

@uuid("ef9a85e5-16ff-4d72-b9e8-9b861eaf84a8")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarToggleButton")
interface IAppBarToggleButton3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LabelPosition(Windows.UI.Xaml.Controls.CommandBarLabelPosition* return_value);
	HRESULT set_LabelPosition(Windows.UI.Xaml.Controls.CommandBarLabelPosition value);
}

@uuid("028aa7d4-8f54-45a6-9f90-13605656d793")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarToggleButton")
interface IAppBarToggleButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.AppBarToggleButton* return_instance);
}

@uuid("fe5aaf96-7929-4da1-aa67-cddf73a3e4b5")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarToggleButton")
interface IAppBarToggleButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LabelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IconProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsCompactProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("bd4c65bf-2edd-44d1-acd5-35c00e2f21bc")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarToggleButton")
interface IAppBarToggleButtonStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LabelPositionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsInOverflowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DynamicOverflowOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("103e9b13-3400-4a16-90b9-6912bf06974f")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxSuggestionListHeight(double* return_value);
	HRESULT set_MaxSuggestionListHeight(double value);
	HRESULT get_IsSuggestionListOpen(bool* return_value);
	HRESULT set_IsSuggestionListOpen(bool value);
	HRESULT get_TextMemberPath(HSTRING* return_value);
	HRESULT set_TextMemberPath(HSTRING value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_UpdateTextOnSelect(bool* return_value);
	HRESULT set_UpdateTextOnSelect(bool value);
	HRESULT get_PlaceholderText(HSTRING* return_value);
	HRESULT set_PlaceholderText(HSTRING value);
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_AutoMaximizeSuggestionArea(bool* return_value);
	HRESULT set_AutoMaximizeSuggestionArea(bool value);
	HRESULT get_TextBoxStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_TextBoxStyle(Windows.UI.Xaml.Style value);
	HRESULT add_SuggestionChosen(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.AutoSuggestBox*,Windows.UI.Xaml.Controls.AutoSuggestBoxSuggestionChosenEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_SuggestionChosen(EventRegistrationToken token);
	HRESULT add_TextChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.AutoSuggestBox*,Windows.UI.Xaml.Controls.AutoSuggestBoxTextChangedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_TextChanged(EventRegistrationToken token);
}

@uuid("aa87ddde-e679-45b2-a7c9-9aedc39db886")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBox2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QueryIcon(Windows.UI.Xaml.Controls.IconElement* return_value);
	HRESULT set_QueryIcon(Windows.UI.Xaml.Controls.IconElement value);
	HRESULT add_QuerySubmitted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.AutoSuggestBox*,Windows.UI.Xaml.Controls.AutoSuggestBoxQuerySubmittedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_QuerySubmitted(EventRegistrationToken token);
}

@uuid("9bbbfcef-f32d-402e-9009-05bdbaf6336e")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBox3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("78dcb116-818a-4cb5-bca7-382ce6ddc90d")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBoxQuerySubmittedEventArgs")
interface IAutoSuggestBoxQuerySubmittedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QueryText(HSTRING* return_value);
	HRESULT get_ChosenSuggestion(IInspectable* return_value);
}

@uuid("ee22c7f4-c15d-4ff3-8a94-f50dfdfbe89a")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBoxStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxSuggestionListHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSuggestionListOpenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextMemberPathProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_UpdateTextOnSelectProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaceholderTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AutoMaximizeSuggestionAreaProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextBoxStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("1cd297a8-8e6a-41ef-a95d-7157dc0c7106")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBoxStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QueryIconProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2cead2dd-c4d5-4ab2-8a13-afddcf067c86")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBoxStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("396f7254-1ed5-4bc5-a060-655530bca6ba")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBoxSuggestionChosenEventArgs")
interface IAutoSuggestBoxSuggestionChosenEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectedItem(IInspectable* return_value);
}

@uuid("3a6f7254-1ed5-4bc5-a060-655530bca6ba")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBoxTextChangedEventArgs")
interface IAutoSuggestBoxTextChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.UI.Xaml.Controls.AutoSuggestionBoxTextChangeReason* return_value);
	HRESULT set_Reason(Windows.UI.Xaml.Controls.AutoSuggestionBoxTextChangeReason value);
	HRESULT abi_CheckCurrent(bool* return_returnValue);
}

@uuid("fef7772b-9f45-44db-8c27-bda3f933e7b5")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBoxTextChangedEventArgs")
interface IAutoSuggestBoxTextChangedEventArgsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ReasonProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2ae6146c-477e-48c9-8830-2c464b7c7104")
@WinrtFactory("Windows.UI.Xaml.Controls.BackClickEventArgs")
interface IBackClickEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("e8fe17cb-35f7-40f3-a185-48b397b73e68")
@WinrtFactory("Windows.UI.Xaml.Controls.BitmapIcon")
interface IBitmapIcon : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UriSource(Windows.Foundation.Uri* return_value);
	HRESULT set_UriSource(Windows.Foundation.Uri value);
}

@uuid("0624a20a-9dd1-4201-bb20-42863da15658")
@WinrtFactory("Windows.UI.Xaml.Controls.BitmapIcon")
interface IBitmapIcon2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ShowAsMonochrome(bool* return_value);
	HRESULT set_ShowAsMonochrome(bool value);
}

@uuid("46d64b1d-7a49-4f66-9729-2848c788e402")
@WinrtFactory("Windows.UI.Xaml.Controls.BitmapIcon")
interface IBitmapIconFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.BitmapIcon* return_instance);
}

@uuid("e072d117-e4e7-4e0c-9470-53ff1ce84f67")
@WinrtFactory("Windows.UI.Xaml.Controls.BitmapIcon")
interface IBitmapIconStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UriSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9745026b-b742-4a89-a5d7-a0e5fb809af1")
@WinrtFactory("Windows.UI.Xaml.Controls.BitmapIcon")
interface IBitmapIconStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ShowAsMonochromeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("797c4539-45bd-4633-a044-bfb02ef5170f")
@WinrtFactory("Windows.UI.Xaml.Controls.Border")
interface IBorder : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_BorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_BorderThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_BorderThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_Background(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Background(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_CornerRadius(Windows.UI.Xaml.CornerRadius* return_value);
	HRESULT set_CornerRadius(Windows.UI.Xaml.CornerRadius value);
	HRESULT get_Padding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Padding(Windows.UI.Xaml.Thickness value);
	HRESULT get_Child(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Child(Windows.UI.Xaml.UIElement value);
	HRESULT get_ChildTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_ChildTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
}

@uuid("b81d1639-e911-4fd7-a4c4-b9c7f008b7fc")
@WinrtFactory("Windows.UI.Xaml.Controls.Border")
interface IBorderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CornerRadiusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ChildTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("80a13c19-843a-451c-8cf5-44c701b0e216")
@WinrtFactory("Windows.UI.Xaml.Controls.Button")
interface IButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Button* return_instance);
}

@uuid("90143898-a16c-4759-b2f0-a5f7e625169e")
@WinrtFactory("Windows.UI.Xaml.Controls.Button")
interface IButtonStaticsWithFlyout : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FlyoutProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("09108f87-df6c-4180-9b3a-e60845825811")
@WinrtFactory("Windows.UI.Xaml.Controls.Button")
interface IButtonWithFlyout : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Flyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase* return_value);
	HRESULT set_Flyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase value);
}

@uuid("63c9c16f-668c-4491-9444-d45d8bf4fa29")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarDatePicker")
interface ICalendarDatePicker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_IsCalendarOpen(bool* return_value);
	HRESULT set_IsCalendarOpen(bool value);
	HRESULT get_DateFormat(HSTRING* return_value);
	HRESULT set_DateFormat(HSTRING value);
	HRESULT get_PlaceholderText(HSTRING* return_value);
	HRESULT set_PlaceholderText(HSTRING value);
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_CalendarViewStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_CalendarViewStyle(Windows.UI.Xaml.Style value);
	HRESULT get_MinDate(Windows.Foundation.DateTime* return_value);
	HRESULT set_MinDate(Windows.Foundation.DateTime value);
	HRESULT get_MaxDate(Windows.Foundation.DateTime* return_value);
	HRESULT set_MaxDate(Windows.Foundation.DateTime value);
	HRESULT get_IsTodayHighlighted(bool* return_value);
	HRESULT set_IsTodayHighlighted(bool value);
	HRESULT get_DisplayMode(Windows.UI.Xaml.Controls.CalendarViewDisplayMode* return_value);
	HRESULT set_DisplayMode(Windows.UI.Xaml.Controls.CalendarViewDisplayMode value);
	HRESULT get_FirstDayOfWeek(Windows.Globalization.DayOfWeek* return_value);
	HRESULT set_FirstDayOfWeek(Windows.Globalization.DayOfWeek value);
	HRESULT get_DayOfWeekFormat(HSTRING* return_value);
	HRESULT set_DayOfWeekFormat(HSTRING value);
	HRESULT get_CalendarIdentifier(HSTRING* return_value);
	HRESULT set_CalendarIdentifier(HSTRING value);
	HRESULT get_IsOutOfScopeEnabled(bool* return_value);
	HRESULT set_IsOutOfScopeEnabled(bool value);
	HRESULT get_IsGroupLabelVisible(bool* return_value);
	HRESULT set_IsGroupLabelVisible(bool value);
	HRESULT add_CalendarViewDayItemChanging(Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_CalendarViewDayItemChanging(EventRegistrationToken token);
	HRESULT add_DateChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarDatePicker*,Windows.UI.Xaml.Controls.CalendarDatePickerDateChangedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_DateChanged(EventRegistrationToken token);
	HRESULT add_Opened(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Opened(EventRegistrationToken token);
	HRESULT add_Closed(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT abi_SetDisplayDate(Windows.Foundation.DateTime date);
	HRESULT abi_SetYearDecadeDisplayDimensions(INT32 columns, INT32 rows);
}

@uuid("b216c159-2411-4a60-a7aa-27416b49481e")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarDatePicker")
interface ICalendarDatePicker2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("60d90db2-5010-46ba-842d-a4152c6504e7")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarDatePickerDateChangedEventArgs")
interface ICalendarDatePickerDateChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NewDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_OldDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("107aad5d-38be-42af-a957-fc86a5cf1e9a")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarDatePicker")
interface ICalendarDatePickerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CalendarDatePicker* return_instance);
}

@uuid("39a3d291-afab-4b94-8395-ba7b874e3c8c")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarDatePicker")
interface ICalendarDatePickerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsCalendarOpenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DateFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaceholderTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CalendarViewStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinDateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxDateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTodayHighlightedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DisplayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FirstDayOfWeekProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DayOfWeekFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CalendarIdentifierProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsOutOfScopeEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsGroupLabelVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("30206b58-a2f6-4a00-8d13-33c46b6b8e0d")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarDatePicker")
interface ICalendarDatePickerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cd639203-dfb5-4312-ac07-c0391824607b")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarView")
interface ICalendarView : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CalendarIdentifier(HSTRING* return_value);
	HRESULT set_CalendarIdentifier(HSTRING value);
	HRESULT get_DayOfWeekFormat(HSTRING* return_value);
	HRESULT set_DayOfWeekFormat(HSTRING value);
	HRESULT get_IsGroupLabelVisible(bool* return_value);
	HRESULT set_IsGroupLabelVisible(bool value);
	HRESULT get_DisplayMode(Windows.UI.Xaml.Controls.CalendarViewDisplayMode* return_value);
	HRESULT set_DisplayMode(Windows.UI.Xaml.Controls.CalendarViewDisplayMode value);
	HRESULT get_FirstDayOfWeek(Windows.Globalization.DayOfWeek* return_value);
	HRESULT set_FirstDayOfWeek(Windows.Globalization.DayOfWeek value);
	HRESULT get_IsOutOfScopeEnabled(bool* return_value);
	HRESULT set_IsOutOfScopeEnabled(bool value);
	HRESULT get_IsTodayHighlighted(bool* return_value);
	HRESULT set_IsTodayHighlighted(bool value);
	HRESULT get_MaxDate(Windows.Foundation.DateTime* return_value);
	HRESULT set_MaxDate(Windows.Foundation.DateTime value);
	HRESULT get_MinDate(Windows.Foundation.DateTime* return_value);
	HRESULT set_MinDate(Windows.Foundation.DateTime value);
	HRESULT get_NumberOfWeeksInView(INT32* return_value);
	HRESULT set_NumberOfWeeksInView(INT32 value);
	HRESULT get_SelectedDates(Windows.Foundation.Collections.IVector!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_SelectionMode(Windows.UI.Xaml.Controls.CalendarViewSelectionMode* return_value);
	HRESULT set_SelectionMode(Windows.UI.Xaml.Controls.CalendarViewSelectionMode value);
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.CalendarViewTemplateSettings* return_value);
	HRESULT get_FocusBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_FocusBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedHoverBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedHoverBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedPressedBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedPressedBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_HoverBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_HoverBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_PressedBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_PressedBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_CalendarItemBorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_CalendarItemBorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_OutOfScopeBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_OutOfScopeBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_CalendarItemBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_CalendarItemBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_PressedForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_PressedForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_TodayForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_TodayForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_BlackoutForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_BlackoutForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_SelectedForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_SelectedForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_OutOfScopeForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_OutOfScopeForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_CalendarItemForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_CalendarItemForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_DayItemFontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
	HRESULT set_DayItemFontFamily(Windows.UI.Xaml.Media.FontFamily value);
	HRESULT get_DayItemFontSize(double* return_value);
	HRESULT set_DayItemFontSize(double value);
	HRESULT get_DayItemFontStyle(Windows.UI.Text.FontStyle* return_value);
	HRESULT set_DayItemFontStyle(Windows.UI.Text.FontStyle value);
	HRESULT get_DayItemFontWeight(Windows.UI.Text.FontWeight* return_value);
	HRESULT set_DayItemFontWeight(Windows.UI.Text.FontWeight value);
	HRESULT get_TodayFontWeight(Windows.UI.Text.FontWeight* return_value);
	HRESULT set_TodayFontWeight(Windows.UI.Text.FontWeight value);
	HRESULT get_FirstOfMonthLabelFontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
	HRESULT set_FirstOfMonthLabelFontFamily(Windows.UI.Xaml.Media.FontFamily value);
	HRESULT get_FirstOfMonthLabelFontSize(double* return_value);
	HRESULT set_FirstOfMonthLabelFontSize(double value);
	HRESULT get_FirstOfMonthLabelFontStyle(Windows.UI.Text.FontStyle* return_value);
	HRESULT set_FirstOfMonthLabelFontStyle(Windows.UI.Text.FontStyle value);
	HRESULT get_FirstOfMonthLabelFontWeight(Windows.UI.Text.FontWeight* return_value);
	HRESULT set_FirstOfMonthLabelFontWeight(Windows.UI.Text.FontWeight value);
	HRESULT get_MonthYearItemFontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
	HRESULT set_MonthYearItemFontFamily(Windows.UI.Xaml.Media.FontFamily value);
	HRESULT get_MonthYearItemFontSize(double* return_value);
	HRESULT set_MonthYearItemFontSize(double value);
	HRESULT get_MonthYearItemFontStyle(Windows.UI.Text.FontStyle* return_value);
	HRESULT set_MonthYearItemFontStyle(Windows.UI.Text.FontStyle value);
	HRESULT get_MonthYearItemFontWeight(Windows.UI.Text.FontWeight* return_value);
	HRESULT set_MonthYearItemFontWeight(Windows.UI.Text.FontWeight value);
	HRESULT get_FirstOfYearDecadeLabelFontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
	HRESULT set_FirstOfYearDecadeLabelFontFamily(Windows.UI.Xaml.Media.FontFamily value);
	HRESULT get_FirstOfYearDecadeLabelFontSize(double* return_value);
	HRESULT set_FirstOfYearDecadeLabelFontSize(double value);
	HRESULT get_FirstOfYearDecadeLabelFontStyle(Windows.UI.Text.FontStyle* return_value);
	HRESULT set_FirstOfYearDecadeLabelFontStyle(Windows.UI.Text.FontStyle value);
	HRESULT get_FirstOfYearDecadeLabelFontWeight(Windows.UI.Text.FontWeight* return_value);
	HRESULT set_FirstOfYearDecadeLabelFontWeight(Windows.UI.Text.FontWeight value);
	HRESULT get_HorizontalDayItemAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value);
	HRESULT set_HorizontalDayItemAlignment(Windows.UI.Xaml.HorizontalAlignment value);
	HRESULT get_VerticalDayItemAlignment(Windows.UI.Xaml.VerticalAlignment* return_value);
	HRESULT set_VerticalDayItemAlignment(Windows.UI.Xaml.VerticalAlignment value);
	HRESULT get_HorizontalFirstOfMonthLabelAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value);
	HRESULT set_HorizontalFirstOfMonthLabelAlignment(Windows.UI.Xaml.HorizontalAlignment value);
	HRESULT get_VerticalFirstOfMonthLabelAlignment(Windows.UI.Xaml.VerticalAlignment* return_value);
	HRESULT set_VerticalFirstOfMonthLabelAlignment(Windows.UI.Xaml.VerticalAlignment value);
	HRESULT get_CalendarItemBorderThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_CalendarItemBorderThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_CalendarViewDayItemStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_CalendarViewDayItemStyle(Windows.UI.Xaml.Style value);
	HRESULT add_CalendarViewDayItemChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView*,Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_CalendarViewDayItemChanging(EventRegistrationToken token);
	HRESULT add_SelectedDatesChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView*,Windows.UI.Xaml.Controls.CalendarViewSelectedDatesChangedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_SelectedDatesChanged(EventRegistrationToken token);
	HRESULT abi_SetDisplayDate(Windows.Foundation.DateTime date);
	HRESULT abi_SetYearDecadeDisplayDimensions(INT32 columns, INT32 rows);
}

@uuid("0fdb2dc5-32c1-4b8f-befc-017b555b32d2")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarViewDayItem")
interface ICalendarViewDayItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsBlackout(bool* return_value);
	HRESULT set_IsBlackout(bool value);
	HRESULT get_Date(Windows.Foundation.DateTime* return_value);
	HRESULT abi_SetDensityColors(Windows.Foundation.Collections.IIterable!(Windows.UI.Color) colors);
}

@uuid("73146666-1fb1-44f9-b7ad-4de859ecc565")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs")
interface ICalendarViewDayItemChangingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InRecycleQueue(bool* return_value);
	HRESULT get_Item(Windows.UI.Xaml.Controls.CalendarViewDayItem* return_value);
	HRESULT get_Phase(UINT32* return_value);
	HRESULT abi_RegisterUpdateCallback(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView*,Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs*) callback);
	HRESULT abi_RegisterUpdateCallbackWithPhase(UINT32 callbackPhase, Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView*,Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs*) callback);
}

@uuid("62112bdc-1d2f-4e44-9baf-1665749521f2")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarViewDayItem")
interface ICalendarViewDayItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CalendarViewDayItem* return_instance);
}

@uuid("c3a1dbbf-bd88-488b-b916-d00d69b1735a")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarViewDayItem")
interface ICalendarViewDayItemStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsBlackoutProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3d8f82e3-6cc6-423e-8d7c-7014d954ddef")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarView")
interface ICalendarViewFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CalendarView* return_instance);
}

@uuid("ee6069f6-13ef-4896-8ffc-5302b1b17539")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarViewSelectedDatesChangedEventArgs")
interface ICalendarViewSelectedDatesChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AddedDates(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_RemovedDates(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.DateTime)* return_value);
}

@uuid("7260f1c4-2f5d-41bd-99bb-4571b20b79a8")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarView")
interface ICalendarViewStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CalendarIdentifierProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DayOfWeekFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsGroupLabelVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DisplayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FirstDayOfWeekProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsOutOfScopeEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTodayHighlightedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxDateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinDateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_NumberOfWeeksInViewProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedDatesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectionModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TemplateSettingsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedHoverBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedPressedBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HoverBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PressedBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CalendarItemBorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OutOfScopeBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CalendarItemBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PressedForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TodayForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BlackoutForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OutOfScopeForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CalendarItemForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DayItemFontFamilyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DayItemFontSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DayItemFontStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DayItemFontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TodayFontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FirstOfMonthLabelFontFamilyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FirstOfMonthLabelFontSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FirstOfMonthLabelFontStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FirstOfMonthLabelFontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MonthYearItemFontFamilyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MonthYearItemFontSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MonthYearItemFontStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MonthYearItemFontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FirstOfYearDecadeLabelFontFamilyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FirstOfYearDecadeLabelFontSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FirstOfYearDecadeLabelFontStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FirstOfYearDecadeLabelFontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalDayItemAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalDayItemAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalFirstOfMonthLabelAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalFirstOfMonthLabelAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CalendarItemBorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CalendarViewDayItemStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("8a946458-83b0-4c32-9450-5169a5838b55")
@WinrtFactory("Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs")
interface ICandidateWindowBoundsChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Bounds(Windows.Foundation.Rect* return_value);
}

@uuid("1b328bd1-b400-4a8e-943b-5ad2c45be0df")
@WinrtFactory("Windows.UI.Xaml.Controls.Canvas")
interface ICanvasFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Canvas* return_instance);
}

@uuid("40ce5c46-2962-446f-aafb-4cdc486939c9")
@WinrtFactory("Windows.UI.Xaml.Controls.Canvas")
interface ICanvasStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LeftProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetLeft(Windows.UI.Xaml.UIElement element, double* return_length);
	HRESULT abi_SetLeft(Windows.UI.Xaml.UIElement element, double length);
	HRESULT get_TopProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetTop(Windows.UI.Xaml.UIElement element, double* return_length);
	HRESULT abi_SetTop(Windows.UI.Xaml.UIElement element, double length);
	HRESULT get_ZIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetZIndex(Windows.UI.Xaml.UIElement element, INT32* return_value);
	HRESULT abi_SetZIndex(Windows.UI.Xaml.UIElement element, INT32 value);
}

@uuid("31a5c0e7-f307-4d4a-b626-e978863f5b74")
@WinrtFactory("Windows.UI.Xaml.Controls.CaptureElement")
interface ICaptureElement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Source(Windows.Media.Capture.MediaCapture* return_value);
	HRESULT set_Source(Windows.Media.Capture.MediaCapture value);
	HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value);
	HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value);
}

@uuid("1e438ded-7da6-409e-806e-305ae4ad9b3f")
@WinrtFactory("Windows.UI.Xaml.Controls.CaptureElement")
interface ICaptureElementStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4fa6aabb-3f4b-4301-be07-1172ea61eefb")
@WinrtFactory("Windows.UI.Xaml.Controls.CheckBox")
interface ICheckBoxFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CheckBox* return_instance);
}

@uuid("67db44d6-d201-4d72-beac-5e8e58afd8c7")
@WinrtFactory("Windows.UI.Xaml.Controls.ChoosingGroupHeaderContainerEventArgs")
interface IChoosingGroupHeaderContainerEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GroupHeaderContainer(Windows.UI.Xaml.Controls.ListViewBaseHeaderItem* return_value);
	HRESULT set_GroupHeaderContainer(Windows.UI.Xaml.Controls.ListViewBaseHeaderItem value);
	HRESULT get_GroupIndex(INT32* return_value);
	HRESULT get_Group(IInspectable* return_value);
}

@uuid("9bb43bce-ae67-4a80-8363-e3fe1b244f2c")
@WinrtFactory("Windows.UI.Xaml.Controls.ChoosingItemContainerEventArgs")
interface IChoosingItemContainerEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemIndex(INT32* return_value);
	HRESULT get_Item(IInspectable* return_value);
	HRESULT get_ItemContainer(Windows.UI.Xaml.Controls.Primitives.SelectorItem* return_value);
	HRESULT set_ItemContainer(Windows.UI.Xaml.Controls.Primitives.SelectorItem value);
	HRESULT get_IsContainerPrepared(bool* return_value);
	HRESULT set_IsContainerPrepared(bool value);
}

@uuid("ea05cce9-937c-4120-8406-792185784338")
@WinrtFactory("Windows.UI.Xaml.Controls.CleanUpVirtualizedItemEventArgs")
interface ICleanUpVirtualizedItemEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(IInspectable* return_value);
	HRESULT get_UIElement(Windows.UI.Xaml.UIElement* return_value);
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
}

@uuid("f7f1b229-f024-467f-970a-7e705615db7b")
@WinrtFactory("Windows.UI.Xaml.Controls.ColumnDefinition")
interface IColumnDefinition : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Width(Windows.UI.Xaml.GridLength* return_value);
	HRESULT set_Width(Windows.UI.Xaml.GridLength value);
	HRESULT get_MaxWidth(double* return_value);
	HRESULT set_MaxWidth(double value);
	HRESULT get_MinWidth(double* return_value);
	HRESULT set_MinWidth(double value);
	HRESULT get_ActualWidth(double* return_value);
}

@uuid("06b0d728-d044-40c6-942e-ae60eac74851")
@WinrtFactory("Windows.UI.Xaml.Controls.ColumnDefinition")
interface IColumnDefinitionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_WidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b9a8d05c-ac97-47f1-a5f4-3f9f4d4b116c")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsDropDownOpen(bool* return_value);
	HRESULT set_IsDropDownOpen(bool value);
	HRESULT get_IsEditable(bool* return_value);
	HRESULT get_IsSelectionBoxHighlighted(bool* return_value);
	HRESULT get_MaxDropDownHeight(double* return_value);
	HRESULT set_MaxDropDownHeight(double value);
	HRESULT get_SelectionBoxItem(IInspectable* return_value);
	HRESULT get_SelectionBoxItemTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.ComboBoxTemplateSettings* return_value);
	HRESULT add_DropDownClosed(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_DropDownClosed(EventRegistrationToken token);
	HRESULT add_DropDownOpened(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_DropDownOpened(EventRegistrationToken token);
}

@uuid("ea0cbf91-ca36-4fad-972a-2e53a6718b9f")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBox2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_PlaceholderText(HSTRING* return_value);
	HRESULT set_PlaceholderText(HSTRING value);
}

@uuid("52400a63-476c-4bb6-b781-019324d3fed9")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBox3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
	HRESULT get_IsTextSearchEnabled(bool* return_value);
	HRESULT set_IsTextSearchEnabled(bool value);
}

@uuid("b7974f49-b05c-47f9-9aaf-d6f9187be5fd")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBox4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectionChangedTrigger(Windows.UI.Xaml.Controls.ComboBoxSelectionChangedTrigger* return_value);
	HRESULT set_SelectionChangedTrigger(Windows.UI.Xaml.Controls.ComboBoxSelectionChangedTrigger value);
}

@uuid("ac0d0444-a65b-4abd-86df-3016049efedc")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ComboBox* return_instance);
}

@uuid("8fffe867-d94c-4e87-8fc4-6ebcd63c5ac2")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBoxItem")
interface IComboBoxItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ComboBoxItem* return_instance);
}

@uuid("4f016541-bcfe-4a22-8932-c914981c2240")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnDropDownClosed(IInspectable e);
	HRESULT abi_OnDropDownOpened(IInspectable e);
}

@uuid("3e14c9b1-d15b-4dc9-8110-cf3a117b96e7")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsDropDownOpenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxDropDownHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("93988a11-402c-4b13-96d1-7220266b9220")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaceholderTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("949e140f-ce7f-4e41-bdc5-d1d3388ad0a6")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTextSearchEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d9f58358-f7b0-46ce-8061-ad83ec2f2dd4")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectionChangedTriggerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("98bc4280-4a3d-4cee-bd07-22ce94c5af76")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBar : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PrimaryCommands(Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.ICommandBarElement)* return_value);
	HRESULT get_SecondaryCommands(Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.ICommandBarElement)* return_value);
}

@uuid("57662f58-5b32-475d-be64-4ca36e7b97d4")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBar2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CommandBarOverflowPresenterStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_CommandBarOverflowPresenterStyle(Windows.UI.Xaml.Style value);
	HRESULT get_CommandBarTemplateSettings(Windows.UI.Xaml.Controls.Primitives.CommandBarTemplateSettings* return_value);
}

@uuid("40ebbc23-2a79-48b3-9a67-649b852d8589")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBar3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DefaultLabelPosition(Windows.UI.Xaml.Controls.CommandBarDefaultLabelPosition* return_value);
	HRESULT set_DefaultLabelPosition(Windows.UI.Xaml.Controls.CommandBarDefaultLabelPosition value);
	HRESULT get_OverflowButtonVisibility(Windows.UI.Xaml.Controls.CommandBarOverflowButtonVisibility* return_value);
	HRESULT set_OverflowButtonVisibility(Windows.UI.Xaml.Controls.CommandBarOverflowButtonVisibility value);
	HRESULT get_IsDynamicOverflowEnabled(bool* return_value);
	HRESULT set_IsDynamicOverflowEnabled(bool value);
	HRESULT add_DynamicOverflowItemsChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CommandBar*,Windows.UI.Xaml.Controls.DynamicOverflowItemsChangingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_DynamicOverflowItemsChanging(EventRegistrationToken token);
}

@uuid("67918e1b-f2d5-44d1-8b84-92b87f80a350")
interface ICommandBarElement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsCompact(bool* return_value);
	HRESULT set_IsCompact(bool value);
}

@uuid("a9bf1236-4402-4688-b987-9d2b9b7bf2bd")
interface ICommandBarElement2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsInOverflow(bool* return_value);
	HRESULT get_DynamicOverflowOrder(INT32* return_value);
	HRESULT set_DynamicOverflowOrder(INT32 value);
}

@uuid("67bdeb44-20e1-4177-ad44-f617b374e8e8")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBarFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CommandBar* return_instance);
}

@uuid("8323f774-5aaa-4049-b78f-218c6a19c37e")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBarOverflowPresenter")
interface ICommandBarOverflowPresenterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CommandBarOverflowPresenter* return_instance);
}

@uuid("5bd981ea-e278-409c-b522-f946ca253b44")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBarStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PrimaryCommandsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SecondaryCommandsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3d9ec8e3-51a9-4e34-956c-7081d06f26f8")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBarStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CommandBarOverflowPresenterStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b45a24a4-8af1-4843-b319-e03fc45ab726")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBarStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DefaultLabelPositionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OverflowButtonVisibilityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsDynamicOverflowEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("07deeaa7-018f-4dda-b399-fd4e13a31bea")
@WinrtFactory("Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs")
interface IContainerContentChangingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemContainer(Windows.UI.Xaml.Controls.Primitives.SelectorItem* return_value);
	HRESULT get_InRecycleQueue(bool* return_value);
	HRESULT get_ItemIndex(INT32* return_value);
	HRESULT get_Item(IInspectable* return_value);
	HRESULT get_Phase(UINT32* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_RegisterUpdateCallback(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase*,Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs*) callback);
	HRESULT abi_RegisterUpdateCallbackWithPhase(UINT32 callbackPhase, Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase*,Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs*) callback);
}

@uuid("a26dd1dc-cd44-435c-be94-01d6241c231c")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentControl")
interface IContentControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Content(IInspectable* return_value);
	HRESULT set_Content(IInspectable value);
	HRESULT get_ContentTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_ContentTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_ContentTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector* return_value);
	HRESULT set_ContentTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector value);
	HRESULT get_ContentTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_ContentTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
}

@uuid("652c208c-8ccf-4399-bd3e-5a015aa1bc03")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentControl")
interface IContentControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentTemplateRoot(Windows.UI.Xaml.UIElement* return_value);
}

@uuid("ab017b19-196e-4ed5-a27f-55c58fb1673f")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentControl")
interface IContentControlFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ContentControl* return_instance);
}

@uuid("5f4c0b10-e38e-4b5d-be1a-5ed04246a635")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentControl")
interface IContentControlOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnContentChanged(IInspectable oldContent, IInspectable newContent);
	HRESULT abi_OnContentTemplateChanged(Windows.UI.Xaml.DataTemplate oldContentTemplate, Windows.UI.Xaml.DataTemplate newContentTemplate);
	HRESULT abi_OnContentTemplateSelectorChanged(Windows.UI.Xaml.Controls.DataTemplateSelector oldContentTemplateSelector, Windows.UI.Xaml.Controls.DataTemplateSelector newContentTemplateSelector);
}

@uuid("116982a4-5cf5-4c05-a53f-15e4876c85ec")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentControl")
interface IContentControlStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTemplateSelectorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("38dc4404-d24e-40d8-9415-349464c1afdc")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialog")
interface IContentDialog : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Title(IInspectable* return_value);
	HRESULT set_Title(IInspectable value);
	HRESULT get_TitleTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_TitleTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_FullSizeDesired(bool* return_value);
	HRESULT set_FullSizeDesired(bool value);
	HRESULT get_PrimaryButtonText(HSTRING* return_value);
	HRESULT set_PrimaryButtonText(HSTRING value);
	HRESULT get_SecondaryButtonText(HSTRING* return_value);
	HRESULT set_SecondaryButtonText(HSTRING value);
	HRESULT get_PrimaryButtonCommand(Windows.UI.Xaml.Input.ICommand* return_value);
	HRESULT set_PrimaryButtonCommand(Windows.UI.Xaml.Input.ICommand value);
	HRESULT get_SecondaryButtonCommand(Windows.UI.Xaml.Input.ICommand* return_value);
	HRESULT set_SecondaryButtonCommand(Windows.UI.Xaml.Input.ICommand value);
	HRESULT get_PrimaryButtonCommandParameter(IInspectable* return_value);
	HRESULT set_PrimaryButtonCommandParameter(IInspectable value);
	HRESULT get_SecondaryButtonCommandParameter(IInspectable* return_value);
	HRESULT set_SecondaryButtonCommandParameter(IInspectable value);
	HRESULT get_IsPrimaryButtonEnabled(bool* return_value);
	HRESULT set_IsPrimaryButtonEnabled(bool value);
	HRESULT get_IsSecondaryButtonEnabled(bool* return_value);
	HRESULT set_IsSecondaryButtonEnabled(bool value);
	HRESULT add_Closing(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog*,Windows.UI.Xaml.Controls.ContentDialogClosingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_Closing(EventRegistrationToken token);
	HRESULT add_Closed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog*,Windows.UI.Xaml.Controls.ContentDialogClosedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT add_Opened(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog*,Windows.UI.Xaml.Controls.ContentDialogOpenedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_Opened(EventRegistrationToken token);
	HRESULT add_PrimaryButtonClick(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog*,Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_PrimaryButtonClick(EventRegistrationToken token);
	HRESULT add_SecondaryButtonClick(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog*,Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_SecondaryButtonClick(EventRegistrationToken token);
	HRESULT abi_Hide();
	HRESULT abi_ShowAsync(Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Controls.ContentDialogResult)* return_returnValue);
}

@uuid("2f93eb45-ee43-4303-9b38-3fe1a111ecbf")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialog")
interface IContentDialog2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CloseButtonText(HSTRING* return_value);
	HRESULT set_CloseButtonText(HSTRING value);
	HRESULT get_CloseButtonCommand(Windows.UI.Xaml.Input.ICommand* return_value);
	HRESULT set_CloseButtonCommand(Windows.UI.Xaml.Input.ICommand value);
	HRESULT get_CloseButtonCommandParameter(IInspectable* return_value);
	HRESULT set_CloseButtonCommandParameter(IInspectable value);
	HRESULT get_PrimaryButtonStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_PrimaryButtonStyle(Windows.UI.Xaml.Style value);
	HRESULT get_SecondaryButtonStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_SecondaryButtonStyle(Windows.UI.Xaml.Style value);
	HRESULT get_CloseButtonStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_CloseButtonStyle(Windows.UI.Xaml.Style value);
	HRESULT get_DefaultButton(Windows.UI.Xaml.Controls.ContentDialogButton* return_value);
	HRESULT set_DefaultButton(Windows.UI.Xaml.Controls.ContentDialogButton value);
	HRESULT add_CloseButtonClick(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog*,Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_CloseButtonClick(EventRegistrationToken token);
}

@uuid("bd0d3637-19ce-4946-8e77-bd03fe8ebe03")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogButtonClickDeferral")
interface IContentDialogButtonClickDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("5f34c205-8afa-4cf2-8ca0-264d73bed63d")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs")
interface IContentDialogButtonClickEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
	HRESULT abi_GetDeferral(Windows.UI.Xaml.Controls.ContentDialogButtonClickDeferral* return_returnValue);
}

@uuid("905522ef-2cba-4af8-b666-cc36c22732fb")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogClosedEventArgs")
interface IContentDialogClosedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Result(Windows.UI.Xaml.Controls.ContentDialogResult* return_value);
}

@uuid("215d4d11-7e30-4cb9-a710-5a4f9cca8b42")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogClosingDeferral")
interface IContentDialogClosingDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("db3c1c34-3bbf-47d4-be4f-c9ec115918b9")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogClosingEventArgs")
interface IContentDialogClosingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Result(Windows.UI.Xaml.Controls.ContentDialogResult* return_value);
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
	HRESULT abi_GetDeferral(Windows.UI.Xaml.Controls.ContentDialogClosingDeferral* return_returnValue);
}

@uuid("05557178-9d8e-4315-b37d-680c14012c35")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialog")
interface IContentDialogFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ContentDialog* return_instance);
}

@uuid("23ab47a6-508a-4f33-b786-f2fa96d869af")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialog")
interface IContentDialogStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TitleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TitleTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FullSizeDesiredProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PrimaryButtonTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SecondaryButtonTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PrimaryButtonCommandProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SecondaryButtonCommandProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PrimaryButtonCommandParameterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SecondaryButtonCommandParameterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsPrimaryButtonEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSecondaryButtonEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("329825b2-8fb0-4125-bb07-e79a5a03819f")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialog")
interface IContentDialogStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CloseButtonTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CloseButtonCommandProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CloseButtonCommandParameterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PrimaryButtonStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SecondaryButtonStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CloseButtonStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DefaultButtonProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("79fde5b4-cd37-491c-8845-daf472defff6")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Content(IInspectable* return_value);
	HRESULT set_Content(IInspectable value);
	HRESULT get_ContentTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_ContentTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_ContentTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector* return_value);
	HRESULT set_ContentTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector value);
	HRESULT get_ContentTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_ContentTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
	HRESULT get_FontSize(double* return_value);
	HRESULT set_FontSize(double value);
	HRESULT get_FontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
	HRESULT set_FontFamily(Windows.UI.Xaml.Media.FontFamily value);
	HRESULT get_FontWeight(Windows.UI.Text.FontWeight* return_value);
	HRESULT set_FontWeight(Windows.UI.Text.FontWeight value);
	HRESULT get_FontStyle(Windows.UI.Text.FontStyle* return_value);
	HRESULT set_FontStyle(Windows.UI.Text.FontStyle value);
	HRESULT get_FontStretch(Windows.UI.Text.FontStretch* return_value);
	HRESULT set_FontStretch(Windows.UI.Text.FontStretch value);
	HRESULT get_CharacterSpacing(INT32* return_value);
	HRESULT set_CharacterSpacing(INT32 value);
	HRESULT get_Foreground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Foreground(Windows.UI.Xaml.Media.Brush value);
}

@uuid("5138e958-335d-4210-8bbb-0aa2b4b5c29e")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenter2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OpticalMarginAlignment(Windows.UI.Xaml.OpticalMarginAlignment* return_value);
	HRESULT set_OpticalMarginAlignment(Windows.UI.Xaml.OpticalMarginAlignment value);
	HRESULT get_TextLineBounds(Windows.UI.Xaml.TextLineBounds* return_value);
	HRESULT set_TextLineBounds(Windows.UI.Xaml.TextLineBounds value);
}

@uuid("b038876a-9c4d-4402-ac56-a223487dc6c8")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenter3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("997b1b17-3bf8-432b-8fd9-68c7bab21f9d")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenter4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextWrapping(Windows.UI.Xaml.TextWrapping* return_value);
	HRESULT set_TextWrapping(Windows.UI.Xaml.TextWrapping value);
	HRESULT get_MaxLines(INT32* return_value);
	HRESULT set_MaxLines(INT32 value);
	HRESULT get_LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy* return_value);
	HRESULT set_LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy value);
	HRESULT get_LineHeight(double* return_value);
	HRESULT set_LineHeight(double value);
	HRESULT get_BorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_BorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_BorderThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_BorderThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_CornerRadius(Windows.UI.Xaml.CornerRadius* return_value);
	HRESULT set_CornerRadius(Windows.UI.Xaml.CornerRadius value);
	HRESULT get_Padding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Padding(Windows.UI.Xaml.Thickness value);
	HRESULT get_Background(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Background(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_HorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value);
	HRESULT set_HorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value);
	HRESULT get_VerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment* return_value);
	HRESULT set_VerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value);
}

@uuid("3339d4f7-4815-44c4-9f76-68c83880ef10")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ContentPresenter* return_instance);
}

@uuid("a76339ed-32ff-438b-aad5-1d68fae93426")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenterOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnContentTemplateChanged(Windows.UI.Xaml.DataTemplate oldContentTemplate, Windows.UI.Xaml.DataTemplate newContentTemplate);
	HRESULT abi_OnContentTemplateSelectorChanged(Windows.UI.Xaml.Controls.DataTemplateSelector oldContentTemplateSelector, Windows.UI.Xaml.Controls.DataTemplateSelector newContentTemplateSelector);
}

@uuid("18c2893b-da2e-4426-b85a-2c7e2171bedf")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenterStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTemplateSelectorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontFamilyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CharacterSpacingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c7d89dd9-06e6-46be-a8a0-9c117d3024a3")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenterStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OpticalMarginAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextLineBoundsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cbe6cf5b-38b1-4d5d-b098-bc94b35c8ddf")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenterStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ff8be292-af28-47eb-a5c3-dc44ced40fd2")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenterStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextWrappingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxLinesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LineStackingStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LineHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CornerRadiusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalContentAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalContentAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("1f7df263-c14b-4528-b6f0-637999d83cc6")
@WinrtFactory("Windows.UI.Xaml.Controls.ContextMenuEventArgs")
interface IContextMenuEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_CursorLeft(double* return_value);
	HRESULT get_CursorTop(double* return_value);
}

@uuid("a8912263-2951-4f58-a9c5-5a134eaa7f07")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FontSize(double* return_value);
	HRESULT set_FontSize(double value);
	HRESULT get_FontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
	HRESULT set_FontFamily(Windows.UI.Xaml.Media.FontFamily value);
	HRESULT get_FontWeight(Windows.UI.Text.FontWeight* return_value);
	HRESULT set_FontWeight(Windows.UI.Text.FontWeight value);
	HRESULT get_FontStyle(Windows.UI.Text.FontStyle* return_value);
	HRESULT set_FontStyle(Windows.UI.Text.FontStyle value);
	HRESULT get_FontStretch(Windows.UI.Text.FontStretch* return_value);
	HRESULT set_FontStretch(Windows.UI.Text.FontStretch value);
	HRESULT get_CharacterSpacing(INT32* return_value);
	HRESULT set_CharacterSpacing(INT32 value);
	HRESULT get_Foreground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Foreground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_IsTabStop(bool* return_value);
	HRESULT set_IsTabStop(bool value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_TabIndex(INT32* return_value);
	HRESULT set_TabIndex(INT32 value);
	HRESULT get_TabNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode* return_value);
	HRESULT set_TabNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode value);
	HRESULT get_Template(Windows.UI.Xaml.Controls.ControlTemplate* return_value);
	HRESULT set_Template(Windows.UI.Xaml.Controls.ControlTemplate value);
	HRESULT get_Padding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Padding(Windows.UI.Xaml.Thickness value);
	HRESULT get_HorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value);
	HRESULT set_HorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value);
	HRESULT get_VerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment* return_value);
	HRESULT set_VerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value);
	HRESULT get_Background(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Background(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_BorderThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_BorderThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_BorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_BorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_FocusState(Windows.UI.Xaml.FocusState* return_value);
	HRESULT add_IsEnabledChanged(Windows.UI.Xaml.DependencyPropertyChangedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_IsEnabledChanged(EventRegistrationToken token);
	HRESULT abi_ApplyTemplate(bool* return_returnValue);
	HRESULT abi_Focus(Windows.UI.Xaml.FocusState value, bool* return_returnValue);
}

@uuid("43e0fe10-14ec-427e-8c57-dee60df60aa8")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("077b29e4-dade-4f55-9b96-09e21b28eb1c")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControl3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UseSystemFocusVisuals(bool* return_value);
	HRESULT set_UseSystemFocusVisuals(bool value);
}

@uuid("0e18aeee-5f2e-44ea-8513-d3875c0a7513")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControl4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsFocusEngagementEnabled(bool* return_value);
	HRESULT set_IsFocusEngagementEnabled(bool value);
	HRESULT get_IsFocusEngaged(bool* return_value);
	HRESULT set_IsFocusEngaged(bool value);
	HRESULT get_RequiresPointer(Windows.UI.Xaml.Controls.RequiresPointer* return_value);
	HRESULT set_RequiresPointer(Windows.UI.Xaml.Controls.RequiresPointer value);
	HRESULT get_XYFocusLeft(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_XYFocusLeft(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_XYFocusRight(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_XYFocusRight(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_XYFocusUp(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_XYFocusUp(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_XYFocusDown(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_XYFocusDown(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_ElementSoundMode(Windows.UI.Xaml.ElementSoundMode* return_value);
	HRESULT set_ElementSoundMode(Windows.UI.Xaml.ElementSoundMode value);
	HRESULT add_FocusEngaged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Control*,Windows.UI.Xaml.Controls.FocusEngagedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_FocusEngaged(EventRegistrationToken token);
	HRESULT add_FocusDisengaged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Control*,Windows.UI.Xaml.Controls.FocusDisengagedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_FocusDisengaged(EventRegistrationToken token);
	HRESULT abi_RemoveFocusEngagement();
}

@uuid("5ebb51d5-9e58-49b7-bc2d-0155ff118664")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControl5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DefaultStyleResourceUri(Windows.Foundation.Uri* return_value);
	HRESULT set_DefaultStyleResourceUri(Windows.Foundation.Uri value);
}

@uuid("b12b1d5a-6419-4e16-b212-a45336b75778")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Control* return_instance);
}

@uuid("a09691df-9824-41fe-b530-b0d8990e64c1")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnPointerEntered(Windows.UI.Xaml.Input.PointerRoutedEventArgs e);
	HRESULT abi_OnPointerPressed(Windows.UI.Xaml.Input.PointerRoutedEventArgs e);
	HRESULT abi_OnPointerMoved(Windows.UI.Xaml.Input.PointerRoutedEventArgs e);
	HRESULT abi_OnPointerReleased(Windows.UI.Xaml.Input.PointerRoutedEventArgs e);
	HRESULT abi_OnPointerExited(Windows.UI.Xaml.Input.PointerRoutedEventArgs e);
	HRESULT abi_OnPointerCaptureLost(Windows.UI.Xaml.Input.PointerRoutedEventArgs e);
	HRESULT abi_OnPointerCanceled(Windows.UI.Xaml.Input.PointerRoutedEventArgs e);
	HRESULT abi_OnPointerWheelChanged(Windows.UI.Xaml.Input.PointerRoutedEventArgs e);
	HRESULT abi_OnTapped(Windows.UI.Xaml.Input.TappedRoutedEventArgs e);
	HRESULT abi_OnDoubleTapped(Windows.UI.Xaml.Input.DoubleTappedRoutedEventArgs e);
	HRESULT abi_OnHolding(Windows.UI.Xaml.Input.HoldingRoutedEventArgs e);
	HRESULT abi_OnRightTapped(Windows.UI.Xaml.Input.RightTappedRoutedEventArgs e);
	HRESULT abi_OnManipulationStarting(Windows.UI.Xaml.Input.ManipulationStartingRoutedEventArgs e);
	HRESULT abi_OnManipulationInertiaStarting(Windows.UI.Xaml.Input.ManipulationInertiaStartingRoutedEventArgs e);
	HRESULT abi_OnManipulationStarted(Windows.UI.Xaml.Input.ManipulationStartedRoutedEventArgs e);
	HRESULT abi_OnManipulationDelta(Windows.UI.Xaml.Input.ManipulationDeltaRoutedEventArgs e);
	HRESULT abi_OnManipulationCompleted(Windows.UI.Xaml.Input.ManipulationCompletedRoutedEventArgs e);
	HRESULT abi_OnKeyUp(Windows.UI.Xaml.Input.KeyRoutedEventArgs e);
	HRESULT abi_OnKeyDown(Windows.UI.Xaml.Input.KeyRoutedEventArgs e);
	HRESULT abi_OnGotFocus(Windows.UI.Xaml.RoutedEventArgs e);
	HRESULT abi_OnLostFocus(Windows.UI.Xaml.RoutedEventArgs e);
	HRESULT abi_OnDragEnter(Windows.UI.Xaml.DragEventArgs e);
	HRESULT abi_OnDragLeave(Windows.UI.Xaml.DragEventArgs e);
	HRESULT abi_OnDragOver(Windows.UI.Xaml.DragEventArgs e);
	HRESULT abi_OnDrop(Windows.UI.Xaml.DragEventArgs e);
}

@uuid("1791587a-2a7c-4981-a2d8-ab99fffc65b9")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlProtected : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DefaultStyleKey(IInspectable* return_value);
	HRESULT set_DefaultStyleKey(IInspectable value);
	HRESULT abi_GetTemplateChild(HSTRING childName, Windows.UI.Xaml.DependencyObject* return_returnValue);
}

@uuid("473b305b-877d-4c35-8fca-46a05f96607a")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FontSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontFamilyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CharacterSpacingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTabStopProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TabIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TabNavigationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalContentAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalContentAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DefaultStyleKeyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusStateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("32233e36-ab74-4a25-a556-45293135b2c5")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("aad15e61-e4b9-4d72-b653-934149aa5003")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UseSystemFocusVisualsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTemplateFocusTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsTemplateFocusTarget(Windows.UI.Xaml.FrameworkElement element, bool* return_value);
	HRESULT abi_SetIsTemplateFocusTarget(Windows.UI.Xaml.FrameworkElement element, bool value);
}

@uuid("59fda728-c05a-4ec2-8a4b-06ad69b66e15")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsFocusEngagementEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFocusEngagedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RequiresPointerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusLeftProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusRightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusUpProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusDownProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ElementSoundModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("f635b5a3-ef8e-404f-877b-5580473710a6")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlStatics5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DefaultStyleResourceUriProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTemplateKeyTipTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsTemplateKeyTipTarget(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetIsTemplateKeyTipTarget(Windows.UI.Xaml.DependencyObject element, bool value);
}

@uuid("efd2418e-41e0-48bb-8b82-91eda1ba3fe2")
@WinrtFactory("Windows.UI.Xaml.Controls.ControlTemplate")
interface IControlTemplate : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT set_TargetType(Windows.UI.Xaml.Interop.TypeName value);
}

@uuid("a907d496-46a0-4cd7-8dbe-f9a581df60b1")
@WinrtFactory("Windows.UI.Xaml.Controls.DataTemplateSelector")
interface IDataTemplateSelector : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SelectTemplate(IInspectable item, Windows.UI.Xaml.DependencyObject container, Windows.UI.Xaml.DataTemplate* return_returnValue);
}

@uuid("3792bc47-8c4b-4257-a5ae-cc3f8ed786eb")
@WinrtFactory("Windows.UI.Xaml.Controls.DataTemplateSelector")
interface IDataTemplateSelector2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SelectTemplateForItem(IInspectable item, Windows.UI.Xaml.DataTemplate* return_returnValue);
}

@uuid("511baad0-210a-457d-9521-433d2b11b7d2")
@WinrtFactory("Windows.UI.Xaml.Controls.DataTemplateSelector")
interface IDataTemplateSelectorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.DataTemplateSelector* return_instance);
}

@uuid("2d162925-5966-4bfa-8638-4d345689f6cf")
@WinrtFactory("Windows.UI.Xaml.Controls.DataTemplateSelector")
interface IDataTemplateSelectorOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SelectTemplateCore(IInspectable item, Windows.UI.Xaml.DependencyObject container, Windows.UI.Xaml.DataTemplate* return_returnValue);
}

@uuid("6c3fb5fc-8e84-4c91-ac15-04a1d885500f")
@WinrtFactory("Windows.UI.Xaml.Controls.DataTemplateSelector")
interface IDataTemplateSelectorOverrides2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SelectTemplateForItemCore(IInspectable item, Windows.UI.Xaml.DataTemplate* return_returnValue);
}

@uuid("a1527b12-59c1-4521-b28c-b176675e7c5a")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickedEventArgs")
interface IDatePickedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OldDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_NewDate(Windows.Foundation.DateTime* return_value);
}

@uuid("06da3946-08b8-4103-8b8a-093efd6a7657")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePicker")
interface IDatePicker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_CalendarIdentifier(HSTRING* return_value);
	HRESULT set_CalendarIdentifier(HSTRING value);
	HRESULT get_Date(Windows.Foundation.DateTime* return_value);
	HRESULT set_Date(Windows.Foundation.DateTime value);
	HRESULT get_DayVisible(bool* return_value);
	HRESULT set_DayVisible(bool value);
	HRESULT get_MonthVisible(bool* return_value);
	HRESULT set_MonthVisible(bool value);
	HRESULT get_YearVisible(bool* return_value);
	HRESULT set_YearVisible(bool value);
	HRESULT get_DayFormat(HSTRING* return_value);
	HRESULT set_DayFormat(HSTRING value);
	HRESULT get_MonthFormat(HSTRING* return_value);
	HRESULT set_MonthFormat(HSTRING value);
	HRESULT get_YearFormat(HSTRING* return_value);
	HRESULT set_YearFormat(HSTRING value);
	HRESULT get_MinYear(Windows.Foundation.DateTime* return_value);
	HRESULT set_MinYear(Windows.Foundation.DateTime value);
	HRESULT get_MaxYear(Windows.Foundation.DateTime* return_value);
	HRESULT set_MaxYear(Windows.Foundation.DateTime value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT add_DateChanged(Windows.Foundation.EventHandler!(Windows.UI.Xaml.Controls.DatePickerValueChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_DateChanged(EventRegistrationToken token);
}

@uuid("bb28b475-2c1f-4340-9e30-948f99c9e57a")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePicker")
interface IDatePicker2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("eec3ca84-9896-4a7d-bb35-6fb21eaeca11")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePicker")
interface IDatePickerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.DatePicker* return_instance);
}

@uuid("fbf33b1a-a3a4-4df8-9228-23a5ac27df4e")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerFlyout")
interface IDatePickerFlyout : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CalendarIdentifier(HSTRING* return_value);
	HRESULT set_CalendarIdentifier(HSTRING value);
	HRESULT get_Date(Windows.Foundation.DateTime* return_value);
	HRESULT set_Date(Windows.Foundation.DateTime value);
	HRESULT get_DayVisible(bool* return_value);
	HRESULT set_DayVisible(bool value);
	HRESULT get_MonthVisible(bool* return_value);
	HRESULT set_MonthVisible(bool value);
	HRESULT get_YearVisible(bool* return_value);
	HRESULT set_YearVisible(bool value);
	HRESULT get_MinYear(Windows.Foundation.DateTime* return_value);
	HRESULT set_MinYear(Windows.Foundation.DateTime value);
	HRESULT get_MaxYear(Windows.Foundation.DateTime* return_value);
	HRESULT set_MaxYear(Windows.Foundation.DateTime value);
	HRESULT add_DatePicked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.DatePickerFlyout*,Windows.UI.Xaml.Controls.DatePickedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_DatePicked(EventRegistrationToken token);
	HRESULT abi_ShowAtAsync(Windows.UI.Xaml.FrameworkElement target, Windows.Foundation.IAsyncOperation!(Windows.Foundation.IReference!(Windows.Foundation.DateTime))* return_returnValue);
}

@uuid("cfb18dbb-9931-4119-8bda-54a86fdfac84")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerFlyout")
interface IDatePickerFlyout2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DayFormat(HSTRING* return_value);
	HRESULT set_DayFormat(HSTRING value);
	HRESULT get_MonthFormat(HSTRING* return_value);
	HRESULT set_MonthFormat(HSTRING value);
	HRESULT get_YearFormat(HSTRING* return_value);
	HRESULT set_YearFormat(HSTRING value);
}

@uuid("9d9bc289-00d2-4aac-9c85-d74f06367887")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerFlyoutItem")
interface IDatePickerFlyoutItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PrimaryText(HSTRING* return_value);
	HRESULT set_PrimaryText(HSTRING value);
	HRESULT get_SecondaryText(HSTRING* return_value);
	HRESULT set_SecondaryText(HSTRING value);
}

@uuid("aa9c91da-07f6-4cdf-89b4-dda3bdb0ea6b")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerFlyoutItem")
interface IDatePickerFlyoutItemStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PrimaryTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SecondaryTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cd570377-5845-4c12-8c10-592d9fcc7cd9")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerFlyout")
interface IDatePickerFlyoutStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CalendarIdentifierProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DayVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MonthVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_YearVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinYearProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxYearProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("afd3e569-81e6-4b54-84a9-68079b73e34e")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerFlyout")
interface IDatePickerFlyoutStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DayFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MonthFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_YearFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("182e7c69-2116-4c67-b513-713364831d79")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePicker")
interface IDatePickerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CalendarIdentifierProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DayVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MonthVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_YearVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DayFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MonthFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_YearFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinYearProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxYearProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("f1076df6-fba6-4550-8b88-a6420847f60d")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePicker")
interface IDatePickerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("1ae661b2-b1b4-4273-96e0-19daff187446")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerValueChangedEventArgs")
interface IDatePickerValueChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OldDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_NewDate(Windows.Foundation.DateTime* return_value);
}

@uuid("af05f22f-9e78-4b21-9a8e-41c2d1367a2a")
@WinrtFactory("Windows.UI.Xaml.Controls.DragItemsCompletedEventArgs")
interface IDragItemsCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVectorView!(IInspectable)* return_value);
	HRESULT get_DropResult(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
}

@uuid("71cf215c-daed-4783-aa11-dc574d2713e9")
@WinrtFactory("Windows.UI.Xaml.Controls.DragItemsStartingEventArgs")
interface IDragItemsStartingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackage* return_value);
}

@uuid("c93c736f-6f6e-4e43-90d9-9b46a0d88b9f")
@WinrtFactory("Windows.UI.Xaml.Controls.DynamicOverflowItemsChangingEventArgs")
interface IDynamicOverflowItemsChangingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Action(Windows.UI.Xaml.Controls.CommandBarDynamicOverflowAction* return_value);
}

@uuid("c4fea4fd-7af3-4952-9fd9-9e0987fc4f29")
@WinrtFactory("Windows.UI.Xaml.Controls.FlipView")
interface IFlipView2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UseTouchAnimationsForAllNavigation(bool* return_value);
	HRESULT set_UseTouchAnimationsForAllNavigation(bool value);
}

@uuid("f1dea9be-9ae8-4d4b-ab43-16d31e05f4f3")
@WinrtFactory("Windows.UI.Xaml.Controls.FlipView")
interface IFlipViewFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.FlipView* return_instance);
}

@uuid("f21d91fe-22a0-4412-a853-9d6a6e8f2aaf")
@WinrtFactory("Windows.UI.Xaml.Controls.FlipViewItem")
interface IFlipViewItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.FlipViewItem* return_instance);
}

@uuid("70e3d93f-4308-4ba2-bbce-e2cb0ed34476")
@WinrtFactory("Windows.UI.Xaml.Controls.FlipView")
interface IFlipViewStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UseTouchAnimationsForAllNavigationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6584ebdf-cbc7-4e19-843a-a14f24a793ea")
@WinrtFactory("Windows.UI.Xaml.Controls.Flyout")
interface IFlyout : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Content(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Content(Windows.UI.Xaml.UIElement value);
	HRESULT get_FlyoutPresenterStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_FlyoutPresenterStyle(Windows.UI.Xaml.Style value);
}

@uuid("4bed4933-008e-4b03-a385-79fe5266ddba")
@WinrtFactory("Windows.UI.Xaml.Controls.Flyout")
interface IFlyoutFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Flyout* return_instance);
}

@uuid("ee4d668f-da76-469a-acd7-3060e613ade7")
@WinrtFactory("Windows.UI.Xaml.Controls.FlyoutPresenter")
interface IFlyoutPresenterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.FlyoutPresenter* return_instance);
}

@uuid("61364e0b-db75-47e1-b2c3-5b901c3d74b6")
@WinrtFactory("Windows.UI.Xaml.Controls.Flyout")
interface IFlyoutStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FlyoutPresenterStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4a59e0f4-87c0-4ccd-93c4-a3a01ce39265")
@WinrtFactory("Windows.UI.Xaml.Controls.FocusEngagedEventArgs")
interface IFocusEngagedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("d4d61391-39ac-4950-9166-3606c264418b")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIcon : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Glyph(HSTRING* return_value);
	HRESULT set_Glyph(HSTRING value);
	HRESULT get_FontSize(double* return_value);
	HRESULT set_FontSize(double value);
	HRESULT get_FontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
	HRESULT set_FontFamily(Windows.UI.Xaml.Media.FontFamily value);
	HRESULT get_FontWeight(Windows.UI.Text.FontWeight* return_value);
	HRESULT set_FontWeight(Windows.UI.Text.FontWeight value);
	HRESULT get_FontStyle(Windows.UI.Text.FontStyle* return_value);
	HRESULT set_FontStyle(Windows.UI.Text.FontStyle value);
}

@uuid("f6ebd84d-37e8-46ee-a574-41ad550482e0")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIcon2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("6155d919-1c6c-4950-8794-231ef0914d94")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIcon3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MirroredWhenRightToLeft(bool* return_value);
	HRESULT set_MirroredWhenRightToLeft(bool value);
}

@uuid("1c781b6b-37bf-4ddc-a1a8-1b77db3cf0ea")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIconFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.FontIcon* return_instance);
}

@uuid("b3be7bf6-1467-4086-bbcb-4e21d97a7b4d")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIconStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GlyphProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontFamilyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e6080672-08f8-43d3-8790-4604290cbebd")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIconStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a4528b17-b084-4bd5-aab4-feae9d3b5d26")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIconStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MirroredWhenRightToLeftProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("68ea500b-3fe9-4735-b6a0-e7601933b089")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CacheSize(INT32* return_value);
	HRESULT set_CacheSize(INT32 value);
	HRESULT get_CanGoBack(bool* return_value);
	HRESULT get_CanGoForward(bool* return_value);
	HRESULT get_CurrentSourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT get_SourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT set_SourcePageType(Windows.UI.Xaml.Interop.TypeName value);
	HRESULT get_BackStackDepth(INT32* return_value);
	HRESULT add_Navigated(Windows.UI.Xaml.Navigation.NavigatedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_Navigated(EventRegistrationToken token);
	HRESULT add_Navigating(Windows.UI.Xaml.Navigation.NavigatingCancelEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_Navigating(EventRegistrationToken token);
	HRESULT add_NavigationFailed(Windows.UI.Xaml.Navigation.NavigationFailedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_NavigationFailed(EventRegistrationToken token);
	HRESULT add_NavigationStopped(Windows.UI.Xaml.Navigation.NavigationStoppedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_NavigationStopped(EventRegistrationToken token);
	HRESULT abi_GoBack();
	HRESULT abi_GoForward();
	HRESULT abi_Navigate(Windows.UI.Xaml.Interop.TypeName sourcePageType, IInspectable parameter, bool* return_returnValue);
	HRESULT abi_GetNavigationState(HSTRING* return_returnValue);
	HRESULT abi_SetNavigationState(HSTRING navigationState);
}

@uuid("3f367f87-9f5a-4b04-b818-b554c069597a")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrame2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BackStack(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Navigation.PageStackEntry)* return_value);
	HRESULT get_ForwardStack(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Navigation.PageStackEntry)* return_value);
	HRESULT abi_Navigate(Windows.UI.Xaml.Interop.TypeName sourcePageType, IInspectable parameter, Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo infoOverride, bool* return_returnValue);
}

@uuid("648a2b4d-53ca-4b5a-aa8e-3cc7440f4a67")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrame3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GoBack(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo transitionInfoOverride);
}

@uuid("9b17c21a-bd2b-4a00-99eb-946be9618084")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrame4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetNavigationStateWithNavigationControl(HSTRING navigationState, bool suppressNavigate);
}

@uuid("02ee93d4-448e-469e-9799-0a8a1f70f171")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrameFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Frame* return_instance);
}

@uuid("d5acf0e9-d967-471b-8459-c8af4341511b")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CacheSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CanGoBackProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CanGoForwardProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CurrentSourcePageTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SourcePageTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BackStackDepthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e4b5cdfe-42f0-4462-a1c1-5d259dd82a03")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrameStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BackStackProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ForwardStackProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fd104460-2e15-4ba3-8b8f-fa693a4161e9")
@WinrtFactory("Windows.UI.Xaml.Controls.Grid")
interface IGrid : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RowDefinitions(Windows.UI.Xaml.Controls.RowDefinitionCollection* return_value);
	HRESULT get_ColumnDefinitions(Windows.UI.Xaml.Controls.ColumnDefinitionCollection* return_value);
}

@uuid("f76efa41-380e-45db-be87-9e1326ba4b57")
@WinrtFactory("Windows.UI.Xaml.Controls.Grid")
interface IGrid2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_BorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_BorderThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_BorderThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_CornerRadius(Windows.UI.Xaml.CornerRadius* return_value);
	HRESULT set_CornerRadius(Windows.UI.Xaml.CornerRadius value);
	HRESULT get_Padding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Padding(Windows.UI.Xaml.Thickness value);
}

@uuid("ae814041-c531-43b4-bf99-12f506f7b01c")
@WinrtFactory("Windows.UI.Xaml.Controls.Grid")
interface IGridFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Grid* return_instance);
}

@uuid("64fe2e9f-f951-42b6-a9ce-bb179af11595")
@WinrtFactory("Windows.UI.Xaml.Controls.Grid")
interface IGridStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetRow(Windows.UI.Xaml.FrameworkElement element, INT32* return_value);
	HRESULT abi_SetRow(Windows.UI.Xaml.FrameworkElement element, INT32 value);
	HRESULT get_ColumnProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetColumn(Windows.UI.Xaml.FrameworkElement element, INT32* return_value);
	HRESULT abi_SetColumn(Windows.UI.Xaml.FrameworkElement element, INT32 value);
	HRESULT get_RowSpanProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetRowSpan(Windows.UI.Xaml.FrameworkElement element, INT32* return_value);
	HRESULT abi_SetRowSpan(Windows.UI.Xaml.FrameworkElement element, INT32 value);
	HRESULT get_ColumnSpanProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetColumnSpan(Windows.UI.Xaml.FrameworkElement element, INT32* return_value);
	HRESULT abi_SetColumnSpan(Windows.UI.Xaml.FrameworkElement element, INT32 value);
}

@uuid("2d666658-58b6-4a1b-841b-875ba93b5d6a")
@WinrtFactory("Windows.UI.Xaml.Controls.Grid")
interface IGridStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CornerRadiusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d9bcca89-09f9-4c6e-a83e-f199146f0e7d")
@WinrtFactory("Windows.UI.Xaml.Controls.GridView")
interface IGridViewFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GridView* return_instance);
}

@uuid("36e0c96e-b56a-4b3b-8bac-7aef5e6f9945")
@WinrtFactory("Windows.UI.Xaml.Controls.GridViewHeaderItem")
interface IGridViewHeaderItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GridViewHeaderItem* return_instance);
}

@uuid("7d9901f1-e7c1-4e83-b470-c9d6d7bda9f5")
@WinrtFactory("Windows.UI.Xaml.Controls.GridViewItem")
interface IGridViewItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.GridViewItemTemplateSettings* return_value);
}

@uuid("229b00af-3fa6-43e9-979d-07ea0d6280dc")
@WinrtFactory("Windows.UI.Xaml.Controls.GridViewItem")
interface IGridViewItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GridViewItem* return_instance);
}

@uuid("d9a1d53e-b1e0-4319-9808-7a9e887e13b0")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupItem")
interface IGroupItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GroupItem* return_instance);
}

@uuid("71ca300b-b89e-4184-b0df-a9e95447de8d")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyle")
interface IGroupStyle : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Panel(Windows.UI.Xaml.Controls.ItemsPanelTemplate* return_value);
	HRESULT set_Panel(Windows.UI.Xaml.Controls.ItemsPanelTemplate value);
	deprecated("ContainerStyle may be altered or unavailable for releases after Windows 8.1, and is not supported for ItemsControl.GroupStyle.")
	HRESULT get_ContainerStyle(Windows.UI.Xaml.Style* return_value);
	deprecated("ContainerStyle may be altered or unavailable for releases after Windows 8.1, and is not supported for ItemsControl.GroupStyle.")
	HRESULT set_ContainerStyle(Windows.UI.Xaml.Style value);
	deprecated("ContainerStyleSelector may be altered or unavailable for releases after Windows 8.1, and is not supported for ItemsControl.GroupStyle.")
	HRESULT get_ContainerStyleSelector(Windows.UI.Xaml.Controls.StyleSelector* return_value);
	deprecated("ContainerStyleSelector may be altered or unavailable for releases after Windows 8.1, and is not supported for ItemsControl.GroupStyle.")
	HRESULT set_ContainerStyleSelector(Windows.UI.Xaml.Controls.StyleSelector value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_HeaderTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector* return_value);
	HRESULT set_HeaderTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector value);
	HRESULT get_HidesIfEmpty(bool* return_value);
	HRESULT set_HidesIfEmpty(bool value);
}

@uuid("69f90679-3a11-4fe7-b4df-2a0139d4018b")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyle")
interface IGroupStyle2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderContainerStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_HeaderContainerStyle(Windows.UI.Xaml.Style value);
}

@uuid("56ff664f-e2d7-4f49-803d-c727cdf9372d")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyle")
interface IGroupStyleFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GroupStyle* return_instance);
}

@uuid("6dda119e-9a74-478f-a339-5bb52de6c51e")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyleSelector")
interface IGroupStyleSelector : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SelectGroupStyle(IInspectable group, UINT32 level, Windows.UI.Xaml.Controls.GroupStyle* return_returnValue);
}

@uuid("bf570d33-b2f6-481f-a450-c80c291fb22d")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyleSelector")
interface IGroupStyleSelectorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GroupStyleSelector* return_instance);
}

@uuid("f691cab2-77ad-4d3d-a51c-8ef9c3836456")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyleSelector")
interface IGroupStyleSelectorOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SelectGroupStyleCore(IInspectable group, UINT32 level, Windows.UI.Xaml.Controls.GroupStyle* return_returnValue);
}

@uuid("ae692e82-7314-4f51-ab11-2af1ed4a19f8")
@WinrtFactory("Windows.UI.Xaml.Controls.Hub")
interface IHub : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT get_DefaultSectionIndex(INT32* return_value);
	HRESULT set_DefaultSectionIndex(INT32 value);
	HRESULT get_Sections(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)* return_value);
	HRESULT get_SectionsInView(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)* return_value);
	HRESULT get_SectionHeaders(Windows.Foundation.Collections.IObservableVector!(IInspectable)* return_value);
	HRESULT add_SectionHeaderClick(Windows.UI.Xaml.Controls.HubSectionHeaderClickEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_SectionHeaderClick(EventRegistrationToken token);
	HRESULT add_SectionsInViewChanged(Windows.UI.Xaml.Controls.SectionsInViewChangedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_SectionsInViewChanged(EventRegistrationToken token);
	HRESULT abi_ScrollToSection(Windows.UI.Xaml.Controls.HubSection section);
}

@uuid("dca6b2ba-c6f5-4961-9953-c51873db5424")
@WinrtFactory("Windows.UI.Xaml.Controls.Hub")
interface IHubFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Hub* return_instance);
}

@uuid("a4e66cb7-7fdd-4fe0-ab49-c246639dccf9")
@WinrtFactory("Windows.UI.Xaml.Controls.HubSection")
interface IHubSection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_ContentTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_ContentTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_IsHeaderInteractive(bool* return_value);
	HRESULT set_IsHeaderInteractive(bool value);
}

@uuid("fff55fa2-ece4-4bba-aa3b-9804aef47883")
@WinrtFactory("Windows.UI.Xaml.Controls.HubSection")
interface IHubSectionFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.HubSection* return_instance);
}

@uuid("e1c5ef04-1edd-4112-aeeb-996c96400698")
@WinrtFactory("Windows.UI.Xaml.Controls.HubSectionHeaderClickEventArgs")
interface IHubSectionHeaderClickEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Section(Windows.UI.Xaml.Controls.HubSection* return_value);
}

@uuid("12d2d85a-ea27-42d1-998b-61e52aed842b")
@WinrtFactory("Windows.UI.Xaml.Controls.HubSection")
interface IHubSectionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsHeaderInteractiveProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0e6fa034-ad3c-4f32-b701-e24fab562028")
@WinrtFactory("Windows.UI.Xaml.Controls.Hub")
interface IHubStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DefaultSectionIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SemanticZoomOwnerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsActiveViewProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsZoomedInViewProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ccebaca3-3b5c-4f4c-9bfd-86887bc79772")
@WinrtFactory("Windows.UI.Xaml.Controls.HyperlinkButton")
interface IHyperlinkButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NavigateUri(Windows.Foundation.Uri* return_value);
	HRESULT set_NavigateUri(Windows.Foundation.Uri value);
}

@uuid("43521bad-4e97-4da9-a64d-935dfd8cedf2")
@WinrtFactory("Windows.UI.Xaml.Controls.HyperlinkButton")
interface IHyperlinkButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.HyperlinkButton* return_instance);
}

@uuid("fbaeb5c7-cdb7-4263-b7d6-3c0d2904ed98")
@WinrtFactory("Windows.UI.Xaml.Controls.HyperlinkButton")
interface IHyperlinkButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NavigateUriProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9af0803b-d04c-467a-bbd5-9b81f02d9a56")
@WinrtFactory("Windows.UI.Xaml.Controls.IconElement")
interface IIconElement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Foreground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Foreground(Windows.UI.Xaml.Media.Brush value);
}

@uuid("be19a623-77cf-472f-82ea-047801d12012")
@WinrtFactory("Windows.UI.Xaml.Controls.IconElement")
interface IIconElementStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("495b7402-9af3-4e50-aa90-03388f3086d2")
@WinrtFactory("Windows.UI.Xaml.Controls.Image")
interface IImage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Source(Windows.UI.Xaml.Media.ImageSource* return_value);
	HRESULT set_Source(Windows.UI.Xaml.Media.ImageSource value);
	HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value);
	HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value);
	HRESULT get_NineGrid(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_NineGrid(Windows.UI.Xaml.Thickness value);
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource.")
	HRESULT get_PlayToSource(Windows.Media.PlayTo.PlayToSource* return_value);
	HRESULT add_ImageFailed(Windows.UI.Xaml.ExceptionRoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ImageFailed(EventRegistrationToken token);
	HRESULT add_ImageOpened(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ImageOpened(EventRegistrationToken token);
}

@uuid("f445119e-881f-48bb-873a-64417ca4f002")
@WinrtFactory("Windows.UI.Xaml.Controls.Image")
interface IImage2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAsCastingSource(Windows.Media.Casting.CastingSource* return_returnValue);
}

@uuid("06ebe792-47c2-4d92-a488-8cd685d06aca")
@WinrtFactory("Windows.UI.Xaml.Controls.Image")
interface IImage3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAlphaMask(Windows.UI.Composition.CompositionBrush* return_returnValue);
}

@uuid("89903772-c336-43d1-9d51-c3bbd5d5d691")
@WinrtFactory("Windows.UI.Xaml.Controls.Image")
interface IImageStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_NineGridProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource.")
	HRESULT get_PlayToSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("29443c28-8e48-4fc8-a473-35b0ba12acea")
@WinrtFactory("Windows.UI.Xaml.Controls.InkCanvas")
interface IInkCanvas : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InkPresenter(Windows.UI.Input.Inking.InkPresenter* return_value);
}

@uuid("924ac2de-ab04-48f0-9653-e0f2da4dbf1a")
@WinrtFactory("Windows.UI.Xaml.Controls.InkCanvas")
interface IInkCanvasFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkCanvas* return_instance);
}

@uuid("3ddd0cca-51f0-486f-a03e-4ee13dc12bcb")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbar")
interface IInkToolbar : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InitialControls(Windows.UI.Xaml.Controls.InkToolbarInitialControls* return_value);
	HRESULT set_InitialControls(Windows.UI.Xaml.Controls.InkToolbarInitialControls value);
	HRESULT get_Children(Windows.UI.Xaml.DependencyObjectCollection* return_value);
	HRESULT get_ActiveTool(Windows.UI.Xaml.Controls.InkToolbarToolButton* return_value);
	HRESULT set_ActiveTool(Windows.UI.Xaml.Controls.InkToolbarToolButton value);
	HRESULT get_InkDrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes* return_value);
	HRESULT get_IsRulerButtonChecked(bool* return_value);
	HRESULT set_IsRulerButtonChecked(bool value);
	HRESULT get_TargetInkCanvas(Windows.UI.Xaml.Controls.InkCanvas* return_value);
	HRESULT set_TargetInkCanvas(Windows.UI.Xaml.Controls.InkCanvas value);
	HRESULT add_ActiveToolChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT remove_ActiveToolChanged(EventRegistrationToken token);
	HRESULT add_InkDrawingAttributesChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT remove_InkDrawingAttributesChanged(EventRegistrationToken token);
	HRESULT add_EraseAllClicked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT remove_EraseAllClicked(EventRegistrationToken token);
	deprecated("InkToolbarRulerButton is replaced by InkToolbarStencilButton starting from Windows 10 Creators Update. For more info, see MSDN.")
	HRESULT add_IsRulerButtonCheckedChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar*,IInspectable*) value, EventRegistrationToken* return_token);
	deprecated("InkToolbarRulerButton is replaced by InkToolbarStencilButton starting from Windows 10 Creators Update. For more info, see MSDN.")
	HRESULT remove_IsRulerButtonCheckedChanged(EventRegistrationToken token);
	HRESULT abi_GetToolButton(Windows.UI.Xaml.Controls.InkToolbarTool tool, Windows.UI.Xaml.Controls.InkToolbarToolButton* return_returnValue);
	HRESULT abi_GetToggleButton(Windows.UI.Xaml.Controls.InkToolbarToggle tool, Windows.UI.Xaml.Controls.InkToolbarToggleButton* return_returnValue);
}

@uuid("86f0c111-b484-454a-ae78-1d25a33d1c67")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbar")
interface IInkToolbar2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsStencilButtonChecked(bool* return_value);
	HRESULT set_IsStencilButtonChecked(bool value);
	HRESULT get_ButtonFlyoutPlacement(Windows.UI.Xaml.Controls.InkToolbarButtonFlyoutPlacement* return_value);
	HRESULT set_ButtonFlyoutPlacement(Windows.UI.Xaml.Controls.InkToolbarButtonFlyoutPlacement value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT add_IsStencilButtonCheckedChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar*,Windows.UI.Xaml.Controls.InkToolbarIsStencilButtonCheckedChangedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_IsStencilButtonCheckedChanged(EventRegistrationToken token);
	HRESULT abi_GetMenuButton(Windows.UI.Xaml.Controls.InkToolbarMenuKind menu, Windows.UI.Xaml.Controls.InkToolbarMenuButton* return_returnValue);
}

@uuid("2f0bd3e4-d754-4255-8ec4-00cd101296ab")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarBallpointPenButton")
interface IInkToolbarBallpointPenButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarBallpointPenButton* return_instance);
}

@uuid("4082207b-2f3d-4e6a-8c27-fe61ef7e70eb")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPen")
interface IInkToolbarCustomPen : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInkDrawingAttributes(Windows.UI.Xaml.Media.Brush brush, double strokeWidth, Windows.UI.Input.Inking.InkDrawingAttributes* return_returnValue);
}

@uuid("46024401-2b2a-4f3c-a53c-1a045a408efa")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPenButton")
interface IInkToolbarCustomPenButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CustomPen(Windows.UI.Xaml.Controls.InkToolbarCustomPen* return_value);
	HRESULT set_CustomPen(Windows.UI.Xaml.Controls.InkToolbarCustomPen value);
	HRESULT get_ConfigurationContent(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_ConfigurationContent(Windows.UI.Xaml.UIElement value);
}

@uuid("0f2ef0ba-c8b9-4c36-8987-94d3dafede18")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPenButton")
interface IInkToolbarCustomPenButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarCustomPenButton* return_instance);
}

@uuid("373c25f4-e555-4e85-a80d-da6b8433dbde")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPenButton")
interface IInkToolbarCustomPenButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CustomPenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ConfigurationContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d214d636-f1aa-4f48-bf2c-a926caae4c60")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPen")
interface IInkToolbarCustomPenFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarCustomPen* return_instance);
}

@uuid("9d22eb6c-1255-4256-b6bd-82c2fd273488")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPen")
interface IInkToolbarCustomPenOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInkDrawingAttributesCore(Windows.UI.Xaml.Media.Brush brush, double strokeWidth, Windows.UI.Input.Inking.InkDrawingAttributes* return_returnValue);
}

@uuid("4a00374d-4cd2-4ed9-863e-83b8cf3fd2af")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomToggleButton")
interface IInkToolbarCustomToggleButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarCustomToggleButton* return_instance);
}

@uuid("9f98acd7-c605-4105-be10-3943a7c0da3c")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomToolButton")
interface IInkToolbarCustomToolButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ConfigurationContent(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_ConfigurationContent(Windows.UI.Xaml.UIElement value);
}

@uuid("c295fe4e-30eb-4130-a6b6-8c85d8e26e89")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomToolButton")
interface IInkToolbarCustomToolButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarCustomToolButton* return_instance);
}

@uuid("11fe4cb9-bbac-4314-9344-92c6693ddeaf")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomToolButton")
interface IInkToolbarCustomToolButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ConfigurationContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e7a59257-5ae8-436d-b2e2-93c200900ca0")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarEraserButton")
interface IInkToolbarEraserButton2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsClearAllVisible(bool* return_value);
	HRESULT set_IsClearAllVisible(bool value);
}

@uuid("fd40611d-d1ba-4d67-af00-148036ad492c")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarEraserButton")
interface IInkToolbarEraserButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarEraserButton* return_instance);
}

@uuid("038a1736-c5cd-4311-83f4-38cbf07c2066")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarEraserButton")
interface IInkToolbarEraserButtonStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsClearAllVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3947aa99-36b1-4374-ab5c-98bf07a4320b")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbar")
interface IInkToolbarFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbar* return_instance);
}

@uuid("92b68786-37ee-4915-9e89-e187564a889a")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarFlyoutItem")
interface IInkToolbarFlyoutItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Kind(Windows.UI.Xaml.Controls.InkToolbarFlyoutItemKind* return_value);
	HRESULT set_Kind(Windows.UI.Xaml.Controls.InkToolbarFlyoutItemKind value);
	HRESULT get_IsChecked(bool* return_value);
	HRESULT set_IsChecked(bool value);
	HRESULT add_Checked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbarFlyoutItem*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT remove_Checked(EventRegistrationToken token);
	HRESULT add_Unchecked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbarFlyoutItem*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT remove_Unchecked(EventRegistrationToken token);
}

@uuid("352e7b93-803b-4f0e-8c72-9dfc0329329f")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarFlyoutItem")
interface IInkToolbarFlyoutItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarFlyoutItem* return_instance);
}

@uuid("1fe54b64-4063-4a5f-b89c-9f58935ee379")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarFlyoutItem")
interface IInkToolbarFlyoutItemStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KindProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsCheckedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7c334add-42ca-4943-94a4-23b5a6e55cf1")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarHighlighterButton")
interface IInkToolbarHighlighterButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarHighlighterButton* return_instance);
}

@uuid("026edd26-d32b-4e28-a033-d5097662b292")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarIsStencilButtonCheckedChangedEventArgs")
interface IInkToolbarIsStencilButtonCheckedChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StencilButton(Windows.UI.Xaml.Controls.InkToolbarStencilButton* return_value);
	HRESULT get_StencilKind(Windows.UI.Xaml.Controls.InkToolbarStencilKind* return_value);
}

@uuid("860ecae5-7633-4ea1-a209-50392d1aebd1")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarMenuButton")
interface IInkToolbarMenuButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MenuKind(Windows.UI.Xaml.Controls.InkToolbarMenuKind* return_value);
	HRESULT get_IsExtensionGlyphShown(bool* return_value);
	HRESULT set_IsExtensionGlyphShown(bool value);
}

@uuid("f03b17a6-b8b0-4a87-a961-37cd05d83137")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarMenuButton")
interface IInkToolbarMenuButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsExtensionGlyphShownProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e0b80c21-b032-40ee-a2b9-507f6ccb827b")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPenButton")
interface IInkToolbarPenButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Palette(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush)* return_value);
	HRESULT set_Palette(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush) value);
	HRESULT get_MinStrokeWidth(double* return_value);
	HRESULT set_MinStrokeWidth(double value);
	HRESULT get_MaxStrokeWidth(double* return_value);
	HRESULT set_MaxStrokeWidth(double value);
	HRESULT get_SelectedBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT get_SelectedBrushIndex(INT32* return_value);
	HRESULT set_SelectedBrushIndex(INT32 value);
	HRESULT get_SelectedStrokeWidth(double* return_value);
	HRESULT set_SelectedStrokeWidth(double value);
}

@uuid("b922ce42-09f0-453d-8026-44daf2753f65")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPenButton")
interface IInkToolbarPenButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PaletteProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinStrokeWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxStrokeWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedBrushIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedStrokeWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("601ae5f6-28a5-44cc-89a6-380e91a572dd")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPenConfigurationControl")
interface IInkToolbarPenConfigurationControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PenButton(Windows.UI.Xaml.Controls.InkToolbarPenButton* return_value);
}

@uuid("67f065ee-f5e7-46eb-9187-8d3ca3af891b")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPenConfigurationControl")
interface IInkToolbarPenConfigurationControlFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarPenConfigurationControl* return_instance);
}

@uuid("48a61bef-19ce-41bb-abe0-7c8726fae75e")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPenConfigurationControl")
interface IInkToolbarPenConfigurationControlStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PenButtonProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("db66d85f-cfd6-495f-93ab-b8566af9f8af")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPencilButton")
interface IInkToolbarPencilButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarPencilButton* return_instance);
}

@uuid("4a992832-1984-4148-9f25-382b35db087f")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarRulerButton")
interface IInkToolbarRulerButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("InkToolbarRulerButton is deprecated starting from Windows 10 Creators Update. Please use InkToolbarStencilButton going forward. For more info, see MSDN.")
	HRESULT get_Ruler(Windows.UI.Input.Inking.InkPresenterRuler* return_value);
}

@uuid("bb26d85f-cfd6-495f-93ab-b8566af9f8af")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarRulerButton")
interface IInkToolbarRulerButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("InkToolbarRulerButton is deprecated starting from Windows 10 Creators Update. Please use InkToolbarStencilButton going forward. For more info, see MSDN.")
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarRulerButton* return_instance);
}

@uuid("bae75f65-be30-4bee-964b-ff9e498fee37")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarRulerButton")
interface IInkToolbarRulerButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("InkToolbarRulerButton is deprecated starting from Windows 10 Creators Update. Please use InkToolbarStencilButton going forward. For more info, see MSDN.")
	HRESULT get_RulerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a3b493bb-cb4f-4e6b-a33d-f11e7a295efa")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbar")
interface IInkToolbarStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InitialControlsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ChildrenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ActiveToolProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_InkDrawingAttributesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsRulerButtonCheckedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TargetInkCanvasProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("aac1f8f2-2c1f-4e9c-b3f3-31ff22b51c7a")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbar")
interface IInkToolbarStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsStencilButtonCheckedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ButtonFlyoutPlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("306a2616-5b40-4bf3-92b7-f1df936aeff5")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarStencilButton")
interface IInkToolbarStencilButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Ruler(Windows.UI.Input.Inking.InkPresenterRuler* return_value);
	HRESULT get_Protractor(Windows.UI.Input.Inking.InkPresenterProtractor* return_value);
	HRESULT get_SelectedStencil(Windows.UI.Xaml.Controls.InkToolbarStencilKind* return_value);
	HRESULT set_SelectedStencil(Windows.UI.Xaml.Controls.InkToolbarStencilKind value);
	HRESULT get_IsRulerItemVisible(bool* return_value);
	HRESULT set_IsRulerItemVisible(bool value);
	HRESULT get_IsProtractorItemVisible(bool* return_value);
	HRESULT set_IsProtractorItemVisible(bool value);
}

@uuid("a20701d1-8a70-4d77-89d4-1730a3a58edf")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarStencilButton")
interface IInkToolbarStencilButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarStencilButton* return_instance);
}

@uuid("4748c07f-63e4-420d-939a-6b7243e9d124")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarStencilButton")
interface IInkToolbarStencilButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RulerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ProtractorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedStencilProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsRulerItemVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsProtractorItemVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b4a278fa-f5f0-4b1f-beb0-0b8a29905a4a")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarToggleButton")
interface IInkToolbarToggleButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ToggleKind(Windows.UI.Xaml.Controls.InkToolbarToggle* return_value);
}

@uuid("5c5af41e-ccb7-4458-8064-a9849d31561b")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarToolButton")
interface IInkToolbarToolButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ToolKind(Windows.UI.Xaml.Controls.InkToolbarTool* return_value);
	HRESULT get_IsExtensionGlyphShown(bool* return_value);
	HRESULT set_IsExtensionGlyphShown(bool value);
}

@uuid("9e097d18-d136-4ef6-b0fd-1a78c2884a01")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarToolButton")
interface IInkToolbarToolButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsExtensionGlyphShownProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6b8de08f-6527-4d39-bcbf-58b01da923d7")
interface IInsertionPanel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetInsertionIndexes(Windows.Foundation.Point position, INT32* out_first, INT32* out_second);
}

@uuid("9c314242-f29a-494d-a3a5-d4c7b2a46852")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemClickEventArgs")
interface IItemClickEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ClickedItem(IInspectable* return_value);
}

@uuid("40765f00-83f0-4d7f-b1b8-f19de4f1d5da")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemContainerGenerator")
interface IItemContainerGenerator : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ItemsChanged(Windows.UI.Xaml.Controls.Primitives.ItemsChangedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ItemsChanged(EventRegistrationToken token);
	deprecated("ItemFromContainer may be altered or unavailable for releases after Windows 8.1. Instead, use ItemsControl.ItemFromContainer.")
	HRESULT abi_ItemFromContainer(Windows.UI.Xaml.DependencyObject container, IInspectable* return_returnValue);
	deprecated("ContainerFromItem may be altered or unavailable for releases after Windows 8.1. Instead, use ItemsControl.ContainerFromItem.")
	HRESULT abi_ContainerFromItem(IInspectable item, Windows.UI.Xaml.DependencyObject* return_returnValue);
	deprecated("IndexFromContainer may be altered or unavailable for releases after Windows 8.1. Instead, use ItemsControl.IndexFromContainer.")
	HRESULT abi_IndexFromContainer(Windows.UI.Xaml.DependencyObject container, INT32* return_returnValue);
	deprecated("ContainerFromIndex may be altered or unavailable for releases after Windows 8.1. Instead, use ItemsControl.ContainerFromIndex.")
	HRESULT abi_ContainerFromIndex(INT32 index, Windows.UI.Xaml.DependencyObject* return_returnValue);
	HRESULT abi_GetItemContainerGeneratorForPanel(Windows.UI.Xaml.Controls.Panel panel, Windows.UI.Xaml.Controls.ItemContainerGenerator* return_returnValue);
	HRESULT abi_StartAt(Windows.UI.Xaml.Controls.Primitives.GeneratorPosition position, Windows.UI.Xaml.Controls.Primitives.GeneratorDirection direction, bool allowStartAtRealizedItem);
	HRESULT abi_Stop();
	HRESULT abi_GenerateNext(bool* out_isNewlyRealized, Windows.UI.Xaml.DependencyObject* return_returnValue);
	HRESULT abi_PrepareItemContainer(Windows.UI.Xaml.DependencyObject container);
	HRESULT abi_RemoveAll();
	HRESULT abi_Remove(Windows.UI.Xaml.Controls.Primitives.GeneratorPosition position, INT32 count);
	HRESULT abi_GeneratorPositionFromIndex(INT32 itemIndex, Windows.UI.Xaml.Controls.Primitives.GeneratorPosition* return_returnValue);
	HRESULT abi_IndexFromGeneratorPosition(Windows.UI.Xaml.Controls.Primitives.GeneratorPosition position, INT32* return_returnValue);
	HRESULT abi_Recycle(Windows.UI.Xaml.Controls.Primitives.GeneratorPosition position, INT32 count);
}

@uuid("53c9f23a-f25d-446a-99b8-c7aeb839050f")
interface IItemContainerMapping : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ItemFromContainer(Windows.UI.Xaml.DependencyObject container, IInspectable* return_returnValue);
	HRESULT abi_ContainerFromItem(IInspectable item, Windows.UI.Xaml.DependencyObject* return_returnValue);
	HRESULT abi_IndexFromContainer(Windows.UI.Xaml.DependencyObject container, INT32* return_returnValue);
	HRESULT abi_ContainerFromIndex(INT32 index, Windows.UI.Xaml.DependencyObject* return_returnValue);
}

@uuid("f4a91dd8-d979-4381-8652-bda0342a765e")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsControl")
interface IItemsControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemsSource(IInspectable* return_value);
	HRESULT set_ItemsSource(IInspectable value);
	HRESULT get_Items(Windows.UI.Xaml.Controls.ItemCollection* return_value);
	HRESULT get_ItemTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_ItemTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_ItemTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector* return_value);
	HRESULT set_ItemTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector value);
	HRESULT get_ItemsPanel(Windows.UI.Xaml.Controls.ItemsPanelTemplate* return_value);
	HRESULT set_ItemsPanel(Windows.UI.Xaml.Controls.ItemsPanelTemplate value);
	HRESULT get_DisplayMemberPath(HSTRING* return_value);
	HRESULT set_DisplayMemberPath(HSTRING value);
	HRESULT get_ItemContainerStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_ItemContainerStyle(Windows.UI.Xaml.Style value);
	HRESULT get_ItemContainerStyleSelector(Windows.UI.Xaml.Controls.StyleSelector* return_value);
	HRESULT set_ItemContainerStyleSelector(Windows.UI.Xaml.Controls.StyleSelector value);
	HRESULT get_ItemContainerGenerator(Windows.UI.Xaml.Controls.ItemContainerGenerator* return_value);
	HRESULT get_ItemContainerTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_ItemContainerTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
	HRESULT get_GroupStyle(Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.GroupStyle)* return_value);
	HRESULT get_GroupStyleSelector(Windows.UI.Xaml.Controls.GroupStyleSelector* return_value);
	HRESULT set_GroupStyleSelector(Windows.UI.Xaml.Controls.GroupStyleSelector value);
	HRESULT get_IsGrouping(bool* return_value);
}

@uuid("754c3266-0529-45e3-8748-bf747d158357")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsControl")
interface IItemsControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemsPanelRoot(Windows.UI.Xaml.Controls.Panel* return_value);
}

@uuid("502b7489-aee4-4de3-a2ab-195ac20c4212")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsControl")
interface IItemsControl3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GroupHeaderContainerFromItemContainer(Windows.UI.Xaml.DependencyObject itemContainer, Windows.UI.Xaml.DependencyObject* return_returnValue);
}

@uuid("f7bbc359-f8fd-471c-bcb2-2c74be8ebf8c")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsControl")
interface IItemsControlFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ItemsControl* return_instance);
}

@uuid("c79bb41b-a084-4301-a496-72971f364ed1")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsControl")
interface IItemsControlOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsItemItsOwnContainerOverride(IInspectable item, bool* return_returnValue);
	HRESULT abi_GetContainerForItemOverride(Windows.UI.Xaml.DependencyObject* return_returnValue);
	HRESULT abi_ClearContainerForItemOverride(Windows.UI.Xaml.DependencyObject element, IInspectable item);
	HRESULT abi_PrepareContainerForItemOverride(Windows.UI.Xaml.DependencyObject element, IInspectable item);
	HRESULT abi_OnItemsChanged(IInspectable e);
	HRESULT abi_OnItemContainerStyleChanged(Windows.UI.Xaml.Style oldItemContainerStyle, Windows.UI.Xaml.Style newItemContainerStyle);
	HRESULT abi_OnItemContainerStyleSelectorChanged(Windows.UI.Xaml.Controls.StyleSelector oldItemContainerStyleSelector, Windows.UI.Xaml.Controls.StyleSelector newItemContainerStyleSelector);
	HRESULT abi_OnItemTemplateChanged(Windows.UI.Xaml.DataTemplate oldItemTemplate, Windows.UI.Xaml.DataTemplate newItemTemplate);
	HRESULT abi_OnItemTemplateSelectorChanged(Windows.UI.Xaml.Controls.DataTemplateSelector oldItemTemplateSelector, Windows.UI.Xaml.Controls.DataTemplateSelector newItemTemplateSelector);
	HRESULT abi_OnGroupStyleSelectorChanged(Windows.UI.Xaml.Controls.GroupStyleSelector oldGroupStyleSelector, Windows.UI.Xaml.Controls.GroupStyleSelector newGroupStyleSelector);
}

@uuid("37dabd89-dcfb-45b8-9afe-874df097905e")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsControl")
interface IItemsControlStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemsSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemTemplateSelectorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemsPanelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DisplayMemberPathProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemContainerStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemContainerStyleSelectorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemContainerTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_GroupStyleSelectorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsGroupingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetItemsOwner(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ItemsControl* return_returnValue);
	HRESULT abi_ItemsControlFromItemContainer(Windows.UI.Xaml.DependencyObject container, Windows.UI.Xaml.Controls.ItemsControl* return_returnValue);
}

@uuid("f95b9aac-a621-488e-9156-8ee31165be04")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsPickedEventArgs")
interface IItemsPickedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AddedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
	HRESULT get_RemovedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
}

@uuid("c271569b-6dca-4e2b-8e14-c55136b02a71")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsPresenter")
interface IItemsPresenter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_HeaderTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_HeaderTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
	HRESULT get_Padding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Padding(Windows.UI.Xaml.Thickness value);
}

@uuid("5c04aa33-1df3-4731-a4c9-da818378d63d")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsPresenter")
interface IItemsPresenter2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Footer(IInspectable* return_value);
	HRESULT set_Footer(IInspectable value);
	HRESULT get_FooterTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_FooterTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_FooterTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_FooterTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
}

@uuid("18de66cd-4a6c-4b2e-aa86-cb126c9a2920")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsPresenter")
interface IItemsPresenterStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("8971632e-7867-4d66-9630-29f1c5f7403f")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsPresenter")
interface IItemsPresenterStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FooterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FooterTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FooterTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("df7ab79d-7ad5-4b58-9363-919af90226e6")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsStackPanel")
interface IItemsStackPanel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GroupPadding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_GroupPadding(Windows.UI.Xaml.Thickness value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT get_FirstCacheIndex(INT32* return_value);
	HRESULT get_FirstVisibleIndex(INT32* return_value);
	HRESULT get_LastVisibleIndex(INT32* return_value);
	HRESULT get_LastCacheIndex(INT32* return_value);
	HRESULT get_ScrollingDirection(Windows.UI.Xaml.Controls.PanelScrollingDirection* return_value);
	HRESULT get_GroupHeaderPlacement(Windows.UI.Xaml.Controls.Primitives.GroupHeaderPlacement* return_value);
	HRESULT set_GroupHeaderPlacement(Windows.UI.Xaml.Controls.Primitives.GroupHeaderPlacement value);
	HRESULT get_ItemsUpdatingScrollMode(Windows.UI.Xaml.Controls.ItemsUpdatingScrollMode* return_value);
	HRESULT set_ItemsUpdatingScrollMode(Windows.UI.Xaml.Controls.ItemsUpdatingScrollMode value);
	HRESULT get_CacheLength(double* return_value);
	HRESULT set_CacheLength(double value);
}

@uuid("eeeecdb0-00b4-4534-937b-56318b293e92")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsStackPanel")
interface IItemsStackPanel2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreStickyGroupHeadersEnabled(bool* return_value);
	HRESULT set_AreStickyGroupHeadersEnabled(bool value);
}

@uuid("ca25d63f-044f-4b6b-b315-0b60e0b4f87d")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsStackPanel")
interface IItemsStackPanelStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GroupPaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_GroupHeaderPlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CacheLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3972eb2c-384a-48bf-adfd-772e2572c504")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsStackPanel")
interface IItemsStackPanelStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreStickyGroupHeadersEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ddfe6b5f-ba88-4a7d-8a5b-e58caf0f4e2d")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsWrapGrid")
interface IItemsWrapGrid : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GroupPadding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_GroupPadding(Windows.UI.Xaml.Thickness value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT get_MaximumRowsOrColumns(INT32* return_value);
	HRESULT set_MaximumRowsOrColumns(INT32 value);
	HRESULT get_ItemWidth(double* return_value);
	HRESULT set_ItemWidth(double value);
	HRESULT get_ItemHeight(double* return_value);
	HRESULT set_ItemHeight(double value);
	HRESULT get_FirstCacheIndex(INT32* return_value);
	HRESULT get_FirstVisibleIndex(INT32* return_value);
	HRESULT get_LastVisibleIndex(INT32* return_value);
	HRESULT get_LastCacheIndex(INT32* return_value);
	HRESULT get_ScrollingDirection(Windows.UI.Xaml.Controls.PanelScrollingDirection* return_value);
	HRESULT get_GroupHeaderPlacement(Windows.UI.Xaml.Controls.Primitives.GroupHeaderPlacement* return_value);
	HRESULT set_GroupHeaderPlacement(Windows.UI.Xaml.Controls.Primitives.GroupHeaderPlacement value);
	HRESULT get_CacheLength(double* return_value);
	HRESULT set_CacheLength(double value);
}

@uuid("80c21c0f-63ec-4258-bd61-d4a6956c864a")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsWrapGrid")
interface IItemsWrapGrid2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreStickyGroupHeadersEnabled(bool* return_value);
	HRESULT set_AreStickyGroupHeadersEnabled(bool value);
}

@uuid("4ec5427d-24a0-449a-b763-3077ba0f2dd5")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsWrapGrid")
interface IItemsWrapGridStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GroupPaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaximumRowsOrColumnsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_GroupHeaderPlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CacheLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2e27d3f7-feaa-478d-bfd1-29338adc5a03")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsWrapGrid")
interface IItemsWrapGridStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreStickyGroupHeadersEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e9f3b9ff-8e91-4ecf-a707-c927f694f881")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBox")
interface IListBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
	HRESULT get_SelectionMode(Windows.UI.Xaml.Controls.SelectionMode* return_value);
	HRESULT set_SelectionMode(Windows.UI.Xaml.Controls.SelectionMode value);
	HRESULT abi_ScrollIntoView(IInspectable item);
	HRESULT abi_SelectAll();
}

@uuid("70572aba-8ad1-4085-9350-deee359294e3")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBox")
interface IListBox2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SingleSelectionFollowsFocus(bool* return_value);
	HRESULT set_SingleSelectionFollowsFocus(bool value);
}

@uuid("60cdfda2-2f44-444b-9c94-b8c9fda46f59")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBox")
interface IListBoxFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListBox* return_instance);
}

@uuid("4398b8d4-a3de-402c-b23d-190384b27ca8")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBoxItem")
interface IListBoxItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListBoxItem* return_instance);
}

@uuid("6d3f7f73-706a-4e53-a9aa-c9a53c9cdd70")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBox")
interface IListBoxStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectionModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0089adeb-b709-4c8d-b1ed-4a7d97ee7716")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBox")
interface IListBoxStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SingleSelectionFollowsFocusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0f0cb9d7-e5f3-45e6-9063-ff7bbb193c47")
@WinrtFactory("Windows.UI.Xaml.Controls.ListPickerFlyout")
interface IListPickerFlyout : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemsSource(IInspectable* return_value);
	HRESULT set_ItemsSource(IInspectable value);
	HRESULT get_ItemTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_ItemTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_DisplayMemberPath(HSTRING* return_value);
	HRESULT set_DisplayMemberPath(HSTRING value);
	HRESULT get_SelectionMode(Windows.UI.Xaml.Controls.ListPickerFlyoutSelectionMode* return_value);
	HRESULT set_SelectionMode(Windows.UI.Xaml.Controls.ListPickerFlyoutSelectionMode value);
	HRESULT get_SelectedIndex(INT32* return_value);
	HRESULT set_SelectedIndex(INT32 value);
	HRESULT get_SelectedItem(IInspectable* return_value);
	HRESULT set_SelectedItem(IInspectable value);
	HRESULT get_SelectedValue(IInspectable* return_value);
	HRESULT set_SelectedValue(IInspectable value);
	HRESULT get_SelectedValuePath(HSTRING* return_value);
	HRESULT set_SelectedValuePath(HSTRING value);
	HRESULT get_SelectedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
	HRESULT add_ItemsPicked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListPickerFlyout*,Windows.UI.Xaml.Controls.ItemsPickedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_ItemsPicked(EventRegistrationToken token);
	HRESULT abi_ShowAtAsync(Windows.UI.Xaml.FrameworkElement target, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(IInspectable))* return_returnValue);
}

@uuid("fee25b97-8b96-4602-81d2-82fd8e0f7ea8")
@WinrtFactory("Windows.UI.Xaml.Controls.ListPickerFlyout")
interface IListPickerFlyoutStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemsSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DisplayMemberPathProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectionModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedItemProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedValuePathProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3d0813ba-6890-4537-bfe5-796d9458edd6")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
	HRESULT get_SelectionMode(Windows.UI.Xaml.Controls.ListViewSelectionMode* return_value);
	HRESULT set_SelectionMode(Windows.UI.Xaml.Controls.ListViewSelectionMode value);
	HRESULT get_IsSwipeEnabled(bool* return_value);
	HRESULT set_IsSwipeEnabled(bool value);
	HRESULT get_CanDragItems(bool* return_value);
	HRESULT set_CanDragItems(bool value);
	HRESULT get_CanReorderItems(bool* return_value);
	HRESULT set_CanReorderItems(bool value);
	HRESULT get_IsItemClickEnabled(bool* return_value);
	HRESULT set_IsItemClickEnabled(bool value);
	HRESULT get_DataFetchSize(double* return_value);
	HRESULT set_DataFetchSize(double value);
	HRESULT get_IncrementalLoadingThreshold(double* return_value);
	HRESULT set_IncrementalLoadingThreshold(double value);
	HRESULT get_IncrementalLoadingTrigger(Windows.UI.Xaml.Controls.IncrementalLoadingTrigger* return_value);
	HRESULT set_IncrementalLoadingTrigger(Windows.UI.Xaml.Controls.IncrementalLoadingTrigger value);
	HRESULT add_ItemClick(Windows.UI.Xaml.Controls.ItemClickEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ItemClick(EventRegistrationToken token);
	HRESULT add_DragItemsStarting(Windows.UI.Xaml.Controls.DragItemsStartingEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_DragItemsStarting(EventRegistrationToken token);
	HRESULT abi_ScrollIntoView(IInspectable item);
	HRESULT abi_SelectAll();
	HRESULT abi_LoadMoreItemsAsync(Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Data.LoadMoreItemsResult)* return_returnValue);
	HRESULT abi_ScrollIntoViewWithAlignment(IInspectable item, Windows.UI.Xaml.Controls.ScrollIntoViewAlignment alignment);
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_HeaderTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_HeaderTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
}

@uuid("d1c2a4f7-78a3-4491-86e0-2ddebc007ac5")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBase2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ShowsScrollingPlaceholders(bool* return_value);
	HRESULT set_ShowsScrollingPlaceholders(bool value);
	HRESULT add_ContainerContentChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase*,Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_ContainerContentChanging(EventRegistrationToken token);
	HRESULT abi_SetDesiredContainerUpdateDuration(Windows.Foundation.TimeSpan duration);
	HRESULT get_Footer(IInspectable* return_value);
	HRESULT set_Footer(IInspectable value);
	HRESULT get_FooterTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_FooterTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_FooterTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_FooterTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
}

@uuid("b364c035-0a13-406f-a3fb-f30e7ddca94c")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBase3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ReorderMode(Windows.UI.Xaml.Controls.ListViewReorderMode* return_value);
	HRESULT set_ReorderMode(Windows.UI.Xaml.Controls.ListViewReorderMode value);
}

@uuid("18b7792b-11dc-4eb6-a7bc-741adb3eeb79")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBase4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectedRanges(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Data.ItemIndexRange)* return_value);
	HRESULT get_IsMultiSelectCheckBoxEnabled(bool* return_value);
	HRESULT set_IsMultiSelectCheckBoxEnabled(bool value);
	HRESULT add_DragItemsCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase*,Windows.UI.Xaml.Controls.DragItemsCompletedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_DragItemsCompleted(EventRegistrationToken token);
	HRESULT add_ChoosingItemContainer(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase*,Windows.UI.Xaml.Controls.ChoosingItemContainerEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_ChoosingItemContainer(EventRegistrationToken token);
	HRESULT add_ChoosingGroupHeaderContainer(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase*,Windows.UI.Xaml.Controls.ChoosingGroupHeaderContainerEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_ChoosingGroupHeaderContainer(EventRegistrationToken token);
	HRESULT abi_SelectRange(Windows.UI.Xaml.Data.ItemIndexRange itemIndexRange);
	HRESULT abi_DeselectRange(Windows.UI.Xaml.Data.ItemIndexRange itemIndexRange);
}

@uuid("1a9c6e99-1719-4b80-b335-628331a07019")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBase5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SingleSelectionFollowsFocus(bool* return_value);
	HRESULT set_SingleSelectionFollowsFocus(bool value);
	HRESULT abi_IsDragSource(bool* return_returnValue);
}

@uuid("f8a42637-965b-483b-94e5-e5c9fef0e352")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBase6 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryStartConnectedAnimationAsync(Windows.UI.Xaml.Media.Animation.ConnectedAnimation animation, IInspectable item, HSTRING elementName, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_PrepareConnectedAnimation(HSTRING key, IInspectable item, HSTRING elementName, Windows.UI.Xaml.Media.Animation.ConnectedAnimation* return_returnValue);
}

@uuid("e67e6c7f-150f-46d0-a6ac-c5002bd9ca53")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBaseFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListViewBase* return_instance);
}

@uuid("8532b8f7-3e16-455b-89a8-c1346223f6d3")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBaseStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectionModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSwipeEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CanDragItemsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CanReorderItemsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsItemClickEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DataFetchSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IncrementalLoadingThresholdProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IncrementalLoadingTriggerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SemanticZoomOwnerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsActiveViewProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsZoomedInViewProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("821c00c8-78cc-411f-9f2e-a55758227f3e")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBaseStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ShowsScrollingPlaceholdersProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FooterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FooterTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FooterTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3b539091-31c6-4d0c-90af-5dc1d6ae9c05")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBaseStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ReorderModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ad13258b-fbd0-4f18-8bf8-9b8613951c22")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBaseStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsMultiSelectCheckBoxEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("40346fcf-0476-4259-895f-a6569738620f")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBaseStatics5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SingleSelectionFollowsFocusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("bdff696d-3f22-41f9-97a6-883134a76113")
@WinrtFactory("Windows.UI.Xaml.Controls.ListView")
interface IListViewFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListView* return_instance);
}

@uuid("68d2c96a-96b0-4f08-a7a5-f1086720a0fa")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewHeaderItem")
interface IListViewHeaderItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListViewHeaderItem* return_instance);
}

@uuid("b7bb4305-3dd9-43de-a8c0-c472f085bc11")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewItem")
interface IListViewItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.ListViewItemTemplateSettings* return_value);
}

@uuid("f431073d-9cac-42a2-82df-0f4490bc4e2e")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewItem")
interface IListViewItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListViewItem* return_instance);
}

@uuid("6d0c2b08-bb9b-44f9-8063-5c3f9c21884b")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewPersistenceHelper")
interface IListViewPersistenceHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetRelativeScrollPosition(Windows.UI.Xaml.Controls.ListViewBase listViewBase, Windows.UI.Xaml.Controls.ListViewItemToKeyHandler* itemToKeyHandler, HSTRING* return_returnValue);
	HRESULT abi_SetRelativeScrollPositionAsync(Windows.UI.Xaml.Controls.ListViewBase listViewBase, HSTRING relativeScrollPosition, Windows.UI.Xaml.Controls.ListViewKeyToItemHandler* keyToItemHandler, Windows.Foundation.IAsyncAction* return_returnValue);
}

@uuid("a38ed2cf-13de-4299-ade2-ae18f74ed353")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaElement")
interface IMediaElement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PosterSource(Windows.UI.Xaml.Media.ImageSource* return_value);
	HRESULT set_PosterSource(Windows.UI.Xaml.Media.ImageSource value);
	HRESULT get_Source(Windows.Foundation.Uri* return_value);
	HRESULT set_Source(Windows.Foundation.Uri value);
	HRESULT get_IsMuted(bool* return_value);
	HRESULT set_IsMuted(bool value);
	HRESULT get_IsAudioOnly(bool* return_value);
	HRESULT get_AutoPlay(bool* return_value);
	HRESULT set_AutoPlay(bool value);
	HRESULT get_Volume(double* return_value);
	HRESULT set_Volume(double value);
	HRESULT get_Balance(double* return_value);
	HRESULT set_Balance(double value);
	HRESULT get_NaturalVideoHeight(INT32* return_value);
	HRESULT get_NaturalVideoWidth(INT32* return_value);
	HRESULT get_NaturalDuration(Windows.UI.Xaml.Duration* return_value);
	HRESULT get_Position(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Position(Windows.Foundation.TimeSpan value);
	HRESULT get_DownloadProgress(double* return_value);
	HRESULT get_BufferingProgress(double* return_value);
	HRESULT get_DownloadProgressOffset(double* return_value);
	HRESULT get_CurrentState(Windows.UI.Xaml.Media.MediaElementState* return_value);
	HRESULT get_Markers(Windows.UI.Xaml.Media.TimelineMarkerCollection* return_value);
	HRESULT get_CanSeek(bool* return_value);
	HRESULT get_CanPause(bool* return_value);
	HRESULT get_AudioStreamCount(INT32* return_value);
	HRESULT get_AudioStreamIndex(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_AudioStreamIndex(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_PlaybackRate(double* return_value);
	HRESULT set_PlaybackRate(double value);
	HRESULT get_IsLooping(bool* return_value);
	HRESULT set_IsLooping(bool value);
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource.")
	HRESULT get_PlayToSource(Windows.Media.PlayTo.PlayToSource* return_value);
	HRESULT get_DefaultPlaybackRate(double* return_value);
	HRESULT set_DefaultPlaybackRate(double value);
	HRESULT get_AspectRatioWidth(INT32* return_value);
	HRESULT get_AspectRatioHeight(INT32* return_value);
	HRESULT get_RealTimePlayback(bool* return_value);
	HRESULT set_RealTimePlayback(bool value);
	HRESULT get_AudioCategory(Windows.UI.Xaml.Media.AudioCategory* return_value);
	HRESULT set_AudioCategory(Windows.UI.Xaml.Media.AudioCategory value);
	HRESULT get_AudioDeviceType(Windows.UI.Xaml.Media.AudioDeviceType* return_value);
	HRESULT set_AudioDeviceType(Windows.UI.Xaml.Media.AudioDeviceType value);
	HRESULT get_ProtectionManager(Windows.Media.Protection.MediaProtectionManager* return_value);
	HRESULT set_ProtectionManager(Windows.Media.Protection.MediaProtectionManager value);
	HRESULT get_Stereo3DVideoPackingMode(Windows.UI.Xaml.Media.Stereo3DVideoPackingMode* return_value);
	HRESULT set_Stereo3DVideoPackingMode(Windows.UI.Xaml.Media.Stereo3DVideoPackingMode value);
	HRESULT get_Stereo3DVideoRenderMode(Windows.UI.Xaml.Media.Stereo3DVideoRenderMode* return_value);
	HRESULT set_Stereo3DVideoRenderMode(Windows.UI.Xaml.Media.Stereo3DVideoRenderMode value);
	HRESULT get_IsStereo3DVideo(bool* return_value);
	HRESULT add_MediaOpened(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_MediaOpened(EventRegistrationToken token);
	HRESULT add_MediaEnded(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_MediaEnded(EventRegistrationToken token);
	HRESULT add_MediaFailed(Windows.UI.Xaml.ExceptionRoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_MediaFailed(EventRegistrationToken token);
	HRESULT add_DownloadProgressChanged(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_DownloadProgressChanged(EventRegistrationToken token);
	HRESULT add_BufferingProgressChanged(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_BufferingProgressChanged(EventRegistrationToken token);
	HRESULT add_CurrentStateChanged(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_CurrentStateChanged(EventRegistrationToken token);
	HRESULT add_MarkerReached(Windows.UI.Xaml.Media.TimelineMarkerRoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_MarkerReached(EventRegistrationToken token);
	HRESULT add_RateChanged(Windows.UI.Xaml.Media.RateChangedRoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_RateChanged(EventRegistrationToken token);
	HRESULT add_VolumeChanged(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_VolumeChanged(EventRegistrationToken token);
	HRESULT add_SeekCompleted(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_SeekCompleted(EventRegistrationToken token);
	HRESULT abi_Stop();
	HRESULT abi_Play();
	HRESULT abi_Pause();
	HRESULT abi_CanPlayType(HSTRING type, Windows.UI.Xaml.Media.MediaCanPlayResponse* return_returnValue);
	HRESULT abi_SetSource(Windows.Storage.Streams.IRandomAccessStream stream, HSTRING mimeType);
	HRESULT abi_GetAudioStreamLanguage(Windows.Foundation.IReference!(INT32) index, HSTRING* return_returnValue);
	HRESULT abi_AddAudioEffect(HSTRING effectID, bool effectOptional, Windows.Foundation.Collections.IPropertySet effectConfiguration);
	HRESULT abi_AddVideoEffect(HSTRING effectID, bool effectOptional, Windows.Foundation.Collections.IPropertySet effectConfiguration);
	HRESULT abi_RemoveAllEffects();
	HRESULT get_ActualStereo3DVideoPackingMode(Windows.UI.Xaml.Media.Stereo3DVideoPackingMode* return_value);
}

@uuid("fd53da65-b186-4654-bfdb-180ed26cad07")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaElement")
interface IMediaElement2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreTransportControlsEnabled(bool* return_value);
	HRESULT set_AreTransportControlsEnabled(bool value);
	HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value);
	HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value);
	HRESULT get_IsFullWindow(bool* return_value);
	HRESULT set_IsFullWindow(bool value);
	HRESULT abi_SetMediaStreamSource(Windows.Media.Core.IMediaSource source);
	deprecated("PlayToPreferredSourceUri may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource().PreferredSourceUri.")
	HRESULT get_PlayToPreferredSourceUri(Windows.Foundation.Uri* return_value);
	deprecated("PlayToPreferredSourceUri may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource().PreferredSourceUri.")
	HRESULT set_PlayToPreferredSourceUri(Windows.Foundation.Uri value);
}

@uuid("479f6f13-0fdb-4ed8-928a-4d39169c3cd2")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaElement")
interface IMediaElement3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TransportControls(Windows.UI.Xaml.Controls.MediaTransportControls* return_value);
	HRESULT set_TransportControls(Windows.UI.Xaml.Controls.MediaTransportControls value);
	HRESULT add_PartialMediaFailureDetected(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.MediaElement*,Windows.UI.Xaml.Media.PartialMediaFailureDetectedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_PartialMediaFailureDetected(EventRegistrationToken token);
	HRESULT abi_SetPlaybackSource(Windows.Media.Playback.IMediaPlaybackSource source);
	HRESULT abi_GetAsCastingSource(Windows.Media.Casting.CastingSource* return_returnValue);
}

@uuid("dccd2cb9-7568-4682-a72a-8ddf2a2665ca")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaElement")
interface IMediaElementStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PosterSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsMutedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsAudioOnlyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AutoPlayProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VolumeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BalanceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_NaturalVideoHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_NaturalVideoWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_NaturalDurationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PositionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DownloadProgressProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BufferingProgressProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DownloadProgressOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CurrentStateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CanSeekProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CanPauseProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AudioStreamCountProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AudioStreamIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaybackRateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsLoopingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource.")
	HRESULT get_PlayToSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DefaultPlaybackRateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AspectRatioWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AspectRatioHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RealTimePlaybackProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AudioCategoryProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AudioDeviceTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ProtectionManagerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Stereo3DVideoPackingModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_Stereo3DVideoRenderModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsStereo3DVideoProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ActualStereo3DVideoPackingModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9ee7f826-f154-4dc6-8014-a6eba987f847")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaElement")
interface IMediaElementStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreTransportControlsEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFullWindowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("PlayToPreferredSourceUri may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource().PreferredSourceUri.")
	HRESULT get_PlayToPreferredSourceUriProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3b4ca526-2e25-4598-bc71-d491f8e8de39")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaPlayerElement")
interface IMediaPlayerElement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Source(Windows.Media.Playback.IMediaPlaybackSource* return_value);
	HRESULT set_Source(Windows.Media.Playback.IMediaPlaybackSource value);
	HRESULT get_TransportControls(Windows.UI.Xaml.Controls.MediaTransportControls* return_value);
	HRESULT set_TransportControls(Windows.UI.Xaml.Controls.MediaTransportControls value);
	HRESULT get_AreTransportControlsEnabled(bool* return_value);
	HRESULT set_AreTransportControlsEnabled(bool value);
	HRESULT get_PosterSource(Windows.UI.Xaml.Media.ImageSource* return_value);
	HRESULT set_PosterSource(Windows.UI.Xaml.Media.ImageSource value);
	HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value);
	HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value);
	HRESULT get_AutoPlay(bool* return_value);
	HRESULT set_AutoPlay(bool value);
	HRESULT get_IsFullWindow(bool* return_value);
	HRESULT set_IsFullWindow(bool value);
	HRESULT get_MediaPlayer(Windows.Media.Playback.MediaPlayer* return_value);
	HRESULT abi_SetMediaPlayer(Windows.Media.Playback.MediaPlayer mediaPlayer);
}

@uuid("77e525c3-eb17-4b8d-889d-1ea8abdbd4ef")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaPlayerElement")
interface IMediaPlayerElementFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MediaPlayerElement* return_instance);
}

@uuid("1e7c4020-ac57-42dd-ad1c-3ebc2d7f08ba")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaPlayerElement")
interface IMediaPlayerElementStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AreTransportControlsEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PosterSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AutoPlayProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFullWindowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MediaPlayerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("77a92326-0c5b-41fc-bf49-15f6c3524b6b")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaPlayerPresenter")
interface IMediaPlayerPresenter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MediaPlayer(Windows.Media.Playback.MediaPlayer* return_value);
	HRESULT set_MediaPlayer(Windows.Media.Playback.MediaPlayer value);
	HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value);
	HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value);
	HRESULT get_IsFullWindow(bool* return_value);
	HRESULT set_IsFullWindow(bool value);
}

@uuid("e6766fb7-d96f-4b95-b33c-59e81cb1e9ba")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaPlayerPresenter")
interface IMediaPlayerPresenterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MediaPlayerPresenter* return_instance);
}

@uuid("84d774fe-ead4-4957-b42b-223158ca0de7")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaPlayerPresenter")
interface IMediaPlayerPresenterStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MediaPlayerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFullWindowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d6f69e7d-0825-49a9-9fce-5586d8694f0c")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControls")
interface IMediaTransportControls : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsFullWindowButtonVisible(bool* return_value);
	HRESULT set_IsFullWindowButtonVisible(bool value);
	HRESULT get_IsFullWindowEnabled(bool* return_value);
	HRESULT set_IsFullWindowEnabled(bool value);
	HRESULT get_IsZoomButtonVisible(bool* return_value);
	HRESULT set_IsZoomButtonVisible(bool value);
	HRESULT get_IsZoomEnabled(bool* return_value);
	HRESULT set_IsZoomEnabled(bool value);
	HRESULT get_IsFastForwardButtonVisible(bool* return_value);
	HRESULT set_IsFastForwardButtonVisible(bool value);
	HRESULT get_IsFastForwardEnabled(bool* return_value);
	HRESULT set_IsFastForwardEnabled(bool value);
	HRESULT get_IsFastRewindButtonVisible(bool* return_value);
	HRESULT set_IsFastRewindButtonVisible(bool value);
	HRESULT get_IsFastRewindEnabled(bool* return_value);
	HRESULT set_IsFastRewindEnabled(bool value);
	HRESULT get_IsStopButtonVisible(bool* return_value);
	HRESULT set_IsStopButtonVisible(bool value);
	HRESULT get_IsStopEnabled(bool* return_value);
	HRESULT set_IsStopEnabled(bool value);
	HRESULT get_IsVolumeButtonVisible(bool* return_value);
	HRESULT set_IsVolumeButtonVisible(bool value);
	HRESULT get_IsVolumeEnabled(bool* return_value);
	HRESULT set_IsVolumeEnabled(bool value);
	HRESULT get_IsPlaybackRateButtonVisible(bool* return_value);
	HRESULT set_IsPlaybackRateButtonVisible(bool value);
	HRESULT get_IsPlaybackRateEnabled(bool* return_value);
	HRESULT set_IsPlaybackRateEnabled(bool value);
	HRESULT get_IsSeekBarVisible(bool* return_value);
	HRESULT set_IsSeekBarVisible(bool value);
	HRESULT get_IsSeekEnabled(bool* return_value);
	HRESULT set_IsSeekEnabled(bool value);
	HRESULT get_IsCompact(bool* return_value);
	HRESULT set_IsCompact(bool value);
}

@uuid("2b89efec-1bea-451e-8bcd-cfe2d9423262")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControls")
interface IMediaTransportControls2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsSkipForwardButtonVisible(bool* return_value);
	HRESULT set_IsSkipForwardButtonVisible(bool value);
	HRESULT get_IsSkipForwardEnabled(bool* return_value);
	HRESULT set_IsSkipForwardEnabled(bool value);
	HRESULT get_IsSkipBackwardButtonVisible(bool* return_value);
	HRESULT set_IsSkipBackwardButtonVisible(bool value);
	HRESULT get_IsSkipBackwardEnabled(bool* return_value);
	HRESULT set_IsSkipBackwardEnabled(bool value);
	HRESULT get_IsNextTrackButtonVisible(bool* return_value);
	HRESULT set_IsNextTrackButtonVisible(bool value);
	HRESULT get_IsPreviousTrackButtonVisible(bool* return_value);
	HRESULT set_IsPreviousTrackButtonVisible(bool value);
	HRESULT get_FastPlayFallbackBehaviour(Windows.UI.Xaml.Media.FastPlayFallbackBehaviour* return_value);
	HRESULT set_FastPlayFallbackBehaviour(Windows.UI.Xaml.Media.FastPlayFallbackBehaviour value);
	HRESULT add_ThumbnailRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.MediaTransportControls*,Windows.UI.Xaml.Media.MediaTransportControlsThumbnailRequestedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_ThumbnailRequested(EventRegistrationToken token);
}

@uuid("1da2015a-a8e4-4c1b-88c9-0b183ecc62e3")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControls")
interface IMediaTransportControlsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MediaTransportControls* return_instance);
}

@uuid("5a772047-a9a1-4625-9270-7f49875d4394")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControlsHelper")
interface IMediaTransportControlsHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DropoutOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetDropoutOrder(Windows.UI.Xaml.UIElement element, Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT abi_SetDropoutOrder(Windows.UI.Xaml.UIElement element, Windows.Foundation.IReference!(INT32) value);
}

@uuid("590ea907-d2ef-4c1a-9429-b4b15d64fd56")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControls")
interface IMediaTransportControlsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsFullWindowButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFullWindowEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsZoomButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsZoomEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFastForwardButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFastForwardEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFastRewindButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFastRewindEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsStopButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsStopEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsVolumeButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsVolumeEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsPlaybackRateButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsPlaybackRateEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSeekBarVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSeekEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsCompactProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("1728cfdc-561f-4386-a7f8-090d95f68d96")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControls")
interface IMediaTransportControlsStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsSkipForwardButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSkipForwardEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSkipBackwardButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSkipBackwardEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsNextTrackButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsPreviousTrackButtonVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FastPlayFallbackBehaviourProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ad3210f1-985b-4171-bbba-67bcc729649b")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyout")
interface IMenuFlyout : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.MenuFlyoutItemBase)* return_value);
	HRESULT get_MenuFlyoutPresenterStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_MenuFlyoutPresenterStyle(Windows.UI.Xaml.Style value);
}

@uuid("507c7bad-d9d1-4c05-9d4b-cda8de9ab242")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyout")
interface IMenuFlyout2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ShowAt(Windows.UI.Xaml.UIElement targetElement, Windows.Foundation.Point point);
}

@uuid("644533ab-bbb9-499b-9ff3-30d40e2c56d8")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyout")
interface IMenuFlyoutFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MenuFlyout* return_instance);
}

@uuid("160775cf-b598-44af-a488-c3ce2af6d3f0")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItem")
interface IMenuFlyoutItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_Command(Windows.UI.Xaml.Input.ICommand* return_value);
	HRESULT set_Command(Windows.UI.Xaml.Input.ICommand value);
	HRESULT get_CommandParameter(IInspectable* return_value);
	HRESULT set_CommandParameter(IInspectable value);
	HRESULT add_Click(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_Click(EventRegistrationToken token);
}

@uuid("0ae266eb-028c-4423-a8e3-989fd9dd7126")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItem")
interface IMenuFlyoutItem2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Icon(Windows.UI.Xaml.Controls.IconElement* return_value);
	HRESULT set_Icon(Windows.UI.Xaml.Controls.IconElement value);
}

@uuid("c5aa39e2-44f3-455e-9c5b-62bb6afce3ad")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItem")
interface IMenuFlyoutItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MenuFlyoutItem* return_instance);
}

@uuid("4950b424-a43a-41f7-aa3a-9ce9619747d5")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItem")
interface IMenuFlyoutItemStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CommandProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CommandParameterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("aca4f564-1790-4601-916e-5ae1f01f4bd6")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItem")
interface IMenuFlyoutItemStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IconProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("895894df-5a9f-4a1f-85ec-6f3c1b6dcb89")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutPresenter")
interface IMenuFlyoutPresenter2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.MenuFlyoutPresenterTemplateSettings* return_value);
}

@uuid("b88b5091-101c-41f8-aac1-1b105c14fb99")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutPresenter")
interface IMenuFlyoutPresenterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MenuFlyoutPresenter* return_instance);
}

@uuid("c159dcc8-b437-44e0-b24b-5720aea1dbac")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSeparator")
interface IMenuFlyoutSeparatorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MenuFlyoutSeparator* return_instance);
}

@uuid("3dbefba1-9522-4045-9e58-c99b13aab9b9")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyout")
interface IMenuFlyoutStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MenuFlyoutPresenterStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e5386550-fe2c-43e2-a73f-62168f619973")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSubItem")
interface IMenuFlyoutSubItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.MenuFlyoutItemBase)* return_value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
}

@uuid("ac935626-190a-4de2-8d71-7cc4747da580")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSubItem")
interface IMenuFlyoutSubItem2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Icon(Windows.UI.Xaml.Controls.IconElement* return_value);
	HRESULT set_Icon(Windows.UI.Xaml.Controls.IconElement value);
}

@uuid("ddb27a36-1874-4aef-837d-6fec9da4e681")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSubItem")
interface IMenuFlyoutSubItemStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ac14d09b-3e93-4785-94ef-fdb23baba965")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSubItem")
interface IMenuFlyoutSubItemStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IconProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("bf2195a9-f4ea-4336-977c-f8fcf78b0d9e")
interface INavigate : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Navigate(Windows.UI.Xaml.Interop.TypeName sourcePageType, bool* return_returnValue);
}

@uuid("af0e05f7-c4b7-44c5-b09d-5cb7052b3a97")
@WinrtFactory("Windows.UI.Xaml.Controls.NotifyEventArgs")
interface INotifyEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(HSTRING* return_value);
}

@uuid("0d140f56-1dce-4fcd-85bc-5a5572273b9c")
@WinrtFactory("Windows.UI.Xaml.Controls.NotifyEventArgs")
interface INotifyEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CallingUri(Windows.Foundation.Uri* return_value);
}

@uuid("c4b27075-e641-453e-824d-012fc7cf95cf")
@WinrtFactory("Windows.UI.Xaml.Controls.Page")
interface IPage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Frame(Windows.UI.Xaml.Controls.Frame* return_value);
	HRESULT get_NavigationCacheMode(Windows.UI.Xaml.Navigation.NavigationCacheMode* return_value);
	HRESULT set_NavigationCacheMode(Windows.UI.Xaml.Navigation.NavigationCacheMode value);
	HRESULT get_TopAppBar(Windows.UI.Xaml.Controls.AppBar* return_value);
	HRESULT set_TopAppBar(Windows.UI.Xaml.Controls.AppBar value);
	HRESULT get_BottomAppBar(Windows.UI.Xaml.Controls.AppBar* return_value);
	HRESULT set_BottomAppBar(Windows.UI.Xaml.Controls.AppBar value);
}

@uuid("dfa149ac-1849-445e-937c-40a9590cc076")
@WinrtFactory("Windows.UI.Xaml.Controls.Page")
interface IPageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Page* return_instance);
}

@uuid("230b9cb8-3419-4306-aabe-4a8e680d3627")
@WinrtFactory("Windows.UI.Xaml.Controls.Page")
interface IPageOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnNavigatedFrom(Windows.UI.Xaml.Navigation.NavigationEventArgs e);
	HRESULT abi_OnNavigatedTo(Windows.UI.Xaml.Navigation.NavigationEventArgs e);
	HRESULT abi_OnNavigatingFrom(Windows.UI.Xaml.Navigation.NavigatingCancelEventArgs e);
}

@uuid("376dde71-f725-46dd-8d80-eeeaf7da74e5")
@WinrtFactory("Windows.UI.Xaml.Controls.Page")
interface IPageStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FrameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TopAppBarProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BottomAppBarProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a50a4bbd-8361-469c-90da-e9a40c7474df")
@WinrtFactory("Windows.UI.Xaml.Controls.Panel")
interface IPanel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Children(Windows.UI.Xaml.Controls.UIElementCollection* return_value);
	HRESULT get_Background(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Background(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_IsItemsHost(bool* return_value);
	HRESULT get_ChildrenTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_ChildrenTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
}

@uuid("eee68111-c7cc-433f-95cd-d630c34302dd")
@WinrtFactory("Windows.UI.Xaml.Controls.Panel")
interface IPanelFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Panel* return_instance);
}

@uuid("f23d6b5d-8330-47a6-a046-25f509b25232")
@WinrtFactory("Windows.UI.Xaml.Controls.Panel")
interface IPanelStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsItemsHostProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ChildrenTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("02b9aa11-0b47-4e7d-ad91-3a4168ed230d")
@WinrtFactory("Windows.UI.Xaml.Controls.PasswordBox")
interface IPasswordBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Password(HSTRING* return_value);
	HRESULT set_Password(HSTRING value);
	HRESULT get_PasswordChar(HSTRING* return_value);
	HRESULT set_PasswordChar(HSTRING value);
	deprecated("IsPasswordRevealButtonEnabledProperty may be altered or unavailable for releases after Windows 10.0. Instead, use PasswordRevealModeProperty.")
	HRESULT get_IsPasswordRevealButtonEnabled(bool* return_value);
	deprecated("IsPasswordRevealButtonEnabledProperty may be altered or unavailable for releases after Windows 10.0. Instead, use PasswordRevealModeProperty.")
	HRESULT set_IsPasswordRevealButtonEnabled(bool value);
	HRESULT get_MaxLength(INT32* return_value);
	HRESULT set_MaxLength(INT32 value);
	HRESULT add_PasswordChanged(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_PasswordChanged(EventRegistrationToken token);
	HRESULT add_ContextMenuOpening(Windows.UI.Xaml.Controls.ContextMenuOpeningEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ContextMenuOpening(EventRegistrationToken token);
	HRESULT abi_SelectAll();
}

@uuid("5ed738df-212f-4aeb-b5b8-2c219aec3c0c")
@WinrtFactory("Windows.UI.Xaml.Controls.PasswordBox")
interface IPasswordBox2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_PlaceholderText(HSTRING* return_value);
	HRESULT set_PlaceholderText(HSTRING value);
	HRESULT get_SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush* return_value);
	HRESULT set_SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush value);
	HRESULT get_PreventKeyboardDisplayOnProgrammaticFocus(bool* return_value);
	HRESULT set_PreventKeyboardDisplayOnProgrammaticFocus(bool value);
	HRESULT add_Paste(Windows.UI.Xaml.Controls.TextControlPasteEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_Paste(EventRegistrationToken token);
}

@uuid("6024d9d1-56b7-41f0-9558-3934c14244d6")
@WinrtFactory("Windows.UI.Xaml.Controls.PasswordBox")
interface IPasswordBox3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PasswordRevealMode(Windows.UI.Xaml.Controls.PasswordRevealMode* return_value);
	HRESULT set_PasswordRevealMode(Windows.UI.Xaml.Controls.PasswordRevealMode value);
	HRESULT get_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder* return_value);
	HRESULT set_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value);
	HRESULT get_InputScope(Windows.UI.Xaml.Input.InputScope* return_value);
	HRESULT set_InputScope(Windows.UI.Xaml.Input.InputScope value);
}

@uuid("5ee67563-2d74-4ace-bd79-fcab61a7d77b")
@WinrtFactory("Windows.UI.Xaml.Controls.PasswordBox")
interface IPasswordBoxStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PasswordProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PasswordCharProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("IsPasswordRevealButtonEnabledProperty may be altered or unavailable for releases after Windows 10.0. Instead, use PasswordRevealModeProperty.")
	HRESULT get_IsPasswordRevealButtonEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fc57935f-98fa-4066-b785-fa725ecde232")
@WinrtFactory("Windows.UI.Xaml.Controls.PasswordBox")
interface IPasswordBoxStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaceholderTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectionHighlightColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PreventKeyboardDisplayOnProgrammaticFocusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a2cdd319-ad6a-4352-b590-f696ffcb8e3f")
@WinrtFactory("Windows.UI.Xaml.Controls.PasswordBox")
interface IPasswordBoxStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PasswordRevealModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextReadingOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_InputScopeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("214c62db-c366-4a0e-b9ad-dcf168d7ec0c")
@WinrtFactory("Windows.UI.Xaml.Controls.PathIcon")
interface IPathIcon : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Data(Windows.UI.Xaml.Media.Geometry* return_value);
	HRESULT set_Data(Windows.UI.Xaml.Media.Geometry value);
}

@uuid("af9d9652-9c5d-4a37-9e1a-044abeef792b")
@WinrtFactory("Windows.UI.Xaml.Controls.PathIcon")
interface IPathIconFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.PathIcon* return_instance);
}

@uuid("77b75db8-fb15-491a-b6e3-7dbba911bafe")
@WinrtFactory("Windows.UI.Xaml.Controls.PathIcon")
interface IPathIconStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DataProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a336ffdb-08d9-43e6-944e-f2e5c7cee630")
@WinrtFactory("Windows.UI.Xaml.Controls.PickerFlyout")
interface IPickerFlyout : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Content(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Content(Windows.UI.Xaml.UIElement value);
	HRESULT get_ConfirmationButtonsVisible(bool* return_value);
	HRESULT set_ConfirmationButtonsVisible(bool value);
	HRESULT add_Confirmed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.PickerFlyout*,Windows.UI.Xaml.Controls.PickerConfirmedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_Confirmed(EventRegistrationToken token);
	HRESULT abi_ShowAtAsync(Windows.UI.Xaml.FrameworkElement target, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
}

@uuid("af18a436-f38a-4abd-b933-6286c115b07f")
@WinrtFactory("Windows.UI.Xaml.Controls.PickerFlyout")
interface IPickerFlyoutStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ConfirmationButtonsVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("103e9b13-3400-4a16-90b9-6912bf06974e")
@WinrtFactory("Windows.UI.Xaml.Controls.Pivot")
interface IPivot : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Title(IInspectable* return_value);
	HRESULT set_Title(IInspectable value);
	HRESULT get_TitleTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_TitleTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_SelectedIndex(INT32* return_value);
	HRESULT set_SelectedIndex(INT32 value);
	HRESULT get_SelectedItem(IInspectable* return_value);
	HRESULT set_SelectedItem(IInspectable value);
	HRESULT get_IsLocked(bool* return_value);
	HRESULT set_IsLocked(bool value);
	HRESULT add_SelectionChanged(Windows.UI.Xaml.Controls.SelectionChangedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT add_PivotItemLoading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot*,Windows.UI.Xaml.Controls.PivotItemEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_PivotItemLoading(EventRegistrationToken token);
	HRESULT add_PivotItemLoaded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot*,Windows.UI.Xaml.Controls.PivotItemEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_PivotItemLoaded(EventRegistrationToken token);
	HRESULT add_PivotItemUnloading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot*,Windows.UI.Xaml.Controls.PivotItemEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_PivotItemUnloading(EventRegistrationToken token);
	HRESULT add_PivotItemUnloaded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot*,Windows.UI.Xaml.Controls.PivotItemEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_PivotItemUnloaded(EventRegistrationToken token);
}

@uuid("8b8a8660-1a55-411c-a82d-18991c3f0d6f")
@WinrtFactory("Windows.UI.Xaml.Controls.Pivot")
interface IPivot2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LeftHeader(IInspectable* return_value);
	HRESULT set_LeftHeader(IInspectable value);
	HRESULT get_LeftHeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_LeftHeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_RightHeader(IInspectable* return_value);
	HRESULT set_RightHeader(IInspectable value);
	HRESULT get_RightHeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_RightHeaderTemplate(Windows.UI.Xaml.DataTemplate value);
}

@uuid("95bcbf96-f0da-4089-8c65-e8b81354c766")
@WinrtFactory("Windows.UI.Xaml.Controls.Pivot")
interface IPivot3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderFocusVisualPlacement(Windows.UI.Xaml.Controls.PivotHeaderFocusVisualPlacement* return_value);
	HRESULT set_HeaderFocusVisualPlacement(Windows.UI.Xaml.Controls.PivotHeaderFocusVisualPlacement value);
	HRESULT get_IsHeaderItemsCarouselEnabled(bool* return_value);
	HRESULT set_IsHeaderItemsCarouselEnabled(bool value);
}

@uuid("1b0a818e-2529-4762-ba44-9abc68c3ceca")
@WinrtFactory("Windows.UI.Xaml.Controls.Pivot")
interface IPivotFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Pivot* return_instance);
}

@uuid("a4764371-a502-47a3-915e-4aa096daf87f")
@WinrtFactory("Windows.UI.Xaml.Controls.PivotItem")
interface IPivotItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
}

@uuid("1a6f7254-1ed5-4bc5-a060-655530bca6ba")
@WinrtFactory("Windows.UI.Xaml.Controls.PivotItemEventArgs")
interface IPivotItemEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Item(Windows.UI.Xaml.Controls.PivotItem* return_value);
	HRESULT set_Item(Windows.UI.Xaml.Controls.PivotItem value);
}

@uuid("0dced981-636e-4a34-8a3f-8ee018639285")
@WinrtFactory("Windows.UI.Xaml.Controls.PivotItem")
interface IPivotItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.PivotItem* return_instance);
}

@uuid("e147ad0c-488b-4a6e-becd-a5dbd9941754")
@WinrtFactory("Windows.UI.Xaml.Controls.PivotItem")
interface IPivotItemStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ee22c7f4-c15d-4ff3-8a94-f50dfdfbe899")
@WinrtFactory("Windows.UI.Xaml.Controls.Pivot")
interface IPivotStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TitleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TitleTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedItemProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsLockedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SlideInAnimationGroupProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetSlideInAnimationGroup(Windows.UI.Xaml.FrameworkElement element, Windows.UI.Xaml.Controls.PivotSlideInAnimationGroup* return_value);
	HRESULT abi_SetSlideInAnimationGroup(Windows.UI.Xaml.FrameworkElement element, Windows.UI.Xaml.Controls.PivotSlideInAnimationGroup value);
}

@uuid("d7518add-be75-4023-8deb-c6513c3192a3")
@WinrtFactory("Windows.UI.Xaml.Controls.Pivot")
interface IPivotStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LeftHeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LeftHeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RightHeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RightHeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("78b6274e-6616-4600-a039-922a5d09330b")
@WinrtFactory("Windows.UI.Xaml.Controls.Pivot")
interface IPivotStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderFocusVisualPlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsHeaderItemsCarouselEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ae752c89-0067-4963-bf4c-29db0c4a507e")
@WinrtFactory("Windows.UI.Xaml.Controls.ProgressBar")
interface IProgressBar : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsIndeterminate(bool* return_value);
	HRESULT set_IsIndeterminate(bool value);
	HRESULT get_ShowError(bool* return_value);
	HRESULT set_ShowError(bool value);
	HRESULT get_ShowPaused(bool* return_value);
	HRESULT set_ShowPaused(bool value);
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.ProgressBarTemplateSettings* return_value);
}

@uuid("da9a8c11-1591-400b-a993-0f1c5cc12f3b")
@WinrtFactory("Windows.UI.Xaml.Controls.ProgressBar")
interface IProgressBarFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ProgressBar* return_instance);
}

@uuid("7a129fda-5837-4e26-b3b4-e1c092cebbec")
@WinrtFactory("Windows.UI.Xaml.Controls.ProgressBar")
interface IProgressBarStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsIndeterminateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ShowErrorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ShowPausedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6da5e49e-6e9d-425c-bd7c-02173e39763f")
@WinrtFactory("Windows.UI.Xaml.Controls.ProgressRing")
interface IProgressRing : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsActive(bool* return_value);
	HRESULT set_IsActive(bool value);
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.ProgressRingTemplateSettings* return_value);
}

@uuid("e8b62507-4e2c-47d5-a54a-c6c48a5e6989")
@WinrtFactory("Windows.UI.Xaml.Controls.ProgressRing")
interface IProgressRingStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsActiveProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("325c44e0-9a03-4bf3-abd6-6fbb46c9a486")
@WinrtFactory("Windows.UI.Xaml.Controls.RadioButton")
interface IRadioButton : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GroupName(HSTRING* return_value);
	HRESULT set_GroupName(HSTRING value);
}

@uuid("f1d04933-34e1-4a5c-b2ae-ca3b1c0b20de")
@WinrtFactory("Windows.UI.Xaml.Controls.RadioButton")
interface IRadioButtonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.RadioButton* return_instance);
}

@uuid("6b149293-f50f-4bd8-b0ac-5c162f33a208")
@WinrtFactory("Windows.UI.Xaml.Controls.RadioButton")
interface IRadioButtonStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GroupNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2eabfaeb-b35a-4035-acea-3c4a3730683f")
@WinrtFactory("Windows.UI.Xaml.Controls.RelativePanel")
interface IRelativePanel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_BorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_BorderThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_BorderThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_CornerRadius(Windows.UI.Xaml.CornerRadius* return_value);
	HRESULT set_CornerRadius(Windows.UI.Xaml.CornerRadius value);
	HRESULT get_Padding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Padding(Windows.UI.Xaml.Thickness value);
}

@uuid("8460193c-361b-44ba-a17e-b84c9dcdc772")
@WinrtFactory("Windows.UI.Xaml.Controls.RelativePanel")
interface IRelativePanelFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.RelativePanel* return_instance);
}

@uuid("15903c27-f18c-4c35-8e19-6a7459d907b6")
@WinrtFactory("Windows.UI.Xaml.Controls.RelativePanel")
interface IRelativePanelStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LeftOfProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetLeftOf(Windows.UI.Xaml.UIElement element, IInspectable* return_value);
	HRESULT abi_SetLeftOf(Windows.UI.Xaml.UIElement element, IInspectable value);
	HRESULT get_AboveProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAbove(Windows.UI.Xaml.UIElement element, IInspectable* return_value);
	HRESULT abi_SetAbove(Windows.UI.Xaml.UIElement element, IInspectable value);
	HRESULT get_RightOfProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetRightOf(Windows.UI.Xaml.UIElement element, IInspectable* return_value);
	HRESULT abi_SetRightOf(Windows.UI.Xaml.UIElement element, IInspectable value);
	HRESULT get_BelowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetBelow(Windows.UI.Xaml.UIElement element, IInspectable* return_value);
	HRESULT abi_SetBelow(Windows.UI.Xaml.UIElement element, IInspectable value);
	HRESULT get_AlignHorizontalCenterWithProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignHorizontalCenterWith(Windows.UI.Xaml.UIElement element, IInspectable* return_value);
	HRESULT abi_SetAlignHorizontalCenterWith(Windows.UI.Xaml.UIElement element, IInspectable value);
	HRESULT get_AlignVerticalCenterWithProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignVerticalCenterWith(Windows.UI.Xaml.UIElement element, IInspectable* return_value);
	HRESULT abi_SetAlignVerticalCenterWith(Windows.UI.Xaml.UIElement element, IInspectable value);
	HRESULT get_AlignLeftWithProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignLeftWith(Windows.UI.Xaml.UIElement element, IInspectable* return_value);
	HRESULT abi_SetAlignLeftWith(Windows.UI.Xaml.UIElement element, IInspectable value);
	HRESULT get_AlignTopWithProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignTopWith(Windows.UI.Xaml.UIElement element, IInspectable* return_value);
	HRESULT abi_SetAlignTopWith(Windows.UI.Xaml.UIElement element, IInspectable value);
	HRESULT get_AlignRightWithProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignRightWith(Windows.UI.Xaml.UIElement element, IInspectable* return_value);
	HRESULT abi_SetAlignRightWith(Windows.UI.Xaml.UIElement element, IInspectable value);
	HRESULT get_AlignBottomWithProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignBottomWith(Windows.UI.Xaml.UIElement element, IInspectable* return_value);
	HRESULT abi_SetAlignBottomWith(Windows.UI.Xaml.UIElement element, IInspectable value);
	HRESULT get_AlignLeftWithPanelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignLeftWithPanel(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetAlignLeftWithPanel(Windows.UI.Xaml.UIElement element, bool value);
	HRESULT get_AlignTopWithPanelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignTopWithPanel(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetAlignTopWithPanel(Windows.UI.Xaml.UIElement element, bool value);
	HRESULT get_AlignRightWithPanelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignRightWithPanel(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetAlignRightWithPanel(Windows.UI.Xaml.UIElement element, bool value);
	HRESULT get_AlignBottomWithPanelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignBottomWithPanel(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetAlignBottomWithPanel(Windows.UI.Xaml.UIElement element, bool value);
	HRESULT get_AlignHorizontalCenterWithPanelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignHorizontalCenterWithPanel(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetAlignHorizontalCenterWithPanel(Windows.UI.Xaml.UIElement element, bool value);
	HRESULT get_AlignVerticalCenterWithPanelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAlignVerticalCenterWithPanel(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetAlignVerticalCenterWithPanel(Windows.UI.Xaml.UIElement element, bool value);
	HRESULT get_BorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CornerRadiusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("90a57a40-80b6-4fce-b1ec-e3c616284b6a")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsReadOnly(bool* return_value);
	HRESULT set_IsReadOnly(bool value);
	HRESULT get_AcceptsReturn(bool* return_value);
	HRESULT set_AcceptsReturn(bool value);
	HRESULT get_TextAlignment(Windows.UI.Xaml.TextAlignment* return_value);
	HRESULT set_TextAlignment(Windows.UI.Xaml.TextAlignment value);
	HRESULT get_TextWrapping(Windows.UI.Xaml.TextWrapping* return_value);
	HRESULT set_TextWrapping(Windows.UI.Xaml.TextWrapping value);
	HRESULT get_IsSpellCheckEnabled(bool* return_value);
	HRESULT set_IsSpellCheckEnabled(bool value);
	HRESULT get_IsTextPredictionEnabled(bool* return_value);
	HRESULT set_IsTextPredictionEnabled(bool value);
	HRESULT get_Document(Windows.UI.Text.ITextDocument* return_value);
	HRESULT get_InputScope(Windows.UI.Xaml.Input.InputScope* return_value);
	HRESULT set_InputScope(Windows.UI.Xaml.Input.InputScope value);
	HRESULT add_TextChanged(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_TextChanged(EventRegistrationToken token);
	HRESULT add_SelectionChanged(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT add_ContextMenuOpening(Windows.UI.Xaml.Controls.ContextMenuOpeningEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ContextMenuOpening(EventRegistrationToken token);
}

@uuid("bbea6ead-e805-47a4-bbe7-47e59b8f74a7")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBox2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_PlaceholderText(HSTRING* return_value);
	HRESULT set_PlaceholderText(HSTRING value);
	HRESULT get_SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush* return_value);
	HRESULT set_SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush value);
	HRESULT get_PreventKeyboardDisplayOnProgrammaticFocus(bool* return_value);
	HRESULT set_PreventKeyboardDisplayOnProgrammaticFocus(bool value);
	HRESULT get_IsColorFontEnabled(bool* return_value);
	HRESULT set_IsColorFontEnabled(bool value);
	HRESULT add_Paste(Windows.UI.Xaml.Controls.TextControlPasteEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_Paste(EventRegistrationToken token);
}

@uuid("6b17a462-fbb6-4fff-9991-9399cb9c0b90")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBox3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_TextCompositionStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox*,Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionStarted(EventRegistrationToken token);
	HRESULT add_TextCompositionChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox*,Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionChanged(EventRegistrationToken token);
	HRESULT add_TextCompositionEnded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox*,Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionEnded(EventRegistrationToken token);
	HRESULT get_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder* return_value);
	HRESULT set_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value);
	HRESULT get_DesiredCandidateWindowAlignment(Windows.UI.Xaml.Controls.CandidateWindowAlignment* return_value);
	HRESULT set_DesiredCandidateWindowAlignment(Windows.UI.Xaml.Controls.CandidateWindowAlignment value);
	HRESULT add_CandidateWindowBoundsChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox*,Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_CandidateWindowBoundsChanged(EventRegistrationToken token);
	HRESULT add_TextChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox*,Windows.UI.Xaml.Controls.RichEditBoxTextChangingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_TextChanging(EventRegistrationToken token);
}

@uuid("5caa8d35-c838-4bad-a07c-204183bb751f")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBox4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetLinguisticAlternativesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_returnValue);
	HRESULT get_ClipboardCopyFormat(Windows.UI.Xaml.Controls.RichEditClipboardFormat* return_value);
	HRESULT set_ClipboardCopyFormat(Windows.UI.Xaml.Controls.RichEditClipboardFormat value);
}

@uuid("a66d9cea-6391-4f3b-9fd3-1fd01f49f327")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBox5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectionHighlightColorWhenNotFocused(Windows.UI.Xaml.Media.SolidColorBrush* return_value);
	HRESULT set_SelectionHighlightColorWhenNotFocused(Windows.UI.Xaml.Media.SolidColorBrush value);
	HRESULT get_MaxLength(INT32* return_value);
	HRESULT set_MaxLength(INT32 value);
}

@uuid("61a1df62-2806-41ed-88ed-ae21f47ab422")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBoxFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.RichEditBox* return_instance);
}

@uuid("f5e03a74-88ea-479b-9a05-37089ff30ede")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBoxStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsReadOnlyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AcceptsReturnProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextWrappingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSpellCheckEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTextPredictionEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_InputScopeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e3eb26de-2748-420b-b1fc-ce95b6e85eec")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBoxStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaceholderTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectionHighlightColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PreventKeyboardDisplayOnProgrammaticFocusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsColorFontEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6d17eec5-1fb3-4c8b-aa23-f5e15d6ab64e")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBoxStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DesiredCandidateWindowAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextReadingOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("f5d54fd7-7796-42a5-a5e5-2cd211ee8176")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBoxStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ClipboardCopyFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4b5c4568-43d5-43e6-bbb9-cb4e6250f45a")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBoxStatics5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectionHighlightColorWhenNotFocusedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("395b0db5-636e-413e-9eb4-fc22ebfa3628")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBoxTextChangingEventArgs")
interface IRichEditBoxTextChangingEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsContentChanging(bool* return_value);
}

@uuid("e5fff9e2-b968-49e7-97d4-8cca2ac3ae7c")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlock : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FontSize(double* return_value);
	HRESULT set_FontSize(double value);
	HRESULT get_FontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
	HRESULT set_FontFamily(Windows.UI.Xaml.Media.FontFamily value);
	HRESULT get_FontWeight(Windows.UI.Text.FontWeight* return_value);
	HRESULT set_FontWeight(Windows.UI.Text.FontWeight value);
	HRESULT get_FontStyle(Windows.UI.Text.FontStyle* return_value);
	HRESULT set_FontStyle(Windows.UI.Text.FontStyle value);
	HRESULT get_FontStretch(Windows.UI.Text.FontStretch* return_value);
	HRESULT set_FontStretch(Windows.UI.Text.FontStretch value);
	HRESULT get_Foreground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Foreground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_TextWrapping(Windows.UI.Xaml.TextWrapping* return_value);
	HRESULT set_TextWrapping(Windows.UI.Xaml.TextWrapping value);
	HRESULT get_TextTrimming(Windows.UI.Xaml.TextTrimming* return_value);
	HRESULT set_TextTrimming(Windows.UI.Xaml.TextTrimming value);
	HRESULT get_TextAlignment(Windows.UI.Xaml.TextAlignment* return_value);
	HRESULT set_TextAlignment(Windows.UI.Xaml.TextAlignment value);
	HRESULT get_Blocks(Windows.UI.Xaml.Documents.BlockCollection* return_value);
	HRESULT get_Padding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Padding(Windows.UI.Xaml.Thickness value);
	HRESULT get_LineHeight(double* return_value);
	HRESULT set_LineHeight(double value);
	HRESULT get_LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy* return_value);
	HRESULT set_LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy value);
	HRESULT get_CharacterSpacing(INT32* return_value);
	HRESULT set_CharacterSpacing(INT32 value);
	HRESULT get_OverflowContentTarget(Windows.UI.Xaml.Controls.RichTextBlockOverflow* return_value);
	HRESULT set_OverflowContentTarget(Windows.UI.Xaml.Controls.RichTextBlockOverflow value);
	HRESULT get_IsTextSelectionEnabled(bool* return_value);
	HRESULT set_IsTextSelectionEnabled(bool value);
	HRESULT get_HasOverflowContent(bool* return_value);
	HRESULT get_SelectedText(HSTRING* return_value);
	HRESULT get_ContentStart(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_ContentEnd(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_SelectionStart(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_SelectionEnd(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_BaselineOffset(double* return_value);
	HRESULT add_SelectionChanged(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT add_ContextMenuOpening(Windows.UI.Xaml.Controls.ContextMenuOpeningEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ContextMenuOpening(EventRegistrationToken token);
	HRESULT abi_SelectAll();
	HRESULT abi_Select(Windows.UI.Xaml.Documents.TextPointer start, Windows.UI.Xaml.Documents.TextPointer end);
	HRESULT abi_GetPositionFromPoint(Windows.Foundation.Point point, Windows.UI.Xaml.Documents.TextPointer* return_returnValue);
	HRESULT abi_Focus(Windows.UI.Xaml.FocusState value, bool* return_returnValue);
	HRESULT get_TextIndent(double* return_value);
	HRESULT set_TextIndent(double value);
}

@uuid("3f209013-03e7-4508-964a-91aedab3d11e")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlock2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxLines(INT32* return_value);
	HRESULT set_MaxLines(INT32 value);
	HRESULT get_TextLineBounds(Windows.UI.Xaml.TextLineBounds* return_value);
	HRESULT set_TextLineBounds(Windows.UI.Xaml.TextLineBounds value);
	HRESULT get_SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush* return_value);
	HRESULT set_SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush value);
	HRESULT get_OpticalMarginAlignment(Windows.UI.Xaml.OpticalMarginAlignment* return_value);
	HRESULT set_OpticalMarginAlignment(Windows.UI.Xaml.OpticalMarginAlignment value);
	HRESULT get_IsColorFontEnabled(bool* return_value);
	HRESULT set_IsColorFontEnabled(bool value);
	HRESULT get_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder* return_value);
	HRESULT set_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value);
}

@uuid("7d39ae83-8918-4613-b007-7c898ba2950e")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlock3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("3577c1ea-24fd-4f50-bbe4-3fb654ea58c5")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlock4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextDecorations(Windows.UI.Text.TextDecorations* return_value);
	HRESULT set_TextDecorations(Windows.UI.Text.TextDecorations value);
}

@uuid("4f93749b-dac3-4a42-9cbb-99f0de37c071")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlockOverflow")
interface IRichTextBlockOverflow : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OverflowContentTarget(Windows.UI.Xaml.Controls.RichTextBlockOverflow* return_value);
	HRESULT set_OverflowContentTarget(Windows.UI.Xaml.Controls.RichTextBlockOverflow value);
	HRESULT get_Padding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Padding(Windows.UI.Xaml.Thickness value);
	HRESULT get_ContentSource(Windows.UI.Xaml.Controls.RichTextBlock* return_value);
	HRESULT get_HasOverflowContent(bool* return_value);
	HRESULT get_ContentStart(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_ContentEnd(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_BaselineOffset(double* return_value);
	HRESULT abi_GetPositionFromPoint(Windows.Foundation.Point point, Windows.UI.Xaml.Documents.TextPointer* return_returnValue);
	HRESULT abi_Focus(Windows.UI.Xaml.FocusState value, bool* return_returnValue);
}

@uuid("8742624e-a882-4826-b929-4d5c3905b9a1")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlockOverflow")
interface IRichTextBlockOverflow2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxLines(INT32* return_value);
	HRESULT set_MaxLines(INT32 value);
}

@uuid("041ac2f7-4f2b-43c3-a122-3fea9ca9dc87")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlockOverflow")
interface IRichTextBlockOverflowStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OverflowContentTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HasOverflowContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b5ebed4c-f8c4-4a3a-907f-e53e78279fa3")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlockOverflow")
interface IRichTextBlockOverflowStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxLinesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("492d883c-adea-433c-be1c-208a164262be")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlockStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FontSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontFamilyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextWrappingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextTrimmingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LineHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LineStackingStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CharacterSpacingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OverflowContentTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTextSelectionEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HasOverflowContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextIndentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0d6131e1-af29-48ce-8aaf-74ecc28bfbb0")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlockStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxLinesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextLineBoundsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectionHighlightColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OpticalMarginAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsColorFontEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextReadingOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("073f7ef4-ca2b-4b49-a59a-31d8fa743332")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlockStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("80155bc4-6d96-4b08-ad57-13db0f046412")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlockStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextDecorationsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4abae829-d80c-4a5e-a48c-f8b3d3b6533d")
@WinrtFactory("Windows.UI.Xaml.Controls.RowDefinition")
interface IRowDefinition : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Height(Windows.UI.Xaml.GridLength* return_value);
	HRESULT set_Height(Windows.UI.Xaml.GridLength value);
	HRESULT get_MaxHeight(double* return_value);
	HRESULT set_MaxHeight(double value);
	HRESULT get_MinHeight(double* return_value);
	HRESULT set_MinHeight(double value);
	HRESULT get_ActualHeight(double* return_value);
}

@uuid("5adf3fe5-2056-4724-94d6-e4812b022ec8")
@WinrtFactory("Windows.UI.Xaml.Controls.RowDefinition")
interface IRowDefinitionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("5712ee2b-0eeb-46d3-aa31-5f6801b8de20")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollContentPresenter")
interface IScrollContentPresenter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("64e9be00-4dc1-493d-abe7-cbd3c577490d")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewer")
interface IScrollViewer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HorizontalScrollBarVisibility(Windows.UI.Xaml.Controls.ScrollBarVisibility* return_value);
	HRESULT set_HorizontalScrollBarVisibility(Windows.UI.Xaml.Controls.ScrollBarVisibility value);
	HRESULT get_VerticalScrollBarVisibility(Windows.UI.Xaml.Controls.ScrollBarVisibility* return_value);
	HRESULT set_VerticalScrollBarVisibility(Windows.UI.Xaml.Controls.ScrollBarVisibility value);
	HRESULT get_IsHorizontalRailEnabled(bool* return_value);
	HRESULT set_IsHorizontalRailEnabled(bool value);
	HRESULT get_IsVerticalRailEnabled(bool* return_value);
	HRESULT set_IsVerticalRailEnabled(bool value);
	HRESULT get_IsHorizontalScrollChainingEnabled(bool* return_value);
	HRESULT set_IsHorizontalScrollChainingEnabled(bool value);
	HRESULT get_IsVerticalScrollChainingEnabled(bool* return_value);
	HRESULT set_IsVerticalScrollChainingEnabled(bool value);
	HRESULT get_IsZoomChainingEnabled(bool* return_value);
	HRESULT set_IsZoomChainingEnabled(bool value);
	HRESULT get_IsScrollInertiaEnabled(bool* return_value);
	HRESULT set_IsScrollInertiaEnabled(bool value);
	HRESULT get_IsZoomInertiaEnabled(bool* return_value);
	HRESULT set_IsZoomInertiaEnabled(bool value);
	HRESULT get_HorizontalScrollMode(Windows.UI.Xaml.Controls.ScrollMode* return_value);
	HRESULT set_HorizontalScrollMode(Windows.UI.Xaml.Controls.ScrollMode value);
	HRESULT get_VerticalScrollMode(Windows.UI.Xaml.Controls.ScrollMode* return_value);
	HRESULT set_VerticalScrollMode(Windows.UI.Xaml.Controls.ScrollMode value);
	HRESULT get_ZoomMode(Windows.UI.Xaml.Controls.ZoomMode* return_value);
	HRESULT set_ZoomMode(Windows.UI.Xaml.Controls.ZoomMode value);
	HRESULT get_HorizontalSnapPointsAlignment(Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment* return_value);
	HRESULT set_HorizontalSnapPointsAlignment(Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment value);
	HRESULT get_VerticalSnapPointsAlignment(Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment* return_value);
	HRESULT set_VerticalSnapPointsAlignment(Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment value);
	HRESULT get_HorizontalSnapPointsType(Windows.UI.Xaml.Controls.SnapPointsType* return_value);
	HRESULT set_HorizontalSnapPointsType(Windows.UI.Xaml.Controls.SnapPointsType value);
	HRESULT get_VerticalSnapPointsType(Windows.UI.Xaml.Controls.SnapPointsType* return_value);
	HRESULT set_VerticalSnapPointsType(Windows.UI.Xaml.Controls.SnapPointsType value);
	HRESULT get_ZoomSnapPointsType(Windows.UI.Xaml.Controls.SnapPointsType* return_value);
	HRESULT set_ZoomSnapPointsType(Windows.UI.Xaml.Controls.SnapPointsType value);
	HRESULT get_HorizontalOffset(double* return_value);
	HRESULT get_ViewportWidth(double* return_value);
	HRESULT get_ScrollableWidth(double* return_value);
	HRESULT get_ComputedHorizontalScrollBarVisibility(Windows.UI.Xaml.Visibility* return_value);
	HRESULT get_ExtentWidth(double* return_value);
	HRESULT get_VerticalOffset(double* return_value);
	HRESULT get_ViewportHeight(double* return_value);
	HRESULT get_ScrollableHeight(double* return_value);
	HRESULT get_ComputedVerticalScrollBarVisibility(Windows.UI.Xaml.Visibility* return_value);
	HRESULT get_ExtentHeight(double* return_value);
	HRESULT get_MinZoomFactor(FLOAT* return_value);
	HRESULT set_MinZoomFactor(FLOAT value);
	HRESULT get_MaxZoomFactor(FLOAT* return_value);
	HRESULT set_MaxZoomFactor(FLOAT value);
	HRESULT get_ZoomFactor(FLOAT* return_value);
	HRESULT get_ZoomSnapPoints(Windows.Foundation.Collections.IVector!(FLOAT)* return_value);
	HRESULT add_ViewChanged(Windows.Foundation.EventHandler!(Windows.UI.Xaml.Controls.ScrollViewerViewChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ViewChanged(EventRegistrationToken token);
	deprecated("ScrollToHorizontalOffset may be altered or unavailable for releases after Windows 8.1. Instead, use ChangeView.")
	HRESULT abi_ScrollToHorizontalOffset(double offset);
	deprecated("ScrollToVerticalOffset may be altered or unavailable for releases after Windows 8.1. Instead, use ChangeView.")
	HRESULT abi_ScrollToVerticalOffset(double offset);
	deprecated("ZoomToFactor may be altered or unavailable for releases after Windows 8.1. Instead, use ChangeView.")
	HRESULT abi_ZoomToFactor(FLOAT factor);
	HRESULT abi_InvalidateScrollInfo();
	HRESULT get_IsDeferredScrollingEnabled(bool* return_value);
	HRESULT set_IsDeferredScrollingEnabled(bool value);
	HRESULT get_BringIntoViewOnFocusChange(bool* return_value);
	HRESULT set_BringIntoViewOnFocusChange(bool value);
}

@uuid("64e9be10-4dd1-494d-abf7-cbd3c577491d")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewer")
interface IScrollViewer2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TopLeftHeader(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_TopLeftHeader(Windows.UI.Xaml.UIElement value);
	HRESULT get_LeftHeader(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_LeftHeader(Windows.UI.Xaml.UIElement value);
	HRESULT get_TopHeader(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_TopHeader(Windows.UI.Xaml.UIElement value);
	HRESULT add_ViewChanging(Windows.Foundation.EventHandler!(Windows.UI.Xaml.Controls.ScrollViewerViewChangingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ViewChanging(EventRegistrationToken token);
	HRESULT abi_ChangeView(Windows.Foundation.IReference!(double) horizontalOffset, Windows.Foundation.IReference!(double) verticalOffset, Windows.Foundation.IReference!(FLOAT) zoomFactor, bool* return_returnValue);
	HRESULT abi_ChangeViewWithOptionalAnimation(Windows.Foundation.IReference!(double) horizontalOffset, Windows.Foundation.IReference!(double) verticalOffset, Windows.Foundation.IReference!(FLOAT) zoomFactor, bool disableAnimation, bool* return_returnValue);
}

@uuid("74e9be21-5de2-595e-bc08-dbd3c577492c")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewer")
interface IScrollViewer3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_DirectManipulationStarted(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_DirectManipulationStarted(EventRegistrationToken token);
	HRESULT add_DirectManipulationCompleted(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_DirectManipulationCompleted(EventRegistrationToken token);
}

@uuid("33d1299d-8d6e-4290-bf22-905cccd04d31")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewer")
interface IScrollViewerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HorizontalSnapPointsAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalSnapPointsAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalSnapPointsTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalSnapPointsTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ZoomSnapPointsTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ViewportWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ScrollableWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ComputedHorizontalScrollBarVisibilityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ExtentWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ViewportHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ScrollableHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ComputedVerticalScrollBarVisibilityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ExtentHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinZoomFactorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxZoomFactorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ZoomFactorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ZoomSnapPointsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalScrollBarVisibilityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetHorizontalScrollBarVisibility(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ScrollBarVisibility* return_horizontalScrollBarVisibility);
	HRESULT abi_SetHorizontalScrollBarVisibility(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ScrollBarVisibility horizontalScrollBarVisibility);
	HRESULT get_VerticalScrollBarVisibilityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetVerticalScrollBarVisibility(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ScrollBarVisibility* return_verticalScrollBarVisibility);
	HRESULT abi_SetVerticalScrollBarVisibility(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ScrollBarVisibility verticalScrollBarVisibility);
	HRESULT get_IsHorizontalRailEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsHorizontalRailEnabled(Windows.UI.Xaml.DependencyObject element, bool* return_isHorizontalRailEnabled);
	HRESULT abi_SetIsHorizontalRailEnabled(Windows.UI.Xaml.DependencyObject element, bool isHorizontalRailEnabled);
	HRESULT get_IsVerticalRailEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsVerticalRailEnabled(Windows.UI.Xaml.DependencyObject element, bool* return_isVerticalRailEnabled);
	HRESULT abi_SetIsVerticalRailEnabled(Windows.UI.Xaml.DependencyObject element, bool isVerticalRailEnabled);
	HRESULT get_IsHorizontalScrollChainingEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsHorizontalScrollChainingEnabled(Windows.UI.Xaml.DependencyObject element, bool* return_isHorizontalScrollChainingEnabled);
	HRESULT abi_SetIsHorizontalScrollChainingEnabled(Windows.UI.Xaml.DependencyObject element, bool isHorizontalScrollChainingEnabled);
	HRESULT get_IsVerticalScrollChainingEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsVerticalScrollChainingEnabled(Windows.UI.Xaml.DependencyObject element, bool* return_isVerticalScrollChainingEnabled);
	HRESULT abi_SetIsVerticalScrollChainingEnabled(Windows.UI.Xaml.DependencyObject element, bool isVerticalScrollChainingEnabled);
	HRESULT get_IsZoomChainingEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsZoomChainingEnabled(Windows.UI.Xaml.DependencyObject element, bool* return_isZoomChainingEnabled);
	HRESULT abi_SetIsZoomChainingEnabled(Windows.UI.Xaml.DependencyObject element, bool isZoomChainingEnabled);
	HRESULT get_IsScrollInertiaEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsScrollInertiaEnabled(Windows.UI.Xaml.DependencyObject element, bool* return_isScrollInertiaEnabled);
	HRESULT abi_SetIsScrollInertiaEnabled(Windows.UI.Xaml.DependencyObject element, bool isScrollInertiaEnabled);
	HRESULT get_IsZoomInertiaEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsZoomInertiaEnabled(Windows.UI.Xaml.DependencyObject element, bool* return_isZoomInertiaEnabled);
	HRESULT abi_SetIsZoomInertiaEnabled(Windows.UI.Xaml.DependencyObject element, bool isZoomInertiaEnabled);
	HRESULT get_HorizontalScrollModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetHorizontalScrollMode(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ScrollMode* return_horizontalScrollMode);
	HRESULT abi_SetHorizontalScrollMode(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ScrollMode horizontalScrollMode);
	HRESULT get_VerticalScrollModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetVerticalScrollMode(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ScrollMode* return_verticalScrollMode);
	HRESULT abi_SetVerticalScrollMode(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ScrollMode verticalScrollMode);
	HRESULT get_ZoomModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetZoomMode(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ZoomMode* return_zoomMode);
	HRESULT abi_SetZoomMode(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.ZoomMode zoomMode);
	HRESULT get_IsDeferredScrollingEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsDeferredScrollingEnabled(Windows.UI.Xaml.DependencyObject element, bool* return_isDeferredScrollingEnabled);
	HRESULT abi_SetIsDeferredScrollingEnabled(Windows.UI.Xaml.DependencyObject element, bool isDeferredScrollingEnabled);
	HRESULT get_BringIntoViewOnFocusChangeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetBringIntoViewOnFocusChange(Windows.UI.Xaml.DependencyObject element, bool* return_bringIntoViewOnFocusChange);
	HRESULT abi_SetBringIntoViewOnFocusChange(Windows.UI.Xaml.DependencyObject element, bool bringIntoViewOnFocusChange);
}

@uuid("33d129ad-8d7e-42a0-bf32-905cccd04d41")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewer")
interface IScrollViewerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TopLeftHeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LeftHeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TopHeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("64e9be01-4dc2-493e-abe8-cbd3c577490e")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewerView")
interface IScrollViewerView : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HorizontalOffset(double* return_value);
	HRESULT get_VerticalOffset(double* return_value);
	HRESULT get_ZoomFactor(FLOAT* return_value);
}

@uuid("4dd04f7e-7a11-4b2e-9933-577df39252b6")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewerViewChangedEventArgs")
interface IScrollViewerViewChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsIntermediate(bool* return_value);
}

@uuid("4dd04f7f-7a11-4b2e-9933-577df39252b6")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewerViewChangingEventArgs")
interface IScrollViewerViewChangingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NextView(Windows.UI.Xaml.Controls.ScrollViewerView* return_value);
	HRESULT get_FinalView(Windows.UI.Xaml.Controls.ScrollViewerView* return_value);
	HRESULT get_IsInertial(bool* return_value);
}

@uuid("f89ecc5a-99ba-4bd4-966c-f11fa443d13c")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBox")
interface ISearchBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SearchHistoryEnabled(bool* return_value);
	HRESULT set_SearchHistoryEnabled(bool value);
	HRESULT get_SearchHistoryContext(HSTRING* return_value);
	HRESULT set_SearchHistoryContext(HSTRING value);
	HRESULT get_PlaceholderText(HSTRING* return_value);
	HRESULT set_PlaceholderText(HSTRING value);
	HRESULT get_QueryText(HSTRING* return_value);
	HRESULT set_QueryText(HSTRING value);
	HRESULT get_FocusOnKeyboardInput(bool* return_value);
	HRESULT set_FocusOnKeyboardInput(bool value);
	HRESULT get_ChooseSuggestionOnEnter(bool* return_value);
	HRESULT set_ChooseSuggestionOnEnter(bool value);
	HRESULT add_QueryChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox*,Windows.UI.Xaml.Controls.SearchBoxQueryChangedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_QueryChanged(EventRegistrationToken token);
	HRESULT add_SuggestionsRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox*,Windows.UI.Xaml.Controls.SearchBoxSuggestionsRequestedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_SuggestionsRequested(EventRegistrationToken token);
	HRESULT add_QuerySubmitted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox*,Windows.UI.Xaml.Controls.SearchBoxQuerySubmittedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_QuerySubmitted(EventRegistrationToken token);
	HRESULT add_ResultSuggestionChosen(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox*,Windows.UI.Xaml.Controls.SearchBoxResultSuggestionChosenEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_ResultSuggestionChosen(EventRegistrationToken token);
	HRESULT add_PrepareForFocusOnKeyboardInput(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox*,Windows.UI.Xaml.RoutedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_PrepareForFocusOnKeyboardInput(EventRegistrationToken token);
	HRESULT abi_SetLocalContentSuggestionSettings(Windows.ApplicationModel.Search.LocalContentSuggestionSettings settings);
}

@uuid("cd743f6d-8685-46b4-9ddd-202f6941b701")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBox")
interface ISearchBoxFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SearchBox* return_instance);
}

@uuid("a9a70f8f-0cb0-4bd2-9998-2fb57ad5e731")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBoxQueryChangedEventArgs")
interface ISearchBoxQueryChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QueryText(HSTRING* return_value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_LinguisticDetails(Windows.ApplicationModel.Search.SearchQueryLinguisticDetails* return_value);
}

@uuid("126e90fd-3c4e-4ccb-9aef-4705d19fe548")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBoxQuerySubmittedEventArgs")
interface ISearchBoxQuerySubmittedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QueryText(HSTRING* return_value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_LinguisticDetails(Windows.ApplicationModel.Search.SearchQueryLinguisticDetails* return_value);
	HRESULT get_KeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
}

@uuid("18918c23-e4c3-4662-a03b-d054ffd0f905")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBoxResultSuggestionChosenEventArgs")
interface ISearchBoxResultSuggestionChosenEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Tag(HSTRING* return_value);
	HRESULT get_KeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
}

@uuid("b123634f-6871-48cd-92df-4cff22459082")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBox")
interface ISearchBoxStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SearchHistoryEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SearchHistoryContextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaceholderTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_QueryTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusOnKeyboardInputProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ChooseSuggestionOnEnterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("da15170e-e566-48cb-bd11-fe4b0f30a44d")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBoxSuggestionsRequestedEventArgs")
interface ISearchBoxSuggestionsRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QueryText(HSTRING* return_value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_LinguisticDetails(Windows.ApplicationModel.Search.SearchQueryLinguisticDetails* return_value);
	HRESULT get_Request(Windows.ApplicationModel.Search.SearchSuggestionsRequest* return_value);
}

@uuid("dd49ee6b-d165-430f-a37d-b807064f85e1")
@WinrtFactory("Windows.UI.Xaml.Controls.SectionsInViewChangedEventArgs")
interface ISectionsInViewChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AddedSections(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)* return_value);
	HRESULT get_RemovedSections(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)* return_value);
}

@uuid("c972d2dc-b609-4758-851e-a799c21de97d")
@WinrtFactory("Windows.UI.Xaml.Controls.SelectionChangedEventArgs")
interface ISelectionChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AddedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
	HRESULT get_RemovedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
}

@uuid("11a8b6b5-2830-4517-84cd-5524c8b88b45")
@WinrtFactory("Windows.UI.Xaml.Controls.SelectionChangedEventArgs")
interface ISelectionChangedEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithRemovedItemsAndAddedItems(Windows.Foundation.Collections.IVector!(IInspectable) removedItems, Windows.Foundation.Collections.IVector!(IInspectable) addedItems, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SelectionChangedEventArgs* return_instance);
}

@uuid("019fff21-ece6-4fbc-bf40-8938d4813e27")
@WinrtFactory("Windows.UI.Xaml.Controls.SemanticZoom")
interface ISemanticZoom : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ZoomedInView(Windows.UI.Xaml.Controls.ISemanticZoomInformation* return_value);
	HRESULT set_ZoomedInView(Windows.UI.Xaml.Controls.ISemanticZoomInformation value);
	HRESULT get_ZoomedOutView(Windows.UI.Xaml.Controls.ISemanticZoomInformation* return_value);
	HRESULT set_ZoomedOutView(Windows.UI.Xaml.Controls.ISemanticZoomInformation value);
	HRESULT get_IsZoomedInViewActive(bool* return_value);
	HRESULT set_IsZoomedInViewActive(bool value);
	HRESULT get_CanChangeViews(bool* return_value);
	HRESULT set_CanChangeViews(bool value);
	HRESULT add_ViewChangeStarted(Windows.UI.Xaml.Controls.SemanticZoomViewChangedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ViewChangeStarted(EventRegistrationToken token);
	HRESULT add_ViewChangeCompleted(Windows.UI.Xaml.Controls.SemanticZoomViewChangedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ViewChangeCompleted(EventRegistrationToken token);
	HRESULT abi_ToggleActiveView();
	HRESULT get_IsZoomOutButtonEnabled(bool* return_value);
	HRESULT set_IsZoomOutButtonEnabled(bool value);
}

@uuid("a76a3b63-229b-4dc5-aa11-9d922fbf8a98")
interface ISemanticZoomInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SemanticZoomOwner(Windows.UI.Xaml.Controls.SemanticZoom* return_value);
	HRESULT set_SemanticZoomOwner(Windows.UI.Xaml.Controls.SemanticZoom value);
	HRESULT get_IsActiveView(bool* return_value);
	HRESULT set_IsActiveView(bool value);
	HRESULT get_IsZoomedInView(bool* return_value);
	HRESULT set_IsZoomedInView(bool value);
	HRESULT abi_InitializeViewChange();
	HRESULT abi_CompleteViewChange();
	HRESULT abi_MakeVisible(Windows.UI.Xaml.Controls.SemanticZoomLocation item);
	HRESULT abi_StartViewChangeFrom(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination);
	HRESULT abi_StartViewChangeTo(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination);
	HRESULT abi_CompleteViewChangeFrom(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination);
	HRESULT abi_CompleteViewChangeTo(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination);
}

@uuid("42011736-e3c2-496b-bc4e-d750d4375b9a")
@WinrtFactory("Windows.UI.Xaml.Controls.SemanticZoomLocation")
interface ISemanticZoomLocation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Item(IInspectable* return_value);
	HRESULT set_Item(IInspectable value);
	HRESULT get_Bounds(Windows.Foundation.Rect* return_value);
	HRESULT set_Bounds(Windows.Foundation.Rect value);
}

@uuid("8ef17ef2-9898-4666-b285-3ed38a07910e")
@WinrtFactory("Windows.UI.Xaml.Controls.SemanticZoom")
interface ISemanticZoomStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ZoomedInViewProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ZoomedOutViewProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsZoomedInViewActiveProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CanChangeViewsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsZoomOutButtonEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("47dfc068-b569-4b19-842d-8e6cf90989af")
@WinrtFactory("Windows.UI.Xaml.Controls.SemanticZoomViewChangedEventArgs")
interface ISemanticZoomViewChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsSourceZoomedInView(bool* return_value);
	HRESULT set_IsSourceZoomedInView(bool value);
	HRESULT get_SourceItem(Windows.UI.Xaml.Controls.SemanticZoomLocation* return_value);
	HRESULT set_SourceItem(Windows.UI.Xaml.Controls.SemanticZoomLocation value);
	HRESULT get_DestinationItem(Windows.UI.Xaml.Controls.SemanticZoomLocation* return_value);
	HRESULT set_DestinationItem(Windows.UI.Xaml.Controls.SemanticZoomLocation value);
}

@uuid("830ba82b-c55b-4e32-a51c-5791e024c8af")
@WinrtFactory("Windows.UI.Xaml.Controls.SettingsFlyout")
interface ISettingsFlyout : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_HeaderBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_HeaderBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_HeaderForeground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_HeaderForeground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_IconSource(Windows.UI.Xaml.Media.ImageSource* return_value);
	HRESULT set_IconSource(Windows.UI.Xaml.Media.ImageSource value);
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.SettingsFlyoutTemplateSettings* return_value);
	HRESULT add_BackClick(Windows.UI.Xaml.Controls.BackClickEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_BackClick(EventRegistrationToken token);
	HRESULT abi_Show();
	HRESULT abi_ShowIndependent();
	HRESULT abi_Hide();
}

@uuid("480c7011-57aa-4db6-b6fd-ec676f6d414e")
@WinrtFactory("Windows.UI.Xaml.Controls.SettingsFlyout")
interface ISettingsFlyoutFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SettingsFlyout* return_instance);
}

@uuid("d0e3b535-9157-4be4-a42a-f591698846ac")
@WinrtFactory("Windows.UI.Xaml.Controls.SettingsFlyout")
interface ISettingsFlyoutStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TitleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IconSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("89572027-4c48-4700-8076-497ba73d9c18")
@WinrtFactory("Windows.UI.Xaml.Controls.Slider")
interface ISlider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IntermediateValue(double* return_value);
	HRESULT set_IntermediateValue(double value);
	HRESULT get_StepFrequency(double* return_value);
	HRESULT set_StepFrequency(double value);
	HRESULT get_SnapsTo(Windows.UI.Xaml.Controls.Primitives.SliderSnapsTo* return_value);
	HRESULT set_SnapsTo(Windows.UI.Xaml.Controls.Primitives.SliderSnapsTo value);
	HRESULT get_TickFrequency(double* return_value);
	HRESULT set_TickFrequency(double value);
	HRESULT get_TickPlacement(Windows.UI.Xaml.Controls.Primitives.TickPlacement* return_value);
	HRESULT set_TickPlacement(Windows.UI.Xaml.Controls.Primitives.TickPlacement value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT get_IsDirectionReversed(bool* return_value);
	HRESULT set_IsDirectionReversed(bool value);
	HRESULT get_IsThumbToolTipEnabled(bool* return_value);
	HRESULT set_IsThumbToolTipEnabled(bool value);
	HRESULT get_ThumbToolTipValueConverter(Windows.UI.Xaml.Data.IValueConverter* return_value);
	HRESULT set_ThumbToolTipValueConverter(Windows.UI.Xaml.Data.IValueConverter value);
}

@uuid("40a3c50e-87d6-4d2f-b1cf-b279cc996f26")
@WinrtFactory("Windows.UI.Xaml.Controls.Slider")
interface ISlider2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
}

@uuid("03a67b37-c7bf-437c-848f-8cb5b753eab4")
@WinrtFactory("Windows.UI.Xaml.Controls.Slider")
interface ISliderFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Slider* return_instance);
}

@uuid("8a4363d7-7fdf-4d30-98fe-ce78c05b31cf")
@WinrtFactory("Windows.UI.Xaml.Controls.Slider")
interface ISliderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IntermediateValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StepFrequencyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SnapsToProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TickFrequencyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TickPlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsDirectionReversedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsThumbToolTipEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ThumbToolTipValueConverterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("00e7935d-79a5-4759-96a6-29e0a94add33")
@WinrtFactory("Windows.UI.Xaml.Controls.Slider")
interface ISliderStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("97222f31-3844-429e-939c-1673155322a1")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitView")
interface ISplitView : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Content(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Content(Windows.UI.Xaml.UIElement value);
	HRESULT get_Pane(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Pane(Windows.UI.Xaml.UIElement value);
	HRESULT get_IsPaneOpen(bool* return_value);
	HRESULT set_IsPaneOpen(bool value);
	HRESULT get_OpenPaneLength(double* return_value);
	HRESULT set_OpenPaneLength(double value);
	HRESULT get_CompactPaneLength(double* return_value);
	HRESULT set_CompactPaneLength(double value);
	HRESULT get_PanePlacement(Windows.UI.Xaml.Controls.SplitViewPanePlacement* return_value);
	HRESULT set_PanePlacement(Windows.UI.Xaml.Controls.SplitViewPanePlacement value);
	HRESULT get_DisplayMode(Windows.UI.Xaml.Controls.SplitViewDisplayMode* return_value);
	HRESULT set_DisplayMode(Windows.UI.Xaml.Controls.SplitViewDisplayMode value);
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.SplitViewTemplateSettings* return_value);
	HRESULT get_PaneBackground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_PaneBackground(Windows.UI.Xaml.Media.Brush value);
	HRESULT add_PaneClosing(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SplitView*,Windows.UI.Xaml.Controls.SplitViewPaneClosingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_PaneClosing(EventRegistrationToken token);
	HRESULT add_PaneClosed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SplitView*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT remove_PaneClosed(EventRegistrationToken token);
}

@uuid("5ea7dc10-cc83-409a-82f9-3e91d6d7084f")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitView")
interface ISplitView2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("f101773a-084e-4fb9-8442-63221b44533f")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitView")
interface ISplitViewFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SplitView* return_instance);
}

@uuid("93cf494e-7a95-44d8-9562-1b348248da9f")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitViewPaneClosingEventArgs")
interface ISplitViewPaneClosingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
}

@uuid("859b4f6f-44ab-4e4b-91c1-17b7056d9b5f")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitView")
interface ISplitViewStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaneProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsPaneOpenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OpenPaneLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CompactPaneLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PanePlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DisplayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TemplateSettingsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaneBackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("14b7cd7a-dfbc-422c-80a9-585871297113")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitView")
interface ISplitViewStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b8ae8fe2-d641-4fd7-80b4-7439207d2798")
@WinrtFactory("Windows.UI.Xaml.Controls.StackPanel")
interface IStackPanel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreScrollSnapPointsRegular(bool* return_value);
	HRESULT set_AreScrollSnapPointsRegular(bool value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
}

@uuid("36f23359-040e-48f7-9a98-f2664591959c")
@WinrtFactory("Windows.UI.Xaml.Controls.StackPanel")
interface IStackPanel2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BorderBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_BorderBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_BorderThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_BorderThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_CornerRadius(Windows.UI.Xaml.CornerRadius* return_value);
	HRESULT set_CornerRadius(Windows.UI.Xaml.CornerRadius value);
	HRESULT get_Padding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Padding(Windows.UI.Xaml.Thickness value);
}

@uuid("63d8248a-8b34-445a-808f-b6ecd62a27d9")
@WinrtFactory("Windows.UI.Xaml.Controls.StackPanel")
interface IStackPanelFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.StackPanel* return_instance);
}

@uuid("f0d0cd93-4dbc-48a7-9914-954924657771")
@WinrtFactory("Windows.UI.Xaml.Controls.StackPanel")
interface IStackPanelStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreScrollSnapPointsRegularProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d97e6257-080d-412e-a91a-ce6e5d02aad3")
@WinrtFactory("Windows.UI.Xaml.Controls.StackPanel")
interface IStackPanelStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CornerRadiusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d1113f67-d8c1-4ae4-98f0-d8504502f08b")
@WinrtFactory("Windows.UI.Xaml.Controls.StyleSelector")
interface IStyleSelector : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SelectStyle(IInspectable item, Windows.UI.Xaml.DependencyObject container, Windows.UI.Xaml.Style* return_returnValue);
}

@uuid("9e942ae7-3761-447f-8f97-29e39d5eb310")
@WinrtFactory("Windows.UI.Xaml.Controls.StyleSelector")
interface IStyleSelectorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.StyleSelector* return_instance);
}

@uuid("08add66d-0e2e-43a0-aeca-8faa94b9d017")
@WinrtFactory("Windows.UI.Xaml.Controls.StyleSelector")
interface IStyleSelectorOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SelectStyleCore(IInspectable item, Windows.UI.Xaml.DependencyObject container, Windows.UI.Xaml.Style* return_returnValue);
}

@uuid("21e672f2-2592-4c38-870f-28fbcf52c095")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainBackgroundPanel")
interface ISwapChainBackgroundPanel2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateCoreIndependentInputSource(Windows.UI.Core.CoreInputDeviceTypes deviceTypes, Windows.UI.Core.CoreIndependentInputSource* return_returnValue);
}

@uuid("198289d4-c89b-49b2-896c-5917bf8adcae")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainBackgroundPanel")
interface ISwapChainBackgroundPanelFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SwapChainBackgroundPanel* return_instance);
}

@uuid("c589644f-eba8-427a-b75a-9f1f93a11ae9")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainPanel")
interface ISwapChainPanel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CompositionScaleX(FLOAT* return_value);
	HRESULT get_CompositionScaleY(FLOAT* return_value);
	HRESULT add_CompositionScaleChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SwapChainPanel*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT remove_CompositionScaleChanged(EventRegistrationToken token);
	HRESULT abi_CreateCoreIndependentInputSource(Windows.UI.Core.CoreInputDeviceTypes deviceTypes, Windows.UI.Core.CoreIndependentInputSource* return_returnValue);
}

@uuid("f38f8d7f-1a48-49cb-86d2-10eaaaf6fd70")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainPanel")
interface ISwapChainPanelFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SwapChainPanel* return_instance);
}

@uuid("f89c0297-eea8-498c-99c4-257e3660df7e")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainPanel")
interface ISwapChainPanelStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CompositionScaleXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CompositionScaleYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7a4774c9-a6a3-4b30-8ff1-9081d70e9a5c")
@WinrtFactory("Windows.UI.Xaml.Controls.SymbolIcon")
interface ISymbolIcon : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Symbol(Windows.UI.Xaml.Controls.Symbol* return_value);
	HRESULT set_Symbol(Windows.UI.Xaml.Controls.Symbol value);
}

@uuid("c7252b88-e76c-4b44-8a05-046b9dc772b8")
@WinrtFactory("Windows.UI.Xaml.Controls.SymbolIcon")
interface ISymbolIconFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithSymbol(Windows.UI.Xaml.Controls.Symbol symbol, Windows.UI.Xaml.Controls.SymbolIcon* return_instance);
}

@uuid("8624fbdf-952c-4f76-b03f-30833be99572")
@WinrtFactory("Windows.UI.Xaml.Controls.SymbolIcon")
interface ISymbolIconStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SymbolProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ae2d9271-3b4a-45fc-8468-f7949548f4d5")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlock : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FontSize(double* return_value);
	HRESULT set_FontSize(double value);
	HRESULT get_FontFamily(Windows.UI.Xaml.Media.FontFamily* return_value);
	HRESULT set_FontFamily(Windows.UI.Xaml.Media.FontFamily value);
	HRESULT get_FontWeight(Windows.UI.Text.FontWeight* return_value);
	HRESULT set_FontWeight(Windows.UI.Text.FontWeight value);
	HRESULT get_FontStyle(Windows.UI.Text.FontStyle* return_value);
	HRESULT set_FontStyle(Windows.UI.Text.FontStyle value);
	HRESULT get_FontStretch(Windows.UI.Text.FontStretch* return_value);
	HRESULT set_FontStretch(Windows.UI.Text.FontStretch value);
	HRESULT get_CharacterSpacing(INT32* return_value);
	HRESULT set_CharacterSpacing(INT32 value);
	HRESULT get_Foreground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Foreground(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_TextWrapping(Windows.UI.Xaml.TextWrapping* return_value);
	HRESULT set_TextWrapping(Windows.UI.Xaml.TextWrapping value);
	HRESULT get_TextTrimming(Windows.UI.Xaml.TextTrimming* return_value);
	HRESULT set_TextTrimming(Windows.UI.Xaml.TextTrimming value);
	HRESULT get_TextAlignment(Windows.UI.Xaml.TextAlignment* return_value);
	HRESULT set_TextAlignment(Windows.UI.Xaml.TextAlignment value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_Inlines(Windows.UI.Xaml.Documents.InlineCollection* return_value);
	HRESULT get_Padding(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Padding(Windows.UI.Xaml.Thickness value);
	HRESULT get_LineHeight(double* return_value);
	HRESULT set_LineHeight(double value);
	HRESULT get_LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy* return_value);
	HRESULT set_LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy value);
	HRESULT get_IsTextSelectionEnabled(bool* return_value);
	HRESULT set_IsTextSelectionEnabled(bool value);
	HRESULT get_SelectedText(HSTRING* return_value);
	HRESULT get_ContentStart(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_ContentEnd(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_SelectionStart(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_SelectionEnd(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_BaselineOffset(double* return_value);
	HRESULT add_SelectionChanged(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT add_ContextMenuOpening(Windows.UI.Xaml.Controls.ContextMenuOpeningEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ContextMenuOpening(EventRegistrationToken token);
	HRESULT abi_SelectAll();
	HRESULT abi_Select(Windows.UI.Xaml.Documents.TextPointer start, Windows.UI.Xaml.Documents.TextPointer end);
	HRESULT abi_Focus(Windows.UI.Xaml.FocusState value, bool* return_returnValue);
}

@uuid("45206a4c-0a4e-4fbf-aee9-335d5a205f6e")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlock2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush* return_value);
	HRESULT set_SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush value);
	HRESULT get_MaxLines(INT32* return_value);
	HRESULT set_MaxLines(INT32 value);
	HRESULT get_TextLineBounds(Windows.UI.Xaml.TextLineBounds* return_value);
	HRESULT set_TextLineBounds(Windows.UI.Xaml.TextLineBounds value);
	HRESULT get_OpticalMarginAlignment(Windows.UI.Xaml.OpticalMarginAlignment* return_value);
	HRESULT set_OpticalMarginAlignment(Windows.UI.Xaml.OpticalMarginAlignment value);
	HRESULT get_IsColorFontEnabled(bool* return_value);
	HRESULT set_IsColorFontEnabled(bool value);
	HRESULT get_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder* return_value);
	HRESULT set_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value);
}

@uuid("b651dd5a-424b-48c3-9b67-486f4e139899")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlock3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("b014f270-9808-4adc-b452-60cda54100c1")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlock4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAlphaMask(Windows.UI.Composition.CompositionBrush* return_returnValue);
}

@uuid("624a2d38-edbd-4a5a-b678-e49f1e07afbd")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlock5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextDecorations(Windows.UI.Text.TextDecorations* return_value);
	HRESULT set_TextDecorations(Windows.UI.Text.TextDecorations value);
}

@uuid("193ec042-a847-4552-b4e8-db36655b840a")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlockStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FontSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontFamilyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CharacterSpacingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextWrappingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextTrimmingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LineHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LineStackingStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTextSelectionEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectedTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("88100b1b-ff24-4b93-a0e6-f029c94871f1")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlockStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectionHighlightColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxLinesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextLineBoundsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OpticalMarginAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsColorFontEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextReadingOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("8d16b9eb-20a1-4eab-bbf2-1d6bdcbcd705")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlockStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("8e4d9c70-0d4e-48df-ae7f-bb7a9af6852e")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlockStatics5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextDecorationsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e48f5a8b-1dff-4352-a1f4-e516514ec882")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_SelectedText(HSTRING* return_value);
	HRESULT set_SelectedText(HSTRING value);
	HRESULT get_SelectionLength(INT32* return_value);
	HRESULT set_SelectionLength(INT32 value);
	HRESULT get_SelectionStart(INT32* return_value);
	HRESULT set_SelectionStart(INT32 value);
	HRESULT get_MaxLength(INT32* return_value);
	HRESULT set_MaxLength(INT32 value);
	HRESULT get_IsReadOnly(bool* return_value);
	HRESULT set_IsReadOnly(bool value);
	HRESULT get_AcceptsReturn(bool* return_value);
	HRESULT set_AcceptsReturn(bool value);
	HRESULT get_TextAlignment(Windows.UI.Xaml.TextAlignment* return_value);
	HRESULT set_TextAlignment(Windows.UI.Xaml.TextAlignment value);
	HRESULT get_TextWrapping(Windows.UI.Xaml.TextWrapping* return_value);
	HRESULT set_TextWrapping(Windows.UI.Xaml.TextWrapping value);
	HRESULT get_IsSpellCheckEnabled(bool* return_value);
	HRESULT set_IsSpellCheckEnabled(bool value);
	HRESULT get_IsTextPredictionEnabled(bool* return_value);
	HRESULT set_IsTextPredictionEnabled(bool value);
	HRESULT get_InputScope(Windows.UI.Xaml.Input.InputScope* return_value);
	HRESULT set_InputScope(Windows.UI.Xaml.Input.InputScope value);
	HRESULT add_TextChanged(Windows.UI.Xaml.Controls.TextChangedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_TextChanged(EventRegistrationToken token);
	HRESULT add_SelectionChanged(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT add_ContextMenuOpening(Windows.UI.Xaml.Controls.ContextMenuOpeningEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ContextMenuOpening(EventRegistrationToken token);
	HRESULT abi_Select(INT32 start, INT32 length);
	HRESULT abi_SelectAll();
	HRESULT abi_GetRectFromCharacterIndex(INT32 charIndex, bool trailingEdge, Windows.Foundation.Rect* return_returnValue);
}

@uuid("f7168c00-1432-462a-9405-38f385bfc37c")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBox2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_PlaceholderText(HSTRING* return_value);
	HRESULT set_PlaceholderText(HSTRING value);
	HRESULT get_SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush* return_value);
	HRESULT set_SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush value);
	HRESULT get_PreventKeyboardDisplayOnProgrammaticFocus(bool* return_value);
	HRESULT set_PreventKeyboardDisplayOnProgrammaticFocus(bool value);
	HRESULT get_IsColorFontEnabled(bool* return_value);
	HRESULT set_IsColorFontEnabled(bool value);
	HRESULT add_Paste(Windows.UI.Xaml.Controls.TextControlPasteEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_Paste(EventRegistrationToken token);
}

@uuid("7df18c3c-2826-425e-9a94-00b7f73f3756")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBox3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_TextCompositionStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox*,Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionStarted(EventRegistrationToken token);
	HRESULT add_TextCompositionChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox*,Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionChanged(EventRegistrationToken token);
	HRESULT add_TextCompositionEnded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox*,Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionEnded(EventRegistrationToken token);
	HRESULT get_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder* return_value);
	HRESULT set_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value);
	HRESULT get_DesiredCandidateWindowAlignment(Windows.UI.Xaml.Controls.CandidateWindowAlignment* return_value);
	HRESULT set_DesiredCandidateWindowAlignment(Windows.UI.Xaml.Controls.CandidateWindowAlignment value);
	HRESULT add_CandidateWindowBoundsChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox*,Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_CandidateWindowBoundsChanged(EventRegistrationToken token);
	HRESULT add_TextChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox*,Windows.UI.Xaml.Controls.TextBoxTextChangingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_TextChanging(EventRegistrationToken token);
}

@uuid("b5f1a675-cce1-45af-aef9-c4787bbb5e30")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBox4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetLinguisticAlternativesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_returnValue);
}

@uuid("35f9cfc1-4176-44f4-b756-e9ccc4399805")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBox5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectionHighlightColorWhenNotFocused(Windows.UI.Xaml.Media.SolidColorBrush* return_value);
	HRESULT set_SelectionHighlightColorWhenNotFocused(Windows.UI.Xaml.Media.SolidColorBrush value);
}

@uuid("710e4278-8529-47d3-8d8e-307e34cff081")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBoxFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.TextBox* return_instance);
}

@uuid("7e37f4fb-a4bc-4625-8838-8eb2a9091283")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBoxStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsReadOnlyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AcceptsReturnProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextWrappingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSpellCheckEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTextPredictionEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_InputScopeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7592f37d-4e76-4ee4-8e0f-7d6e1a23326b")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBoxStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaceholderTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SelectionHighlightColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PreventKeyboardDisplayOnProgrammaticFocusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsColorFontEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0e1005c0-10b5-40f6-92c2-ce134b0d3457")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBoxStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DesiredCandidateWindowAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextReadingOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("07d04b45-1b2f-4627-82fd-683f197e5a75")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBoxStatics5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectionHighlightColorWhenNotFocusedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c0723d44-53a6-415f-a981-50dfaf1becbe")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBoxTextChangingEventArgs")
interface ITextBoxTextChangingEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsContentChanging(bool* return_value);
}

@uuid("b9c7e0f2-50b7-441d-990c-68553e2e056b")
@WinrtFactory("Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs")
interface ITextCompositionChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartIndex(INT32* return_value);
	HRESULT get_Length(INT32* return_value);
}

@uuid("46e34db2-77c0-4015-8eb4-92eefdfc5914")
@WinrtFactory("Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs")
interface ITextCompositionEndedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartIndex(INT32* return_value);
	HRESULT get_Length(INT32* return_value);
}

@uuid("df22abb2-10cf-491e-91e8-d3cd72d8a0d3")
@WinrtFactory("Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs")
interface ITextCompositionStartedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartIndex(INT32* return_value);
	HRESULT get_Length(INT32* return_value);
}

@uuid("4bd1d625-221a-477e-bb2c-ad0c1ed125e7")
@WinrtFactory("Windows.UI.Xaml.Controls.TextControlPasteEventArgs")
interface ITextControlPasteEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("8ad3ff21-5f66-4785-b999-24fef39fb6db")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePickedEventArgs")
interface ITimePickedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OldTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_NewTime(Windows.Foundation.TimeSpan* return_value);
}

@uuid("e39099f2-3aff-4792-909e-2d9941ec0357")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePicker")
interface ITimePicker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_ClockIdentifier(HSTRING* return_value);
	HRESULT set_ClockIdentifier(HSTRING value);
	HRESULT get_MinuteIncrement(INT32* return_value);
	HRESULT set_MinuteIncrement(INT32 value);
	HRESULT get_Time(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Time(Windows.Foundation.TimeSpan value);
	HRESULT add_TimeChanged(Windows.Foundation.EventHandler!(Windows.UI.Xaml.Controls.TimePickerValueChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TimeChanged(EventRegistrationToken token);
}

@uuid("0ff0798c-f922-419f-8b3d-23ee7586d48e")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePicker")
interface ITimePicker2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("553fe413-6cd7-46a9-a97b-a18bdc4b4ca3")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePicker")
interface ITimePickerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.TimePicker* return_instance);
}

@uuid("bb739d75-e836-439e-86d5-506d2d18e404")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePickerFlyout")
interface ITimePickerFlyout : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ClockIdentifier(HSTRING* return_value);
	HRESULT set_ClockIdentifier(HSTRING value);
	HRESULT get_Time(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Time(Windows.Foundation.TimeSpan value);
	HRESULT get_MinuteIncrement(INT32* return_value);
	HRESULT set_MinuteIncrement(INT32 value);
	HRESULT add_TimePicked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TimePickerFlyout*,Windows.UI.Xaml.Controls.TimePickedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_TimePicked(EventRegistrationToken token);
	HRESULT abi_ShowAtAsync(Windows.UI.Xaml.FrameworkElement target, Windows.Foundation.IAsyncOperation!(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan))* return_returnValue);
}

@uuid("3f6728ce-2169-4003-b4a8-8de7035a0ad6")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePickerFlyout")
interface ITimePickerFlyoutStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ClockIdentifierProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinuteIncrementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fa71dfb1-233e-4f31-b8be-a6ea670c25cd")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePicker")
interface ITimePickerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ClockIdentifierProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinuteIncrementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("36d8abcd-4e10-451a-b93b-1a731ea7ee3f")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePicker")
interface ITimePickerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2f4edb8d-b995-4e31-8ba9-c4dcdeb21ca3")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePickerValueChangedEventArgs")
interface ITimePickerValueChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OldTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_NewTime(Windows.Foundation.TimeSpan* return_value);
}

@uuid("49841edd-88e9-4663-a701-cd4fd25e398f")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleMenuFlyoutItem")
interface IToggleMenuFlyoutItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsChecked(bool* return_value);
	HRESULT set_IsChecked(bool value);
}

@uuid("a151966f-3bf7-46b6-b61c-9b2c1ba68843")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleMenuFlyoutItem")
interface IToggleMenuFlyoutItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ToggleMenuFlyoutItem* return_instance);
}

@uuid("16c724fb-6c1a-4852-9258-08c038367907")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleMenuFlyoutItem")
interface IToggleMenuFlyoutItemStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsCheckedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("331d8f00-c5f9-46a5-b6c8-ede539304567")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleSwitch")
interface IToggleSwitch : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsOn(bool* return_value);
	HRESULT set_IsOn(bool value);
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
	HRESULT get_HeaderTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_HeaderTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_OnContent(IInspectable* return_value);
	HRESULT set_OnContent(IInspectable value);
	HRESULT get_OnContentTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_OnContentTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_OffContent(IInspectable* return_value);
	HRESULT set_OffContent(IInspectable value);
	HRESULT get_OffContentTemplate(Windows.UI.Xaml.DataTemplate* return_value);
	HRESULT set_OffContentTemplate(Windows.UI.Xaml.DataTemplate value);
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.ToggleSwitchTemplateSettings* return_value);
	HRESULT add_Toggled(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_Toggled(EventRegistrationToken token);
}

@uuid("bfd07f53-f8ca-4e47-949e-9e80429b3d16")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleSwitch")
interface IToggleSwitchOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnToggled();
	HRESULT abi_OnOnContentChanged(IInspectable oldContent, IInspectable newContent);
	HRESULT abi_OnOffContentChanged(IInspectable oldContent, IInspectable newContent);
	HRESULT abi_OnHeaderChanged(IInspectable oldContent, IInspectable newContent);
}

@uuid("1d37147f-97df-4226-92ca-ddf453d7fd5a")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleSwitch")
interface IToggleSwitchStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsOnProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OnContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OnContentTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OffContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OffContentTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7de5d75f-4415-429f-b523-699bdb8c30db")
@WinrtFactory("Windows.UI.Xaml.Controls.ToolTip")
interface IToolTip : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HorizontalOffset(double* return_value);
	HRESULT set_HorizontalOffset(double value);
	HRESULT get_IsOpen(bool* return_value);
	HRESULT set_IsOpen(bool value);
	HRESULT get_Placement(Windows.UI.Xaml.Controls.Primitives.PlacementMode* return_value);
	HRESULT set_Placement(Windows.UI.Xaml.Controls.Primitives.PlacementMode value);
	HRESULT get_PlacementTarget(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_PlacementTarget(Windows.UI.Xaml.UIElement value);
	HRESULT get_VerticalOffset(double* return_value);
	HRESULT set_VerticalOffset(double value);
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.ToolTipTemplateSettings* return_value);
	HRESULT add_Closed(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT add_Opened(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_Opened(EventRegistrationToken token);
}

@uuid("89839403-b538-49e3-a430-3ac037dc6fe0")
@WinrtFactory("Windows.UI.Xaml.Controls.ToolTip")
interface IToolTipFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ToolTip* return_instance);
}

@uuid("86e649f8-e245-48aa-a8c8-d1073ed76319")
@WinrtFactory("Windows.UI.Xaml.Controls.ToolTipService")
interface IToolTipServiceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetPlacement(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.Primitives.PlacementMode* return_value);
	HRESULT abi_SetPlacement(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.Primitives.PlacementMode value);
	HRESULT get_PlacementTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetPlacementTarget(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.UIElement* return_value);
	HRESULT abi_SetPlacementTarget(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.UIElement value);
	HRESULT get_ToolTipProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetToolTip(Windows.UI.Xaml.DependencyObject element, IInspectable* return_value);
	HRESULT abi_SetToolTip(Windows.UI.Xaml.DependencyObject element, IInspectable value);
}

@uuid("f00285b8-4ba9-4f4f-86a7-86003813ceb3")
@WinrtFactory("Windows.UI.Xaml.Controls.ToolTip")
interface IToolTipStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsOpenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlacementTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d6602d54-88f6-43f6-85d8-a9d914a6dd3b")
@WinrtFactory("Windows.UI.Xaml.Controls.UIElementCollection")
interface IUIElementCollection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Move(UINT32 oldIndex, UINT32 newIndex);
}

@uuid("a7a69ec9-ea35-4679-bf29-f4f09286d314")
@WinrtFactory("Windows.UI.Xaml.Controls.UserControl")
interface IUserControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Content(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Content(Windows.UI.Xaml.UIElement value);
}

@uuid("38b1ed92-a28a-4972-93df-f4f759b8afd2")
@WinrtFactory("Windows.UI.Xaml.Controls.UserControl")
interface IUserControlFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.UserControl* return_instance);
}

@uuid("e8887976-2c5c-41cf-be6a-9e44befdf655")
@WinrtFactory("Windows.UI.Xaml.Controls.UserControl")
interface IUserControlStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9ca507c7-23c9-4f01-b80f-be5c21eef474")
@WinrtFactory("Windows.UI.Xaml.Controls.VariableSizedWrapGrid")
interface IVariableSizedWrapGrid : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemHeight(double* return_value);
	HRESULT set_ItemHeight(double value);
	HRESULT get_ItemWidth(double* return_value);
	HRESULT set_ItemWidth(double value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT get_HorizontalChildrenAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value);
	HRESULT set_HorizontalChildrenAlignment(Windows.UI.Xaml.HorizontalAlignment value);
	HRESULT get_VerticalChildrenAlignment(Windows.UI.Xaml.VerticalAlignment* return_value);
	HRESULT set_VerticalChildrenAlignment(Windows.UI.Xaml.VerticalAlignment value);
	HRESULT get_MaximumRowsOrColumns(INT32* return_value);
	HRESULT set_MaximumRowsOrColumns(INT32 value);
}

@uuid("fe9db859-8127-4aef-b7a2-949847486e96")
@WinrtFactory("Windows.UI.Xaml.Controls.VariableSizedWrapGrid")
interface IVariableSizedWrapGridStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalChildrenAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalChildrenAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaximumRowsOrColumnsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RowSpanProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetRowSpan(Windows.UI.Xaml.UIElement element, INT32* return_value);
	HRESULT abi_SetRowSpan(Windows.UI.Xaml.UIElement element, INT32 value);
	HRESULT get_ColumnSpanProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetColumnSpan(Windows.UI.Xaml.UIElement element, INT32* return_value);
	HRESULT abi_SetColumnSpan(Windows.UI.Xaml.UIElement element, INT32 value);
}

@uuid("05252c58-ba9d-4809-9ec3-fa0d16710ba1")
@WinrtFactory("Windows.UI.Xaml.Controls.Viewbox")
interface IViewbox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Child(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Child(Windows.UI.Xaml.UIElement value);
	HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value);
	HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value);
	HRESULT get_StretchDirection(Windows.UI.Xaml.Controls.StretchDirection* return_value);
	HRESULT set_StretchDirection(Windows.UI.Xaml.Controls.StretchDirection value);
}

@uuid("5cd1e72d-e8d3-4865-8f08-b6b2d689adf1")
@WinrtFactory("Windows.UI.Xaml.Controls.Viewbox")
interface IViewboxStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchDirectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("38aad50c-12cf-4d1e-a884-c9df85f07cd9")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingPanel")
interface IVirtualizingPanel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemContainerGenerator(Windows.UI.Xaml.Controls.ItemContainerGenerator* return_value);
}

@uuid("5ef6bd7d-677f-408d-a96c-b19507750466")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingPanel")
interface IVirtualizingPanelOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnItemsChanged(IInspectable sender, Windows.UI.Xaml.Controls.Primitives.ItemsChangedEventArgs args);
	HRESULT abi_OnClearChildren();
	HRESULT abi_BringIndexIntoView(INT32 index);
}

@uuid("c9c9ab42-c232-479d-a7c9-5e7611196a45")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingPanel")
interface IVirtualizingPanelProtected : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddInternalChild(Windows.UI.Xaml.UIElement child);
	HRESULT abi_InsertInternalChild(INT32 index, Windows.UI.Xaml.UIElement child);
	HRESULT abi_RemoveInternalChildRange(INT32 index, INT32 range);
}

@uuid("7567cd9a-a3b4-4dea-bb11-549e2c2f919d")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingStackPanel")
interface IVirtualizingStackPanel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreScrollSnapPointsRegular(bool* return_value);
	HRESULT set_AreScrollSnapPointsRegular(bool value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT add_CleanUpVirtualizedItemEvent(Windows.UI.Xaml.Controls.CleanUpVirtualizedItemEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_CleanUpVirtualizedItemEvent(EventRegistrationToken token);
}

@uuid("cbe6f72c-2892-46d1-987f-58ca1081f040")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingStackPanel")
interface IVirtualizingStackPanelOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnCleanUpVirtualizedItem(Windows.UI.Xaml.Controls.CleanUpVirtualizedItemEventArgs e);
}

@uuid("8314e778-91d3-4d56-ac09-223adcd2bd3f")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingStackPanel")
interface IVirtualizingStackPanelStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreScrollSnapPointsRegularProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VirtualizationModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetVirtualizationMode(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.VirtualizationMode* return_value);
	HRESULT abi_SetVirtualizationMode(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Controls.VirtualizationMode value);
	HRESULT get_IsVirtualizingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsVirtualizing(Windows.UI.Xaml.DependencyObject o, bool* return_value);
}

@uuid("5862cc46-1f7d-479b-92a6-de7858fe8d54")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebView : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Source(Windows.Foundation.Uri* return_value);
	HRESULT set_Source(Windows.Foundation.Uri value);
	deprecated("AllowedScriptNotifyUris is unavailable for releases beginning with Windows 8.1. Instead, list URIs under ApplicationContentUriRules in the package manifest. For more info, see the AllowedScriptNotifyUris documentation.")
	HRESULT get_AllowedScriptNotifyUris(Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri)* return_value);
	deprecated("AllowedScriptNotifyUris is unavailable for releases beginning with Windows 8.1. Instead, list URIs under ApplicationContentUriRules in the package manifest. For more info, see the AllowedScriptNotifyUris documentation.")
	HRESULT set_AllowedScriptNotifyUris(Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri) value);
	deprecated("Use CaptureSelectedContentToDataPackageAsync instead of DataTransferPackage. For more info, see MSDN.")
	HRESULT get_DataTransferPackage(Windows.ApplicationModel.DataTransfer.DataPackage* return_value);
	deprecated("LoadCompleted may be altered or unavailable for releases after Windows 8.1. Instead, use NavigationCompleted.")
	HRESULT add_LoadCompleted(Windows.UI.Xaml.Navigation.LoadCompletedEventHandler* value, EventRegistrationToken* return_token);
	deprecated("LoadCompleted may be altered or unavailable for releases after Windows 8.1. Instead, use NavigationCompleted.")
	HRESULT remove_LoadCompleted(EventRegistrationToken token);
	HRESULT add_ScriptNotify(Windows.UI.Xaml.Controls.NotifyEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_ScriptNotify(EventRegistrationToken token);
	deprecated("NavigationFailed may be altered or unavailable for releases after Windows 8.1. Instead, use NavigationCompleted.")
	HRESULT add_NavigationFailed(Windows.UI.Xaml.Controls.WebViewNavigationFailedEventHandler* value, EventRegistrationToken* return_token);
	deprecated("NavigationFailed may be altered or unavailable for releases after Windows 8.1. Instead, use NavigationCompleted.")
	HRESULT remove_NavigationFailed(EventRegistrationToken token);
	deprecated("Use InvokeScriptAsync instead of InvokeScript. For more info, see MSDN.")
	HRESULT abi_InvokeScript(HSTRING scriptName, UINT32 __argumentsSize, HSTRING* arguments, HSTRING* return_returnValue);
	HRESULT abi_Navigate(Windows.Foundation.Uri source);
	HRESULT abi_NavigateToString(HSTRING text);
}

@uuid("d481759e-3eff-4462-823d-fd52f9ba4cc8")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebView2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanGoBack(bool* return_value);
	HRESULT get_CanGoForward(bool* return_value);
	HRESULT get_DocumentTitle(HSTRING* return_value);
	HRESULT add_NavigationStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_NavigationStarting(EventRegistrationToken token);
	HRESULT add_ContentLoading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_ContentLoading(EventRegistrationToken token);
	HRESULT add_DOMContentLoaded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_DOMContentLoaded(EventRegistrationToken token);
	HRESULT abi_GoForward();
	HRESULT abi_GoBack();
	HRESULT abi_Refresh();
	HRESULT abi_Stop();
	HRESULT abi_CapturePreviewToStreamAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.IAsyncAction* return_returnValue);
	HRESULT abi_InvokeScriptAsync(HSTRING scriptName, Windows.Foundation.Collections.IIterable!(HSTRING) arguments, Windows.Foundation.IAsyncOperation!(HSTRING)* return_returnValue);
	HRESULT abi_CaptureSelectedContentToDataPackageAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackage)* return_returnValue);
	HRESULT abi_NavigateToLocalStreamUri(Windows.Foundation.Uri source, Windows.Web.IUriToStreamResolver streamResolver);
	HRESULT abi_BuildLocalStreamUri(HSTRING contentIdentifier, HSTRING relativePath, Windows.Foundation.Uri* return_returnValue);
	HRESULT get_DefaultBackgroundColor(Windows.UI.Color* return_value);
	HRESULT set_DefaultBackgroundColor(Windows.UI.Color value);
	HRESULT add_NavigationCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_NavigationCompleted(EventRegistrationToken token);
	HRESULT add_FrameNavigationStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_FrameNavigationStarting(EventRegistrationToken token);
	HRESULT add_FrameContentLoading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_FrameContentLoading(EventRegistrationToken token);
	HRESULT add_FrameDOMContentLoaded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_FrameDOMContentLoaded(EventRegistrationToken token);
	HRESULT add_FrameNavigationCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_FrameNavigationCompleted(EventRegistrationToken token);
	HRESULT add_LongRunningScriptDetected(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewLongRunningScriptDetectedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_LongRunningScriptDetected(EventRegistrationToken token);
	HRESULT add_UnsafeContentWarningDisplaying(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT remove_UnsafeContentWarningDisplaying(EventRegistrationToken token);
	HRESULT add_UnviewableContentIdentified(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewUnviewableContentIdentifiedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_UnviewableContentIdentified(EventRegistrationToken token);
	HRESULT abi_NavigateWithHttpRequestMessage(Windows.Web.Http.HttpRequestMessage requestMessage);
	HRESULT abi_Focus(Windows.UI.Xaml.FocusState value, bool* return_returnValue);
}

@uuid("c497789b-b499-4d69-b5c2-ae9d5d6d594e")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebView3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContainsFullScreenElement(bool* return_value);
	HRESULT add_ContainsFullScreenElementChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT remove_ContainsFullScreenElementChanged(EventRegistrationToken token);
}

@uuid("e28243bc-67f3-462a-b4e0-3bbf6c3dab0b")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebView4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExecutionMode(Windows.UI.Xaml.Controls.WebViewExecutionMode* return_value);
	HRESULT get_DeferredPermissionRequests(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.WebViewDeferredPermissionRequest)* return_value);
	HRESULT get_Settings(Windows.UI.Xaml.Controls.WebViewSettings* return_value);
	HRESULT add_UnsupportedUriSchemeIdentified(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewUnsupportedUriSchemeIdentifiedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_UnsupportedUriSchemeIdentified(EventRegistrationToken token);
	HRESULT add_NewWindowRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewNewWindowRequestedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_NewWindowRequested(EventRegistrationToken token);
	HRESULT add_PermissionRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView*,Windows.UI.Xaml.Controls.WebViewPermissionRequestedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_PermissionRequested(EventRegistrationToken token);
	HRESULT abi_AddWebAllowedObject(HSTRING name, IInspectable pObject);
	HRESULT abi_DeferredPermissionRequestById(UINT32 id, Windows.UI.Xaml.Controls.WebViewDeferredPermissionRequest* return_returnValue);
}

@uuid("8c9884a6-2f3b-4a55-a463-8444c2095d00")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebView5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_XYFocusLeft(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_XYFocusLeft(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_XYFocusRight(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_XYFocusRight(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_XYFocusUp(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_XYFocusUp(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_XYFocusDown(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_XYFocusDown(Windows.UI.Xaml.DependencyObject value);
}

@uuid("40e86f75-0cf4-4b72-a4d6-cf5d15780116")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewBrush")
interface IWebViewBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SourceName(HSTRING* return_value);
	HRESULT set_SourceName(HSTRING value);
	HRESULT abi_Redraw();
	HRESULT abi_SetSource(Windows.UI.Xaml.Controls.WebView source);
}

@uuid("d74daa24-1d05-463e-b028-6baa4420e762")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewBrush")
interface IWebViewBrushStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SourceNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6e2980bb-98b8-413e-8129-971c6f7e4c8a")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs")
interface IWebViewContentLoadingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
}

@uuid("c47eba15-dc6b-4b36-9d80-82fb8817b988")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs")
interface IWebViewDOMContentLoadedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
}

@uuid("a3dcc461-7350-4d3a-8fb9-40eeec2746c2")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewDeferredPermissionRequest")
interface IWebViewDeferredPermissionRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_PermissionType(Windows.UI.Xaml.Controls.WebViewPermissionType* return_value);
	HRESULT get_Id(UINT32* return_value);
	HRESULT abi_Allow();
	HRESULT abi_Deny();
}

@uuid("82edac58-ee6a-4c9b-a3a0-9347a7d0ef4c")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebViewFactory4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithExecutionMode(Windows.UI.Xaml.Controls.WebViewExecutionMode executionMode, Windows.UI.Xaml.Controls.WebView* return_instance);
}

@uuid("f3f020ab-a46c-42b0-9efe-69764d5cffa6")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewLongRunningScriptDetectedEventArgs")
interface IWebViewLongRunningScriptDetectedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExecutionTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_StopPageScriptExecution(bool* return_value);
	HRESULT set_StopPageScriptExecution(bool value);
}

@uuid("11e6f20b-eba7-44c0-889b-edeb6a064ddd")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs")
interface IWebViewNavigationCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_IsSuccess(bool* return_value);
	HRESULT get_WebErrorStatus(Windows.Web.WebErrorStatus* return_value);
}

@uuid("af09609a-129c-4170-9e9c-e2cdf025dca4")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewNavigationFailedEventArgs")
interface IWebViewNavigationFailedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_WebErrorStatus(Windows.Web.WebErrorStatus* return_value);
}

@uuid("94cb8668-8367-43d5-91bb-96eba37ec784")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs")
interface IWebViewNavigationStartingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
}

@uuid("470fa818-6862-44d9-b3d1-c0696373de35")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewNewWindowRequestedEventArgs")
interface IWebViewNewWindowRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Referrer(Windows.Foundation.Uri* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("17b76332-66c4-4131-999e-df7de20a8c9c")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewPermissionRequest")
interface IWebViewPermissionRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_PermissionType(Windows.UI.Xaml.Controls.WebViewPermissionType* return_value);
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_State(Windows.UI.Xaml.Controls.WebViewPermissionState* return_value);
	HRESULT abi_Defer();
	HRESULT abi_Allow();
	HRESULT abi_Deny();
}

@uuid("dadecfd0-6e1e-473f-b0be-b02404d6a86d")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewPermissionRequestedEventArgs")
interface IWebViewPermissionRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PermissionRequest(Windows.UI.Xaml.Controls.WebViewPermissionRequest* return_value);
}

@uuid("1d50ad4d-abf6-4785-8df3-fdebc1270301")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewSettings")
interface IWebViewSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsJavaScriptEnabled(bool* return_value);
	HRESULT set_IsJavaScriptEnabled(bool value);
	HRESULT get_IsIndexedDBEnabled(bool* return_value);
	HRESULT set_IsIndexedDBEnabled(bool value);
}

@uuid("a0b561de-5fdb-443b-b9f0-5c30f6b7a1f4")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebViewStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("AnyScriptNotifyUri is unavailable for releases beginning with Windows 8.1. Instead, list URIs under ApplicationContentUriRules in the package manifest. For more info, see the AnyScriptNotifyUri documentation.")
	HRESULT get_AnyScriptNotifyUri(Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri)* return_value);
	HRESULT get_SourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("AllowedScriptNotifyUris is unavailable for releases beginning with Windows 8.1. Instead, list URIs under ApplicationContentUriRules in the package manifest. For more info, see the AllowedScriptNotifyUris documentation.")
	HRESULT get_AllowedScriptNotifyUrisProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	deprecated("Use CaptureSelectedContentToDataPackageAsync instead of DataTransferPackage. For more info, see MSDN.")
	HRESULT get_DataTransferPackageProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("322f8780-e812-466b-9e50-8e9fec24018a")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebViewStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanGoBackProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CanGoForwardProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DocumentTitleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DefaultBackgroundColorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("129bef8a-4509-4374-b0d1-a7104d0c3a2f")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebViewStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContainsFullScreenElementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("44b197b0-b746-40f3-9936-4ebbff6b47b8")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebViewStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DefaultExecutionMode(Windows.UI.Xaml.Controls.WebViewExecutionMode* return_value);
	HRESULT abi_ClearTemporaryWebDataAsync(Windows.Foundation.IAsyncAction* return_returnValue);
}

@uuid("08a0b8d1-508a-4db8-97ef-0fa505e19ec2")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebViewStatics5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_XYFocusLeftProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusRightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusUpProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusDownProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b9c9e1a7-620f-4895-935d-10fbac6fd29e")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewUnsupportedUriSchemeIdentifiedEventArgs")
interface IWebViewUnsupportedUriSchemeIdentifiedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("37bc16e1-6062-4678-b20b-6c36ac9c59ac")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewUnviewableContentIdentifiedEventArgs")
interface IWebViewUnviewableContentIdentifiedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Referrer(Windows.Foundation.Uri* return_value);
}

@uuid("9abe1154-36f0-4268-8d88-121eedf45e6a")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewUnviewableContentIdentifiedEventArgs")
interface IWebViewUnviewableContentIdentifiedEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MediaType(HSTRING* return_value);
}

@uuid("0552178b-7567-47c2-bd5c-ad8394c828ba")
@WinrtFactory("Windows.UI.Xaml.Controls.WrapGrid")
interface IWrapGrid : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemWidth(double* return_value);
	HRESULT set_ItemWidth(double value);
	HRESULT get_ItemHeight(double* return_value);
	HRESULT set_ItemHeight(double value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT get_HorizontalChildrenAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value);
	HRESULT set_HorizontalChildrenAlignment(Windows.UI.Xaml.HorizontalAlignment value);
	HRESULT get_VerticalChildrenAlignment(Windows.UI.Xaml.VerticalAlignment* return_value);
	HRESULT set_VerticalChildrenAlignment(Windows.UI.Xaml.VerticalAlignment value);
	HRESULT get_MaximumRowsOrColumns(INT32* return_value);
	HRESULT set_MaximumRowsOrColumns(INT32 value);
}

@uuid("d04a6b97-13cb-479c-a285-e4e56846c4cb")
@WinrtFactory("Windows.UI.Xaml.Controls.WrapGrid")
interface IWrapGridStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalChildrenAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalChildrenAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaximumRowsOrColumnsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

interface AppBar : Windows.UI.Xaml.Controls.ContentControl
{
}

interface AppBarButton : Windows.UI.Xaml.Controls.Button
{
}

interface AppBarSeparator : Windows.UI.Xaml.Controls.Control
{
}

interface AppBarToggleButton : Windows.UI.Xaml.Controls.Primitives.ToggleButton
{
}

interface AutoSuggestBox : Windows.UI.Xaml.Controls.ItemsControl
{
}

interface AutoSuggestBoxQuerySubmittedEventArgs : Windows.UI.Xaml.DependencyObject
{
}

interface AutoSuggestBoxSuggestionChosenEventArgs : Windows.UI.Xaml.DependencyObject
{
}

interface AutoSuggestBoxTextChangedEventArgs : Windows.UI.Xaml.DependencyObject
{
}

interface BackClickEventArgs
{
}

interface BitmapIcon : Windows.UI.Xaml.Controls.IconElement
{
}

interface Border : Windows.UI.Xaml.FrameworkElement
{
}

interface Button : Windows.UI.Xaml.Controls.Primitives.ButtonBase
{
}

interface CalendarDatePicker : Windows.UI.Xaml.Controls.Control
{
}

interface CalendarDatePickerDateChangedEventArgs
{
}

interface CalendarView : Windows.UI.Xaml.Controls.Control
{
}

interface CalendarViewDayItem : Windows.UI.Xaml.Controls.Control
{
}

interface CalendarViewDayItemChangingEventArgs
{
}

interface CalendarViewSelectedDatesChangedEventArgs
{
}

interface CandidateWindowBoundsChangedEventArgs
{
}

interface Canvas : Windows.UI.Xaml.Controls.Panel
{
}

interface CaptureElement : Windows.UI.Xaml.FrameworkElement
{
}

interface CheckBox : Windows.UI.Xaml.Controls.Primitives.ToggleButton
{
}

interface ChoosingGroupHeaderContainerEventArgs
{
}

interface ChoosingItemContainerEventArgs
{
}

interface CleanUpVirtualizedItemEventArgs : Windows.UI.Xaml.RoutedEventArgs
{
}

interface ColumnDefinition : Windows.UI.Xaml.DependencyObject
{
}

interface ColumnDefinitionCollection
{
}

interface ComboBox : Windows.UI.Xaml.Controls.Primitives.Selector
{
}

interface ComboBoxItem : Windows.UI.Xaml.Controls.Primitives.SelectorItem
{
}

interface CommandBar : Windows.UI.Xaml.Controls.AppBar
{
}

interface CommandBarOverflowPresenter : Windows.UI.Xaml.Controls.ItemsControl
{
}

interface ContainerContentChangingEventArgs
{
}

interface ContentControl : Windows.UI.Xaml.Controls.Control
{
}

interface ContentDialog : Windows.UI.Xaml.Controls.ContentControl
{
}

interface ContentDialogButtonClickDeferral
{
}

interface ContentDialogButtonClickEventArgs
{
}

interface ContentDialogClosedEventArgs
{
}

interface ContentDialogClosingDeferral
{
}

interface ContentDialogClosingEventArgs
{
}

interface ContentDialogOpenedEventArgs
{
}

interface ContentPresenter : Windows.UI.Xaml.FrameworkElement
{
}

interface ContextMenuEventArgs : Windows.UI.Xaml.RoutedEventArgs
{
}

interface Control : Windows.UI.Xaml.FrameworkElement
{
}

interface ControlTemplate : Windows.UI.Xaml.FrameworkTemplate
{
}

interface DataTemplateSelector
{
}

interface DatePickedEventArgs : Windows.UI.Xaml.DependencyObject
{
}

interface DatePicker : Windows.UI.Xaml.Controls.Control
{
}

interface DatePickerFlyout : Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase
{
}

interface DatePickerFlyoutItem : Windows.UI.Xaml.DependencyObject
{
}

interface DatePickerFlyoutPresenter : Windows.UI.Xaml.Controls.Control
{
}

interface DatePickerValueChangedEventArgs
{
}

interface DragItemsCompletedEventArgs
{
}

interface DragItemsStartingEventArgs
{
}

interface DynamicOverflowItemsChangingEventArgs
{
}

interface FlipView : Windows.UI.Xaml.Controls.Primitives.Selector
{
}

interface FlipViewItem : Windows.UI.Xaml.Controls.Primitives.SelectorItem
{
}

interface Flyout : Windows.UI.Xaml.Controls.Primitives.FlyoutBase
{
}

interface FlyoutPresenter : Windows.UI.Xaml.Controls.ContentControl
{
}

interface FocusDisengagedEventArgs : Windows.UI.Xaml.RoutedEventArgs
{
}

interface FocusEngagedEventArgs : Windows.UI.Xaml.RoutedEventArgs
{
}

interface FontIcon : Windows.UI.Xaml.Controls.IconElement
{
}

interface Frame : Windows.UI.Xaml.Controls.ContentControl
{
}

interface Grid : Windows.UI.Xaml.Controls.Panel
{
}

interface GridView : Windows.UI.Xaml.Controls.ListViewBase
{
}

interface GridViewHeaderItem : Windows.UI.Xaml.Controls.ListViewBaseHeaderItem
{
}

interface GridViewItem : Windows.UI.Xaml.Controls.Primitives.SelectorItem
{
}

interface GroupItem : Windows.UI.Xaml.Controls.ContentControl
{
}

interface GroupStyle
{
}

interface GroupStyleSelector
{
}

interface Hub : Windows.UI.Xaml.Controls.Control
{
}

interface HubSection : Windows.UI.Xaml.Controls.Control
{
}

interface HubSectionCollection
{
}

interface HubSectionHeaderClickEventArgs
{
}

interface HyperlinkButton : Windows.UI.Xaml.Controls.Primitives.ButtonBase
{
}

interface IconElement : Windows.UI.Xaml.FrameworkElement
{
}

interface Image : Windows.UI.Xaml.FrameworkElement
{
}

interface InkCanvas : Windows.UI.Xaml.FrameworkElement
{
}

interface InkToolbar : Windows.UI.Xaml.Controls.Control
{
}

interface InkToolbarBallpointPenButton : Windows.UI.Xaml.Controls.InkToolbarPenButton
{
}

interface InkToolbarCustomPen : Windows.UI.Xaml.DependencyObject
{
}

interface InkToolbarCustomPenButton : Windows.UI.Xaml.Controls.InkToolbarPenButton
{
}

interface InkToolbarCustomToggleButton : Windows.UI.Xaml.Controls.InkToolbarToggleButton
{
}

interface InkToolbarCustomToolButton : Windows.UI.Xaml.Controls.InkToolbarToolButton
{
}

interface InkToolbarEraserButton : Windows.UI.Xaml.Controls.InkToolbarToolButton
{
}

interface InkToolbarFlyoutItem : Windows.UI.Xaml.Controls.Primitives.ButtonBase
{
}

interface InkToolbarHighlighterButton : Windows.UI.Xaml.Controls.InkToolbarPenButton
{
}

interface InkToolbarIsStencilButtonCheckedChangedEventArgs
{
}

interface InkToolbarMenuButton : Windows.UI.Xaml.Controls.Primitives.ToggleButton
{
}

interface InkToolbarPenButton : Windows.UI.Xaml.Controls.InkToolbarToolButton
{
}

interface InkToolbarPenConfigurationControl : Windows.UI.Xaml.Controls.Control
{
}

interface InkToolbarPencilButton : Windows.UI.Xaml.Controls.InkToolbarPenButton
{
}

interface InkToolbarRulerButton : Windows.UI.Xaml.Controls.InkToolbarToggleButton
{
}

interface InkToolbarStencilButton : Windows.UI.Xaml.Controls.InkToolbarMenuButton
{
}

interface InkToolbarToggleButton : Windows.UI.Xaml.Controls.CheckBox
{
}

interface InkToolbarToolButton : Windows.UI.Xaml.Controls.RadioButton
{
}

interface ItemClickEventArgs : Windows.UI.Xaml.RoutedEventArgs
{
}

interface ItemCollection
{
}

interface ItemContainerGenerator
{
}

interface ItemsControl : Windows.UI.Xaml.Controls.Control
{
}

interface ItemsPanelTemplate : Windows.UI.Xaml.FrameworkTemplate
{
}

interface ItemsPickedEventArgs : Windows.UI.Xaml.DependencyObject
{
}

interface ItemsPresenter : Windows.UI.Xaml.FrameworkElement
{
}

interface ItemsStackPanel : Windows.UI.Xaml.Controls.Panel
{
}

interface ItemsWrapGrid : Windows.UI.Xaml.Controls.Panel
{
}

interface ListBox : Windows.UI.Xaml.Controls.Primitives.Selector
{
}

interface ListBoxItem : Windows.UI.Xaml.Controls.Primitives.SelectorItem
{
}

interface ListPickerFlyout : Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase
{
}

interface ListPickerFlyoutPresenter : Windows.UI.Xaml.Controls.Control
{
}

interface ListView : Windows.UI.Xaml.Controls.ListViewBase
{
}

interface ListViewBase : Windows.UI.Xaml.Controls.Primitives.Selector
{
}

interface ListViewBaseHeaderItem : Windows.UI.Xaml.Controls.ContentControl
{
}

interface ListViewHeaderItem : Windows.UI.Xaml.Controls.ListViewBaseHeaderItem
{
}

interface ListViewItem : Windows.UI.Xaml.Controls.Primitives.SelectorItem
{
}

interface ListViewPersistenceHelper
{
}

interface MediaElement : Windows.UI.Xaml.FrameworkElement
{
}

interface MediaPlayerElement : Windows.UI.Xaml.Controls.Control
{
}

interface MediaPlayerPresenter : Windows.UI.Xaml.FrameworkElement
{
}

interface MediaTransportControls : Windows.UI.Xaml.Controls.Control
{
}

interface MediaTransportControlsHelper
{
}

interface MenuFlyout : Windows.UI.Xaml.Controls.Primitives.FlyoutBase
{
}

interface MenuFlyoutItem : Windows.UI.Xaml.Controls.MenuFlyoutItemBase
{
}

interface MenuFlyoutItemBase : Windows.UI.Xaml.Controls.Control
{
}

interface MenuFlyoutPresenter : Windows.UI.Xaml.Controls.ItemsControl
{
}

interface MenuFlyoutSeparator : Windows.UI.Xaml.Controls.MenuFlyoutItemBase
{
}

interface MenuFlyoutSubItem : Windows.UI.Xaml.Controls.MenuFlyoutItemBase
{
}

interface NotifyEventArgs
{
}

interface Page : Windows.UI.Xaml.Controls.UserControl
{
}

interface Panel : Windows.UI.Xaml.FrameworkElement
{
}

interface PasswordBox : Windows.UI.Xaml.Controls.Control
{
}

interface PathIcon : Windows.UI.Xaml.Controls.IconElement
{
}

interface PickerConfirmedEventArgs : Windows.UI.Xaml.DependencyObject
{
}

interface PickerFlyout : Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase
{
}

interface PickerFlyoutPresenter : Windows.UI.Xaml.Controls.ContentControl
{
}

interface Pivot : Windows.UI.Xaml.Controls.ItemsControl
{
}

interface PivotItem : Windows.UI.Xaml.Controls.ContentControl
{
}

interface PivotItemEventArgs
{
}

interface ProgressBar : Windows.UI.Xaml.Controls.Primitives.RangeBase
{
}

interface ProgressRing : Windows.UI.Xaml.Controls.Control
{
}

interface RadioButton : Windows.UI.Xaml.Controls.Primitives.ToggleButton
{
}

interface RelativePanel : Windows.UI.Xaml.Controls.Panel
{
}

interface RichEditBox : Windows.UI.Xaml.Controls.Control
{
}

interface RichEditBoxTextChangingEventArgs
{
}

interface RichTextBlock : Windows.UI.Xaml.FrameworkElement
{
}

interface RichTextBlockOverflow : Windows.UI.Xaml.FrameworkElement
{
}

interface RowDefinition : Windows.UI.Xaml.DependencyObject
{
}

interface RowDefinitionCollection
{
}

interface ScrollContentPresenter : Windows.UI.Xaml.Controls.ContentPresenter
{
}

interface ScrollViewer : Windows.UI.Xaml.Controls.ContentControl
{
}

interface ScrollViewerView
{
}

interface ScrollViewerViewChangedEventArgs
{
}

interface ScrollViewerViewChangingEventArgs
{
}

interface SearchBox : Windows.UI.Xaml.Controls.Control
{
}

interface SearchBoxQueryChangedEventArgs
{
}

interface SearchBoxQuerySubmittedEventArgs
{
}

interface SearchBoxResultSuggestionChosenEventArgs
{
}

interface SearchBoxSuggestionsRequestedEventArgs
{
}

interface SectionsInViewChangedEventArgs
{
}

interface SelectionChangedEventArgs : Windows.UI.Xaml.RoutedEventArgs
{
}

interface SemanticZoom : Windows.UI.Xaml.Controls.Control
{
}

interface SemanticZoomLocation
{
}

interface SemanticZoomViewChangedEventArgs
{
}

interface SettingsFlyout : Windows.UI.Xaml.Controls.ContentControl
{
}

interface Slider : Windows.UI.Xaml.Controls.Primitives.RangeBase
{
}

interface SplitView : Windows.UI.Xaml.Controls.Control
{
}

interface SplitViewPaneClosingEventArgs
{
}

interface StackPanel : Windows.UI.Xaml.Controls.Panel
{
}

interface StyleSelector
{
}

interface SwapChainBackgroundPanel : Windows.UI.Xaml.Controls.Grid
{
}

interface SwapChainPanel : Windows.UI.Xaml.Controls.Grid
{
}

interface SymbolIcon : Windows.UI.Xaml.Controls.IconElement
{
}

interface TextBlock : Windows.UI.Xaml.FrameworkElement
{
}

interface TextBox : Windows.UI.Xaml.Controls.Control
{
}

interface TextBoxTextChangingEventArgs
{
}

interface TextChangedEventArgs : Windows.UI.Xaml.RoutedEventArgs
{
}

interface TextCompositionChangedEventArgs
{
}

interface TextCompositionEndedEventArgs
{
}

interface TextCompositionStartedEventArgs
{
}

interface TextControlPasteEventArgs
{
}

interface TimePickedEventArgs : Windows.UI.Xaml.DependencyObject
{
}

interface TimePicker : Windows.UI.Xaml.Controls.Control
{
}

interface TimePickerFlyout : Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase
{
}

interface TimePickerFlyoutPresenter : Windows.UI.Xaml.Controls.Control
{
}

interface TimePickerValueChangedEventArgs
{
}

interface ToggleMenuFlyoutItem : Windows.UI.Xaml.Controls.MenuFlyoutItem
{
}

interface ToggleSwitch : Windows.UI.Xaml.Controls.Control
{
}

interface ToolTip : Windows.UI.Xaml.Controls.ContentControl
{
}

interface ToolTipService
{
}

interface UIElementCollection
{
}

interface UserControl : Windows.UI.Xaml.Controls.Control
{
}

interface VariableSizedWrapGrid : Windows.UI.Xaml.Controls.Panel
{
}

interface Viewbox : Windows.UI.Xaml.FrameworkElement
{
}

interface VirtualizingPanel : Windows.UI.Xaml.Controls.Panel
{
}

interface VirtualizingStackPanel : Windows.UI.Xaml.Controls.Primitives.OrientedVirtualizingPanel
{
}

interface WebView : Windows.UI.Xaml.FrameworkElement
{
}

interface WebViewBrush : Windows.UI.Xaml.Media.TileBrush
{
}

interface WebViewContentLoadingEventArgs
{
}

interface WebViewDOMContentLoadedEventArgs
{
}

interface WebViewDeferredPermissionRequest
{
}

interface WebViewLongRunningScriptDetectedEventArgs
{
}

interface WebViewNavigationCompletedEventArgs
{
}

interface WebViewNavigationFailedEventArgs
{
}

interface WebViewNavigationStartingEventArgs
{
}

interface WebViewNewWindowRequestedEventArgs
{
}

interface WebViewPermissionRequest
{
}

interface WebViewPermissionRequestedEventArgs
{
}

interface WebViewSettings
{
}

interface WebViewUnsupportedUriSchemeIdentifiedEventArgs
{
}

interface WebViewUnviewableContentIdentifiedEventArgs
{
}

interface WrapGrid : Windows.UI.Xaml.Controls.Primitives.OrientedVirtualizingPanel
{
}

enum AppBarClosedDisplayMode
{
	Compact = 0,
	Minimal = 1,
	Hidden = 2
}

enum AutoSuggestionBoxTextChangeReason
{
	UserInput = 0,
	ProgrammaticChange = 1,
	SuggestionChosen = 2
}

enum CalendarViewDisplayMode
{
	Month = 0,
	Year = 1,
	Decade = 2
}

enum CalendarViewSelectionMode
{
	None = 0,
	Single = 1,
	Multiple = 2
}

enum CandidateWindowAlignment
{
	Default = 0,
	BottomEdge = 1
}

enum ClickMode
{
	Release = 0,
	Press = 1,
	Hover = 2
}

enum ComboBoxSelectionChangedTrigger
{
	Committed = 0,
	Always = 1
}

enum CommandBarDefaultLabelPosition
{
	Bottom = 0,
	Right = 1,
	Collapsed = 2
}

enum CommandBarDynamicOverflowAction
{
	AddingToOverflow = 0,
	RemovingFromOverflow = 1
}

enum CommandBarLabelPosition
{
	Default = 0,
	Collapsed = 1
}

enum CommandBarOverflowButtonVisibility
{
	Auto = 0,
	Visible = 1,
	Collapsed = 2
}

enum ContentDialogButton
{
	None = 0,
	Primary = 1,
	Secondary = 2,
	Close = 3
}

enum ContentDialogResult
{
	None = 0,
	Primary = 1,
	Secondary = 2
}

enum IncrementalLoadingTrigger
{
	None = 0,
	Edge = 1
}

enum InkToolbarButtonFlyoutPlacement
{
	Auto = 0,
	Top = 1,
	Bottom = 2,
	Left = 3,
	Right = 4
}

enum InkToolbarFlyoutItemKind
{
	Simple = 0,
	Radio = 1,
	Check = 2,
	RadioCheck = 3
}

enum InkToolbarInitialControls
{
	All = 0,
	None = 1,
	PensOnly = 2,
	AllExceptPens = 3
}

enum InkToolbarMenuKind
{
	Stencil = 0
}

enum InkToolbarStencilKind
{
	Ruler = 0,
	Protractor = 1
}

enum InkToolbarToggle
{
	Ruler = 0,
	Custom = 1
}

enum InkToolbarTool
{
	BallpointPen = 0,
	Pencil = 1,
	Highlighter = 2,
	Eraser = 3,
	CustomPen = 4,
	CustomTool = 5
}

enum ItemsUpdatingScrollMode
{
	KeepItemsInView = 0,
	KeepScrollOffset = 1,
	KeepLastItemInView = 2
}

enum LightDismissOverlayMode
{
	Auto = 0,
	On = 1,
	Off = 2
}

enum ListPickerFlyoutSelectionMode
{
	Single = 0,
	Multiple = 1
}

enum ListViewReorderMode
{
	Disabled = 0,
	Enabled = 1
}

enum ListViewSelectionMode
{
	None = 0,
	Single = 1,
	Multiple = 2,
	Extended = 3
}

enum Orientation
{
	Vertical = 0,
	Horizontal = 1
}

enum PanelScrollingDirection
{
	None = 0,
	Forward = 1,
	Backward = 2
}

enum PasswordRevealMode
{
	Peek = 0,
	Hidden = 1,
	Visible = 2
}

enum PivotHeaderFocusVisualPlacement
{
	ItemHeaders = 0,
	SelectedItemHeader = 1
}

enum PivotSlideInAnimationGroup
{
	Default = 0,
	GroupOne = 1,
	GroupTwo = 2,
	GroupThree = 3
}

enum RequiresPointer
{
	Never = 0,
	WhenEngaged = 1,
	WhenFocused = 2
}

enum RichEditClipboardFormat
{
	AllFormats = 0,
	PlainText = 1
}

enum ScrollBarVisibility
{
	Disabled = 0,
	Auto = 1,
	Hidden = 2,
	Visible = 3
}

enum ScrollIntoViewAlignment
{
	Default = 0,
	Leading = 1
}

enum ScrollMode
{
	Disabled = 0,
	Enabled = 1,
	Auto = 2
}

enum SelectionMode
{
	Single = 0,
	Multiple = 1,
	Extended = 2
}

enum SnapPointsType
{
	None = 0,
	Optional = 1,
	Mandatory = 2,
	OptionalSingle = 3,
	MandatorySingle = 4
}

enum SplitViewDisplayMode
{
	Overlay = 0,
	Inline = 1,
	CompactOverlay = 2,
	CompactInline = 3
}

enum SplitViewPanePlacement
{
	Left = 0,
	Right = 1
}

enum StretchDirection
{
	UpOnly = 0,
	DownOnly = 1,
	Both = 2
}

enum Symbol
{
	Previous = 57600,
	Next = 57601,
	Play = 57602,
	Pause = 57603,
	Edit = 57604,
	Save = 57605,
	Clear = 57606,
	Delete = 57607,
	Remove = 57608,
	Add = 57609,
	Cancel = 57610,
	Accept = 57611,
	More = 57612,
	Redo = 57613,
	Undo = 57614,
	Home = 57615,
	Up = 57616,
	Forward = 57617,
	Back = 57618,
	Favorite = 57619,
	Camera = 57620,
	Setting = 57621,
	Video = 57622,
	Sync = 57623,
	Download = 57624,
	Mail = 57625,
	Find = 57626,
	Help = 57627,
	Upload = 57628,
	Emoji = 57629,
	TwoPage = 57630,
	LeaveChat = 57631,
	MailForward = 57632,
	Clock = 57633,
	Send = 57634,
	Crop = 57635,
	RotateCamera = 57636,
	People = 57637,
	OpenPane = 57638,
	ClosePane = 57639,
	World = 57640,
	Flag = 57641,
	PreviewLink = 57642,
	Globe = 57643,
	Trim = 57644,
	AttachCamera = 57645,
	ZoomIn = 57646,
	Bookmarks = 57647,
	Document = 57648,
	ProtectedDocument = 57649,
	Page = 57650,
	Bullets = 57651,
	Comment = 57652,
	MailFilled = 57653,
	ContactInfo = 57654,
	HangUp = 57655,
	ViewAll = 57656,
	MapPin = 57657,
	Phone = 57658,
	VideoChat = 57659,
	Switch = 57660,
	Contact = 57661,
	Rename = 57662,
	Pin = 57665,
	MusicInfo = 57666,
	Go = 57667,
	Keyboard = 57668,
	DockLeft = 57669,
	DockRight = 57670,
	DockBottom = 57671,
	Remote = 57672,
	Refresh = 57673,
	Rotate = 57674,
	Shuffle = 57675,
	List = 57676,
	Shop = 57677,
	SelectAll = 57678,
	Orientation = 57679,
	Import = 57680,
	ImportAll = 57681,
	BrowsePhotos = 57685,
	WebCam = 57686,
	Pictures = 57688,
	SaveLocal = 57689,
	Caption = 57690,
	Stop = 57691,
	ShowResults = 57692,
	Volume = 57693,
	Repair = 57694,
	Message = 57695,
	Page2 = 57696,
	CalendarDay = 57697,
	CalendarWeek = 57698,
	Calendar = 57699,
	Character = 57700,
	MailReplyAll = 57701,
	Read = 57702,
	Link = 57703,
	Account = 57704,
	ShowBcc = 57705,
	HideBcc = 57706,
	Cut = 57707,
	Attach = 57708,
	Paste = 57709,
	Filter = 57710,
	Copy = 57711,
	Emoji2 = 57712,
	Important = 57713,
	MailReply = 57714,
	SlideShow = 57715,
	Sort = 57716,
	Manage = 57720,
	AllApps = 57721,
	DisconnectDrive = 57722,
	MapDrive = 57723,
	NewWindow = 57724,
	OpenWith = 57725,
	ContactPresence = 57729,
	Priority = 57730,
	GoToToday = 57732,
	Font = 57733,
	FontColor = 57734,
	Contact2 = 57735,
	Folder = 57736,
	Audio = 57737,
	Placeholder = 57738,
	View = 57739,
	SetLockScreen = 57740,
	SetTile = 57741,
	ClosedCaption = 57744,
	StopSlideShow = 57745,
	Permissions = 57746,
	Highlight = 57747,
	DisableUpdates = 57748,
	UnFavorite = 57749,
	UnPin = 57750,
	OpenLocal = 57751,
	Mute = 57752,
	Italic = 57753,
	Underline = 57754,
	Bold = 57755,
	MoveToFolder = 57756,
	LikeDislike = 57757,
	Dislike = 57758,
	Like = 57759,
	AlignRight = 57760,
	AlignCenter = 57761,
	AlignLeft = 57762,
	Zoom = 57763,
	ZoomOut = 57764,
	OpenFile = 57765,
	OtherUser = 57766,
	Admin = 57767,
	Street = 57795,
	Map = 57796,
	ClearSelection = 57797,
	FontDecrease = 57798,
	FontIncrease = 57799,
	FontSize = 57800,
	CellPhone = 57801,
	ReShare = 57802,
	Tag = 57803,
	RepeatOne = 57804,
	RepeatAll = 57805,
	OutlineStar = 57806,
	SolidStar = 57807,
	Calculator = 57808,
	Directions = 57809,
	Target = 57810,
	Library = 57811,
	PhoneBook = 57812,
	Memo = 57813,
	Microphone = 57814,
	PostUpdate = 57815,
	BackToWindow = 57816,
	FullScreen = 57817,
	NewFolder = 57818,
	CalendarReply = 57819,
	UnSyncFolder = 57821,
	ReportHacked = 57822,
	SyncFolder = 57823,
	BlockContact = 57824,
	SwitchApps = 57825,
	AddFriend = 57826,
	TouchPointer = 57827,
	GoToStart = 57828,
	ZeroBars = 57829,
	OneBar = 57830,
	TwoBars = 57831,
	ThreeBars = 57832,
	FourBars = 57833,
	Scan = 58004,
	Preview = 58005
}

enum VirtualizationMode
{
	Standard = 0,
	Recycling = 1
}

enum WebViewExecutionMode
{
	SameThread = 0,
	SeparateThread = 1
}

enum WebViewPermissionState
{
	Unknown = 0,
	Defer = 1,
	Allow = 2,
	Deny = 3
}

enum WebViewPermissionType
{
	Geolocation = 0,
	UnlimitedIndexedDBQuota = 1,
	Media = 2,
	PointerLock = 3,
	WebNotifications = 4
}

enum ZoomMode
{
	Disabled = 0,
	Enabled = 1
}