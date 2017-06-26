module Windows.UI.Xaml.Documents;

import dwinrt;

@uuid("4bce0016-dd47-4350-8cb0-e171600ac896")
@WinrtFactory("Windows.UI.Xaml.Documents.Block")
interface IBlock : IInspectable
{
extern(Windows):
	HRESULT get_TextAlignment(Windows.UI.Xaml.TextAlignment* return_value);
	HRESULT set_TextAlignment(Windows.UI.Xaml.TextAlignment value);
	HRESULT get_LineHeight(double* return_value);
	HRESULT set_LineHeight(double value);
	HRESULT get_LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy* return_value);
	HRESULT set_LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy value);
	HRESULT get_Margin(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Margin(Windows.UI.Xaml.Thickness value);
}

@uuid("07110532-4f59-4f3b-9ce5-25784c430507")
@WinrtFactory("Windows.UI.Xaml.Documents.Block")
interface IBlockFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Documents.Block* return_instance);
}

@uuid("f86a8c34-8d18-4c53-aebd-91e610a5e010")
@WinrtFactory("Windows.UI.Xaml.Documents.Block")
interface IBlockStatics : IInspectable
{
extern(Windows):
	HRESULT get_TextAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LineHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LineStackingStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MarginProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ade73784-1b59-4da4-bb23-0f20e885b4bf")
@WinrtFactory("Windows.UI.Xaml.Documents.Bold")
interface IBold : IInspectable
{
}

@uuid("d079498b-f2b1-4281-99a2-e4d05932b2b5")
@WinrtFactory("Windows.UI.Xaml.Documents.Glyphs")
interface IGlyphs : IInspectable
{
extern(Windows):
	HRESULT get_UnicodeString(HSTRING* return_value);
	HRESULT set_UnicodeString(HSTRING value);
	HRESULT get_Indices(HSTRING* return_value);
	HRESULT set_Indices(HSTRING value);
	HRESULT get_FontUri(Windows.Foundation.Uri* return_value);
	HRESULT set_FontUri(Windows.Foundation.Uri value);
	HRESULT get_StyleSimulations(Windows.UI.Xaml.Media.StyleSimulations* return_value);
	HRESULT set_StyleSimulations(Windows.UI.Xaml.Media.StyleSimulations value);
	HRESULT get_FontRenderingEmSize(double* return_value);
	HRESULT set_FontRenderingEmSize(double value);
	HRESULT get_OriginX(double* return_value);
	HRESULT set_OriginX(double value);
	HRESULT get_OriginY(double* return_value);
	HRESULT set_OriginY(double value);
	HRESULT get_Fill(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_Fill(Windows.UI.Xaml.Media.Brush value);
}

@uuid("aa8bfe5c-3754-4bee-bbe1-4403ee9b86f0")
@WinrtFactory("Windows.UI.Xaml.Documents.Glyphs")
interface IGlyphs2 : IInspectable
{
extern(Windows):
	HRESULT get_IsColorFontEnabled(bool* return_value);
	HRESULT set_IsColorFontEnabled(bool value);
	HRESULT get_ColorFontPaletteIndex(INT32* return_value);
	HRESULT set_ColorFontPaletteIndex(INT32 value);
}

@uuid("225cf4c5-fdf1-43ed-958f-414e86f103f2")
@WinrtFactory("Windows.UI.Xaml.Documents.Glyphs")
interface IGlyphsStatics : IInspectable
{
extern(Windows):
	HRESULT get_UnicodeStringProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IndicesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontUriProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StyleSimulationsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontRenderingEmSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OriginXProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OriginYProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FillProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("10489aa7-1615-4a33-aa02-d7ef2aefc739")
@WinrtFactory("Windows.UI.Xaml.Documents.Glyphs")
interface IGlyphsStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_IsColorFontEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ColorFontPaletteIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0fe2363b-14e9-4152-9e58-5aea5b21f08d")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlink : IInspectable
{
extern(Windows):
	HRESULT get_NavigateUri(Windows.Foundation.Uri* return_value);
	HRESULT set_NavigateUri(Windows.Foundation.Uri value);
	HRESULT add_Click(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.Hyperlink, Windows.UI.Xaml.Documents.HyperlinkClickEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_Click(EventRegistrationToken token);
}

@uuid("4ce9da5f-7cff-4291-b78f-dfec72490576")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlink2 : IInspectable
{
extern(Windows):
	HRESULT get_UnderlineStyle(Windows.UI.Xaml.Documents.UnderlineStyle* return_value);
	HRESULT set_UnderlineStyle(Windows.UI.Xaml.Documents.UnderlineStyle value);
}

@uuid("c3f157d9-e5d3-4fb7-8702-4f6d85dd9e0a")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlink3 : IInspectable
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
	HRESULT get_ElementSoundMode(Windows.UI.Xaml.ElementSoundMode* return_value);
	HRESULT set_ElementSoundMode(Windows.UI.Xaml.ElementSoundMode value);
}

@uuid("f7d02959-82fb-400a-a407-5a4ee677988a")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlink4 : IInspectable
{
extern(Windows):
	HRESULT get_FocusState(Windows.UI.Xaml.FocusState* return_value);
	HRESULT get_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value);
	HRESULT set_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value);
	HRESULT get_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value);
	HRESULT set_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value);
	HRESULT get_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value);
	HRESULT set_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value);
	HRESULT get_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value);
	HRESULT set_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value);
	HRESULT add_GotFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_GotFocus(EventRegistrationToken token);
	HRESULT add_LostFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_LostFocus(EventRegistrationToken token);
	HRESULT abi_Focus(Windows.UI.Xaml.FocusState value, bool* return_returnValue);
}

@uuid("c755916b-7bdc-4be7-b373-9240a503d870")
@WinrtFactory("Windows.UI.Xaml.Documents.HyperlinkClickEventArgs")
interface IHyperlinkClickEventArgs : IInspectable
{
}

@uuid("3a44d3d4-fd41-41db-8c72-3b790acd9fd3")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlinkStatics : IInspectable
{
extern(Windows):
	HRESULT get_NavigateUriProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("5028d8b7-7adf-43ee-a4ae-9c925f755716")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlinkStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_UnderlineStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3e15dea0-205e-4947-99a5-74e757e8e1b4")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlinkStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_XYFocusLeftProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusRightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusUpProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusDownProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ElementSoundModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0476b378-8faa-4e24-b3b6-e9de4d3c708c")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlinkStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_FocusStateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusUpNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusDownNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusLeftNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusRightNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0c92712d-1bc9-4931-8cb1-1aeadf1cc685")
@WinrtFactory("Windows.UI.Xaml.Documents.Inline")
interface IInline : IInspectable
{
}

@uuid("4058acd1-2f90-4b8f-99dd-4218ef5f03de")
@WinrtFactory("Windows.UI.Xaml.Documents.Inline")
interface IInlineFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Documents.Inline* return_instance);
}

@uuid("1416ce81-28ee-452e-b121-5fc4f60b86a6")
@WinrtFactory("Windows.UI.Xaml.Documents.InlineUIContainer")
interface IInlineUIContainer : IInspectable
{
extern(Windows):
	HRESULT get_Child(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Child(Windows.UI.Xaml.UIElement value);
}

@uuid("91f4619c-fcbb-4157-802c-76f63b5fb657")
@WinrtFactory("Windows.UI.Xaml.Documents.Italic")
interface IItalic : IInspectable
{
}

@uuid("645589c4-f769-41ed-895b-8a1b2fb31562")
@WinrtFactory("Windows.UI.Xaml.Documents.LineBreak")
interface ILineBreak : IInspectable
{
}

@uuid("f83ef59a-fa61-4bef-ae33-0b0ad756a84d")
@WinrtFactory("Windows.UI.Xaml.Documents.Paragraph")
interface IParagraph : IInspectable
{
extern(Windows):
	HRESULT get_Inlines(Windows.UI.Xaml.Documents.InlineCollection* return_value);
	HRESULT get_TextIndent(double* return_value);
	HRESULT set_TextIndent(double value);
}

@uuid("ef08889a-535b-4e4c-8d84-283b33e98a37")
@WinrtFactory("Windows.UI.Xaml.Documents.Paragraph")
interface IParagraphStatics : IInspectable
{
extern(Windows):
	HRESULT get_TextIndentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("59553c83-0e14-49bd-b84b-c526f3034349")
@WinrtFactory("Windows.UI.Xaml.Documents.Run")
interface IRun : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_FlowDirection(Windows.UI.Xaml.FlowDirection* return_value);
	HRESULT set_FlowDirection(Windows.UI.Xaml.FlowDirection value);
}

@uuid("e9303cef-65a0-4b8d-a7f7-8fdb287b46f3")
@WinrtFactory("Windows.UI.Xaml.Documents.Run")
interface IRunStatics : IInspectable
{
extern(Windows):
	HRESULT get_FlowDirectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9839d4a9-02af-4811-aa15-6bef3acac97a")
@WinrtFactory("Windows.UI.Xaml.Documents.Span")
interface ISpan : IInspectable
{
extern(Windows):
	HRESULT get_Inlines(Windows.UI.Xaml.Documents.InlineCollection* return_value);
	HRESULT set_Inlines(Windows.UI.Xaml.Documents.InlineCollection value);
}

@uuid("5b916f5c-cd2d-40c0-956a-386448322f79")
@WinrtFactory("Windows.UI.Xaml.Documents.Span")
interface ISpanFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Documents.Span* return_instance);
}

@uuid("e83b0062-d776-4f92-baea-40e77d4791d5")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElement : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
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
	HRESULT get_Language(HSTRING* return_value);
	HRESULT set_Language(HSTRING value);
	HRESULT get_ContentStart(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_ContentEnd(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_ElementStart(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT get_ElementEnd(Windows.UI.Xaml.Documents.TextPointer* return_value);
	HRESULT abi_FindName(HSTRING name, IInspectable* return_returnValue);
}

@uuid("a8076aa8-f892-49f6-8cd2-89addaf06d2d")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElement2 : IInspectable
{
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("d1db340f-1bc4-4ca8-bcf7-770bff9b27ab")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElement3 : IInspectable
{
extern(Windows):
	HRESULT get_AllowFocusOnInteraction(bool* return_value);
	HRESULT set_AllowFocusOnInteraction(bool value);
	HRESULT get_AccessKey(HSTRING* return_value);
	HRESULT set_AccessKey(HSTRING value);
	HRESULT get_ExitDisplayModeOnAccessKeyInvoked(bool* return_value);
	HRESULT set_ExitDisplayModeOnAccessKeyInvoked(bool value);
}

@uuid("b196e222-ca0e-48a9-83bc-36ce50566ac7")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElement4 : IInspectable
{
extern(Windows):
	HRESULT get_TextDecorations(Windows.UI.Text.TextDecorations* return_value);
	HRESULT set_TextDecorations(Windows.UI.Text.TextDecorations value);
	HRESULT get_IsAccessKeyScope(bool* return_value);
	HRESULT set_IsAccessKeyScope(bool value);
	HRESULT get_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode* return_value);
	HRESULT set_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode value);
	HRESULT get_KeyTipHorizontalOffset(double* return_value);
	HRESULT set_KeyTipHorizontalOffset(double value);
	HRESULT get_KeyTipVerticalOffset(double* return_value);
	HRESULT set_KeyTipVerticalOffset(double value);
	HRESULT add_AccessKeyDisplayRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_AccessKeyDisplayRequested(EventRegistrationToken token);
	HRESULT add_AccessKeyDisplayDismissed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_AccessKeyDisplayDismissed(EventRegistrationToken token);
	HRESULT add_AccessKeyInvoked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_AccessKeyInvoked(EventRegistrationToken token);
}

@uuid("35007285-cf47-4bfe-b1bc-39c93af4ae80")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementFactory : IInspectable
{
}

@uuid("0ce21ee7-4f76-4dd9-bf91-163beccf84bc")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnDisconnectVisualChildren();
}

@uuid("0a2f9b98-6c03-4470-a79b-3298a10482ce")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementStatics : IInspectable
{
extern(Windows):
	HRESULT get_FontSizeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontFamilyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontWeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FontStretchProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CharacterSpacingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ForegroundProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LanguageProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("164297b2-982b-49e1-8c03-ca43bc4d5b6d")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cfefcfaf-0fa1-45ec-9a4e-9b33664dc8b1")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_AllowFocusOnInteractionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AccessKeyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ExitDisplayModeOnAccessKeyInvokedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fd8f641e-6b12-40d5-b6ef-d1bd12ac9066")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_TextDecorationsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsAccessKeyScopeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AccessKeyScopeOwnerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTipPlacementModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTipHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTipVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ac687aa1-6a41-43ff-851e-45348aa2cf7b")
@WinrtFactory("Windows.UI.Xaml.Documents.TextPointer")
interface ITextPointer : IInspectable
{
extern(Windows):
	HRESULT get_Parent(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT get_VisualParent(Windows.UI.Xaml.FrameworkElement* return_value);
	HRESULT get_LogicalDirection(Windows.UI.Xaml.Documents.LogicalDirection* return_value);
	HRESULT get_Offset(INT32* return_value);
	HRESULT abi_GetCharacterRect(Windows.UI.Xaml.Documents.LogicalDirection direction, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_GetPositionAtOffset(INT32 offset, Windows.UI.Xaml.Documents.LogicalDirection direction, Windows.UI.Xaml.Documents.TextPointer* return_returnValue);
}

@uuid("866f65d5-ea97-42ab-9288-9c01aebc7a97")
@WinrtFactory("Windows.UI.Xaml.Documents.Typography")
interface ITypography : IInspectable
{
}

@uuid("67b9ec88-6c57-4ce0-95f1-d4b9ed632fb4")
@WinrtFactory("Windows.UI.Xaml.Documents.Typography")
interface ITypographyStatics : IInspectable
{
extern(Windows):
	HRESULT get_AnnotationAlternatesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetAnnotationAlternates(Windows.UI.Xaml.DependencyObject element, INT32* return_value);
	HRESULT abi_SetAnnotationAlternates(Windows.UI.Xaml.DependencyObject element, INT32 value);
	HRESULT get_EastAsianExpertFormsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetEastAsianExpertForms(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetEastAsianExpertForms(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_EastAsianLanguageProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetEastAsianLanguage(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontEastAsianLanguage* return_value);
	HRESULT abi_SetEastAsianLanguage(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontEastAsianLanguage value);
	HRESULT get_EastAsianWidthsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetEastAsianWidths(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontEastAsianWidths* return_value);
	HRESULT abi_SetEastAsianWidths(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontEastAsianWidths value);
	HRESULT get_StandardLigaturesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStandardLigatures(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStandardLigatures(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_ContextualLigaturesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetContextualLigatures(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetContextualLigatures(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_DiscretionaryLigaturesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetDiscretionaryLigatures(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetDiscretionaryLigatures(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_HistoricalLigaturesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetHistoricalLigatures(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetHistoricalLigatures(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StandardSwashesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStandardSwashes(Windows.UI.Xaml.DependencyObject element, INT32* return_value);
	HRESULT abi_SetStandardSwashes(Windows.UI.Xaml.DependencyObject element, INT32 value);
	HRESULT get_ContextualSwashesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetContextualSwashes(Windows.UI.Xaml.DependencyObject element, INT32* return_value);
	HRESULT abi_SetContextualSwashes(Windows.UI.Xaml.DependencyObject element, INT32 value);
	HRESULT get_ContextualAlternatesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetContextualAlternates(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetContextualAlternates(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticAlternatesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticAlternates(Windows.UI.Xaml.DependencyObject element, INT32* return_value);
	HRESULT abi_SetStylisticAlternates(Windows.UI.Xaml.DependencyObject element, INT32 value);
	HRESULT get_StylisticSet1Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet1(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet1(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet2Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet2(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet2(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet3Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet3(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet3(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet4Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet4(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet4(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet5Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet5(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet5(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet6Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet6(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet6(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet7Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet7(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet7(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet8Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet8(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet8(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet9Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet9(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet9(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet10Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet10(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet10(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet11Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet11(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet11(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet12Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet12(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet12(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet13Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet13(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet13(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet14Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet14(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet14(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet15Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet15(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet15(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet16Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet16(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet16(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet17Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet17(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet17(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet18Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet18(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet18(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet19Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet19(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet19(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_StylisticSet20Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetStylisticSet20(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetStylisticSet20(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_CapitalsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetCapitals(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontCapitals* return_value);
	HRESULT abi_SetCapitals(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontCapitals value);
	HRESULT get_CapitalSpacingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetCapitalSpacing(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetCapitalSpacing(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_KerningProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetKerning(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetKerning(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_CaseSensitiveFormsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetCaseSensitiveForms(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetCaseSensitiveForms(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_HistoricalFormsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetHistoricalForms(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetHistoricalForms(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_FractionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetFraction(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontFraction* return_value);
	HRESULT abi_SetFraction(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontFraction value);
	HRESULT get_NumeralStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetNumeralStyle(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontNumeralStyle* return_value);
	HRESULT abi_SetNumeralStyle(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontNumeralStyle value);
	HRESULT get_NumeralAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetNumeralAlignment(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontNumeralAlignment* return_value);
	HRESULT abi_SetNumeralAlignment(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontNumeralAlignment value);
	HRESULT get_SlashedZeroProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetSlashedZero(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetSlashedZero(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_MathematicalGreekProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetMathematicalGreek(Windows.UI.Xaml.DependencyObject element, bool* return_value);
	HRESULT abi_SetMathematicalGreek(Windows.UI.Xaml.DependencyObject element, bool value);
	HRESULT get_VariantsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetVariants(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontVariants* return_value);
	HRESULT abi_SetVariants(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontVariants value);
}

@uuid("a5fa8202-61c0-47d7-93ef-bc0b577c5f26")
@WinrtFactory("Windows.UI.Xaml.Documents.Underline")
interface IUnderline : IInspectable
{
}

interface Block : Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Documents.IBlock
{
extern(Windows):
	final Windows.UI.Xaml.TextAlignment TextAlignment()
	{
		Windows.UI.Xaml.TextAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IBlock).get_TextAlignment(&_ret));
		return _ret;
	}
	final void TextAlignment(Windows.UI.Xaml.TextAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IBlock).set_TextAlignment(value));
	}
	final double LineHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IBlock).get_LineHeight(&_ret));
		return _ret;
	}
	final void LineHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IBlock).set_LineHeight(value));
	}
	final Windows.UI.Xaml.LineStackingStrategy LineStackingStrategy()
	{
		Windows.UI.Xaml.LineStackingStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IBlock).get_LineStackingStrategy(&_ret));
		return _ret;
	}
	final void LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IBlock).set_LineStackingStrategy(value));
	}
	final Windows.UI.Xaml.Thickness Margin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IBlock).get_Margin(&_ret));
		return _ret;
	}
	final void Margin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IBlock).set_Margin(value));
	}

	private static Windows.UI.Xaml.Documents.IBlockStatics _staticInstance;
	public static Windows.UI.Xaml.Documents.IBlockStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Documents.IBlockStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty TextAlignmentProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IBlockStatics).get_TextAlignmentProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty LineHeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IBlockStatics).get_LineHeightProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty LineStackingStrategyProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IBlockStatics).get_LineStackingStrategyProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty MarginProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IBlockStatics).get_MarginProperty(&_ret));
		return _ret;
	}
	static Block New()
	{
		IInspectable outer, inner;
		Block ret;
		Debug.OK(activationFactory!(Block, Windows.UI.Xaml.Documents.IBlockFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(Block, Block, Windows.UI.Xaml.Documents.IBlockFactory)
class BlockT(Base) : AgileObject!Base, Block
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_TextAlignment(Windows.UI.Xaml.TextAlignment* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.IBlock).get_TextAlignment(return_value); }
	override HRESULT set_TextAlignment(Windows.UI.Xaml.TextAlignment value) { return m_inner.as!(Windows.UI.Xaml.Documents.IBlock).set_TextAlignment(value); }
	override HRESULT get_LineHeight(double* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.IBlock).get_LineHeight(return_value); }
	override HRESULT set_LineHeight(double value) { return m_inner.as!(Windows.UI.Xaml.Documents.IBlock).set_LineHeight(value); }
	override HRESULT get_LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.IBlock).get_LineStackingStrategy(return_value); }
	override HRESULT set_LineStackingStrategy(Windows.UI.Xaml.LineStackingStrategy value) { return m_inner.as!(Windows.UI.Xaml.Documents.IBlock).set_LineStackingStrategy(value); }
	override HRESULT get_Margin(Windows.UI.Xaml.Thickness* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.IBlock).get_Margin(return_value); }
	override HRESULT set_Margin(Windows.UI.Xaml.Thickness value) { return m_inner.as!(Windows.UI.Xaml.Documents.IBlock).set_Margin(value); }

	this() {}
	IInspectable m_inner;
}

interface BlockCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Documents.Block)
{
extern(Windows):
	final Windows.UI.Xaml.Documents.Block GetAt(uint index)
	{
		Windows.UI.Xaml.Documents.Block _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Documents.Block)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Documents.Block value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Documents.Block item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Documents.Block item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Documents.Block item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Documents.Block* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Documents.Block* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Block)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Documents.Block)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Documents.Block)).abi_First(out_first));
	}
}

interface Bold : Windows.UI.Xaml.Documents.Span, Windows.UI.Xaml.Documents.IBold
{
}

interface Glyphs : Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.Documents.IGlyphs, Windows.UI.Xaml.Documents.IGlyphs2
{
extern(Windows):
	final HSTRING UnicodeString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).get_UnicodeString(&_ret));
		return _ret;
	}
	final void UnicodeString(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).set_UnicodeString(value));
	}
	final HSTRING Indices()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).get_Indices(&_ret));
		return _ret;
	}
	final void Indices(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).set_Indices(value));
	}
	final Windows.Foundation.Uri FontUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).get_FontUri(&_ret));
		return _ret;
	}
	final void FontUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).set_FontUri(value));
	}
	final Windows.UI.Xaml.Media.StyleSimulations StyleSimulations()
	{
		Windows.UI.Xaml.Media.StyleSimulations _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).get_StyleSimulations(&_ret));
		return _ret;
	}
	final void StyleSimulations(Windows.UI.Xaml.Media.StyleSimulations value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).set_StyleSimulations(value));
	}
	final double FontRenderingEmSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).get_FontRenderingEmSize(&_ret));
		return _ret;
	}
	final void FontRenderingEmSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).set_FontRenderingEmSize(value));
	}
	final double OriginX()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).get_OriginX(&_ret));
		return _ret;
	}
	final void OriginX(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).set_OriginX(value));
	}
	final double OriginY()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).get_OriginY(&_ret));
		return _ret;
	}
	final void OriginY(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).set_OriginY(value));
	}
	final Windows.UI.Xaml.Media.Brush Fill()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).get_Fill(&_ret));
		return _ret;
	}
	final void Fill(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs).set_Fill(value));
	}
	final bool IsColorFontEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs2).get_IsColorFontEnabled(&_ret));
		return _ret;
	}
	final void IsColorFontEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs2).set_IsColorFontEnabled(value));
	}
	final INT32 ColorFontPaletteIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs2).get_ColorFontPaletteIndex(&_ret));
		return _ret;
	}
	final void ColorFontPaletteIndex(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IGlyphs2).set_ColorFontPaletteIndex(value));
	}

	private static Windows.UI.Xaml.Documents.IGlyphsStatics _staticInstance;
	public static Windows.UI.Xaml.Documents.IGlyphsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Documents.IGlyphsStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty UnicodeStringProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IGlyphsStatics).get_UnicodeStringProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IndicesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IGlyphsStatics).get_IndicesProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FontUriProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IGlyphsStatics).get_FontUriProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StyleSimulationsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IGlyphsStatics).get_StyleSimulationsProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FontRenderingEmSizeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IGlyphsStatics).get_FontRenderingEmSizeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty OriginXProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IGlyphsStatics).get_OriginXProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty OriginYProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IGlyphsStatics).get_OriginYProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FillProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IGlyphsStatics).get_FillProperty(&_ret));
		return _ret;
	}
}

interface Hyperlink : Windows.UI.Xaml.Documents.Span, Windows.UI.Xaml.Documents.IHyperlink, Windows.UI.Xaml.Documents.IHyperlink2, Windows.UI.Xaml.Documents.IHyperlink3, Windows.UI.Xaml.Documents.IHyperlink4
{
extern(Windows):
	final Windows.Foundation.Uri NavigateUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink).get_NavigateUri(&_ret));
		return _ret;
	}
	final void NavigateUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink).set_NavigateUri(value));
	}
	final EventRegistrationToken OnClick(void delegate(Windows.UI.Xaml.Documents.Hyperlink, Windows.UI.Xaml.Documents.HyperlinkClickEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink).add_Click(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.Hyperlink, Windows.UI.Xaml.Documents.HyperlinkClickEventArgs), Windows.UI.Xaml.Documents.Hyperlink, Windows.UI.Xaml.Documents.HyperlinkClickEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClick(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink).remove_Click(token));
	}
	final Windows.UI.Xaml.Documents.UnderlineStyle UnderlineStyle()
	{
		Windows.UI.Xaml.Documents.UnderlineStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink2).get_UnderlineStyle(&_ret));
		return _ret;
	}
	final void UnderlineStyle(Windows.UI.Xaml.Documents.UnderlineStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink2).set_UnderlineStyle(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusLeft()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink3).get_XYFocusLeft(&_ret));
		return _ret;
	}
	final void XYFocusLeft(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink3).set_XYFocusLeft(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusRight()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink3).get_XYFocusRight(&_ret));
		return _ret;
	}
	final void XYFocusRight(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink3).set_XYFocusRight(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusUp()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink3).get_XYFocusUp(&_ret));
		return _ret;
	}
	final void XYFocusUp(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink3).set_XYFocusUp(value));
	}
	final Windows.UI.Xaml.DependencyObject XYFocusDown()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink3).get_XYFocusDown(&_ret));
		return _ret;
	}
	final void XYFocusDown(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink3).set_XYFocusDown(value));
	}
	final Windows.UI.Xaml.ElementSoundMode ElementSoundMode()
	{
		Windows.UI.Xaml.ElementSoundMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink3).get_ElementSoundMode(&_ret));
		return _ret;
	}
	final void ElementSoundMode(Windows.UI.Xaml.ElementSoundMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink3).set_ElementSoundMode(value));
	}
	final Windows.UI.Xaml.FocusState FocusState()
	{
		Windows.UI.Xaml.FocusState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).get_FocusState(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusUpNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).get_XYFocusUpNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).set_XYFocusUpNavigationStrategy(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusDownNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).get_XYFocusDownNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).set_XYFocusDownNavigationStrategy(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusLeftNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).get_XYFocusLeftNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).set_XYFocusLeftNavigationStrategy(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusRightNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).get_XYFocusRightNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).set_XYFocusRightNavigationStrategy(value));
	}
	final void removeGotFocus(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).remove_GotFocus(token));
	}
	final void removeLostFocus(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).remove_LostFocus(token));
	}
	final bool Focus(Windows.UI.Xaml.FocusState value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IHyperlink4).abi_Focus(value, &_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.Documents.IHyperlinkStatics _staticInstance;
	public static Windows.UI.Xaml.Documents.IHyperlinkStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Documents.IHyperlinkStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty NavigateUriProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IHyperlinkStatics).get_NavigateUriProperty(&_ret));
		return _ret;
	}
}

interface HyperlinkClickEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.Documents.IHyperlinkClickEventArgs
{
}

interface Inline : Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Documents.IInline
{
	static Inline New()
	{
		IInspectable outer, inner;
		Inline ret;
		Debug.OK(activationFactory!(Inline, Windows.UI.Xaml.Documents.IInlineFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(Inline, Inline, Windows.UI.Xaml.Documents.IInlineFactory)
class InlineT(Base) : AgileObject!Base, Inline
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

interface InlineCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Documents.Inline)
{
extern(Windows):
	final Windows.UI.Xaml.Documents.Inline GetAt(uint index)
	{
		Windows.UI.Xaml.Documents.Inline _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Documents.Inline)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.Documents.Inline value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.Documents.Inline item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.Documents.Inline item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.Documents.Inline item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.Documents.Inline* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.Documents.Inline* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Documents.Inline)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.Documents.Inline)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Documents.Inline)).abi_First(out_first));
	}
}

interface InlineUIContainer : Windows.UI.Xaml.Documents.Inline, Windows.UI.Xaml.Documents.IInlineUIContainer
{
extern(Windows):
	final Windows.UI.Xaml.UIElement Child()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IInlineUIContainer).get_Child(&_ret));
		return _ret;
	}
	final void Child(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IInlineUIContainer).set_Child(value));
	}
}

interface Italic : Windows.UI.Xaml.Documents.Span, Windows.UI.Xaml.Documents.IItalic
{
}

interface LineBreak : Windows.UI.Xaml.Documents.Inline, Windows.UI.Xaml.Documents.ILineBreak
{
}

interface Paragraph : Windows.UI.Xaml.Documents.Block, Windows.UI.Xaml.Documents.IParagraph
{
extern(Windows):
	final Windows.UI.Xaml.Documents.InlineCollection Inlines()
	{
		Windows.UI.Xaml.Documents.InlineCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IParagraph).get_Inlines(&_ret));
		return _ret;
	}
	final double TextIndent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IParagraph).get_TextIndent(&_ret));
		return _ret;
	}
	final void TextIndent(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IParagraph).set_TextIndent(value));
	}

	private static Windows.UI.Xaml.Documents.IParagraphStatics _staticInstance;
	public static Windows.UI.Xaml.Documents.IParagraphStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Documents.IParagraphStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty TextIndentProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IParagraphStatics).get_TextIndentProperty(&_ret));
		return _ret;
	}
}

interface Run : Windows.UI.Xaml.Documents.Inline, Windows.UI.Xaml.Documents.IRun
{
extern(Windows):
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IRun).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IRun).set_Text(value));
	}
	final Windows.UI.Xaml.FlowDirection FlowDirection()
	{
		Windows.UI.Xaml.FlowDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IRun).get_FlowDirection(&_ret));
		return _ret;
	}
	final void FlowDirection(Windows.UI.Xaml.FlowDirection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.IRun).set_FlowDirection(value));
	}

	private static Windows.UI.Xaml.Documents.IRunStatics _staticInstance;
	public static Windows.UI.Xaml.Documents.IRunStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Documents.IRunStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty FlowDirectionProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.IRunStatics).get_FlowDirectionProperty(&_ret));
		return _ret;
	}
}

interface Span : Windows.UI.Xaml.Documents.Inline, Windows.UI.Xaml.Documents.ISpan
{
extern(Windows):
	final Windows.UI.Xaml.Documents.InlineCollection Inlines()
	{
		Windows.UI.Xaml.Documents.InlineCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ISpan).get_Inlines(&_ret));
		return _ret;
	}
	final void Inlines(Windows.UI.Xaml.Documents.InlineCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ISpan).set_Inlines(value));
	}
	static Span New()
	{
		IInspectable outer, inner;
		Span ret;
		Debug.OK(activationFactory!(Span, Windows.UI.Xaml.Documents.ISpanFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(Span, Span, Windows.UI.Xaml.Documents.ISpanFactory)
class SpanT(Base) : AgileObject!Base, Span
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Inlines(Windows.UI.Xaml.Documents.InlineCollection* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ISpan).get_Inlines(return_value); }
	override HRESULT set_Inlines(Windows.UI.Xaml.Documents.InlineCollection value) { return m_inner.as!(Windows.UI.Xaml.Documents.ISpan).set_Inlines(value); }

	this() {}
	IInspectable m_inner;
}

interface TextElement : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Documents.ITextElement, Windows.UI.Xaml.Documents.ITextElementOverrides, Windows.UI.Xaml.Documents.ITextElement2, Windows.UI.Xaml.Documents.ITextElement3, Windows.UI.Xaml.Documents.ITextElement4
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_Name(&_ret));
		return _ret;
	}
	final double FontSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_FontSize(&_ret));
		return _ret;
	}
	final void FontSize(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).set_FontSize(value));
	}
	final Windows.UI.Xaml.Media.FontFamily FontFamily()
	{
		Windows.UI.Xaml.Media.FontFamily _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_FontFamily(&_ret));
		return _ret;
	}
	final void FontFamily(Windows.UI.Xaml.Media.FontFamily value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).set_FontFamily(value));
	}
	final Windows.UI.Text.FontWeight FontWeight()
	{
		Windows.UI.Text.FontWeight _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_FontWeight(&_ret));
		return _ret;
	}
	final void FontWeight(Windows.UI.Text.FontWeight value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).set_FontWeight(value));
	}
	final Windows.UI.Text.FontStyle FontStyle()
	{
		Windows.UI.Text.FontStyle _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_FontStyle(&_ret));
		return _ret;
	}
	final void FontStyle(Windows.UI.Text.FontStyle value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).set_FontStyle(value));
	}
	final Windows.UI.Text.FontStretch FontStretch()
	{
		Windows.UI.Text.FontStretch _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_FontStretch(&_ret));
		return _ret;
	}
	final void FontStretch(Windows.UI.Text.FontStretch value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).set_FontStretch(value));
	}
	final INT32 CharacterSpacing()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_CharacterSpacing(&_ret));
		return _ret;
	}
	final void CharacterSpacing(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).set_CharacterSpacing(value));
	}
	final Windows.UI.Xaml.Media.Brush Foreground()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_Foreground(&_ret));
		return _ret;
	}
	final void Foreground(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).set_Foreground(value));
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_Language(&_ret));
		return _ret;
	}
	final void Language(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).set_Language(value));
	}
	final Windows.UI.Xaml.Documents.TextPointer ContentStart()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_ContentStart(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer ContentEnd()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_ContentEnd(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer ElementStart()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_ElementStart(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer ElementEnd()
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).get_ElementEnd(&_ret));
		return _ret;
	}
	final IInspectable FindName(HSTRING name)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement).abi_FindName(name, &_ret));
		return _ret;
	}
	final bool IsTextScaleFactorEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement2).get_IsTextScaleFactorEnabled(&_ret));
		return _ret;
	}
	final void IsTextScaleFactorEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement2).set_IsTextScaleFactorEnabled(value));
	}
	final bool AllowFocusOnInteraction()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement3).get_AllowFocusOnInteraction(&_ret));
		return _ret;
	}
	final void AllowFocusOnInteraction(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement3).set_AllowFocusOnInteraction(value));
	}
	final HSTRING AccessKey()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement3).get_AccessKey(&_ret));
		return _ret;
	}
	final void AccessKey(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement3).set_AccessKey(value));
	}
	final bool ExitDisplayModeOnAccessKeyInvoked()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement3).get_ExitDisplayModeOnAccessKeyInvoked(&_ret));
		return _ret;
	}
	final void ExitDisplayModeOnAccessKeyInvoked(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement3).set_ExitDisplayModeOnAccessKeyInvoked(value));
	}
	final Windows.UI.Text.TextDecorations TextDecorations()
	{
		Windows.UI.Text.TextDecorations _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).get_TextDecorations(&_ret));
		return _ret;
	}
	final void TextDecorations(Windows.UI.Text.TextDecorations value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).set_TextDecorations(value));
	}
	final bool IsAccessKeyScope()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).get_IsAccessKeyScope(&_ret));
		return _ret;
	}
	final void IsAccessKeyScope(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).set_IsAccessKeyScope(value));
	}
	final Windows.UI.Xaml.DependencyObject AccessKeyScopeOwner()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).get_AccessKeyScopeOwner(&_ret));
		return _ret;
	}
	final void AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).set_AccessKeyScopeOwner(value));
	}
	final Windows.UI.Xaml.Input.KeyTipPlacementMode KeyTipPlacementMode()
	{
		Windows.UI.Xaml.Input.KeyTipPlacementMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).get_KeyTipPlacementMode(&_ret));
		return _ret;
	}
	final void KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).set_KeyTipPlacementMode(value));
	}
	final double KeyTipHorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).get_KeyTipHorizontalOffset(&_ret));
		return _ret;
	}
	final void KeyTipHorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).set_KeyTipHorizontalOffset(value));
	}
	final double KeyTipVerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).get_KeyTipVerticalOffset(&_ret));
		return _ret;
	}
	final void KeyTipVerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).set_KeyTipVerticalOffset(value));
	}
	final EventRegistrationToken OnAccessKeyDisplayRequested(void delegate(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).add_AccessKeyDisplayRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs), Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccessKeyDisplayRequested(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).remove_AccessKeyDisplayRequested(token));
	}
	final EventRegistrationToken OnAccessKeyDisplayDismissed(void delegate(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).add_AccessKeyDisplayDismissed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs), Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccessKeyDisplayDismissed(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).remove_AccessKeyDisplayDismissed(token));
	}
	final EventRegistrationToken OnAccessKeyInvoked(void delegate(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).add_AccessKeyInvoked(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs), Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccessKeyInvoked(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextElement4).remove_AccessKeyInvoked(token));
	}

	private static Windows.UI.Xaml.Documents.ITextElementStatics _staticInstance;
	public static Windows.UI.Xaml.Documents.ITextElementStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Documents.ITextElementStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty FontSizeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITextElementStatics).get_FontSizeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FontFamilyProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITextElementStatics).get_FontFamilyProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FontWeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITextElementStatics).get_FontWeightProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FontStyleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITextElementStatics).get_FontStyleProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FontStretchProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITextElementStatics).get_FontStretchProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CharacterSpacingProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITextElementStatics).get_CharacterSpacingProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ForegroundProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITextElementStatics).get_ForegroundProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty LanguageProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITextElementStatics).get_LanguageProperty(&_ret));
		return _ret;
	}
}
@makable!(TextElement, TextElement, Windows.UI.Xaml.Documents.ITextElementFactory)
class TextElementT(Base) : AgileObject!Base, TextElement
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Name(HSTRING* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_Name(return_value); }
	override HRESULT get_FontSize(double* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_FontSize(return_value); }
	override HRESULT set_FontSize(double value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).set_FontSize(value); }
	override HRESULT get_FontFamily(Windows.UI.Xaml.Media.FontFamily* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_FontFamily(return_value); }
	override HRESULT set_FontFamily(Windows.UI.Xaml.Media.FontFamily value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).set_FontFamily(value); }
	override HRESULT get_FontWeight(Windows.UI.Text.FontWeight* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_FontWeight(return_value); }
	override HRESULT set_FontWeight(Windows.UI.Text.FontWeight value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).set_FontWeight(value); }
	override HRESULT get_FontStyle(Windows.UI.Text.FontStyle* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_FontStyle(return_value); }
	override HRESULT set_FontStyle(Windows.UI.Text.FontStyle value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).set_FontStyle(value); }
	override HRESULT get_FontStretch(Windows.UI.Text.FontStretch* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_FontStretch(return_value); }
	override HRESULT set_FontStretch(Windows.UI.Text.FontStretch value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).set_FontStretch(value); }
	override HRESULT get_CharacterSpacing(INT32* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_CharacterSpacing(return_value); }
	override HRESULT set_CharacterSpacing(INT32 value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).set_CharacterSpacing(value); }
	override HRESULT get_Foreground(Windows.UI.Xaml.Media.Brush* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_Foreground(return_value); }
	override HRESULT set_Foreground(Windows.UI.Xaml.Media.Brush value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).set_Foreground(value); }
	override HRESULT get_Language(HSTRING* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_Language(return_value); }
	override HRESULT set_Language(HSTRING value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).set_Language(value); }
	override HRESULT get_ContentStart(Windows.UI.Xaml.Documents.TextPointer* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_ContentStart(return_value); }
	override HRESULT get_ContentEnd(Windows.UI.Xaml.Documents.TextPointer* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_ContentEnd(return_value); }
	override HRESULT get_ElementStart(Windows.UI.Xaml.Documents.TextPointer* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_ElementStart(return_value); }
	override HRESULT get_ElementEnd(Windows.UI.Xaml.Documents.TextPointer* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).get_ElementEnd(return_value); }
	override HRESULT abi_FindName(HSTRING name, IInspectable* return_returnValue) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement).abi_FindName(name, return_returnValue); }

	override HRESULT abi_OnDisconnectVisualChildren() { this.OnDisconnectVisualChildren(); return S_OK; }
	void OnDisconnectVisualChildren() { Debug.OK(m_inner.as!(Windows.UI.Xaml.Documents.ITextElementOverrides).abi_OnDisconnectVisualChildren()); }

	override HRESULT get_IsTextScaleFactorEnabled(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement2).get_IsTextScaleFactorEnabled(return_value); }
	override HRESULT set_IsTextScaleFactorEnabled(bool value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement2).set_IsTextScaleFactorEnabled(value); }

	override HRESULT get_AllowFocusOnInteraction(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement3).get_AllowFocusOnInteraction(return_value); }
	override HRESULT set_AllowFocusOnInteraction(bool value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement3).set_AllowFocusOnInteraction(value); }
	override HRESULT get_AccessKey(HSTRING* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement3).get_AccessKey(return_value); }
	override HRESULT set_AccessKey(HSTRING value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement3).set_AccessKey(value); }
	override HRESULT get_ExitDisplayModeOnAccessKeyInvoked(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement3).get_ExitDisplayModeOnAccessKeyInvoked(return_value); }
	override HRESULT set_ExitDisplayModeOnAccessKeyInvoked(bool value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement3).set_ExitDisplayModeOnAccessKeyInvoked(value); }

	override HRESULT get_TextDecorations(Windows.UI.Text.TextDecorations* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).get_TextDecorations(return_value); }
	override HRESULT set_TextDecorations(Windows.UI.Text.TextDecorations value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).set_TextDecorations(value); }
	override HRESULT get_IsAccessKeyScope(bool* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).get_IsAccessKeyScope(return_value); }
	override HRESULT set_IsAccessKeyScope(bool value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).set_IsAccessKeyScope(value); }
	override HRESULT get_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).get_AccessKeyScopeOwner(return_value); }
	override HRESULT set_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).set_AccessKeyScopeOwner(value); }
	override HRESULT get_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).get_KeyTipPlacementMode(return_value); }
	override HRESULT set_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).set_KeyTipPlacementMode(value); }
	override HRESULT get_KeyTipHorizontalOffset(double* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).get_KeyTipHorizontalOffset(return_value); }
	override HRESULT set_KeyTipHorizontalOffset(double value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).set_KeyTipHorizontalOffset(value); }
	override HRESULT get_KeyTipVerticalOffset(double* return_value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).get_KeyTipVerticalOffset(return_value); }
	override HRESULT set_KeyTipVerticalOffset(double value) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).set_KeyTipVerticalOffset(value); }
	override HRESULT add_AccessKeyDisplayRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs) value, EventRegistrationToken* return_token) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).add_AccessKeyDisplayRequested(value, return_token); }
	override HRESULT remove_AccessKeyDisplayRequested(EventRegistrationToken token) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).remove_AccessKeyDisplayRequested(token); }
	override HRESULT add_AccessKeyDisplayDismissed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs) value, EventRegistrationToken* return_token) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).add_AccessKeyDisplayDismissed(value, return_token); }
	override HRESULT remove_AccessKeyDisplayDismissed(EventRegistrationToken token) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).remove_AccessKeyDisplayDismissed(token); }
	override HRESULT add_AccessKeyInvoked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs) value, EventRegistrationToken* return_token) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).add_AccessKeyInvoked(value, return_token); }
	override HRESULT remove_AccessKeyInvoked(EventRegistrationToken token) { return m_inner.as!(Windows.UI.Xaml.Documents.ITextElement4).remove_AccessKeyInvoked(token); }

	this() {}
	IInspectable m_inner;
}

interface TextPointer : Windows.UI.Xaml.Documents.ITextPointer
{
extern(Windows):
	final Windows.UI.Xaml.DependencyObject Parent()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextPointer).get_Parent(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.FrameworkElement VisualParent()
	{
		Windows.UI.Xaml.FrameworkElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextPointer).get_VisualParent(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.LogicalDirection LogicalDirection()
	{
		Windows.UI.Xaml.Documents.LogicalDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextPointer).get_LogicalDirection(&_ret));
		return _ret;
	}
	final INT32 Offset()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextPointer).get_Offset(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect GetCharacterRect(Windows.UI.Xaml.Documents.LogicalDirection direction)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextPointer).abi_GetCharacterRect(direction, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Documents.TextPointer GetPositionAtOffset(INT32 offset, Windows.UI.Xaml.Documents.LogicalDirection direction)
	{
		Windows.UI.Xaml.Documents.TextPointer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Documents.ITextPointer).abi_GetPositionAtOffset(offset, direction, &_ret));
		return _ret;
	}
}

interface Typography : Windows.UI.Xaml.Documents.ITypography
{
	private static Windows.UI.Xaml.Documents.ITypographyStatics _staticInstance;
	public static Windows.UI.Xaml.Documents.ITypographyStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Documents.ITypographyStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty AnnotationAlternatesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_AnnotationAlternatesProperty(&_ret));
		return _ret;
	}
	static INT32 GetAnnotationAlternates(Windows.UI.Xaml.DependencyObject element)
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetAnnotationAlternates(element, &_ret));
		return _ret;
	}
	static void SetAnnotationAlternates(Windows.UI.Xaml.DependencyObject element, INT32 value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetAnnotationAlternates(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty EastAsianExpertFormsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_EastAsianExpertFormsProperty(&_ret));
		return _ret;
	}
	static bool GetEastAsianExpertForms(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetEastAsianExpertForms(element, &_ret));
		return _ret;
	}
	static void SetEastAsianExpertForms(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetEastAsianExpertForms(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty EastAsianLanguageProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_EastAsianLanguageProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.FontEastAsianLanguage GetEastAsianLanguage(Windows.UI.Xaml.DependencyObject element)
	{
		Windows.UI.Xaml.FontEastAsianLanguage _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetEastAsianLanguage(element, &_ret));
		return _ret;
	}
	static void SetEastAsianLanguage(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontEastAsianLanguage value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetEastAsianLanguage(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty EastAsianWidthsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_EastAsianWidthsProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.FontEastAsianWidths GetEastAsianWidths(Windows.UI.Xaml.DependencyObject element)
	{
		Windows.UI.Xaml.FontEastAsianWidths _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetEastAsianWidths(element, &_ret));
		return _ret;
	}
	static void SetEastAsianWidths(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontEastAsianWidths value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetEastAsianWidths(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StandardLigaturesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StandardLigaturesProperty(&_ret));
		return _ret;
	}
	static bool GetStandardLigatures(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStandardLigatures(element, &_ret));
		return _ret;
	}
	static void SetStandardLigatures(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStandardLigatures(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty ContextualLigaturesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_ContextualLigaturesProperty(&_ret));
		return _ret;
	}
	static bool GetContextualLigatures(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetContextualLigatures(element, &_ret));
		return _ret;
	}
	static void SetContextualLigatures(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetContextualLigatures(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty DiscretionaryLigaturesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_DiscretionaryLigaturesProperty(&_ret));
		return _ret;
	}
	static bool GetDiscretionaryLigatures(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetDiscretionaryLigatures(element, &_ret));
		return _ret;
	}
	static void SetDiscretionaryLigatures(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetDiscretionaryLigatures(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty HistoricalLigaturesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_HistoricalLigaturesProperty(&_ret));
		return _ret;
	}
	static bool GetHistoricalLigatures(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetHistoricalLigatures(element, &_ret));
		return _ret;
	}
	static void SetHistoricalLigatures(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetHistoricalLigatures(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StandardSwashesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StandardSwashesProperty(&_ret));
		return _ret;
	}
	static INT32 GetStandardSwashes(Windows.UI.Xaml.DependencyObject element)
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStandardSwashes(element, &_ret));
		return _ret;
	}
	static void SetStandardSwashes(Windows.UI.Xaml.DependencyObject element, INT32 value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStandardSwashes(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty ContextualSwashesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_ContextualSwashesProperty(&_ret));
		return _ret;
	}
	static INT32 GetContextualSwashes(Windows.UI.Xaml.DependencyObject element)
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetContextualSwashes(element, &_ret));
		return _ret;
	}
	static void SetContextualSwashes(Windows.UI.Xaml.DependencyObject element, INT32 value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetContextualSwashes(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty ContextualAlternatesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_ContextualAlternatesProperty(&_ret));
		return _ret;
	}
	static bool GetContextualAlternates(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetContextualAlternates(element, &_ret));
		return _ret;
	}
	static void SetContextualAlternates(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetContextualAlternates(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticAlternatesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticAlternatesProperty(&_ret));
		return _ret;
	}
	static INT32 GetStylisticAlternates(Windows.UI.Xaml.DependencyObject element)
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticAlternates(element, &_ret));
		return _ret;
	}
	static void SetStylisticAlternates(Windows.UI.Xaml.DependencyObject element, INT32 value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticAlternates(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet1Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet1Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet1(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet1(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet1(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet1(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet2Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet2Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet2(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet2(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet2(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet2(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet3Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet3Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet3(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet3(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet3(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet3(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet4Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet4Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet4(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet4(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet4(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet4(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet5Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet5Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet5(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet5(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet5(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet5(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet6Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet6Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet6(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet6(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet6(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet6(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet7Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet7Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet7(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet7(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet7(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet7(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet8Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet8Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet8(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet8(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet8(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet8(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet9Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet9Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet9(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet9(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet9(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet9(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet10Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet10Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet10(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet10(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet10(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet10(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet11Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet11Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet11(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet11(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet11(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet11(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet12Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet12Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet12(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet12(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet12(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet12(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet13Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet13Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet13(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet13(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet13(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet13(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet14Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet14Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet14(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet14(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet14(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet14(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet15Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet15Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet15(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet15(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet15(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet15(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet16Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet16Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet16(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet16(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet16(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet16(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet17Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet17Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet17(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet17(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet17(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet17(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet18Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet18Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet18(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet18(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet18(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet18(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet19Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet19Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet19(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet19(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet19(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet19(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty StylisticSet20Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_StylisticSet20Property(&_ret));
		return _ret;
	}
	static bool GetStylisticSet20(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetStylisticSet20(element, &_ret));
		return _ret;
	}
	static void SetStylisticSet20(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetStylisticSet20(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty CapitalsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_CapitalsProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.FontCapitals GetCapitals(Windows.UI.Xaml.DependencyObject element)
	{
		Windows.UI.Xaml.FontCapitals _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetCapitals(element, &_ret));
		return _ret;
	}
	static void SetCapitals(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontCapitals value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetCapitals(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty CapitalSpacingProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_CapitalSpacingProperty(&_ret));
		return _ret;
	}
	static bool GetCapitalSpacing(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetCapitalSpacing(element, &_ret));
		return _ret;
	}
	static void SetCapitalSpacing(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetCapitalSpacing(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty KerningProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_KerningProperty(&_ret));
		return _ret;
	}
	static bool GetKerning(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetKerning(element, &_ret));
		return _ret;
	}
	static void SetKerning(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetKerning(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty CaseSensitiveFormsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_CaseSensitiveFormsProperty(&_ret));
		return _ret;
	}
	static bool GetCaseSensitiveForms(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetCaseSensitiveForms(element, &_ret));
		return _ret;
	}
	static void SetCaseSensitiveForms(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetCaseSensitiveForms(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty HistoricalFormsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_HistoricalFormsProperty(&_ret));
		return _ret;
	}
	static bool GetHistoricalForms(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetHistoricalForms(element, &_ret));
		return _ret;
	}
	static void SetHistoricalForms(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetHistoricalForms(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty FractionProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_FractionProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.FontFraction GetFraction(Windows.UI.Xaml.DependencyObject element)
	{
		Windows.UI.Xaml.FontFraction _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetFraction(element, &_ret));
		return _ret;
	}
	static void SetFraction(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontFraction value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetFraction(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty NumeralStyleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_NumeralStyleProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.FontNumeralStyle GetNumeralStyle(Windows.UI.Xaml.DependencyObject element)
	{
		Windows.UI.Xaml.FontNumeralStyle _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetNumeralStyle(element, &_ret));
		return _ret;
	}
	static void SetNumeralStyle(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontNumeralStyle value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetNumeralStyle(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty NumeralAlignmentProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_NumeralAlignmentProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.FontNumeralAlignment GetNumeralAlignment(Windows.UI.Xaml.DependencyObject element)
	{
		Windows.UI.Xaml.FontNumeralAlignment _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetNumeralAlignment(element, &_ret));
		return _ret;
	}
	static void SetNumeralAlignment(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontNumeralAlignment value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetNumeralAlignment(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty SlashedZeroProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_SlashedZeroProperty(&_ret));
		return _ret;
	}
	static bool GetSlashedZero(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetSlashedZero(element, &_ret));
		return _ret;
	}
	static void SetSlashedZero(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetSlashedZero(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty MathematicalGreekProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_MathematicalGreekProperty(&_ret));
		return _ret;
	}
	static bool GetMathematicalGreek(Windows.UI.Xaml.DependencyObject element)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetMathematicalGreek(element, &_ret));
		return _ret;
	}
	static void SetMathematicalGreek(Windows.UI.Xaml.DependencyObject element, bool value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetMathematicalGreek(element, value));
	}
	static Windows.UI.Xaml.DependencyProperty VariantsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).get_VariantsProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.FontVariants GetVariants(Windows.UI.Xaml.DependencyObject element)
	{
		Windows.UI.Xaml.FontVariants _ret;
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_GetVariants(element, &_ret));
		return _ret;
	}
	static void SetVariants(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.FontVariants value)
	{
		Debug.OK(staticInstance.as!(Windows.UI.Xaml.Documents.ITypographyStatics).abi_SetVariants(element, value));
	}
}

interface Underline : Windows.UI.Xaml.Documents.Span, Windows.UI.Xaml.Documents.IUnderline
{
}

enum LogicalDirection
{
	Backward = 0,
	Forward = 1
}

enum UnderlineStyle
{
	None = 0,
	Single = 1
}