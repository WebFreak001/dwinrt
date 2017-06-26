module Windows.Data.Text;

import dwinrt;

struct TextSegment
{
	UINT32 StartPosition;
	UINT32 Length;
}

@uuid("3a3dfc9c-aede-4dc7-9e6c-41c044bd3592")
interface SelectableWordSegmentsTokenizingHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.Collections.IIterable!(Windows.Data.Text.SelectableWordSegment) precedingWords, Windows.Foundation.Collections.IIterable!(Windows.Data.Text.SelectableWordSegment) words);
}

@uuid("a5dd6357-bf2a-4c4f-a31f-29e71c6f8b35")
interface WordSegmentsTokenizingHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.Collections.IIterable!(Windows.Data.Text.WordSegment) precedingWords, Windows.Foundation.Collections.IIterable!(Windows.Data.Text.WordSegment) words);
}

@uuid("47396c1e-51b9-4207-9146-248e636a1d1d")
@WinrtFactory("Windows.Data.Text.AlternateWordForm")
interface IAlternateWordForm : IInspectable
{
extern(Windows):
	HRESULT get_SourceTextSegment(Windows.Data.Text.TextSegment* return_value);
	HRESULT get_AlternateText(HSTRING* return_value);
	HRESULT get_NormalizationFormat(Windows.Data.Text.AlternateNormalizationFormat* return_value);
}

@uuid("916a4cb7-8aa7-4c78-b374-5dedb752e60b")
@WinrtFactory("Windows.Data.Text.SelectableWordSegment")
interface ISelectableWordSegment : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT get_SourceTextSegment(Windows.Data.Text.TextSegment* return_value);
}

@uuid("f6dc31e7-4b13-45c5-8897-7d71269e085d")
@WinrtFactory("Windows.Data.Text.SelectableWordsSegmenter")
interface ISelectableWordsSegmenter : IInspectable
{
extern(Windows):
	HRESULT get_ResolvedLanguage(HSTRING* return_value);
	HRESULT abi_GetTokenAt(HSTRING text, UINT32 startIndex, Windows.Data.Text.SelectableWordSegment* return_result);
	HRESULT abi_GetTokens(HSTRING text, Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.SelectableWordSegment)* return_result);
	HRESULT abi_Tokenize(HSTRING text, UINT32 startIndex, Windows.Data.Text.SelectableWordSegmentsTokenizingHandler handler);
}

@uuid("8c7a7648-6057-4339-bc70-f210010a4150")
@WinrtFactory("Windows.Data.Text.SelectableWordsSegmenter")
interface ISelectableWordsSegmenterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithLanguage(HSTRING language, Windows.Data.Text.SelectableWordsSegmenter* return_result);
}

@uuid("6a1cab51-1fb2-4909-80b8-35731a2b3e7f")
@WinrtFactory("Windows.Data.Text.SemanticTextQuery")
interface ISemanticTextQuery : IInspectable
{
extern(Windows):
	HRESULT abi_Find(HSTRING content, Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment)* return_result);
	HRESULT abi_FindInProperty(HSTRING propertyContent, HSTRING propertyName, Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment)* return_result);
}

@uuid("238c0503-f995-4587-8777-a2b7d80acfef")
@WinrtFactory("Windows.Data.Text.SemanticTextQuery")
interface ISemanticTextQueryFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING aqsFilter, Windows.Data.Text.SemanticTextQuery* return_result);
	HRESULT abi_CreateWithLanguage(HSTRING aqsFilter, HSTRING filterLanguage, Windows.Data.Text.SemanticTextQuery* return_result);
}

@uuid("03606a5e-2aa9-4ab6-af8b-a562b63a8992")
@WinrtFactory("Windows.Data.Text.TextConversionGenerator")
interface ITextConversionGenerator : IInspectable
{
extern(Windows):
	HRESULT get_ResolvedLanguage(HSTRING* return_value);
	HRESULT get_LanguageAvailableButNotInstalled(bool* return_value);
	HRESULT abi_GetCandidatesAsync(HSTRING input, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_result);
	HRESULT abi_GetCandidatesWithMaxCountAsync(HSTRING input, UINT32 maxCandidates, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_result);
}

@uuid("fcaa3781-3083-49ab-be15-56dfbbb74d6f")
@WinrtFactory("Windows.Data.Text.TextConversionGenerator")
interface ITextConversionGeneratorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING languageTag, Windows.Data.Text.TextConversionGenerator* return_result);
}

@uuid("9362a40a-9b7a-4569-94cf-d84f2f38cf9b")
@WinrtFactory("Windows.Data.Text.TextPhoneme")
interface ITextPhoneme : IInspectable
{
extern(Windows):
	HRESULT get_DisplayText(HSTRING* return_value);
	HRESULT get_ReadingText(HSTRING* return_value);
}

@uuid("5eacab07-abf1-4cb6-9d9e-326f2b468756")
@WinrtFactory("Windows.Data.Text.TextPredictionGenerator")
interface ITextPredictionGenerator : IInspectable
{
extern(Windows):
	HRESULT get_ResolvedLanguage(HSTRING* return_value);
	HRESULT get_LanguageAvailableButNotInstalled(bool* return_value);
	HRESULT abi_GetCandidatesAsync(HSTRING input, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_result);
	HRESULT abi_GetCandidatesWithMaxCountAsync(HSTRING input, UINT32 maxCandidates, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_result);
}

@uuid("7257b416-8ba2-4751-9d30-9d85435653a2")
@WinrtFactory("Windows.Data.Text.TextPredictionGenerator")
interface ITextPredictionGeneratorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING languageTag, Windows.Data.Text.TextPredictionGenerator* return_result);
}

@uuid("51e7f514-9c51-4d86-ae1b-b498fbad8313")
@WinrtFactory("Windows.Data.Text.TextReverseConversionGenerator")
interface ITextReverseConversionGenerator : IInspectable
{
extern(Windows):
	HRESULT get_ResolvedLanguage(HSTRING* return_value);
	HRESULT get_LanguageAvailableButNotInstalled(bool* return_value);
	HRESULT abi_ConvertBackAsync(HSTRING input, Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
}

@uuid("1aafd2ec-85d6-46fd-828a-3a4830fa6e18")
@WinrtFactory("Windows.Data.Text.TextReverseConversionGenerator")
interface ITextReverseConversionGenerator2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetPhonemesAsync(HSTRING input, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextPhoneme))* return_result);
}

@uuid("63bed326-1fda-41f6-89d5-23ddea3c729a")
@WinrtFactory("Windows.Data.Text.TextReverseConversionGenerator")
interface ITextReverseConversionGeneratorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING languageTag, Windows.Data.Text.TextReverseConversionGenerator* return_result);
}

@uuid("97909e87-9291-4f91-b6c8-b6e359d7a7fb")
@WinrtFactory("Windows.Data.Text.UnicodeCharacters")
interface IUnicodeCharactersStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetCodepointFromSurrogatePair(UINT32 highSurrogate, UINT32 lowSurrogate, UINT32* return_codepoint);
	HRESULT abi_GetSurrogatePairFromCodepoint(UINT32 codepoint, wchar* out_highSurrogate, wchar* out_lowSurrogate);
	HRESULT abi_IsHighSurrogate(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsLowSurrogate(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsSupplementary(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsNoncharacter(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsWhitespace(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsAlphabetic(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsCased(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsUppercase(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsLowercase(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsIdStart(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsIdContinue(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsGraphemeBase(UINT32 codepoint, bool* return_value);
	HRESULT abi_IsGraphemeExtend(UINT32 codepoint, bool* return_value);
	HRESULT abi_GetNumericType(UINT32 codepoint, Windows.Data.Text.UnicodeNumericType* return_value);
	HRESULT abi_GetGeneralCategory(UINT32 codepoint, Windows.Data.Text.UnicodeGeneralCategory* return_value);
}

@uuid("d2d4ba6d-987c-4cc0-b6bd-d49a11b38f9a")
@WinrtFactory("Windows.Data.Text.WordSegment")
interface IWordSegment : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT get_SourceTextSegment(Windows.Data.Text.TextSegment* return_value);
	HRESULT get_AlternateForms(Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.AlternateWordForm)* return_value);
}

@uuid("86b4d4d1-b2fe-4e34-a81d-66640300454f")
@WinrtFactory("Windows.Data.Text.WordsSegmenter")
interface IWordsSegmenter : IInspectable
{
extern(Windows):
	HRESULT get_ResolvedLanguage(HSTRING* return_value);
	HRESULT abi_GetTokenAt(HSTRING text, UINT32 startIndex, Windows.Data.Text.WordSegment* return_result);
	HRESULT abi_GetTokens(HSTRING text, Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.WordSegment)* return_result);
	HRESULT abi_Tokenize(HSTRING text, UINT32 startIndex, Windows.Data.Text.WordSegmentsTokenizingHandler handler);
}

@uuid("e6977274-fc35-455c-8bfb-6d7f4653ca97")
@WinrtFactory("Windows.Data.Text.WordsSegmenter")
interface IWordsSegmenterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithLanguage(HSTRING language, Windows.Data.Text.WordsSegmenter* return_result);
}

interface AlternateWordForm : Windows.Data.Text.IAlternateWordForm
{
extern(Windows):
	final Windows.Data.Text.TextSegment SourceTextSegment()
	{
		Windows.Data.Text.TextSegment _ret;
		Debug.OK(this.as!(Windows.Data.Text.IAlternateWordForm).get_SourceTextSegment(&_ret));
		return _ret;
	}
	final HSTRING AlternateText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Text.IAlternateWordForm).get_AlternateText(&_ret));
		return _ret;
	}
	final Windows.Data.Text.AlternateNormalizationFormat NormalizationFormat()
	{
		Windows.Data.Text.AlternateNormalizationFormat _ret;
		Debug.OK(this.as!(Windows.Data.Text.IAlternateWordForm).get_NormalizationFormat(&_ret));
		return _ret;
	}
}

interface SelectableWordSegment : Windows.Data.Text.ISelectableWordSegment
{
extern(Windows):
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Text.ISelectableWordSegment).get_Text(&_ret));
		return _ret;
	}
	final Windows.Data.Text.TextSegment SourceTextSegment()
	{
		Windows.Data.Text.TextSegment _ret;
		Debug.OK(this.as!(Windows.Data.Text.ISelectableWordSegment).get_SourceTextSegment(&_ret));
		return _ret;
	}
}

interface SelectableWordsSegmenter : Windows.Data.Text.ISelectableWordsSegmenter
{
extern(Windows):
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Text.ISelectableWordsSegmenter).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final Windows.Data.Text.SelectableWordSegment GetTokenAt(HSTRING text, UINT32 startIndex)
	{
		Windows.Data.Text.SelectableWordSegment _ret;
		Debug.OK(this.as!(Windows.Data.Text.ISelectableWordsSegmenter).abi_GetTokenAt(text, startIndex, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.SelectableWordSegment) GetTokens(HSTRING text)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.SelectableWordSegment) _ret;
		Debug.OK(this.as!(Windows.Data.Text.ISelectableWordsSegmenter).abi_GetTokens(text, &_ret));
		return _ret;
	}
	final void Tokenize(HSTRING text, UINT32 startIndex, Windows.Data.Text.SelectableWordSegmentsTokenizingHandler handler)
	{
		Debug.OK(this.as!(Windows.Data.Text.ISelectableWordsSegmenter).abi_Tokenize(text, startIndex, handler));
	}
}

interface SemanticTextQuery : Windows.Data.Text.ISemanticTextQuery
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment) Find(HSTRING content)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment) _ret;
		Debug.OK(this.as!(Windows.Data.Text.ISemanticTextQuery).abi_Find(content, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment) FindInProperty(HSTRING propertyContent, HSTRING propertyName)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextSegment) _ret;
		Debug.OK(this.as!(Windows.Data.Text.ISemanticTextQuery).abi_FindInProperty(propertyContent, propertyName, &_ret));
		return _ret;
	}
}

interface TextConversionGenerator : Windows.Data.Text.ITextConversionGenerator
{
extern(Windows):
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextConversionGenerator).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final bool LanguageAvailableButNotInstalled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextConversionGenerator).get_LanguageAvailableButNotInstalled(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) GetCandidatesAsync(HSTRING input)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextConversionGenerator).abi_GetCandidatesAsync(input, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) GetCandidatesWithMaxCountAsync(HSTRING input, UINT32 maxCandidates)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextConversionGenerator).abi_GetCandidatesWithMaxCountAsync(input, maxCandidates, &_ret));
		return _ret;
	}
}

interface TextPhoneme : Windows.Data.Text.ITextPhoneme
{
extern(Windows):
	final HSTRING DisplayText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextPhoneme).get_DisplayText(&_ret));
		return _ret;
	}
	final HSTRING ReadingText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextPhoneme).get_ReadingText(&_ret));
		return _ret;
	}
}

interface TextPredictionGenerator : Windows.Data.Text.ITextPredictionGenerator
{
extern(Windows):
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextPredictionGenerator).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final bool LanguageAvailableButNotInstalled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextPredictionGenerator).get_LanguageAvailableButNotInstalled(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) GetCandidatesAsync(HSTRING input)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextPredictionGenerator).abi_GetCandidatesAsync(input, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) GetCandidatesWithMaxCountAsync(HSTRING input, UINT32 maxCandidates)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextPredictionGenerator).abi_GetCandidatesWithMaxCountAsync(input, maxCandidates, &_ret));
		return _ret;
	}
}

interface TextReverseConversionGenerator : Windows.Data.Text.ITextReverseConversionGenerator, Windows.Data.Text.ITextReverseConversionGenerator2
{
extern(Windows):
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextReverseConversionGenerator).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final bool LanguageAvailableButNotInstalled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextReverseConversionGenerator).get_LanguageAvailableButNotInstalled(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) ConvertBackAsync(HSTRING input)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextReverseConversionGenerator).abi_ConvertBackAsync(input, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextPhoneme)) GetPhonemesAsync(HSTRING input)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.TextPhoneme)) _ret;
		Debug.OK(this.as!(Windows.Data.Text.ITextReverseConversionGenerator2).abi_GetPhonemesAsync(input, &_ret));
		return _ret;
	}
}

interface UnicodeCharacters
{
	private static Windows.Data.Text.IUnicodeCharactersStatics _staticInstance;
	public static Windows.Data.Text.IUnicodeCharactersStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Data.Text.IUnicodeCharactersStatics);
		return _staticInstance;
	}
	static UINT32 GetCodepointFromSurrogatePair(UINT32 highSurrogate, UINT32 lowSurrogate)
	{
		UINT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_GetCodepointFromSurrogatePair(highSurrogate, lowSurrogate, &_ret));
		return _ret;
	}
	static void GetSurrogatePairFromCodepoint(UINT32 codepoint, wchar* out_highSurrogate, wchar* out_lowSurrogate)
	{
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_GetSurrogatePairFromCodepoint(codepoint, out_highSurrogate, out_lowSurrogate));
	}
	static bool IsHighSurrogate(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsHighSurrogate(codepoint, &_ret));
		return _ret;
	}
	static bool IsLowSurrogate(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsLowSurrogate(codepoint, &_ret));
		return _ret;
	}
	static bool IsSupplementary(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsSupplementary(codepoint, &_ret));
		return _ret;
	}
	static bool IsNoncharacter(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsNoncharacter(codepoint, &_ret));
		return _ret;
	}
	static bool IsWhitespace(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsWhitespace(codepoint, &_ret));
		return _ret;
	}
	static bool IsAlphabetic(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsAlphabetic(codepoint, &_ret));
		return _ret;
	}
	static bool IsCased(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsCased(codepoint, &_ret));
		return _ret;
	}
	static bool IsUppercase(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsUppercase(codepoint, &_ret));
		return _ret;
	}
	static bool IsLowercase(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsLowercase(codepoint, &_ret));
		return _ret;
	}
	static bool IsIdStart(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsIdStart(codepoint, &_ret));
		return _ret;
	}
	static bool IsIdContinue(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsIdContinue(codepoint, &_ret));
		return _ret;
	}
	static bool IsGraphemeBase(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsGraphemeBase(codepoint, &_ret));
		return _ret;
	}
	static bool IsGraphemeExtend(UINT32 codepoint)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_IsGraphemeExtend(codepoint, &_ret));
		return _ret;
	}
	static Windows.Data.Text.UnicodeNumericType GetNumericType(UINT32 codepoint)
	{
		Windows.Data.Text.UnicodeNumericType _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_GetNumericType(codepoint, &_ret));
		return _ret;
	}
	static Windows.Data.Text.UnicodeGeneralCategory GetGeneralCategory(UINT32 codepoint)
	{
		Windows.Data.Text.UnicodeGeneralCategory _ret;
		Debug.OK(staticInstance.as!(Windows.Data.Text.IUnicodeCharactersStatics).abi_GetGeneralCategory(codepoint, &_ret));
		return _ret;
	}
}

interface WordSegment : Windows.Data.Text.IWordSegment
{
extern(Windows):
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Text.IWordSegment).get_Text(&_ret));
		return _ret;
	}
	final Windows.Data.Text.TextSegment SourceTextSegment()
	{
		Windows.Data.Text.TextSegment _ret;
		Debug.OK(this.as!(Windows.Data.Text.IWordSegment).get_SourceTextSegment(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.AlternateWordForm) AlternateForms()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.AlternateWordForm) _ret;
		Debug.OK(this.as!(Windows.Data.Text.IWordSegment).get_AlternateForms(&_ret));
		return _ret;
	}
}

interface WordsSegmenter : Windows.Data.Text.IWordsSegmenter
{
extern(Windows):
	final HSTRING ResolvedLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Data.Text.IWordsSegmenter).get_ResolvedLanguage(&_ret));
		return _ret;
	}
	final Windows.Data.Text.WordSegment GetTokenAt(HSTRING text, UINT32 startIndex)
	{
		Windows.Data.Text.WordSegment _ret;
		Debug.OK(this.as!(Windows.Data.Text.IWordsSegmenter).abi_GetTokenAt(text, startIndex, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.WordSegment) GetTokens(HSTRING text)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Data.Text.WordSegment) _ret;
		Debug.OK(this.as!(Windows.Data.Text.IWordsSegmenter).abi_GetTokens(text, &_ret));
		return _ret;
	}
	final void Tokenize(HSTRING text, UINT32 startIndex, Windows.Data.Text.WordSegmentsTokenizingHandler handler)
	{
		Debug.OK(this.as!(Windows.Data.Text.IWordsSegmenter).abi_Tokenize(text, startIndex, handler));
	}
}

enum AlternateNormalizationFormat
{
	NotNormalized = 0,
	Number = 1,
	Currency = 3,
	Date = 4,
	Time = 5
}

enum UnicodeGeneralCategory
{
	UppercaseLetter = 0,
	LowercaseLetter = 1,
	TitlecaseLetter = 2,
	ModifierLetter = 3,
	OtherLetter = 4,
	NonspacingMark = 5,
	SpacingCombiningMark = 6,
	EnclosingMark = 7,
	DecimalDigitNumber = 8,
	LetterNumber = 9,
	OtherNumber = 10,
	SpaceSeparator = 11,
	LineSeparator = 12,
	ParagraphSeparator = 13,
	Control = 14,
	Format = 15,
	Surrogate = 16,
	PrivateUse = 17,
	ConnectorPunctuation = 18,
	DashPunctuation = 19,
	OpenPunctuation = 20,
	ClosePunctuation = 21,
	InitialQuotePunctuation = 22,
	FinalQuotePunctuation = 23,
	OtherPunctuation = 24,
	MathSymbol = 25,
	CurrencySymbol = 26,
	ModifierSymbol = 27,
	OtherSymbol = 28,
	NotAssigned = 29
}

enum UnicodeNumericType
{
	None = 0,
	Decimal = 1,
	Digit = 2,
	Numeric = 3
}