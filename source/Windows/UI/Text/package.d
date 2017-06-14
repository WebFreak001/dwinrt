module Windows.UI.Text;

import dwinrt;

struct FontWeight
{
	UINT16 Weight;
}

@uuid("7880a444-01ab-4997-8517-df822a0c45f1")
@WinrtFactory("Windows.UI.Text.FontWeights")
interface IFontWeights : IInspectable
{
}

@uuid("b3b579d5-1ba9-48eb-9dad-c095e8c23ba3")
@WinrtFactory("Windows.UI.Text.FontWeights")
interface IFontWeightsStatics : IInspectable
{
extern(Windows):
	HRESULT get_Black(Windows.UI.Text.FontWeight* return_value);
	HRESULT get_Bold(Windows.UI.Text.FontWeight* return_value);
	HRESULT get_ExtraBlack(Windows.UI.Text.FontWeight* return_value);
	HRESULT get_ExtraBold(Windows.UI.Text.FontWeight* return_value);
	HRESULT get_ExtraLight(Windows.UI.Text.FontWeight* return_value);
	HRESULT get_Light(Windows.UI.Text.FontWeight* return_value);
	HRESULT get_Medium(Windows.UI.Text.FontWeight* return_value);
	HRESULT get_Normal(Windows.UI.Text.FontWeight* return_value);
	HRESULT get_SemiBold(Windows.UI.Text.FontWeight* return_value);
	HRESULT get_SemiLight(Windows.UI.Text.FontWeight* return_value);
	HRESULT get_Thin(Windows.UI.Text.FontWeight* return_value);
}

@uuid("5adef3db-05fb-442d-8065-642afea02ced")
interface ITextCharacterFormat : IInspectable
{
extern(Windows):
	HRESULT get_AllCaps(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_AllCaps(Windows.UI.Text.FormatEffect value);
	HRESULT get_BackgroundColor(Windows.UI.Color* return_value);
	HRESULT set_BackgroundColor(Windows.UI.Color value);
	HRESULT get_Bold(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_Bold(Windows.UI.Text.FormatEffect value);
	HRESULT get_FontStretch(Windows.UI.Text.FontStretch* return_value);
	HRESULT set_FontStretch(Windows.UI.Text.FontStretch value);
	HRESULT get_FontStyle(Windows.UI.Text.FontStyle* return_value);
	HRESULT set_FontStyle(Windows.UI.Text.FontStyle value);
	HRESULT get_ForegroundColor(Windows.UI.Color* return_value);
	HRESULT set_ForegroundColor(Windows.UI.Color value);
	HRESULT get_Hidden(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_Hidden(Windows.UI.Text.FormatEffect value);
	HRESULT get_Italic(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_Italic(Windows.UI.Text.FormatEffect value);
	HRESULT get_Kerning(FLOAT* return_value);
	HRESULT set_Kerning(FLOAT value);
	HRESULT get_LanguageTag(HSTRING* return_value);
	HRESULT set_LanguageTag(HSTRING value);
	HRESULT get_LinkType(Windows.UI.Text.LinkType* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Outline(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_Outline(Windows.UI.Text.FormatEffect value);
	HRESULT get_Position(FLOAT* return_value);
	HRESULT set_Position(FLOAT value);
	HRESULT get_ProtectedText(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_ProtectedText(Windows.UI.Text.FormatEffect value);
	HRESULT get_Size(FLOAT* return_value);
	HRESULT set_Size(FLOAT value);
	HRESULT get_SmallCaps(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_SmallCaps(Windows.UI.Text.FormatEffect value);
	HRESULT get_Spacing(FLOAT* return_value);
	HRESULT set_Spacing(FLOAT value);
	HRESULT get_Strikethrough(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_Strikethrough(Windows.UI.Text.FormatEffect value);
	HRESULT get_Subscript(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_Subscript(Windows.UI.Text.FormatEffect value);
	HRESULT get_Superscript(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_Superscript(Windows.UI.Text.FormatEffect value);
	HRESULT get_TextScript(Windows.UI.Text.TextScript* return_value);
	HRESULT set_TextScript(Windows.UI.Text.TextScript value);
	HRESULT get_Underline(Windows.UI.Text.UnderlineType* return_value);
	HRESULT set_Underline(Windows.UI.Text.UnderlineType value);
	HRESULT get_Weight(INT32* return_value);
	HRESULT set_Weight(INT32 value);
	HRESULT abi_SetClone(Windows.UI.Text.ITextCharacterFormat value);
	HRESULT abi_GetClone(Windows.UI.Text.ITextCharacterFormat* return_value);
	HRESULT abi_IsEqual(Windows.UI.Text.ITextCharacterFormat format, bool* return_value);
}

@uuid("779e7c33-189d-4bfa-97c8-10db135d976e")
@WinrtFactory("Windows.UI.Text.TextConstants")
interface ITextConstantsStatics : IInspectable
{
extern(Windows):
	HRESULT get_AutoColor(Windows.UI.Color* return_value);
	HRESULT get_MinUnitCount(INT32* return_value);
	HRESULT get_MaxUnitCount(INT32* return_value);
	HRESULT get_UndefinedColor(Windows.UI.Color* return_value);
	HRESULT get_UndefinedFloatValue(FLOAT* return_value);
	HRESULT get_UndefinedInt32Value(INT32* return_value);
	HRESULT get_UndefinedFontStretch(Windows.UI.Text.FontStretch* return_value);
	HRESULT get_UndefinedFontStyle(Windows.UI.Text.FontStyle* return_value);
}

@uuid("beee4ddb-90b2-408c-a2f6-0a0ac31e33e4")
interface ITextDocument : IInspectable
{
extern(Windows):
	HRESULT get_CaretType(Windows.UI.Text.CaretType* return_value);
	HRESULT set_CaretType(Windows.UI.Text.CaretType value);
	HRESULT get_DefaultTabStop(FLOAT* return_value);
	HRESULT set_DefaultTabStop(FLOAT value);
	HRESULT get_Selection(Windows.UI.Text.ITextSelection* return_value);
	HRESULT get_UndoLimit(UINT32* return_value);
	HRESULT set_UndoLimit(UINT32 value);
	HRESULT abi_CanCopy(bool* return_value);
	HRESULT abi_CanPaste(bool* return_value);
	HRESULT abi_CanRedo(bool* return_value);
	HRESULT abi_CanUndo(bool* return_value);
	HRESULT abi_ApplyDisplayUpdates(INT32* return_count);
	HRESULT abi_BatchDisplayUpdates(INT32* return_count);
	HRESULT abi_BeginUndoGroup();
	HRESULT abi_EndUndoGroup();
	HRESULT abi_GetDefaultCharacterFormat(Windows.UI.Text.ITextCharacterFormat* return_value);
	HRESULT abi_GetDefaultParagraphFormat(Windows.UI.Text.ITextParagraphFormat* return_value);
	HRESULT abi_GetRange(INT32 startPosition, INT32 endPosition, Windows.UI.Text.ITextRange* return_value);
	HRESULT abi_GetRangeFromPoint(Windows.Foundation.Point point, Windows.UI.Text.PointOptions options, Windows.UI.Text.ITextRange* return_value);
	HRESULT abi_GetText(Windows.UI.Text.TextGetOptions options, HSTRING* out_value);
	HRESULT abi_LoadFromStream(Windows.UI.Text.TextSetOptions options, Windows.Storage.Streams.IRandomAccessStream value);
	HRESULT abi_Redo();
	HRESULT abi_SaveToStream(Windows.UI.Text.TextGetOptions options, Windows.Storage.Streams.IRandomAccessStream value);
	HRESULT abi_SetDefaultCharacterFormat(Windows.UI.Text.ITextCharacterFormat value);
	HRESULT abi_SetDefaultParagraphFormat(Windows.UI.Text.ITextParagraphFormat value);
	HRESULT abi_SetText(Windows.UI.Text.TextSetOptions options, HSTRING value);
	HRESULT abi_Undo();
}

@uuid("f2311112-8c89-49c9-9118-f057cbb814ee")
@WinrtFactory("Windows.UI.Text.RichEditTextDocument")
interface ITextDocument2_Base : IInspectable
{
extern(Windows):
	HRESULT get_AlignmentIncludesTrailingWhitespace(bool* return_value);
	HRESULT set_AlignmentIncludesTrailingWhitespace(bool value);
	HRESULT get_IgnoreTrailingCharacterSpacing(bool* return_value);
	HRESULT set_IgnoreTrailingCharacterSpacing(bool value);
}
interface ITextDocument2 : ITextDocument2_Base, Windows.UI.Text.ITextDocument {}

@uuid("2cf8cfa6-4676-498a-93f5-bbdbfc0bd883")
interface ITextParagraphFormat : IInspectable
{
extern(Windows):
	HRESULT get_Alignment(Windows.UI.Text.ParagraphAlignment* return_value);
	HRESULT set_Alignment(Windows.UI.Text.ParagraphAlignment value);
	HRESULT get_FirstLineIndent(FLOAT* return_value);
	HRESULT get_KeepTogether(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_KeepTogether(Windows.UI.Text.FormatEffect value);
	HRESULT get_KeepWithNext(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_KeepWithNext(Windows.UI.Text.FormatEffect value);
	HRESULT get_LeftIndent(FLOAT* return_value);
	HRESULT get_LineSpacing(FLOAT* return_value);
	HRESULT get_LineSpacingRule(Windows.UI.Text.LineSpacingRule* return_value);
	HRESULT get_ListAlignment(Windows.UI.Text.MarkerAlignment* return_value);
	HRESULT set_ListAlignment(Windows.UI.Text.MarkerAlignment value);
	HRESULT get_ListLevelIndex(INT32* return_value);
	HRESULT set_ListLevelIndex(INT32 value);
	HRESULT get_ListStart(INT32* return_value);
	HRESULT set_ListStart(INT32 value);
	HRESULT get_ListStyle(Windows.UI.Text.MarkerStyle* return_value);
	HRESULT set_ListStyle(Windows.UI.Text.MarkerStyle value);
	HRESULT get_ListTab(FLOAT* return_value);
	HRESULT set_ListTab(FLOAT value);
	HRESULT get_ListType(Windows.UI.Text.MarkerType* return_value);
	HRESULT set_ListType(Windows.UI.Text.MarkerType value);
	HRESULT get_NoLineNumber(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_NoLineNumber(Windows.UI.Text.FormatEffect value);
	HRESULT get_PageBreakBefore(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_PageBreakBefore(Windows.UI.Text.FormatEffect value);
	HRESULT get_RightIndent(FLOAT* return_value);
	HRESULT set_RightIndent(FLOAT value);
	HRESULT get_RightToLeft(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_RightToLeft(Windows.UI.Text.FormatEffect value);
	HRESULT get_Style(Windows.UI.Text.ParagraphStyle* return_value);
	HRESULT set_Style(Windows.UI.Text.ParagraphStyle value);
	HRESULT get_SpaceAfter(FLOAT* return_value);
	HRESULT set_SpaceAfter(FLOAT value);
	HRESULT get_SpaceBefore(FLOAT* return_value);
	HRESULT set_SpaceBefore(FLOAT value);
	HRESULT get_WidowControl(Windows.UI.Text.FormatEffect* return_value);
	HRESULT set_WidowControl(Windows.UI.Text.FormatEffect value);
	HRESULT get_TabCount(INT32* return_value);
	HRESULT abi_AddTab(FLOAT position, Windows.UI.Text.TabAlignment align_, Windows.UI.Text.TabLeader leader);
	HRESULT abi_ClearAllTabs();
	HRESULT abi_DeleteTab(FLOAT position);
	HRESULT abi_GetClone(Windows.UI.Text.ITextParagraphFormat* return_value);
	HRESULT abi_GetTab(INT32 index, FLOAT* out_position, Windows.UI.Text.TabAlignment* out_align_, Windows.UI.Text.TabLeader* out_leader);
	HRESULT abi_IsEqual(Windows.UI.Text.ITextParagraphFormat format, bool* return_value);
	HRESULT abi_SetClone(Windows.UI.Text.ITextParagraphFormat format);
	HRESULT abi_SetIndents(FLOAT start, FLOAT left, FLOAT right);
	HRESULT abi_SetLineSpacing(Windows.UI.Text.LineSpacingRule rule, FLOAT spacing);
}

@uuid("5b9e4e57-c072-42a0-8945-af503ee54768")
interface ITextRange : IInspectable
{
extern(Windows):
	HRESULT get_Character(WCHAR* return_value);
	HRESULT set_Character(WCHAR value);
	HRESULT get_CharacterFormat(Windows.UI.Text.ITextCharacterFormat* return_value);
	HRESULT set_CharacterFormat(Windows.UI.Text.ITextCharacterFormat value);
	HRESULT get_FormattedText(Windows.UI.Text.ITextRange* return_value);
	HRESULT set_FormattedText(Windows.UI.Text.ITextRange value);
	HRESULT get_EndPosition(INT32* return_value);
	HRESULT set_EndPosition(INT32 value);
	HRESULT get_Gravity(Windows.UI.Text.RangeGravity* return_value);
	HRESULT set_Gravity(Windows.UI.Text.RangeGravity value);
	HRESULT get_Length(INT32* return_length);
	HRESULT get_Link(HSTRING* return_value);
	HRESULT set_Link(HSTRING value);
	HRESULT get_ParagraphFormat(Windows.UI.Text.ITextParagraphFormat* return_value);
	HRESULT set_ParagraphFormat(Windows.UI.Text.ITextParagraphFormat value);
	HRESULT get_StartPosition(INT32* return_value);
	HRESULT set_StartPosition(INT32 value);
	HRESULT get_StoryLength(INT32* return_value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT abi_CanPaste(INT32 format, bool* return_value);
	HRESULT abi_ChangeCase(Windows.UI.Text.LetterCase value);
	HRESULT abi_Collapse(bool value);
	HRESULT abi_Copy();
	HRESULT abi_Cut();
	HRESULT abi_Delete(Windows.UI.Text.TextRangeUnit unit, INT32 count, INT32* return_delta);
	HRESULT abi_EndOf(Windows.UI.Text.TextRangeUnit unit, bool extend, INT32* return_delta);
	HRESULT abi_Expand(Windows.UI.Text.TextRangeUnit unit, INT32* return_delta);
	HRESULT abi_FindText(HSTRING value, INT32 scanLength, Windows.UI.Text.FindOptions options, INT32* return_length);
	HRESULT abi_GetCharacterUtf32(UINT32* out_value, INT32 offset);
	HRESULT abi_GetClone(Windows.UI.Text.ITextRange* return_value);
	HRESULT abi_GetIndex(Windows.UI.Text.TextRangeUnit unit, INT32* return_index);
	HRESULT abi_GetPoint(Windows.UI.Text.HorizontalCharacterAlignment horizontalAlign, Windows.UI.Text.VerticalCharacterAlignment verticalAlign, Windows.UI.Text.PointOptions options, Windows.Foundation.Point* out_point);
	HRESULT abi_GetRect(Windows.UI.Text.PointOptions options, Windows.Foundation.Rect* out_rect, INT32* out_hit);
	HRESULT abi_GetText(Windows.UI.Text.TextGetOptions options, HSTRING* out_value);
	HRESULT abi_GetTextViaStream(Windows.UI.Text.TextGetOptions options, Windows.Storage.Streams.IRandomAccessStream value);
	HRESULT abi_InRange(Windows.UI.Text.ITextRange range, bool* return_value);
	HRESULT abi_InsertImage(INT32 width, INT32 height, INT32 ascent, Windows.UI.Text.VerticalCharacterAlignment verticalAlign, HSTRING alternateText, Windows.Storage.Streams.IRandomAccessStream value);
	HRESULT abi_InStory(Windows.UI.Text.ITextRange range, bool* return_value);
	HRESULT abi_IsEqual(Windows.UI.Text.ITextRange range, bool* return_value);
	HRESULT abi_Move(Windows.UI.Text.TextRangeUnit unit, INT32 count, INT32* return_delta);
	HRESULT abi_MoveEnd(Windows.UI.Text.TextRangeUnit unit, INT32 count, INT32* return_delta);
	HRESULT abi_MoveStart(Windows.UI.Text.TextRangeUnit unit, INT32 count, INT32* return_delta);
	HRESULT abi_Paste(INT32 format);
	HRESULT abi_ScrollIntoView(Windows.UI.Text.PointOptions value);
	HRESULT abi_MatchSelection();
	HRESULT abi_SetIndex(Windows.UI.Text.TextRangeUnit unit, INT32 index, bool extend);
	HRESULT abi_SetPoint(Windows.Foundation.Point point, Windows.UI.Text.PointOptions options, bool extend);
	HRESULT abi_SetRange(INT32 startPosition, INT32 endPosition);
	HRESULT abi_SetText(Windows.UI.Text.TextSetOptions options, HSTRING value);
	HRESULT abi_SetTextViaStream(Windows.UI.Text.TextSetOptions options, Windows.Storage.Streams.IRandomAccessStream value);
	HRESULT abi_StartOf(Windows.UI.Text.TextRangeUnit unit, bool extend, INT32* return_delta);
}

@uuid("a6d36724-f28f-430a-b2cf-c343671ec0e9")
interface ITextSelection_Base : IInspectable
{
extern(Windows):
	HRESULT get_Options(Windows.UI.Text.SelectionOptions* return_value);
	HRESULT set_Options(Windows.UI.Text.SelectionOptions value);
	HRESULT get_Type(Windows.UI.Text.SelectionType* return_value);
	HRESULT abi_EndKey(Windows.UI.Text.TextRangeUnit unit, bool extend, INT32* return_delta);
	HRESULT abi_HomeKey(Windows.UI.Text.TextRangeUnit unit, bool extend, INT32* return_delta);
	HRESULT abi_MoveDown(Windows.UI.Text.TextRangeUnit unit, INT32 count, bool extend, INT32* return_delta);
	HRESULT abi_MoveLeft(Windows.UI.Text.TextRangeUnit unit, INT32 count, bool extend, INT32* return_delta);
	HRESULT abi_MoveRight(Windows.UI.Text.TextRangeUnit unit, INT32 count, bool extend, INT32* return_delta);
	HRESULT abi_MoveUp(Windows.UI.Text.TextRangeUnit unit, INT32 count, bool extend, INT32* return_delta);
	HRESULT abi_TypeText(HSTRING value);
}
interface ITextSelection : ITextSelection_Base, Windows.UI.Text.ITextRange {}

interface FontWeights : Windows.UI.Text.IFontWeights
{
}

interface RichEditTextDocument : Windows.UI.Text.ITextDocument, Windows.UI.Text.ITextDocument2
{
extern(Windows):
	final Windows.UI.Text.CaretType CaretType()
	{
		Windows.UI.Text.CaretType _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).get_CaretType(&_ret));
		return _ret;
	}
	final void CaretType(Windows.UI.Text.CaretType value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).set_CaretType(value));
	}
	final FLOAT DefaultTabStop()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).get_DefaultTabStop(&_ret));
		return _ret;
	}
	final void DefaultTabStop(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).set_DefaultTabStop(value));
	}
	final Windows.UI.Text.ITextSelection Selection()
	{
		Windows.UI.Text.ITextSelection _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).get_Selection(&_ret));
		return _ret;
	}
	final UINT32 UndoLimit()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).get_UndoLimit(&_ret));
		return _ret;
	}
	final void UndoLimit(UINT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).set_UndoLimit(value));
	}
	final bool CanCopy()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_CanCopy(&_ret));
		return _ret;
	}
	final bool CanPaste()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_CanPaste(&_ret));
		return _ret;
	}
	final bool CanRedo()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_CanRedo(&_ret));
		return _ret;
	}
	final bool CanUndo()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_CanUndo(&_ret));
		return _ret;
	}
	final INT32 ApplyDisplayUpdates()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_ApplyDisplayUpdates(&_ret));
		return _ret;
	}
	final INT32 BatchDisplayUpdates()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_BatchDisplayUpdates(&_ret));
		return _ret;
	}
	final void BeginUndoGroup()
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_BeginUndoGroup());
	}
	final void EndUndoGroup()
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_EndUndoGroup());
	}
	final Windows.UI.Text.ITextCharacterFormat GetDefaultCharacterFormat()
	{
		Windows.UI.Text.ITextCharacterFormat _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_GetDefaultCharacterFormat(&_ret));
		return _ret;
	}
	final Windows.UI.Text.ITextParagraphFormat GetDefaultParagraphFormat()
	{
		Windows.UI.Text.ITextParagraphFormat _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_GetDefaultParagraphFormat(&_ret));
		return _ret;
	}
	final Windows.UI.Text.ITextRange GetRange(INT32 startPosition, INT32 endPosition)
	{
		Windows.UI.Text.ITextRange _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_GetRange(startPosition, endPosition, &_ret));
		return _ret;
	}
	final Windows.UI.Text.ITextRange GetRangeFromPoint(Windows.Foundation.Point point, Windows.UI.Text.PointOptions options)
	{
		Windows.UI.Text.ITextRange _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_GetRangeFromPoint(point, options, &_ret));
		return _ret;
	}
	final void GetText(Windows.UI.Text.TextGetOptions options, HSTRING* out_value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_GetText(options, out_value));
	}
	final void LoadFromStream(Windows.UI.Text.TextSetOptions options, Windows.Storage.Streams.IRandomAccessStream value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_LoadFromStream(options, value));
	}
	final void Redo()
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_Redo());
	}
	final void SaveToStream(Windows.UI.Text.TextGetOptions options, Windows.Storage.Streams.IRandomAccessStream value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_SaveToStream(options, value));
	}
	final void SetDefaultCharacterFormat(Windows.UI.Text.ITextCharacterFormat value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_SetDefaultCharacterFormat(value));
	}
	final void SetDefaultParagraphFormat(Windows.UI.Text.ITextParagraphFormat value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_SetDefaultParagraphFormat(value));
	}
	final void SetText(Windows.UI.Text.TextSetOptions options, HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_SetText(options, value));
	}
	final void Undo()
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument).abi_Undo());
	}
	final bool AlignmentIncludesTrailingWhitespace()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument2).get_AlignmentIncludesTrailingWhitespace(&_ret));
		return _ret;
	}
	final void AlignmentIncludesTrailingWhitespace(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument2).set_AlignmentIncludesTrailingWhitespace(value));
	}
	final bool IgnoreTrailingCharacterSpacing()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument2).get_IgnoreTrailingCharacterSpacing(&_ret));
		return _ret;
	}
	final void IgnoreTrailingCharacterSpacing(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Text.ITextDocument2).set_IgnoreTrailingCharacterSpacing(value));
	}
}

interface TextConstants
{
}

enum CaretType
{
	Normal = 0,
	Null = 1
}

@bitflags
enum FindOptions
{
	None = 0x0,
	Word = 0x2,
	Case = 0x4
}

enum FontStretch
{
	Undefined = 0,
	UltraCondensed = 1,
	ExtraCondensed = 2,
	Condensed = 3,
	SemiCondensed = 4,
	Normal = 5,
	SemiExpanded = 6,
	Expanded = 7,
	ExtraExpanded = 8,
	UltraExpanded = 9
}

enum FontStyle
{
	Normal = 0,
	Oblique = 1,
	Italic = 2
}

enum FormatEffect
{
	Off = 0,
	On = 1,
	Toggle = 2,
	Undefined = 3
}

enum HorizontalCharacterAlignment
{
	Left = 0,
	Right = 1,
	Center = 2
}

enum LetterCase
{
	Lower = 0,
	Upper = 1
}

enum LineSpacingRule
{
	Undefined = 0,
	Single = 1,
	OneAndHalf = 2,
	Double = 3,
	AtLeast = 4,
	Exactly = 5,
	Multiple = 6,
	Percent = 7
}

enum LinkType
{
	Undefined = 0,
	NotALink = 1,
	ClientLink = 2,
	FriendlyLinkName = 3,
	FriendlyLinkAddress = 4,
	AutoLink = 5,
	AutoLinkEmail = 6,
	AutoLinkPhone = 7,
	AutoLinkPath = 8
}

enum MarkerAlignment
{
	Undefined = 0,
	Left = 1,
	Center = 2,
	Right = 3
}

enum MarkerStyle
{
	Undefined = 0,
	Parenthesis = 1,
	Parentheses = 2,
	Period = 3,
	Plain = 4,
	Minus = 5,
	NoNumber = 6
}

enum MarkerType
{
	Undefined = 0,
	None = 1,
	Bullet = 2,
	Arabic = 3,
	LowercaseEnglishLetter = 4,
	UppercaseEnglishLetter = 5,
	LowercaseRoman = 6,
	UppercaseRoman = 7,
	UnicodeSequence = 8,
	CircledNumber = 9,
	BlackCircleWingding = 10,
	WhiteCircleWingding = 11,
	ArabicWide = 12,
	SimplifiedChinese = 13,
	TraditionalChinese = 14,
	JapanSimplifiedChinese = 15,
	JapanKorea = 16,
	ArabicDictionary = 17,
	ArabicAbjad = 18,
	Hebrew = 19,
	ThaiAlphabetic = 20,
	ThaiNumeric = 21,
	DevanagariVowel = 22,
	DevanagariConsonant = 23,
	DevanagariNumeric = 24
}

enum ParagraphAlignment
{
	Undefined = 0,
	Left = 1,
	Center = 2,
	Right = 3,
	Justify = 4
}

enum ParagraphStyle
{
	Undefined = 0,
	None = 1,
	Normal = 2,
	Heading1 = 3,
	Heading2 = 4,
	Heading3 = 5,
	Heading4 = 6,
	Heading5 = 7,
	Heading6 = 8,
	Heading7 = 9,
	Heading8 = 10,
	Heading9 = 11
}

@bitflags
enum PointOptions
{
	None = 0x0,
	IncludeInset = 0x1,
	Start = 0x20,
	ClientCoordinates = 0x100,
	AllowOffClient = 0x200,
	Transform = 0x400,
	NoHorizontalScroll = 0x10000,
	NoVerticalScroll = 0x40000
}

enum RangeGravity
{
	UIBehavior = 0,
	Backward = 1,
	Forward = 2,
	Inward = 3,
	Outward = 4
}

@bitflags
enum SelectionOptions
{
	StartActive = 0x1,
	AtEndOfLine = 0x2,
	Overtype = 0x4,
	Active = 0x8,
	Replace = 0x10
}

enum SelectionType
{
	None = 0,
	InsertionPoint = 1,
	Normal = 2,
	InlineShape = 7,
	Shape = 8
}

enum TabAlignment
{
	Left = 0,
	Center = 1,
	Right = 2,
	Decimal = 3,
	Bar = 4
}

enum TabLeader
{
	Spaces = 0,
	Dots = 1,
	Dashes = 2,
	Lines = 3,
	ThickLines = 4,
	Equals = 5
}

@bitflags
enum TextDecorations
{
	None = 0x0,
	Underline = 0x1,
	Strikethrough = 0x2
}

@bitflags
enum TextGetOptions
{
	None = 0x0,
	AdjustCrlf = 0x1,
	UseCrlf = 0x2,
	UseObjectText = 0x4,
	AllowFinalEop = 0x8,
	NoHidden = 0x20,
	IncludeNumbering = 0x40,
	FormatRtf = 0x2000,
	UseLf = 0x1000000
}

enum TextRangeUnit
{
	Character = 0,
	Word = 1,
	Sentence = 2,
	Paragraph = 3,
	Line = 4,
	Story = 5,
	Screen = 6,
	Section = 7,
	Window = 8,
	CharacterFormat = 9,
	ParagraphFormat = 10,
	Object = 11,
	HardParagraph = 12,
	Cluster = 13,
	Bold = 14,
	Italic = 15,
	Underline = 16,
	Strikethrough = 17,
	ProtectedText = 18,
	Link = 19,
	SmallCaps = 20,
	AllCaps = 21,
	Hidden = 22,
	Outline = 23,
	Shadow = 24,
	Imprint = 25,
	Disabled = 26,
	Revised = 27,
	Subscript = 28,
	Superscript = 29,
	FontBound = 30,
	LinkProtected = 31
}

enum TextScript
{
	Undefined = 0,
	Ansi = 1,
	EastEurope = 2,
	Cyrillic = 3,
	Greek = 4,
	Turkish = 5,
	Hebrew = 6,
	Arabic = 7,
	Baltic = 8,
	Vietnamese = 9,
	Default = 10,
	Symbol = 11,
	Thai = 12,
	ShiftJis = 13,
	GB2312 = 14,
	Hangul = 15,
	Big5 = 16,
	PC437 = 17,
	Oem = 18,
	Mac = 19,
	Armenian = 20,
	Syriac = 21,
	Thaana = 22,
	Devanagari = 23,
	Bengali = 24,
	Gurmukhi = 25,
	Gujarati = 26,
	Oriya = 27,
	Tamil = 28,
	Telugu = 29,
	Kannada = 30,
	Malayalam = 31,
	Sinhala = 32,
	Lao = 33,
	Tibetan = 34,
	Myanmar = 35,
	Georgian = 36,
	Jamo = 37,
	Ethiopic = 38,
	Cherokee = 39,
	Aboriginal = 40,
	Ogham = 41,
	Runic = 42,
	Khmer = 43,
	Mongolian = 44,
	Braille = 45,
	Yi = 46,
	Limbu = 47,
	TaiLe = 48,
	NewTaiLue = 49,
	SylotiNagri = 50,
	Kharoshthi = 51,
	Kayahli = 52,
	UnicodeSymbol = 53,
	Emoji = 54,
	Glagolitic = 55,
	Lisu = 56,
	Vai = 57,
	NKo = 58,
	Osmanya = 59,
	PhagsPa = 60,
	Gothic = 61,
	Deseret = 62,
	Tifinagh = 63
}

@bitflags
enum TextSetOptions
{
	None = 0x0,
	UnicodeBidi = 0x1,
	Unlink = 0x8,
	Unhide = 0x10,
	CheckTextLimit = 0x20,
	FormatRtf = 0x2000,
	ApplyRtfDocumentDefaults = 0x4000
}

enum UnderlineType
{
	Undefined = 0,
	None = 1,
	Single = 2,
	Words = 3,
	Double = 4,
	Dotted = 5,
	Dash = 6,
	DashDot = 7,
	DashDotDot = 8,
	Wave = 9,
	Thick = 10,
	Thin = 11,
	DoubleWave = 12,
	HeavyWave = 13,
	LongDash = 14,
	ThickDash = 15,
	ThickDashDot = 16,
	ThickDashDotDot = 17,
	ThickDotted = 18,
	ThickLongDash = 19
}

enum VerticalCharacterAlignment
{
	Top = 0,
	Baseline = 1,
	Bottom = 2
}