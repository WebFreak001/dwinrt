module Windows.UI.Xaml.Controls;

import dwinrt;

@uuid("fa9bc21f-9892-482e-abf6-eb2d607d32de")
interface BackClickEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.BackClickEventArgs e);
}

@uuid("8d745891-4de3-49cb-974b-083871a3afe6")
interface CalendarViewDayItemChangingEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.UI.Xaml.Controls.CalendarView sender, Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs e);
}

@uuid("cacad0d6-0f0d-4870-884d-f2dedf674288")
interface CleanUpVirtualizedItemEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.CleanUpVirtualizedItemEventArgs e);
}

@uuid("df945151-745c-4446-b2fc-216d765847a0")
interface ContextMenuOpeningEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.ContextMenuEventArgs e);
}

@uuid("3aaeab4c-14cb-4434-becc-88a8585c2f89")
interface DragItemsStartingEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.DragItemsStartingEventArgs e);
}

@uuid("afe17b9b-9c63-4583-88e4-c59019b7f49d")
interface HubSectionHeaderClickEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.HubSectionHeaderClickEventArgs e);
}

@uuid("3df6d14e-e18a-4a75-9395-627c5f3cd489")
interface ItemClickEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.ItemClickEventArgs e);
}

@uuid("6af5da76-7e8b-4a91-9a56-460cb47d523f")
interface ListViewItemToKeyHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable item, HSTRING* return_returnValue);
}

@uuid("26fd5855-b530-4688-b9f0-428249178ef8")
interface ListViewKeyToItemHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(HSTRING key, Windows.Foundation.IAsyncOperation!(IInspectable)* return_returnValue);
}

@uuid("c2fdd1f8-7105-4a74-a109-de29dff56b98")
interface NotifyEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.NotifyEventArgs e);
}

@uuid("6becaa6a-63f8-47ff-b6ac-76e7da247d67")
interface SectionsInViewChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.SectionsInViewChangedEventArgs e);
}

@uuid("e1a05352-5aa0-42ca-9cd9-068a14db6e68")
interface SelectionChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.SelectionChangedEventArgs e);
}

@uuid("1fa9161d-5d73-44fb-81ac-d1c9384919d4")
interface SemanticZoomViewChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.SemanticZoomViewChangedEventArgs e);
}

@uuid("8eb35b97-ad87-40e8-818b-77db24759566")
interface TextChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.TextChangedEventArgs e);
}

@uuid("d56db359-6f77-4296-ab9c-794939444365")
interface TextControlPasteEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.TextControlPasteEventArgs e);
}

@uuid("a31eafe1-41dc-47f8-ae22-9706c8f143d4")
interface WebViewNavigationFailedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Controls.WebViewNavigationFailedEventArgs e);
}

@uuid("7b0fc253-86a5-4b43-9872-0b8a6234b74b")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBar : IInspectable
{
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
extern(Windows):
	HRESULT get_ClosedDisplayMode(Windows.UI.Xaml.Controls.AppBarClosedDisplayMode* return_value);
	HRESULT set_ClosedDisplayMode(Windows.UI.Xaml.Controls.AppBarClosedDisplayMode value);
}

@uuid("982b001f-752e-4e7a-b055-54802c9ea749")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBar3 : IInspectable
{
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
extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("4459a451-69e8-440c-9896-4bb4f5f642d1")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarButton")
interface IAppBarButton : IInspectable
{
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
extern(Windows):
	HRESULT get_LabelPosition(Windows.UI.Xaml.Controls.CommandBarLabelPosition* return_value);
	HRESULT set_LabelPosition(Windows.UI.Xaml.Controls.CommandBarLabelPosition value);
}

@uuid("bdbb1bb6-cb2e-4276-abd6-7935130510e0")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarButton")
interface IAppBarButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.AppBarButton* return_instance);
}

@uuid("7ccd13e6-5301-407f-874e-dc9160aa07af")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarButton")
interface IAppBarButtonStatics : IInspectable
{
extern(Windows):
	HRESULT get_LabelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IconProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsCompactProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4d7bf314-2ede-4328-8906-752a1f27cdfa")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarButton")
interface IAppBarButtonStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_LabelPositionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsInOverflowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DynamicOverflowOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("614708d1-8e65-43cb-92d7-8eee17515f8d")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.AppBar* return_instance);
}

@uuid("f003e4e2-7b0f-4f4a-970d-ae8a0eaa9b70")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnClosed(IInspectable e);
	HRESULT abi_OnOpened(IInspectable e);
}

@uuid("412bbbc8-51d0-4b49-ab62-a3dd6bdcb298")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarOverrides3 : IInspectable
{
extern(Windows):
	HRESULT abi_OnClosing(IInspectable e);
	HRESULT abi_OnOpening(IInspectable e);
}

@uuid("1b0795a1-1bc1-4d53-95ea-fb0a2cccc905")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarSeparator")
interface IAppBarSeparator : IInspectable
{
}

@uuid("05da25cd-f407-48de-8b50-ff87d1e2818f")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarSeparator")
interface IAppBarSeparatorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.AppBarSeparator* return_instance);
}

@uuid("37f23484-5b35-4663-a75d-f2d50cb9c619")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarSeparator")
interface IAppBarSeparatorStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsCompactProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("36c753f9-7373-4e5e-9ba4-c3622a003c4e")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarSeparator")
interface IAppBarSeparatorStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_IsInOverflowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DynamicOverflowOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("79bb7e8d-dca9-4b5f-a448-37b13238ed76")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsOpenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsStickyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("222355e9-0384-49de-8738-dfc9d409ac5d")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_ClosedDisplayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ba02082e-1165-4451-94b3-eb3ac73e4196")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBar")
interface IAppBarStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2e914438-fd53-4b8d-858b-3644269f8e4d")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarToggleButton")
interface IAppBarToggleButton : IInspectable
{
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
extern(Windows):
	HRESULT get_LabelPosition(Windows.UI.Xaml.Controls.CommandBarLabelPosition* return_value);
	HRESULT set_LabelPosition(Windows.UI.Xaml.Controls.CommandBarLabelPosition value);
}

@uuid("028aa7d4-8f54-45a6-9f90-13605656d793")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarToggleButton")
interface IAppBarToggleButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.AppBarToggleButton* return_instance);
}

@uuid("fe5aaf96-7929-4da1-aa67-cddf73a3e4b5")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarToggleButton")
interface IAppBarToggleButtonStatics : IInspectable
{
extern(Windows):
	HRESULT get_LabelProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IconProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsCompactProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("bd4c65bf-2edd-44d1-acd5-35c00e2f21bc")
@WinrtFactory("Windows.UI.Xaml.Controls.AppBarToggleButton")
interface IAppBarToggleButtonStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_LabelPositionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsInOverflowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DynamicOverflowOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("103e9b13-3400-4a16-90b9-6912bf06974f")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBox : IInspectable
{
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
	HRESULT add_SuggestionChosen(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxSuggestionChosenEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_SuggestionChosen(EventRegistrationToken token);
	HRESULT add_TextChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxTextChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TextChanged(EventRegistrationToken token);
}

@uuid("aa87ddde-e679-45b2-a7c9-9aedc39db886")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBox2 : IInspectable
{
extern(Windows):
	HRESULT get_QueryIcon(Windows.UI.Xaml.Controls.IconElement* return_value);
	HRESULT set_QueryIcon(Windows.UI.Xaml.Controls.IconElement value);
	HRESULT add_QuerySubmitted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxQuerySubmittedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_QuerySubmitted(EventRegistrationToken token);
}

@uuid("9bbbfcef-f32d-402e-9009-05bdbaf6336e")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBox3 : IInspectable
{
extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("78dcb116-818a-4cb5-bca7-382ce6ddc90d")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBoxQuerySubmittedEventArgs")
interface IAutoSuggestBoxQuerySubmittedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_QueryText(HSTRING* return_value);
	HRESULT get_ChosenSuggestion(IInspectable* return_value);
}

@uuid("ee22c7f4-c15d-4ff3-8a94-f50dfdfbe89a")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBoxStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_QueryIconProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2cead2dd-c4d5-4ab2-8a13-afddcf067c86")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBox")
interface IAutoSuggestBoxStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("396f7254-1ed5-4bc5-a060-655530bca6ba")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBoxSuggestionChosenEventArgs")
interface IAutoSuggestBoxSuggestionChosenEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SelectedItem(IInspectable* return_value);
}

@uuid("3a6f7254-1ed5-4bc5-a060-655530bca6ba")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBoxTextChangedEventArgs")
interface IAutoSuggestBoxTextChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.UI.Xaml.Controls.AutoSuggestionBoxTextChangeReason* return_value);
	HRESULT set_Reason(Windows.UI.Xaml.Controls.AutoSuggestionBoxTextChangeReason value);
	HRESULT abi_CheckCurrent(bool* return_returnValue);
}

@uuid("fef7772b-9f45-44db-8c27-bda3f933e7b5")
@WinrtFactory("Windows.UI.Xaml.Controls.AutoSuggestBoxTextChangedEventArgs")
interface IAutoSuggestBoxTextChangedEventArgsStatics : IInspectable
{
extern(Windows):
	HRESULT get_ReasonProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2ae6146c-477e-48c9-8830-2c464b7c7104")
@WinrtFactory("Windows.UI.Xaml.Controls.BackClickEventArgs")
interface IBackClickEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("e8fe17cb-35f7-40f3-a185-48b397b73e68")
@WinrtFactory("Windows.UI.Xaml.Controls.BitmapIcon")
interface IBitmapIcon : IInspectable
{
extern(Windows):
	HRESULT get_UriSource(Windows.Foundation.Uri* return_value);
	HRESULT set_UriSource(Windows.Foundation.Uri value);
}

@uuid("0624a20a-9dd1-4201-bb20-42863da15658")
@WinrtFactory("Windows.UI.Xaml.Controls.BitmapIcon")
interface IBitmapIcon2 : IInspectable
{
extern(Windows):
	HRESULT get_ShowAsMonochrome(bool* return_value);
	HRESULT set_ShowAsMonochrome(bool value);
}

@uuid("46d64b1d-7a49-4f66-9729-2848c788e402")
@WinrtFactory("Windows.UI.Xaml.Controls.BitmapIcon")
interface IBitmapIconFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.BitmapIcon* return_instance);
}

@uuid("e072d117-e4e7-4e0c-9470-53ff1ce84f67")
@WinrtFactory("Windows.UI.Xaml.Controls.BitmapIcon")
interface IBitmapIconStatics : IInspectable
{
extern(Windows):
	HRESULT get_UriSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9745026b-b742-4a89-a5d7-a0e5fb809af1")
@WinrtFactory("Windows.UI.Xaml.Controls.BitmapIcon")
interface IBitmapIconStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_ShowAsMonochromeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("797c4539-45bd-4633-a044-bfb02ef5170f")
@WinrtFactory("Windows.UI.Xaml.Controls.Border")
interface IBorder : IInspectable
{
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
extern(Windows):
	HRESULT get_BorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CornerRadiusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ChildTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("280335ae-5570-46c7-8e0b-602be71229a2")
@WinrtFactory("Windows.UI.Xaml.Controls.Button")
interface IButton : IInspectable
{
}

@uuid("80a13c19-843a-451c-8cf5-44c701b0e216")
@WinrtFactory("Windows.UI.Xaml.Controls.Button")
interface IButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Button* return_instance);
}

@uuid("90143898-a16c-4759-b2f0-a5f7e625169e")
@WinrtFactory("Windows.UI.Xaml.Controls.Button")
interface IButtonStaticsWithFlyout : IInspectable
{
extern(Windows):
	HRESULT get_FlyoutProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("09108f87-df6c-4180-9b3a-e60845825811")
@WinrtFactory("Windows.UI.Xaml.Controls.Button")
interface IButtonWithFlyout : IInspectable
{
extern(Windows):
	HRESULT get_Flyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase* return_value);
	HRESULT set_Flyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase value);
}

@uuid("63c9c16f-668c-4491-9444-d45d8bf4fa29")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarDatePicker")
interface ICalendarDatePicker : IInspectable
{
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
	HRESULT add_CalendarViewDayItemChanging(Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_CalendarViewDayItemChanging(EventRegistrationToken token);
	HRESULT add_DateChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarDatePicker, Windows.UI.Xaml.Controls.CalendarDatePickerDateChangedEventArgs) value, EventRegistrationToken* return_token);
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
extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("60d90db2-5010-46ba-842d-a4152c6504e7")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarDatePickerDateChangedEventArgs")
interface ICalendarDatePickerDateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_NewDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_OldDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("107aad5d-38be-42af-a957-fc86a5cf1e9a")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarDatePicker")
interface ICalendarDatePickerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CalendarDatePicker* return_instance);
}

@uuid("39a3d291-afab-4b94-8395-ba7b874e3c8c")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarDatePicker")
interface ICalendarDatePickerStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cd639203-dfb5-4312-ac07-c0391824607b")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarView")
interface ICalendarView : IInspectable
{
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
	HRESULT add_CalendarViewDayItemChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_CalendarViewDayItemChanging(EventRegistrationToken token);
	HRESULT add_SelectedDatesChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewSelectedDatesChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_SelectedDatesChanged(EventRegistrationToken token);
	HRESULT abi_SetDisplayDate(Windows.Foundation.DateTime date);
	HRESULT abi_SetYearDecadeDisplayDimensions(INT32 columns, INT32 rows);
}

@uuid("0fdb2dc5-32c1-4b8f-befc-017b555b32d2")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarViewDayItem")
interface ICalendarViewDayItem : IInspectable
{
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
extern(Windows):
	HRESULT get_InRecycleQueue(bool* return_value);
	HRESULT get_Item(Windows.UI.Xaml.Controls.CalendarViewDayItem* return_value);
	HRESULT get_Phase(UINT32* return_value);
	HRESULT abi_RegisterUpdateCallback(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs) callback);
	HRESULT abi_RegisterUpdateCallbackWithPhase(UINT32 callbackPhase, Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs) callback);
}

@uuid("62112bdc-1d2f-4e44-9baf-1665749521f2")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarViewDayItem")
interface ICalendarViewDayItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CalendarViewDayItem* return_instance);
}

@uuid("c3a1dbbf-bd88-488b-b916-d00d69b1735a")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarViewDayItem")
interface ICalendarViewDayItemStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsBlackoutProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3d8f82e3-6cc6-423e-8d7c-7014d954ddef")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarView")
interface ICalendarViewFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CalendarView* return_instance);
}

@uuid("ee6069f6-13ef-4896-8ffc-5302b1b17539")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarViewSelectedDatesChangedEventArgs")
interface ICalendarViewSelectedDatesChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AddedDates(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_RemovedDates(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.DateTime)* return_value);
}

@uuid("7260f1c4-2f5d-41bd-99bb-4571b20b79a8")
@WinrtFactory("Windows.UI.Xaml.Controls.CalendarView")
interface ICalendarViewStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_Bounds(Windows.Foundation.Rect* return_value);
}

@uuid("79190e19-cd38-4823-aeae-64a77132f519")
@WinrtFactory("Windows.UI.Xaml.Controls.Canvas")
interface ICanvas : IInspectable
{
}

@uuid("1b328bd1-b400-4a8e-943b-5ad2c45be0df")
@WinrtFactory("Windows.UI.Xaml.Controls.Canvas")
interface ICanvasFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Canvas* return_instance);
}

@uuid("40ce5c46-2962-446f-aafb-4cdc486939c9")
@WinrtFactory("Windows.UI.Xaml.Controls.Canvas")
interface ICanvasStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_SourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2294c894-7e2a-4b70-b088-8f5d814875ba")
@WinrtFactory("Windows.UI.Xaml.Controls.CheckBox")
interface ICheckBox : IInspectable
{
}

@uuid("4fa6aabb-3f4b-4301-be07-1172ea61eefb")
@WinrtFactory("Windows.UI.Xaml.Controls.CheckBox")
interface ICheckBoxFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CheckBox* return_instance);
}

@uuid("67db44d6-d201-4d72-beac-5e8e58afd8c7")
@WinrtFactory("Windows.UI.Xaml.Controls.ChoosingGroupHeaderContainerEventArgs")
interface IChoosingGroupHeaderContainerEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_WidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b9a8d05c-ac97-47f1-a5f4-3f9f4d4b116c")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBox : IInspectable
{
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
extern(Windows):
	HRESULT get_SelectionChangedTrigger(Windows.UI.Xaml.Controls.ComboBoxSelectionChangedTrigger* return_value);
	HRESULT set_SelectionChangedTrigger(Windows.UI.Xaml.Controls.ComboBoxSelectionChangedTrigger value);
}

@uuid("ac0d0444-a65b-4abd-86df-3016049efedc")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ComboBox* return_instance);
}

@uuid("993fd6d2-2aae-4f3b-b44d-5648f4d06114")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBoxItem")
interface IComboBoxItem : IInspectable
{
}

@uuid("8fffe867-d94c-4e87-8fc4-6ebcd63c5ac2")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBoxItem")
interface IComboBoxItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ComboBoxItem* return_instance);
}

@uuid("4f016541-bcfe-4a22-8932-c914981c2240")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnDropDownClosed(IInspectable e);
	HRESULT abi_OnDropDownOpened(IInspectable e);
}

@uuid("3e14c9b1-d15b-4dc9-8110-cf3a117b96e7")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsDropDownOpenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxDropDownHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("93988a11-402c-4b13-96d1-7220266b9220")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PlaceholderTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("949e140f-ce7f-4e41-bdc5-d1d3388ad0a6")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTextSearchEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d9f58358-f7b0-46ce-8061-ad83ec2f2dd4")
@WinrtFactory("Windows.UI.Xaml.Controls.ComboBox")
interface IComboBoxStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_SelectionChangedTriggerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("98bc4280-4a3d-4cee-bd07-22ce94c5af76")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBar : IInspectable
{
extern(Windows):
	HRESULT get_PrimaryCommands(Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.ICommandBarElement)* return_value);
	HRESULT get_SecondaryCommands(Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.ICommandBarElement)* return_value);
}

@uuid("57662f58-5b32-475d-be64-4ca36e7b97d4")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBar2 : IInspectable
{
extern(Windows):
	HRESULT get_CommandBarOverflowPresenterStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_CommandBarOverflowPresenterStyle(Windows.UI.Xaml.Style value);
	HRESULT get_CommandBarTemplateSettings(Windows.UI.Xaml.Controls.Primitives.CommandBarTemplateSettings* return_value);
}

@uuid("40ebbc23-2a79-48b3-9a67-649b852d8589")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBar3 : IInspectable
{
extern(Windows):
	HRESULT get_DefaultLabelPosition(Windows.UI.Xaml.Controls.CommandBarDefaultLabelPosition* return_value);
	HRESULT set_DefaultLabelPosition(Windows.UI.Xaml.Controls.CommandBarDefaultLabelPosition value);
	HRESULT get_OverflowButtonVisibility(Windows.UI.Xaml.Controls.CommandBarOverflowButtonVisibility* return_value);
	HRESULT set_OverflowButtonVisibility(Windows.UI.Xaml.Controls.CommandBarOverflowButtonVisibility value);
	HRESULT get_IsDynamicOverflowEnabled(bool* return_value);
	HRESULT set_IsDynamicOverflowEnabled(bool value);
	HRESULT add_DynamicOverflowItemsChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CommandBar, Windows.UI.Xaml.Controls.DynamicOverflowItemsChangingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_DynamicOverflowItemsChanging(EventRegistrationToken token);
}

@uuid("67918e1b-f2d5-44d1-8b84-92b87f80a350")
interface ICommandBarElement : IInspectable
{
extern(Windows):
	HRESULT get_IsCompact(bool* return_value);
	HRESULT set_IsCompact(bool value);
}

@uuid("a9bf1236-4402-4688-b987-9d2b9b7bf2bd")
interface ICommandBarElement2 : IInspectable
{
extern(Windows):
	HRESULT get_IsInOverflow(bool* return_value);
	HRESULT get_DynamicOverflowOrder(INT32* return_value);
	HRESULT set_DynamicOverflowOrder(INT32 value);
}

@uuid("67bdeb44-20e1-4177-ad44-f617b374e8e8")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBarFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CommandBar* return_instance);
}

@uuid("6e7a9427-58ef-4366-a017-18c193d56b14")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBarOverflowPresenter")
interface ICommandBarOverflowPresenter : IInspectable
{
}

@uuid("8323f774-5aaa-4049-b78f-218c6a19c37e")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBarOverflowPresenter")
interface ICommandBarOverflowPresenterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.CommandBarOverflowPresenter* return_instance);
}

@uuid("5bd981ea-e278-409c-b522-f946ca253b44")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBarStatics : IInspectable
{
extern(Windows):
	HRESULT get_PrimaryCommandsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SecondaryCommandsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3d9ec8e3-51a9-4e34-956c-7081d06f26f8")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBarStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_CommandBarOverflowPresenterStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b45a24a4-8af1-4843-b319-e03fc45ab726")
@WinrtFactory("Windows.UI.Xaml.Controls.CommandBar")
interface ICommandBarStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_DefaultLabelPositionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OverflowButtonVisibilityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsDynamicOverflowEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("07deeaa7-018f-4dda-b399-fd4e13a31bea")
@WinrtFactory("Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs")
interface IContainerContentChangingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ItemContainer(Windows.UI.Xaml.Controls.Primitives.SelectorItem* return_value);
	HRESULT get_InRecycleQueue(bool* return_value);
	HRESULT get_ItemIndex(INT32* return_value);
	HRESULT get_Item(IInspectable* return_value);
	HRESULT get_Phase(UINT32* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT abi_RegisterUpdateCallback(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs) callback);
	HRESULT abi_RegisterUpdateCallbackWithPhase(UINT32 callbackPhase, Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs) callback);
}

@uuid("a26dd1dc-cd44-435c-be94-01d6241c231c")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentControl")
interface IContentControl : IInspectable
{
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
extern(Windows):
	HRESULT get_ContentTemplateRoot(Windows.UI.Xaml.UIElement* return_value);
}

@uuid("ab017b19-196e-4ed5-a27f-55c58fb1673f")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentControl")
interface IContentControlFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ContentControl* return_instance);
}

@uuid("5f4c0b10-e38e-4b5d-be1a-5ed04246a635")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentControl")
interface IContentControlOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnContentChanged(IInspectable oldContent, IInspectable newContent);
	HRESULT abi_OnContentTemplateChanged(Windows.UI.Xaml.DataTemplate oldContentTemplate, Windows.UI.Xaml.DataTemplate newContentTemplate);
	HRESULT abi_OnContentTemplateSelectorChanged(Windows.UI.Xaml.Controls.DataTemplateSelector oldContentTemplateSelector, Windows.UI.Xaml.Controls.DataTemplateSelector newContentTemplateSelector);
}

@uuid("116982a4-5cf5-4c05-a53f-15e4876c85ec")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentControl")
interface IContentControlStatics : IInspectable
{
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
	HRESULT add_Closing(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogClosingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_Closing(EventRegistrationToken token);
	HRESULT add_Closed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogClosedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT add_Opened(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogOpenedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_Opened(EventRegistrationToken token);
	HRESULT add_PrimaryButtonClick(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_PrimaryButtonClick(EventRegistrationToken token);
	HRESULT add_SecondaryButtonClick(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_SecondaryButtonClick(EventRegistrationToken token);
	HRESULT abi_Hide();
	HRESULT abi_ShowAsync(Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Controls.ContentDialogResult)* return_returnValue);
}

@uuid("2f93eb45-ee43-4303-9b38-3fe1a111ecbf")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialog")
interface IContentDialog2 : IInspectable
{
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
	HRESULT add_CloseButtonClick(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_CloseButtonClick(EventRegistrationToken token);
}

@uuid("bd0d3637-19ce-4946-8e77-bd03fe8ebe03")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogButtonClickDeferral")
interface IContentDialogButtonClickDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("5f34c205-8afa-4cf2-8ca0-264d73bed63d")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs")
interface IContentDialogButtonClickEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
	HRESULT abi_GetDeferral(Windows.UI.Xaml.Controls.ContentDialogButtonClickDeferral* return_returnValue);
}

@uuid("905522ef-2cba-4af8-b666-cc36c22732fb")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogClosedEventArgs")
interface IContentDialogClosedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Result(Windows.UI.Xaml.Controls.ContentDialogResult* return_value);
}

@uuid("215d4d11-7e30-4cb9-a710-5a4f9cca8b42")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogClosingDeferral")
interface IContentDialogClosingDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("db3c1c34-3bbf-47d4-be4f-c9ec115918b9")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogClosingEventArgs")
interface IContentDialogClosingEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ContentDialog* return_instance);
}

@uuid("0966b315-5f59-4999-9e3e-374c0f174b04")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialogOpenedEventArgs")
interface IContentDialogOpenedEventArgs : IInspectable
{
}

@uuid("23ab47a6-508a-4f33-b786-f2fa96d869af")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentDialog")
interface IContentDialogStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("997b1b17-3bf8-432b-8fd9-68c7bab21f9d")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenter4 : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ContentPresenter* return_instance);
}

@uuid("a76339ed-32ff-438b-aad5-1d68fae93426")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenterOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnContentTemplateChanged(Windows.UI.Xaml.DataTemplate oldContentTemplate, Windows.UI.Xaml.DataTemplate newContentTemplate);
	HRESULT abi_OnContentTemplateSelectorChanged(Windows.UI.Xaml.Controls.DataTemplateSelector oldContentTemplateSelector, Windows.UI.Xaml.Controls.DataTemplateSelector newContentTemplateSelector);
}

@uuid("18c2893b-da2e-4426-b85a-2c7e2171bedf")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenterStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_OpticalMarginAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextLineBoundsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cbe6cf5b-38b1-4d5d-b098-bc94b35c8ddf")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenterStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ff8be292-af28-47eb-a5c3-dc44ced40fd2")
@WinrtFactory("Windows.UI.Xaml.Controls.ContentPresenter")
interface IContentPresenterStatics4 : IInspectable
{
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
	HRESULT add_IsEnabledChanged(Windows.UI.Xaml.DependencyPropertyChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_IsEnabledChanged(EventRegistrationToken token);
	HRESULT abi_ApplyTemplate(bool* return_returnValue);
	HRESULT abi_Focus(Windows.UI.Xaml.FocusState value, bool* return_returnValue);
}

@uuid("43e0fe10-14ec-427e-8c57-dee60df60aa8")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControl2 : IInspectable
{
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("077b29e4-dade-4f55-9b96-09e21b28eb1c")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControl3 : IInspectable
{
extern(Windows):
	HRESULT get_UseSystemFocusVisuals(bool* return_value);
	HRESULT set_UseSystemFocusVisuals(bool value);
}

@uuid("0e18aeee-5f2e-44ea-8513-d3875c0a7513")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControl4 : IInspectable
{
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
	HRESULT add_FocusEngaged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.FocusEngagedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_FocusEngaged(EventRegistrationToken token);
	HRESULT add_FocusDisengaged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.FocusDisengagedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_FocusDisengaged(EventRegistrationToken token);
	HRESULT abi_RemoveFocusEngagement();
}

@uuid("5ebb51d5-9e58-49b7-bc2d-0155ff118664")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControl5 : IInspectable
{
extern(Windows):
	HRESULT get_DefaultStyleResourceUri(Windows.Foundation.Uri* return_value);
	HRESULT set_DefaultStyleResourceUri(Windows.Foundation.Uri value);
}

@uuid("b12b1d5a-6419-4e16-b212-a45336b75778")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Control* return_instance);
}

@uuid("a09691df-9824-41fe-b530-b0d8990e64c1")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlOverrides : IInspectable
{
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
extern(Windows):
	HRESULT get_DefaultStyleKey(IInspectable* return_value);
	HRESULT set_DefaultStyleKey(IInspectable value);
	HRESULT abi_GetTemplateChild(HSTRING childName, Windows.UI.Xaml.DependencyObject* return_returnValue);
}

@uuid("473b305b-877d-4c35-8fca-46a05f96607a")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("aad15e61-e4b9-4d72-b653-934149aa5003")
@WinrtFactory("Windows.UI.Xaml.Controls.Control")
interface IControlStatics3 : IInspectable
{
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
extern(Windows):
	HRESULT get_TargetType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT set_TargetType(Windows.UI.Xaml.Interop.TypeName value);
}

@uuid("a907d496-46a0-4cd7-8dbe-f9a581df60b1")
@WinrtFactory("Windows.UI.Xaml.Controls.DataTemplateSelector")
interface IDataTemplateSelector : IInspectable
{
extern(Windows):
	HRESULT abi_SelectTemplate(IInspectable item, Windows.UI.Xaml.DependencyObject container, Windows.UI.Xaml.DataTemplate* return_returnValue);
}

@uuid("3792bc47-8c4b-4257-a5ae-cc3f8ed786eb")
@WinrtFactory("Windows.UI.Xaml.Controls.DataTemplateSelector")
interface IDataTemplateSelector2 : IInspectable
{
extern(Windows):
	HRESULT abi_SelectTemplateForItem(IInspectable item, Windows.UI.Xaml.DataTemplate* return_returnValue);
}

@uuid("511baad0-210a-457d-9521-433d2b11b7d2")
@WinrtFactory("Windows.UI.Xaml.Controls.DataTemplateSelector")
interface IDataTemplateSelectorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.DataTemplateSelector* return_instance);
}

@uuid("2d162925-5966-4bfa-8638-4d345689f6cf")
@WinrtFactory("Windows.UI.Xaml.Controls.DataTemplateSelector")
interface IDataTemplateSelectorOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_SelectTemplateCore(IInspectable item, Windows.UI.Xaml.DependencyObject container, Windows.UI.Xaml.DataTemplate* return_returnValue);
}

@uuid("6c3fb5fc-8e84-4c91-ac15-04a1d885500f")
@WinrtFactory("Windows.UI.Xaml.Controls.DataTemplateSelector")
interface IDataTemplateSelectorOverrides2 : IInspectable
{
extern(Windows):
	HRESULT abi_SelectTemplateForItemCore(IInspectable item, Windows.UI.Xaml.DataTemplate* return_returnValue);
}

@uuid("a1527b12-59c1-4521-b28c-b176675e7c5a")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickedEventArgs")
interface IDatePickedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_NewDate(Windows.Foundation.DateTime* return_value);
}

@uuid("06da3946-08b8-4103-8b8a-093efd6a7657")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePicker")
interface IDatePicker : IInspectable
{
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
extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("eec3ca84-9896-4a7d-bb35-6fb21eaeca11")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePicker")
interface IDatePickerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.DatePicker* return_instance);
}

@uuid("fbf33b1a-a3a4-4df8-9228-23a5ac27df4e")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerFlyout")
interface IDatePickerFlyout : IInspectable
{
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
	HRESULT add_DatePicked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.DatePickerFlyout, Windows.UI.Xaml.Controls.DatePickedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_DatePicked(EventRegistrationToken token);
	HRESULT abi_ShowAtAsync(Windows.UI.Xaml.FrameworkElement target, Windows.Foundation.IAsyncOperation!(Windows.Foundation.IReference!(Windows.Foundation.DateTime))* return_returnValue);
}

@uuid("cfb18dbb-9931-4119-8bda-54a86fdfac84")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerFlyout")
interface IDatePickerFlyout2 : IInspectable
{
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
extern(Windows):
	HRESULT get_PrimaryTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SecondaryTextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7c62f70e-2ddc-4381-832f-54cbdfaa849a")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerFlyoutPresenter")
interface IDatePickerFlyoutPresenter : IInspectable
{
}

@uuid("cd570377-5845-4c12-8c10-592d9fcc7cd9")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerFlyout")
interface IDatePickerFlyoutStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_DayFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MonthFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_YearFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("182e7c69-2116-4c67-b513-713364831d79")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePicker")
interface IDatePickerStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("1ae661b2-b1b4-4273-96e0-19daff187446")
@WinrtFactory("Windows.UI.Xaml.Controls.DatePickerValueChangedEventArgs")
interface IDatePickerValueChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldDate(Windows.Foundation.DateTime* return_value);
	HRESULT get_NewDate(Windows.Foundation.DateTime* return_value);
}

@uuid("af05f22f-9e78-4b21-9a8e-41c2d1367a2a")
@WinrtFactory("Windows.UI.Xaml.Controls.DragItemsCompletedEventArgs")
interface IDragItemsCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVectorView!(IInspectable)* return_value);
	HRESULT get_DropResult(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
}

@uuid("71cf215c-daed-4783-aa11-dc574d2713e9")
@WinrtFactory("Windows.UI.Xaml.Controls.DragItemsStartingEventArgs")
interface IDragItemsStartingEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_Action(Windows.UI.Xaml.Controls.CommandBarDynamicOverflowAction* return_value);
}

@uuid("a1582f68-3d7d-4d3b-b71d-488eed1e3493")
@WinrtFactory("Windows.UI.Xaml.Controls.FlipView")
interface IFlipView : IInspectable
{
}

@uuid("c4fea4fd-7af3-4952-9fd9-9e0987fc4f29")
@WinrtFactory("Windows.UI.Xaml.Controls.FlipView")
interface IFlipView2 : IInspectable
{
extern(Windows):
	HRESULT get_UseTouchAnimationsForAllNavigation(bool* return_value);
	HRESULT set_UseTouchAnimationsForAllNavigation(bool value);
}

@uuid("f1dea9be-9ae8-4d4b-ab43-16d31e05f4f3")
@WinrtFactory("Windows.UI.Xaml.Controls.FlipView")
interface IFlipViewFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.FlipView* return_instance);
}

@uuid("56196565-ce2b-4bda-a36b-82a2b8b0d4c0")
@WinrtFactory("Windows.UI.Xaml.Controls.FlipViewItem")
interface IFlipViewItem : IInspectable
{
}

@uuid("f21d91fe-22a0-4412-a853-9d6a6e8f2aaf")
@WinrtFactory("Windows.UI.Xaml.Controls.FlipViewItem")
interface IFlipViewItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.FlipViewItem* return_instance);
}

@uuid("70e3d93f-4308-4ba2-bbce-e2cb0ed34476")
@WinrtFactory("Windows.UI.Xaml.Controls.FlipView")
interface IFlipViewStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_UseTouchAnimationsForAllNavigationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6584ebdf-cbc7-4e19-843a-a14f24a793ea")
@WinrtFactory("Windows.UI.Xaml.Controls.Flyout")
interface IFlyout : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Flyout* return_instance);
}

@uuid("827d5b79-e37b-46a5-8d44-63a11a580e83")
@WinrtFactory("Windows.UI.Xaml.Controls.FlyoutPresenter")
interface IFlyoutPresenter : IInspectable
{
}

@uuid("ee4d668f-da76-469a-acd7-3060e613ade7")
@WinrtFactory("Windows.UI.Xaml.Controls.FlyoutPresenter")
interface IFlyoutPresenterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.FlyoutPresenter* return_instance);
}

@uuid("61364e0b-db75-47e1-b2c3-5b901c3d74b6")
@WinrtFactory("Windows.UI.Xaml.Controls.Flyout")
interface IFlyoutStatics : IInspectable
{
extern(Windows):
	HRESULT get_ContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FlyoutPresenterStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("5e14280f-953e-4cf8-b9ea-c530a1ce02ad")
@WinrtFactory("Windows.UI.Xaml.Controls.FocusDisengagedEventArgs")
interface IFocusDisengagedEventArgs : IInspectable
{
}

@uuid("a69fc352-da66-404c-823f-5358594e70bb")
@WinrtFactory("Windows.UI.Xaml.Controls.FocusEngagedEventArgs")
interface IFocusEngagedEventArgs : IInspectable
{
}

@uuid("4a59e0f4-87c0-4ccd-93c4-a3a01ce39265")
@WinrtFactory("Windows.UI.Xaml.Controls.FocusEngagedEventArgs")
interface IFocusEngagedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("d4d61391-39ac-4950-9166-3606c264418b")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIcon : IInspectable
{
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
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("6155d919-1c6c-4950-8794-231ef0914d94")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIcon3 : IInspectable
{
extern(Windows):
	HRESULT get_MirroredWhenRightToLeft(bool* return_value);
	HRESULT set_MirroredWhenRightToLeft(bool value);
}

@uuid("1c781b6b-37bf-4ddc-a1a8-1b77db3cf0ea")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIconFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.FontIcon* return_instance);
}

@uuid("b3be7bf6-1467-4086-bbcb-4e21d97a7b4d")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIconStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a4528b17-b084-4bd5-aab4-feae9d3b5d26")
@WinrtFactory("Windows.UI.Xaml.Controls.FontIcon")
interface IFontIconStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_MirroredWhenRightToLeftProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("68ea500b-3fe9-4735-b6a0-e7601933b089")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrame : IInspectable
{
extern(Windows):
	HRESULT get_CacheSize(INT32* return_value);
	HRESULT set_CacheSize(INT32 value);
	HRESULT get_CanGoBack(bool* return_value);
	HRESULT get_CanGoForward(bool* return_value);
	HRESULT get_CurrentSourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT get_SourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT set_SourcePageType(Windows.UI.Xaml.Interop.TypeName value);
	HRESULT get_BackStackDepth(INT32* return_value);
	HRESULT add_Navigated(Windows.UI.Xaml.Navigation.NavigatedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Navigated(EventRegistrationToken token);
	HRESULT add_Navigating(Windows.UI.Xaml.Navigation.NavigatingCancelEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Navigating(EventRegistrationToken token);
	HRESULT add_NavigationFailed(Windows.UI.Xaml.Navigation.NavigationFailedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_NavigationFailed(EventRegistrationToken token);
	HRESULT add_NavigationStopped(Windows.UI.Xaml.Navigation.NavigationStoppedEventHandler value, EventRegistrationToken* return_token);
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
extern(Windows):
	HRESULT get_BackStack(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Navigation.PageStackEntry)* return_value);
	HRESULT get_ForwardStack(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Navigation.PageStackEntry)* return_value);
	HRESULT abi_Navigate(Windows.UI.Xaml.Interop.TypeName sourcePageType, IInspectable parameter, Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo infoOverride, bool* return_returnValue);
}

@uuid("648a2b4d-53ca-4b5a-aa8e-3cc7440f4a67")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrame3 : IInspectable
{
extern(Windows):
	HRESULT abi_GoBack(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo transitionInfoOverride);
}

@uuid("9b17c21a-bd2b-4a00-99eb-946be9618084")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrame4 : IInspectable
{
extern(Windows):
	HRESULT abi_SetNavigationStateWithNavigationControl(HSTRING navigationState, bool suppressNavigate);
}

@uuid("02ee93d4-448e-469e-9799-0a8a1f70f171")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrameFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Frame* return_instance);
}

@uuid("d5acf0e9-d967-471b-8459-c8af4341511b")
@WinrtFactory("Windows.UI.Xaml.Controls.Frame")
interface IFrameStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_BackStackProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ForwardStackProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fd104460-2e15-4ba3-8b8f-fa693a4161e9")
@WinrtFactory("Windows.UI.Xaml.Controls.Grid")
interface IGrid : IInspectable
{
extern(Windows):
	HRESULT get_RowDefinitions(Windows.UI.Xaml.Controls.RowDefinitionCollection* return_value);
	HRESULT get_ColumnDefinitions(Windows.UI.Xaml.Controls.ColumnDefinitionCollection* return_value);
}

@uuid("f76efa41-380e-45db-be87-9e1326ba4b57")
@WinrtFactory("Windows.UI.Xaml.Controls.Grid")
interface IGrid2 : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Grid* return_instance);
}

@uuid("64fe2e9f-f951-42b6-a9ce-bb179af11595")
@WinrtFactory("Windows.UI.Xaml.Controls.Grid")
interface IGridStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_BorderBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BorderThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CornerRadiusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("026ae934-b67e-4d80-8f72-8aa64b4d827b")
@WinrtFactory("Windows.UI.Xaml.Controls.GridView")
interface IGridView : IInspectable
{
}

@uuid("d9bcca89-09f9-4c6e-a83e-f199146f0e7d")
@WinrtFactory("Windows.UI.Xaml.Controls.GridView")
interface IGridViewFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GridView* return_instance);
}

@uuid("72d75d7e-5dc3-4ffc-9b1c-939b5c37161c")
@WinrtFactory("Windows.UI.Xaml.Controls.GridViewHeaderItem")
interface IGridViewHeaderItem : IInspectable
{
}

@uuid("36e0c96e-b56a-4b3b-8bac-7aef5e6f9945")
@WinrtFactory("Windows.UI.Xaml.Controls.GridViewHeaderItem")
interface IGridViewHeaderItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GridViewHeaderItem* return_instance);
}

@uuid("7d9901f1-e7c1-4e83-b470-c9d6d7bda9f5")
@WinrtFactory("Windows.UI.Xaml.Controls.GridViewItem")
interface IGridViewItem : IInspectable
{
extern(Windows):
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.GridViewItemTemplateSettings* return_value);
}

@uuid("229b00af-3fa6-43e9-979d-07ea0d6280dc")
@WinrtFactory("Windows.UI.Xaml.Controls.GridViewItem")
interface IGridViewItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GridViewItem* return_instance);
}

@uuid("4ae8d5d1-7228-4a16-a61f-88c0e8f45c76")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupItem")
interface IGroupItem : IInspectable
{
}

@uuid("d9a1d53e-b1e0-4319-9808-7a9e887e13b0")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupItem")
interface IGroupItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GroupItem* return_instance);
}

@uuid("71ca300b-b89e-4184-b0df-a9e95447de8d")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyle")
interface IGroupStyle : IInspectable
{
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
extern(Windows):
	HRESULT get_HeaderContainerStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_HeaderContainerStyle(Windows.UI.Xaml.Style value);
}

@uuid("56ff664f-e2d7-4f49-803d-c727cdf9372d")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyle")
interface IGroupStyleFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GroupStyle* return_instance);
}

@uuid("6dda119e-9a74-478f-a339-5bb52de6c51e")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyleSelector")
interface IGroupStyleSelector : IInspectable
{
extern(Windows):
	HRESULT abi_SelectGroupStyle(IInspectable group, UINT32 level, Windows.UI.Xaml.Controls.GroupStyle* return_returnValue);
}

@uuid("bf570d33-b2f6-481f-a450-c80c291fb22d")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyleSelector")
interface IGroupStyleSelectorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.GroupStyleSelector* return_instance);
}

@uuid("f691cab2-77ad-4d3d-a51c-8ef9c3836456")
@WinrtFactory("Windows.UI.Xaml.Controls.GroupStyleSelector")
interface IGroupStyleSelectorOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_SelectGroupStyleCore(IInspectable group, UINT32 level, Windows.UI.Xaml.Controls.GroupStyle* return_returnValue);
}

@uuid("ae692e82-7314-4f51-ab11-2af1ed4a19f8")
@WinrtFactory("Windows.UI.Xaml.Controls.Hub")
interface IHub : IInspectable
{
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
	HRESULT add_SectionHeaderClick(Windows.UI.Xaml.Controls.HubSectionHeaderClickEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SectionHeaderClick(EventRegistrationToken token);
	HRESULT add_SectionsInViewChanged(Windows.UI.Xaml.Controls.SectionsInViewChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SectionsInViewChanged(EventRegistrationToken token);
	HRESULT abi_ScrollToSection(Windows.UI.Xaml.Controls.HubSection section);
}

@uuid("dca6b2ba-c6f5-4961-9953-c51873db5424")
@WinrtFactory("Windows.UI.Xaml.Controls.Hub")
interface IHubFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Hub* return_instance);
}

@uuid("a4e66cb7-7fdd-4fe0-ab49-c246639dccf9")
@WinrtFactory("Windows.UI.Xaml.Controls.HubSection")
interface IHubSection : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.HubSection* return_instance);
}

@uuid("e1c5ef04-1edd-4112-aeeb-996c96400698")
@WinrtFactory("Windows.UI.Xaml.Controls.HubSectionHeaderClickEventArgs")
interface IHubSectionHeaderClickEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Section(Windows.UI.Xaml.Controls.HubSection* return_value);
}

@uuid("12d2d85a-ea27-42d1-998b-61e52aed842b")
@WinrtFactory("Windows.UI.Xaml.Controls.HubSection")
interface IHubSectionStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_NavigateUri(Windows.Foundation.Uri* return_value);
	HRESULT set_NavigateUri(Windows.Foundation.Uri value);
}

@uuid("43521bad-4e97-4da9-a64d-935dfd8cedf2")
@WinrtFactory("Windows.UI.Xaml.Controls.HyperlinkButton")
interface IHyperlinkButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.HyperlinkButton* return_instance);
}

@uuid("fbaeb5c7-cdb7-4263-b7d6-3c0d2904ed98")
@WinrtFactory("Windows.UI.Xaml.Controls.HyperlinkButton")
interface IHyperlinkButtonStatics : IInspectable
{
extern(Windows):
	HRESULT get_NavigateUriProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9af0803b-d04c-467a-bbd5-9b81f02d9a56")
@WinrtFactory("Windows.UI.Xaml.Controls.IconElement")
interface IIconElement : IInspectable
{
extern(Windows):
	HRESULT get_Foreground(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Foreground(Windows.UI.Xaml.Media.Brush value);
}

@uuid("cf37a562-0424-43c7-8bea-720fba973ef1")
@WinrtFactory("Windows.UI.Xaml.Controls.IconElement")
interface IIconElementFactory : IInspectable
{
}

@uuid("be19a623-77cf-472f-82ea-047801d12012")
@WinrtFactory("Windows.UI.Xaml.Controls.IconElement")
interface IIconElementStatics : IInspectable
{
extern(Windows):
	HRESULT get_ForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("495b7402-9af3-4e50-aa90-03388f3086d2")
@WinrtFactory("Windows.UI.Xaml.Controls.Image")
interface IImage : IInspectable
{
extern(Windows):
	HRESULT get_Source(Windows.UI.Xaml.Media.ImageSource* return_value);
	HRESULT set_Source(Windows.UI.Xaml.Media.ImageSource value);
	HRESULT get_Stretch(Windows.UI.Xaml.Media.Stretch* return_value);
	HRESULT set_Stretch(Windows.UI.Xaml.Media.Stretch value);
	HRESULT get_NineGrid(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_NineGrid(Windows.UI.Xaml.Thickness value);
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource.")
	HRESULT get_PlayToSource(Windows.Media.PlayTo.PlayToSource* return_value);
	HRESULT add_ImageFailed(Windows.UI.Xaml.ExceptionRoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ImageFailed(EventRegistrationToken token);
	HRESULT add_ImageOpened(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ImageOpened(EventRegistrationToken token);
}

@uuid("f445119e-881f-48bb-873a-64417ca4f002")
@WinrtFactory("Windows.UI.Xaml.Controls.Image")
interface IImage2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetAsCastingSource(Windows.Media.Casting.CastingSource* return_returnValue);
}

@uuid("06ebe792-47c2-4d92-a488-8cd685d06aca")
@WinrtFactory("Windows.UI.Xaml.Controls.Image")
interface IImage3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetAlphaMask(Windows.UI.Composition.CompositionBrush* return_returnValue);
}

@uuid("89903772-c336-43d1-9d51-c3bbd5d5d691")
@WinrtFactory("Windows.UI.Xaml.Controls.Image")
interface IImageStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_InkPresenter(Windows.UI.Input.Inking.InkPresenter* return_value);
}

@uuid("924ac2de-ab04-48f0-9653-e0f2da4dbf1a")
@WinrtFactory("Windows.UI.Xaml.Controls.InkCanvas")
interface IInkCanvasFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkCanvas* return_instance);
}

@uuid("3ddd0cca-51f0-486f-a03e-4ee13dc12bcb")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbar")
interface IInkToolbar : IInspectable
{
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
	HRESULT add_ActiveToolChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_ActiveToolChanged(EventRegistrationToken token);
	HRESULT add_InkDrawingAttributesChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_InkDrawingAttributesChanged(EventRegistrationToken token);
	HRESULT add_EraseAllClicked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_EraseAllClicked(EventRegistrationToken token);
	deprecated("InkToolbarRulerButton is replaced by InkToolbarStencilButton starting from Windows 10 Creators Update. For more info, see MSDN.")
	HRESULT add_IsRulerButtonCheckedChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar, IInspectable) value, EventRegistrationToken* return_token);
	deprecated("InkToolbarRulerButton is replaced by InkToolbarStencilButton starting from Windows 10 Creators Update. For more info, see MSDN.")
	HRESULT remove_IsRulerButtonCheckedChanged(EventRegistrationToken token);
	HRESULT abi_GetToolButton(Windows.UI.Xaml.Controls.InkToolbarTool tool, Windows.UI.Xaml.Controls.InkToolbarToolButton* return_returnValue);
	HRESULT abi_GetToggleButton(Windows.UI.Xaml.Controls.InkToolbarToggle tool, Windows.UI.Xaml.Controls.InkToolbarToggleButton* return_returnValue);
}

@uuid("86f0c111-b484-454a-ae78-1d25a33d1c67")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbar")
interface IInkToolbar2 : IInspectable
{
extern(Windows):
	HRESULT get_IsStencilButtonChecked(bool* return_value);
	HRESULT set_IsStencilButtonChecked(bool value);
	HRESULT get_ButtonFlyoutPlacement(Windows.UI.Xaml.Controls.InkToolbarButtonFlyoutPlacement* return_value);
	HRESULT set_ButtonFlyoutPlacement(Windows.UI.Xaml.Controls.InkToolbarButtonFlyoutPlacement value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT add_IsStencilButtonCheckedChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar, Windows.UI.Xaml.Controls.InkToolbarIsStencilButtonCheckedChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_IsStencilButtonCheckedChanged(EventRegistrationToken token);
	HRESULT abi_GetMenuButton(Windows.UI.Xaml.Controls.InkToolbarMenuKind menu, Windows.UI.Xaml.Controls.InkToolbarMenuButton* return_returnValue);
}

@uuid("158329f8-1e99-3acc-910f-9da2d872ae12")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarBallpointPenButton")
interface IInkToolbarBallpointPenButton : IInspectable
{
}

@uuid("2f0bd3e4-d754-4255-8ec4-00cd101296ab")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarBallpointPenButton")
interface IInkToolbarBallpointPenButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarBallpointPenButton* return_instance);
}

@uuid("4082207b-2f3d-4e6a-8c27-fe61ef7e70eb")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPen")
interface IInkToolbarCustomPen : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInkDrawingAttributes(Windows.UI.Xaml.Media.Brush brush, double strokeWidth, Windows.UI.Input.Inking.InkDrawingAttributes* return_returnValue);
}

@uuid("46024401-2b2a-4f3c-a53c-1a045a408efa")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPenButton")
interface IInkToolbarCustomPenButton : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarCustomPenButton* return_instance);
}

@uuid("373c25f4-e555-4e85-a80d-da6b8433dbde")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPenButton")
interface IInkToolbarCustomPenButtonStatics : IInspectable
{
extern(Windows):
	HRESULT get_CustomPenProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ConfigurationContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d214d636-f1aa-4f48-bf2c-a926caae4c60")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPen")
interface IInkToolbarCustomPenFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarCustomPen* return_instance);
}

@uuid("9d22eb6c-1255-4256-b6bd-82c2fd273488")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomPen")
interface IInkToolbarCustomPenOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInkDrawingAttributesCore(Windows.UI.Xaml.Media.Brush brush, double strokeWidth, Windows.UI.Input.Inking.InkDrawingAttributes* return_returnValue);
}

@uuid("550c4d84-4f54-4fbe-b12b-e0a50aab0d05")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomToggleButton")
interface IInkToolbarCustomToggleButton : IInspectable
{
}

@uuid("4a00374d-4cd2-4ed9-863e-83b8cf3fd2af")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomToggleButton")
interface IInkToolbarCustomToggleButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarCustomToggleButton* return_instance);
}

@uuid("9f98acd7-c605-4105-be10-3943a7c0da3c")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomToolButton")
interface IInkToolbarCustomToolButton : IInspectable
{
extern(Windows):
	HRESULT get_ConfigurationContent(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_ConfigurationContent(Windows.UI.Xaml.UIElement value);
}

@uuid("c295fe4e-30eb-4130-a6b6-8c85d8e26e89")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomToolButton")
interface IInkToolbarCustomToolButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarCustomToolButton* return_instance);
}

@uuid("11fe4cb9-bbac-4314-9344-92c6693ddeaf")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarCustomToolButton")
interface IInkToolbarCustomToolButtonStatics : IInspectable
{
extern(Windows):
	HRESULT get_ConfigurationContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4cbdb92e-5f5e-4b35-a41c-16ffb0283bc0")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarEraserButton")
interface IInkToolbarEraserButton : IInspectable
{
}

@uuid("e7a59257-5ae8-436d-b2e2-93c200900ca0")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarEraserButton")
interface IInkToolbarEraserButton2 : IInspectable
{
extern(Windows):
	HRESULT get_IsClearAllVisible(bool* return_value);
	HRESULT set_IsClearAllVisible(bool value);
}

@uuid("fd40611d-d1ba-4d67-af00-148036ad492c")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarEraserButton")
interface IInkToolbarEraserButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarEraserButton* return_instance);
}

@uuid("038a1736-c5cd-4311-83f4-38cbf07c2066")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarEraserButton")
interface IInkToolbarEraserButtonStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_IsClearAllVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3947aa99-36b1-4374-ab5c-98bf07a4320b")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbar")
interface IInkToolbarFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbar* return_instance);
}

@uuid("92b68786-37ee-4915-9e89-e187564a889a")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarFlyoutItem")
interface IInkToolbarFlyoutItem : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.UI.Xaml.Controls.InkToolbarFlyoutItemKind* return_value);
	HRESULT set_Kind(Windows.UI.Xaml.Controls.InkToolbarFlyoutItemKind value);
	HRESULT get_IsChecked(bool* return_value);
	HRESULT set_IsChecked(bool value);
	HRESULT add_Checked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbarFlyoutItem, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Checked(EventRegistrationToken token);
	HRESULT add_Unchecked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbarFlyoutItem, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Unchecked(EventRegistrationToken token);
}

@uuid("352e7b93-803b-4f0e-8c72-9dfc0329329f")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarFlyoutItem")
interface IInkToolbarFlyoutItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarFlyoutItem* return_instance);
}

@uuid("1fe54b64-4063-4a5f-b89c-9f58935ee379")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarFlyoutItem")
interface IInkToolbarFlyoutItemStatics : IInspectable
{
extern(Windows):
	HRESULT get_KindProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsCheckedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0b3cc15b-7abf-487e-acc1-5b5048fee6d2")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarHighlighterButton")
interface IInkToolbarHighlighterButton : IInspectable
{
}

@uuid("7c334add-42ca-4943-94a4-23b5a6e55cf1")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarHighlighterButton")
interface IInkToolbarHighlighterButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarHighlighterButton* return_instance);
}

@uuid("026edd26-d32b-4e28-a033-d5097662b292")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarIsStencilButtonCheckedChangedEventArgs")
interface IInkToolbarIsStencilButtonCheckedChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_StencilButton(Windows.UI.Xaml.Controls.InkToolbarStencilButton* return_value);
	HRESULT get_StencilKind(Windows.UI.Xaml.Controls.InkToolbarStencilKind* return_value);
}

@uuid("860ecae5-7633-4ea1-a209-50392d1aebd1")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarMenuButton")
interface IInkToolbarMenuButton : IInspectable
{
extern(Windows):
	HRESULT get_MenuKind(Windows.UI.Xaml.Controls.InkToolbarMenuKind* return_value);
	HRESULT get_IsExtensionGlyphShown(bool* return_value);
	HRESULT set_IsExtensionGlyphShown(bool value);
}

@uuid("7a463a9d-5dc7-44a7-afd0-2b685cb9a96c")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarMenuButton")
interface IInkToolbarMenuButtonFactory : IInspectable
{
}

@uuid("f03b17a6-b8b0-4a87-a961-37cd05d83137")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarMenuButton")
interface IInkToolbarMenuButtonStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsExtensionGlyphShownProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e0b80c21-b032-40ee-a2b9-507f6ccb827b")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPenButton")
interface IInkToolbarPenButton : IInspectable
{
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

@uuid("b1463d21-59cb-4a83-92e1-692842797b2e")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPenButton")
interface IInkToolbarPenButtonFactory : IInspectable
{
}

@uuid("b922ce42-09f0-453d-8026-44daf2753f65")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPenButton")
interface IInkToolbarPenButtonStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_PenButton(Windows.UI.Xaml.Controls.InkToolbarPenButton* return_value);
}

@uuid("67f065ee-f5e7-46eb-9187-8d3ca3af891b")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPenConfigurationControl")
interface IInkToolbarPenConfigurationControlFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarPenConfigurationControl* return_instance);
}

@uuid("48a61bef-19ce-41bb-abe0-7c8726fae75e")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPenConfigurationControl")
interface IInkToolbarPenConfigurationControlStatics : IInspectable
{
extern(Windows):
	HRESULT get_PenButtonProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("5b112832-1984-4148-9f25-382b35db087f")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPencilButton")
interface IInkToolbarPencilButton : IInspectable
{
}

@uuid("db66d85f-cfd6-495f-93ab-b8566af9f8af")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarPencilButton")
interface IInkToolbarPencilButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarPencilButton* return_instance);
}

@uuid("4a992832-1984-4148-9f25-382b35db087f")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarRulerButton")
interface IInkToolbarRulerButton : IInspectable
{
extern(Windows):
	deprecated("InkToolbarRulerButton is deprecated starting from Windows 10 Creators Update. Please use InkToolbarStencilButton going forward. For more info, see MSDN.")
	HRESULT get_Ruler(Windows.UI.Input.Inking.InkPresenterRuler* return_value);
}

@uuid("bb26d85f-cfd6-495f-93ab-b8566af9f8af")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarRulerButton")
interface IInkToolbarRulerButtonFactory : IInspectable
{
extern(Windows):
	deprecated("InkToolbarRulerButton is deprecated starting from Windows 10 Creators Update. Please use InkToolbarStencilButton going forward. For more info, see MSDN.")
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarRulerButton* return_instance);
}

@uuid("bae75f65-be30-4bee-964b-ff9e498fee37")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarRulerButton")
interface IInkToolbarRulerButtonStatics : IInspectable
{
extern(Windows):
	deprecated("InkToolbarRulerButton is deprecated starting from Windows 10 Creators Update. Please use InkToolbarStencilButton going forward. For more info, see MSDN.")
	HRESULT get_RulerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a3b493bb-cb4f-4e6b-a33d-f11e7a295efa")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbar")
interface IInkToolbarStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_IsStencilButtonCheckedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ButtonFlyoutPlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("306a2616-5b40-4bf3-92b7-f1df936aeff5")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarStencilButton")
interface IInkToolbarStencilButton : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.InkToolbarStencilButton* return_instance);
}

@uuid("4748c07f-63e4-420d-939a-6b7243e9d124")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarStencilButton")
interface IInkToolbarStencilButtonStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_ToggleKind(Windows.UI.Xaml.Controls.InkToolbarToggle* return_value);
}

@uuid("b2f90710-e5a1-4365-9d1a-e5b7ad8b9668")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarToggleButton")
interface IInkToolbarToggleButtonFactory : IInspectable
{
}

@uuid("5c5af41e-ccb7-4458-8064-a9849d31561b")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarToolButton")
interface IInkToolbarToolButton : IInspectable
{
extern(Windows):
	HRESULT get_ToolKind(Windows.UI.Xaml.Controls.InkToolbarTool* return_value);
	HRESULT get_IsExtensionGlyphShown(bool* return_value);
	HRESULT set_IsExtensionGlyphShown(bool value);
}

@uuid("6293bf4b-89fe-4ed0-a1a6-88d3eba917b2")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarToolButton")
interface IInkToolbarToolButtonFactory : IInspectable
{
}

@uuid("9e097d18-d136-4ef6-b0fd-1a78c2884a01")
@WinrtFactory("Windows.UI.Xaml.Controls.InkToolbarToolButton")
interface IInkToolbarToolButtonStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsExtensionGlyphShownProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6b8de08f-6527-4d39-bcbf-58b01da923d7")
interface IInsertionPanel : IInspectable
{
extern(Windows):
	HRESULT abi_GetInsertionIndexes(Windows.Foundation.Point position, INT32* out_first, INT32* out_second);
}

@uuid("9c314242-f29a-494d-a3a5-d4c7b2a46852")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemClickEventArgs")
interface IItemClickEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ClickedItem(IInspectable* return_value);
}

@uuid("40765f00-83f0-4d7f-b1b8-f19de4f1d5da")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemContainerGenerator")
interface IItemContainerGenerator : IInspectable
{
extern(Windows):
	HRESULT add_ItemsChanged(Windows.UI.Xaml.Controls.Primitives.ItemsChangedEventHandler value, EventRegistrationToken* return_token);
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
extern(Windows):
	HRESULT get_ItemsPanelRoot(Windows.UI.Xaml.Controls.Panel* return_value);
}

@uuid("502b7489-aee4-4de3-a2ab-195ac20c4212")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsControl")
interface IItemsControl3 : IInspectable
{
extern(Windows):
	HRESULT abi_GroupHeaderContainerFromItemContainer(Windows.UI.Xaml.DependencyObject itemContainer, Windows.UI.Xaml.DependencyObject* return_returnValue);
}

@uuid("f7bbc359-f8fd-471c-bcb2-2c74be8ebf8c")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsControl")
interface IItemsControlFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ItemsControl* return_instance);
}

@uuid("c79bb41b-a084-4301-a496-72971f364ed1")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsControl")
interface IItemsControlOverrides : IInspectable
{
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

@uuid("14ead768-34b2-4b97-bf3c-e8d73230a2aa")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsPanelTemplate")
interface IItemsPanelTemplate : IInspectable
{
}

@uuid("f95b9aac-a621-488e-9156-8ee31165be04")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsPickedEventArgs")
interface IItemsPickedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AddedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
	HRESULT get_RemovedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
}

@uuid("c271569b-6dca-4e2b-8e14-c55136b02a71")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsPresenter")
interface IItemsPresenter : IInspectable
{
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
extern(Windows):
	HRESULT get_FooterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FooterTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FooterTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("df7ab79d-7ad5-4b58-9363-919af90226e6")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsStackPanel")
interface IItemsStackPanel : IInspectable
{
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
extern(Windows):
	HRESULT get_AreStickyGroupHeadersEnabled(bool* return_value);
	HRESULT set_AreStickyGroupHeadersEnabled(bool value);
}

@uuid("ca25d63f-044f-4b6b-b315-0b60e0b4f87d")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsStackPanel")
interface IItemsStackPanelStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_AreStickyGroupHeadersEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ddfe6b5f-ba88-4a7d-8a5b-e58caf0f4e2d")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsWrapGrid")
interface IItemsWrapGrid : IInspectable
{
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
extern(Windows):
	HRESULT get_AreStickyGroupHeadersEnabled(bool* return_value);
	HRESULT set_AreStickyGroupHeadersEnabled(bool value);
}

@uuid("4ec5427d-24a0-449a-b763-3077ba0f2dd5")
@WinrtFactory("Windows.UI.Xaml.Controls.ItemsWrapGrid")
interface IItemsWrapGridStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_AreStickyGroupHeadersEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e9f3b9ff-8e91-4ecf-a707-c927f694f881")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBox")
interface IListBox : IInspectable
{
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
extern(Windows):
	HRESULT get_SingleSelectionFollowsFocus(bool* return_value);
	HRESULT set_SingleSelectionFollowsFocus(bool value);
}

@uuid("60cdfda2-2f44-444b-9c94-b8c9fda46f59")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBox")
interface IListBoxFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListBox* return_instance);
}

@uuid("43c13323-6edf-4e4b-b6b2-3a93eec41d95")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBoxItem")
interface IListBoxItem : IInspectable
{
}

@uuid("4398b8d4-a3de-402c-b23d-190384b27ca8")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBoxItem")
interface IListBoxItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListBoxItem* return_instance);
}

@uuid("6d3f7f73-706a-4e53-a9aa-c9a53c9cdd70")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBox")
interface IListBoxStatics : IInspectable
{
extern(Windows):
	HRESULT get_SelectionModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0089adeb-b709-4c8d-b1ed-4a7d97ee7716")
@WinrtFactory("Windows.UI.Xaml.Controls.ListBox")
interface IListBoxStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_SingleSelectionFollowsFocusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0f0cb9d7-e5f3-45e6-9063-ff7bbb193c47")
@WinrtFactory("Windows.UI.Xaml.Controls.ListPickerFlyout")
interface IListPickerFlyout : IInspectable
{
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
	HRESULT add_ItemsPicked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListPickerFlyout, Windows.UI.Xaml.Controls.ItemsPickedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ItemsPicked(EventRegistrationToken token);
	HRESULT abi_ShowAtAsync(Windows.UI.Xaml.FrameworkElement target, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(IInspectable))* return_returnValue);
}

@uuid("68155fb3-883e-417a-80d0-e2fd88410084")
@WinrtFactory("Windows.UI.Xaml.Controls.ListPickerFlyoutPresenter")
interface IListPickerFlyoutPresenter : IInspectable
{
}

@uuid("fee25b97-8b96-4602-81d2-82fd8e0f7ea8")
@WinrtFactory("Windows.UI.Xaml.Controls.ListPickerFlyout")
interface IListPickerFlyoutStatics : IInspectable
{
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

@uuid("f6ce8c6d-fe96-41ad-a64a-c2b81c4af7f8")
@WinrtFactory("Windows.UI.Xaml.Controls.ListView")
interface IListView : IInspectable
{
}

@uuid("3d0813ba-6890-4537-bfe5-796d9458edd6")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBase : IInspectable
{
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
	HRESULT add_ItemClick(Windows.UI.Xaml.Controls.ItemClickEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ItemClick(EventRegistrationToken token);
	HRESULT add_DragItemsStarting(Windows.UI.Xaml.Controls.DragItemsStartingEventHandler value, EventRegistrationToken* return_token);
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
extern(Windows):
	HRESULT get_ShowsScrollingPlaceholders(bool* return_value);
	HRESULT set_ShowsScrollingPlaceholders(bool value);
	HRESULT add_ContainerContentChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs) value, EventRegistrationToken* return_token);
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
extern(Windows):
	HRESULT get_ReorderMode(Windows.UI.Xaml.Controls.ListViewReorderMode* return_value);
	HRESULT set_ReorderMode(Windows.UI.Xaml.Controls.ListViewReorderMode value);
}

@uuid("18b7792b-11dc-4eb6-a7bc-741adb3eeb79")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBase4 : IInspectable
{
extern(Windows):
	HRESULT get_SelectedRanges(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Data.ItemIndexRange)* return_value);
	HRESULT get_IsMultiSelectCheckBoxEnabled(bool* return_value);
	HRESULT set_IsMultiSelectCheckBoxEnabled(bool value);
	HRESULT add_DragItemsCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.DragItemsCompletedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_DragItemsCompleted(EventRegistrationToken token);
	HRESULT add_ChoosingItemContainer(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ChoosingItemContainerEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ChoosingItemContainer(EventRegistrationToken token);
	HRESULT add_ChoosingGroupHeaderContainer(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ChoosingGroupHeaderContainerEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ChoosingGroupHeaderContainer(EventRegistrationToken token);
	HRESULT abi_SelectRange(Windows.UI.Xaml.Data.ItemIndexRange itemIndexRange);
	HRESULT abi_DeselectRange(Windows.UI.Xaml.Data.ItemIndexRange itemIndexRange);
}

@uuid("1a9c6e99-1719-4b80-b335-628331a07019")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBase5 : IInspectable
{
extern(Windows):
	HRESULT get_SingleSelectionFollowsFocus(bool* return_value);
	HRESULT set_SingleSelectionFollowsFocus(bool value);
	HRESULT abi_IsDragSource(bool* return_returnValue);
}

@uuid("f8a42637-965b-483b-94e5-e5c9fef0e352")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBase6 : IInspectable
{
extern(Windows):
	HRESULT abi_TryStartConnectedAnimationAsync(Windows.UI.Xaml.Media.Animation.ConnectedAnimation animation, IInspectable item, HSTRING elementName, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
	HRESULT abi_PrepareConnectedAnimation(HSTRING key, IInspectable item, HSTRING elementName, Windows.UI.Xaml.Media.Animation.ConnectedAnimation* return_returnValue);
}

@uuid("e67e6c7f-150f-46d0-a6ac-c5002bd9ca53")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBaseFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListViewBase* return_instance);
}

@uuid("6d0ded27-0d19-4091-8917-ce7c85c1e630")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBaseHeaderItem")
interface IListViewBaseHeaderItem : IInspectable
{
}

@uuid("3872a6a1-ea19-455f-9df7-147cc41d329c")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBaseHeaderItem")
interface IListViewBaseHeaderItemFactory : IInspectable
{
}

@uuid("8532b8f7-3e16-455b-89a8-c1346223f6d3")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBaseStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_ReorderModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ad13258b-fbd0-4f18-8bf8-9b8613951c22")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBaseStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_IsMultiSelectCheckBoxEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("40346fcf-0476-4259-895f-a6569738620f")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewBase")
interface IListViewBaseStatics5 : IInspectable
{
extern(Windows):
	HRESULT get_SingleSelectionFollowsFocusProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("bdff696d-3f22-41f9-97a6-883134a76113")
@WinrtFactory("Windows.UI.Xaml.Controls.ListView")
interface IListViewFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListView* return_instance);
}

@uuid("1b61baeb-e196-4b3b-a5f9-1ed636f3f79b")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewHeaderItem")
interface IListViewHeaderItem : IInspectable
{
}

@uuid("68d2c96a-96b0-4f08-a7a5-f1086720a0fa")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewHeaderItem")
interface IListViewHeaderItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListViewHeaderItem* return_instance);
}

@uuid("b7bb4305-3dd9-43de-a8c0-c472f085bc11")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewItem")
interface IListViewItem : IInspectable
{
extern(Windows):
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.ListViewItemTemplateSettings* return_value);
}

@uuid("f431073d-9cac-42a2-82df-0f4490bc4e2e")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewItem")
interface IListViewItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ListViewItem* return_instance);
}

@uuid("05bde8a6-2191-4b4b-8c22-9b25676e806e")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewPersistenceHelper")
interface IListViewPersistenceHelper : IInspectable
{
}

@uuid("6d0c2b08-bb9b-44f9-8063-5c3f9c21884b")
@WinrtFactory("Windows.UI.Xaml.Controls.ListViewPersistenceHelper")
interface IListViewPersistenceHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetRelativeScrollPosition(Windows.UI.Xaml.Controls.ListViewBase listViewBase, Windows.UI.Xaml.Controls.ListViewItemToKeyHandler itemToKeyHandler, HSTRING* return_returnValue);
	HRESULT abi_SetRelativeScrollPositionAsync(Windows.UI.Xaml.Controls.ListViewBase listViewBase, HSTRING relativeScrollPosition, Windows.UI.Xaml.Controls.ListViewKeyToItemHandler keyToItemHandler, Windows.Foundation.IAsyncAction* return_returnValue);
}

@uuid("a38ed2cf-13de-4299-ade2-ae18f74ed353")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaElement")
interface IMediaElement : IInspectable
{
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
	HRESULT add_MediaOpened(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_MediaOpened(EventRegistrationToken token);
	HRESULT add_MediaEnded(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_MediaEnded(EventRegistrationToken token);
	HRESULT add_MediaFailed(Windows.UI.Xaml.ExceptionRoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_MediaFailed(EventRegistrationToken token);
	HRESULT add_DownloadProgressChanged(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_DownloadProgressChanged(EventRegistrationToken token);
	HRESULT add_BufferingProgressChanged(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_BufferingProgressChanged(EventRegistrationToken token);
	HRESULT add_CurrentStateChanged(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_CurrentStateChanged(EventRegistrationToken token);
	HRESULT add_MarkerReached(Windows.UI.Xaml.Media.TimelineMarkerRoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_MarkerReached(EventRegistrationToken token);
	HRESULT add_RateChanged(Windows.UI.Xaml.Media.RateChangedRoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_RateChanged(EventRegistrationToken token);
	HRESULT add_VolumeChanged(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_VolumeChanged(EventRegistrationToken token);
	HRESULT add_SeekCompleted(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
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
extern(Windows):
	HRESULT get_TransportControls(Windows.UI.Xaml.Controls.MediaTransportControls* return_value);
	HRESULT set_TransportControls(Windows.UI.Xaml.Controls.MediaTransportControls value);
	HRESULT add_PartialMediaFailureDetected(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.MediaElement, Windows.UI.Xaml.Media.PartialMediaFailureDetectedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_PartialMediaFailureDetected(EventRegistrationToken token);
	HRESULT abi_SetPlaybackSource(Windows.Media.Playback.IMediaPlaybackSource source);
	HRESULT abi_GetAsCastingSource(Windows.Media.Casting.CastingSource* return_returnValue);
}

@uuid("dccd2cb9-7568-4682-a72a-8ddf2a2665ca")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaElement")
interface IMediaElementStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MediaPlayerElement* return_instance);
}

@uuid("1e7c4020-ac57-42dd-ad1c-3ebc2d7f08ba")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaPlayerElement")
interface IMediaPlayerElementStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MediaPlayerPresenter* return_instance);
}

@uuid("84d774fe-ead4-4957-b42b-223158ca0de7")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaPlayerPresenter")
interface IMediaPlayerPresenterStatics : IInspectable
{
extern(Windows):
	HRESULT get_MediaPlayerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsFullWindowProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d6f69e7d-0825-49a9-9fce-5586d8694f0c")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControls")
interface IMediaTransportControls : IInspectable
{
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
	HRESULT add_ThumbnailRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.MediaTransportControls, Windows.UI.Xaml.Media.MediaTransportControlsThumbnailRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ThumbnailRequested(EventRegistrationToken token);
}

@uuid("1da2015a-a8e4-4c1b-88c9-0b183ecc62e3")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControls")
interface IMediaTransportControlsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MediaTransportControls* return_instance);
}

@uuid("3d41d509-ff44-4420-807e-8f7a2e2c4251")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControlsHelper")
interface IMediaTransportControlsHelper : IInspectable
{
}

@uuid("5a772047-a9a1-4625-9270-7f49875d4394")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControlsHelper")
interface IMediaTransportControlsHelperStatics : IInspectable
{
extern(Windows):
	HRESULT get_DropoutOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetDropoutOrder(Windows.UI.Xaml.UIElement element, Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT abi_SetDropoutOrder(Windows.UI.Xaml.UIElement element, Windows.Foundation.IReference!(INT32) value);
}

@uuid("590ea907-d2ef-4c1a-9429-b4b15d64fd56")
@WinrtFactory("Windows.UI.Xaml.Controls.MediaTransportControls")
interface IMediaTransportControlsStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.MenuFlyoutItemBase)* return_value);
	HRESULT get_MenuFlyoutPresenterStyle(Windows.UI.Xaml.Style* return_value);
	HRESULT set_MenuFlyoutPresenterStyle(Windows.UI.Xaml.Style value);
}

@uuid("507c7bad-d9d1-4c05-9d4b-cda8de9ab242")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyout")
interface IMenuFlyout2 : IInspectable
{
extern(Windows):
	HRESULT abi_ShowAt(Windows.UI.Xaml.UIElement targetElement, Windows.Foundation.Point point);
}

@uuid("644533ab-bbb9-499b-9ff3-30d40e2c56d8")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyout")
interface IMenuFlyoutFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MenuFlyout* return_instance);
}

@uuid("160775cf-b598-44af-a488-c3ce2af6d3f0")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItem")
interface IMenuFlyoutItem : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_Command(Windows.UI.Xaml.Input.ICommand* return_value);
	HRESULT set_Command(Windows.UI.Xaml.Input.ICommand value);
	HRESULT get_CommandParameter(IInspectable* return_value);
	HRESULT set_CommandParameter(IInspectable value);
	HRESULT add_Click(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Click(EventRegistrationToken token);
}

@uuid("0ae266eb-028c-4423-a8e3-989fd9dd7126")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItem")
interface IMenuFlyoutItem2 : IInspectable
{
extern(Windows):
	HRESULT get_Icon(Windows.UI.Xaml.Controls.IconElement* return_value);
	HRESULT set_Icon(Windows.UI.Xaml.Controls.IconElement value);
}

@uuid("f9b56047-8da6-4730-9208-144125c6b396")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItemBase")
interface IMenuFlyoutItemBase : IInspectable
{
}

@uuid("83e6dbad-fc67-41d5-8797-60acd1ceb1d9")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItemBase")
interface IMenuFlyoutItemBaseFactory : IInspectable
{
}

@uuid("c5aa39e2-44f3-455e-9c5b-62bb6afce3ad")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItem")
interface IMenuFlyoutItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MenuFlyoutItem* return_instance);
}

@uuid("4950b424-a43a-41f7-aa3a-9ce9619747d5")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItem")
interface IMenuFlyoutItemStatics : IInspectable
{
extern(Windows):
	HRESULT get_TextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CommandProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CommandParameterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("aca4f564-1790-4601-916e-5ae1f01f4bd6")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutItem")
interface IMenuFlyoutItemStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_IconProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("906e0304-254e-413f-b219-c7b97f003752")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutPresenter")
interface IMenuFlyoutPresenter : IInspectable
{
}

@uuid("895894df-5a9f-4a1f-85ec-6f3c1b6dcb89")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutPresenter")
interface IMenuFlyoutPresenter2 : IInspectable
{
extern(Windows):
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.MenuFlyoutPresenterTemplateSettings* return_value);
}

@uuid("b88b5091-101c-41f8-aac1-1b105c14fb99")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutPresenter")
interface IMenuFlyoutPresenterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MenuFlyoutPresenter* return_instance);
}

@uuid("71fa2b7d-0b51-4950-a1a4-bbc42eac4c12")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSeparator")
interface IMenuFlyoutSeparator : IInspectable
{
}

@uuid("c159dcc8-b437-44e0-b24b-5720aea1dbac")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSeparator")
interface IMenuFlyoutSeparatorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.MenuFlyoutSeparator* return_instance);
}

@uuid("3dbefba1-9522-4045-9e58-c99b13aab9b9")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyout")
interface IMenuFlyoutStatics : IInspectable
{
extern(Windows):
	HRESULT get_MenuFlyoutPresenterStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e5386550-fe2c-43e2-a73f-62168f619973")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSubItem")
interface IMenuFlyoutSubItem : IInspectable
{
extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.MenuFlyoutItemBase)* return_value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
}

@uuid("ac935626-190a-4de2-8d71-7cc4747da580")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSubItem")
interface IMenuFlyoutSubItem2 : IInspectable
{
extern(Windows):
	HRESULT get_Icon(Windows.UI.Xaml.Controls.IconElement* return_value);
	HRESULT set_Icon(Windows.UI.Xaml.Controls.IconElement value);
}

@uuid("ddb27a36-1874-4aef-837d-6fec9da4e681")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSubItem")
interface IMenuFlyoutSubItemStatics : IInspectable
{
extern(Windows):
	HRESULT get_TextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ac14d09b-3e93-4785-94ef-fdb23baba965")
@WinrtFactory("Windows.UI.Xaml.Controls.MenuFlyoutSubItem")
interface IMenuFlyoutSubItemStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_IconProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("bf2195a9-f4ea-4336-977c-f8fcf78b0d9e")
interface INavigate : IInspectable
{
extern(Windows):
	HRESULT abi_Navigate(Windows.UI.Xaml.Interop.TypeName sourcePageType, bool* return_returnValue);
}

@uuid("af0e05f7-c4b7-44c5-b09d-5cb7052b3a97")
@WinrtFactory("Windows.UI.Xaml.Controls.NotifyEventArgs")
interface INotifyEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Value(HSTRING* return_value);
}

@uuid("0d140f56-1dce-4fcd-85bc-5a5572273b9c")
@WinrtFactory("Windows.UI.Xaml.Controls.NotifyEventArgs")
interface INotifyEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_CallingUri(Windows.Foundation.Uri* return_value);
}

@uuid("c4b27075-e641-453e-824d-012fc7cf95cf")
@WinrtFactory("Windows.UI.Xaml.Controls.Page")
interface IPage : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Page* return_instance);
}

@uuid("230b9cb8-3419-4306-aabe-4a8e680d3627")
@WinrtFactory("Windows.UI.Xaml.Controls.Page")
interface IPageOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnNavigatedFrom(Windows.UI.Xaml.Navigation.NavigationEventArgs e);
	HRESULT abi_OnNavigatedTo(Windows.UI.Xaml.Navigation.NavigationEventArgs e);
	HRESULT abi_OnNavigatingFrom(Windows.UI.Xaml.Navigation.NavigatingCancelEventArgs e);
}

@uuid("376dde71-f725-46dd-8d80-eeeaf7da74e5")
@WinrtFactory("Windows.UI.Xaml.Controls.Page")
interface IPageStatics : IInspectable
{
extern(Windows):
	HRESULT get_FrameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TopAppBarProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BottomAppBarProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a50a4bbd-8361-469c-90da-e9a40c7474df")
@WinrtFactory("Windows.UI.Xaml.Controls.Panel")
interface IPanel : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Panel* return_instance);
}

@uuid("f23d6b5d-8330-47a6-a046-25f509b25232")
@WinrtFactory("Windows.UI.Xaml.Controls.Panel")
interface IPanelStatics : IInspectable
{
extern(Windows):
	HRESULT get_BackgroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsItemsHostProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ChildrenTransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("02b9aa11-0b47-4e7d-ad91-3a4168ed230d")
@WinrtFactory("Windows.UI.Xaml.Controls.PasswordBox")
interface IPasswordBox : IInspectable
{
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
	HRESULT add_PasswordChanged(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_PasswordChanged(EventRegistrationToken token);
	HRESULT add_ContextMenuOpening(Windows.UI.Xaml.Controls.ContextMenuOpeningEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ContextMenuOpening(EventRegistrationToken token);
	HRESULT abi_SelectAll();
}

@uuid("5ed738df-212f-4aeb-b5b8-2c219aec3c0c")
@WinrtFactory("Windows.UI.Xaml.Controls.PasswordBox")
interface IPasswordBox2 : IInspectable
{
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
	HRESULT add_Paste(Windows.UI.Xaml.Controls.TextControlPasteEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Paste(EventRegistrationToken token);
}

@uuid("6024d9d1-56b7-41f0-9558-3934c14244d6")
@WinrtFactory("Windows.UI.Xaml.Controls.PasswordBox")
interface IPasswordBox3 : IInspectable
{
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
extern(Windows):
	HRESULT get_PasswordRevealModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextReadingOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_InputScopeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("214c62db-c366-4a0e-b9ad-dcf168d7ec0c")
@WinrtFactory("Windows.UI.Xaml.Controls.PathIcon")
interface IPathIcon : IInspectable
{
extern(Windows):
	HRESULT get_Data(Windows.UI.Xaml.Media.Geometry* return_value);
	HRESULT set_Data(Windows.UI.Xaml.Media.Geometry value);
}

@uuid("af9d9652-9c5d-4a37-9e1a-044abeef792b")
@WinrtFactory("Windows.UI.Xaml.Controls.PathIcon")
interface IPathIconFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.PathIcon* return_instance);
}

@uuid("77b75db8-fb15-491a-b6e3-7dbba911bafe")
@WinrtFactory("Windows.UI.Xaml.Controls.PathIcon")
interface IPathIconStatics : IInspectable
{
extern(Windows):
	HRESULT get_DataProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("447a9b51-1e23-4779-992b-986849713941")
@WinrtFactory("Windows.UI.Xaml.Controls.PickerConfirmedEventArgs")
interface IPickerConfirmedEventArgs : IInspectable
{
}

@uuid("a336ffdb-08d9-43e6-944e-f2e5c7cee630")
@WinrtFactory("Windows.UI.Xaml.Controls.PickerFlyout")
interface IPickerFlyout : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Content(Windows.UI.Xaml.UIElement value);
	HRESULT get_ConfirmationButtonsVisible(bool* return_value);
	HRESULT set_ConfirmationButtonsVisible(bool value);
	HRESULT add_Confirmed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.PickerFlyout, Windows.UI.Xaml.Controls.PickerConfirmedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_Confirmed(EventRegistrationToken token);
	HRESULT abi_ShowAtAsync(Windows.UI.Xaml.FrameworkElement target, Windows.Foundation.IAsyncOperation!(bool)* return_returnValue);
}

@uuid("5884c978-6b27-4b38-a9ae-677c2994652e")
@WinrtFactory("Windows.UI.Xaml.Controls.PickerFlyoutPresenter")
interface IPickerFlyoutPresenter : IInspectable
{
}

@uuid("af18a436-f38a-4abd-b933-6286c115b07f")
@WinrtFactory("Windows.UI.Xaml.Controls.PickerFlyout")
interface IPickerFlyoutStatics : IInspectable
{
extern(Windows):
	HRESULT get_ContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ConfirmationButtonsVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("103e9b13-3400-4a16-90b9-6912bf06974e")
@WinrtFactory("Windows.UI.Xaml.Controls.Pivot")
interface IPivot : IInspectable
{
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
	HRESULT add_SelectionChanged(Windows.UI.Xaml.Controls.SelectionChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT add_PivotItemLoading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_PivotItemLoading(EventRegistrationToken token);
	HRESULT add_PivotItemLoaded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_PivotItemLoaded(EventRegistrationToken token);
	HRESULT add_PivotItemUnloading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_PivotItemUnloading(EventRegistrationToken token);
	HRESULT add_PivotItemUnloaded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_PivotItemUnloaded(EventRegistrationToken token);
}

@uuid("8b8a8660-1a55-411c-a82d-18991c3f0d6f")
@WinrtFactory("Windows.UI.Xaml.Controls.Pivot")
interface IPivot2 : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Pivot* return_instance);
}

@uuid("a4764371-a502-47a3-915e-4aa096daf87f")
@WinrtFactory("Windows.UI.Xaml.Controls.PivotItem")
interface IPivotItem : IInspectable
{
extern(Windows):
	HRESULT get_Header(IInspectable* return_value);
	HRESULT set_Header(IInspectable value);
}

@uuid("1a6f7254-1ed5-4bc5-a060-655530bca6ba")
@WinrtFactory("Windows.UI.Xaml.Controls.PivotItemEventArgs")
interface IPivotItemEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Item(Windows.UI.Xaml.Controls.PivotItem* return_value);
	HRESULT set_Item(Windows.UI.Xaml.Controls.PivotItem value);
}

@uuid("0dced981-636e-4a34-8a3f-8ee018639285")
@WinrtFactory("Windows.UI.Xaml.Controls.PivotItem")
interface IPivotItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.PivotItem* return_instance);
}

@uuid("e147ad0c-488b-4a6e-becd-a5dbd9941754")
@WinrtFactory("Windows.UI.Xaml.Controls.PivotItem")
interface IPivotItemStatics : IInspectable
{
extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ee22c7f4-c15d-4ff3-8a94-f50dfdfbe899")
@WinrtFactory("Windows.UI.Xaml.Controls.Pivot")
interface IPivotStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_HeaderFocusVisualPlacementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsHeaderItemsCarouselEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ae752c89-0067-4963-bf4c-29db0c4a507e")
@WinrtFactory("Windows.UI.Xaml.Controls.ProgressBar")
interface IProgressBar : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ProgressBar* return_instance);
}

@uuid("7a129fda-5837-4e26-b3b4-e1c092cebbec")
@WinrtFactory("Windows.UI.Xaml.Controls.ProgressBar")
interface IProgressBarStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsIndeterminateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ShowErrorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ShowPausedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6da5e49e-6e9d-425c-bd7c-02173e39763f")
@WinrtFactory("Windows.UI.Xaml.Controls.ProgressRing")
interface IProgressRing : IInspectable
{
extern(Windows):
	HRESULT get_IsActive(bool* return_value);
	HRESULT set_IsActive(bool value);
	HRESULT get_TemplateSettings(Windows.UI.Xaml.Controls.Primitives.ProgressRingTemplateSettings* return_value);
}

@uuid("e8b62507-4e2c-47d5-a54a-c6c48a5e6989")
@WinrtFactory("Windows.UI.Xaml.Controls.ProgressRing")
interface IProgressRingStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsActiveProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("325c44e0-9a03-4bf3-abd6-6fbb46c9a486")
@WinrtFactory("Windows.UI.Xaml.Controls.RadioButton")
interface IRadioButton : IInspectable
{
extern(Windows):
	HRESULT get_GroupName(HSTRING* return_value);
	HRESULT set_GroupName(HSTRING value);
}

@uuid("f1d04933-34e1-4a5c-b2ae-ca3b1c0b20de")
@WinrtFactory("Windows.UI.Xaml.Controls.RadioButton")
interface IRadioButtonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.RadioButton* return_instance);
}

@uuid("6b149293-f50f-4bd8-b0ac-5c162f33a208")
@WinrtFactory("Windows.UI.Xaml.Controls.RadioButton")
interface IRadioButtonStatics : IInspectable
{
extern(Windows):
	HRESULT get_GroupNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2eabfaeb-b35a-4035-acea-3c4a3730683f")
@WinrtFactory("Windows.UI.Xaml.Controls.RelativePanel")
interface IRelativePanel : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.RelativePanel* return_instance);
}

@uuid("15903c27-f18c-4c35-8e19-6a7459d907b6")
@WinrtFactory("Windows.UI.Xaml.Controls.RelativePanel")
interface IRelativePanelStatics : IInspectable
{
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
	HRESULT add_TextChanged(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_TextChanged(EventRegistrationToken token);
	HRESULT add_SelectionChanged(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT add_ContextMenuOpening(Windows.UI.Xaml.Controls.ContextMenuOpeningEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ContextMenuOpening(EventRegistrationToken token);
}

@uuid("bbea6ead-e805-47a4-bbe7-47e59b8f74a7")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBox2 : IInspectable
{
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
	HRESULT add_Paste(Windows.UI.Xaml.Controls.TextControlPasteEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Paste(EventRegistrationToken token);
}

@uuid("6b17a462-fbb6-4fff-9991-9399cb9c0b90")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBox3 : IInspectable
{
extern(Windows):
	HRESULT add_TextCompositionStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionStarted(EventRegistrationToken token);
	HRESULT add_TextCompositionChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionChanged(EventRegistrationToken token);
	HRESULT add_TextCompositionEnded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionEnded(EventRegistrationToken token);
	HRESULT get_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder* return_value);
	HRESULT set_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value);
	HRESULT get_DesiredCandidateWindowAlignment(Windows.UI.Xaml.Controls.CandidateWindowAlignment* return_value);
	HRESULT set_DesiredCandidateWindowAlignment(Windows.UI.Xaml.Controls.CandidateWindowAlignment value);
	HRESULT add_CandidateWindowBoundsChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_CandidateWindowBoundsChanged(EventRegistrationToken token);
	HRESULT add_TextChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.RichEditBoxTextChangingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TextChanging(EventRegistrationToken token);
}

@uuid("5caa8d35-c838-4bad-a07c-204183bb751f")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBox4 : IInspectable
{
extern(Windows):
	HRESULT abi_GetLinguisticAlternativesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_returnValue);
	HRESULT get_ClipboardCopyFormat(Windows.UI.Xaml.Controls.RichEditClipboardFormat* return_value);
	HRESULT set_ClipboardCopyFormat(Windows.UI.Xaml.Controls.RichEditClipboardFormat value);
}

@uuid("a66d9cea-6391-4f3b-9fd3-1fd01f49f327")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBox5 : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.RichEditBox* return_instance);
}

@uuid("f5e03a74-88ea-479b-9a05-37089ff30ede")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBoxStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_DesiredCandidateWindowAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextReadingOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("f5d54fd7-7796-42a5-a5e5-2cd211ee8176")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBoxStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_ClipboardCopyFormatProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4b5c4568-43d5-43e6-bbb9-cb4e6250f45a")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBox")
interface IRichEditBoxStatics5 : IInspectable
{
extern(Windows):
	HRESULT get_SelectionHighlightColorWhenNotFocusedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("54065018-2813-4922-9f8e-b6bbafd995d8")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBoxTextChangingEventArgs")
interface IRichEditBoxTextChangingEventArgs : IInspectable
{
}

@uuid("395b0db5-636e-413e-9eb4-fc22ebfa3628")
@WinrtFactory("Windows.UI.Xaml.Controls.RichEditBoxTextChangingEventArgs")
interface IRichEditBoxTextChangingEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_IsContentChanging(bool* return_value);
}

@uuid("e5fff9e2-b968-49e7-97d4-8cca2ac3ae7c")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlock : IInspectable
{
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
	HRESULT add_SelectionChanged(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT add_ContextMenuOpening(Windows.UI.Xaml.Controls.ContextMenuOpeningEventHandler value, EventRegistrationToken* return_token);
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
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("3577c1ea-24fd-4f50-bbe4-3fb654ea58c5")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlock4 : IInspectable
{
extern(Windows):
	HRESULT get_TextDecorations(Windows.UI.Text.TextDecorations* return_value);
	HRESULT set_TextDecorations(Windows.UI.Text.TextDecorations value);
}

@uuid("4f93749b-dac3-4a42-9cbb-99f0de37c071")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlockOverflow")
interface IRichTextBlockOverflow : IInspectable
{
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
extern(Windows):
	HRESULT get_MaxLines(INT32* return_value);
	HRESULT set_MaxLines(INT32 value);
}

@uuid("041ac2f7-4f2b-43c3-a122-3fea9ca9dc87")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlockOverflow")
interface IRichTextBlockOverflowStatics : IInspectable
{
extern(Windows):
	HRESULT get_OverflowContentTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PaddingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HasOverflowContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b5ebed4c-f8c4-4a3a-907f-e53e78279fa3")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlockOverflow")
interface IRichTextBlockOverflowStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_MaxLinesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("492d883c-adea-433c-be1c-208a164262be")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlockStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("80155bc4-6d96-4b08-ad57-13db0f046412")
@WinrtFactory("Windows.UI.Xaml.Controls.RichTextBlock")
interface IRichTextBlockStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_TextDecorationsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4abae829-d80c-4a5e-a48c-f8b3d3b6533d")
@WinrtFactory("Windows.UI.Xaml.Controls.RowDefinition")
interface IRowDefinition : IInspectable
{
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
extern(Windows):
	HRESULT get_HeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("5712ee2b-0eeb-46d3-aa31-5f6801b8de20")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollContentPresenter")
interface IScrollContentPresenter : IInspectable
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

@uuid("64e9be00-4dc1-493d-abe7-cbd3c577490d")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewer")
interface IScrollViewer : IInspectable
{
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
extern(Windows):
	HRESULT get_TopLeftHeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LeftHeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TopHeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("64e9be01-4dc2-493e-abe8-cbd3c577490e")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewerView")
interface IScrollViewerView : IInspectable
{
extern(Windows):
	HRESULT get_HorizontalOffset(double* return_value);
	HRESULT get_VerticalOffset(double* return_value);
	HRESULT get_ZoomFactor(FLOAT* return_value);
}

@uuid("4dd04f7e-7a11-4b2e-9933-577df39252b6")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewerViewChangedEventArgs")
interface IScrollViewerViewChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_IsIntermediate(bool* return_value);
}

@uuid("4dd04f7f-7a11-4b2e-9933-577df39252b6")
@WinrtFactory("Windows.UI.Xaml.Controls.ScrollViewerViewChangingEventArgs")
interface IScrollViewerViewChangingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_NextView(Windows.UI.Xaml.Controls.ScrollViewerView* return_value);
	HRESULT get_FinalView(Windows.UI.Xaml.Controls.ScrollViewerView* return_value);
	HRESULT get_IsInertial(bool* return_value);
}

@uuid("f89ecc5a-99ba-4bd4-966c-f11fa443d13c")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBox")
interface ISearchBox : IInspectable
{
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
	HRESULT add_QueryChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxQueryChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_QueryChanged(EventRegistrationToken token);
	HRESULT add_SuggestionsRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxSuggestionsRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_SuggestionsRequested(EventRegistrationToken token);
	HRESULT add_QuerySubmitted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxQuerySubmittedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_QuerySubmitted(EventRegistrationToken token);
	HRESULT add_ResultSuggestionChosen(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxResultSuggestionChosenEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ResultSuggestionChosen(EventRegistrationToken token);
	HRESULT add_PrepareForFocusOnKeyboardInput(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.RoutedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_PrepareForFocusOnKeyboardInput(EventRegistrationToken token);
	HRESULT abi_SetLocalContentSuggestionSettings(Windows.ApplicationModel.Search.LocalContentSuggestionSettings settings);
}

@uuid("cd743f6d-8685-46b4-9ddd-202f6941b701")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBox")
interface ISearchBoxFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SearchBox* return_instance);
}

@uuid("a9a70f8f-0cb0-4bd2-9998-2fb57ad5e731")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBoxQueryChangedEventArgs")
interface ISearchBoxQueryChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_QueryText(HSTRING* return_value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_LinguisticDetails(Windows.ApplicationModel.Search.SearchQueryLinguisticDetails* return_value);
}

@uuid("126e90fd-3c4e-4ccb-9aef-4705d19fe548")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBoxQuerySubmittedEventArgs")
interface ISearchBoxQuerySubmittedEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_Tag(HSTRING* return_value);
	HRESULT get_KeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
}

@uuid("b123634f-6871-48cd-92df-4cff22459082")
@WinrtFactory("Windows.UI.Xaml.Controls.SearchBox")
interface ISearchBoxStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_AddedSections(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)* return_value);
	HRESULT get_RemovedSections(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)* return_value);
}

@uuid("557f5244-92f8-4150-b730-e6346e8f50d1")
@WinrtFactory("Windows.UI.Xaml.Controls.SectionsInViewChangedEventArgs")
interface ISectionsInViewChangedEventArgsFactory : IInspectable
{
}

@uuid("c972d2dc-b609-4758-851e-a799c21de97d")
@WinrtFactory("Windows.UI.Xaml.Controls.SelectionChangedEventArgs")
interface ISelectionChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AddedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
	HRESULT get_RemovedItems(Windows.Foundation.Collections.IVector!(IInspectable)* return_value);
}

@uuid("11a8b6b5-2830-4517-84cd-5524c8b88b45")
@WinrtFactory("Windows.UI.Xaml.Controls.SelectionChangedEventArgs")
interface ISelectionChangedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithRemovedItemsAndAddedItems(Windows.Foundation.Collections.IVector!(IInspectable) removedItems, Windows.Foundation.Collections.IVector!(IInspectable) addedItems, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SelectionChangedEventArgs* return_instance);
}

@uuid("019fff21-ece6-4fbc-bf40-8938d4813e27")
@WinrtFactory("Windows.UI.Xaml.Controls.SemanticZoom")
interface ISemanticZoom : IInspectable
{
extern(Windows):
	HRESULT get_ZoomedInView(Windows.UI.Xaml.Controls.ISemanticZoomInformation* return_value);
	HRESULT set_ZoomedInView(Windows.UI.Xaml.Controls.ISemanticZoomInformation value);
	HRESULT get_ZoomedOutView(Windows.UI.Xaml.Controls.ISemanticZoomInformation* return_value);
	HRESULT set_ZoomedOutView(Windows.UI.Xaml.Controls.ISemanticZoomInformation value);
	HRESULT get_IsZoomedInViewActive(bool* return_value);
	HRESULT set_IsZoomedInViewActive(bool value);
	HRESULT get_CanChangeViews(bool* return_value);
	HRESULT set_CanChangeViews(bool value);
	HRESULT add_ViewChangeStarted(Windows.UI.Xaml.Controls.SemanticZoomViewChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ViewChangeStarted(EventRegistrationToken token);
	HRESULT add_ViewChangeCompleted(Windows.UI.Xaml.Controls.SemanticZoomViewChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ViewChangeCompleted(EventRegistrationToken token);
	HRESULT abi_ToggleActiveView();
	HRESULT get_IsZoomOutButtonEnabled(bool* return_value);
	HRESULT set_IsZoomOutButtonEnabled(bool value);
}

@uuid("a76a3b63-229b-4dc5-aa11-9d922fbf8a98")
interface ISemanticZoomInformation : IInspectable
{
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
	HRESULT add_BackClick(Windows.UI.Xaml.Controls.BackClickEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_BackClick(EventRegistrationToken token);
	HRESULT abi_Show();
	HRESULT abi_ShowIndependent();
	HRESULT abi_Hide();
}

@uuid("480c7011-57aa-4db6-b6fd-ec676f6d414e")
@WinrtFactory("Windows.UI.Xaml.Controls.SettingsFlyout")
interface ISettingsFlyoutFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SettingsFlyout* return_instance);
}

@uuid("d0e3b535-9157-4be4-a42a-f591698846ac")
@WinrtFactory("Windows.UI.Xaml.Controls.SettingsFlyout")
interface ISettingsFlyoutStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.Slider* return_instance);
}

@uuid("8a4363d7-7fdf-4d30-98fe-ce78c05b31cf")
@WinrtFactory("Windows.UI.Xaml.Controls.Slider")
interface ISliderStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_HeaderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeaderTemplateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("97222f31-3844-429e-939c-1673155322a1")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitView")
interface ISplitView : IInspectable
{
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
	HRESULT add_PaneClosing(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SplitView, Windows.UI.Xaml.Controls.SplitViewPaneClosingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_PaneClosing(EventRegistrationToken token);
	HRESULT add_PaneClosed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SplitView, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_PaneClosed(EventRegistrationToken token);
}

@uuid("5ea7dc10-cc83-409a-82f9-3e91d6d7084f")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitView")
interface ISplitView2 : IInspectable
{
extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("f101773a-084e-4fb9-8442-63221b44533f")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitView")
interface ISplitViewFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SplitView* return_instance);
}

@uuid("93cf494e-7a95-44d8-9562-1b348248da9f")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitViewPaneClosingEventArgs")
interface ISplitViewPaneClosingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
}

@uuid("859b4f6f-44ab-4e4b-91c1-17b7056d9b5f")
@WinrtFactory("Windows.UI.Xaml.Controls.SplitView")
interface ISplitViewStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b8ae8fe2-d641-4fd7-80b4-7439207d2798")
@WinrtFactory("Windows.UI.Xaml.Controls.StackPanel")
interface IStackPanel : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.StackPanel* return_instance);
}

@uuid("f0d0cd93-4dbc-48a7-9914-954924657771")
@WinrtFactory("Windows.UI.Xaml.Controls.StackPanel")
interface IStackPanelStatics : IInspectable
{
extern(Windows):
	HRESULT get_AreScrollSnapPointsRegularProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d97e6257-080d-412e-a91a-ce6e5d02aad3")
@WinrtFactory("Windows.UI.Xaml.Controls.StackPanel")
interface IStackPanelStatics2 : IInspectable
{
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
extern(Windows):
	HRESULT abi_SelectStyle(IInspectable item, Windows.UI.Xaml.DependencyObject container, Windows.UI.Xaml.Style* return_returnValue);
}

@uuid("9e942ae7-3761-447f-8f97-29e39d5eb310")
@WinrtFactory("Windows.UI.Xaml.Controls.StyleSelector")
interface IStyleSelectorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.StyleSelector* return_instance);
}

@uuid("08add66d-0e2e-43a0-aeca-8faa94b9d017")
@WinrtFactory("Windows.UI.Xaml.Controls.StyleSelector")
interface IStyleSelectorOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_SelectStyleCore(IInspectable item, Windows.UI.Xaml.DependencyObject container, Windows.UI.Xaml.Style* return_returnValue);
}

@uuid("1c59db48-8233-4c0c-bcf5-02a5fb35ae00")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainBackgroundPanel")
interface ISwapChainBackgroundPanel : IInspectable
{
}

@uuid("21e672f2-2592-4c38-870f-28fbcf52c095")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainBackgroundPanel")
interface ISwapChainBackgroundPanel2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCoreIndependentInputSource(Windows.UI.Core.CoreInputDeviceTypes deviceTypes, Windows.UI.Core.CoreIndependentInputSource* return_returnValue);
}

@uuid("198289d4-c89b-49b2-896c-5917bf8adcae")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainBackgroundPanel")
interface ISwapChainBackgroundPanelFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SwapChainBackgroundPanel* return_instance);
}

@uuid("c589644f-eba8-427a-b75a-9f1f93a11ae9")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainPanel")
interface ISwapChainPanel : IInspectable
{
extern(Windows):
	HRESULT get_CompositionScaleX(FLOAT* return_value);
	HRESULT get_CompositionScaleY(FLOAT* return_value);
	HRESULT add_CompositionScaleChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SwapChainPanel, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_CompositionScaleChanged(EventRegistrationToken token);
	HRESULT abi_CreateCoreIndependentInputSource(Windows.UI.Core.CoreInputDeviceTypes deviceTypes, Windows.UI.Core.CoreIndependentInputSource* return_returnValue);
}

@uuid("f38f8d7f-1a48-49cb-86d2-10eaaaf6fd70")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainPanel")
interface ISwapChainPanelFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.SwapChainPanel* return_instance);
}

@uuid("f89c0297-eea8-498c-99c4-257e3660df7e")
@WinrtFactory("Windows.UI.Xaml.Controls.SwapChainPanel")
interface ISwapChainPanelStatics : IInspectable
{
extern(Windows):
	HRESULT get_CompositionScaleXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CompositionScaleYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7a4774c9-a6a3-4b30-8ff1-9081d70e9a5c")
@WinrtFactory("Windows.UI.Xaml.Controls.SymbolIcon")
interface ISymbolIcon : IInspectable
{
extern(Windows):
	HRESULT get_Symbol(Windows.UI.Xaml.Controls.Symbol* return_value);
	HRESULT set_Symbol(Windows.UI.Xaml.Controls.Symbol value);
}

@uuid("c7252b88-e76c-4b44-8a05-046b9dc772b8")
@WinrtFactory("Windows.UI.Xaml.Controls.SymbolIcon")
interface ISymbolIconFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithSymbol(Windows.UI.Xaml.Controls.Symbol symbol, Windows.UI.Xaml.Controls.SymbolIcon* return_instance);
}

@uuid("8624fbdf-952c-4f76-b03f-30833be99572")
@WinrtFactory("Windows.UI.Xaml.Controls.SymbolIcon")
interface ISymbolIconStatics : IInspectable
{
extern(Windows):
	HRESULT get_SymbolProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ae2d9271-3b4a-45fc-8468-f7949548f4d5")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlock : IInspectable
{
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
	HRESULT add_SelectionChanged(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT add_ContextMenuOpening(Windows.UI.Xaml.Controls.ContextMenuOpeningEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ContextMenuOpening(EventRegistrationToken token);
	HRESULT abi_SelectAll();
	HRESULT abi_Select(Windows.UI.Xaml.Documents.TextPointer start, Windows.UI.Xaml.Documents.TextPointer end);
	HRESULT abi_Focus(Windows.UI.Xaml.FocusState value, bool* return_returnValue);
}

@uuid("45206a4c-0a4e-4fbf-aee9-335d5a205f6e")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlock2 : IInspectable
{
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
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("b014f270-9808-4adc-b452-60cda54100c1")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlock4 : IInspectable
{
extern(Windows):
	HRESULT abi_GetAlphaMask(Windows.UI.Composition.CompositionBrush* return_returnValue);
}

@uuid("624a2d38-edbd-4a5a-b678-e49f1e07afbd")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlock5 : IInspectable
{
extern(Windows):
	HRESULT get_TextDecorations(Windows.UI.Text.TextDecorations* return_value);
	HRESULT set_TextDecorations(Windows.UI.Text.TextDecorations value);
}

@uuid("193ec042-a847-4552-b4e8-db36655b840a")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlockStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("8e4d9c70-0d4e-48df-ae7f-bb7a9af6852e")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBlock")
interface ITextBlockStatics5 : IInspectable
{
extern(Windows):
	HRESULT get_TextDecorationsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e48f5a8b-1dff-4352-a1f4-e516514ec882")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBox : IInspectable
{
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
	HRESULT add_TextChanged(Windows.UI.Xaml.Controls.TextChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_TextChanged(EventRegistrationToken token);
	HRESULT add_SelectionChanged(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SelectionChanged(EventRegistrationToken token);
	HRESULT add_ContextMenuOpening(Windows.UI.Xaml.Controls.ContextMenuOpeningEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ContextMenuOpening(EventRegistrationToken token);
	HRESULT abi_Select(INT32 start, INT32 length);
	HRESULT abi_SelectAll();
	HRESULT abi_GetRectFromCharacterIndex(INT32 charIndex, bool trailingEdge, Windows.Foundation.Rect* return_returnValue);
}

@uuid("f7168c00-1432-462a-9405-38f385bfc37c")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBox2 : IInspectable
{
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
	HRESULT add_Paste(Windows.UI.Xaml.Controls.TextControlPasteEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Paste(EventRegistrationToken token);
}

@uuid("7df18c3c-2826-425e-9a94-00b7f73f3756")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBox3 : IInspectable
{
extern(Windows):
	HRESULT add_TextCompositionStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionStarted(EventRegistrationToken token);
	HRESULT add_TextCompositionChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionChanged(EventRegistrationToken token);
	HRESULT add_TextCompositionEnded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TextCompositionEnded(EventRegistrationToken token);
	HRESULT get_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder* return_value);
	HRESULT set_TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value);
	HRESULT get_DesiredCandidateWindowAlignment(Windows.UI.Xaml.Controls.CandidateWindowAlignment* return_value);
	HRESULT set_DesiredCandidateWindowAlignment(Windows.UI.Xaml.Controls.CandidateWindowAlignment value);
	HRESULT add_CandidateWindowBoundsChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_CandidateWindowBoundsChanged(EventRegistrationToken token);
	HRESULT add_TextChanging(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextBoxTextChangingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TextChanging(EventRegistrationToken token);
}

@uuid("b5f1a675-cce1-45af-aef9-c4787bbb5e30")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBox4 : IInspectable
{
extern(Windows):
	HRESULT abi_GetLinguisticAlternativesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_returnValue);
}

@uuid("35f9cfc1-4176-44f4-b756-e9ccc4399805")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBox5 : IInspectable
{
extern(Windows):
	HRESULT get_SelectionHighlightColorWhenNotFocused(Windows.UI.Xaml.Media.SolidColorBrush* return_value);
	HRESULT set_SelectionHighlightColorWhenNotFocused(Windows.UI.Xaml.Media.SolidColorBrush value);
}

@uuid("710e4278-8529-47d3-8d8e-307e34cff081")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBoxFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.TextBox* return_instance);
}

@uuid("7e37f4fb-a4bc-4625-8838-8eb2a9091283")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBoxStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_DesiredCandidateWindowAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TextReadingOrderProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("07d04b45-1b2f-4627-82fd-683f197e5a75")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBox")
interface ITextBoxStatics5 : IInspectable
{
extern(Windows):
	HRESULT get_SelectionHighlightColorWhenNotFocusedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4e6a4b75-43dd-4e33-acbe-2d8796a17927")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBoxTextChangingEventArgs")
interface ITextBoxTextChangingEventArgs : IInspectable
{
}

@uuid("c0723d44-53a6-415f-a981-50dfaf1becbe")
@WinrtFactory("Windows.UI.Xaml.Controls.TextBoxTextChangingEventArgs")
interface ITextBoxTextChangingEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_IsContentChanging(bool* return_value);
}

@uuid("4dd04f7d-7a11-4b2e-9933-577df39252b6")
@WinrtFactory("Windows.UI.Xaml.Controls.TextChangedEventArgs")
interface ITextChangedEventArgs : IInspectable
{
}

@uuid("b9c7e0f2-50b7-441d-990c-68553e2e056b")
@WinrtFactory("Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs")
interface ITextCompositionChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_StartIndex(INT32* return_value);
	HRESULT get_Length(INT32* return_value);
}

@uuid("46e34db2-77c0-4015-8eb4-92eefdfc5914")
@WinrtFactory("Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs")
interface ITextCompositionEndedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_StartIndex(INT32* return_value);
	HRESULT get_Length(INT32* return_value);
}

@uuid("df22abb2-10cf-491e-91e8-d3cd72d8a0d3")
@WinrtFactory("Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs")
interface ITextCompositionStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_StartIndex(INT32* return_value);
	HRESULT get_Length(INT32* return_value);
}

@uuid("4bd1d625-221a-477e-bb2c-ad0c1ed125e7")
@WinrtFactory("Windows.UI.Xaml.Controls.TextControlPasteEventArgs")
interface ITextControlPasteEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("8ad3ff21-5f66-4785-b999-24fef39fb6db")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePickedEventArgs")
interface ITimePickedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_NewTime(Windows.Foundation.TimeSpan* return_value);
}

@uuid("e39099f2-3aff-4792-909e-2d9941ec0357")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePicker")
interface ITimePicker : IInspectable
{
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
extern(Windows):
	HRESULT get_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode* return_value);
	HRESULT set_LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value);
}

@uuid("553fe413-6cd7-46a9-a97b-a18bdc4b4ca3")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePicker")
interface ITimePickerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.TimePicker* return_instance);
}

@uuid("bb739d75-e836-439e-86d5-506d2d18e404")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePickerFlyout")
interface ITimePickerFlyout : IInspectable
{
extern(Windows):
	HRESULT get_ClockIdentifier(HSTRING* return_value);
	HRESULT set_ClockIdentifier(HSTRING value);
	HRESULT get_Time(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Time(Windows.Foundation.TimeSpan value);
	HRESULT get_MinuteIncrement(INT32* return_value);
	HRESULT set_MinuteIncrement(INT32 value);
	HRESULT add_TimePicked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TimePickerFlyout, Windows.UI.Xaml.Controls.TimePickedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_TimePicked(EventRegistrationToken token);
	HRESULT abi_ShowAtAsync(Windows.UI.Xaml.FrameworkElement target, Windows.Foundation.IAsyncOperation!(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan))* return_returnValue);
}

@uuid("c5320638-7a18-40ed-9fd0-4c852c09b24e")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePickerFlyoutPresenter")
interface ITimePickerFlyoutPresenter : IInspectable
{
}

@uuid("3f6728ce-2169-4003-b4a8-8de7035a0ad6")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePickerFlyout")
interface ITimePickerFlyoutStatics : IInspectable
{
extern(Windows):
	HRESULT get_ClockIdentifierProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinuteIncrementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fa71dfb1-233e-4f31-b8be-a6ea670c25cd")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePicker")
interface ITimePickerStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_LightDismissOverlayModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2f4edb8d-b995-4e31-8ba9-c4dcdeb21ca3")
@WinrtFactory("Windows.UI.Xaml.Controls.TimePickerValueChangedEventArgs")
interface ITimePickerValueChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_NewTime(Windows.Foundation.TimeSpan* return_value);
}

@uuid("49841edd-88e9-4663-a701-cd4fd25e398f")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleMenuFlyoutItem")
interface IToggleMenuFlyoutItem : IInspectable
{
extern(Windows):
	HRESULT get_IsChecked(bool* return_value);
	HRESULT set_IsChecked(bool value);
}

@uuid("a151966f-3bf7-46b6-b61c-9b2c1ba68843")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleMenuFlyoutItem")
interface IToggleMenuFlyoutItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ToggleMenuFlyoutItem* return_instance);
}

@uuid("16c724fb-6c1a-4852-9258-08c038367907")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleMenuFlyoutItem")
interface IToggleMenuFlyoutItemStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsCheckedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("331d8f00-c5f9-46a5-b6c8-ede539304567")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleSwitch")
interface IToggleSwitch : IInspectable
{
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
	HRESULT add_Toggled(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Toggled(EventRegistrationToken token);
}

@uuid("bfd07f53-f8ca-4e47-949e-9e80429b3d16")
@WinrtFactory("Windows.UI.Xaml.Controls.ToggleSwitch")
interface IToggleSwitchOverrides : IInspectable
{
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
	HRESULT add_Closed(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT add_Opened(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Opened(EventRegistrationToken token);
}

@uuid("89839403-b538-49e3-a430-3ac037dc6fe0")
@WinrtFactory("Windows.UI.Xaml.Controls.ToolTip")
interface IToolTipFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.ToolTip* return_instance);
}

@uuid("03a55f87-bfcc-4a1e-8fea-98f610832cea")
@WinrtFactory("Windows.UI.Xaml.Controls.ToolTipService")
interface IToolTipService : IInspectable
{
}

@uuid("86e649f8-e245-48aa-a8c8-d1073ed76319")
@WinrtFactory("Windows.UI.Xaml.Controls.ToolTipService")
interface IToolTipServiceStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_Move(UINT32 oldIndex, UINT32 newIndex);
}

@uuid("a7a69ec9-ea35-4679-bf29-f4f09286d314")
@WinrtFactory("Windows.UI.Xaml.Controls.UserControl")
interface IUserControl : IInspectable
{
extern(Windows):
	HRESULT get_Content(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Content(Windows.UI.Xaml.UIElement value);
}

@uuid("38b1ed92-a28a-4972-93df-f4f759b8afd2")
@WinrtFactory("Windows.UI.Xaml.Controls.UserControl")
interface IUserControlFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Controls.UserControl* return_instance);
}

@uuid("e8887976-2c5c-41cf-be6a-9e44befdf655")
@WinrtFactory("Windows.UI.Xaml.Controls.UserControl")
interface IUserControlStatics : IInspectable
{
extern(Windows):
	HRESULT get_ContentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9ca507c7-23c9-4f01-b80f-be5c21eef474")
@WinrtFactory("Windows.UI.Xaml.Controls.VariableSizedWrapGrid")
interface IVariableSizedWrapGrid : IInspectable
{
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
extern(Windows):
	HRESULT get_StretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StretchDirectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("38aad50c-12cf-4d1e-a884-c9df85f07cd9")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingPanel")
interface IVirtualizingPanel : IInspectable
{
extern(Windows):
	HRESULT get_ItemContainerGenerator(Windows.UI.Xaml.Controls.ItemContainerGenerator* return_value);
}

@uuid("be19f839-cbd0-43e9-a5d0-0bdba0ffbd38")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingPanel")
interface IVirtualizingPanelFactory : IInspectable
{
}

@uuid("5ef6bd7d-677f-408d-a96c-b19507750466")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingPanel")
interface IVirtualizingPanelOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnItemsChanged(IInspectable sender, Windows.UI.Xaml.Controls.Primitives.ItemsChangedEventArgs args);
	HRESULT abi_OnClearChildren();
	HRESULT abi_BringIndexIntoView(INT32 index);
}

@uuid("c9c9ab42-c232-479d-a7c9-5e7611196a45")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingPanel")
interface IVirtualizingPanelProtected : IInspectable
{
extern(Windows):
	HRESULT abi_AddInternalChild(Windows.UI.Xaml.UIElement child);
	HRESULT abi_InsertInternalChild(INT32 index, Windows.UI.Xaml.UIElement child);
	HRESULT abi_RemoveInternalChildRange(INT32 index, INT32 range);
}

@uuid("7567cd9a-a3b4-4dea-bb11-549e2c2f919d")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingStackPanel")
interface IVirtualizingStackPanel : IInspectable
{
extern(Windows):
	HRESULT get_AreScrollSnapPointsRegular(bool* return_value);
	HRESULT set_AreScrollSnapPointsRegular(bool value);
	HRESULT get_Orientation(Windows.UI.Xaml.Controls.Orientation* return_value);
	HRESULT set_Orientation(Windows.UI.Xaml.Controls.Orientation value);
	HRESULT add_CleanUpVirtualizedItemEvent(Windows.UI.Xaml.Controls.CleanUpVirtualizedItemEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_CleanUpVirtualizedItemEvent(EventRegistrationToken token);
}

@uuid("cbe6f72c-2892-46d1-987f-58ca1081f040")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingStackPanel")
interface IVirtualizingStackPanelOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnCleanUpVirtualizedItem(Windows.UI.Xaml.Controls.CleanUpVirtualizedItemEventArgs e);
}

@uuid("8314e778-91d3-4d56-ac09-223adcd2bd3f")
@WinrtFactory("Windows.UI.Xaml.Controls.VirtualizingStackPanel")
interface IVirtualizingStackPanelStatics : IInspectable
{
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
	HRESULT add_LoadCompleted(Windows.UI.Xaml.Navigation.LoadCompletedEventHandler value, EventRegistrationToken* return_token);
	deprecated("LoadCompleted may be altered or unavailable for releases after Windows 8.1. Instead, use NavigationCompleted.")
	HRESULT remove_LoadCompleted(EventRegistrationToken token);
	HRESULT add_ScriptNotify(Windows.UI.Xaml.Controls.NotifyEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ScriptNotify(EventRegistrationToken token);
	deprecated("NavigationFailed may be altered or unavailable for releases after Windows 8.1. Instead, use NavigationCompleted.")
	HRESULT add_NavigationFailed(Windows.UI.Xaml.Controls.WebViewNavigationFailedEventHandler value, EventRegistrationToken* return_token);
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
extern(Windows):
	HRESULT get_CanGoBack(bool* return_value);
	HRESULT get_CanGoForward(bool* return_value);
	HRESULT get_DocumentTitle(HSTRING* return_value);
	HRESULT add_NavigationStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_NavigationStarting(EventRegistrationToken token);
	HRESULT add_ContentLoading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ContentLoading(EventRegistrationToken token);
	HRESULT add_DOMContentLoaded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs) value, EventRegistrationToken* return_token);
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
	HRESULT add_NavigationCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_NavigationCompleted(EventRegistrationToken token);
	HRESULT add_FrameNavigationStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_FrameNavigationStarting(EventRegistrationToken token);
	HRESULT add_FrameContentLoading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_FrameContentLoading(EventRegistrationToken token);
	HRESULT add_FrameDOMContentLoaded(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_FrameDOMContentLoaded(EventRegistrationToken token);
	HRESULT add_FrameNavigationCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_FrameNavigationCompleted(EventRegistrationToken token);
	HRESULT add_LongRunningScriptDetected(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewLongRunningScriptDetectedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_LongRunningScriptDetected(EventRegistrationToken token);
	HRESULT add_UnsafeContentWarningDisplaying(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_UnsafeContentWarningDisplaying(EventRegistrationToken token);
	HRESULT add_UnviewableContentIdentified(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewUnviewableContentIdentifiedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_UnviewableContentIdentified(EventRegistrationToken token);
	HRESULT abi_NavigateWithHttpRequestMessage(Windows.Web.Http.HttpRequestMessage requestMessage);
	HRESULT abi_Focus(Windows.UI.Xaml.FocusState value, bool* return_returnValue);
}

@uuid("c497789b-b499-4d69-b5c2-ae9d5d6d594e")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebView3 : IInspectable
{
extern(Windows):
	HRESULT get_ContainsFullScreenElement(bool* return_value);
	HRESULT add_ContainsFullScreenElementChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_ContainsFullScreenElementChanged(EventRegistrationToken token);
}

@uuid("e28243bc-67f3-462a-b4e0-3bbf6c3dab0b")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebView4 : IInspectable
{
extern(Windows):
	HRESULT get_ExecutionMode(Windows.UI.Xaml.Controls.WebViewExecutionMode* return_value);
	HRESULT get_DeferredPermissionRequests(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.WebViewDeferredPermissionRequest)* return_value);
	HRESULT get_Settings(Windows.UI.Xaml.Controls.WebViewSettings* return_value);
	HRESULT add_UnsupportedUriSchemeIdentified(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewUnsupportedUriSchemeIdentifiedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_UnsupportedUriSchemeIdentified(EventRegistrationToken token);
	HRESULT add_NewWindowRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNewWindowRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_NewWindowRequested(EventRegistrationToken token);
	HRESULT add_PermissionRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewPermissionRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_PermissionRequested(EventRegistrationToken token);
	HRESULT abi_AddWebAllowedObject(HSTRING name, IInspectable pObject);
	HRESULT abi_DeferredPermissionRequestById(UINT32 id, Windows.UI.Xaml.Controls.WebViewDeferredPermissionRequest* return_returnValue);
}

@uuid("8c9884a6-2f3b-4a55-a463-8444c2095d00")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebView5 : IInspectable
{
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
extern(Windows):
	HRESULT get_SourceNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6e2980bb-98b8-413e-8129-971c6f7e4c8a")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs")
interface IWebViewContentLoadingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
}

@uuid("c47eba15-dc6b-4b36-9d80-82fb8817b988")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs")
interface IWebViewDOMContentLoadedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
}

@uuid("a3dcc461-7350-4d3a-8fb9-40eeec2746c2")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewDeferredPermissionRequest")
interface IWebViewDeferredPermissionRequest : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstanceWithExecutionMode(Windows.UI.Xaml.Controls.WebViewExecutionMode executionMode, Windows.UI.Xaml.Controls.WebView* return_instance);
}

@uuid("f3f020ab-a46c-42b0-9efe-69764d5cffa6")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewLongRunningScriptDetectedEventArgs")
interface IWebViewLongRunningScriptDetectedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ExecutionTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_StopPageScriptExecution(bool* return_value);
	HRESULT set_StopPageScriptExecution(bool value);
}

@uuid("11e6f20b-eba7-44c0-889b-edeb6a064ddd")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs")
interface IWebViewNavigationCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_IsSuccess(bool* return_value);
	HRESULT get_WebErrorStatus(Windows.Web.WebErrorStatus* return_value);
}

@uuid("af09609a-129c-4170-9e9c-e2cdf025dca4")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewNavigationFailedEventArgs")
interface IWebViewNavigationFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_WebErrorStatus(Windows.Web.WebErrorStatus* return_value);
}

@uuid("94cb8668-8367-43d5-91bb-96eba37ec784")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs")
interface IWebViewNavigationStartingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
}

@uuid("470fa818-6862-44d9-b3d1-c0696373de35")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewNewWindowRequestedEventArgs")
interface IWebViewNewWindowRequestedEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_PermissionRequest(Windows.UI.Xaml.Controls.WebViewPermissionRequest* return_value);
}

@uuid("1d50ad4d-abf6-4785-8df3-fdebc1270301")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewSettings")
interface IWebViewSettings : IInspectable
{
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
extern(Windows):
	HRESULT get_ContainsFullScreenElementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("44b197b0-b746-40f3-9936-4ebbff6b47b8")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebViewStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_DefaultExecutionMode(Windows.UI.Xaml.Controls.WebViewExecutionMode* return_value);
	HRESULT abi_ClearTemporaryWebDataAsync(Windows.Foundation.IAsyncAction* return_returnValue);
}

@uuid("08a0b8d1-508a-4db8-97ef-0fa505e19ec2")
@WinrtFactory("Windows.UI.Xaml.Controls.WebView")
interface IWebViewStatics5 : IInspectable
{
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
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("37bc16e1-6062-4678-b20b-6c36ac9c59ac")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewUnviewableContentIdentifiedEventArgs")
interface IWebViewUnviewableContentIdentifiedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Referrer(Windows.Foundation.Uri* return_value);
}

@uuid("9abe1154-36f0-4268-8d88-121eedf45e6a")
@WinrtFactory("Windows.UI.Xaml.Controls.WebViewUnviewableContentIdentifiedEventArgs")
interface IWebViewUnviewableContentIdentifiedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_MediaType(HSTRING* return_value);
}

@uuid("0552178b-7567-47c2-bd5c-ad8394c828ba")
@WinrtFactory("Windows.UI.Xaml.Controls.WrapGrid")
interface IWrapGrid : IInspectable
{
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
extern(Windows):
	HRESULT get_ItemWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OrientationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalChildrenAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalChildrenAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaximumRowsOrColumnsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

interface AppBar : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.IAppBar, Windows.UI.Xaml.Controls.IAppBarOverrides, Windows.UI.Xaml.Controls.IAppBar2, Windows.UI.Xaml.Controls.IAppBar3, Windows.UI.Xaml.Controls.IAppBarOverrides3, Windows.UI.Xaml.Controls.IAppBar4
{
extern(Windows):
	final bool IsOpen()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBar).get_IsOpen(&_ret));
		return _ret;
	}
	final void IsOpen(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBar).set_IsOpen(value));
	}
	final bool IsSticky()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBar).get_IsSticky(&_ret));
		return _ret;
	}
	final void IsSticky(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBar).set_IsSticky(value));
	}
	final EventRegistrationToken OnOpened(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Opened(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOpened(EventRegistrationToken token)
	{
		Debug.OK(remove_Opened(token));
	}
	final EventRegistrationToken OnClosed(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Closed(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeClosed(EventRegistrationToken token)
	{
		Debug.OK(remove_Closed(token));
	}
	final void OnClosed(IInspectable e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarOverrides).abi_OnClosed(e));
	}
	final void OnOpened(IInspectable e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarOverrides).abi_OnOpened(e));
	}
	final Windows.UI.Xaml.Controls.AppBarClosedDisplayMode ClosedDisplayMode()
	{
		Windows.UI.Xaml.Controls.AppBarClosedDisplayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBar2).get_ClosedDisplayMode(&_ret));
		return _ret;
	}
	final void ClosedDisplayMode(Windows.UI.Xaml.Controls.AppBarClosedDisplayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBar2).set_ClosedDisplayMode(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.AppBarTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.AppBarTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBar3).get_TemplateSettings(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnOpening(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Opening(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOpening(EventRegistrationToken token)
	{
		Debug.OK(remove_Opening(token));
	}
	final EventRegistrationToken OnClosing(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Closing(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeClosing(EventRegistrationToken token)
	{
		Debug.OK(remove_Closing(token));
	}
	final void OnClosing(IInspectable e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarOverrides3).abi_OnClosing(e));
	}
	final void OnOpening(IInspectable e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarOverrides3).abi_OnOpening(e));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBar4).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBar4).set_LightDismissOverlayMode(value));
	}
}

interface AppBarButton : Windows.UI.Xaml.Controls.Button, Windows.UI.Xaml.Controls.IAppBarButton, Windows.UI.Xaml.Controls.ICommandBarElement, Windows.UI.Xaml.Controls.IAppBarButton3, Windows.UI.Xaml.Controls.ICommandBarElement2
{
extern(Windows):
	final HSTRING Label()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarButton).get_Label(&_ret));
		return _ret;
	}
	final void Label(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarButton).set_Label(value));
	}
	final Windows.UI.Xaml.Controls.IconElement Icon()
	{
		Windows.UI.Xaml.Controls.IconElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarButton).get_Icon(&_ret));
		return _ret;
	}
	final void Icon(Windows.UI.Xaml.Controls.IconElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarButton).set_Icon(value));
	}
	final bool IsCompact()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement).get_IsCompact(&_ret));
		return _ret;
	}
	final void IsCompact(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement).set_IsCompact(value));
	}
	final Windows.UI.Xaml.Controls.CommandBarLabelPosition LabelPosition()
	{
		Windows.UI.Xaml.Controls.CommandBarLabelPosition _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarButton3).get_LabelPosition(&_ret));
		return _ret;
	}
	final void LabelPosition(Windows.UI.Xaml.Controls.CommandBarLabelPosition value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarButton3).set_LabelPosition(value));
	}
	final bool IsInOverflow()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement2).get_IsInOverflow(&_ret));
		return _ret;
	}
	final INT32 DynamicOverflowOrder()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement2).get_DynamicOverflowOrder(&_ret));
		return _ret;
	}
	final void DynamicOverflowOrder(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement2).set_DynamicOverflowOrder(value));
	}
}

interface AppBarSeparator : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IAppBarSeparator, Windows.UI.Xaml.Controls.ICommandBarElement, Windows.UI.Xaml.Controls.ICommandBarElement2
{
extern(Windows):
	final bool IsCompact()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement).get_IsCompact(&_ret));
		return _ret;
	}
	final void IsCompact(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement).set_IsCompact(value));
	}
	final bool IsInOverflow()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement2).get_IsInOverflow(&_ret));
		return _ret;
	}
	final INT32 DynamicOverflowOrder()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement2).get_DynamicOverflowOrder(&_ret));
		return _ret;
	}
	final void DynamicOverflowOrder(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement2).set_DynamicOverflowOrder(value));
	}
}

interface AppBarToggleButton : Windows.UI.Xaml.Controls.Primitives.ToggleButton, Windows.UI.Xaml.Controls.IAppBarToggleButton, Windows.UI.Xaml.Controls.ICommandBarElement, Windows.UI.Xaml.Controls.IAppBarToggleButton3, Windows.UI.Xaml.Controls.ICommandBarElement2
{
extern(Windows):
	final HSTRING Label()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarToggleButton).get_Label(&_ret));
		return _ret;
	}
	final void Label(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarToggleButton).set_Label(value));
	}
	final Windows.UI.Xaml.Controls.IconElement Icon()
	{
		Windows.UI.Xaml.Controls.IconElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarToggleButton).get_Icon(&_ret));
		return _ret;
	}
	final void Icon(Windows.UI.Xaml.Controls.IconElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarToggleButton).set_Icon(value));
	}
	final bool IsCompact()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement).get_IsCompact(&_ret));
		return _ret;
	}
	final void IsCompact(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement).set_IsCompact(value));
	}
	final Windows.UI.Xaml.Controls.CommandBarLabelPosition LabelPosition()
	{
		Windows.UI.Xaml.Controls.CommandBarLabelPosition _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarToggleButton3).get_LabelPosition(&_ret));
		return _ret;
	}
	final void LabelPosition(Windows.UI.Xaml.Controls.CommandBarLabelPosition value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAppBarToggleButton3).set_LabelPosition(value));
	}
	final bool IsInOverflow()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement2).get_IsInOverflow(&_ret));
		return _ret;
	}
	final INT32 DynamicOverflowOrder()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement2).get_DynamicOverflowOrder(&_ret));
		return _ret;
	}
	final void DynamicOverflowOrder(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBarElement2).set_DynamicOverflowOrder(value));
	}
}

interface AutoSuggestBox : Windows.UI.Xaml.Controls.ItemsControl, Windows.UI.Xaml.Controls.IAutoSuggestBox, Windows.UI.Xaml.Controls.IAutoSuggestBox2, Windows.UI.Xaml.Controls.IAutoSuggestBox3
{
extern(Windows):
	final double MaxSuggestionListHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).get_MaxSuggestionListHeight(&_ret));
		return _ret;
	}
	final void MaxSuggestionListHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).set_MaxSuggestionListHeight(value));
	}
	final bool IsSuggestionListOpen()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).get_IsSuggestionListOpen(&_ret));
		return _ret;
	}
	final void IsSuggestionListOpen(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).set_IsSuggestionListOpen(value));
	}
	final HSTRING TextMemberPath()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).get_TextMemberPath(&_ret));
		return _ret;
	}
	final void TextMemberPath(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).set_TextMemberPath(value));
	}
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).set_Text(value));
	}
	final bool UpdateTextOnSelect()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).get_UpdateTextOnSelect(&_ret));
		return _ret;
	}
	final void UpdateTextOnSelect(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).set_UpdateTextOnSelect(value));
	}
	final HSTRING PlaceholderText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).get_PlaceholderText(&_ret));
		return _ret;
	}
	final void PlaceholderText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).set_PlaceholderText(value));
	}
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).set_Header(value));
	}
	final bool AutoMaximizeSuggestionArea()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).get_AutoMaximizeSuggestionArea(&_ret));
		return _ret;
	}
	final void AutoMaximizeSuggestionArea(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).set_AutoMaximizeSuggestionArea(value));
	}
	final Windows.UI.Xaml.Style TextBoxStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).get_TextBoxStyle(&_ret));
		return _ret;
	}
	final void TextBoxStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox).set_TextBoxStyle(value));
	}
	final EventRegistrationToken OnSuggestionChosen(void delegate(Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxSuggestionChosenEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SuggestionChosen(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxSuggestionChosenEventArgs), Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxSuggestionChosenEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSuggestionChosen(EventRegistrationToken token)
	{
		Debug.OK(remove_SuggestionChosen(token));
	}
	final EventRegistrationToken OnTextChanged(void delegate(Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxTextChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TextChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxTextChangedEventArgs), Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxTextChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_TextChanged(token));
	}
	final Windows.UI.Xaml.Controls.IconElement QueryIcon()
	{
		Windows.UI.Xaml.Controls.IconElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox2).get_QueryIcon(&_ret));
		return _ret;
	}
	final void QueryIcon(Windows.UI.Xaml.Controls.IconElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox2).set_QueryIcon(value));
	}
	final EventRegistrationToken OnQuerySubmitted(void delegate(Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxQuerySubmittedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_QuerySubmitted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxQuerySubmittedEventArgs), Windows.UI.Xaml.Controls.AutoSuggestBox, Windows.UI.Xaml.Controls.AutoSuggestBoxQuerySubmittedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeQuerySubmitted(EventRegistrationToken token)
	{
		Debug.OK(remove_QuerySubmitted(token));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox3).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBox3).set_LightDismissOverlayMode(value));
	}
}

interface AutoSuggestBoxQuerySubmittedEventArgs : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.IAutoSuggestBoxQuerySubmittedEventArgs
{
extern(Windows):
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBoxQuerySubmittedEventArgs).get_QueryText(&_ret));
		return _ret;
	}
	final IInspectable ChosenSuggestion()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBoxQuerySubmittedEventArgs).get_ChosenSuggestion(&_ret));
		return _ret;
	}
}

interface AutoSuggestBoxSuggestionChosenEventArgs : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.IAutoSuggestBoxSuggestionChosenEventArgs
{
extern(Windows):
	final IInspectable SelectedItem()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBoxSuggestionChosenEventArgs).get_SelectedItem(&_ret));
		return _ret;
	}
}

interface AutoSuggestBoxTextChangedEventArgs : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.IAutoSuggestBoxTextChangedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.AutoSuggestionBoxTextChangeReason Reason()
	{
		Windows.UI.Xaml.Controls.AutoSuggestionBoxTextChangeReason _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBoxTextChangedEventArgs).get_Reason(&_ret));
		return _ret;
	}
	final void Reason(Windows.UI.Xaml.Controls.AutoSuggestionBoxTextChangeReason value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBoxTextChangedEventArgs).set_Reason(value));
	}
	final bool CheckCurrent()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IAutoSuggestBoxTextChangedEventArgs).abi_CheckCurrent(&_ret));
		return _ret;
	}
}

interface BackClickEventArgs : Windows.UI.Xaml.Controls.IBackClickEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBackClickEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBackClickEventArgs).set_Handled(value));
	}
}

interface BitmapIcon : Windows.UI.Xaml.Controls.IconElement, Windows.UI.Xaml.Controls.IBitmapIcon, Windows.UI.Xaml.Controls.IBitmapIcon2
{
extern(Windows):
	final Windows.Foundation.Uri UriSource()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBitmapIcon).get_UriSource(&_ret));
		return _ret;
	}
	final void UriSource(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBitmapIcon).set_UriSource(value));
	}
	final bool ShowAsMonochrome()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBitmapIcon2).get_ShowAsMonochrome(&_ret));
		return _ret;
	}
	final void ShowAsMonochrome(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBitmapIcon2).set_ShowAsMonochrome(value));
	}
}

interface Border : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IBorder
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush BorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).get_BorderBrush(&_ret));
		return _ret;
	}
	final void BorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).set_BorderBrush(value));
	}
	final Windows.UI.Xaml.Thickness BorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).get_BorderThickness(&_ret));
		return _ret;
	}
	final void BorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).set_BorderThickness(value));
	}
	final Windows.UI.Xaml.Media.Brush Background()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).get_Background(&_ret));
		return _ret;
	}
	final void Background(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).set_Background(value));
	}
	final Windows.UI.Xaml.CornerRadius CornerRadius()
	{
		Windows.UI.Xaml.CornerRadius _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).get_CornerRadius(&_ret));
		return _ret;
	}
	final void CornerRadius(Windows.UI.Xaml.CornerRadius value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).set_CornerRadius(value));
	}
	final Windows.UI.Xaml.Thickness Padding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).set_Padding(value));
	}
	final Windows.UI.Xaml.UIElement Child()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).get_Child(&_ret));
		return _ret;
	}
	final void Child(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).set_Child(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection ChildTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).get_ChildTransitions(&_ret));
		return _ret;
	}
	final void ChildTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IBorder).set_ChildTransitions(value));
	}
}

interface Button : Windows.UI.Xaml.Controls.Primitives.ButtonBase, Windows.UI.Xaml.Controls.IButton, Windows.UI.Xaml.Controls.IButtonWithFlyout
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Primitives.FlyoutBase Flyout()
	{
		Windows.UI.Xaml.Controls.Primitives.FlyoutBase _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IButtonWithFlyout).get_Flyout(&_ret));
		return _ret;
	}
	final void Flyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IButtonWithFlyout).set_Flyout(value));
	}
}

interface CalendarDatePicker : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.ICalendarDatePicker, Windows.UI.Xaml.Controls.ICalendarDatePicker2
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Date()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_Date(&_ret));
		return _ret;
	}
	final void Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_Date(value));
	}
	final bool IsCalendarOpen()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_IsCalendarOpen(&_ret));
		return _ret;
	}
	final void IsCalendarOpen(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_IsCalendarOpen(value));
	}
	final HSTRING DateFormat()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_DateFormat(&_ret));
		return _ret;
	}
	final void DateFormat(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_DateFormat(value));
	}
	final HSTRING PlaceholderText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_PlaceholderText(&_ret));
		return _ret;
	}
	final void PlaceholderText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_PlaceholderText(value));
	}
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_HeaderTemplate(value));
	}
	final Windows.UI.Xaml.Style CalendarViewStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_CalendarViewStyle(&_ret));
		return _ret;
	}
	final void CalendarViewStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_CalendarViewStyle(value));
	}
	final Windows.Foundation.DateTime MinDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_MinDate(&_ret));
		return _ret;
	}
	final void MinDate(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_MinDate(value));
	}
	final Windows.Foundation.DateTime MaxDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_MaxDate(&_ret));
		return _ret;
	}
	final void MaxDate(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_MaxDate(value));
	}
	final bool IsTodayHighlighted()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_IsTodayHighlighted(&_ret));
		return _ret;
	}
	final void IsTodayHighlighted(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_IsTodayHighlighted(value));
	}
	final Windows.UI.Xaml.Controls.CalendarViewDisplayMode DisplayMode()
	{
		Windows.UI.Xaml.Controls.CalendarViewDisplayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_DisplayMode(&_ret));
		return _ret;
	}
	final void DisplayMode(Windows.UI.Xaml.Controls.CalendarViewDisplayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_DisplayMode(value));
	}
	final Windows.Globalization.DayOfWeek FirstDayOfWeek()
	{
		Windows.Globalization.DayOfWeek _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_FirstDayOfWeek(&_ret));
		return _ret;
	}
	final void FirstDayOfWeek(Windows.Globalization.DayOfWeek value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_FirstDayOfWeek(value));
	}
	final HSTRING DayOfWeekFormat()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_DayOfWeekFormat(&_ret));
		return _ret;
	}
	final void DayOfWeekFormat(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_DayOfWeekFormat(value));
	}
	final HSTRING CalendarIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_CalendarIdentifier(&_ret));
		return _ret;
	}
	final void CalendarIdentifier(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_CalendarIdentifier(value));
	}
	final bool IsOutOfScopeEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_IsOutOfScopeEnabled(&_ret));
		return _ret;
	}
	final void IsOutOfScopeEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_IsOutOfScopeEnabled(value));
	}
	final bool IsGroupLabelVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).get_IsGroupLabelVisible(&_ret));
		return _ret;
	}
	final void IsGroupLabelVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).set_IsGroupLabelVisible(value));
	}
	final void removeCalendarViewDayItemChanging(EventRegistrationToken token)
	{
		Debug.OK(remove_CalendarViewDayItemChanging(token));
	}
	final EventRegistrationToken OnDateChanged(void delegate(Windows.UI.Xaml.Controls.CalendarDatePicker, Windows.UI.Xaml.Controls.CalendarDatePickerDateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarDatePicker, Windows.UI.Xaml.Controls.CalendarDatePickerDateChangedEventArgs), Windows.UI.Xaml.Controls.CalendarDatePicker, Windows.UI.Xaml.Controls.CalendarDatePickerDateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_DateChanged(token));
	}
	final EventRegistrationToken OnOpened(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Opened(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeOpened(EventRegistrationToken token)
	{
		Debug.OK(remove_Opened(token));
	}
	final EventRegistrationToken OnClosed(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Closed(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeClosed(EventRegistrationToken token)
	{
		Debug.OK(remove_Closed(token));
	}
	final void SetDisplayDate(Windows.Foundation.DateTime date)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).abi_SetDisplayDate(date));
	}
	final void SetYearDecadeDisplayDimensions(INT32 columns, INT32 rows)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker).abi_SetYearDecadeDisplayDimensions(columns, rows));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker2).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePicker2).set_LightDismissOverlayMode(value));
	}
}

interface CalendarDatePickerDateChangedEventArgs : Windows.UI.Xaml.Controls.ICalendarDatePickerDateChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) NewDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePickerDateChangedEventArgs).get_NewDate(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) OldDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarDatePickerDateChangedEventArgs).get_OldDate(&_ret));
		return _ret;
	}
}

interface CalendarView : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.ICalendarView
{
extern(Windows):
	final HSTRING CalendarIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_CalendarIdentifier(&_ret));
		return _ret;
	}
	final void CalendarIdentifier(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_CalendarIdentifier(value));
	}
	final HSTRING DayOfWeekFormat()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_DayOfWeekFormat(&_ret));
		return _ret;
	}
	final void DayOfWeekFormat(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_DayOfWeekFormat(value));
	}
	final bool IsGroupLabelVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_IsGroupLabelVisible(&_ret));
		return _ret;
	}
	final void IsGroupLabelVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_IsGroupLabelVisible(value));
	}
	final Windows.UI.Xaml.Controls.CalendarViewDisplayMode DisplayMode()
	{
		Windows.UI.Xaml.Controls.CalendarViewDisplayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_DisplayMode(&_ret));
		return _ret;
	}
	final void DisplayMode(Windows.UI.Xaml.Controls.CalendarViewDisplayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_DisplayMode(value));
	}
	final Windows.Globalization.DayOfWeek FirstDayOfWeek()
	{
		Windows.Globalization.DayOfWeek _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_FirstDayOfWeek(&_ret));
		return _ret;
	}
	final void FirstDayOfWeek(Windows.Globalization.DayOfWeek value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_FirstDayOfWeek(value));
	}
	final bool IsOutOfScopeEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_IsOutOfScopeEnabled(&_ret));
		return _ret;
	}
	final void IsOutOfScopeEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_IsOutOfScopeEnabled(value));
	}
	final bool IsTodayHighlighted()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_IsTodayHighlighted(&_ret));
		return _ret;
	}
	final void IsTodayHighlighted(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_IsTodayHighlighted(value));
	}
	final Windows.Foundation.DateTime MaxDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_MaxDate(&_ret));
		return _ret;
	}
	final void MaxDate(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_MaxDate(value));
	}
	final Windows.Foundation.DateTime MinDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_MinDate(&_ret));
		return _ret;
	}
	final void MinDate(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_MinDate(value));
	}
	final INT32 NumberOfWeeksInView()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_NumberOfWeeksInView(&_ret));
		return _ret;
	}
	final void NumberOfWeeksInView(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_NumberOfWeeksInView(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Foundation.DateTime) SelectedDates()
	{
		Windows.Foundation.Collections.IVector!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_SelectedDates(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.CalendarViewSelectionMode SelectionMode()
	{
		Windows.UI.Xaml.Controls.CalendarViewSelectionMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_SelectionMode(&_ret));
		return _ret;
	}
	final void SelectionMode(Windows.UI.Xaml.Controls.CalendarViewSelectionMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_SelectionMode(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.CalendarViewTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.CalendarViewTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_TemplateSettings(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Brush FocusBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_FocusBorderBrush(&_ret));
		return _ret;
	}
	final void FocusBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_FocusBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedHoverBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_SelectedHoverBorderBrush(&_ret));
		return _ret;
	}
	final void SelectedHoverBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_SelectedHoverBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedPressedBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_SelectedPressedBorderBrush(&_ret));
		return _ret;
	}
	final void SelectedPressedBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_SelectedPressedBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_SelectedBorderBrush(&_ret));
		return _ret;
	}
	final void SelectedBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_SelectedBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush HoverBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_HoverBorderBrush(&_ret));
		return _ret;
	}
	final void HoverBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_HoverBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush PressedBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_PressedBorderBrush(&_ret));
		return _ret;
	}
	final void PressedBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_PressedBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush CalendarItemBorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_CalendarItemBorderBrush(&_ret));
		return _ret;
	}
	final void CalendarItemBorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_CalendarItemBorderBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush OutOfScopeBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_OutOfScopeBackground(&_ret));
		return _ret;
	}
	final void OutOfScopeBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_OutOfScopeBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush CalendarItemBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_CalendarItemBackground(&_ret));
		return _ret;
	}
	final void CalendarItemBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_CalendarItemBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush PressedForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_PressedForeground(&_ret));
		return _ret;
	}
	final void PressedForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_PressedForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush TodayForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_TodayForeground(&_ret));
		return _ret;
	}
	final void TodayForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_TodayForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush BlackoutForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_BlackoutForeground(&_ret));
		return _ret;
	}
	final void BlackoutForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_BlackoutForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_SelectedForeground(&_ret));
		return _ret;
	}
	final void SelectedForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_SelectedForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush OutOfScopeForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_OutOfScopeForeground(&_ret));
		return _ret;
	}
	final void OutOfScopeForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_OutOfScopeForeground(value));
	}
	final Windows.UI.Xaml.Media.Brush CalendarItemForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_CalendarItemForeground(&_ret));
		return _ret;
	}
	final void CalendarItemForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_CalendarItemForeground(value));
	}
	final Windows.UI.Xaml.Media.FontFamily DayItemFontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_DayItemFontFamily(&_ret));
		return _ret;
	}
	final void DayItemFontFamily(Windows.UI.Xaml.Media.FontFamily value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_DayItemFontFamily(value));
	}
	final double DayItemFontSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_DayItemFontSize(&_ret));
		return _ret;
	}
	final void DayItemFontSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_DayItemFontSize(value));
	}
	final Windows.UI.Text.FontStyle DayItemFontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_DayItemFontStyle(&_ret));
		return _ret;
	}
	final void DayItemFontStyle(Windows.UI.Text.FontStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_DayItemFontStyle(value));
	}
	final Windows.UI.Text.FontWeight DayItemFontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_DayItemFontWeight(&_ret));
		return _ret;
	}
	final void DayItemFontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_DayItemFontWeight(value));
	}
	final Windows.UI.Text.FontWeight TodayFontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_TodayFontWeight(&_ret));
		return _ret;
	}
	final void TodayFontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_TodayFontWeight(value));
	}
	final Windows.UI.Xaml.Media.FontFamily FirstOfMonthLabelFontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_FirstOfMonthLabelFontFamily(&_ret));
		return _ret;
	}
	final void FirstOfMonthLabelFontFamily(Windows.UI.Xaml.Media.FontFamily value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_FirstOfMonthLabelFontFamily(value));
	}
	final double FirstOfMonthLabelFontSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_FirstOfMonthLabelFontSize(&_ret));
		return _ret;
	}
	final void FirstOfMonthLabelFontSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_FirstOfMonthLabelFontSize(value));
	}
	final Windows.UI.Text.FontStyle FirstOfMonthLabelFontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_FirstOfMonthLabelFontStyle(&_ret));
		return _ret;
	}
	final void FirstOfMonthLabelFontStyle(Windows.UI.Text.FontStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_FirstOfMonthLabelFontStyle(value));
	}
	final Windows.UI.Text.FontWeight FirstOfMonthLabelFontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_FirstOfMonthLabelFontWeight(&_ret));
		return _ret;
	}
	final void FirstOfMonthLabelFontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_FirstOfMonthLabelFontWeight(value));
	}
	final Windows.UI.Xaml.Media.FontFamily MonthYearItemFontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_MonthYearItemFontFamily(&_ret));
		return _ret;
	}
	final void MonthYearItemFontFamily(Windows.UI.Xaml.Media.FontFamily value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_MonthYearItemFontFamily(value));
	}
	final double MonthYearItemFontSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_MonthYearItemFontSize(&_ret));
		return _ret;
	}
	final void MonthYearItemFontSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_MonthYearItemFontSize(value));
	}
	final Windows.UI.Text.FontStyle MonthYearItemFontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_MonthYearItemFontStyle(&_ret));
		return _ret;
	}
	final void MonthYearItemFontStyle(Windows.UI.Text.FontStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_MonthYearItemFontStyle(value));
	}
	final Windows.UI.Text.FontWeight MonthYearItemFontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_MonthYearItemFontWeight(&_ret));
		return _ret;
	}
	final void MonthYearItemFontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_MonthYearItemFontWeight(value));
	}
	final Windows.UI.Xaml.Media.FontFamily FirstOfYearDecadeLabelFontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_FirstOfYearDecadeLabelFontFamily(&_ret));
		return _ret;
	}
	final void FirstOfYearDecadeLabelFontFamily(Windows.UI.Xaml.Media.FontFamily value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_FirstOfYearDecadeLabelFontFamily(value));
	}
	final double FirstOfYearDecadeLabelFontSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_FirstOfYearDecadeLabelFontSize(&_ret));
		return _ret;
	}
	final void FirstOfYearDecadeLabelFontSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_FirstOfYearDecadeLabelFontSize(value));
	}
	final Windows.UI.Text.FontStyle FirstOfYearDecadeLabelFontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_FirstOfYearDecadeLabelFontStyle(&_ret));
		return _ret;
	}
	final void FirstOfYearDecadeLabelFontStyle(Windows.UI.Text.FontStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_FirstOfYearDecadeLabelFontStyle(value));
	}
	final Windows.UI.Text.FontWeight FirstOfYearDecadeLabelFontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_FirstOfYearDecadeLabelFontWeight(&_ret));
		return _ret;
	}
	final void FirstOfYearDecadeLabelFontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_FirstOfYearDecadeLabelFontWeight(value));
	}
	final Windows.UI.Xaml.HorizontalAlignment HorizontalDayItemAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_HorizontalDayItemAlignment(&_ret));
		return _ret;
	}
	final void HorizontalDayItemAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_HorizontalDayItemAlignment(value));
	}
	final Windows.UI.Xaml.VerticalAlignment VerticalDayItemAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_VerticalDayItemAlignment(&_ret));
		return _ret;
	}
	final void VerticalDayItemAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_VerticalDayItemAlignment(value));
	}
	final Windows.UI.Xaml.HorizontalAlignment HorizontalFirstOfMonthLabelAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_HorizontalFirstOfMonthLabelAlignment(&_ret));
		return _ret;
	}
	final void HorizontalFirstOfMonthLabelAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_HorizontalFirstOfMonthLabelAlignment(value));
	}
	final Windows.UI.Xaml.VerticalAlignment VerticalFirstOfMonthLabelAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_VerticalFirstOfMonthLabelAlignment(&_ret));
		return _ret;
	}
	final void VerticalFirstOfMonthLabelAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_VerticalFirstOfMonthLabelAlignment(value));
	}
	final Windows.UI.Xaml.Thickness CalendarItemBorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_CalendarItemBorderThickness(&_ret));
		return _ret;
	}
	final void CalendarItemBorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_CalendarItemBorderThickness(value));
	}
	final Windows.UI.Xaml.Style CalendarViewDayItemStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).get_CalendarViewDayItemStyle(&_ret));
		return _ret;
	}
	final void CalendarViewDayItemStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).set_CalendarViewDayItemStyle(value));
	}
	final EventRegistrationToken OnCalendarViewDayItemChanging(void delegate(Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CalendarViewDayItemChanging(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs), Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCalendarViewDayItemChanging(EventRegistrationToken token)
	{
		Debug.OK(remove_CalendarViewDayItemChanging(token));
	}
	final EventRegistrationToken OnSelectedDatesChanged(void delegate(Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewSelectedDatesChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SelectedDatesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewSelectedDatesChangedEventArgs), Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewSelectedDatesChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSelectedDatesChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SelectedDatesChanged(token));
	}
	final void SetDisplayDate(Windows.Foundation.DateTime date)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).abi_SetDisplayDate(date));
	}
	final void SetYearDecadeDisplayDimensions(INT32 columns, INT32 rows)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarView).abi_SetYearDecadeDisplayDimensions(columns, rows));
	}
}

interface CalendarViewDayItem : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.ICalendarViewDayItem
{
extern(Windows):
	final bool IsBlackout()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewDayItem).get_IsBlackout(&_ret));
		return _ret;
	}
	final void IsBlackout(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewDayItem).set_IsBlackout(value));
	}
	final Windows.Foundation.DateTime Date()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewDayItem).get_Date(&_ret));
		return _ret;
	}
	final void SetDensityColors(Windows.Foundation.Collections.IIterable!(Windows.UI.Color) colors)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewDayItem).abi_SetDensityColors(colors));
	}
}

interface CalendarViewDayItemChangingEventArgs : Windows.UI.Xaml.Controls.ICalendarViewDayItemChangingEventArgs
{
extern(Windows):
	final bool InRecycleQueue()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewDayItemChangingEventArgs).get_InRecycleQueue(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.CalendarViewDayItem Item()
	{
		Windows.UI.Xaml.Controls.CalendarViewDayItem _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewDayItemChangingEventArgs).get_Item(&_ret));
		return _ret;
	}
	final UINT32 Phase()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewDayItemChangingEventArgs).get_Phase(&_ret));
		return _ret;
	}
	final void RegisterUpdateCallback(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs) callback)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewDayItemChangingEventArgs).abi_RegisterUpdateCallback(callback));
	}
	final void RegisterUpdateCallbackWithPhase(UINT32 callbackPhase, Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CalendarView, Windows.UI.Xaml.Controls.CalendarViewDayItemChangingEventArgs) callback)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewDayItemChangingEventArgs).abi_RegisterUpdateCallbackWithPhase(callbackPhase, callback));
	}
}

interface CalendarViewSelectedDatesChangedEventArgs : Windows.UI.Xaml.Controls.ICalendarViewSelectedDatesChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.DateTime) AddedDates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewSelectedDatesChangedEventArgs).get_AddedDates(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.DateTime) RemovedDates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICalendarViewSelectedDatesChangedEventArgs).get_RemovedDates(&_ret));
		return _ret;
	}
}

interface CandidateWindowBoundsChangedEventArgs : Windows.UI.Xaml.Controls.ICandidateWindowBoundsChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.Rect Bounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICandidateWindowBoundsChangedEventArgs).get_Bounds(&_ret));
		return _ret;
	}
}

interface Canvas : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.ICanvas
{
}

interface CaptureElement : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.ICaptureElement
{
extern(Windows):
	final Windows.Media.Capture.MediaCapture Source()
	{
		Windows.Media.Capture.MediaCapture _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICaptureElement).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.Media.Capture.MediaCapture value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICaptureElement).set_Source(value));
	}
	final Windows.UI.Xaml.Media.Stretch Stretch()
	{
		Windows.UI.Xaml.Media.Stretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICaptureElement).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Xaml.Media.Stretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICaptureElement).set_Stretch(value));
	}
}

interface CheckBox : Windows.UI.Xaml.Controls.Primitives.ToggleButton, Windows.UI.Xaml.Controls.ICheckBox
{
}

interface ChoosingGroupHeaderContainerEventArgs : Windows.UI.Xaml.Controls.IChoosingGroupHeaderContainerEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ListViewBaseHeaderItem GroupHeaderContainer()
	{
		Windows.UI.Xaml.Controls.ListViewBaseHeaderItem _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IChoosingGroupHeaderContainerEventArgs).get_GroupHeaderContainer(&_ret));
		return _ret;
	}
	final void GroupHeaderContainer(Windows.UI.Xaml.Controls.ListViewBaseHeaderItem value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IChoosingGroupHeaderContainerEventArgs).set_GroupHeaderContainer(value));
	}
	final INT32 GroupIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IChoosingGroupHeaderContainerEventArgs).get_GroupIndex(&_ret));
		return _ret;
	}
	final IInspectable Group()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IChoosingGroupHeaderContainerEventArgs).get_Group(&_ret));
		return _ret;
	}
}

interface ChoosingItemContainerEventArgs : Windows.UI.Xaml.Controls.IChoosingItemContainerEventArgs
{
extern(Windows):
	final INT32 ItemIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IChoosingItemContainerEventArgs).get_ItemIndex(&_ret));
		return _ret;
	}
	final IInspectable Item()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IChoosingItemContainerEventArgs).get_Item(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.SelectorItem ItemContainer()
	{
		Windows.UI.Xaml.Controls.Primitives.SelectorItem _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IChoosingItemContainerEventArgs).get_ItemContainer(&_ret));
		return _ret;
	}
	final void ItemContainer(Windows.UI.Xaml.Controls.Primitives.SelectorItem value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IChoosingItemContainerEventArgs).set_ItemContainer(value));
	}
	final bool IsContainerPrepared()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IChoosingItemContainerEventArgs).get_IsContainerPrepared(&_ret));
		return _ret;
	}
	final void IsContainerPrepared(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IChoosingItemContainerEventArgs).set_IsContainerPrepared(value));
	}
}

interface CleanUpVirtualizedItemEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.ICleanUpVirtualizedItemEventArgs
{
extern(Windows):
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICleanUpVirtualizedItemEventArgs).get_Value(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.UIElement UIElement()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICleanUpVirtualizedItemEventArgs).get_UIElement(&_ret));
		return _ret;
	}
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICleanUpVirtualizedItemEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICleanUpVirtualizedItemEventArgs).set_Cancel(value));
	}
}

interface ColumnDefinition : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.IColumnDefinition
{
extern(Windows):
	final Windows.UI.Xaml.GridLength Width()
	{
		Windows.UI.Xaml.GridLength _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IColumnDefinition).get_Width(&_ret));
		return _ret;
	}
	final void Width(Windows.UI.Xaml.GridLength value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IColumnDefinition).set_Width(value));
	}
	final double MaxWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IColumnDefinition).get_MaxWidth(&_ret));
		return _ret;
	}
	final void MaxWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IColumnDefinition).set_MaxWidth(value));
	}
	final double MinWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IColumnDefinition).get_MinWidth(&_ret));
		return _ret;
	}
	final void MinWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IColumnDefinition).set_MinWidth(value));
	}
	final double ActualWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IColumnDefinition).get_ActualWidth(&_ret));
		return _ret;
	}
}

interface ColumnDefinitionCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Controls.ColumnDefinition)
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ColumnDefinition GetAt(uint index)
	{
		Windows.UI.Xaml.Controls.ColumnDefinition _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.ColumnDefinition)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Controls.ColumnDefinition value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Controls.ColumnDefinition item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Controls.ColumnDefinition item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Controls.ColumnDefinition item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Controls.ColumnDefinition* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Controls.ColumnDefinition* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.ColumnDefinition)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Controls.ColumnDefinition)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Controls.ColumnDefinition)).abi_First(out_first));
	}
}

interface ComboBox : Windows.UI.Xaml.Controls.Primitives.Selector, Windows.UI.Xaml.Controls.IComboBox, Windows.UI.Xaml.Controls.IComboBoxOverrides, Windows.UI.Xaml.Controls.IComboBox2, Windows.UI.Xaml.Controls.IComboBox3, Windows.UI.Xaml.Controls.IComboBox4
{
extern(Windows):
	final bool IsDropDownOpen()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox).get_IsDropDownOpen(&_ret));
		return _ret;
	}
	final void IsDropDownOpen(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox).set_IsDropDownOpen(value));
	}
	final bool IsEditable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox).get_IsEditable(&_ret));
		return _ret;
	}
	final bool IsSelectionBoxHighlighted()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox).get_IsSelectionBoxHighlighted(&_ret));
		return _ret;
	}
	final double MaxDropDownHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox).get_MaxDropDownHeight(&_ret));
		return _ret;
	}
	final void MaxDropDownHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox).set_MaxDropDownHeight(value));
	}
	final IInspectable SelectionBoxItem()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox).get_SelectionBoxItem(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DataTemplate SelectionBoxItemTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox).get_SelectionBoxItemTemplate(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.ComboBoxTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.ComboBoxTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox).get_TemplateSettings(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDropDownClosed(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DropDownClosed(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDropDownClosed(EventRegistrationToken token)
	{
		Debug.OK(remove_DropDownClosed(token));
	}
	final EventRegistrationToken OnDropDownOpened(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DropDownOpened(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDropDownOpened(EventRegistrationToken token)
	{
		Debug.OK(remove_DropDownOpened(token));
	}
	final void OnDropDownClosed(IInspectable e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBoxOverrides).abi_OnDropDownClosed(e));
	}
	final void OnDropDownOpened(IInspectable e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBoxOverrides).abi_OnDropDownOpened(e));
	}
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox2).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox2).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox2).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox2).set_HeaderTemplate(value));
	}
	final HSTRING PlaceholderText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox2).get_PlaceholderText(&_ret));
		return _ret;
	}
	final void PlaceholderText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox2).set_PlaceholderText(value));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox3).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox3).set_LightDismissOverlayMode(value));
	}
	final bool IsTextSearchEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox3).get_IsTextSearchEnabled(&_ret));
		return _ret;
	}
	final void IsTextSearchEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox3).set_IsTextSearchEnabled(value));
	}
	final Windows.UI.Xaml.Controls.ComboBoxSelectionChangedTrigger SelectionChangedTrigger()
	{
		Windows.UI.Xaml.Controls.ComboBoxSelectionChangedTrigger _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox4).get_SelectionChangedTrigger(&_ret));
		return _ret;
	}
	final void SelectionChangedTrigger(Windows.UI.Xaml.Controls.ComboBoxSelectionChangedTrigger value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IComboBox4).set_SelectionChangedTrigger(value));
	}
}

interface ComboBoxItem : Windows.UI.Xaml.Controls.Primitives.SelectorItem, Windows.UI.Xaml.Controls.IComboBoxItem
{
}

interface CommandBar : Windows.UI.Xaml.Controls.AppBar, Windows.UI.Xaml.Controls.ICommandBar, Windows.UI.Xaml.Controls.ICommandBar2, Windows.UI.Xaml.Controls.ICommandBar3
{
extern(Windows):
	final Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.ICommandBarElement) PrimaryCommands()
	{
		Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.ICommandBarElement) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar).get_PrimaryCommands(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.ICommandBarElement) SecondaryCommands()
	{
		Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.ICommandBarElement) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar).get_SecondaryCommands(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Style CommandBarOverflowPresenterStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar2).get_CommandBarOverflowPresenterStyle(&_ret));
		return _ret;
	}
	final void CommandBarOverflowPresenterStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar2).set_CommandBarOverflowPresenterStyle(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.CommandBarTemplateSettings CommandBarTemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.CommandBarTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar2).get_CommandBarTemplateSettings(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.CommandBarDefaultLabelPosition DefaultLabelPosition()
	{
		Windows.UI.Xaml.Controls.CommandBarDefaultLabelPosition _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar3).get_DefaultLabelPosition(&_ret));
		return _ret;
	}
	final void DefaultLabelPosition(Windows.UI.Xaml.Controls.CommandBarDefaultLabelPosition value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar3).set_DefaultLabelPosition(value));
	}
	final Windows.UI.Xaml.Controls.CommandBarOverflowButtonVisibility OverflowButtonVisibility()
	{
		Windows.UI.Xaml.Controls.CommandBarOverflowButtonVisibility _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar3).get_OverflowButtonVisibility(&_ret));
		return _ret;
	}
	final void OverflowButtonVisibility(Windows.UI.Xaml.Controls.CommandBarOverflowButtonVisibility value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar3).set_OverflowButtonVisibility(value));
	}
	final bool IsDynamicOverflowEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar3).get_IsDynamicOverflowEnabled(&_ret));
		return _ret;
	}
	final void IsDynamicOverflowEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ICommandBar3).set_IsDynamicOverflowEnabled(value));
	}
	final EventRegistrationToken OnDynamicOverflowItemsChanging(void delegate(Windows.UI.Xaml.Controls.CommandBar, Windows.UI.Xaml.Controls.DynamicOverflowItemsChangingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DynamicOverflowItemsChanging(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.CommandBar, Windows.UI.Xaml.Controls.DynamicOverflowItemsChangingEventArgs), Windows.UI.Xaml.Controls.CommandBar, Windows.UI.Xaml.Controls.DynamicOverflowItemsChangingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDynamicOverflowItemsChanging(EventRegistrationToken token)
	{
		Debug.OK(remove_DynamicOverflowItemsChanging(token));
	}
}

interface CommandBarOverflowPresenter : Windows.UI.Xaml.Controls.ItemsControl, Windows.UI.Xaml.Controls.ICommandBarOverflowPresenter
{
}

interface ContainerContentChangingEventArgs : Windows.UI.Xaml.Controls.IContainerContentChangingEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Primitives.SelectorItem ItemContainer()
	{
		Windows.UI.Xaml.Controls.Primitives.SelectorItem _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContainerContentChangingEventArgs).get_ItemContainer(&_ret));
		return _ret;
	}
	final bool InRecycleQueue()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContainerContentChangingEventArgs).get_InRecycleQueue(&_ret));
		return _ret;
	}
	final INT32 ItemIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContainerContentChangingEventArgs).get_ItemIndex(&_ret));
		return _ret;
	}
	final IInspectable Item()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContainerContentChangingEventArgs).get_Item(&_ret));
		return _ret;
	}
	final UINT32 Phase()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContainerContentChangingEventArgs).get_Phase(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContainerContentChangingEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContainerContentChangingEventArgs).set_Handled(value));
	}
	final void RegisterUpdateCallback(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs) callback)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContainerContentChangingEventArgs).abi_RegisterUpdateCallback(callback));
	}
	final void RegisterUpdateCallbackWithPhase(UINT32 callbackPhase, Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs) callback)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContainerContentChangingEventArgs).abi_RegisterUpdateCallbackWithPhase(callbackPhase, callback));
	}
}

interface ContentControl : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IContentControl, Windows.UI.Xaml.Controls.IContentControlOverrides, Windows.UI.Xaml.Controls.IContentControl2
{
extern(Windows):
	final IInspectable Content()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControl).get_Content(&_ret));
		return _ret;
	}
	final void Content(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControl).set_Content(value));
	}
	final Windows.UI.Xaml.DataTemplate ContentTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControl).get_ContentTemplate(&_ret));
		return _ret;
	}
	final void ContentTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControl).set_ContentTemplate(value));
	}
	final Windows.UI.Xaml.Controls.DataTemplateSelector ContentTemplateSelector()
	{
		Windows.UI.Xaml.Controls.DataTemplateSelector _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControl).get_ContentTemplateSelector(&_ret));
		return _ret;
	}
	final void ContentTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControl).set_ContentTemplateSelector(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection ContentTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControl).get_ContentTransitions(&_ret));
		return _ret;
	}
	final void ContentTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControl).set_ContentTransitions(value));
	}
	final void OnContentChanged(IInspectable oldContent, IInspectable newContent)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControlOverrides).abi_OnContentChanged(oldContent, newContent));
	}
	final void OnContentTemplateChanged(Windows.UI.Xaml.DataTemplate oldContentTemplate, Windows.UI.Xaml.DataTemplate newContentTemplate)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControlOverrides).abi_OnContentTemplateChanged(oldContentTemplate, newContentTemplate));
	}
	final void OnContentTemplateSelectorChanged(Windows.UI.Xaml.Controls.DataTemplateSelector oldContentTemplateSelector, Windows.UI.Xaml.Controls.DataTemplateSelector newContentTemplateSelector)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControlOverrides).abi_OnContentTemplateSelectorChanged(oldContentTemplateSelector, newContentTemplateSelector));
	}
	final Windows.UI.Xaml.UIElement ContentTemplateRoot()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentControl2).get_ContentTemplateRoot(&_ret));
		return _ret;
	}
}

interface ContentDialog : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.IContentDialog, Windows.UI.Xaml.Controls.IContentDialog2
{
extern(Windows):
	final IInspectable Title()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_Title(&_ret));
		return _ret;
	}
	final void Title(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_Title(value));
	}
	final Windows.UI.Xaml.DataTemplate TitleTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_TitleTemplate(&_ret));
		return _ret;
	}
	final void TitleTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_TitleTemplate(value));
	}
	final bool FullSizeDesired()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_FullSizeDesired(&_ret));
		return _ret;
	}
	final void FullSizeDesired(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_FullSizeDesired(value));
	}
	final HSTRING PrimaryButtonText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_PrimaryButtonText(&_ret));
		return _ret;
	}
	final void PrimaryButtonText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_PrimaryButtonText(value));
	}
	final HSTRING SecondaryButtonText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_SecondaryButtonText(&_ret));
		return _ret;
	}
	final void SecondaryButtonText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_SecondaryButtonText(value));
	}
	final Windows.UI.Xaml.Input.ICommand PrimaryButtonCommand()
	{
		Windows.UI.Xaml.Input.ICommand _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_PrimaryButtonCommand(&_ret));
		return _ret;
	}
	final void PrimaryButtonCommand(Windows.UI.Xaml.Input.ICommand value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_PrimaryButtonCommand(value));
	}
	final Windows.UI.Xaml.Input.ICommand SecondaryButtonCommand()
	{
		Windows.UI.Xaml.Input.ICommand _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_SecondaryButtonCommand(&_ret));
		return _ret;
	}
	final void SecondaryButtonCommand(Windows.UI.Xaml.Input.ICommand value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_SecondaryButtonCommand(value));
	}
	final IInspectable PrimaryButtonCommandParameter()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_PrimaryButtonCommandParameter(&_ret));
		return _ret;
	}
	final void PrimaryButtonCommandParameter(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_PrimaryButtonCommandParameter(value));
	}
	final IInspectable SecondaryButtonCommandParameter()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_SecondaryButtonCommandParameter(&_ret));
		return _ret;
	}
	final void SecondaryButtonCommandParameter(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_SecondaryButtonCommandParameter(value));
	}
	final bool IsPrimaryButtonEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_IsPrimaryButtonEnabled(&_ret));
		return _ret;
	}
	final void IsPrimaryButtonEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_IsPrimaryButtonEnabled(value));
	}
	final bool IsSecondaryButtonEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).get_IsSecondaryButtonEnabled(&_ret));
		return _ret;
	}
	final void IsSecondaryButtonEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).set_IsSecondaryButtonEnabled(value));
	}
	final EventRegistrationToken OnClosing(void delegate(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogClosingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Closing(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogClosingEventArgs), Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogClosingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClosing(EventRegistrationToken token)
	{
		Debug.OK(remove_Closing(token));
	}
	final EventRegistrationToken OnClosed(void delegate(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogClosedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Closed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogClosedEventArgs), Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogClosedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClosed(EventRegistrationToken token)
	{
		Debug.OK(remove_Closed(token));
	}
	final EventRegistrationToken OnOpened(void delegate(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogOpenedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Opened(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogOpenedEventArgs), Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogOpenedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeOpened(EventRegistrationToken token)
	{
		Debug.OK(remove_Opened(token));
	}
	final EventRegistrationToken OnPrimaryButtonClick(void delegate(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PrimaryButtonClick(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs), Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs)(fn), &tok));
		return tok;
	}
	final void removePrimaryButtonClick(EventRegistrationToken token)
	{
		Debug.OK(remove_PrimaryButtonClick(token));
	}
	final EventRegistrationToken OnSecondaryButtonClick(void delegate(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SecondaryButtonClick(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs), Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSecondaryButtonClick(EventRegistrationToken token)
	{
		Debug.OK(remove_SecondaryButtonClick(token));
	}
	final void Hide()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).abi_Hide());
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Controls.ContentDialogResult) ShowAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Controls.ContentDialogResult) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog).abi_ShowAsync(&_ret));
		return _ret;
	}
	final HSTRING CloseButtonText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).get_CloseButtonText(&_ret));
		return _ret;
	}
	final void CloseButtonText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).set_CloseButtonText(value));
	}
	final Windows.UI.Xaml.Input.ICommand CloseButtonCommand()
	{
		Windows.UI.Xaml.Input.ICommand _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).get_CloseButtonCommand(&_ret));
		return _ret;
	}
	final void CloseButtonCommand(Windows.UI.Xaml.Input.ICommand value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).set_CloseButtonCommand(value));
	}
	final IInspectable CloseButtonCommandParameter()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).get_CloseButtonCommandParameter(&_ret));
		return _ret;
	}
	final void CloseButtonCommandParameter(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).set_CloseButtonCommandParameter(value));
	}
	final Windows.UI.Xaml.Style PrimaryButtonStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).get_PrimaryButtonStyle(&_ret));
		return _ret;
	}
	final void PrimaryButtonStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).set_PrimaryButtonStyle(value));
	}
	final Windows.UI.Xaml.Style SecondaryButtonStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).get_SecondaryButtonStyle(&_ret));
		return _ret;
	}
	final void SecondaryButtonStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).set_SecondaryButtonStyle(value));
	}
	final Windows.UI.Xaml.Style CloseButtonStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).get_CloseButtonStyle(&_ret));
		return _ret;
	}
	final void CloseButtonStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).set_CloseButtonStyle(value));
	}
	final Windows.UI.Xaml.Controls.ContentDialogButton DefaultButton()
	{
		Windows.UI.Xaml.Controls.ContentDialogButton _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).get_DefaultButton(&_ret));
		return _ret;
	}
	final void DefaultButton(Windows.UI.Xaml.Controls.ContentDialogButton value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialog2).set_DefaultButton(value));
	}
	final EventRegistrationToken OnCloseButtonClick(void delegate(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CloseButtonClick(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs), Windows.UI.Xaml.Controls.ContentDialog, Windows.UI.Xaml.Controls.ContentDialogButtonClickEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCloseButtonClick(EventRegistrationToken token)
	{
		Debug.OK(remove_CloseButtonClick(token));
	}
}

interface ContentDialogButtonClickDeferral : Windows.UI.Xaml.Controls.IContentDialogButtonClickDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialogButtonClickDeferral).abi_Complete());
	}
}

interface ContentDialogButtonClickEventArgs : Windows.UI.Xaml.Controls.IContentDialogButtonClickEventArgs
{
extern(Windows):
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialogButtonClickEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialogButtonClickEventArgs).set_Cancel(value));
	}
	final Windows.UI.Xaml.Controls.ContentDialogButtonClickDeferral GetDeferral()
	{
		Windows.UI.Xaml.Controls.ContentDialogButtonClickDeferral _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialogButtonClickEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface ContentDialogClosedEventArgs : Windows.UI.Xaml.Controls.IContentDialogClosedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ContentDialogResult Result()
	{
		Windows.UI.Xaml.Controls.ContentDialogResult _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialogClosedEventArgs).get_Result(&_ret));
		return _ret;
	}
}

interface ContentDialogClosingDeferral : Windows.UI.Xaml.Controls.IContentDialogClosingDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialogClosingDeferral).abi_Complete());
	}
}

interface ContentDialogClosingEventArgs : Windows.UI.Xaml.Controls.IContentDialogClosingEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ContentDialogResult Result()
	{
		Windows.UI.Xaml.Controls.ContentDialogResult _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialogClosingEventArgs).get_Result(&_ret));
		return _ret;
	}
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialogClosingEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialogClosingEventArgs).set_Cancel(value));
	}
	final Windows.UI.Xaml.Controls.ContentDialogClosingDeferral GetDeferral()
	{
		Windows.UI.Xaml.Controls.ContentDialogClosingDeferral _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentDialogClosingEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface ContentDialogOpenedEventArgs : Windows.UI.Xaml.Controls.IContentDialogOpenedEventArgs
{
}

interface ContentPresenter : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IContentPresenter, Windows.UI.Xaml.Controls.IContentPresenterOverrides, Windows.UI.Xaml.Controls.IContentPresenter2, Windows.UI.Xaml.Controls.IContentPresenter3, Windows.UI.Xaml.Controls.IContentPresenter4
{
extern(Windows):
	final IInspectable Content()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_Content(&_ret));
		return _ret;
	}
	final void Content(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_Content(value));
	}
	final Windows.UI.Xaml.DataTemplate ContentTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_ContentTemplate(&_ret));
		return _ret;
	}
	final void ContentTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_ContentTemplate(value));
	}
	final Windows.UI.Xaml.Controls.DataTemplateSelector ContentTemplateSelector()
	{
		Windows.UI.Xaml.Controls.DataTemplateSelector _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_ContentTemplateSelector(&_ret));
		return _ret;
	}
	final void ContentTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_ContentTemplateSelector(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection ContentTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_ContentTransitions(&_ret));
		return _ret;
	}
	final void ContentTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_ContentTransitions(value));
	}
	final double FontSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_FontSize(&_ret));
		return _ret;
	}
	final void FontSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_FontSize(value));
	}
	final Windows.UI.Xaml.Media.FontFamily FontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_FontFamily(&_ret));
		return _ret;
	}
	final void FontFamily(Windows.UI.Xaml.Media.FontFamily value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_FontFamily(value));
	}
	final Windows.UI.Text.FontWeight FontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_FontWeight(&_ret));
		return _ret;
	}
	final void FontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_FontWeight(value));
	}
	final Windows.UI.Text.FontStyle FontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_FontStyle(&_ret));
		return _ret;
	}
	final void FontStyle(Windows.UI.Text.FontStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_FontStyle(value));
	}
	final Windows.UI.Text.FontStretch FontStretch()
	{
		Windows.UI.Text.FontStretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_FontStretch(&_ret));
		return _ret;
	}
	final void FontStretch(Windows.UI.Text.FontStretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_FontStretch(value));
	}
	final INT32 CharacterSpacing()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_CharacterSpacing(&_ret));
		return _ret;
	}
	final void CharacterSpacing(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_CharacterSpacing(value));
	}
	final Windows.UI.Xaml.Media.Brush Foreground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).get_Foreground(&_ret));
		return _ret;
	}
	final void Foreground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter).set_Foreground(value));
	}
	final void OnContentTemplateChanged(Windows.UI.Xaml.DataTemplate oldContentTemplate, Windows.UI.Xaml.DataTemplate newContentTemplate)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenterOverrides).abi_OnContentTemplateChanged(oldContentTemplate, newContentTemplate));
	}
	final void OnContentTemplateSelectorChanged(Windows.UI.Xaml.Controls.DataTemplateSelector oldContentTemplateSelector, Windows.UI.Xaml.Controls.DataTemplateSelector newContentTemplateSelector)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenterOverrides).abi_OnContentTemplateSelectorChanged(oldContentTemplateSelector, newContentTemplateSelector));
	}
	final Windows.UI.Xaml.OpticalMarginAlignment OpticalMarginAlignment()
	{
		Windows.UI.Xaml.OpticalMarginAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter2).get_OpticalMarginAlignment(&_ret));
		return _ret;
	}
	final void OpticalMarginAlignment(Windows.UI.Xaml.OpticalMarginAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter2).set_OpticalMarginAlignment(value));
	}
	final Windows.UI.Xaml.TextLineBounds TextLineBounds()
	{
		Windows.UI.Xaml.TextLineBounds _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter2).get_TextLineBounds(&_ret));
		return _ret;
	}
	final void TextLineBounds(Windows.UI.Xaml.TextLineBounds value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter2).set_TextLineBounds(value));
	}
	final bool IsTextScaleFactorEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter3).get_IsTextScaleFactorEnabled(&_ret));
		return _ret;
	}
	final void IsTextScaleFactorEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter3).set_IsTextScaleFactorEnabled(value));
	}
	final Windows.UI.Xaml.TextWrapping TextWrapping()
	{
		Windows.UI.Xaml.TextWrapping _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_TextWrapping(&_ret));
		return _ret;
	}
	final void TextWrapping(Windows.UI.Xaml.TextWrapping value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_TextWrapping(value));
	}
	final INT32 MaxLines()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_MaxLines(&_ret));
		return _ret;
	}
	final void MaxLines(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_MaxLines(value));
	}
	final Windows.UI.Xaml.LineStackingStrategy LineStackingStrategy()
	{
		Windows.UI.Xaml.LineStackingStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_LineStackingStrategy(&_ret));
		return _ret;
	}
	final void LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_LineStackingStrategy(value));
	}
	final double LineHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_LineHeight(&_ret));
		return _ret;
	}
	final void LineHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_LineHeight(value));
	}
	final Windows.UI.Xaml.Media.Brush BorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_BorderBrush(&_ret));
		return _ret;
	}
	final void BorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_BorderBrush(value));
	}
	final Windows.UI.Xaml.Thickness BorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_BorderThickness(&_ret));
		return _ret;
	}
	final void BorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_BorderThickness(value));
	}
	final Windows.UI.Xaml.CornerRadius CornerRadius()
	{
		Windows.UI.Xaml.CornerRadius _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_CornerRadius(&_ret));
		return _ret;
	}
	final void CornerRadius(Windows.UI.Xaml.CornerRadius value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_CornerRadius(value));
	}
	final Windows.UI.Xaml.Thickness Padding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_Padding(value));
	}
	final Windows.UI.Xaml.Media.Brush Background()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_Background(&_ret));
		return _ret;
	}
	final void Background(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_Background(value));
	}
	final Windows.UI.Xaml.HorizontalAlignment HorizontalContentAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_HorizontalContentAlignment(&_ret));
		return _ret;
	}
	final void HorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_HorizontalContentAlignment(value));
	}
	final Windows.UI.Xaml.VerticalAlignment VerticalContentAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).get_VerticalContentAlignment(&_ret));
		return _ret;
	}
	final void VerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContentPresenter4).set_VerticalContentAlignment(value));
	}
}

interface ContextMenuEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.IContextMenuEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContextMenuEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContextMenuEventArgs).set_Handled(value));
	}
	final double CursorLeft()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContextMenuEventArgs).get_CursorLeft(&_ret));
		return _ret;
	}
	final double CursorTop()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IContextMenuEventArgs).get_CursorTop(&_ret));
		return _ret;
	}
}

interface Control : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IControl, Windows.UI.Xaml.Controls.IControlOverrides, Windows.UI.Xaml.Controls.IControlProtected, Windows.UI.Xaml.Controls.IControl2, Windows.UI.Xaml.Controls.IControl3, Windows.UI.Xaml.Controls.IControl4, Windows.UI.Xaml.Controls.IControl5
{
extern(Windows):
	final double FontSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_FontSize(&_ret));
		return _ret;
	}
	final void FontSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_FontSize(value));
	}
	final Windows.UI.Xaml.Media.FontFamily FontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_FontFamily(&_ret));
		return _ret;
	}
	final void FontFamily(Windows.UI.Xaml.Media.FontFamily value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_FontFamily(value));
	}
	final Windows.UI.Text.FontWeight FontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_FontWeight(&_ret));
		return _ret;
	}
	final void FontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_FontWeight(value));
	}
	final Windows.UI.Text.FontStyle FontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_FontStyle(&_ret));
		return _ret;
	}
	final void FontStyle(Windows.UI.Text.FontStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_FontStyle(value));
	}
	final Windows.UI.Text.FontStretch FontStretch()
	{
		Windows.UI.Text.FontStretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_FontStretch(&_ret));
		return _ret;
	}
	final void FontStretch(Windows.UI.Text.FontStretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_FontStretch(value));
	}
	final INT32 CharacterSpacing()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_CharacterSpacing(&_ret));
		return _ret;
	}
	final void CharacterSpacing(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_CharacterSpacing(value));
	}
	final Windows.UI.Xaml.Media.Brush Foreground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_Foreground(&_ret));
		return _ret;
	}
	final void Foreground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_Foreground(value));
	}
	final bool IsTabStop()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_IsTabStop(&_ret));
		return _ret;
	}
	final void IsTabStop(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_IsTabStop(value));
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_IsEnabled(value));
	}
	final INT32 TabIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_TabIndex(&_ret));
		return _ret;
	}
	final void TabIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_TabIndex(value));
	}
	final Windows.UI.Xaml.Input.KeyboardNavigationMode TabNavigation()
	{
		Windows.UI.Xaml.Input.KeyboardNavigationMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_TabNavigation(&_ret));
		return _ret;
	}
	final void TabNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_TabNavigation(value));
	}
	final Windows.UI.Xaml.Controls.ControlTemplate Template()
	{
		Windows.UI.Xaml.Controls.ControlTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_Template(&_ret));
		return _ret;
	}
	final void Template(Windows.UI.Xaml.Controls.ControlTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_Template(value));
	}
	final Windows.UI.Xaml.Thickness Padding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_Padding(value));
	}
	final Windows.UI.Xaml.HorizontalAlignment HorizontalContentAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_HorizontalContentAlignment(&_ret));
		return _ret;
	}
	final void HorizontalContentAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_HorizontalContentAlignment(value));
	}
	final Windows.UI.Xaml.VerticalAlignment VerticalContentAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_VerticalContentAlignment(&_ret));
		return _ret;
	}
	final void VerticalContentAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_VerticalContentAlignment(value));
	}
	final Windows.UI.Xaml.Media.Brush Background()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_Background(&_ret));
		return _ret;
	}
	final void Background(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_Background(value));
	}
	final Windows.UI.Xaml.Thickness BorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_BorderThickness(&_ret));
		return _ret;
	}
	final void BorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_BorderThickness(value));
	}
	final Windows.UI.Xaml.Media.Brush BorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_BorderBrush(&_ret));
		return _ret;
	}
	final void BorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).set_BorderBrush(value));
	}
	final Windows.UI.Xaml.FocusState FocusState()
	{
		Windows.UI.Xaml.FocusState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).get_FocusState(&_ret));
		return _ret;
	}
	final void removeIsEnabledChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_IsEnabledChanged(token));
	}
	final bool ApplyTemplate()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).abi_ApplyTemplate(&_ret));
		return _ret;
	}
	final bool Focus(Windows.UI.Xaml.FocusState value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl).abi_Focus(value, &_ret));
		return _ret;
	}
	final void OnPointerEntered(Windows.UI.Xaml.Input.PointerRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnPointerEntered(e));
	}
	final void OnPointerPressed(Windows.UI.Xaml.Input.PointerRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnPointerPressed(e));
	}
	final void OnPointerMoved(Windows.UI.Xaml.Input.PointerRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnPointerMoved(e));
	}
	final void OnPointerReleased(Windows.UI.Xaml.Input.PointerRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnPointerReleased(e));
	}
	final void OnPointerExited(Windows.UI.Xaml.Input.PointerRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnPointerExited(e));
	}
	final void OnPointerCaptureLost(Windows.UI.Xaml.Input.PointerRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnPointerCaptureLost(e));
	}
	final void OnPointerCanceled(Windows.UI.Xaml.Input.PointerRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnPointerCanceled(e));
	}
	final void OnPointerWheelChanged(Windows.UI.Xaml.Input.PointerRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnPointerWheelChanged(e));
	}
	final void OnTapped(Windows.UI.Xaml.Input.TappedRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnTapped(e));
	}
	final void OnDoubleTapped(Windows.UI.Xaml.Input.DoubleTappedRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnDoubleTapped(e));
	}
	final void OnHolding(Windows.UI.Xaml.Input.HoldingRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnHolding(e));
	}
	final void OnRightTapped(Windows.UI.Xaml.Input.RightTappedRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnRightTapped(e));
	}
	final void OnManipulationStarting(Windows.UI.Xaml.Input.ManipulationStartingRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnManipulationStarting(e));
	}
	final void OnManipulationInertiaStarting(Windows.UI.Xaml.Input.ManipulationInertiaStartingRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnManipulationInertiaStarting(e));
	}
	final void OnManipulationStarted(Windows.UI.Xaml.Input.ManipulationStartedRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnManipulationStarted(e));
	}
	final void OnManipulationDelta(Windows.UI.Xaml.Input.ManipulationDeltaRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnManipulationDelta(e));
	}
	final void OnManipulationCompleted(Windows.UI.Xaml.Input.ManipulationCompletedRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnManipulationCompleted(e));
	}
	final void OnKeyUp(Windows.UI.Xaml.Input.KeyRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnKeyUp(e));
	}
	final void OnKeyDown(Windows.UI.Xaml.Input.KeyRoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnKeyDown(e));
	}
	final void OnGotFocus(Windows.UI.Xaml.RoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnGotFocus(e));
	}
	final void OnLostFocus(Windows.UI.Xaml.RoutedEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnLostFocus(e));
	}
	final void OnDragEnter(Windows.UI.Xaml.DragEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnDragEnter(e));
	}
	final void OnDragLeave(Windows.UI.Xaml.DragEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnDragLeave(e));
	}
	final void OnDragOver(Windows.UI.Xaml.DragEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnDragOver(e));
	}
	final void OnDrop(Windows.UI.Xaml.DragEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlOverrides).abi_OnDrop(e));
	}
	final IInspectable DefaultStyleKey()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlProtected).get_DefaultStyleKey(&_ret));
		return _ret;
	}
	final void DefaultStyleKey(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlProtected).set_DefaultStyleKey(value));
	}
	final Windows.UI.Xaml.DependencyObject GetTemplateChild(HSTRING childName)
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlProtected).abi_GetTemplateChild(childName, &_ret));
		return _ret;
	}
	final bool IsTextScaleFactorEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl2).get_IsTextScaleFactorEnabled(&_ret));
		return _ret;
	}
	final void IsTextScaleFactorEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl2).set_IsTextScaleFactorEnabled(value));
	}
	final bool UseSystemFocusVisuals()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl3).get_UseSystemFocusVisuals(&_ret));
		return _ret;
	}
	final void UseSystemFocusVisuals(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl3).set_UseSystemFocusVisuals(value));
	}
	final bool IsFocusEngagementEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).get_IsFocusEngagementEnabled(&_ret));
		return _ret;
	}
	final void IsFocusEngagementEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).set_IsFocusEngagementEnabled(value));
	}
	final bool IsFocusEngaged()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).get_IsFocusEngaged(&_ret));
		return _ret;
	}
	final void IsFocusEngaged(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).set_IsFocusEngaged(value));
	}
	final Windows.UI.Xaml.Controls.RequiresPointer RequiresPointer()
	{
		Windows.UI.Xaml.Controls.RequiresPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).get_RequiresPointer(&_ret));
		return _ret;
	}
	final void RequiresPointer(Windows.UI.Xaml.Controls.RequiresPointer value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).set_RequiresPointer(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusLeft()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).get_XYFocusLeft(&_ret));
		return _ret;
	}
	final void XYFocusLeft(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).set_XYFocusLeft(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusRight()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).get_XYFocusRight(&_ret));
		return _ret;
	}
	final void XYFocusRight(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).set_XYFocusRight(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusUp()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).get_XYFocusUp(&_ret));
		return _ret;
	}
	final void XYFocusUp(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).set_XYFocusUp(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusDown()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).get_XYFocusDown(&_ret));
		return _ret;
	}
	final void XYFocusDown(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).set_XYFocusDown(value));
	}
	final Windows.UI.Xaml.ElementSoundMode ElementSoundMode()
	{
		Windows.UI.Xaml.ElementSoundMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).get_ElementSoundMode(&_ret));
		return _ret;
	}
	final void ElementSoundMode(Windows.UI.Xaml.ElementSoundMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).set_ElementSoundMode(value));
	}
	final EventRegistrationToken OnFocusEngaged(void delegate(Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.FocusEngagedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FocusEngaged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.FocusEngagedEventArgs), Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.FocusEngagedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFocusEngaged(EventRegistrationToken token)
	{
		Debug.OK(remove_FocusEngaged(token));
	}
	final EventRegistrationToken OnFocusDisengaged(void delegate(Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.FocusDisengagedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FocusDisengaged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.FocusDisengagedEventArgs), Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.FocusDisengagedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFocusDisengaged(EventRegistrationToken token)
	{
		Debug.OK(remove_FocusDisengaged(token));
	}
	final void RemoveFocusEngagement()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl4).abi_RemoveFocusEngagement());
	}
	final Windows.Foundation.Uri DefaultStyleResourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl5).get_DefaultStyleResourceUri(&_ret));
		return _ret;
	}
	final void DefaultStyleResourceUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControl5).set_DefaultStyleResourceUri(value));
	}
}

interface ControlTemplate : Windows.UI.Xaml.FrameworkTemplate, Windows.UI.Xaml.Controls.IControlTemplate
{
extern(Windows):
	final Windows.UI.Xaml.Interop.TypeName TargetType()
	{
		Windows.UI.Xaml.Interop.TypeName _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlTemplate).get_TargetType(&_ret));
		return _ret;
	}
	final void TargetType(Windows.UI.Xaml.Interop.TypeName value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IControlTemplate).set_TargetType(value));
	}
}

interface DataTemplateSelector : Windows.UI.Xaml.Controls.IDataTemplateSelector, Windows.UI.Xaml.Controls.IDataTemplateSelectorOverrides, Windows.UI.Xaml.Controls.IDataTemplateSelector2, Windows.UI.Xaml.Controls.IDataTemplateSelectorOverrides2
{
extern(Windows):
	final Windows.UI.Xaml.DataTemplate SelectTemplate(IInspectable item, Windows.UI.Xaml.DependencyObject container)
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDataTemplateSelector).abi_SelectTemplate(item, container, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DataTemplate SelectTemplateCore(IInspectable item, Windows.UI.Xaml.DependencyObject container)
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDataTemplateSelectorOverrides).abi_SelectTemplateCore(item, container, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DataTemplate SelectTemplateForItem(IInspectable item)
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDataTemplateSelector2).abi_SelectTemplateForItem(item, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DataTemplate SelectTemplateForItemCore(IInspectable item)
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDataTemplateSelectorOverrides2).abi_SelectTemplateForItemCore(item, &_ret));
		return _ret;
	}
}

interface DatePickedEventArgs : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.IDatePickedEventArgs
{
extern(Windows):
	final Windows.Foundation.DateTime OldDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickedEventArgs).get_OldDate(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime NewDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickedEventArgs).get_NewDate(&_ret));
		return _ret;
	}
}

interface DatePicker : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IDatePicker, Windows.UI.Xaml.Controls.IDatePicker2
{
extern(Windows):
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_HeaderTemplate(value));
	}
	final HSTRING CalendarIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_CalendarIdentifier(&_ret));
		return _ret;
	}
	final void CalendarIdentifier(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_CalendarIdentifier(value));
	}
	final Windows.Foundation.DateTime Date()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_Date(&_ret));
		return _ret;
	}
	final void Date(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_Date(value));
	}
	final bool DayVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_DayVisible(&_ret));
		return _ret;
	}
	final void DayVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_DayVisible(value));
	}
	final bool MonthVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_MonthVisible(&_ret));
		return _ret;
	}
	final void MonthVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_MonthVisible(value));
	}
	final bool YearVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_YearVisible(&_ret));
		return _ret;
	}
	final void YearVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_YearVisible(value));
	}
	final HSTRING DayFormat()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_DayFormat(&_ret));
		return _ret;
	}
	final void DayFormat(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_DayFormat(value));
	}
	final HSTRING MonthFormat()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_MonthFormat(&_ret));
		return _ret;
	}
	final void MonthFormat(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_MonthFormat(value));
	}
	final HSTRING YearFormat()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_YearFormat(&_ret));
		return _ret;
	}
	final void YearFormat(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_YearFormat(value));
	}
	final Windows.Foundation.DateTime MinYear()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_MinYear(&_ret));
		return _ret;
	}
	final void MinYear(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_MinYear(value));
	}
	final Windows.Foundation.DateTime MaxYear()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_MaxYear(&_ret));
		return _ret;
	}
	final void MaxYear(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_MaxYear(value));
	}
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker).set_Orientation(value));
	}
	final EventRegistrationToken OnDateChanged(void delegate(IInspectable, Windows.UI.Xaml.Controls.DatePickerValueChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DateChanged(event!(Windows.Foundation.EventHandler!(Windows.UI.Xaml.Controls.DatePickerValueChangedEventArgs), IInspectable, Windows.UI.Xaml.Controls.DatePickerValueChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_DateChanged(token));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker2).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePicker2).set_LightDismissOverlayMode(value));
	}
}

interface DatePickerFlyout : Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase, Windows.UI.Xaml.Controls.IDatePickerFlyout, Windows.UI.Xaml.Controls.IDatePickerFlyout2
{
extern(Windows):
	final HSTRING CalendarIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).get_CalendarIdentifier(&_ret));
		return _ret;
	}
	final void CalendarIdentifier(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).set_CalendarIdentifier(value));
	}
	final Windows.Foundation.DateTime Date()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).get_Date(&_ret));
		return _ret;
	}
	final void Date(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).set_Date(value));
	}
	final bool DayVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).get_DayVisible(&_ret));
		return _ret;
	}
	final void DayVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).set_DayVisible(value));
	}
	final bool MonthVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).get_MonthVisible(&_ret));
		return _ret;
	}
	final void MonthVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).set_MonthVisible(value));
	}
	final bool YearVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).get_YearVisible(&_ret));
		return _ret;
	}
	final void YearVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).set_YearVisible(value));
	}
	final Windows.Foundation.DateTime MinYear()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).get_MinYear(&_ret));
		return _ret;
	}
	final void MinYear(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).set_MinYear(value));
	}
	final Windows.Foundation.DateTime MaxYear()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).get_MaxYear(&_ret));
		return _ret;
	}
	final void MaxYear(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).set_MaxYear(value));
	}
	final EventRegistrationToken OnDatePicked(void delegate(Windows.UI.Xaml.Controls.DatePickerFlyout, Windows.UI.Xaml.Controls.DatePickedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DatePicked(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.DatePickerFlyout, Windows.UI.Xaml.Controls.DatePickedEventArgs), Windows.UI.Xaml.Controls.DatePickerFlyout, Windows.UI.Xaml.Controls.DatePickedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDatePicked(EventRegistrationToken token)
	{
		Debug.OK(remove_DatePicked(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.IReference!(Windows.Foundation.DateTime)) ShowAtAsync(Windows.UI.Xaml.FrameworkElement target)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.IReference!(Windows.Foundation.DateTime)) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout).abi_ShowAtAsync(target, &_ret));
		return _ret;
	}
	final HSTRING DayFormat()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout2).get_DayFormat(&_ret));
		return _ret;
	}
	final void DayFormat(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout2).set_DayFormat(value));
	}
	final HSTRING MonthFormat()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout2).get_MonthFormat(&_ret));
		return _ret;
	}
	final void MonthFormat(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout2).set_MonthFormat(value));
	}
	final HSTRING YearFormat()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout2).get_YearFormat(&_ret));
		return _ret;
	}
	final void YearFormat(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyout2).set_YearFormat(value));
	}
}

interface DatePickerFlyoutItem : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.IDatePickerFlyoutItem, Windows.UI.Xaml.Data.ICustomPropertyProvider
{
extern(Windows):
	final HSTRING PrimaryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyoutItem).get_PrimaryText(&_ret));
		return _ret;
	}
	final void PrimaryText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyoutItem).set_PrimaryText(value));
	}
	final HSTRING SecondaryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyoutItem).get_SecondaryText(&_ret));
		return _ret;
	}
	final void SecondaryText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerFlyoutItem).set_SecondaryText(value));
	}
	final Windows.UI.Xaml.Data.ICustomProperty GetCustomProperty(HSTRING name)
	{
		Windows.UI.Xaml.Data.ICustomProperty _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICustomPropertyProvider).abi_GetCustomProperty(name, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Data.ICustomProperty GetIndexedProperty(HSTRING name, Windows.UI.Xaml.Interop.TypeName type)
	{
		Windows.UI.Xaml.Data.ICustomProperty _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICustomPropertyProvider).abi_GetIndexedProperty(name, type, &_ret));
		return _ret;
	}
	final HSTRING GetStringRepresentation()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICustomPropertyProvider).abi_GetStringRepresentation(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Interop.TypeName Type()
	{
		Windows.UI.Xaml.Interop.TypeName _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICustomPropertyProvider).get_Type(&_ret));
		return _ret;
	}
}

interface DatePickerFlyoutPresenter : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IDatePickerFlyoutPresenter
{
}

interface DatePickerValueChangedEventArgs : Windows.UI.Xaml.Controls.IDatePickerValueChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.DateTime OldDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerValueChangedEventArgs).get_OldDate(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime NewDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDatePickerValueChangedEventArgs).get_NewDate(&_ret));
		return _ret;
	}
}

interface DragItemsCompletedEventArgs : Windows.UI.Xaml.Controls.IDragItemsCompletedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDragItemsCompletedEventArgs).get_Items(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation DropResult()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDragItemsCompletedEventArgs).get_DropResult(&_ret));
		return _ret;
	}
}

interface DragItemsStartingEventArgs : Windows.UI.Xaml.Controls.IDragItemsStartingEventArgs
{
extern(Windows):
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDragItemsStartingEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDragItemsStartingEventArgs).set_Cancel(value));
	}
	final Windows.Foundation.Collections.IVector!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVector!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDragItemsStartingEventArgs).get_Items(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackage Data()
	{
		Windows.ApplicationModel.DataTransfer.DataPackage _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDragItemsStartingEventArgs).get_Data(&_ret));
		return _ret;
	}
}

interface DynamicOverflowItemsChangingEventArgs : Windows.UI.Xaml.Controls.IDynamicOverflowItemsChangingEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.CommandBarDynamicOverflowAction Action()
	{
		Windows.UI.Xaml.Controls.CommandBarDynamicOverflowAction _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IDynamicOverflowItemsChangingEventArgs).get_Action(&_ret));
		return _ret;
	}
}

interface FlipView : Windows.UI.Xaml.Controls.Primitives.Selector, Windows.UI.Xaml.Controls.IFlipView, Windows.UI.Xaml.Controls.IFlipView2
{
extern(Windows):
	final bool UseTouchAnimationsForAllNavigation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFlipView2).get_UseTouchAnimationsForAllNavigation(&_ret));
		return _ret;
	}
	final void UseTouchAnimationsForAllNavigation(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFlipView2).set_UseTouchAnimationsForAllNavigation(value));
	}
}

interface FlipViewItem : Windows.UI.Xaml.Controls.Primitives.SelectorItem, Windows.UI.Xaml.Controls.IFlipViewItem
{
}

interface Flyout : Windows.UI.Xaml.Controls.Primitives.FlyoutBase, Windows.UI.Xaml.Controls.IFlyout
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Content()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFlyout).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFlyout).set_Content(value));
	}
	final Windows.UI.Xaml.Style FlyoutPresenterStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFlyout).get_FlyoutPresenterStyle(&_ret));
		return _ret;
	}
	final void FlyoutPresenterStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFlyout).set_FlyoutPresenterStyle(value));
	}
}

interface FlyoutPresenter : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.IFlyoutPresenter
{
}

interface FocusDisengagedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.IFocusDisengagedEventArgs
{
}

interface FocusEngagedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.IFocusEngagedEventArgs, Windows.UI.Xaml.Controls.IFocusEngagedEventArgs2
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFocusEngagedEventArgs2).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFocusEngagedEventArgs2).set_Handled(value));
	}
}

interface FontIcon : Windows.UI.Xaml.Controls.IconElement, Windows.UI.Xaml.Controls.IFontIcon, Windows.UI.Xaml.Controls.IFontIcon2, Windows.UI.Xaml.Controls.IFontIcon3
{
extern(Windows):
	final HSTRING Glyph()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon).get_Glyph(&_ret));
		return _ret;
	}
	final void Glyph(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon).set_Glyph(value));
	}
	final double FontSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon).get_FontSize(&_ret));
		return _ret;
	}
	final void FontSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon).set_FontSize(value));
	}
	final Windows.UI.Xaml.Media.FontFamily FontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon).get_FontFamily(&_ret));
		return _ret;
	}
	final void FontFamily(Windows.UI.Xaml.Media.FontFamily value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon).set_FontFamily(value));
	}
	final Windows.UI.Text.FontWeight FontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon).get_FontWeight(&_ret));
		return _ret;
	}
	final void FontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon).set_FontWeight(value));
	}
	final Windows.UI.Text.FontStyle FontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon).get_FontStyle(&_ret));
		return _ret;
	}
	final void FontStyle(Windows.UI.Text.FontStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon).set_FontStyle(value));
	}
	final bool IsTextScaleFactorEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon2).get_IsTextScaleFactorEnabled(&_ret));
		return _ret;
	}
	final void IsTextScaleFactorEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon2).set_IsTextScaleFactorEnabled(value));
	}
	final bool MirroredWhenRightToLeft()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon3).get_MirroredWhenRightToLeft(&_ret));
		return _ret;
	}
	final void MirroredWhenRightToLeft(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFontIcon3).set_MirroredWhenRightToLeft(value));
	}
}

interface Frame : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.IFrame, Windows.UI.Xaml.Controls.INavigate, Windows.UI.Xaml.Controls.IFrame2, Windows.UI.Xaml.Controls.IFrame3, Windows.UI.Xaml.Controls.IFrame4
{
extern(Windows):
	final INT32 CacheSize()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).get_CacheSize(&_ret));
		return _ret;
	}
	final void CacheSize(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).set_CacheSize(value));
	}
	final bool CanGoBack()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).get_CanGoBack(&_ret));
		return _ret;
	}
	final bool CanGoForward()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).get_CanGoForward(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Interop.TypeName CurrentSourcePageType()
	{
		Windows.UI.Xaml.Interop.TypeName _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).get_CurrentSourcePageType(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Interop.TypeName SourcePageType()
	{
		Windows.UI.Xaml.Interop.TypeName _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).get_SourcePageType(&_ret));
		return _ret;
	}
	final void SourcePageType(Windows.UI.Xaml.Interop.TypeName value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).set_SourcePageType(value));
	}
	final INT32 BackStackDepth()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).get_BackStackDepth(&_ret));
		return _ret;
	}
	final void removeNavigated(EventRegistrationToken token)
	{
		Debug.OK(remove_Navigated(token));
	}
	final void removeNavigating(EventRegistrationToken token)
	{
		Debug.OK(remove_Navigating(token));
	}
	final void removeNavigationFailed(EventRegistrationToken token)
	{
		Debug.OK(remove_NavigationFailed(token));
	}
	final void removeNavigationStopped(EventRegistrationToken token)
	{
		Debug.OK(remove_NavigationStopped(token));
	}
	final void GoBack()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).abi_GoBack());
	}
	final void GoForward()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).abi_GoForward());
	}
	final bool Navigate(Windows.UI.Xaml.Interop.TypeName sourcePageType, IInspectable parameter)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).abi_Navigate(sourcePageType, parameter, &_ret));
		return _ret;
	}
	final HSTRING GetNavigationState()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).abi_GetNavigationState(&_ret));
		return _ret;
	}
	final void SetNavigationState(HSTRING navigationState)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame).abi_SetNavigationState(navigationState));
	}
	final bool Navigate(Windows.UI.Xaml.Interop.TypeName sourcePageType)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.INavigate).abi_Navigate(sourcePageType, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Navigation.PageStackEntry) BackStack()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Navigation.PageStackEntry) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame2).get_BackStack(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Navigation.PageStackEntry) ForwardStack()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Navigation.PageStackEntry) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame2).get_ForwardStack(&_ret));
		return _ret;
	}
	final bool Navigate(Windows.UI.Xaml.Interop.TypeName sourcePageType, IInspectable parameter, Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo infoOverride)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame2).abi_Navigate(sourcePageType, parameter, infoOverride, &_ret));
		return _ret;
	}
	final void GoBack(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo transitionInfoOverride)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame3).abi_GoBack(transitionInfoOverride));
	}
	final void SetNavigationStateWithNavigationControl(HSTRING navigationState, bool suppressNavigate)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IFrame4).abi_SetNavigationStateWithNavigationControl(navigationState, suppressNavigate));
	}
}

interface Grid : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.IGrid, Windows.UI.Xaml.Controls.IGrid2
{
extern(Windows):
	final Windows.UI.Xaml.Controls.RowDefinitionCollection RowDefinitions()
	{
		Windows.UI.Xaml.Controls.RowDefinitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGrid).get_RowDefinitions(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.ColumnDefinitionCollection ColumnDefinitions()
	{
		Windows.UI.Xaml.Controls.ColumnDefinitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGrid).get_ColumnDefinitions(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Brush BorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGrid2).get_BorderBrush(&_ret));
		return _ret;
	}
	final void BorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGrid2).set_BorderBrush(value));
	}
	final Windows.UI.Xaml.Thickness BorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGrid2).get_BorderThickness(&_ret));
		return _ret;
	}
	final void BorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGrid2).set_BorderThickness(value));
	}
	final Windows.UI.Xaml.CornerRadius CornerRadius()
	{
		Windows.UI.Xaml.CornerRadius _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGrid2).get_CornerRadius(&_ret));
		return _ret;
	}
	final void CornerRadius(Windows.UI.Xaml.CornerRadius value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGrid2).set_CornerRadius(value));
	}
	final Windows.UI.Xaml.Thickness Padding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGrid2).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGrid2).set_Padding(value));
	}
}

interface GridView : Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.IGridView
{
}

interface GridViewHeaderItem : Windows.UI.Xaml.Controls.ListViewBaseHeaderItem, Windows.UI.Xaml.Controls.IGridViewHeaderItem
{
}

interface GridViewItem : Windows.UI.Xaml.Controls.Primitives.SelectorItem, Windows.UI.Xaml.Controls.IGridViewItem
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Primitives.GridViewItemTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.GridViewItemTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGridViewItem).get_TemplateSettings(&_ret));
		return _ret;
	}
}

interface GroupItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.IGroupItem
{
}

interface GroupStyle : Windows.UI.Xaml.Controls.IGroupStyle, Windows.UI.Xaml.Data.INotifyPropertyChanged, Windows.UI.Xaml.Controls.IGroupStyle2
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ItemsPanelTemplate Panel()
	{
		Windows.UI.Xaml.Controls.ItemsPanelTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).get_Panel(&_ret));
		return _ret;
	}
	final void Panel(Windows.UI.Xaml.Controls.ItemsPanelTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).set_Panel(value));
	}
	deprecated("ContainerStyle may be altered or unavailable for releases after Windows 8.1, and is not supported for ItemsControl.GroupStyle.")
	final Windows.UI.Xaml.Style ContainerStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).get_ContainerStyle(&_ret));
		return _ret;
	}
	deprecated("ContainerStyle may be altered or unavailable for releases after Windows 8.1, and is not supported for ItemsControl.GroupStyle.")
	final void ContainerStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).set_ContainerStyle(value));
	}
	deprecated("ContainerStyleSelector may be altered or unavailable for releases after Windows 8.1, and is not supported for ItemsControl.GroupStyle.")
	final Windows.UI.Xaml.Controls.StyleSelector ContainerStyleSelector()
	{
		Windows.UI.Xaml.Controls.StyleSelector _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).get_ContainerStyleSelector(&_ret));
		return _ret;
	}
	deprecated("ContainerStyleSelector may be altered or unavailable for releases after Windows 8.1, and is not supported for ItemsControl.GroupStyle.")
	final void ContainerStyleSelector(Windows.UI.Xaml.Controls.StyleSelector value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).set_ContainerStyleSelector(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).set_HeaderTemplate(value));
	}
	final Windows.UI.Xaml.Controls.DataTemplateSelector HeaderTemplateSelector()
	{
		Windows.UI.Xaml.Controls.DataTemplateSelector _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).get_HeaderTemplateSelector(&_ret));
		return _ret;
	}
	final void HeaderTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).set_HeaderTemplateSelector(value));
	}
	final bool HidesIfEmpty()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).get_HidesIfEmpty(&_ret));
		return _ret;
	}
	final void HidesIfEmpty(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle).set_HidesIfEmpty(value));
	}
	final void removePropertyChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PropertyChanged(token));
	}
	final Windows.UI.Xaml.Style HeaderContainerStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle2).get_HeaderContainerStyle(&_ret));
		return _ret;
	}
	final void HeaderContainerStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyle2).set_HeaderContainerStyle(value));
	}
}

interface GroupStyleSelector : Windows.UI.Xaml.Controls.IGroupStyleSelector, Windows.UI.Xaml.Controls.IGroupStyleSelectorOverrides
{
extern(Windows):
	final Windows.UI.Xaml.Controls.GroupStyle SelectGroupStyle(IInspectable group, UINT32 level)
	{
		Windows.UI.Xaml.Controls.GroupStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyleSelector).abi_SelectGroupStyle(group, level, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.GroupStyle SelectGroupStyleCore(IInspectable group, UINT32 level)
	{
		Windows.UI.Xaml.Controls.GroupStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IGroupStyleSelectorOverrides).abi_SelectGroupStyleCore(group, level, &_ret));
		return _ret;
	}
}

interface Hub : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IHub, Windows.UI.Xaml.Controls.ISemanticZoomInformation
{
extern(Windows):
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).set_HeaderTemplate(value));
	}
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).set_Orientation(value));
	}
	final INT32 DefaultSectionIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).get_DefaultSectionIndex(&_ret));
		return _ret;
	}
	final void DefaultSectionIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).set_DefaultSectionIndex(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection) Sections()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).get_Sections(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection) SectionsInView()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).get_SectionsInView(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IObservableVector!(IInspectable) SectionHeaders()
	{
		Windows.Foundation.Collections.IObservableVector!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).get_SectionHeaders(&_ret));
		return _ret;
	}
	final void removeSectionHeaderClick(EventRegistrationToken token)
	{
		Debug.OK(remove_SectionHeaderClick(token));
	}
	final void removeSectionsInViewChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SectionsInViewChanged(token));
	}
	final void ScrollToSection(Windows.UI.Xaml.Controls.HubSection section)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHub).abi_ScrollToSection(section));
	}
	final Windows.UI.Xaml.Controls.SemanticZoom SemanticZoomOwner()
	{
		Windows.UI.Xaml.Controls.SemanticZoom _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).get_SemanticZoomOwner(&_ret));
		return _ret;
	}
	final void SemanticZoomOwner(Windows.UI.Xaml.Controls.SemanticZoom value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).set_SemanticZoomOwner(value));
	}
	final bool IsActiveView()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).get_IsActiveView(&_ret));
		return _ret;
	}
	final void IsActiveView(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).set_IsActiveView(value));
	}
	final bool IsZoomedInView()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).get_IsZoomedInView(&_ret));
		return _ret;
	}
	final void IsZoomedInView(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).set_IsZoomedInView(value));
	}
	final void InitializeViewChange()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_InitializeViewChange());
	}
	final void CompleteViewChange()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_CompleteViewChange());
	}
	final void MakeVisible(Windows.UI.Xaml.Controls.SemanticZoomLocation item)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_MakeVisible(item));
	}
	final void StartViewChangeFrom(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_StartViewChangeFrom(source, destination));
	}
	final void StartViewChangeTo(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_StartViewChangeTo(source, destination));
	}
	final void CompleteViewChangeFrom(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_CompleteViewChangeFrom(source, destination));
	}
	final void CompleteViewChangeTo(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_CompleteViewChangeTo(source, destination));
	}
}

interface HubSection : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IHubSection
{
extern(Windows):
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHubSection).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHubSection).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHubSection).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHubSection).set_HeaderTemplate(value));
	}
	final Windows.UI.Xaml.DataTemplate ContentTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHubSection).get_ContentTemplate(&_ret));
		return _ret;
	}
	final void ContentTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHubSection).set_ContentTemplate(value));
	}
	final bool IsHeaderInteractive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHubSection).get_IsHeaderInteractive(&_ret));
		return _ret;
	}
	final void IsHeaderInteractive(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHubSection).set_IsHeaderInteractive(value));
	}
}

interface HubSectionCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Controls.HubSection)
{
extern(Windows):
	final Windows.UI.Xaml.Controls.HubSection GetAt(uint index)
	{
		Windows.UI.Xaml.Controls.HubSection _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.HubSection)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Controls.HubSection value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Controls.HubSection item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Controls.HubSection item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Controls.HubSection item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Controls.HubSection* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Controls.HubSection* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Controls.HubSection)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Controls.HubSection)).abi_First(out_first));
	}
}

interface HubSectionHeaderClickEventArgs : Windows.UI.Xaml.Controls.IHubSectionHeaderClickEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.HubSection Section()
	{
		Windows.UI.Xaml.Controls.HubSection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHubSectionHeaderClickEventArgs).get_Section(&_ret));
		return _ret;
	}
}

interface HyperlinkButton : Windows.UI.Xaml.Controls.Primitives.ButtonBase, Windows.UI.Xaml.Controls.IHyperlinkButton
{
extern(Windows):
	final Windows.Foundation.Uri NavigateUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHyperlinkButton).get_NavigateUri(&_ret));
		return _ret;
	}
	final void NavigateUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IHyperlinkButton).set_NavigateUri(value));
	}
}

interface IconElement : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IIconElement
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush Foreground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IIconElement).get_Foreground(&_ret));
		return _ret;
	}
	final void Foreground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IIconElement).set_Foreground(value));
	}
}

interface Image : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IImage, Windows.UI.Xaml.Controls.IImage2, Windows.UI.Xaml.Controls.IImage3
{
extern(Windows):
	final Windows.UI.Xaml.Media.ImageSource Source()
	{
		Windows.UI.Xaml.Media.ImageSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IImage).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.UI.Xaml.Media.ImageSource value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IImage).set_Source(value));
	}
	final Windows.UI.Xaml.Media.Stretch Stretch()
	{
		Windows.UI.Xaml.Media.Stretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IImage).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Xaml.Media.Stretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IImage).set_Stretch(value));
	}
	final Windows.UI.Xaml.Thickness NineGrid()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IImage).get_NineGrid(&_ret));
		return _ret;
	}
	final void NineGrid(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IImage).set_NineGrid(value));
	}
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource.")
	final Windows.Media.PlayTo.PlayToSource PlayToSource()
	{
		Windows.Media.PlayTo.PlayToSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IImage).get_PlayToSource(&_ret));
		return _ret;
	}
	final void removeImageFailed(EventRegistrationToken token)
	{
		Debug.OK(remove_ImageFailed(token));
	}
	final void removeImageOpened(EventRegistrationToken token)
	{
		Debug.OK(remove_ImageOpened(token));
	}
	final Windows.Media.Casting.CastingSource GetAsCastingSource()
	{
		Windows.Media.Casting.CastingSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IImage2).abi_GetAsCastingSource(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionBrush GetAlphaMask()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IImage3).abi_GetAlphaMask(&_ret));
		return _ret;
	}
}

interface InkCanvas : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IInkCanvas
{
extern(Windows):
	final Windows.UI.Input.Inking.InkPresenter InkPresenter()
	{
		Windows.UI.Input.Inking.InkPresenter _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkCanvas).get_InkPresenter(&_ret));
		return _ret;
	}
}

interface InkToolbar : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IInkToolbar, Windows.UI.Xaml.Controls.IInkToolbar2
{
extern(Windows):
	final Windows.UI.Xaml.Controls.InkToolbarInitialControls InitialControls()
	{
		Windows.UI.Xaml.Controls.InkToolbarInitialControls _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).get_InitialControls(&_ret));
		return _ret;
	}
	final void InitialControls(Windows.UI.Xaml.Controls.InkToolbarInitialControls value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).set_InitialControls(value));
	}
	final Windows.UI.Xaml.DependencyObjectCollection Children()
	{
		Windows.UI.Xaml.DependencyObjectCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.InkToolbarToolButton ActiveTool()
	{
		Windows.UI.Xaml.Controls.InkToolbarToolButton _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).get_ActiveTool(&_ret));
		return _ret;
	}
	final void ActiveTool(Windows.UI.Xaml.Controls.InkToolbarToolButton value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).set_ActiveTool(value));
	}
	final Windows.UI.Input.Inking.InkDrawingAttributes InkDrawingAttributes()
	{
		Windows.UI.Input.Inking.InkDrawingAttributes _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).get_InkDrawingAttributes(&_ret));
		return _ret;
	}
	final bool IsRulerButtonChecked()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).get_IsRulerButtonChecked(&_ret));
		return _ret;
	}
	final void IsRulerButtonChecked(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).set_IsRulerButtonChecked(value));
	}
	final Windows.UI.Xaml.Controls.InkCanvas TargetInkCanvas()
	{
		Windows.UI.Xaml.Controls.InkCanvas _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).get_TargetInkCanvas(&_ret));
		return _ret;
	}
	final void TargetInkCanvas(Windows.UI.Xaml.Controls.InkCanvas value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).set_TargetInkCanvas(value));
	}
	final EventRegistrationToken OnActiveToolChanged(void delegate(Windows.UI.Xaml.Controls.InkToolbar, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ActiveToolChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar, IInspectable), Windows.UI.Xaml.Controls.InkToolbar, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeActiveToolChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_ActiveToolChanged(token));
	}
	final EventRegistrationToken OnInkDrawingAttributesChanged(void delegate(Windows.UI.Xaml.Controls.InkToolbar, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_InkDrawingAttributesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar, IInspectable), Windows.UI.Xaml.Controls.InkToolbar, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeInkDrawingAttributesChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_InkDrawingAttributesChanged(token));
	}
	final EventRegistrationToken OnEraseAllClicked(void delegate(Windows.UI.Xaml.Controls.InkToolbar, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_EraseAllClicked(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar, IInspectable), Windows.UI.Xaml.Controls.InkToolbar, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeEraseAllClicked(EventRegistrationToken token)
	{
		Debug.OK(remove_EraseAllClicked(token));
	}
	deprecated("InkToolbarRulerButton is replaced by InkToolbarStencilButton starting from Windows 10 Creators Update. For more info, see MSDN.")
	final EventRegistrationToken OnIsRulerButtonCheckedChanged(void delegate(Windows.UI.Xaml.Controls.InkToolbar, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_IsRulerButtonCheckedChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar, IInspectable), Windows.UI.Xaml.Controls.InkToolbar, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("InkToolbarRulerButton is replaced by InkToolbarStencilButton starting from Windows 10 Creators Update. For more info, see MSDN.")
	final void removeIsRulerButtonCheckedChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_IsRulerButtonCheckedChanged(token));
	}
	final Windows.UI.Xaml.Controls.InkToolbarToolButton GetToolButton(Windows.UI.Xaml.Controls.InkToolbarTool tool)
	{
		Windows.UI.Xaml.Controls.InkToolbarToolButton _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).abi_GetToolButton(tool, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.InkToolbarToggleButton GetToggleButton(Windows.UI.Xaml.Controls.InkToolbarToggle tool)
	{
		Windows.UI.Xaml.Controls.InkToolbarToggleButton _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar).abi_GetToggleButton(tool, &_ret));
		return _ret;
	}
	final bool IsStencilButtonChecked()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar2).get_IsStencilButtonChecked(&_ret));
		return _ret;
	}
	final void IsStencilButtonChecked(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar2).set_IsStencilButtonChecked(value));
	}
	final Windows.UI.Xaml.Controls.InkToolbarButtonFlyoutPlacement ButtonFlyoutPlacement()
	{
		Windows.UI.Xaml.Controls.InkToolbarButtonFlyoutPlacement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar2).get_ButtonFlyoutPlacement(&_ret));
		return _ret;
	}
	final void ButtonFlyoutPlacement(Windows.UI.Xaml.Controls.InkToolbarButtonFlyoutPlacement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar2).set_ButtonFlyoutPlacement(value));
	}
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar2).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar2).set_Orientation(value));
	}
	final EventRegistrationToken OnIsStencilButtonCheckedChanged(void delegate(Windows.UI.Xaml.Controls.InkToolbar, Windows.UI.Xaml.Controls.InkToolbarIsStencilButtonCheckedChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_IsStencilButtonCheckedChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbar, Windows.UI.Xaml.Controls.InkToolbarIsStencilButtonCheckedChangedEventArgs), Windows.UI.Xaml.Controls.InkToolbar, Windows.UI.Xaml.Controls.InkToolbarIsStencilButtonCheckedChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeIsStencilButtonCheckedChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_IsStencilButtonCheckedChanged(token));
	}
	final Windows.UI.Xaml.Controls.InkToolbarMenuButton GetMenuButton(Windows.UI.Xaml.Controls.InkToolbarMenuKind menu)
	{
		Windows.UI.Xaml.Controls.InkToolbarMenuButton _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbar2).abi_GetMenuButton(menu, &_ret));
		return _ret;
	}
}

interface InkToolbarBallpointPenButton : Windows.UI.Xaml.Controls.InkToolbarPenButton, Windows.UI.Xaml.Controls.IInkToolbarBallpointPenButton
{
}

interface InkToolbarCustomPen : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.IInkToolbarCustomPen, Windows.UI.Xaml.Controls.IInkToolbarCustomPenOverrides
{
extern(Windows):
	final Windows.UI.Input.Inking.InkDrawingAttributes CreateInkDrawingAttributes(Windows.UI.Xaml.Media.Brush brush, double strokeWidth)
	{
		Windows.UI.Input.Inking.InkDrawingAttributes _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarCustomPen).abi_CreateInkDrawingAttributes(brush, strokeWidth, &_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkDrawingAttributes CreateInkDrawingAttributesCore(Windows.UI.Xaml.Media.Brush brush, double strokeWidth)
	{
		Windows.UI.Input.Inking.InkDrawingAttributes _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarCustomPenOverrides).abi_CreateInkDrawingAttributesCore(brush, strokeWidth, &_ret));
		return _ret;
	}
}

interface InkToolbarCustomPenButton : Windows.UI.Xaml.Controls.InkToolbarPenButton, Windows.UI.Xaml.Controls.IInkToolbarCustomPenButton
{
extern(Windows):
	final Windows.UI.Xaml.Controls.InkToolbarCustomPen CustomPen()
	{
		Windows.UI.Xaml.Controls.InkToolbarCustomPen _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarCustomPenButton).get_CustomPen(&_ret));
		return _ret;
	}
	final void CustomPen(Windows.UI.Xaml.Controls.InkToolbarCustomPen value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarCustomPenButton).set_CustomPen(value));
	}
	final Windows.UI.Xaml.UIElement ConfigurationContent()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarCustomPenButton).get_ConfigurationContent(&_ret));
		return _ret;
	}
	final void ConfigurationContent(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarCustomPenButton).set_ConfigurationContent(value));
	}
}

interface InkToolbarCustomToggleButton : Windows.UI.Xaml.Controls.InkToolbarToggleButton, Windows.UI.Xaml.Controls.IInkToolbarCustomToggleButton
{
}

interface InkToolbarCustomToolButton : Windows.UI.Xaml.Controls.InkToolbarToolButton, Windows.UI.Xaml.Controls.IInkToolbarCustomToolButton
{
extern(Windows):
	final Windows.UI.Xaml.UIElement ConfigurationContent()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarCustomToolButton).get_ConfigurationContent(&_ret));
		return _ret;
	}
	final void ConfigurationContent(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarCustomToolButton).set_ConfigurationContent(value));
	}
}

interface InkToolbarEraserButton : Windows.UI.Xaml.Controls.InkToolbarToolButton, Windows.UI.Xaml.Controls.IInkToolbarEraserButton, Windows.UI.Xaml.Controls.IInkToolbarEraserButton2
{
extern(Windows):
	final bool IsClearAllVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarEraserButton2).get_IsClearAllVisible(&_ret));
		return _ret;
	}
	final void IsClearAllVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarEraserButton2).set_IsClearAllVisible(value));
	}
}

interface InkToolbarFlyoutItem : Windows.UI.Xaml.Controls.Primitives.ButtonBase, Windows.UI.Xaml.Controls.IInkToolbarFlyoutItem
{
extern(Windows):
	final Windows.UI.Xaml.Controls.InkToolbarFlyoutItemKind Kind()
	{
		Windows.UI.Xaml.Controls.InkToolbarFlyoutItemKind _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarFlyoutItem).get_Kind(&_ret));
		return _ret;
	}
	final void Kind(Windows.UI.Xaml.Controls.InkToolbarFlyoutItemKind value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarFlyoutItem).set_Kind(value));
	}
	final bool IsChecked()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarFlyoutItem).get_IsChecked(&_ret));
		return _ret;
	}
	final void IsChecked(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarFlyoutItem).set_IsChecked(value));
	}
	final EventRegistrationToken OnChecked(void delegate(Windows.UI.Xaml.Controls.InkToolbarFlyoutItem, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Checked(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbarFlyoutItem, IInspectable), Windows.UI.Xaml.Controls.InkToolbarFlyoutItem, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeChecked(EventRegistrationToken token)
	{
		Debug.OK(remove_Checked(token));
	}
	final EventRegistrationToken OnUnchecked(void delegate(Windows.UI.Xaml.Controls.InkToolbarFlyoutItem, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Unchecked(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.InkToolbarFlyoutItem, IInspectable), Windows.UI.Xaml.Controls.InkToolbarFlyoutItem, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeUnchecked(EventRegistrationToken token)
	{
		Debug.OK(remove_Unchecked(token));
	}
}

interface InkToolbarHighlighterButton : Windows.UI.Xaml.Controls.InkToolbarPenButton, Windows.UI.Xaml.Controls.IInkToolbarHighlighterButton
{
}

interface InkToolbarIsStencilButtonCheckedChangedEventArgs : Windows.UI.Xaml.Controls.IInkToolbarIsStencilButtonCheckedChangedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.InkToolbarStencilButton StencilButton()
	{
		Windows.UI.Xaml.Controls.InkToolbarStencilButton _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarIsStencilButtonCheckedChangedEventArgs).get_StencilButton(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.InkToolbarStencilKind StencilKind()
	{
		Windows.UI.Xaml.Controls.InkToolbarStencilKind _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarIsStencilButtonCheckedChangedEventArgs).get_StencilKind(&_ret));
		return _ret;
	}
}

interface InkToolbarMenuButton : Windows.UI.Xaml.Controls.Primitives.ToggleButton, Windows.UI.Xaml.Controls.IInkToolbarMenuButton
{
extern(Windows):
	final Windows.UI.Xaml.Controls.InkToolbarMenuKind MenuKind()
	{
		Windows.UI.Xaml.Controls.InkToolbarMenuKind _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarMenuButton).get_MenuKind(&_ret));
		return _ret;
	}
	final bool IsExtensionGlyphShown()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarMenuButton).get_IsExtensionGlyphShown(&_ret));
		return _ret;
	}
	final void IsExtensionGlyphShown(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarMenuButton).set_IsExtensionGlyphShown(value));
	}
}

interface InkToolbarPenButton : Windows.UI.Xaml.Controls.InkToolbarToolButton, Windows.UI.Xaml.Controls.IInkToolbarPenButton
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush) Palette()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).get_Palette(&_ret));
		return _ret;
	}
	final void Palette(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Brush) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).set_Palette(value));
	}
	final double MinStrokeWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).get_MinStrokeWidth(&_ret));
		return _ret;
	}
	final void MinStrokeWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).set_MinStrokeWidth(value));
	}
	final double MaxStrokeWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).get_MaxStrokeWidth(&_ret));
		return _ret;
	}
	final void MaxStrokeWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).set_MaxStrokeWidth(value));
	}
	final Windows.UI.Xaml.Media.Brush SelectedBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).get_SelectedBrush(&_ret));
		return _ret;
	}
	final INT32 SelectedBrushIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).get_SelectedBrushIndex(&_ret));
		return _ret;
	}
	final void SelectedBrushIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).set_SelectedBrushIndex(value));
	}
	final double SelectedStrokeWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).get_SelectedStrokeWidth(&_ret));
		return _ret;
	}
	final void SelectedStrokeWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenButton).set_SelectedStrokeWidth(value));
	}
}

interface InkToolbarPenConfigurationControl : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IInkToolbarPenConfigurationControl
{
extern(Windows):
	final Windows.UI.Xaml.Controls.InkToolbarPenButton PenButton()
	{
		Windows.UI.Xaml.Controls.InkToolbarPenButton _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarPenConfigurationControl).get_PenButton(&_ret));
		return _ret;
	}
}

interface InkToolbarPencilButton : Windows.UI.Xaml.Controls.InkToolbarPenButton, Windows.UI.Xaml.Controls.IInkToolbarPencilButton
{
}

interface InkToolbarRulerButton : Windows.UI.Xaml.Controls.InkToolbarToggleButton, Windows.UI.Xaml.Controls.IInkToolbarRulerButton
{
extern(Windows):
	deprecated("InkToolbarRulerButton is deprecated starting from Windows 10 Creators Update. Please use InkToolbarStencilButton going forward. For more info, see MSDN.")
	final Windows.UI.Input.Inking.InkPresenterRuler Ruler()
	{
		Windows.UI.Input.Inking.InkPresenterRuler _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarRulerButton).get_Ruler(&_ret));
		return _ret;
	}
}

interface InkToolbarStencilButton : Windows.UI.Xaml.Controls.InkToolbarMenuButton, Windows.UI.Xaml.Controls.IInkToolbarStencilButton
{
extern(Windows):
	final Windows.UI.Input.Inking.InkPresenterRuler Ruler()
	{
		Windows.UI.Input.Inking.InkPresenterRuler _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarStencilButton).get_Ruler(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkPresenterProtractor Protractor()
	{
		Windows.UI.Input.Inking.InkPresenterProtractor _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarStencilButton).get_Protractor(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.InkToolbarStencilKind SelectedStencil()
	{
		Windows.UI.Xaml.Controls.InkToolbarStencilKind _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarStencilButton).get_SelectedStencil(&_ret));
		return _ret;
	}
	final void SelectedStencil(Windows.UI.Xaml.Controls.InkToolbarStencilKind value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarStencilButton).set_SelectedStencil(value));
	}
	final bool IsRulerItemVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarStencilButton).get_IsRulerItemVisible(&_ret));
		return _ret;
	}
	final void IsRulerItemVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarStencilButton).set_IsRulerItemVisible(value));
	}
	final bool IsProtractorItemVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarStencilButton).get_IsProtractorItemVisible(&_ret));
		return _ret;
	}
	final void IsProtractorItemVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarStencilButton).set_IsProtractorItemVisible(value));
	}
}

interface InkToolbarToggleButton : Windows.UI.Xaml.Controls.CheckBox, Windows.UI.Xaml.Controls.IInkToolbarToggleButton
{
extern(Windows):
	final Windows.UI.Xaml.Controls.InkToolbarToggle ToggleKind()
	{
		Windows.UI.Xaml.Controls.InkToolbarToggle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarToggleButton).get_ToggleKind(&_ret));
		return _ret;
	}
}

interface InkToolbarToolButton : Windows.UI.Xaml.Controls.RadioButton, Windows.UI.Xaml.Controls.IInkToolbarToolButton
{
extern(Windows):
	final Windows.UI.Xaml.Controls.InkToolbarTool ToolKind()
	{
		Windows.UI.Xaml.Controls.InkToolbarTool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarToolButton).get_ToolKind(&_ret));
		return _ret;
	}
	final bool IsExtensionGlyphShown()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarToolButton).get_IsExtensionGlyphShown(&_ret));
		return _ret;
	}
	final void IsExtensionGlyphShown(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInkToolbarToolButton).set_IsExtensionGlyphShown(value));
	}
}

interface ItemClickEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.IItemClickEventArgs
{
extern(Windows):
	final IInspectable ClickedItem()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemClickEventArgs).get_ClickedItem(&_ret));
		return _ret;
	}
}

interface ItemCollection : Windows.Foundation.Collections.IObservableVector!(IInspectable), Windows.Foundation.Collections.IVector!(IInspectable), Windows.Foundation.Collections.IIterable!(IInspectable)
{
extern(Windows):
	final void removeVectorChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_VectorChanged(token));
	}
	final IInspectable GetAt(uint index)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(IInspectable)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).abi_GetView(out_view));
	}
	final uint IndexOf(IInspectable value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, IInspectable item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, IInspectable item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).abi_RemoveAt(index));
	}
	final void Append(IInspectable item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, IInspectable* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, IInspectable* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(IInspectable)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(IInspectable)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(IInspectable)).abi_First(out_first));
	}
}

interface ItemContainerGenerator : Windows.UI.Xaml.Controls.IItemContainerGenerator
{
extern(Windows):
	final void removeItemsChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_ItemsChanged(token));
	}
	deprecated("ItemFromContainer may be altered or unavailable for releases after Windows 8.1. Instead, use ItemsControl.ItemFromContainer.")
	final IInspectable ItemFromContainer(Windows.UI.Xaml.DependencyObject container)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_ItemFromContainer(container, &_ret));
		return _ret;
	}
	deprecated("ContainerFromItem may be altered or unavailable for releases after Windows 8.1. Instead, use ItemsControl.ContainerFromItem.")
	final Windows.UI.Xaml.DependencyObject ContainerFromItem(IInspectable item)
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_ContainerFromItem(item, &_ret));
		return _ret;
	}
	deprecated("IndexFromContainer may be altered or unavailable for releases after Windows 8.1. Instead, use ItemsControl.IndexFromContainer.")
	final INT32 IndexFromContainer(Windows.UI.Xaml.DependencyObject container)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_IndexFromContainer(container, &_ret));
		return _ret;
	}
	deprecated("ContainerFromIndex may be altered or unavailable for releases after Windows 8.1. Instead, use ItemsControl.ContainerFromIndex.")
	final Windows.UI.Xaml.DependencyObject ContainerFromIndex(INT32 index)
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_ContainerFromIndex(index, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.ItemContainerGenerator GetItemContainerGeneratorForPanel(Windows.UI.Xaml.Controls.Panel panel)
	{
		Windows.UI.Xaml.Controls.ItemContainerGenerator _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_GetItemContainerGeneratorForPanel(panel, &_ret));
		return _ret;
	}
	final void StartAt(Windows.UI.Xaml.Controls.Primitives.GeneratorPosition position, Windows.UI.Xaml.Controls.Primitives.GeneratorDirection direction, bool allowStartAtRealizedItem)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_StartAt(position, direction, allowStartAtRealizedItem));
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_Stop());
	}
	final Windows.UI.Xaml.DependencyObject GenerateNext(bool* out_isNewlyRealized)
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_GenerateNext(out_isNewlyRealized, &_ret));
		return _ret;
	}
	final void PrepareItemContainer(Windows.UI.Xaml.DependencyObject container)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_PrepareItemContainer(container));
	}
	final void RemoveAll()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_RemoveAll());
	}
	final void Remove(Windows.UI.Xaml.Controls.Primitives.GeneratorPosition position, INT32 count)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_Remove(position, count));
	}
	final Windows.UI.Xaml.Controls.Primitives.GeneratorPosition GeneratorPositionFromIndex(INT32 itemIndex)
	{
		Windows.UI.Xaml.Controls.Primitives.GeneratorPosition _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_GeneratorPositionFromIndex(itemIndex, &_ret));
		return _ret;
	}
	final INT32 IndexFromGeneratorPosition(Windows.UI.Xaml.Controls.Primitives.GeneratorPosition position)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_IndexFromGeneratorPosition(position, &_ret));
		return _ret;
	}
	final void Recycle(Windows.UI.Xaml.Controls.Primitives.GeneratorPosition position, INT32 count)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerGenerator).abi_Recycle(position, count));
	}
}

interface ItemsControl : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IItemsControl, Windows.UI.Xaml.Controls.IItemsControlOverrides, Windows.UI.Xaml.Controls.IItemsControl2, Windows.UI.Xaml.Controls.IItemContainerMapping, Windows.UI.Xaml.Controls.IItemsControl3
{
extern(Windows):
	final IInspectable ItemsSource()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_ItemsSource(&_ret));
		return _ret;
	}
	final void ItemsSource(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).set_ItemsSource(value));
	}
	final Windows.UI.Xaml.Controls.ItemCollection Items()
	{
		Windows.UI.Xaml.Controls.ItemCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_Items(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DataTemplate ItemTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_ItemTemplate(&_ret));
		return _ret;
	}
	final void ItemTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).set_ItemTemplate(value));
	}
	final Windows.UI.Xaml.Controls.DataTemplateSelector ItemTemplateSelector()
	{
		Windows.UI.Xaml.Controls.DataTemplateSelector _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_ItemTemplateSelector(&_ret));
		return _ret;
	}
	final void ItemTemplateSelector(Windows.UI.Xaml.Controls.DataTemplateSelector value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).set_ItemTemplateSelector(value));
	}
	final Windows.UI.Xaml.Controls.ItemsPanelTemplate ItemsPanel()
	{
		Windows.UI.Xaml.Controls.ItemsPanelTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_ItemsPanel(&_ret));
		return _ret;
	}
	final void ItemsPanel(Windows.UI.Xaml.Controls.ItemsPanelTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).set_ItemsPanel(value));
	}
	final HSTRING DisplayMemberPath()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_DisplayMemberPath(&_ret));
		return _ret;
	}
	final void DisplayMemberPath(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).set_DisplayMemberPath(value));
	}
	final Windows.UI.Xaml.Style ItemContainerStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_ItemContainerStyle(&_ret));
		return _ret;
	}
	final void ItemContainerStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).set_ItemContainerStyle(value));
	}
	final Windows.UI.Xaml.Controls.StyleSelector ItemContainerStyleSelector()
	{
		Windows.UI.Xaml.Controls.StyleSelector _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_ItemContainerStyleSelector(&_ret));
		return _ret;
	}
	final void ItemContainerStyleSelector(Windows.UI.Xaml.Controls.StyleSelector value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).set_ItemContainerStyleSelector(value));
	}
	final Windows.UI.Xaml.Controls.ItemContainerGenerator ItemContainerGenerator()
	{
		Windows.UI.Xaml.Controls.ItemContainerGenerator _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_ItemContainerGenerator(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection ItemContainerTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_ItemContainerTransitions(&_ret));
		return _ret;
	}
	final void ItemContainerTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).set_ItemContainerTransitions(value));
	}
	final Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.GroupStyle) GroupStyle()
	{
		Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.Controls.GroupStyle) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_GroupStyle(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.GroupStyleSelector GroupStyleSelector()
	{
		Windows.UI.Xaml.Controls.GroupStyleSelector _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_GroupStyleSelector(&_ret));
		return _ret;
	}
	final void GroupStyleSelector(Windows.UI.Xaml.Controls.GroupStyleSelector value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).set_GroupStyleSelector(value));
	}
	final bool IsGrouping()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl).get_IsGrouping(&_ret));
		return _ret;
	}
	final bool IsItemItsOwnContainerOverride(IInspectable item)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControlOverrides).abi_IsItemItsOwnContainerOverride(item, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DependencyObject GetContainerForItemOverride()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControlOverrides).abi_GetContainerForItemOverride(&_ret));
		return _ret;
	}
	final void ClearContainerForItemOverride(Windows.UI.Xaml.DependencyObject element, IInspectable item)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControlOverrides).abi_ClearContainerForItemOverride(element, item));
	}
	final void PrepareContainerForItemOverride(Windows.UI.Xaml.DependencyObject element, IInspectable item)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControlOverrides).abi_PrepareContainerForItemOverride(element, item));
	}
	final void OnItemsChanged(IInspectable e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControlOverrides).abi_OnItemsChanged(e));
	}
	final void OnItemContainerStyleChanged(Windows.UI.Xaml.Style oldItemContainerStyle, Windows.UI.Xaml.Style newItemContainerStyle)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControlOverrides).abi_OnItemContainerStyleChanged(oldItemContainerStyle, newItemContainerStyle));
	}
	final void OnItemContainerStyleSelectorChanged(Windows.UI.Xaml.Controls.StyleSelector oldItemContainerStyleSelector, Windows.UI.Xaml.Controls.StyleSelector newItemContainerStyleSelector)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControlOverrides).abi_OnItemContainerStyleSelectorChanged(oldItemContainerStyleSelector, newItemContainerStyleSelector));
	}
	final void OnItemTemplateChanged(Windows.UI.Xaml.DataTemplate oldItemTemplate, Windows.UI.Xaml.DataTemplate newItemTemplate)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControlOverrides).abi_OnItemTemplateChanged(oldItemTemplate, newItemTemplate));
	}
	final void OnItemTemplateSelectorChanged(Windows.UI.Xaml.Controls.DataTemplateSelector oldItemTemplateSelector, Windows.UI.Xaml.Controls.DataTemplateSelector newItemTemplateSelector)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControlOverrides).abi_OnItemTemplateSelectorChanged(oldItemTemplateSelector, newItemTemplateSelector));
	}
	final void OnGroupStyleSelectorChanged(Windows.UI.Xaml.Controls.GroupStyleSelector oldGroupStyleSelector, Windows.UI.Xaml.Controls.GroupStyleSelector newGroupStyleSelector)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControlOverrides).abi_OnGroupStyleSelectorChanged(oldGroupStyleSelector, newGroupStyleSelector));
	}
	final Windows.UI.Xaml.Controls.Panel ItemsPanelRoot()
	{
		Windows.UI.Xaml.Controls.Panel _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl2).get_ItemsPanelRoot(&_ret));
		return _ret;
	}
	final IInspectable ItemFromContainer(Windows.UI.Xaml.DependencyObject container)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerMapping).abi_ItemFromContainer(container, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DependencyObject ContainerFromItem(IInspectable item)
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerMapping).abi_ContainerFromItem(item, &_ret));
		return _ret;
	}
	final INT32 IndexFromContainer(Windows.UI.Xaml.DependencyObject container)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerMapping).abi_IndexFromContainer(container, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DependencyObject ContainerFromIndex(INT32 index)
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemContainerMapping).abi_ContainerFromIndex(index, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DependencyObject GroupHeaderContainerFromItemContainer(Windows.UI.Xaml.DependencyObject itemContainer)
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsControl3).abi_GroupHeaderContainerFromItemContainer(itemContainer, &_ret));
		return _ret;
	}
}

interface ItemsPanelTemplate : Windows.UI.Xaml.FrameworkTemplate, Windows.UI.Xaml.Controls.IItemsPanelTemplate
{
}

interface ItemsPickedEventArgs : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.IItemsPickedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(IInspectable) AddedItems()
	{
		Windows.Foundation.Collections.IVector!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPickedEventArgs).get_AddedItems(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(IInspectable) RemovedItems()
	{
		Windows.Foundation.Collections.IVector!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPickedEventArgs).get_RemovedItems(&_ret));
		return _ret;
	}
}

interface ItemsPresenter : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IItemsPresenter, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo, Windows.UI.Xaml.Controls.IItemsPresenter2
{
extern(Windows):
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter).set_HeaderTemplate(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection HeaderTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter).get_HeaderTransitions(&_ret));
		return _ret;
	}
	final void HeaderTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter).set_HeaderTransitions(value));
	}
	final Windows.UI.Xaml.Thickness Padding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter).set_Padding(value));
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
	final EventRegistrationToken OnHorizontalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HorizontalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeHorizontalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_HorizontalSnapPointsChanged(token));
	}
	final EventRegistrationToken OnVerticalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_VerticalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVerticalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_VerticalSnapPointsChanged(token));
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
	final IInspectable Footer()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter2).get_Footer(&_ret));
		return _ret;
	}
	final void Footer(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter2).set_Footer(value));
	}
	final Windows.UI.Xaml.DataTemplate FooterTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter2).get_FooterTemplate(&_ret));
		return _ret;
	}
	final void FooterTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter2).set_FooterTemplate(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection FooterTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter2).get_FooterTransitions(&_ret));
		return _ret;
	}
	final void FooterTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsPresenter2).set_FooterTransitions(value));
	}
}

interface ItemsStackPanel : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.IItemsStackPanel, Windows.UI.Xaml.Controls.IItemsStackPanel2
{
extern(Windows):
	final Windows.UI.Xaml.Thickness GroupPadding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).get_GroupPadding(&_ret));
		return _ret;
	}
	final void GroupPadding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).set_GroupPadding(value));
	}
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).set_Orientation(value));
	}
	final INT32 FirstCacheIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).get_FirstCacheIndex(&_ret));
		return _ret;
	}
	final INT32 FirstVisibleIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).get_FirstVisibleIndex(&_ret));
		return _ret;
	}
	final INT32 LastVisibleIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).get_LastVisibleIndex(&_ret));
		return _ret;
	}
	final INT32 LastCacheIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).get_LastCacheIndex(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.PanelScrollingDirection ScrollingDirection()
	{
		Windows.UI.Xaml.Controls.PanelScrollingDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).get_ScrollingDirection(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.GroupHeaderPlacement GroupHeaderPlacement()
	{
		Windows.UI.Xaml.Controls.Primitives.GroupHeaderPlacement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).get_GroupHeaderPlacement(&_ret));
		return _ret;
	}
	final void GroupHeaderPlacement(Windows.UI.Xaml.Controls.Primitives.GroupHeaderPlacement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).set_GroupHeaderPlacement(value));
	}
	final Windows.UI.Xaml.Controls.ItemsUpdatingScrollMode ItemsUpdatingScrollMode()
	{
		Windows.UI.Xaml.Controls.ItemsUpdatingScrollMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).get_ItemsUpdatingScrollMode(&_ret));
		return _ret;
	}
	final void ItemsUpdatingScrollMode(Windows.UI.Xaml.Controls.ItemsUpdatingScrollMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).set_ItemsUpdatingScrollMode(value));
	}
	final double CacheLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).get_CacheLength(&_ret));
		return _ret;
	}
	final void CacheLength(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel).set_CacheLength(value));
	}
	final bool AreStickyGroupHeadersEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel2).get_AreStickyGroupHeadersEnabled(&_ret));
		return _ret;
	}
	final void AreStickyGroupHeadersEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsStackPanel2).set_AreStickyGroupHeadersEnabled(value));
	}
}

interface ItemsWrapGrid : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.IItemsWrapGrid, Windows.UI.Xaml.Controls.IItemsWrapGrid2
{
extern(Windows):
	final Windows.UI.Xaml.Thickness GroupPadding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_GroupPadding(&_ret));
		return _ret;
	}
	final void GroupPadding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).set_GroupPadding(value));
	}
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).set_Orientation(value));
	}
	final INT32 MaximumRowsOrColumns()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_MaximumRowsOrColumns(&_ret));
		return _ret;
	}
	final void MaximumRowsOrColumns(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).set_MaximumRowsOrColumns(value));
	}
	final double ItemWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_ItemWidth(&_ret));
		return _ret;
	}
	final void ItemWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).set_ItemWidth(value));
	}
	final double ItemHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_ItemHeight(&_ret));
		return _ret;
	}
	final void ItemHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).set_ItemHeight(value));
	}
	final INT32 FirstCacheIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_FirstCacheIndex(&_ret));
		return _ret;
	}
	final INT32 FirstVisibleIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_FirstVisibleIndex(&_ret));
		return _ret;
	}
	final INT32 LastVisibleIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_LastVisibleIndex(&_ret));
		return _ret;
	}
	final INT32 LastCacheIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_LastCacheIndex(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.PanelScrollingDirection ScrollingDirection()
	{
		Windows.UI.Xaml.Controls.PanelScrollingDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_ScrollingDirection(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.GroupHeaderPlacement GroupHeaderPlacement()
	{
		Windows.UI.Xaml.Controls.Primitives.GroupHeaderPlacement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_GroupHeaderPlacement(&_ret));
		return _ret;
	}
	final void GroupHeaderPlacement(Windows.UI.Xaml.Controls.Primitives.GroupHeaderPlacement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).set_GroupHeaderPlacement(value));
	}
	final double CacheLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).get_CacheLength(&_ret));
		return _ret;
	}
	final void CacheLength(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid).set_CacheLength(value));
	}
	final bool AreStickyGroupHeadersEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid2).get_AreStickyGroupHeadersEnabled(&_ret));
		return _ret;
	}
	final void AreStickyGroupHeadersEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IItemsWrapGrid2).set_AreStickyGroupHeadersEnabled(value));
	}
}

interface ListBox : Windows.UI.Xaml.Controls.Primitives.Selector, Windows.UI.Xaml.Controls.IListBox, Windows.UI.Xaml.Controls.IListBox2
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(IInspectable) SelectedItems()
	{
		Windows.Foundation.Collections.IVector!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListBox).get_SelectedItems(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.SelectionMode SelectionMode()
	{
		Windows.UI.Xaml.Controls.SelectionMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListBox).get_SelectionMode(&_ret));
		return _ret;
	}
	final void SelectionMode(Windows.UI.Xaml.Controls.SelectionMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListBox).set_SelectionMode(value));
	}
	final void ScrollIntoView(IInspectable item)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListBox).abi_ScrollIntoView(item));
	}
	final void SelectAll()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListBox).abi_SelectAll());
	}
	final bool SingleSelectionFollowsFocus()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListBox2).get_SingleSelectionFollowsFocus(&_ret));
		return _ret;
	}
	final void SingleSelectionFollowsFocus(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListBox2).set_SingleSelectionFollowsFocus(value));
	}
}

interface ListBoxItem : Windows.UI.Xaml.Controls.Primitives.SelectorItem, Windows.UI.Xaml.Controls.IListBoxItem
{
}

interface ListPickerFlyout : Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase, Windows.UI.Xaml.Controls.IListPickerFlyout
{
extern(Windows):
	final IInspectable ItemsSource()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).get_ItemsSource(&_ret));
		return _ret;
	}
	final void ItemsSource(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).set_ItemsSource(value));
	}
	final Windows.UI.Xaml.DataTemplate ItemTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).get_ItemTemplate(&_ret));
		return _ret;
	}
	final void ItemTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).set_ItemTemplate(value));
	}
	final HSTRING DisplayMemberPath()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).get_DisplayMemberPath(&_ret));
		return _ret;
	}
	final void DisplayMemberPath(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).set_DisplayMemberPath(value));
	}
	final Windows.UI.Xaml.Controls.ListPickerFlyoutSelectionMode SelectionMode()
	{
		Windows.UI.Xaml.Controls.ListPickerFlyoutSelectionMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).get_SelectionMode(&_ret));
		return _ret;
	}
	final void SelectionMode(Windows.UI.Xaml.Controls.ListPickerFlyoutSelectionMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).set_SelectionMode(value));
	}
	final INT32 SelectedIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).get_SelectedIndex(&_ret));
		return _ret;
	}
	final void SelectedIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).set_SelectedIndex(value));
	}
	final IInspectable SelectedItem()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).get_SelectedItem(&_ret));
		return _ret;
	}
	final void SelectedItem(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).set_SelectedItem(value));
	}
	final IInspectable SelectedValue()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).get_SelectedValue(&_ret));
		return _ret;
	}
	final void SelectedValue(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).set_SelectedValue(value));
	}
	final HSTRING SelectedValuePath()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).get_SelectedValuePath(&_ret));
		return _ret;
	}
	final void SelectedValuePath(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).set_SelectedValuePath(value));
	}
	final Windows.Foundation.Collections.IVector!(IInspectable) SelectedItems()
	{
		Windows.Foundation.Collections.IVector!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).get_SelectedItems(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnItemsPicked(void delegate(Windows.UI.Xaml.Controls.ListPickerFlyout, Windows.UI.Xaml.Controls.ItemsPickedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ItemsPicked(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListPickerFlyout, Windows.UI.Xaml.Controls.ItemsPickedEventArgs), Windows.UI.Xaml.Controls.ListPickerFlyout, Windows.UI.Xaml.Controls.ItemsPickedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeItemsPicked(EventRegistrationToken token)
	{
		Debug.OK(remove_ItemsPicked(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(IInspectable)) ShowAtAsync(Windows.UI.Xaml.FrameworkElement target)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(IInspectable)) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListPickerFlyout).abi_ShowAtAsync(target, &_ret));
		return _ret;
	}
}

interface ListPickerFlyoutPresenter : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IListPickerFlyoutPresenter
{
}

interface ListView : Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.IListView
{
}

interface ListViewBase : Windows.UI.Xaml.Controls.Primitives.Selector, Windows.UI.Xaml.Controls.IListViewBase, Windows.UI.Xaml.Controls.ISemanticZoomInformation, Windows.UI.Xaml.Controls.IListViewBase2, Windows.UI.Xaml.Controls.IListViewBase3, Windows.UI.Xaml.Controls.IListViewBase4, Windows.UI.Xaml.Controls.IListViewBase5, Windows.UI.Xaml.Controls.IListViewBase6
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(IInspectable) SelectedItems()
	{
		Windows.Foundation.Collections.IVector!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_SelectedItems(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.ListViewSelectionMode SelectionMode()
	{
		Windows.UI.Xaml.Controls.ListViewSelectionMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_SelectionMode(&_ret));
		return _ret;
	}
	final void SelectionMode(Windows.UI.Xaml.Controls.ListViewSelectionMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_SelectionMode(value));
	}
	final bool IsSwipeEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_IsSwipeEnabled(&_ret));
		return _ret;
	}
	final void IsSwipeEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_IsSwipeEnabled(value));
	}
	final bool CanDragItems()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_CanDragItems(&_ret));
		return _ret;
	}
	final void CanDragItems(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_CanDragItems(value));
	}
	final bool CanReorderItems()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_CanReorderItems(&_ret));
		return _ret;
	}
	final void CanReorderItems(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_CanReorderItems(value));
	}
	final bool IsItemClickEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_IsItemClickEnabled(&_ret));
		return _ret;
	}
	final void IsItemClickEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_IsItemClickEnabled(value));
	}
	final double DataFetchSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_DataFetchSize(&_ret));
		return _ret;
	}
	final void DataFetchSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_DataFetchSize(value));
	}
	final double IncrementalLoadingThreshold()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_IncrementalLoadingThreshold(&_ret));
		return _ret;
	}
	final void IncrementalLoadingThreshold(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_IncrementalLoadingThreshold(value));
	}
	final Windows.UI.Xaml.Controls.IncrementalLoadingTrigger IncrementalLoadingTrigger()
	{
		Windows.UI.Xaml.Controls.IncrementalLoadingTrigger _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_IncrementalLoadingTrigger(&_ret));
		return _ret;
	}
	final void IncrementalLoadingTrigger(Windows.UI.Xaml.Controls.IncrementalLoadingTrigger value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_IncrementalLoadingTrigger(value));
	}
	final void removeItemClick(EventRegistrationToken token)
	{
		Debug.OK(remove_ItemClick(token));
	}
	final void removeDragItemsStarting(EventRegistrationToken token)
	{
		Debug.OK(remove_DragItemsStarting(token));
	}
	final void ScrollIntoView(IInspectable item)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).abi_ScrollIntoView(item));
	}
	final void SelectAll()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).abi_SelectAll());
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Data.LoadMoreItemsResult) LoadMoreItemsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Data.LoadMoreItemsResult) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).abi_LoadMoreItemsAsync(&_ret));
		return _ret;
	}
	final void ScrollIntoViewWithAlignment(IInspectable item, Windows.UI.Xaml.Controls.ScrollIntoViewAlignment alignment)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).abi_ScrollIntoViewWithAlignment(item, alignment));
	}
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_HeaderTemplate(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection HeaderTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).get_HeaderTransitions(&_ret));
		return _ret;
	}
	final void HeaderTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase).set_HeaderTransitions(value));
	}
	final Windows.UI.Xaml.Controls.SemanticZoom SemanticZoomOwner()
	{
		Windows.UI.Xaml.Controls.SemanticZoom _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).get_SemanticZoomOwner(&_ret));
		return _ret;
	}
	final void SemanticZoomOwner(Windows.UI.Xaml.Controls.SemanticZoom value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).set_SemanticZoomOwner(value));
	}
	final bool IsActiveView()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).get_IsActiveView(&_ret));
		return _ret;
	}
	final void IsActiveView(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).set_IsActiveView(value));
	}
	final bool IsZoomedInView()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).get_IsZoomedInView(&_ret));
		return _ret;
	}
	final void IsZoomedInView(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).set_IsZoomedInView(value));
	}
	final void InitializeViewChange()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_InitializeViewChange());
	}
	final void CompleteViewChange()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_CompleteViewChange());
	}
	final void MakeVisible(Windows.UI.Xaml.Controls.SemanticZoomLocation item)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_MakeVisible(item));
	}
	final void StartViewChangeFrom(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_StartViewChangeFrom(source, destination));
	}
	final void StartViewChangeTo(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_StartViewChangeTo(source, destination));
	}
	final void CompleteViewChangeFrom(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_CompleteViewChangeFrom(source, destination));
	}
	final void CompleteViewChangeTo(Windows.UI.Xaml.Controls.SemanticZoomLocation source, Windows.UI.Xaml.Controls.SemanticZoomLocation destination)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomInformation).abi_CompleteViewChangeTo(source, destination));
	}
	final bool ShowsScrollingPlaceholders()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase2).get_ShowsScrollingPlaceholders(&_ret));
		return _ret;
	}
	final void ShowsScrollingPlaceholders(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase2).set_ShowsScrollingPlaceholders(value));
	}
	final EventRegistrationToken OnContainerContentChanging(void delegate(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ContainerContentChanging(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs), Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeContainerContentChanging(EventRegistrationToken token)
	{
		Debug.OK(remove_ContainerContentChanging(token));
	}
	final void SetDesiredContainerUpdateDuration(Windows.Foundation.TimeSpan duration)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase2).abi_SetDesiredContainerUpdateDuration(duration));
	}
	final IInspectable Footer()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase2).get_Footer(&_ret));
		return _ret;
	}
	final void Footer(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase2).set_Footer(value));
	}
	final Windows.UI.Xaml.DataTemplate FooterTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase2).get_FooterTemplate(&_ret));
		return _ret;
	}
	final void FooterTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase2).set_FooterTemplate(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection FooterTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase2).get_FooterTransitions(&_ret));
		return _ret;
	}
	final void FooterTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase2).set_FooterTransitions(value));
	}
	final Windows.UI.Xaml.Controls.ListViewReorderMode ReorderMode()
	{
		Windows.UI.Xaml.Controls.ListViewReorderMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase3).get_ReorderMode(&_ret));
		return _ret;
	}
	final void ReorderMode(Windows.UI.Xaml.Controls.ListViewReorderMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase3).set_ReorderMode(value));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Data.ItemIndexRange) SelectedRanges()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Data.ItemIndexRange) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase4).get_SelectedRanges(&_ret));
		return _ret;
	}
	final bool IsMultiSelectCheckBoxEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase4).get_IsMultiSelectCheckBoxEnabled(&_ret));
		return _ret;
	}
	final void IsMultiSelectCheckBoxEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase4).set_IsMultiSelectCheckBoxEnabled(value));
	}
	final EventRegistrationToken OnDragItemsCompleted(void delegate(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.DragItemsCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DragItemsCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.DragItemsCompletedEventArgs), Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.DragItemsCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDragItemsCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_DragItemsCompleted(token));
	}
	final EventRegistrationToken OnChoosingItemContainer(void delegate(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ChoosingItemContainerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ChoosingItemContainer(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ChoosingItemContainerEventArgs), Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ChoosingItemContainerEventArgs)(fn), &tok));
		return tok;
	}
	final void removeChoosingItemContainer(EventRegistrationToken token)
	{
		Debug.OK(remove_ChoosingItemContainer(token));
	}
	final EventRegistrationToken OnChoosingGroupHeaderContainer(void delegate(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ChoosingGroupHeaderContainerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ChoosingGroupHeaderContainer(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ChoosingGroupHeaderContainerEventArgs), Windows.UI.Xaml.Controls.ListViewBase, Windows.UI.Xaml.Controls.ChoosingGroupHeaderContainerEventArgs)(fn), &tok));
		return tok;
	}
	final void removeChoosingGroupHeaderContainer(EventRegistrationToken token)
	{
		Debug.OK(remove_ChoosingGroupHeaderContainer(token));
	}
	final void SelectRange(Windows.UI.Xaml.Data.ItemIndexRange itemIndexRange)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase4).abi_SelectRange(itemIndexRange));
	}
	final void DeselectRange(Windows.UI.Xaml.Data.ItemIndexRange itemIndexRange)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase4).abi_DeselectRange(itemIndexRange));
	}
	final bool SingleSelectionFollowsFocus()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase5).get_SingleSelectionFollowsFocus(&_ret));
		return _ret;
	}
	final void SingleSelectionFollowsFocus(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase5).set_SingleSelectionFollowsFocus(value));
	}
	final bool IsDragSource()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase5).abi_IsDragSource(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryStartConnectedAnimationAsync(Windows.UI.Xaml.Media.Animation.ConnectedAnimation animation, IInspectable item, HSTRING elementName)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase6).abi_TryStartConnectedAnimationAsync(animation, item, elementName, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Animation.ConnectedAnimation PrepareConnectedAnimation(HSTRING key, IInspectable item, HSTRING elementName)
	{
		Windows.UI.Xaml.Media.Animation.ConnectedAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewBase6).abi_PrepareConnectedAnimation(key, item, elementName, &_ret));
		return _ret;
	}
}

interface ListViewBaseHeaderItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.IListViewBaseHeaderItem
{
}

interface ListViewHeaderItem : Windows.UI.Xaml.Controls.ListViewBaseHeaderItem, Windows.UI.Xaml.Controls.IListViewHeaderItem
{
}

interface ListViewItem : Windows.UI.Xaml.Controls.Primitives.SelectorItem, Windows.UI.Xaml.Controls.IListViewItem
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Primitives.ListViewItemTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.ListViewItemTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IListViewItem).get_TemplateSettings(&_ret));
		return _ret;
	}
}

interface ListViewPersistenceHelper : Windows.UI.Xaml.Controls.IListViewPersistenceHelper
{
}

interface MediaElement : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IMediaElement, Windows.UI.Xaml.Controls.IMediaElement2, Windows.UI.Xaml.Controls.IMediaElement3
{
extern(Windows):
	final Windows.UI.Xaml.Media.ImageSource PosterSource()
	{
		Windows.UI.Xaml.Media.ImageSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_PosterSource(&_ret));
		return _ret;
	}
	final void PosterSource(Windows.UI.Xaml.Media.ImageSource value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_PosterSource(value));
	}
	final Windows.Foundation.Uri Source()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_Source(value));
	}
	final bool IsMuted()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_IsMuted(&_ret));
		return _ret;
	}
	final void IsMuted(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_IsMuted(value));
	}
	final bool IsAudioOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_IsAudioOnly(&_ret));
		return _ret;
	}
	final bool AutoPlay()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_AutoPlay(&_ret));
		return _ret;
	}
	final void AutoPlay(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_AutoPlay(value));
	}
	final double Volume()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_Volume(&_ret));
		return _ret;
	}
	final void Volume(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_Volume(value));
	}
	final double Balance()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_Balance(&_ret));
		return _ret;
	}
	final void Balance(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_Balance(value));
	}
	final INT32 NaturalVideoHeight()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_NaturalVideoHeight(&_ret));
		return _ret;
	}
	final INT32 NaturalVideoWidth()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_NaturalVideoWidth(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Duration NaturalDuration()
	{
		Windows.UI.Xaml.Duration _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_NaturalDuration(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Position()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_Position(value));
	}
	final double DownloadProgress()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_DownloadProgress(&_ret));
		return _ret;
	}
	final double BufferingProgress()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_BufferingProgress(&_ret));
		return _ret;
	}
	final double DownloadProgressOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_DownloadProgressOffset(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.MediaElementState CurrentState()
	{
		Windows.UI.Xaml.Media.MediaElementState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_CurrentState(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.TimelineMarkerCollection Markers()
	{
		Windows.UI.Xaml.Media.TimelineMarkerCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_Markers(&_ret));
		return _ret;
	}
	final bool CanSeek()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_CanSeek(&_ret));
		return _ret;
	}
	final bool CanPause()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_CanPause(&_ret));
		return _ret;
	}
	final INT32 AudioStreamCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_AudioStreamCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT32) AudioStreamIndex()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_AudioStreamIndex(&_ret));
		return _ret;
	}
	final void AudioStreamIndex(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_AudioStreamIndex(value));
	}
	final double PlaybackRate()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_PlaybackRate(&_ret));
		return _ret;
	}
	final void PlaybackRate(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_PlaybackRate(value));
	}
	final bool IsLooping()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_IsLooping(&_ret));
		return _ret;
	}
	final void IsLooping(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_IsLooping(value));
	}
	deprecated("PlayToSource may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource.")
	final Windows.Media.PlayTo.PlayToSource PlayToSource()
	{
		Windows.Media.PlayTo.PlayToSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_PlayToSource(&_ret));
		return _ret;
	}
	final double DefaultPlaybackRate()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_DefaultPlaybackRate(&_ret));
		return _ret;
	}
	final void DefaultPlaybackRate(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_DefaultPlaybackRate(value));
	}
	final INT32 AspectRatioWidth()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_AspectRatioWidth(&_ret));
		return _ret;
	}
	final INT32 AspectRatioHeight()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_AspectRatioHeight(&_ret));
		return _ret;
	}
	final bool RealTimePlayback()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_RealTimePlayback(&_ret));
		return _ret;
	}
	final void RealTimePlayback(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_RealTimePlayback(value));
	}
	final Windows.UI.Xaml.Media.AudioCategory AudioCategory()
	{
		Windows.UI.Xaml.Media.AudioCategory _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_AudioCategory(&_ret));
		return _ret;
	}
	final void AudioCategory(Windows.UI.Xaml.Media.AudioCategory value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_AudioCategory(value));
	}
	final Windows.UI.Xaml.Media.AudioDeviceType AudioDeviceType()
	{
		Windows.UI.Xaml.Media.AudioDeviceType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_AudioDeviceType(&_ret));
		return _ret;
	}
	final void AudioDeviceType(Windows.UI.Xaml.Media.AudioDeviceType value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_AudioDeviceType(value));
	}
	final Windows.Media.Protection.MediaProtectionManager ProtectionManager()
	{
		Windows.Media.Protection.MediaProtectionManager _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_ProtectionManager(&_ret));
		return _ret;
	}
	final void ProtectionManager(Windows.Media.Protection.MediaProtectionManager value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_ProtectionManager(value));
	}
	final Windows.UI.Xaml.Media.Stereo3DVideoPackingMode Stereo3DVideoPackingMode()
	{
		Windows.UI.Xaml.Media.Stereo3DVideoPackingMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_Stereo3DVideoPackingMode(&_ret));
		return _ret;
	}
	final void Stereo3DVideoPackingMode(Windows.UI.Xaml.Media.Stereo3DVideoPackingMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_Stereo3DVideoPackingMode(value));
	}
	final Windows.UI.Xaml.Media.Stereo3DVideoRenderMode Stereo3DVideoRenderMode()
	{
		Windows.UI.Xaml.Media.Stereo3DVideoRenderMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_Stereo3DVideoRenderMode(&_ret));
		return _ret;
	}
	final void Stereo3DVideoRenderMode(Windows.UI.Xaml.Media.Stereo3DVideoRenderMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).set_Stereo3DVideoRenderMode(value));
	}
	final bool IsStereo3DVideo()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_IsStereo3DVideo(&_ret));
		return _ret;
	}
	final void removeMediaOpened(EventRegistrationToken token)
	{
		Debug.OK(remove_MediaOpened(token));
	}
	final void removeMediaEnded(EventRegistrationToken token)
	{
		Debug.OK(remove_MediaEnded(token));
	}
	final void removeMediaFailed(EventRegistrationToken token)
	{
		Debug.OK(remove_MediaFailed(token));
	}
	final void removeDownloadProgressChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_DownloadProgressChanged(token));
	}
	final void removeBufferingProgressChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_BufferingProgressChanged(token));
	}
	final void removeCurrentStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CurrentStateChanged(token));
	}
	final void removeMarkerReached(EventRegistrationToken token)
	{
		Debug.OK(remove_MarkerReached(token));
	}
	final void removeRateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_RateChanged(token));
	}
	final void removeVolumeChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_VolumeChanged(token));
	}
	final void removeSeekCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_SeekCompleted(token));
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).abi_Stop());
	}
	final void Play()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).abi_Play());
	}
	final void Pause()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).abi_Pause());
	}
	final Windows.UI.Xaml.Media.MediaCanPlayResponse CanPlayType(HSTRING type)
	{
		Windows.UI.Xaml.Media.MediaCanPlayResponse _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).abi_CanPlayType(type, &_ret));
		return _ret;
	}
	final void SetSource(Windows.Storage.Streams.IRandomAccessStream stream, HSTRING mimeType)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).abi_SetSource(stream, mimeType));
	}
	final HSTRING GetAudioStreamLanguage(Windows.Foundation.IReference!(INT32) index)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).abi_GetAudioStreamLanguage(index, &_ret));
		return _ret;
	}
	final void AddAudioEffect(HSTRING effectID, bool effectOptional, Windows.Foundation.Collections.IPropertySet effectConfiguration)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).abi_AddAudioEffect(effectID, effectOptional, effectConfiguration));
	}
	final void AddVideoEffect(HSTRING effectID, bool effectOptional, Windows.Foundation.Collections.IPropertySet effectConfiguration)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).abi_AddVideoEffect(effectID, effectOptional, effectConfiguration));
	}
	final void RemoveAllEffects()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).abi_RemoveAllEffects());
	}
	final Windows.UI.Xaml.Media.Stereo3DVideoPackingMode ActualStereo3DVideoPackingMode()
	{
		Windows.UI.Xaml.Media.Stereo3DVideoPackingMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement).get_ActualStereo3DVideoPackingMode(&_ret));
		return _ret;
	}
	final bool AreTransportControlsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement2).get_AreTransportControlsEnabled(&_ret));
		return _ret;
	}
	final void AreTransportControlsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement2).set_AreTransportControlsEnabled(value));
	}
	final Windows.UI.Xaml.Media.Stretch Stretch()
	{
		Windows.UI.Xaml.Media.Stretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement2).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Xaml.Media.Stretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement2).set_Stretch(value));
	}
	final bool IsFullWindow()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement2).get_IsFullWindow(&_ret));
		return _ret;
	}
	final void IsFullWindow(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement2).set_IsFullWindow(value));
	}
	final void SetMediaStreamSource(Windows.Media.Core.IMediaSource source)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement2).abi_SetMediaStreamSource(source));
	}
	deprecated("PlayToPreferredSourceUri may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource().PreferredSourceUri.")
	final Windows.Foundation.Uri PlayToPreferredSourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement2).get_PlayToPreferredSourceUri(&_ret));
		return _ret;
	}
	deprecated("PlayToPreferredSourceUri may be altered or unavailable for releases after Windows 10.0. Instead, use GetAsCastingSource().PreferredSourceUri.")
	final void PlayToPreferredSourceUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement2).set_PlayToPreferredSourceUri(value));
	}
	final Windows.UI.Xaml.Controls.MediaTransportControls TransportControls()
	{
		Windows.UI.Xaml.Controls.MediaTransportControls _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement3).get_TransportControls(&_ret));
		return _ret;
	}
	final void TransportControls(Windows.UI.Xaml.Controls.MediaTransportControls value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement3).set_TransportControls(value));
	}
	final EventRegistrationToken OnPartialMediaFailureDetected(void delegate(Windows.UI.Xaml.Controls.MediaElement, Windows.UI.Xaml.Media.PartialMediaFailureDetectedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PartialMediaFailureDetected(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.MediaElement, Windows.UI.Xaml.Media.PartialMediaFailureDetectedEventArgs), Windows.UI.Xaml.Controls.MediaElement, Windows.UI.Xaml.Media.PartialMediaFailureDetectedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePartialMediaFailureDetected(EventRegistrationToken token)
	{
		Debug.OK(remove_PartialMediaFailureDetected(token));
	}
	final void SetPlaybackSource(Windows.Media.Playback.IMediaPlaybackSource source)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement3).abi_SetPlaybackSource(source));
	}
	final Windows.Media.Casting.CastingSource GetAsCastingSource()
	{
		Windows.Media.Casting.CastingSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaElement3).abi_GetAsCastingSource(&_ret));
		return _ret;
	}
}

interface MediaPlayerElement : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IMediaPlayerElement
{
extern(Windows):
	final Windows.Media.Playback.IMediaPlaybackSource Source()
	{
		Windows.Media.Playback.IMediaPlaybackSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.Media.Playback.IMediaPlaybackSource value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).set_Source(value));
	}
	final Windows.UI.Xaml.Controls.MediaTransportControls TransportControls()
	{
		Windows.UI.Xaml.Controls.MediaTransportControls _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).get_TransportControls(&_ret));
		return _ret;
	}
	final void TransportControls(Windows.UI.Xaml.Controls.MediaTransportControls value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).set_TransportControls(value));
	}
	final bool AreTransportControlsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).get_AreTransportControlsEnabled(&_ret));
		return _ret;
	}
	final void AreTransportControlsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).set_AreTransportControlsEnabled(value));
	}
	final Windows.UI.Xaml.Media.ImageSource PosterSource()
	{
		Windows.UI.Xaml.Media.ImageSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).get_PosterSource(&_ret));
		return _ret;
	}
	final void PosterSource(Windows.UI.Xaml.Media.ImageSource value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).set_PosterSource(value));
	}
	final Windows.UI.Xaml.Media.Stretch Stretch()
	{
		Windows.UI.Xaml.Media.Stretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Xaml.Media.Stretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).set_Stretch(value));
	}
	final bool AutoPlay()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).get_AutoPlay(&_ret));
		return _ret;
	}
	final void AutoPlay(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).set_AutoPlay(value));
	}
	final bool IsFullWindow()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).get_IsFullWindow(&_ret));
		return _ret;
	}
	final void IsFullWindow(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).set_IsFullWindow(value));
	}
	final Windows.Media.Playback.MediaPlayer MediaPlayer()
	{
		Windows.Media.Playback.MediaPlayer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).get_MediaPlayer(&_ret));
		return _ret;
	}
	final void SetMediaPlayer(Windows.Media.Playback.MediaPlayer mediaPlayer)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerElement).abi_SetMediaPlayer(mediaPlayer));
	}
}

interface MediaPlayerPresenter : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IMediaPlayerPresenter
{
extern(Windows):
	final Windows.Media.Playback.MediaPlayer MediaPlayer()
	{
		Windows.Media.Playback.MediaPlayer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerPresenter).get_MediaPlayer(&_ret));
		return _ret;
	}
	final void MediaPlayer(Windows.Media.Playback.MediaPlayer value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerPresenter).set_MediaPlayer(value));
	}
	final Windows.UI.Xaml.Media.Stretch Stretch()
	{
		Windows.UI.Xaml.Media.Stretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerPresenter).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Xaml.Media.Stretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerPresenter).set_Stretch(value));
	}
	final bool IsFullWindow()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerPresenter).get_IsFullWindow(&_ret));
		return _ret;
	}
	final void IsFullWindow(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaPlayerPresenter).set_IsFullWindow(value));
	}
}

interface MediaTransportControls : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IMediaTransportControls, Windows.UI.Xaml.Controls.IMediaTransportControls2
{
extern(Windows):
	final bool IsFullWindowButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsFullWindowButtonVisible(&_ret));
		return _ret;
	}
	final void IsFullWindowButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsFullWindowButtonVisible(value));
	}
	final bool IsFullWindowEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsFullWindowEnabled(&_ret));
		return _ret;
	}
	final void IsFullWindowEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsFullWindowEnabled(value));
	}
	final bool IsZoomButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsZoomButtonVisible(&_ret));
		return _ret;
	}
	final void IsZoomButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsZoomButtonVisible(value));
	}
	final bool IsZoomEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsZoomEnabled(&_ret));
		return _ret;
	}
	final void IsZoomEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsZoomEnabled(value));
	}
	final bool IsFastForwardButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsFastForwardButtonVisible(&_ret));
		return _ret;
	}
	final void IsFastForwardButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsFastForwardButtonVisible(value));
	}
	final bool IsFastForwardEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsFastForwardEnabled(&_ret));
		return _ret;
	}
	final void IsFastForwardEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsFastForwardEnabled(value));
	}
	final bool IsFastRewindButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsFastRewindButtonVisible(&_ret));
		return _ret;
	}
	final void IsFastRewindButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsFastRewindButtonVisible(value));
	}
	final bool IsFastRewindEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsFastRewindEnabled(&_ret));
		return _ret;
	}
	final void IsFastRewindEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsFastRewindEnabled(value));
	}
	final bool IsStopButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsStopButtonVisible(&_ret));
		return _ret;
	}
	final void IsStopButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsStopButtonVisible(value));
	}
	final bool IsStopEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsStopEnabled(&_ret));
		return _ret;
	}
	final void IsStopEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsStopEnabled(value));
	}
	final bool IsVolumeButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsVolumeButtonVisible(&_ret));
		return _ret;
	}
	final void IsVolumeButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsVolumeButtonVisible(value));
	}
	final bool IsVolumeEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsVolumeEnabled(&_ret));
		return _ret;
	}
	final void IsVolumeEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsVolumeEnabled(value));
	}
	final bool IsPlaybackRateButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsPlaybackRateButtonVisible(&_ret));
		return _ret;
	}
	final void IsPlaybackRateButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsPlaybackRateButtonVisible(value));
	}
	final bool IsPlaybackRateEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsPlaybackRateEnabled(&_ret));
		return _ret;
	}
	final void IsPlaybackRateEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsPlaybackRateEnabled(value));
	}
	final bool IsSeekBarVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsSeekBarVisible(&_ret));
		return _ret;
	}
	final void IsSeekBarVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsSeekBarVisible(value));
	}
	final bool IsSeekEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsSeekEnabled(&_ret));
		return _ret;
	}
	final void IsSeekEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsSeekEnabled(value));
	}
	final bool IsCompact()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).get_IsCompact(&_ret));
		return _ret;
	}
	final void IsCompact(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls).set_IsCompact(value));
	}
	final bool IsSkipForwardButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).get_IsSkipForwardButtonVisible(&_ret));
		return _ret;
	}
	final void IsSkipForwardButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).set_IsSkipForwardButtonVisible(value));
	}
	final bool IsSkipForwardEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).get_IsSkipForwardEnabled(&_ret));
		return _ret;
	}
	final void IsSkipForwardEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).set_IsSkipForwardEnabled(value));
	}
	final bool IsSkipBackwardButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).get_IsSkipBackwardButtonVisible(&_ret));
		return _ret;
	}
	final void IsSkipBackwardButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).set_IsSkipBackwardButtonVisible(value));
	}
	final bool IsSkipBackwardEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).get_IsSkipBackwardEnabled(&_ret));
		return _ret;
	}
	final void IsSkipBackwardEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).set_IsSkipBackwardEnabled(value));
	}
	final bool IsNextTrackButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).get_IsNextTrackButtonVisible(&_ret));
		return _ret;
	}
	final void IsNextTrackButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).set_IsNextTrackButtonVisible(value));
	}
	final bool IsPreviousTrackButtonVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).get_IsPreviousTrackButtonVisible(&_ret));
		return _ret;
	}
	final void IsPreviousTrackButtonVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).set_IsPreviousTrackButtonVisible(value));
	}
	final Windows.UI.Xaml.Media.FastPlayFallbackBehaviour FastPlayFallbackBehaviour()
	{
		Windows.UI.Xaml.Media.FastPlayFallbackBehaviour _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).get_FastPlayFallbackBehaviour(&_ret));
		return _ret;
	}
	final void FastPlayFallbackBehaviour(Windows.UI.Xaml.Media.FastPlayFallbackBehaviour value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMediaTransportControls2).set_FastPlayFallbackBehaviour(value));
	}
	final EventRegistrationToken OnThumbnailRequested(void delegate(Windows.UI.Xaml.Controls.MediaTransportControls, Windows.UI.Xaml.Media.MediaTransportControlsThumbnailRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ThumbnailRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.MediaTransportControls, Windows.UI.Xaml.Media.MediaTransportControlsThumbnailRequestedEventArgs), Windows.UI.Xaml.Controls.MediaTransportControls, Windows.UI.Xaml.Media.MediaTransportControlsThumbnailRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeThumbnailRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_ThumbnailRequested(token));
	}
}

interface MediaTransportControlsHelper : Windows.UI.Xaml.Controls.IMediaTransportControlsHelper
{
}

interface MenuFlyout : Windows.UI.Xaml.Controls.Primitives.FlyoutBase, Windows.UI.Xaml.Controls.IMenuFlyout, Windows.UI.Xaml.Controls.IMenuFlyout2
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.MenuFlyoutItemBase) Items()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.MenuFlyoutItemBase) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyout).get_Items(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Style MenuFlyoutPresenterStyle()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyout).get_MenuFlyoutPresenterStyle(&_ret));
		return _ret;
	}
	final void MenuFlyoutPresenterStyle(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyout).set_MenuFlyoutPresenterStyle(value));
	}
	final void ShowAt(Windows.UI.Xaml.UIElement targetElement, Windows.Foundation.Point point)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyout2).abi_ShowAt(targetElement, point));
	}
}

interface MenuFlyoutItem : Windows.UI.Xaml.Controls.MenuFlyoutItemBase, Windows.UI.Xaml.Controls.IMenuFlyoutItem, Windows.UI.Xaml.Controls.IMenuFlyoutItem2
{
extern(Windows):
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutItem).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutItem).set_Text(value));
	}
	final Windows.UI.Xaml.Input.ICommand Command()
	{
		Windows.UI.Xaml.Input.ICommand _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutItem).get_Command(&_ret));
		return _ret;
	}
	final void Command(Windows.UI.Xaml.Input.ICommand value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutItem).set_Command(value));
	}
	final IInspectable CommandParameter()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutItem).get_CommandParameter(&_ret));
		return _ret;
	}
	final void CommandParameter(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutItem).set_CommandParameter(value));
	}
	final void removeClick(EventRegistrationToken token)
	{
		Debug.OK(remove_Click(token));
	}
	final Windows.UI.Xaml.Controls.IconElement Icon()
	{
		Windows.UI.Xaml.Controls.IconElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutItem2).get_Icon(&_ret));
		return _ret;
	}
	final void Icon(Windows.UI.Xaml.Controls.IconElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutItem2).set_Icon(value));
	}
}

interface MenuFlyoutItemBase : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IMenuFlyoutItemBase
{
}

interface MenuFlyoutPresenter : Windows.UI.Xaml.Controls.ItemsControl, Windows.UI.Xaml.Controls.IMenuFlyoutPresenter, Windows.UI.Xaml.Controls.IMenuFlyoutPresenter2
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Primitives.MenuFlyoutPresenterTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.MenuFlyoutPresenterTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutPresenter2).get_TemplateSettings(&_ret));
		return _ret;
	}
}

interface MenuFlyoutSeparator : Windows.UI.Xaml.Controls.MenuFlyoutItemBase, Windows.UI.Xaml.Controls.IMenuFlyoutSeparator
{
}

interface MenuFlyoutSubItem : Windows.UI.Xaml.Controls.MenuFlyoutItemBase, Windows.UI.Xaml.Controls.IMenuFlyoutSubItem, Windows.UI.Xaml.Controls.IMenuFlyoutSubItem2
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.MenuFlyoutItemBase) Items()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.MenuFlyoutItemBase) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutSubItem).get_Items(&_ret));
		return _ret;
	}
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutSubItem).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutSubItem).set_Text(value));
	}
	final Windows.UI.Xaml.Controls.IconElement Icon()
	{
		Windows.UI.Xaml.Controls.IconElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutSubItem2).get_Icon(&_ret));
		return _ret;
	}
	final void Icon(Windows.UI.Xaml.Controls.IconElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IMenuFlyoutSubItem2).set_Icon(value));
	}
}

interface NotifyEventArgs : Windows.UI.Xaml.Controls.INotifyEventArgs, Windows.UI.Xaml.Controls.INotifyEventArgs2
{
extern(Windows):
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.INotifyEventArgs).get_Value(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri CallingUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.INotifyEventArgs2).get_CallingUri(&_ret));
		return _ret;
	}
}

interface Page : Windows.UI.Xaml.Controls.UserControl, Windows.UI.Xaml.Controls.IPage, Windows.UI.Xaml.Controls.IPageOverrides
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Frame Frame()
	{
		Windows.UI.Xaml.Controls.Frame _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPage).get_Frame(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Navigation.NavigationCacheMode NavigationCacheMode()
	{
		Windows.UI.Xaml.Navigation.NavigationCacheMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPage).get_NavigationCacheMode(&_ret));
		return _ret;
	}
	final void NavigationCacheMode(Windows.UI.Xaml.Navigation.NavigationCacheMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPage).set_NavigationCacheMode(value));
	}
	final Windows.UI.Xaml.Controls.AppBar TopAppBar()
	{
		Windows.UI.Xaml.Controls.AppBar _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPage).get_TopAppBar(&_ret));
		return _ret;
	}
	final void TopAppBar(Windows.UI.Xaml.Controls.AppBar value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPage).set_TopAppBar(value));
	}
	final Windows.UI.Xaml.Controls.AppBar BottomAppBar()
	{
		Windows.UI.Xaml.Controls.AppBar _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPage).get_BottomAppBar(&_ret));
		return _ret;
	}
	final void BottomAppBar(Windows.UI.Xaml.Controls.AppBar value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPage).set_BottomAppBar(value));
	}
	final void OnNavigatedFrom(Windows.UI.Xaml.Navigation.NavigationEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPageOverrides).abi_OnNavigatedFrom(e));
	}
	final void OnNavigatedTo(Windows.UI.Xaml.Navigation.NavigationEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPageOverrides).abi_OnNavigatedTo(e));
	}
	final void OnNavigatingFrom(Windows.UI.Xaml.Navigation.NavigatingCancelEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPageOverrides).abi_OnNavigatingFrom(e));
	}
}

interface Panel : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IPanel
{
extern(Windows):
	final Windows.UI.Xaml.Controls.UIElementCollection Children()
	{
		Windows.UI.Xaml.Controls.UIElementCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPanel).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Brush Background()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPanel).get_Background(&_ret));
		return _ret;
	}
	final void Background(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPanel).set_Background(value));
	}
	final bool IsItemsHost()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPanel).get_IsItemsHost(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection ChildrenTransitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPanel).get_ChildrenTransitions(&_ret));
		return _ret;
	}
	final void ChildrenTransitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPanel).set_ChildrenTransitions(value));
	}
}

interface PasswordBox : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IPasswordBox, Windows.UI.Xaml.Controls.IPasswordBox2, Windows.UI.Xaml.Controls.IPasswordBox3
{
extern(Windows):
	final HSTRING Password()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox).get_Password(&_ret));
		return _ret;
	}
	final void Password(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox).set_Password(value));
	}
	final HSTRING PasswordChar()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox).get_PasswordChar(&_ret));
		return _ret;
	}
	final void PasswordChar(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox).set_PasswordChar(value));
	}
	deprecated("IsPasswordRevealButtonEnabledProperty may be altered or unavailable for releases after Windows 10.0. Instead, use PasswordRevealModeProperty.")
	final bool IsPasswordRevealButtonEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox).get_IsPasswordRevealButtonEnabled(&_ret));
		return _ret;
	}
	deprecated("IsPasswordRevealButtonEnabledProperty may be altered or unavailable for releases after Windows 10.0. Instead, use PasswordRevealModeProperty.")
	final void IsPasswordRevealButtonEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox).set_IsPasswordRevealButtonEnabled(value));
	}
	final INT32 MaxLength()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox).get_MaxLength(&_ret));
		return _ret;
	}
	final void MaxLength(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox).set_MaxLength(value));
	}
	final void removePasswordChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PasswordChanged(token));
	}
	final void removeContextMenuOpening(EventRegistrationToken token)
	{
		Debug.OK(remove_ContextMenuOpening(token));
	}
	final void SelectAll()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox).abi_SelectAll());
	}
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox2).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox2).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox2).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox2).set_HeaderTemplate(value));
	}
	final HSTRING PlaceholderText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox2).get_PlaceholderText(&_ret));
		return _ret;
	}
	final void PlaceholderText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox2).set_PlaceholderText(value));
	}
	final Windows.UI.Xaml.Media.SolidColorBrush SelectionHighlightColor()
	{
		Windows.UI.Xaml.Media.SolidColorBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox2).get_SelectionHighlightColor(&_ret));
		return _ret;
	}
	final void SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox2).set_SelectionHighlightColor(value));
	}
	final bool PreventKeyboardDisplayOnProgrammaticFocus()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox2).get_PreventKeyboardDisplayOnProgrammaticFocus(&_ret));
		return _ret;
	}
	final void PreventKeyboardDisplayOnProgrammaticFocus(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox2).set_PreventKeyboardDisplayOnProgrammaticFocus(value));
	}
	final void removePaste(EventRegistrationToken token)
	{
		Debug.OK(remove_Paste(token));
	}
	final Windows.UI.Xaml.Controls.PasswordRevealMode PasswordRevealMode()
	{
		Windows.UI.Xaml.Controls.PasswordRevealMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox3).get_PasswordRevealMode(&_ret));
		return _ret;
	}
	final void PasswordRevealMode(Windows.UI.Xaml.Controls.PasswordRevealMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox3).set_PasswordRevealMode(value));
	}
	final Windows.UI.Xaml.TextReadingOrder TextReadingOrder()
	{
		Windows.UI.Xaml.TextReadingOrder _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox3).get_TextReadingOrder(&_ret));
		return _ret;
	}
	final void TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox3).set_TextReadingOrder(value));
	}
	final Windows.UI.Xaml.Input.InputScope InputScope()
	{
		Windows.UI.Xaml.Input.InputScope _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox3).get_InputScope(&_ret));
		return _ret;
	}
	final void InputScope(Windows.UI.Xaml.Input.InputScope value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPasswordBox3).set_InputScope(value));
	}
}

interface PathIcon : Windows.UI.Xaml.Controls.IconElement, Windows.UI.Xaml.Controls.IPathIcon
{
extern(Windows):
	final Windows.UI.Xaml.Media.Geometry Data()
	{
		Windows.UI.Xaml.Media.Geometry _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPathIcon).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.UI.Xaml.Media.Geometry value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPathIcon).set_Data(value));
	}
}

interface PickerConfirmedEventArgs : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.IPickerConfirmedEventArgs
{
}

interface PickerFlyout : Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase, Windows.UI.Xaml.Controls.IPickerFlyout
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Content()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPickerFlyout).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPickerFlyout).set_Content(value));
	}
	final bool ConfirmationButtonsVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPickerFlyout).get_ConfirmationButtonsVisible(&_ret));
		return _ret;
	}
	final void ConfirmationButtonsVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPickerFlyout).set_ConfirmationButtonsVisible(value));
	}
	final EventRegistrationToken OnConfirmed(void delegate(Windows.UI.Xaml.Controls.PickerFlyout, Windows.UI.Xaml.Controls.PickerConfirmedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Confirmed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.PickerFlyout, Windows.UI.Xaml.Controls.PickerConfirmedEventArgs), Windows.UI.Xaml.Controls.PickerFlyout, Windows.UI.Xaml.Controls.PickerConfirmedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeConfirmed(EventRegistrationToken token)
	{
		Debug.OK(remove_Confirmed(token));
	}
	final Windows.Foundation.IAsyncOperation!(bool) ShowAtAsync(Windows.UI.Xaml.FrameworkElement target)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPickerFlyout).abi_ShowAtAsync(target, &_ret));
		return _ret;
	}
}

interface PickerFlyoutPresenter : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.IPickerFlyoutPresenter
{
}

interface Pivot : Windows.UI.Xaml.Controls.ItemsControl, Windows.UI.Xaml.Controls.IPivot, Windows.UI.Xaml.Controls.IPivot2, Windows.UI.Xaml.Controls.IPivot3
{
extern(Windows):
	final IInspectable Title()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).get_Title(&_ret));
		return _ret;
	}
	final void Title(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).set_Title(value));
	}
	final Windows.UI.Xaml.DataTemplate TitleTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).get_TitleTemplate(&_ret));
		return _ret;
	}
	final void TitleTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).set_TitleTemplate(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).set_HeaderTemplate(value));
	}
	final INT32 SelectedIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).get_SelectedIndex(&_ret));
		return _ret;
	}
	final void SelectedIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).set_SelectedIndex(value));
	}
	final IInspectable SelectedItem()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).get_SelectedItem(&_ret));
		return _ret;
	}
	final void SelectedItem(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).set_SelectedItem(value));
	}
	final bool IsLocked()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).get_IsLocked(&_ret));
		return _ret;
	}
	final void IsLocked(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot).set_IsLocked(value));
	}
	final void removeSelectionChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SelectionChanged(token));
	}
	final EventRegistrationToken OnPivotItemLoading(void delegate(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PivotItemLoading(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs), Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs)(fn), &tok));
		return tok;
	}
	final void removePivotItemLoading(EventRegistrationToken token)
	{
		Debug.OK(remove_PivotItemLoading(token));
	}
	final EventRegistrationToken OnPivotItemLoaded(void delegate(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PivotItemLoaded(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs), Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs)(fn), &tok));
		return tok;
	}
	final void removePivotItemLoaded(EventRegistrationToken token)
	{
		Debug.OK(remove_PivotItemLoaded(token));
	}
	final EventRegistrationToken OnPivotItemUnloading(void delegate(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PivotItemUnloading(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs), Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs)(fn), &tok));
		return tok;
	}
	final void removePivotItemUnloading(EventRegistrationToken token)
	{
		Debug.OK(remove_PivotItemUnloading(token));
	}
	final EventRegistrationToken OnPivotItemUnloaded(void delegate(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PivotItemUnloaded(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs), Windows.UI.Xaml.Controls.Pivot, Windows.UI.Xaml.Controls.PivotItemEventArgs)(fn), &tok));
		return tok;
	}
	final void removePivotItemUnloaded(EventRegistrationToken token)
	{
		Debug.OK(remove_PivotItemUnloaded(token));
	}
	final IInspectable LeftHeader()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot2).get_LeftHeader(&_ret));
		return _ret;
	}
	final void LeftHeader(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot2).set_LeftHeader(value));
	}
	final Windows.UI.Xaml.DataTemplate LeftHeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot2).get_LeftHeaderTemplate(&_ret));
		return _ret;
	}
	final void LeftHeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot2).set_LeftHeaderTemplate(value));
	}
	final IInspectable RightHeader()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot2).get_RightHeader(&_ret));
		return _ret;
	}
	final void RightHeader(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot2).set_RightHeader(value));
	}
	final Windows.UI.Xaml.DataTemplate RightHeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot2).get_RightHeaderTemplate(&_ret));
		return _ret;
	}
	final void RightHeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot2).set_RightHeaderTemplate(value));
	}
	final Windows.UI.Xaml.Controls.PivotHeaderFocusVisualPlacement HeaderFocusVisualPlacement()
	{
		Windows.UI.Xaml.Controls.PivotHeaderFocusVisualPlacement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot3).get_HeaderFocusVisualPlacement(&_ret));
		return _ret;
	}
	final void HeaderFocusVisualPlacement(Windows.UI.Xaml.Controls.PivotHeaderFocusVisualPlacement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot3).set_HeaderFocusVisualPlacement(value));
	}
	final bool IsHeaderItemsCarouselEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot3).get_IsHeaderItemsCarouselEnabled(&_ret));
		return _ret;
	}
	final void IsHeaderItemsCarouselEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivot3).set_IsHeaderItemsCarouselEnabled(value));
	}
}

interface PivotItem : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.IPivotItem
{
extern(Windows):
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivotItem).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivotItem).set_Header(value));
	}
}

interface PivotItemEventArgs : Windows.UI.Xaml.Controls.IPivotItemEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.PivotItem Item()
	{
		Windows.UI.Xaml.Controls.PivotItem _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivotItemEventArgs).get_Item(&_ret));
		return _ret;
	}
	final void Item(Windows.UI.Xaml.Controls.PivotItem value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IPivotItemEventArgs).set_Item(value));
	}
}

interface ProgressBar : Windows.UI.Xaml.Controls.Primitives.RangeBase, Windows.UI.Xaml.Controls.IProgressBar
{
extern(Windows):
	final bool IsIndeterminate()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IProgressBar).get_IsIndeterminate(&_ret));
		return _ret;
	}
	final void IsIndeterminate(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IProgressBar).set_IsIndeterminate(value));
	}
	final bool ShowError()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IProgressBar).get_ShowError(&_ret));
		return _ret;
	}
	final void ShowError(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IProgressBar).set_ShowError(value));
	}
	final bool ShowPaused()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IProgressBar).get_ShowPaused(&_ret));
		return _ret;
	}
	final void ShowPaused(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IProgressBar).set_ShowPaused(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.ProgressBarTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.ProgressBarTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IProgressBar).get_TemplateSettings(&_ret));
		return _ret;
	}
}

interface ProgressRing : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IProgressRing
{
extern(Windows):
	final bool IsActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IProgressRing).get_IsActive(&_ret));
		return _ret;
	}
	final void IsActive(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IProgressRing).set_IsActive(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.ProgressRingTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.ProgressRingTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IProgressRing).get_TemplateSettings(&_ret));
		return _ret;
	}
}

interface RadioButton : Windows.UI.Xaml.Controls.Primitives.ToggleButton, Windows.UI.Xaml.Controls.IRadioButton
{
extern(Windows):
	final HSTRING GroupName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRadioButton).get_GroupName(&_ret));
		return _ret;
	}
	final void GroupName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRadioButton).set_GroupName(value));
	}
}

interface RelativePanel : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.IRelativePanel
{
extern(Windows):
	final Windows.UI.Xaml.Media.Brush BorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRelativePanel).get_BorderBrush(&_ret));
		return _ret;
	}
	final void BorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRelativePanel).set_BorderBrush(value));
	}
	final Windows.UI.Xaml.Thickness BorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRelativePanel).get_BorderThickness(&_ret));
		return _ret;
	}
	final void BorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRelativePanel).set_BorderThickness(value));
	}
	final Windows.UI.Xaml.CornerRadius CornerRadius()
	{
		Windows.UI.Xaml.CornerRadius _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRelativePanel).get_CornerRadius(&_ret));
		return _ret;
	}
	final void CornerRadius(Windows.UI.Xaml.CornerRadius value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRelativePanel).set_CornerRadius(value));
	}
	final Windows.UI.Xaml.Thickness Padding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRelativePanel).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRelativePanel).set_Padding(value));
	}
}

interface RichEditBox : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IRichEditBox, Windows.UI.Xaml.Controls.IRichEditBox2, Windows.UI.Xaml.Controls.IRichEditBox3, Windows.UI.Xaml.Controls.IRichEditBox4, Windows.UI.Xaml.Controls.IRichEditBox5
{
extern(Windows):
	final bool IsReadOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).get_IsReadOnly(&_ret));
		return _ret;
	}
	final void IsReadOnly(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).set_IsReadOnly(value));
	}
	final bool AcceptsReturn()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).get_AcceptsReturn(&_ret));
		return _ret;
	}
	final void AcceptsReturn(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).set_AcceptsReturn(value));
	}
	final Windows.UI.Xaml.TextAlignment TextAlignment()
	{
		Windows.UI.Xaml.TextAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).get_TextAlignment(&_ret));
		return _ret;
	}
	final void TextAlignment(Windows.UI.Xaml.TextAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).set_TextAlignment(value));
	}
	final Windows.UI.Xaml.TextWrapping TextWrapping()
	{
		Windows.UI.Xaml.TextWrapping _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).get_TextWrapping(&_ret));
		return _ret;
	}
	final void TextWrapping(Windows.UI.Xaml.TextWrapping value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).set_TextWrapping(value));
	}
	final bool IsSpellCheckEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).get_IsSpellCheckEnabled(&_ret));
		return _ret;
	}
	final void IsSpellCheckEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).set_IsSpellCheckEnabled(value));
	}
	final bool IsTextPredictionEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).get_IsTextPredictionEnabled(&_ret));
		return _ret;
	}
	final void IsTextPredictionEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).set_IsTextPredictionEnabled(value));
	}
	final Windows.UI.Text.ITextDocument Document()
	{
		Windows.UI.Text.ITextDocument _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).get_Document(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Input.InputScope InputScope()
	{
		Windows.UI.Xaml.Input.InputScope _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).get_InputScope(&_ret));
		return _ret;
	}
	final void InputScope(Windows.UI.Xaml.Input.InputScope value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox).set_InputScope(value));
	}
	final void removeTextChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_TextChanged(token));
	}
	final void removeSelectionChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SelectionChanged(token));
	}
	final void removeContextMenuOpening(EventRegistrationToken token)
	{
		Debug.OK(remove_ContextMenuOpening(token));
	}
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).set_HeaderTemplate(value));
	}
	final HSTRING PlaceholderText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).get_PlaceholderText(&_ret));
		return _ret;
	}
	final void PlaceholderText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).set_PlaceholderText(value));
	}
	final Windows.UI.Xaml.Media.SolidColorBrush SelectionHighlightColor()
	{
		Windows.UI.Xaml.Media.SolidColorBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).get_SelectionHighlightColor(&_ret));
		return _ret;
	}
	final void SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).set_SelectionHighlightColor(value));
	}
	final bool PreventKeyboardDisplayOnProgrammaticFocus()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).get_PreventKeyboardDisplayOnProgrammaticFocus(&_ret));
		return _ret;
	}
	final void PreventKeyboardDisplayOnProgrammaticFocus(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).set_PreventKeyboardDisplayOnProgrammaticFocus(value));
	}
	final bool IsColorFontEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).get_IsColorFontEnabled(&_ret));
		return _ret;
	}
	final void IsColorFontEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox2).set_IsColorFontEnabled(value));
	}
	final void removePaste(EventRegistrationToken token)
	{
		Debug.OK(remove_Paste(token));
	}
	final EventRegistrationToken OnTextCompositionStarted(void delegate(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TextCompositionStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs), Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextCompositionStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_TextCompositionStarted(token));
	}
	final EventRegistrationToken OnTextCompositionChanged(void delegate(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TextCompositionChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs), Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextCompositionChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_TextCompositionChanged(token));
	}
	final EventRegistrationToken OnTextCompositionEnded(void delegate(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TextCompositionEnded(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs), Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextCompositionEnded(EventRegistrationToken token)
	{
		Debug.OK(remove_TextCompositionEnded(token));
	}
	final Windows.UI.Xaml.TextReadingOrder TextReadingOrder()
	{
		Windows.UI.Xaml.TextReadingOrder _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox3).get_TextReadingOrder(&_ret));
		return _ret;
	}
	final void TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox3).set_TextReadingOrder(value));
	}
	final Windows.UI.Xaml.Controls.CandidateWindowAlignment DesiredCandidateWindowAlignment()
	{
		Windows.UI.Xaml.Controls.CandidateWindowAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox3).get_DesiredCandidateWindowAlignment(&_ret));
		return _ret;
	}
	final void DesiredCandidateWindowAlignment(Windows.UI.Xaml.Controls.CandidateWindowAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox3).set_DesiredCandidateWindowAlignment(value));
	}
	final EventRegistrationToken OnCandidateWindowBoundsChanged(void delegate(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CandidateWindowBoundsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs), Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCandidateWindowBoundsChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CandidateWindowBoundsChanged(token));
	}
	final EventRegistrationToken OnTextChanging(void delegate(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.RichEditBoxTextChangingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TextChanging(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.RichEditBoxTextChangingEventArgs), Windows.UI.Xaml.Controls.RichEditBox, Windows.UI.Xaml.Controls.RichEditBoxTextChangingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextChanging(EventRegistrationToken token)
	{
		Debug.OK(remove_TextChanging(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) GetLinguisticAlternativesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox4).abi_GetLinguisticAlternativesAsync(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.RichEditClipboardFormat ClipboardCopyFormat()
	{
		Windows.UI.Xaml.Controls.RichEditClipboardFormat _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox4).get_ClipboardCopyFormat(&_ret));
		return _ret;
	}
	final void ClipboardCopyFormat(Windows.UI.Xaml.Controls.RichEditClipboardFormat value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox4).set_ClipboardCopyFormat(value));
	}
	final Windows.UI.Xaml.Media.SolidColorBrush SelectionHighlightColorWhenNotFocused()
	{
		Windows.UI.Xaml.Media.SolidColorBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox5).get_SelectionHighlightColorWhenNotFocused(&_ret));
		return _ret;
	}
	final void SelectionHighlightColorWhenNotFocused(Windows.UI.Xaml.Media.SolidColorBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox5).set_SelectionHighlightColorWhenNotFocused(value));
	}
	final INT32 MaxLength()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox5).get_MaxLength(&_ret));
		return _ret;
	}
	final void MaxLength(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBox5).set_MaxLength(value));
	}
}

interface RichEditBoxTextChangingEventArgs : Windows.UI.Xaml.Controls.IRichEditBoxTextChangingEventArgs, Windows.UI.Xaml.Controls.IRichEditBoxTextChangingEventArgs2
{
extern(Windows):
	final bool IsContentChanging()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichEditBoxTextChangingEventArgs2).get_IsContentChanging(&_ret));
		return _ret;
	}
}

interface RichTextBlock : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IRichTextBlock, Windows.UI.Xaml.Controls.IRichTextBlock2, Windows.UI.Xaml.Controls.IRichTextBlock3, Windows.UI.Xaml.Controls.IRichTextBlock4
{
extern(Windows):
	final double FontSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_FontSize(&_ret));
		return _ret;
	}
	final void FontSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_FontSize(value));
	}
	final Windows.UI.Xaml.Media.FontFamily FontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_FontFamily(&_ret));
		return _ret;
	}
	final void FontFamily(Windows.UI.Xaml.Media.FontFamily value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_FontFamily(value));
	}
	final Windows.UI.Text.FontWeight FontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_FontWeight(&_ret));
		return _ret;
	}
	final void FontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_FontWeight(value));
	}
	final Windows.UI.Text.FontStyle FontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_FontStyle(&_ret));
		return _ret;
	}
	final void FontStyle(Windows.UI.Text.FontStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_FontStyle(value));
	}
	final Windows.UI.Text.FontStretch FontStretch()
	{
		Windows.UI.Text.FontStretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_FontStretch(&_ret));
		return _ret;
	}
	final void FontStretch(Windows.UI.Text.FontStretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_FontStretch(value));
	}
	final Windows.UI.Xaml.Media.Brush Foreground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_Foreground(&_ret));
		return _ret;
	}
	final void Foreground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_Foreground(value));
	}
	final Windows.UI.Xaml.TextWrapping TextWrapping()
	{
		Windows.UI.Xaml.TextWrapping _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_TextWrapping(&_ret));
		return _ret;
	}
	final void TextWrapping(Windows.UI.Xaml.TextWrapping value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_TextWrapping(value));
	}
	final Windows.UI.Xaml.TextTrimming TextTrimming()
	{
		Windows.UI.Xaml.TextTrimming _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_TextTrimming(&_ret));
		return _ret;
	}
	final void TextTrimming(Windows.UI.Xaml.TextTrimming value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_TextTrimming(value));
	}
	final Windows.UI.Xaml.TextAlignment TextAlignment()
	{
		Windows.UI.Xaml.TextAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_TextAlignment(&_ret));
		return _ret;
	}
	final void TextAlignment(Windows.UI.Xaml.TextAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_TextAlignment(value));
	}
	final Windows.UI.Xaml.Documents.BlockCollection Blocks()
	{
		Windows.UI.Xaml.Documents.BlockCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_Blocks(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness Padding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_Padding(value));
	}
	final double LineHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_LineHeight(&_ret));
		return _ret;
	}
	final void LineHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_LineHeight(value));
	}
	final Windows.UI.Xaml.LineStackingStrategy LineStackingStrategy()
	{
		Windows.UI.Xaml.LineStackingStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_LineStackingStrategy(&_ret));
		return _ret;
	}
	final void LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_LineStackingStrategy(value));
	}
	final INT32 CharacterSpacing()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_CharacterSpacing(&_ret));
		return _ret;
	}
	final void CharacterSpacing(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_CharacterSpacing(value));
	}
	final Windows.UI.Xaml.Controls.RichTextBlockOverflow OverflowContentTarget()
	{
		Windows.UI.Xaml.Controls.RichTextBlockOverflow _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_OverflowContentTarget(&_ret));
		return _ret;
	}
	final void OverflowContentTarget(Windows.UI.Xaml.Controls.RichTextBlockOverflow value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_OverflowContentTarget(value));
	}
	final bool IsTextSelectionEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_IsTextSelectionEnabled(&_ret));
		return _ret;
	}
	final void IsTextSelectionEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_IsTextSelectionEnabled(value));
	}
	final bool HasOverflowContent()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_HasOverflowContent(&_ret));
		return _ret;
	}
	final HSTRING SelectedText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_SelectedText(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer ContentStart()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_ContentStart(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer ContentEnd()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_ContentEnd(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer SelectionStart()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_SelectionStart(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer SelectionEnd()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_SelectionEnd(&_ret));
		return _ret;
	}
	final double BaselineOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_BaselineOffset(&_ret));
		return _ret;
	}
	final void removeSelectionChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SelectionChanged(token));
	}
	final void removeContextMenuOpening(EventRegistrationToken token)
	{
		Debug.OK(remove_ContextMenuOpening(token));
	}
	final void SelectAll()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).abi_SelectAll());
	}
	final void Select(Windows.UI.Xaml.Documents.TextPointer start, Windows.UI.Xaml.Documents.TextPointer end)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).abi_Select(start, end));
	}
	final Windows.UI.Xaml.Documents.TextPointer GetPositionFromPoint(Windows.Foundation.Point point)
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).abi_GetPositionFromPoint(point, &_ret));
		return _ret;
	}
	final bool Focus(Windows.UI.Xaml.FocusState value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).abi_Focus(value, &_ret));
		return _ret;
	}
	final double TextIndent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).get_TextIndent(&_ret));
		return _ret;
	}
	final void TextIndent(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock).set_TextIndent(value));
	}
	final INT32 MaxLines()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).get_MaxLines(&_ret));
		return _ret;
	}
	final void MaxLines(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).set_MaxLines(value));
	}
	final Windows.UI.Xaml.TextLineBounds TextLineBounds()
	{
		Windows.UI.Xaml.TextLineBounds _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).get_TextLineBounds(&_ret));
		return _ret;
	}
	final void TextLineBounds(Windows.UI.Xaml.TextLineBounds value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).set_TextLineBounds(value));
	}
	final Windows.UI.Xaml.Media.SolidColorBrush SelectionHighlightColor()
	{
		Windows.UI.Xaml.Media.SolidColorBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).get_SelectionHighlightColor(&_ret));
		return _ret;
	}
	final void SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).set_SelectionHighlightColor(value));
	}
	final Windows.UI.Xaml.OpticalMarginAlignment OpticalMarginAlignment()
	{
		Windows.UI.Xaml.OpticalMarginAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).get_OpticalMarginAlignment(&_ret));
		return _ret;
	}
	final void OpticalMarginAlignment(Windows.UI.Xaml.OpticalMarginAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).set_OpticalMarginAlignment(value));
	}
	final bool IsColorFontEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).get_IsColorFontEnabled(&_ret));
		return _ret;
	}
	final void IsColorFontEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).set_IsColorFontEnabled(value));
	}
	final Windows.UI.Xaml.TextReadingOrder TextReadingOrder()
	{
		Windows.UI.Xaml.TextReadingOrder _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).get_TextReadingOrder(&_ret));
		return _ret;
	}
	final void TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock2).set_TextReadingOrder(value));
	}
	final bool IsTextScaleFactorEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock3).get_IsTextScaleFactorEnabled(&_ret));
		return _ret;
	}
	final void IsTextScaleFactorEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock3).set_IsTextScaleFactorEnabled(value));
	}
	final Windows.UI.Text.TextDecorations TextDecorations()
	{
		Windows.UI.Text.TextDecorations _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock4).get_TextDecorations(&_ret));
		return _ret;
	}
	final void TextDecorations(Windows.UI.Text.TextDecorations value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlock4).set_TextDecorations(value));
	}
}

interface RichTextBlockOverflow : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IRichTextBlockOverflow, Windows.UI.Xaml.Controls.IRichTextBlockOverflow2
{
extern(Windows):
	final Windows.UI.Xaml.Controls.RichTextBlockOverflow OverflowContentTarget()
	{
		Windows.UI.Xaml.Controls.RichTextBlockOverflow _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).get_OverflowContentTarget(&_ret));
		return _ret;
	}
	final void OverflowContentTarget(Windows.UI.Xaml.Controls.RichTextBlockOverflow value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).set_OverflowContentTarget(value));
	}
	final Windows.UI.Xaml.Thickness Padding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).set_Padding(value));
	}
	final Windows.UI.Xaml.Controls.RichTextBlock ContentSource()
	{
		Windows.UI.Xaml.Controls.RichTextBlock _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).get_ContentSource(&_ret));
		return _ret;
	}
	final bool HasOverflowContent()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).get_HasOverflowContent(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer ContentStart()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).get_ContentStart(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer ContentEnd()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).get_ContentEnd(&_ret));
		return _ret;
	}
	final double BaselineOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).get_BaselineOffset(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer GetPositionFromPoint(Windows.Foundation.Point point)
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).abi_GetPositionFromPoint(point, &_ret));
		return _ret;
	}
	final bool Focus(Windows.UI.Xaml.FocusState value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow).abi_Focus(value, &_ret));
		return _ret;
	}
	final INT32 MaxLines()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow2).get_MaxLines(&_ret));
		return _ret;
	}
	final void MaxLines(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRichTextBlockOverflow2).set_MaxLines(value));
	}
}

interface RowDefinition : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.IRowDefinition
{
extern(Windows):
	final Windows.UI.Xaml.GridLength Height()
	{
		Windows.UI.Xaml.GridLength _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRowDefinition).get_Height(&_ret));
		return _ret;
	}
	final void Height(Windows.UI.Xaml.GridLength value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRowDefinition).set_Height(value));
	}
	final double MaxHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRowDefinition).get_MaxHeight(&_ret));
		return _ret;
	}
	final void MaxHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRowDefinition).set_MaxHeight(value));
	}
	final double MinHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRowDefinition).get_MinHeight(&_ret));
		return _ret;
	}
	final void MinHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRowDefinition).set_MinHeight(value));
	}
	final double ActualHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IRowDefinition).get_ActualHeight(&_ret));
		return _ret;
	}
}

interface RowDefinitionCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Controls.RowDefinition)
{
extern(Windows):
	final Windows.UI.Xaml.Controls.RowDefinition GetAt(uint index)
	{
		Windows.UI.Xaml.Controls.RowDefinition _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Controls.RowDefinition)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Controls.RowDefinition value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Controls.RowDefinition item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Controls.RowDefinition item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Controls.RowDefinition item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Controls.RowDefinition* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Controls.RowDefinition* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.RowDefinition)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Controls.RowDefinition)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Controls.RowDefinition)).abi_First(out_first));
	}
}

interface ScrollContentPresenter : Windows.UI.Xaml.Controls.ContentPresenter, Windows.UI.Xaml.Controls.IScrollContentPresenter
{
extern(Windows):
	final bool CanVerticallyScroll()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).get_CanVerticallyScroll(&_ret));
		return _ret;
	}
	final void CanVerticallyScroll(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).set_CanVerticallyScroll(value));
	}
	final bool CanHorizontallyScroll()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).get_CanHorizontallyScroll(&_ret));
		return _ret;
	}
	final void CanHorizontallyScroll(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).set_CanHorizontallyScroll(value));
	}
	final double ExtentWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).get_ExtentWidth(&_ret));
		return _ret;
	}
	final double ExtentHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).get_ExtentHeight(&_ret));
		return _ret;
	}
	final double ViewportWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).get_ViewportWidth(&_ret));
		return _ret;
	}
	final double ViewportHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).get_ViewportHeight(&_ret));
		return _ret;
	}
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).get_VerticalOffset(&_ret));
		return _ret;
	}
	final IInspectable ScrollOwner()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).get_ScrollOwner(&_ret));
		return _ret;
	}
	final void ScrollOwner(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).set_ScrollOwner(value));
	}
	final void LineUp()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_LineUp());
	}
	final void LineDown()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_LineDown());
	}
	final void LineLeft()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_LineLeft());
	}
	final void LineRight()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_LineRight());
	}
	final void PageUp()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_PageUp());
	}
	final void PageDown()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_PageDown());
	}
	final void PageLeft()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_PageLeft());
	}
	final void PageRight()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_PageRight());
	}
	final void MouseWheelUp()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_MouseWheelUp());
	}
	final void MouseWheelDown()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_MouseWheelDown());
	}
	final void MouseWheelLeft()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_MouseWheelLeft());
	}
	final void MouseWheelRight()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_MouseWheelRight());
	}
	final void SetHorizontalOffset(double offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_SetHorizontalOffset(offset));
	}
	final void SetVerticalOffset(double offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_SetVerticalOffset(offset));
	}
	final Windows.Foundation.Rect MakeVisible(Windows.UI.Xaml.UIElement visual, Windows.Foundation.Rect rectangle)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollContentPresenter).abi_MakeVisible(visual, rectangle, &_ret));
		return _ret;
	}
}

interface ScrollViewer : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.IScrollViewer, Windows.UI.Xaml.Controls.IScrollViewer2, Windows.UI.Xaml.Controls.IScrollViewer3
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ScrollBarVisibility HorizontalScrollBarVisibility()
	{
		Windows.UI.Xaml.Controls.ScrollBarVisibility _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_HorizontalScrollBarVisibility(&_ret));
		return _ret;
	}
	final void HorizontalScrollBarVisibility(Windows.UI.Xaml.Controls.ScrollBarVisibility value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_HorizontalScrollBarVisibility(value));
	}
	final Windows.UI.Xaml.Controls.ScrollBarVisibility VerticalScrollBarVisibility()
	{
		Windows.UI.Xaml.Controls.ScrollBarVisibility _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_VerticalScrollBarVisibility(&_ret));
		return _ret;
	}
	final void VerticalScrollBarVisibility(Windows.UI.Xaml.Controls.ScrollBarVisibility value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_VerticalScrollBarVisibility(value));
	}
	final bool IsHorizontalRailEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_IsHorizontalRailEnabled(&_ret));
		return _ret;
	}
	final void IsHorizontalRailEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_IsHorizontalRailEnabled(value));
	}
	final bool IsVerticalRailEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_IsVerticalRailEnabled(&_ret));
		return _ret;
	}
	final void IsVerticalRailEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_IsVerticalRailEnabled(value));
	}
	final bool IsHorizontalScrollChainingEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_IsHorizontalScrollChainingEnabled(&_ret));
		return _ret;
	}
	final void IsHorizontalScrollChainingEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_IsHorizontalScrollChainingEnabled(value));
	}
	final bool IsVerticalScrollChainingEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_IsVerticalScrollChainingEnabled(&_ret));
		return _ret;
	}
	final void IsVerticalScrollChainingEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_IsVerticalScrollChainingEnabled(value));
	}
	final bool IsZoomChainingEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_IsZoomChainingEnabled(&_ret));
		return _ret;
	}
	final void IsZoomChainingEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_IsZoomChainingEnabled(value));
	}
	final bool IsScrollInertiaEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_IsScrollInertiaEnabled(&_ret));
		return _ret;
	}
	final void IsScrollInertiaEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_IsScrollInertiaEnabled(value));
	}
	final bool IsZoomInertiaEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_IsZoomInertiaEnabled(&_ret));
		return _ret;
	}
	final void IsZoomInertiaEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_IsZoomInertiaEnabled(value));
	}
	final Windows.UI.Xaml.Controls.ScrollMode HorizontalScrollMode()
	{
		Windows.UI.Xaml.Controls.ScrollMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_HorizontalScrollMode(&_ret));
		return _ret;
	}
	final void HorizontalScrollMode(Windows.UI.Xaml.Controls.ScrollMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_HorizontalScrollMode(value));
	}
	final Windows.UI.Xaml.Controls.ScrollMode VerticalScrollMode()
	{
		Windows.UI.Xaml.Controls.ScrollMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_VerticalScrollMode(&_ret));
		return _ret;
	}
	final void VerticalScrollMode(Windows.UI.Xaml.Controls.ScrollMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_VerticalScrollMode(value));
	}
	final Windows.UI.Xaml.Controls.ZoomMode ZoomMode()
	{
		Windows.UI.Xaml.Controls.ZoomMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ZoomMode(&_ret));
		return _ret;
	}
	final void ZoomMode(Windows.UI.Xaml.Controls.ZoomMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_ZoomMode(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment HorizontalSnapPointsAlignment()
	{
		Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_HorizontalSnapPointsAlignment(&_ret));
		return _ret;
	}
	final void HorizontalSnapPointsAlignment(Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_HorizontalSnapPointsAlignment(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment VerticalSnapPointsAlignment()
	{
		Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_VerticalSnapPointsAlignment(&_ret));
		return _ret;
	}
	final void VerticalSnapPointsAlignment(Windows.UI.Xaml.Controls.Primitives.SnapPointsAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_VerticalSnapPointsAlignment(value));
	}
	final Windows.UI.Xaml.Controls.SnapPointsType HorizontalSnapPointsType()
	{
		Windows.UI.Xaml.Controls.SnapPointsType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_HorizontalSnapPointsType(&_ret));
		return _ret;
	}
	final void HorizontalSnapPointsType(Windows.UI.Xaml.Controls.SnapPointsType value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_HorizontalSnapPointsType(value));
	}
	final Windows.UI.Xaml.Controls.SnapPointsType VerticalSnapPointsType()
	{
		Windows.UI.Xaml.Controls.SnapPointsType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_VerticalSnapPointsType(&_ret));
		return _ret;
	}
	final void VerticalSnapPointsType(Windows.UI.Xaml.Controls.SnapPointsType value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_VerticalSnapPointsType(value));
	}
	final Windows.UI.Xaml.Controls.SnapPointsType ZoomSnapPointsType()
	{
		Windows.UI.Xaml.Controls.SnapPointsType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ZoomSnapPointsType(&_ret));
		return _ret;
	}
	final void ZoomSnapPointsType(Windows.UI.Xaml.Controls.SnapPointsType value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_ZoomSnapPointsType(value));
	}
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final double ViewportWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ViewportWidth(&_ret));
		return _ret;
	}
	final double ScrollableWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ScrollableWidth(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Visibility ComputedHorizontalScrollBarVisibility()
	{
		Windows.UI.Xaml.Visibility _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ComputedHorizontalScrollBarVisibility(&_ret));
		return _ret;
	}
	final double ExtentWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ExtentWidth(&_ret));
		return _ret;
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_VerticalOffset(&_ret));
		return _ret;
	}
	final double ViewportHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ViewportHeight(&_ret));
		return _ret;
	}
	final double ScrollableHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ScrollableHeight(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Visibility ComputedVerticalScrollBarVisibility()
	{
		Windows.UI.Xaml.Visibility _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ComputedVerticalScrollBarVisibility(&_ret));
		return _ret;
	}
	final double ExtentHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ExtentHeight(&_ret));
		return _ret;
	}
	final FLOAT MinZoomFactor()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_MinZoomFactor(&_ret));
		return _ret;
	}
	final void MinZoomFactor(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_MinZoomFactor(value));
	}
	final FLOAT MaxZoomFactor()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_MaxZoomFactor(&_ret));
		return _ret;
	}
	final void MaxZoomFactor(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_MaxZoomFactor(value));
	}
	final FLOAT ZoomFactor()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ZoomFactor(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(FLOAT) ZoomSnapPoints()
	{
		Windows.Foundation.Collections.IVector!(FLOAT) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_ZoomSnapPoints(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnViewChanged(void delegate(IInspectable, Windows.UI.Xaml.Controls.ScrollViewerViewChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ViewChanged(event!(Windows.Foundation.EventHandler!(Windows.UI.Xaml.Controls.ScrollViewerViewChangedEventArgs), IInspectable, Windows.UI.Xaml.Controls.ScrollViewerViewChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeViewChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_ViewChanged(token));
	}
	deprecated("ScrollToHorizontalOffset may be altered or unavailable for releases after Windows 8.1. Instead, use ChangeView.")
	final void ScrollToHorizontalOffset(double offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).abi_ScrollToHorizontalOffset(offset));
	}
	deprecated("ScrollToVerticalOffset may be altered or unavailable for releases after Windows 8.1. Instead, use ChangeView.")
	final void ScrollToVerticalOffset(double offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).abi_ScrollToVerticalOffset(offset));
	}
	deprecated("ZoomToFactor may be altered or unavailable for releases after Windows 8.1. Instead, use ChangeView.")
	final void ZoomToFactor(FLOAT factor)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).abi_ZoomToFactor(factor));
	}
	final void InvalidateScrollInfo()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).abi_InvalidateScrollInfo());
	}
	final bool IsDeferredScrollingEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_IsDeferredScrollingEnabled(&_ret));
		return _ret;
	}
	final void IsDeferredScrollingEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_IsDeferredScrollingEnabled(value));
	}
	final bool BringIntoViewOnFocusChange()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).get_BringIntoViewOnFocusChange(&_ret));
		return _ret;
	}
	final void BringIntoViewOnFocusChange(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer).set_BringIntoViewOnFocusChange(value));
	}
	final Windows.UI.Xaml.UIElement TopLeftHeader()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer2).get_TopLeftHeader(&_ret));
		return _ret;
	}
	final void TopLeftHeader(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer2).set_TopLeftHeader(value));
	}
	final Windows.UI.Xaml.UIElement LeftHeader()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer2).get_LeftHeader(&_ret));
		return _ret;
	}
	final void LeftHeader(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer2).set_LeftHeader(value));
	}
	final Windows.UI.Xaml.UIElement TopHeader()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer2).get_TopHeader(&_ret));
		return _ret;
	}
	final void TopHeader(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer2).set_TopHeader(value));
	}
	final EventRegistrationToken OnViewChanging(void delegate(IInspectable, Windows.UI.Xaml.Controls.ScrollViewerViewChangingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ViewChanging(event!(Windows.Foundation.EventHandler!(Windows.UI.Xaml.Controls.ScrollViewerViewChangingEventArgs), IInspectable, Windows.UI.Xaml.Controls.ScrollViewerViewChangingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeViewChanging(EventRegistrationToken token)
	{
		Debug.OK(remove_ViewChanging(token));
	}
	final bool ChangeView(Windows.Foundation.IReference!(double) horizontalOffset, Windows.Foundation.IReference!(double) verticalOffset, Windows.Foundation.IReference!(FLOAT) zoomFactor)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer2).abi_ChangeView(horizontalOffset, verticalOffset, zoomFactor, &_ret));
		return _ret;
	}
	final bool ChangeViewWithOptionalAnimation(Windows.Foundation.IReference!(double) horizontalOffset, Windows.Foundation.IReference!(double) verticalOffset, Windows.Foundation.IReference!(FLOAT) zoomFactor, bool disableAnimation)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewer2).abi_ChangeViewWithOptionalAnimation(horizontalOffset, verticalOffset, zoomFactor, disableAnimation, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnDirectManipulationStarted(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DirectManipulationStarted(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDirectManipulationStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_DirectManipulationStarted(token));
	}
	final EventRegistrationToken OnDirectManipulationCompleted(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DirectManipulationCompleted(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDirectManipulationCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_DirectManipulationCompleted(token));
	}
}

interface ScrollViewerView : Windows.UI.Xaml.Controls.IScrollViewerView
{
extern(Windows):
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewerView).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewerView).get_VerticalOffset(&_ret));
		return _ret;
	}
	final FLOAT ZoomFactor()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewerView).get_ZoomFactor(&_ret));
		return _ret;
	}
}

interface ScrollViewerViewChangedEventArgs : Windows.UI.Xaml.Controls.IScrollViewerViewChangedEventArgs
{
extern(Windows):
	final bool IsIntermediate()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewerViewChangedEventArgs).get_IsIntermediate(&_ret));
		return _ret;
	}
}

interface ScrollViewerViewChangingEventArgs : Windows.UI.Xaml.Controls.IScrollViewerViewChangingEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ScrollViewerView NextView()
	{
		Windows.UI.Xaml.Controls.ScrollViewerView _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewerViewChangingEventArgs).get_NextView(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.ScrollViewerView FinalView()
	{
		Windows.UI.Xaml.Controls.ScrollViewerView _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewerViewChangingEventArgs).get_FinalView(&_ret));
		return _ret;
	}
	final bool IsInertial()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IScrollViewerViewChangingEventArgs).get_IsInertial(&_ret));
		return _ret;
	}
}

interface SearchBox : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.ISearchBox
{
extern(Windows):
	final bool SearchHistoryEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).get_SearchHistoryEnabled(&_ret));
		return _ret;
	}
	final void SearchHistoryEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).set_SearchHistoryEnabled(value));
	}
	final HSTRING SearchHistoryContext()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).get_SearchHistoryContext(&_ret));
		return _ret;
	}
	final void SearchHistoryContext(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).set_SearchHistoryContext(value));
	}
	final HSTRING PlaceholderText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).get_PlaceholderText(&_ret));
		return _ret;
	}
	final void PlaceholderText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).set_PlaceholderText(value));
	}
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).get_QueryText(&_ret));
		return _ret;
	}
	final void QueryText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).set_QueryText(value));
	}
	final bool FocusOnKeyboardInput()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).get_FocusOnKeyboardInput(&_ret));
		return _ret;
	}
	final void FocusOnKeyboardInput(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).set_FocusOnKeyboardInput(value));
	}
	final bool ChooseSuggestionOnEnter()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).get_ChooseSuggestionOnEnter(&_ret));
		return _ret;
	}
	final void ChooseSuggestionOnEnter(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).set_ChooseSuggestionOnEnter(value));
	}
	final EventRegistrationToken OnQueryChanged(void delegate(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxQueryChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_QueryChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxQueryChangedEventArgs), Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxQueryChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeQueryChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_QueryChanged(token));
	}
	final EventRegistrationToken OnSuggestionsRequested(void delegate(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxSuggestionsRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SuggestionsRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxSuggestionsRequestedEventArgs), Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxSuggestionsRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSuggestionsRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_SuggestionsRequested(token));
	}
	final EventRegistrationToken OnQuerySubmitted(void delegate(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxQuerySubmittedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_QuerySubmitted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxQuerySubmittedEventArgs), Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxQuerySubmittedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeQuerySubmitted(EventRegistrationToken token)
	{
		Debug.OK(remove_QuerySubmitted(token));
	}
	final EventRegistrationToken OnResultSuggestionChosen(void delegate(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxResultSuggestionChosenEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ResultSuggestionChosen(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxResultSuggestionChosenEventArgs), Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.Controls.SearchBoxResultSuggestionChosenEventArgs)(fn), &tok));
		return tok;
	}
	final void removeResultSuggestionChosen(EventRegistrationToken token)
	{
		Debug.OK(remove_ResultSuggestionChosen(token));
	}
	final EventRegistrationToken OnPrepareForFocusOnKeyboardInput(void delegate(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PrepareForFocusOnKeyboardInput(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.RoutedEventArgs), Windows.UI.Xaml.Controls.SearchBox, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePrepareForFocusOnKeyboardInput(EventRegistrationToken token)
	{
		Debug.OK(remove_PrepareForFocusOnKeyboardInput(token));
	}
	final void SetLocalContentSuggestionSettings(Windows.ApplicationModel.Search.LocalContentSuggestionSettings settings)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBox).abi_SetLocalContentSuggestionSettings(settings));
	}
}

interface SearchBoxQueryChangedEventArgs : Windows.UI.Xaml.Controls.ISearchBoxQueryChangedEventArgs
{
extern(Windows):
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxQueryChangedEventArgs).get_QueryText(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxQueryChangedEventArgs).get_Language(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Search.SearchQueryLinguisticDetails LinguisticDetails()
	{
		Windows.ApplicationModel.Search.SearchQueryLinguisticDetails _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxQueryChangedEventArgs).get_LinguisticDetails(&_ret));
		return _ret;
	}
}

interface SearchBoxQuerySubmittedEventArgs : Windows.UI.Xaml.Controls.ISearchBoxQuerySubmittedEventArgs
{
extern(Windows):
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxQuerySubmittedEventArgs).get_QueryText(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxQuerySubmittedEventArgs).get_Language(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Search.SearchQueryLinguisticDetails LinguisticDetails()
	{
		Windows.ApplicationModel.Search.SearchQueryLinguisticDetails _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxQuerySubmittedEventArgs).get_LinguisticDetails(&_ret));
		return _ret;
	}
	final Windows.System.VirtualKeyModifiers KeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxQuerySubmittedEventArgs).get_KeyModifiers(&_ret));
		return _ret;
	}
}

interface SearchBoxResultSuggestionChosenEventArgs : Windows.UI.Xaml.Controls.ISearchBoxResultSuggestionChosenEventArgs
{
extern(Windows):
	final HSTRING Tag()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxResultSuggestionChosenEventArgs).get_Tag(&_ret));
		return _ret;
	}
	final Windows.System.VirtualKeyModifiers KeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxResultSuggestionChosenEventArgs).get_KeyModifiers(&_ret));
		return _ret;
	}
}

interface SearchBoxSuggestionsRequestedEventArgs : Windows.UI.Xaml.Controls.ISearchBoxSuggestionsRequestedEventArgs
{
extern(Windows):
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxSuggestionsRequestedEventArgs).get_QueryText(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxSuggestionsRequestedEventArgs).get_Language(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Search.SearchQueryLinguisticDetails LinguisticDetails()
	{
		Windows.ApplicationModel.Search.SearchQueryLinguisticDetails _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxSuggestionsRequestedEventArgs).get_LinguisticDetails(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Search.SearchSuggestionsRequest Request()
	{
		Windows.ApplicationModel.Search.SearchSuggestionsRequest _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISearchBoxSuggestionsRequestedEventArgs).get_Request(&_ret));
		return _ret;
	}
}

interface SectionsInViewChangedEventArgs : Windows.UI.Xaml.Controls.ISectionsInViewChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection) AddedSections()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISectionsInViewChangedEventArgs).get_AddedSections(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection) RemovedSections()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.HubSection) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISectionsInViewChangedEventArgs).get_RemovedSections(&_ret));
		return _ret;
	}
}

interface SelectionChangedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.ISelectionChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(IInspectable) AddedItems()
	{
		Windows.Foundation.Collections.IVector!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISelectionChangedEventArgs).get_AddedItems(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(IInspectable) RemovedItems()
	{
		Windows.Foundation.Collections.IVector!(IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISelectionChangedEventArgs).get_RemovedItems(&_ret));
		return _ret;
	}
}

interface SemanticZoom : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.ISemanticZoom
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ISemanticZoomInformation ZoomedInView()
	{
		Windows.UI.Xaml.Controls.ISemanticZoomInformation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).get_ZoomedInView(&_ret));
		return _ret;
	}
	final void ZoomedInView(Windows.UI.Xaml.Controls.ISemanticZoomInformation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).set_ZoomedInView(value));
	}
	final Windows.UI.Xaml.Controls.ISemanticZoomInformation ZoomedOutView()
	{
		Windows.UI.Xaml.Controls.ISemanticZoomInformation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).get_ZoomedOutView(&_ret));
		return _ret;
	}
	final void ZoomedOutView(Windows.UI.Xaml.Controls.ISemanticZoomInformation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).set_ZoomedOutView(value));
	}
	final bool IsZoomedInViewActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).get_IsZoomedInViewActive(&_ret));
		return _ret;
	}
	final void IsZoomedInViewActive(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).set_IsZoomedInViewActive(value));
	}
	final bool CanChangeViews()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).get_CanChangeViews(&_ret));
		return _ret;
	}
	final void CanChangeViews(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).set_CanChangeViews(value));
	}
	final void removeViewChangeStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_ViewChangeStarted(token));
	}
	final void removeViewChangeCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_ViewChangeCompleted(token));
	}
	final void ToggleActiveView()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).abi_ToggleActiveView());
	}
	final bool IsZoomOutButtonEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).get_IsZoomOutButtonEnabled(&_ret));
		return _ret;
	}
	final void IsZoomOutButtonEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoom).set_IsZoomOutButtonEnabled(value));
	}
}

interface SemanticZoomLocation : Windows.UI.Xaml.Controls.ISemanticZoomLocation
{
extern(Windows):
	final IInspectable Item()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomLocation).get_Item(&_ret));
		return _ret;
	}
	final void Item(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomLocation).set_Item(value));
	}
	final Windows.Foundation.Rect Bounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomLocation).get_Bounds(&_ret));
		return _ret;
	}
	final void Bounds(Windows.Foundation.Rect value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomLocation).set_Bounds(value));
	}
}

interface SemanticZoomViewChangedEventArgs : Windows.UI.Xaml.Controls.ISemanticZoomViewChangedEventArgs
{
extern(Windows):
	final bool IsSourceZoomedInView()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomViewChangedEventArgs).get_IsSourceZoomedInView(&_ret));
		return _ret;
	}
	final void IsSourceZoomedInView(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomViewChangedEventArgs).set_IsSourceZoomedInView(value));
	}
	final Windows.UI.Xaml.Controls.SemanticZoomLocation SourceItem()
	{
		Windows.UI.Xaml.Controls.SemanticZoomLocation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomViewChangedEventArgs).get_SourceItem(&_ret));
		return _ret;
	}
	final void SourceItem(Windows.UI.Xaml.Controls.SemanticZoomLocation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomViewChangedEventArgs).set_SourceItem(value));
	}
	final Windows.UI.Xaml.Controls.SemanticZoomLocation DestinationItem()
	{
		Windows.UI.Xaml.Controls.SemanticZoomLocation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomViewChangedEventArgs).get_DestinationItem(&_ret));
		return _ret;
	}
	final void DestinationItem(Windows.UI.Xaml.Controls.SemanticZoomLocation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISemanticZoomViewChangedEventArgs).set_DestinationItem(value));
	}
}

interface SettingsFlyout : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.ISettingsFlyout
{
extern(Windows):
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).set_Title(value));
	}
	final Windows.UI.Xaml.Media.Brush HeaderBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).get_HeaderBackground(&_ret));
		return _ret;
	}
	final void HeaderBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).set_HeaderBackground(value));
	}
	final Windows.UI.Xaml.Media.Brush HeaderForeground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).get_HeaderForeground(&_ret));
		return _ret;
	}
	final void HeaderForeground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).set_HeaderForeground(value));
	}
	final Windows.UI.Xaml.Media.ImageSource IconSource()
	{
		Windows.UI.Xaml.Media.ImageSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).get_IconSource(&_ret));
		return _ret;
	}
	final void IconSource(Windows.UI.Xaml.Media.ImageSource value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).set_IconSource(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.SettingsFlyoutTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.SettingsFlyoutTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).get_TemplateSettings(&_ret));
		return _ret;
	}
	final void removeBackClick(EventRegistrationToken token)
	{
		Debug.OK(remove_BackClick(token));
	}
	final void Show()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).abi_Show());
	}
	final void ShowIndependent()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).abi_ShowIndependent());
	}
	final void Hide()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISettingsFlyout).abi_Hide());
	}
}

interface Slider : Windows.UI.Xaml.Controls.Primitives.RangeBase, Windows.UI.Xaml.Controls.ISlider, Windows.UI.Xaml.Controls.ISlider2
{
extern(Windows):
	final double IntermediateValue()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).get_IntermediateValue(&_ret));
		return _ret;
	}
	final void IntermediateValue(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).set_IntermediateValue(value));
	}
	final double StepFrequency()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).get_StepFrequency(&_ret));
		return _ret;
	}
	final void StepFrequency(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).set_StepFrequency(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.SliderSnapsTo SnapsTo()
	{
		Windows.UI.Xaml.Controls.Primitives.SliderSnapsTo _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).get_SnapsTo(&_ret));
		return _ret;
	}
	final void SnapsTo(Windows.UI.Xaml.Controls.Primitives.SliderSnapsTo value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).set_SnapsTo(value));
	}
	final double TickFrequency()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).get_TickFrequency(&_ret));
		return _ret;
	}
	final void TickFrequency(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).set_TickFrequency(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.TickPlacement TickPlacement()
	{
		Windows.UI.Xaml.Controls.Primitives.TickPlacement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).get_TickPlacement(&_ret));
		return _ret;
	}
	final void TickPlacement(Windows.UI.Xaml.Controls.Primitives.TickPlacement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).set_TickPlacement(value));
	}
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).set_Orientation(value));
	}
	final bool IsDirectionReversed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).get_IsDirectionReversed(&_ret));
		return _ret;
	}
	final void IsDirectionReversed(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).set_IsDirectionReversed(value));
	}
	final bool IsThumbToolTipEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).get_IsThumbToolTipEnabled(&_ret));
		return _ret;
	}
	final void IsThumbToolTipEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).set_IsThumbToolTipEnabled(value));
	}
	final Windows.UI.Xaml.Data.IValueConverter ThumbToolTipValueConverter()
	{
		Windows.UI.Xaml.Data.IValueConverter _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).get_ThumbToolTipValueConverter(&_ret));
		return _ret;
	}
	final void ThumbToolTipValueConverter(Windows.UI.Xaml.Data.IValueConverter value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider).set_ThumbToolTipValueConverter(value));
	}
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider2).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider2).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider2).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISlider2).set_HeaderTemplate(value));
	}
}

interface SplitView : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.ISplitView, Windows.UI.Xaml.Controls.ISplitView2
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Content()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).set_Content(value));
	}
	final Windows.UI.Xaml.UIElement Pane()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).get_Pane(&_ret));
		return _ret;
	}
	final void Pane(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).set_Pane(value));
	}
	final bool IsPaneOpen()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).get_IsPaneOpen(&_ret));
		return _ret;
	}
	final void IsPaneOpen(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).set_IsPaneOpen(value));
	}
	final double OpenPaneLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).get_OpenPaneLength(&_ret));
		return _ret;
	}
	final void OpenPaneLength(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).set_OpenPaneLength(value));
	}
	final double CompactPaneLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).get_CompactPaneLength(&_ret));
		return _ret;
	}
	final void CompactPaneLength(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).set_CompactPaneLength(value));
	}
	final Windows.UI.Xaml.Controls.SplitViewPanePlacement PanePlacement()
	{
		Windows.UI.Xaml.Controls.SplitViewPanePlacement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).get_PanePlacement(&_ret));
		return _ret;
	}
	final void PanePlacement(Windows.UI.Xaml.Controls.SplitViewPanePlacement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).set_PanePlacement(value));
	}
	final Windows.UI.Xaml.Controls.SplitViewDisplayMode DisplayMode()
	{
		Windows.UI.Xaml.Controls.SplitViewDisplayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).get_DisplayMode(&_ret));
		return _ret;
	}
	final void DisplayMode(Windows.UI.Xaml.Controls.SplitViewDisplayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).set_DisplayMode(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.SplitViewTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.SplitViewTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).get_TemplateSettings(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Brush PaneBackground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).get_PaneBackground(&_ret));
		return _ret;
	}
	final void PaneBackground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView).set_PaneBackground(value));
	}
	final EventRegistrationToken OnPaneClosing(void delegate(Windows.UI.Xaml.Controls.SplitView, Windows.UI.Xaml.Controls.SplitViewPaneClosingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PaneClosing(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SplitView, Windows.UI.Xaml.Controls.SplitViewPaneClosingEventArgs), Windows.UI.Xaml.Controls.SplitView, Windows.UI.Xaml.Controls.SplitViewPaneClosingEventArgs)(fn), &tok));
		return tok;
	}
	final void removePaneClosing(EventRegistrationToken token)
	{
		Debug.OK(remove_PaneClosing(token));
	}
	final EventRegistrationToken OnPaneClosed(void delegate(Windows.UI.Xaml.Controls.SplitView, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PaneClosed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SplitView, IInspectable), Windows.UI.Xaml.Controls.SplitView, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePaneClosed(EventRegistrationToken token)
	{
		Debug.OK(remove_PaneClosed(token));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView2).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitView2).set_LightDismissOverlayMode(value));
	}
}

interface SplitViewPaneClosingEventArgs : Windows.UI.Xaml.Controls.ISplitViewPaneClosingEventArgs
{
extern(Windows):
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitViewPaneClosingEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISplitViewPaneClosingEventArgs).set_Cancel(value));
	}
}

interface StackPanel : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.IStackPanel, Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo, Windows.UI.Xaml.Controls.IStackPanel2, Windows.UI.Xaml.Controls.IInsertionPanel
{
extern(Windows):
	final bool AreScrollSnapPointsRegular()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel).get_AreScrollSnapPointsRegular(&_ret));
		return _ret;
	}
	final void AreScrollSnapPointsRegular(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel).set_AreScrollSnapPointsRegular(value));
	}
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel).set_Orientation(value));
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
	final EventRegistrationToken OnHorizontalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HorizontalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeHorizontalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_HorizontalSnapPointsChanged(token));
	}
	final EventRegistrationToken OnVerticalSnapPointsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_VerticalSnapPointsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVerticalSnapPointsChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_VerticalSnapPointsChanged(token));
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
	final Windows.UI.Xaml.Media.Brush BorderBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel2).get_BorderBrush(&_ret));
		return _ret;
	}
	final void BorderBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel2).set_BorderBrush(value));
	}
	final Windows.UI.Xaml.Thickness BorderThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel2).get_BorderThickness(&_ret));
		return _ret;
	}
	final void BorderThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel2).set_BorderThickness(value));
	}
	final Windows.UI.Xaml.CornerRadius CornerRadius()
	{
		Windows.UI.Xaml.CornerRadius _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel2).get_CornerRadius(&_ret));
		return _ret;
	}
	final void CornerRadius(Windows.UI.Xaml.CornerRadius value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel2).set_CornerRadius(value));
	}
	final Windows.UI.Xaml.Thickness Padding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel2).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStackPanel2).set_Padding(value));
	}
	final void GetInsertionIndexes(Windows.Foundation.Point position, INT32* out_first, INT32* out_second)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IInsertionPanel).abi_GetInsertionIndexes(position, out_first, out_second));
	}
}

interface StyleSelector : Windows.UI.Xaml.Controls.IStyleSelector, Windows.UI.Xaml.Controls.IStyleSelectorOverrides
{
extern(Windows):
	final Windows.UI.Xaml.Style SelectStyle(IInspectable item, Windows.UI.Xaml.DependencyObject container)
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStyleSelector).abi_SelectStyle(item, container, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Style SelectStyleCore(IInspectable item, Windows.UI.Xaml.DependencyObject container)
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IStyleSelectorOverrides).abi_SelectStyleCore(item, container, &_ret));
		return _ret;
	}
}

interface SwapChainBackgroundPanel : Windows.UI.Xaml.Controls.Grid, Windows.UI.Xaml.Controls.ISwapChainBackgroundPanel, Windows.UI.Xaml.Controls.ISwapChainBackgroundPanel2
{
extern(Windows):
	final Windows.UI.Core.CoreIndependentInputSource CreateCoreIndependentInputSource(Windows.UI.Core.CoreInputDeviceTypes deviceTypes)
	{
		Windows.UI.Core.CoreIndependentInputSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISwapChainBackgroundPanel2).abi_CreateCoreIndependentInputSource(deviceTypes, &_ret));
		return _ret;
	}
}

interface SwapChainPanel : Windows.UI.Xaml.Controls.Grid, Windows.UI.Xaml.Controls.ISwapChainPanel
{
extern(Windows):
	final FLOAT CompositionScaleX()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISwapChainPanel).get_CompositionScaleX(&_ret));
		return _ret;
	}
	final FLOAT CompositionScaleY()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISwapChainPanel).get_CompositionScaleY(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCompositionScaleChanged(void delegate(Windows.UI.Xaml.Controls.SwapChainPanel, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CompositionScaleChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.SwapChainPanel, IInspectable), Windows.UI.Xaml.Controls.SwapChainPanel, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeCompositionScaleChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CompositionScaleChanged(token));
	}
	final Windows.UI.Core.CoreIndependentInputSource CreateCoreIndependentInputSource(Windows.UI.Core.CoreInputDeviceTypes deviceTypes)
	{
		Windows.UI.Core.CoreIndependentInputSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISwapChainPanel).abi_CreateCoreIndependentInputSource(deviceTypes, &_ret));
		return _ret;
	}
}

interface SymbolIcon : Windows.UI.Xaml.Controls.IconElement, Windows.UI.Xaml.Controls.ISymbolIcon
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Symbol Symbol()
	{
		Windows.UI.Xaml.Controls.Symbol _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISymbolIcon).get_Symbol(&_ret));
		return _ret;
	}
	final void Symbol(Windows.UI.Xaml.Controls.Symbol value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ISymbolIcon).set_Symbol(value));
	}
}

interface TextBlock : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.ITextBlock, Windows.UI.Xaml.Controls.ITextBlock2, Windows.UI.Xaml.Controls.ITextBlock3, Windows.UI.Xaml.Controls.ITextBlock4, Windows.UI.Xaml.Controls.ITextBlock5
{
extern(Windows):
	final double FontSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_FontSize(&_ret));
		return _ret;
	}
	final void FontSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_FontSize(value));
	}
	final Windows.UI.Xaml.Media.FontFamily FontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_FontFamily(&_ret));
		return _ret;
	}
	final void FontFamily(Windows.UI.Xaml.Media.FontFamily value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_FontFamily(value));
	}
	final Windows.UI.Text.FontWeight FontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_FontWeight(&_ret));
		return _ret;
	}
	final void FontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_FontWeight(value));
	}
	final Windows.UI.Text.FontStyle FontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_FontStyle(&_ret));
		return _ret;
	}
	final void FontStyle(Windows.UI.Text.FontStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_FontStyle(value));
	}
	final Windows.UI.Text.FontStretch FontStretch()
	{
		Windows.UI.Text.FontStretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_FontStretch(&_ret));
		return _ret;
	}
	final void FontStretch(Windows.UI.Text.FontStretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_FontStretch(value));
	}
	final INT32 CharacterSpacing()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_CharacterSpacing(&_ret));
		return _ret;
	}
	final void CharacterSpacing(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_CharacterSpacing(value));
	}
	final Windows.UI.Xaml.Media.Brush Foreground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_Foreground(&_ret));
		return _ret;
	}
	final void Foreground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_Foreground(value));
	}
	final Windows.UI.Xaml.TextWrapping TextWrapping()
	{
		Windows.UI.Xaml.TextWrapping _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_TextWrapping(&_ret));
		return _ret;
	}
	final void TextWrapping(Windows.UI.Xaml.TextWrapping value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_TextWrapping(value));
	}
	final Windows.UI.Xaml.TextTrimming TextTrimming()
	{
		Windows.UI.Xaml.TextTrimming _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_TextTrimming(&_ret));
		return _ret;
	}
	final void TextTrimming(Windows.UI.Xaml.TextTrimming value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_TextTrimming(value));
	}
	final Windows.UI.Xaml.TextAlignment TextAlignment()
	{
		Windows.UI.Xaml.TextAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_TextAlignment(&_ret));
		return _ret;
	}
	final void TextAlignment(Windows.UI.Xaml.TextAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_TextAlignment(value));
	}
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_Text(value));
	}
	final Windows.UI.Xaml.Documents.InlineCollection Inlines()
	{
		Windows.UI.Xaml.Documents.InlineCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_Inlines(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Thickness Padding()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_Padding(&_ret));
		return _ret;
	}
	final void Padding(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_Padding(value));
	}
	final double LineHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_LineHeight(&_ret));
		return _ret;
	}
	final void LineHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_LineHeight(value));
	}
	final Windows.UI.Xaml.LineStackingStrategy LineStackingStrategy()
	{
		Windows.UI.Xaml.LineStackingStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_LineStackingStrategy(&_ret));
		return _ret;
	}
	final void LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_LineStackingStrategy(value));
	}
	final bool IsTextSelectionEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_IsTextSelectionEnabled(&_ret));
		return _ret;
	}
	final void IsTextSelectionEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).set_IsTextSelectionEnabled(value));
	}
	final HSTRING SelectedText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_SelectedText(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer ContentStart()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_ContentStart(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer ContentEnd()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_ContentEnd(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer SelectionStart()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_SelectionStart(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer SelectionEnd()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_SelectionEnd(&_ret));
		return _ret;
	}
	final double BaselineOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).get_BaselineOffset(&_ret));
		return _ret;
	}
	final void removeSelectionChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SelectionChanged(token));
	}
	final void removeContextMenuOpening(EventRegistrationToken token)
	{
		Debug.OK(remove_ContextMenuOpening(token));
	}
	final void SelectAll()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).abi_SelectAll());
	}
	final void Select(Windows.UI.Xaml.Documents.TextPointer start, Windows.UI.Xaml.Documents.TextPointer end)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).abi_Select(start, end));
	}
	final bool Focus(Windows.UI.Xaml.FocusState value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock).abi_Focus(value, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.SolidColorBrush SelectionHighlightColor()
	{
		Windows.UI.Xaml.Media.SolidColorBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).get_SelectionHighlightColor(&_ret));
		return _ret;
	}
	final void SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).set_SelectionHighlightColor(value));
	}
	final INT32 MaxLines()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).get_MaxLines(&_ret));
		return _ret;
	}
	final void MaxLines(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).set_MaxLines(value));
	}
	final Windows.UI.Xaml.TextLineBounds TextLineBounds()
	{
		Windows.UI.Xaml.TextLineBounds _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).get_TextLineBounds(&_ret));
		return _ret;
	}
	final void TextLineBounds(Windows.UI.Xaml.TextLineBounds value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).set_TextLineBounds(value));
	}
	final Windows.UI.Xaml.OpticalMarginAlignment OpticalMarginAlignment()
	{
		Windows.UI.Xaml.OpticalMarginAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).get_OpticalMarginAlignment(&_ret));
		return _ret;
	}
	final void OpticalMarginAlignment(Windows.UI.Xaml.OpticalMarginAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).set_OpticalMarginAlignment(value));
	}
	final bool IsColorFontEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).get_IsColorFontEnabled(&_ret));
		return _ret;
	}
	final void IsColorFontEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).set_IsColorFontEnabled(value));
	}
	final Windows.UI.Xaml.TextReadingOrder TextReadingOrder()
	{
		Windows.UI.Xaml.TextReadingOrder _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).get_TextReadingOrder(&_ret));
		return _ret;
	}
	final void TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock2).set_TextReadingOrder(value));
	}
	final bool IsTextScaleFactorEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock3).get_IsTextScaleFactorEnabled(&_ret));
		return _ret;
	}
	final void IsTextScaleFactorEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock3).set_IsTextScaleFactorEnabled(value));
	}
	final Windows.UI.Composition.CompositionBrush GetAlphaMask()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock4).abi_GetAlphaMask(&_ret));
		return _ret;
	}
	final Windows.UI.Text.TextDecorations TextDecorations()
	{
		Windows.UI.Text.TextDecorations _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock5).get_TextDecorations(&_ret));
		return _ret;
	}
	final void TextDecorations(Windows.UI.Text.TextDecorations value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBlock5).set_TextDecorations(value));
	}
}

interface TextBox : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.ITextBox, Windows.UI.Xaml.Controls.ITextBox2, Windows.UI.Xaml.Controls.ITextBox3, Windows.UI.Xaml.Controls.ITextBox4, Windows.UI.Xaml.Controls.ITextBox5
{
extern(Windows):
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_Text(value));
	}
	final HSTRING SelectedText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_SelectedText(&_ret));
		return _ret;
	}
	final void SelectedText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_SelectedText(value));
	}
	final INT32 SelectionLength()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_SelectionLength(&_ret));
		return _ret;
	}
	final void SelectionLength(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_SelectionLength(value));
	}
	final INT32 SelectionStart()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_SelectionStart(&_ret));
		return _ret;
	}
	final void SelectionStart(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_SelectionStart(value));
	}
	final INT32 MaxLength()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_MaxLength(&_ret));
		return _ret;
	}
	final void MaxLength(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_MaxLength(value));
	}
	final bool IsReadOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_IsReadOnly(&_ret));
		return _ret;
	}
	final void IsReadOnly(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_IsReadOnly(value));
	}
	final bool AcceptsReturn()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_AcceptsReturn(&_ret));
		return _ret;
	}
	final void AcceptsReturn(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_AcceptsReturn(value));
	}
	final Windows.UI.Xaml.TextAlignment TextAlignment()
	{
		Windows.UI.Xaml.TextAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_TextAlignment(&_ret));
		return _ret;
	}
	final void TextAlignment(Windows.UI.Xaml.TextAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_TextAlignment(value));
	}
	final Windows.UI.Xaml.TextWrapping TextWrapping()
	{
		Windows.UI.Xaml.TextWrapping _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_TextWrapping(&_ret));
		return _ret;
	}
	final void TextWrapping(Windows.UI.Xaml.TextWrapping value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_TextWrapping(value));
	}
	final bool IsSpellCheckEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_IsSpellCheckEnabled(&_ret));
		return _ret;
	}
	final void IsSpellCheckEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_IsSpellCheckEnabled(value));
	}
	final bool IsTextPredictionEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_IsTextPredictionEnabled(&_ret));
		return _ret;
	}
	final void IsTextPredictionEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_IsTextPredictionEnabled(value));
	}
	final Windows.UI.Xaml.Input.InputScope InputScope()
	{
		Windows.UI.Xaml.Input.InputScope _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).get_InputScope(&_ret));
		return _ret;
	}
	final void InputScope(Windows.UI.Xaml.Input.InputScope value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).set_InputScope(value));
	}
	final void removeTextChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_TextChanged(token));
	}
	final void removeSelectionChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SelectionChanged(token));
	}
	final void removeContextMenuOpening(EventRegistrationToken token)
	{
		Debug.OK(remove_ContextMenuOpening(token));
	}
	final void Select(INT32 start, INT32 length)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).abi_Select(start, length));
	}
	final void SelectAll()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).abi_SelectAll());
	}
	final Windows.Foundation.Rect GetRectFromCharacterIndex(INT32 charIndex, bool trailingEdge)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox).abi_GetRectFromCharacterIndex(charIndex, trailingEdge, &_ret));
		return _ret;
	}
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).set_HeaderTemplate(value));
	}
	final HSTRING PlaceholderText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).get_PlaceholderText(&_ret));
		return _ret;
	}
	final void PlaceholderText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).set_PlaceholderText(value));
	}
	final Windows.UI.Xaml.Media.SolidColorBrush SelectionHighlightColor()
	{
		Windows.UI.Xaml.Media.SolidColorBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).get_SelectionHighlightColor(&_ret));
		return _ret;
	}
	final void SelectionHighlightColor(Windows.UI.Xaml.Media.SolidColorBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).set_SelectionHighlightColor(value));
	}
	final bool PreventKeyboardDisplayOnProgrammaticFocus()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).get_PreventKeyboardDisplayOnProgrammaticFocus(&_ret));
		return _ret;
	}
	final void PreventKeyboardDisplayOnProgrammaticFocus(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).set_PreventKeyboardDisplayOnProgrammaticFocus(value));
	}
	final bool IsColorFontEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).get_IsColorFontEnabled(&_ret));
		return _ret;
	}
	final void IsColorFontEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox2).set_IsColorFontEnabled(value));
	}
	final void removePaste(EventRegistrationToken token)
	{
		Debug.OK(remove_Paste(token));
	}
	final EventRegistrationToken OnTextCompositionStarted(void delegate(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TextCompositionStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs), Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextCompositionStarted(EventRegistrationToken token)
	{
		Debug.OK(remove_TextCompositionStarted(token));
	}
	final EventRegistrationToken OnTextCompositionChanged(void delegate(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TextCompositionChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs), Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextCompositionChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_TextCompositionChanged(token));
	}
	final EventRegistrationToken OnTextCompositionEnded(void delegate(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TextCompositionEnded(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs), Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextCompositionEndedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextCompositionEnded(EventRegistrationToken token)
	{
		Debug.OK(remove_TextCompositionEnded(token));
	}
	final Windows.UI.Xaml.TextReadingOrder TextReadingOrder()
	{
		Windows.UI.Xaml.TextReadingOrder _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox3).get_TextReadingOrder(&_ret));
		return _ret;
	}
	final void TextReadingOrder(Windows.UI.Xaml.TextReadingOrder value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox3).set_TextReadingOrder(value));
	}
	final Windows.UI.Xaml.Controls.CandidateWindowAlignment DesiredCandidateWindowAlignment()
	{
		Windows.UI.Xaml.Controls.CandidateWindowAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox3).get_DesiredCandidateWindowAlignment(&_ret));
		return _ret;
	}
	final void DesiredCandidateWindowAlignment(Windows.UI.Xaml.Controls.CandidateWindowAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox3).set_DesiredCandidateWindowAlignment(value));
	}
	final EventRegistrationToken OnCandidateWindowBoundsChanged(void delegate(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CandidateWindowBoundsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs), Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.CandidateWindowBoundsChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCandidateWindowBoundsChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CandidateWindowBoundsChanged(token));
	}
	final EventRegistrationToken OnTextChanging(void delegate(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextBoxTextChangingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TextChanging(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextBoxTextChangingEventArgs), Windows.UI.Xaml.Controls.TextBox, Windows.UI.Xaml.Controls.TextBoxTextChangingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTextChanging(EventRegistrationToken token)
	{
		Debug.OK(remove_TextChanging(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) GetLinguisticAlternativesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox4).abi_GetLinguisticAlternativesAsync(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.SolidColorBrush SelectionHighlightColorWhenNotFocused()
	{
		Windows.UI.Xaml.Media.SolidColorBrush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox5).get_SelectionHighlightColorWhenNotFocused(&_ret));
		return _ret;
	}
	final void SelectionHighlightColorWhenNotFocused(Windows.UI.Xaml.Media.SolidColorBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBox5).set_SelectionHighlightColorWhenNotFocused(value));
	}
}

interface TextBoxTextChangingEventArgs : Windows.UI.Xaml.Controls.ITextBoxTextChangingEventArgs, Windows.UI.Xaml.Controls.ITextBoxTextChangingEventArgs2
{
extern(Windows):
	final bool IsContentChanging()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextBoxTextChangingEventArgs2).get_IsContentChanging(&_ret));
		return _ret;
	}
}

interface TextChangedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Controls.ITextChangedEventArgs
{
}

interface TextCompositionChangedEventArgs : Windows.UI.Xaml.Controls.ITextCompositionChangedEventArgs
{
extern(Windows):
	final INT32 StartIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextCompositionChangedEventArgs).get_StartIndex(&_ret));
		return _ret;
	}
	final INT32 Length()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextCompositionChangedEventArgs).get_Length(&_ret));
		return _ret;
	}
}

interface TextCompositionEndedEventArgs : Windows.UI.Xaml.Controls.ITextCompositionEndedEventArgs
{
extern(Windows):
	final INT32 StartIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextCompositionEndedEventArgs).get_StartIndex(&_ret));
		return _ret;
	}
	final INT32 Length()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextCompositionEndedEventArgs).get_Length(&_ret));
		return _ret;
	}
}

interface TextCompositionStartedEventArgs : Windows.UI.Xaml.Controls.ITextCompositionStartedEventArgs
{
extern(Windows):
	final INT32 StartIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextCompositionStartedEventArgs).get_StartIndex(&_ret));
		return _ret;
	}
	final INT32 Length()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextCompositionStartedEventArgs).get_Length(&_ret));
		return _ret;
	}
}

interface TextControlPasteEventArgs : Windows.UI.Xaml.Controls.ITextControlPasteEventArgs
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextControlPasteEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITextControlPasteEventArgs).set_Handled(value));
	}
}

interface TimePickedEventArgs : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Controls.ITimePickedEventArgs
{
extern(Windows):
	final Windows.Foundation.TimeSpan OldTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickedEventArgs).get_OldTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan NewTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickedEventArgs).get_NewTime(&_ret));
		return _ret;
	}
}

interface TimePicker : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.ITimePicker, Windows.UI.Xaml.Controls.ITimePicker2
{
extern(Windows):
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker).set_HeaderTemplate(value));
	}
	final HSTRING ClockIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker).get_ClockIdentifier(&_ret));
		return _ret;
	}
	final void ClockIdentifier(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker).set_ClockIdentifier(value));
	}
	final INT32 MinuteIncrement()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker).get_MinuteIncrement(&_ret));
		return _ret;
	}
	final void MinuteIncrement(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker).set_MinuteIncrement(value));
	}
	final Windows.Foundation.TimeSpan Time()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker).get_Time(&_ret));
		return _ret;
	}
	final void Time(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker).set_Time(value));
	}
	final EventRegistrationToken OnTimeChanged(void delegate(IInspectable, Windows.UI.Xaml.Controls.TimePickerValueChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TimeChanged(event!(Windows.Foundation.EventHandler!(Windows.UI.Xaml.Controls.TimePickerValueChangedEventArgs), IInspectable, Windows.UI.Xaml.Controls.TimePickerValueChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTimeChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_TimeChanged(token));
	}
	final Windows.UI.Xaml.Controls.LightDismissOverlayMode LightDismissOverlayMode()
	{
		Windows.UI.Xaml.Controls.LightDismissOverlayMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker2).get_LightDismissOverlayMode(&_ret));
		return _ret;
	}
	final void LightDismissOverlayMode(Windows.UI.Xaml.Controls.LightDismissOverlayMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePicker2).set_LightDismissOverlayMode(value));
	}
}

interface TimePickerFlyout : Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase, Windows.UI.Xaml.Controls.ITimePickerFlyout
{
extern(Windows):
	final HSTRING ClockIdentifier()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickerFlyout).get_ClockIdentifier(&_ret));
		return _ret;
	}
	final void ClockIdentifier(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickerFlyout).set_ClockIdentifier(value));
	}
	final Windows.Foundation.TimeSpan Time()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickerFlyout).get_Time(&_ret));
		return _ret;
	}
	final void Time(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickerFlyout).set_Time(value));
	}
	final INT32 MinuteIncrement()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickerFlyout).get_MinuteIncrement(&_ret));
		return _ret;
	}
	final void MinuteIncrement(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickerFlyout).set_MinuteIncrement(value));
	}
	final EventRegistrationToken OnTimePicked(void delegate(Windows.UI.Xaml.Controls.TimePickerFlyout, Windows.UI.Xaml.Controls.TimePickedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_TimePicked(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.TimePickerFlyout, Windows.UI.Xaml.Controls.TimePickedEventArgs), Windows.UI.Xaml.Controls.TimePickerFlyout, Windows.UI.Xaml.Controls.TimePickedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTimePicked(EventRegistrationToken token)
	{
		Debug.OK(remove_TimePicked(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)) ShowAtAsync(Windows.UI.Xaml.FrameworkElement target)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickerFlyout).abi_ShowAtAsync(target, &_ret));
		return _ret;
	}
}

interface TimePickerFlyoutPresenter : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.ITimePickerFlyoutPresenter
{
}

interface TimePickerValueChangedEventArgs : Windows.UI.Xaml.Controls.ITimePickerValueChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.TimeSpan OldTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickerValueChangedEventArgs).get_OldTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan NewTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.ITimePickerValueChangedEventArgs).get_NewTime(&_ret));
		return _ret;
	}
}

interface ToggleMenuFlyoutItem : Windows.UI.Xaml.Controls.MenuFlyoutItem, Windows.UI.Xaml.Controls.IToggleMenuFlyoutItem
{
extern(Windows):
	final bool IsChecked()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleMenuFlyoutItem).get_IsChecked(&_ret));
		return _ret;
	}
	final void IsChecked(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleMenuFlyoutItem).set_IsChecked(value));
	}
}

interface ToggleSwitch : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IToggleSwitch, Windows.UI.Xaml.Controls.IToggleSwitchOverrides
{
extern(Windows):
	final bool IsOn()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).get_IsOn(&_ret));
		return _ret;
	}
	final void IsOn(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).set_IsOn(value));
	}
	final IInspectable Header()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).get_Header(&_ret));
		return _ret;
	}
	final void Header(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).set_Header(value));
	}
	final Windows.UI.Xaml.DataTemplate HeaderTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).get_HeaderTemplate(&_ret));
		return _ret;
	}
	final void HeaderTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).set_HeaderTemplate(value));
	}
	final IInspectable OnContent()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).get_OnContent(&_ret));
		return _ret;
	}
	final void OnContent(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).set_OnContent(value));
	}
	final Windows.UI.Xaml.DataTemplate OnContentTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).get_OnContentTemplate(&_ret));
		return _ret;
	}
	final void OnContentTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).set_OnContentTemplate(value));
	}
	final IInspectable OffContent()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).get_OffContent(&_ret));
		return _ret;
	}
	final void OffContent(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).set_OffContent(value));
	}
	final Windows.UI.Xaml.DataTemplate OffContentTemplate()
	{
		Windows.UI.Xaml.DataTemplate _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).get_OffContentTemplate(&_ret));
		return _ret;
	}
	final void OffContentTemplate(Windows.UI.Xaml.DataTemplate value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).set_OffContentTemplate(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.ToggleSwitchTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.ToggleSwitchTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitch).get_TemplateSettings(&_ret));
		return _ret;
	}
	final void removeToggled(EventRegistrationToken token)
	{
		Debug.OK(remove_Toggled(token));
	}
	final void OnToggled()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitchOverrides).abi_OnToggled());
	}
	final void OnOnContentChanged(IInspectable oldContent, IInspectable newContent)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitchOverrides).abi_OnOnContentChanged(oldContent, newContent));
	}
	final void OnOffContentChanged(IInspectable oldContent, IInspectable newContent)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitchOverrides).abi_OnOffContentChanged(oldContent, newContent));
	}
	final void OnHeaderChanged(IInspectable oldContent, IInspectable newContent)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToggleSwitchOverrides).abi_OnHeaderChanged(oldContent, newContent));
	}
}

interface ToolTip : Windows.UI.Xaml.Controls.ContentControl, Windows.UI.Xaml.Controls.IToolTip
{
extern(Windows):
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final void HorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).set_HorizontalOffset(value));
	}
	final bool IsOpen()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).get_IsOpen(&_ret));
		return _ret;
	}
	final void IsOpen(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).set_IsOpen(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.PlacementMode Placement()
	{
		Windows.UI.Xaml.Controls.Primitives.PlacementMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).get_Placement(&_ret));
		return _ret;
	}
	final void Placement(Windows.UI.Xaml.Controls.Primitives.PlacementMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).set_Placement(value));
	}
	final Windows.UI.Xaml.UIElement PlacementTarget()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).get_PlacementTarget(&_ret));
		return _ret;
	}
	final void PlacementTarget(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).set_PlacementTarget(value));
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).get_VerticalOffset(&_ret));
		return _ret;
	}
	final void VerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).set_VerticalOffset(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.ToolTipTemplateSettings TemplateSettings()
	{
		Windows.UI.Xaml.Controls.Primitives.ToolTipTemplateSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IToolTip).get_TemplateSettings(&_ret));
		return _ret;
	}
	final void removeClosed(EventRegistrationToken token)
	{
		Debug.OK(remove_Closed(token));
	}
	final void removeOpened(EventRegistrationToken token)
	{
		Debug.OK(remove_Opened(token));
	}
}

interface ToolTipService : Windows.UI.Xaml.Controls.IToolTipService
{
}

interface UIElementCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement), Windows.UI.Xaml.Controls.IUIElementCollection
{
extern(Windows):
	final Windows.UI.Xaml.UIElement GetAt(uint index)
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.UIElement)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.UIElement value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.UIElement item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.UIElement item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.UIElement item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.UIElement* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.UIElement* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.UIElement)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.UIElement)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement)).abi_First(out_first));
	}
	final void Move(UINT32 oldIndex, UINT32 newIndex)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IUIElementCollection).abi_Move(oldIndex, newIndex));
	}
}

interface UserControl : Windows.UI.Xaml.Controls.Control, Windows.UI.Xaml.Controls.IUserControl
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Content()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IUserControl).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IUserControl).set_Content(value));
	}
}

interface VariableSizedWrapGrid : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.IVariableSizedWrapGrid
{
extern(Windows):
	final double ItemHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).get_ItemHeight(&_ret));
		return _ret;
	}
	final void ItemHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).set_ItemHeight(value));
	}
	final double ItemWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).get_ItemWidth(&_ret));
		return _ret;
	}
	final void ItemWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).set_ItemWidth(value));
	}
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).set_Orientation(value));
	}
	final Windows.UI.Xaml.HorizontalAlignment HorizontalChildrenAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).get_HorizontalChildrenAlignment(&_ret));
		return _ret;
	}
	final void HorizontalChildrenAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).set_HorizontalChildrenAlignment(value));
	}
	final Windows.UI.Xaml.VerticalAlignment VerticalChildrenAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).get_VerticalChildrenAlignment(&_ret));
		return _ret;
	}
	final void VerticalChildrenAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).set_VerticalChildrenAlignment(value));
	}
	final INT32 MaximumRowsOrColumns()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).get_MaximumRowsOrColumns(&_ret));
		return _ret;
	}
	final void MaximumRowsOrColumns(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVariableSizedWrapGrid).set_MaximumRowsOrColumns(value));
	}
}

interface Viewbox : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IViewbox
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Child()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IViewbox).get_Child(&_ret));
		return _ret;
	}
	final void Child(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IViewbox).set_Child(value));
	}
	final Windows.UI.Xaml.Media.Stretch Stretch()
	{
		Windows.UI.Xaml.Media.Stretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IViewbox).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Xaml.Media.Stretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IViewbox).set_Stretch(value));
	}
	final Windows.UI.Xaml.Controls.StretchDirection StretchDirection()
	{
		Windows.UI.Xaml.Controls.StretchDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IViewbox).get_StretchDirection(&_ret));
		return _ret;
	}
	final void StretchDirection(Windows.UI.Xaml.Controls.StretchDirection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IViewbox).set_StretchDirection(value));
	}
}

interface VirtualizingPanel : Windows.UI.Xaml.Controls.Panel, Windows.UI.Xaml.Controls.IVirtualizingPanel, Windows.UI.Xaml.Controls.IVirtualizingPanelOverrides, Windows.UI.Xaml.Controls.IVirtualizingPanelProtected
{
extern(Windows):
	final Windows.UI.Xaml.Controls.ItemContainerGenerator ItemContainerGenerator()
	{
		Windows.UI.Xaml.Controls.ItemContainerGenerator _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingPanel).get_ItemContainerGenerator(&_ret));
		return _ret;
	}
	final void OnItemsChanged(IInspectable sender, Windows.UI.Xaml.Controls.Primitives.ItemsChangedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingPanelOverrides).abi_OnItemsChanged(sender, args));
	}
	final void OnClearChildren()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingPanelOverrides).abi_OnClearChildren());
	}
	final void BringIndexIntoView(INT32 index)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingPanelOverrides).abi_BringIndexIntoView(index));
	}
	final void AddInternalChild(Windows.UI.Xaml.UIElement child)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingPanelProtected).abi_AddInternalChild(child));
	}
	final void InsertInternalChild(INT32 index, Windows.UI.Xaml.UIElement child)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingPanelProtected).abi_InsertInternalChild(index, child));
	}
	final void RemoveInternalChildRange(INT32 index, INT32 range)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingPanelProtected).abi_RemoveInternalChildRange(index, range));
	}
}

interface VirtualizingStackPanel : Windows.UI.Xaml.Controls.Primitives.OrientedVirtualizingPanel, Windows.UI.Xaml.Controls.IVirtualizingStackPanel, Windows.UI.Xaml.Controls.IVirtualizingStackPanelOverrides
{
extern(Windows):
	final bool AreScrollSnapPointsRegular()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingStackPanel).get_AreScrollSnapPointsRegular(&_ret));
		return _ret;
	}
	final void AreScrollSnapPointsRegular(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingStackPanel).set_AreScrollSnapPointsRegular(value));
	}
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingStackPanel).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingStackPanel).set_Orientation(value));
	}
	final void removeCleanUpVirtualizedItemEvent(EventRegistrationToken token)
	{
		Debug.OK(remove_CleanUpVirtualizedItemEvent(token));
	}
	final void OnCleanUpVirtualizedItem(Windows.UI.Xaml.Controls.CleanUpVirtualizedItemEventArgs e)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IVirtualizingStackPanelOverrides).abi_OnCleanUpVirtualizedItem(e));
	}
}

interface WebView : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Controls.IWebView, Windows.UI.Xaml.Controls.IWebView2, Windows.UI.Xaml.Controls.IWebView3, Windows.UI.Xaml.Controls.IWebView4, Windows.UI.Xaml.Controls.IWebView5
{
extern(Windows):
	final Windows.Foundation.Uri Source()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView).set_Source(value));
	}
	deprecated("AllowedScriptNotifyUris is unavailable for releases beginning with Windows 8.1. Instead, list URIs under ApplicationContentUriRules in the package manifest. For more info, see the AllowedScriptNotifyUris documentation.")
	final Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri) AllowedScriptNotifyUris()
	{
		Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView).get_AllowedScriptNotifyUris(&_ret));
		return _ret;
	}
	deprecated("AllowedScriptNotifyUris is unavailable for releases beginning with Windows 8.1. Instead, list URIs under ApplicationContentUriRules in the package manifest. For more info, see the AllowedScriptNotifyUris documentation.")
	final void AllowedScriptNotifyUris(Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView).set_AllowedScriptNotifyUris(value));
	}
	deprecated("Use CaptureSelectedContentToDataPackageAsync instead of DataTransferPackage. For more info, see MSDN.")
	final Windows.ApplicationModel.DataTransfer.DataPackage DataTransferPackage()
	{
		Windows.ApplicationModel.DataTransfer.DataPackage _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView).get_DataTransferPackage(&_ret));
		return _ret;
	}
	deprecated("LoadCompleted may be altered or unavailable for releases after Windows 8.1. Instead, use NavigationCompleted.")
	final void removeLoadCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_LoadCompleted(token));
	}
	final void removeScriptNotify(EventRegistrationToken token)
	{
		Debug.OK(remove_ScriptNotify(token));
	}
	deprecated("NavigationFailed may be altered or unavailable for releases after Windows 8.1. Instead, use NavigationCompleted.")
	final void removeNavigationFailed(EventRegistrationToken token)
	{
		Debug.OK(remove_NavigationFailed(token));
	}
	deprecated("Use InvokeScriptAsync instead of InvokeScript. For more info, see MSDN.")
	final HSTRING InvokeScript(HSTRING scriptName, UINT32 __argumentsSize, HSTRING* arguments)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView).abi_InvokeScript(scriptName, __argumentsSize, arguments, &_ret));
		return _ret;
	}
	final void Navigate(Windows.Foundation.Uri source)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView).abi_Navigate(source));
	}
	final void NavigateToString(HSTRING text)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView).abi_NavigateToString(text));
	}
	final bool CanGoBack()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).get_CanGoBack(&_ret));
		return _ret;
	}
	final bool CanGoForward()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).get_CanGoForward(&_ret));
		return _ret;
	}
	final HSTRING DocumentTitle()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).get_DocumentTitle(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnNavigationStarting(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_NavigationStarting(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNavigationStarting(EventRegistrationToken token)
	{
		Debug.OK(remove_NavigationStarting(token));
	}
	final EventRegistrationToken OnContentLoading(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ContentLoading(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeContentLoading(EventRegistrationToken token)
	{
		Debug.OK(remove_ContentLoading(token));
	}
	final EventRegistrationToken OnDOMContentLoaded(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DOMContentLoaded(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDOMContentLoaded(EventRegistrationToken token)
	{
		Debug.OK(remove_DOMContentLoaded(token));
	}
	final void GoForward()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_GoForward());
	}
	final void GoBack()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_GoBack());
	}
	final void Refresh()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_Refresh());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_Stop());
	}
	final Windows.Foundation.IAsyncAction CapturePreviewToStreamAsync(Windows.Storage.Streams.IRandomAccessStream stream)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_CapturePreviewToStreamAsync(stream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) InvokeScriptAsync(HSTRING scriptName, Windows.Foundation.Collections.IIterable!(HSTRING) arguments)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_InvokeScriptAsync(scriptName, arguments, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackage) CaptureSelectedContentToDataPackageAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackage) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_CaptureSelectedContentToDataPackageAsync(&_ret));
		return _ret;
	}
	final void NavigateToLocalStreamUri(Windows.Foundation.Uri source, Windows.Web.IUriToStreamResolver streamResolver)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_NavigateToLocalStreamUri(source, streamResolver));
	}
	final Windows.Foundation.Uri BuildLocalStreamUri(HSTRING contentIdentifier, HSTRING relativePath)
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_BuildLocalStreamUri(contentIdentifier, relativePath, &_ret));
		return _ret;
	}
	final Windows.UI.Color DefaultBackgroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).get_DefaultBackgroundColor(&_ret));
		return _ret;
	}
	final void DefaultBackgroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).set_DefaultBackgroundColor(value));
	}
	final EventRegistrationToken OnNavigationCompleted(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_NavigationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNavigationCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_NavigationCompleted(token));
	}
	final EventRegistrationToken OnFrameNavigationStarting(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FrameNavigationStarting(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationStartingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFrameNavigationStarting(EventRegistrationToken token)
	{
		Debug.OK(remove_FrameNavigationStarting(token));
	}
	final EventRegistrationToken OnFrameContentLoading(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FrameContentLoading(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewContentLoadingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFrameContentLoading(EventRegistrationToken token)
	{
		Debug.OK(remove_FrameContentLoading(token));
	}
	final EventRegistrationToken OnFrameDOMContentLoaded(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FrameDOMContentLoaded(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewDOMContentLoadedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFrameDOMContentLoaded(EventRegistrationToken token)
	{
		Debug.OK(remove_FrameDOMContentLoaded(token));
	}
	final EventRegistrationToken OnFrameNavigationCompleted(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FrameNavigationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNavigationCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFrameNavigationCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_FrameNavigationCompleted(token));
	}
	final EventRegistrationToken OnLongRunningScriptDetected(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewLongRunningScriptDetectedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_LongRunningScriptDetected(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewLongRunningScriptDetectedEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewLongRunningScriptDetectedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeLongRunningScriptDetected(EventRegistrationToken token)
	{
		Debug.OK(remove_LongRunningScriptDetected(token));
	}
	final EventRegistrationToken OnUnsafeContentWarningDisplaying(void delegate(Windows.UI.Xaml.Controls.WebView, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UnsafeContentWarningDisplaying(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, IInspectable), Windows.UI.Xaml.Controls.WebView, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeUnsafeContentWarningDisplaying(EventRegistrationToken token)
	{
		Debug.OK(remove_UnsafeContentWarningDisplaying(token));
	}
	final EventRegistrationToken OnUnviewableContentIdentified(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewUnviewableContentIdentifiedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UnviewableContentIdentified(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewUnviewableContentIdentifiedEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewUnviewableContentIdentifiedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUnviewableContentIdentified(EventRegistrationToken token)
	{
		Debug.OK(remove_UnviewableContentIdentified(token));
	}
	final void NavigateWithHttpRequestMessage(Windows.Web.Http.HttpRequestMessage requestMessage)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_NavigateWithHttpRequestMessage(requestMessage));
	}
	final bool Focus(Windows.UI.Xaml.FocusState value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView2).abi_Focus(value, &_ret));
		return _ret;
	}
	final bool ContainsFullScreenElement()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView3).get_ContainsFullScreenElement(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnContainsFullScreenElementChanged(void delegate(Windows.UI.Xaml.Controls.WebView, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ContainsFullScreenElementChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, IInspectable), Windows.UI.Xaml.Controls.WebView, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeContainsFullScreenElementChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_ContainsFullScreenElementChanged(token));
	}
	final Windows.UI.Xaml.Controls.WebViewExecutionMode ExecutionMode()
	{
		Windows.UI.Xaml.Controls.WebViewExecutionMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView4).get_ExecutionMode(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.WebViewDeferredPermissionRequest) DeferredPermissionRequests()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Controls.WebViewDeferredPermissionRequest) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView4).get_DeferredPermissionRequests(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.WebViewSettings Settings()
	{
		Windows.UI.Xaml.Controls.WebViewSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView4).get_Settings(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnUnsupportedUriSchemeIdentified(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewUnsupportedUriSchemeIdentifiedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UnsupportedUriSchemeIdentified(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewUnsupportedUriSchemeIdentifiedEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewUnsupportedUriSchemeIdentifiedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUnsupportedUriSchemeIdentified(EventRegistrationToken token)
	{
		Debug.OK(remove_UnsupportedUriSchemeIdentified(token));
	}
	final EventRegistrationToken OnNewWindowRequested(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNewWindowRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_NewWindowRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNewWindowRequestedEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewNewWindowRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNewWindowRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_NewWindowRequested(token));
	}
	final EventRegistrationToken OnPermissionRequested(void delegate(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewPermissionRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PermissionRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewPermissionRequestedEventArgs), Windows.UI.Xaml.Controls.WebView, Windows.UI.Xaml.Controls.WebViewPermissionRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePermissionRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_PermissionRequested(token));
	}
	final void AddWebAllowedObject(HSTRING name, IInspectable pObject)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView4).abi_AddWebAllowedObject(name, pObject));
	}
	final Windows.UI.Xaml.Controls.WebViewDeferredPermissionRequest DeferredPermissionRequestById(UINT32 id)
	{
		Windows.UI.Xaml.Controls.WebViewDeferredPermissionRequest _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView4).abi_DeferredPermissionRequestById(id, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DependencyObject XYFocusLeft()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView5).get_XYFocusLeft(&_ret));
		return _ret;
	}
	final void XYFocusLeft(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView5).set_XYFocusLeft(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusRight()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView5).get_XYFocusRight(&_ret));
		return _ret;
	}
	final void XYFocusRight(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView5).set_XYFocusRight(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusUp()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView5).get_XYFocusUp(&_ret));
		return _ret;
	}
	final void XYFocusUp(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView5).set_XYFocusUp(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusDown()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView5).get_XYFocusDown(&_ret));
		return _ret;
	}
	final void XYFocusDown(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebView5).set_XYFocusDown(value));
	}
}

interface WebViewBrush : Windows.UI.Xaml.Media.TileBrush, Windows.UI.Xaml.Controls.IWebViewBrush
{
extern(Windows):
	final HSTRING SourceName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewBrush).get_SourceName(&_ret));
		return _ret;
	}
	final void SourceName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewBrush).set_SourceName(value));
	}
	final void Redraw()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewBrush).abi_Redraw());
	}
	final void SetSource(Windows.UI.Xaml.Controls.WebView source)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewBrush).abi_SetSource(source));
	}
}

interface WebViewContentLoadingEventArgs : Windows.UI.Xaml.Controls.IWebViewContentLoadingEventArgs
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewContentLoadingEventArgs).get_Uri(&_ret));
		return _ret;
	}
}

interface WebViewDOMContentLoadedEventArgs : Windows.UI.Xaml.Controls.IWebViewDOMContentLoadedEventArgs
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewDOMContentLoadedEventArgs).get_Uri(&_ret));
		return _ret;
	}
}

interface WebViewDeferredPermissionRequest : Windows.UI.Xaml.Controls.IWebViewDeferredPermissionRequest
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewDeferredPermissionRequest).get_Uri(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.WebViewPermissionType PermissionType()
	{
		Windows.UI.Xaml.Controls.WebViewPermissionType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewDeferredPermissionRequest).get_PermissionType(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewDeferredPermissionRequest).get_Id(&_ret));
		return _ret;
	}
	final void Allow()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewDeferredPermissionRequest).abi_Allow());
	}
	final void Deny()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewDeferredPermissionRequest).abi_Deny());
	}
}

interface WebViewLongRunningScriptDetectedEventArgs : Windows.UI.Xaml.Controls.IWebViewLongRunningScriptDetectedEventArgs
{
extern(Windows):
	final Windows.Foundation.TimeSpan ExecutionTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewLongRunningScriptDetectedEventArgs).get_ExecutionTime(&_ret));
		return _ret;
	}
	final bool StopPageScriptExecution()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewLongRunningScriptDetectedEventArgs).get_StopPageScriptExecution(&_ret));
		return _ret;
	}
	final void StopPageScriptExecution(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewLongRunningScriptDetectedEventArgs).set_StopPageScriptExecution(value));
	}
}

interface WebViewNavigationCompletedEventArgs : Windows.UI.Xaml.Controls.IWebViewNavigationCompletedEventArgs
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNavigationCompletedEventArgs).get_Uri(&_ret));
		return _ret;
	}
	final bool IsSuccess()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNavigationCompletedEventArgs).get_IsSuccess(&_ret));
		return _ret;
	}
	final Windows.Web.WebErrorStatus WebErrorStatus()
	{
		Windows.Web.WebErrorStatus _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNavigationCompletedEventArgs).get_WebErrorStatus(&_ret));
		return _ret;
	}
}

interface WebViewNavigationFailedEventArgs : Windows.UI.Xaml.Controls.IWebViewNavigationFailedEventArgs
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNavigationFailedEventArgs).get_Uri(&_ret));
		return _ret;
	}
	final Windows.Web.WebErrorStatus WebErrorStatus()
	{
		Windows.Web.WebErrorStatus _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNavigationFailedEventArgs).get_WebErrorStatus(&_ret));
		return _ret;
	}
}

interface WebViewNavigationStartingEventArgs : Windows.UI.Xaml.Controls.IWebViewNavigationStartingEventArgs
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNavigationStartingEventArgs).get_Uri(&_ret));
		return _ret;
	}
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNavigationStartingEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNavigationStartingEventArgs).set_Cancel(value));
	}
}

interface WebViewNewWindowRequestedEventArgs : Windows.UI.Xaml.Controls.IWebViewNewWindowRequestedEventArgs
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNewWindowRequestedEventArgs).get_Uri(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Referrer()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNewWindowRequestedEventArgs).get_Referrer(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNewWindowRequestedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewNewWindowRequestedEventArgs).set_Handled(value));
	}
}

interface WebViewPermissionRequest : Windows.UI.Xaml.Controls.IWebViewPermissionRequest
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewPermissionRequest).get_Uri(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.WebViewPermissionType PermissionType()
	{
		Windows.UI.Xaml.Controls.WebViewPermissionType _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewPermissionRequest).get_PermissionType(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewPermissionRequest).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.WebViewPermissionState State()
	{
		Windows.UI.Xaml.Controls.WebViewPermissionState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewPermissionRequest).get_State(&_ret));
		return _ret;
	}
	final void Defer()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewPermissionRequest).abi_Defer());
	}
	final void Allow()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewPermissionRequest).abi_Allow());
	}
	final void Deny()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewPermissionRequest).abi_Deny());
	}
}

interface WebViewPermissionRequestedEventArgs : Windows.UI.Xaml.Controls.IWebViewPermissionRequestedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Controls.WebViewPermissionRequest PermissionRequest()
	{
		Windows.UI.Xaml.Controls.WebViewPermissionRequest _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewPermissionRequestedEventArgs).get_PermissionRequest(&_ret));
		return _ret;
	}
}

interface WebViewSettings : Windows.UI.Xaml.Controls.IWebViewSettings
{
extern(Windows):
	final bool IsJavaScriptEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewSettings).get_IsJavaScriptEnabled(&_ret));
		return _ret;
	}
	final void IsJavaScriptEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewSettings).set_IsJavaScriptEnabled(value));
	}
	final bool IsIndexedDBEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewSettings).get_IsIndexedDBEnabled(&_ret));
		return _ret;
	}
	final void IsIndexedDBEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewSettings).set_IsIndexedDBEnabled(value));
	}
}

interface WebViewUnsupportedUriSchemeIdentifiedEventArgs : Windows.UI.Xaml.Controls.IWebViewUnsupportedUriSchemeIdentifiedEventArgs
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewUnsupportedUriSchemeIdentifiedEventArgs).get_Uri(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewUnsupportedUriSchemeIdentifiedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewUnsupportedUriSchemeIdentifiedEventArgs).set_Handled(value));
	}
}

interface WebViewUnviewableContentIdentifiedEventArgs : Windows.UI.Xaml.Controls.IWebViewUnviewableContentIdentifiedEventArgs, Windows.UI.Xaml.Controls.IWebViewUnviewableContentIdentifiedEventArgs2
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewUnviewableContentIdentifiedEventArgs).get_Uri(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Referrer()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewUnviewableContentIdentifiedEventArgs).get_Referrer(&_ret));
		return _ret;
	}
	final HSTRING MediaType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWebViewUnviewableContentIdentifiedEventArgs2).get_MediaType(&_ret));
		return _ret;
	}
}

interface WrapGrid : Windows.UI.Xaml.Controls.Primitives.OrientedVirtualizingPanel, Windows.UI.Xaml.Controls.IWrapGrid
{
extern(Windows):
	final double ItemWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).get_ItemWidth(&_ret));
		return _ret;
	}
	final void ItemWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).set_ItemWidth(value));
	}
	final double ItemHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).get_ItemHeight(&_ret));
		return _ret;
	}
	final void ItemHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).set_ItemHeight(value));
	}
	final Windows.UI.Xaml.Controls.Orientation Orientation()
	{
		Windows.UI.Xaml.Controls.Orientation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.UI.Xaml.Controls.Orientation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).set_Orientation(value));
	}
	final Windows.UI.Xaml.HorizontalAlignment HorizontalChildrenAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).get_HorizontalChildrenAlignment(&_ret));
		return _ret;
	}
	final void HorizontalChildrenAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).set_HorizontalChildrenAlignment(value));
	}
	final Windows.UI.Xaml.VerticalAlignment VerticalChildrenAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).get_VerticalChildrenAlignment(&_ret));
		return _ret;
	}
	final void VerticalChildrenAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).set_VerticalChildrenAlignment(value));
	}
	final INT32 MaximumRowsOrColumns()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).get_MaximumRowsOrColumns(&_ret));
		return _ret;
	}
	final void MaximumRowsOrColumns(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Controls.IWrapGrid).set_MaximumRowsOrColumns(value));
	}
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