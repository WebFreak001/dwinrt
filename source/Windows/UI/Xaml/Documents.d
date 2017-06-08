module Windows.UI.Xaml.Documents;

import dwinrt;

@uuid("4bce0016-dd47-4350-8cb0-e171600ac896")
@WinrtFactory("Windows.UI.Xaml.Documents.Block")
interface IBlock : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Documents.Block* return_instance);
}

@uuid("f86a8c34-8d18-4c53-aebd-91e610a5e010")
@WinrtFactory("Windows.UI.Xaml.Documents.Block")
interface IBlockStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LineHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LineStackingStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MarginProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d079498b-f2b1-4281-99a2-e4d05932b2b5")
@WinrtFactory("Windows.UI.Xaml.Documents.Glyphs")
interface IGlyphs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsColorFontEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ColorFontPaletteIndexProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0fe2363b-14e9-4152-9e58-5aea5b21f08d")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlink : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NavigateUri(Windows.Foundation.Uri* return_value);
	HRESULT set_NavigateUri(Windows.Foundation.Uri value);
	HRESULT add_Click(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.Hyperlink*,Windows.UI.Xaml.Documents.HyperlinkClickEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_Click(EventRegistrationToken token);
}

@uuid("4ce9da5f-7cff-4291-b78f-dfec72490576")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlink2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UnderlineStyle(Windows.UI.Xaml.Documents.UnderlineStyle* return_value);
	HRESULT set_UnderlineStyle(Windows.UI.Xaml.Documents.UnderlineStyle value);
}

@uuid("c3f157d9-e5d3-4fb7-8702-4f6d85dd9e0a")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlink3 : IInspectable
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
	HRESULT get_ElementSoundMode(Windows.UI.Xaml.ElementSoundMode* return_value);
	HRESULT set_ElementSoundMode(Windows.UI.Xaml.ElementSoundMode value);
}

@uuid("f7d02959-82fb-400a-a407-5a4ee677988a")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlink4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT add_GotFocus(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_GotFocus(EventRegistrationToken token);
	HRESULT add_LostFocus(Windows.UI.Xaml.RoutedEventHandler* value, EventRegistrationToken* return_token);
	HRESULT remove_LostFocus(EventRegistrationToken token);
	HRESULT abi_Focus(Windows.UI.Xaml.FocusState value, bool* return_returnValue);
}

@uuid("3a44d3d4-fd41-41db-8c72-3b790acd9fd3")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlinkStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NavigateUriProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("5028d8b7-7adf-43ee-a4ae-9c925f755716")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlinkStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UnderlineStyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3e15dea0-205e-4947-99a5-74e757e8e1b4")
@WinrtFactory("Windows.UI.Xaml.Documents.Hyperlink")
interface IHyperlinkStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FocusStateProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusUpNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusDownNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusLeftNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusRightNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4058acd1-2f90-4b8f-99dd-4218ef5f03de")
@WinrtFactory("Windows.UI.Xaml.Documents.Inline")
interface IInlineFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Documents.Inline* return_instance);
}

@uuid("1416ce81-28ee-452e-b121-5fc4f60b86a6")
@WinrtFactory("Windows.UI.Xaml.Documents.InlineUIContainer")
interface IInlineUIContainer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Child(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Child(Windows.UI.Xaml.UIElement value);
}

@uuid("f83ef59a-fa61-4bef-ae33-0b0ad756a84d")
@WinrtFactory("Windows.UI.Xaml.Documents.Paragraph")
interface IParagraph : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Inlines(Windows.UI.Xaml.Documents.InlineCollection* return_value);
	HRESULT get_TextIndent(double* return_value);
	HRESULT set_TextIndent(double value);
}

@uuid("ef08889a-535b-4e4c-8d84-283b33e98a37")
@WinrtFactory("Windows.UI.Xaml.Documents.Paragraph")
interface IParagraphStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TextIndentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("59553c83-0e14-49bd-b84b-c526f3034349")
@WinrtFactory("Windows.UI.Xaml.Documents.Run")
interface IRun : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FlowDirectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9839d4a9-02af-4811-aa15-6bef3acac97a")
@WinrtFactory("Windows.UI.Xaml.Documents.Span")
interface ISpan : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Inlines(Windows.UI.Xaml.Documents.InlineCollection* return_value);
	HRESULT set_Inlines(Windows.UI.Xaml.Documents.InlineCollection value);
}

@uuid("5b916f5c-cd2d-40c0-956a-386448322f79")
@WinrtFactory("Windows.UI.Xaml.Documents.Span")
interface ISpanFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Documents.Span* return_instance);
}

@uuid("e83b0062-d776-4f92-baea-40e77d4791d5")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabled(bool* return_value);
	HRESULT set_IsTextScaleFactorEnabled(bool value);
}

@uuid("d1db340f-1bc4-4ca8-bcf7-770bff9b27ab")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElement3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT add_AccessKeyDisplayRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement*,Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_AccessKeyDisplayRequested(EventRegistrationToken token);
	HRESULT add_AccessKeyDisplayDismissed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement*,Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_AccessKeyDisplayDismissed(EventRegistrationToken token);
	HRESULT add_AccessKeyInvoked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Documents.TextElement*,Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs*) value, EventRegistrationToken* return_token);
	HRESULT remove_AccessKeyInvoked(EventRegistrationToken token);
}

@uuid("0ce21ee7-4f76-4dd9-bf91-163beccf84bc")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OnDisconnectVisualChildren();
}

@uuid("0a2f9b98-6c03-4470-a79b-3298a10482ce")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementStatics : IInspectable
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
	HRESULT get_LanguageProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("164297b2-982b-49e1-8c03-ca43bc4d5b6d")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTextScaleFactorEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cfefcfaf-0fa1-45ec-9a4e-9b33664dc8b1")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllowFocusOnInteractionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AccessKeyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ExitDisplayModeOnAccessKeyInvokedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fd8f641e-6b12-40d5-b6ef-d1bd12ac9066")
@WinrtFactory("Windows.UI.Xaml.Documents.TextElement")
interface ITextElementStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Parent(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT get_VisualParent(Windows.UI.Xaml.FrameworkElement* return_value);
	HRESULT get_LogicalDirection(Windows.UI.Xaml.Documents.LogicalDirection* return_value);
	HRESULT get_Offset(INT32* return_value);
	HRESULT abi_GetCharacterRect(Windows.UI.Xaml.Documents.LogicalDirection direction, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_GetPositionAtOffset(INT32 offset, Windows.UI.Xaml.Documents.LogicalDirection direction, Windows.UI.Xaml.Documents.TextPointer* return_returnValue);
}

@uuid("67b9ec88-6c57-4ce0-95f1-d4b9ed632fb4")
@WinrtFactory("Windows.UI.Xaml.Documents.Typography")
interface ITypographyStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

interface Block : Windows.UI.Xaml.Documents.TextElement
{
}

interface BlockCollection
{
}

interface Bold : Windows.UI.Xaml.Documents.Span
{
}

interface Glyphs : Windows.UI.Xaml.FrameworkElement
{
}

interface Hyperlink : Windows.UI.Xaml.Documents.Span
{
}

interface HyperlinkClickEventArgs : Windows.UI.Xaml.RoutedEventArgs
{
}

interface Inline : Windows.UI.Xaml.Documents.TextElement
{
}

interface InlineCollection
{
}

interface InlineUIContainer : Windows.UI.Xaml.Documents.Inline
{
}

interface Italic : Windows.UI.Xaml.Documents.Span
{
}

interface LineBreak : Windows.UI.Xaml.Documents.Inline
{
}

interface Paragraph : Windows.UI.Xaml.Documents.Block
{
}

interface Run : Windows.UI.Xaml.Documents.Inline
{
}

interface Span : Windows.UI.Xaml.Documents.Inline
{
}

interface TextElement : Windows.UI.Xaml.DependencyObject
{
}

interface TextPointer
{
}

interface Typography
{
}

interface Underline : Windows.UI.Xaml.Documents.Span
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