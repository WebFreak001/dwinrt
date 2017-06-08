module Windows.Media.Ocr;

import dwinrt;

@uuid("5a14bc41-5b76-3140-b680-8825562683ac")
@WinrtFactory("Windows.Media.Ocr.OcrEngine")
interface IOcrEngine : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RecognizeAsync(Windows.Graphics.Imaging.SoftwareBitmap bitmap, Windows.Foundation.IAsyncOperation!(Windows.Media.Ocr.OcrResult)* return_result);
	HRESULT get_RecognizerLanguage(Windows.Globalization.Language* return_value);
}

@uuid("5bffa85a-3384-3540-9940-699120d428a8")
@WinrtFactory("Windows.Media.Ocr.OcrEngine")
interface IOcrEngineStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxImageDimension(UINT32* return_value);
	HRESULT get_AvailableRecognizerLanguages(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language)* return_value);
	HRESULT abi_IsLanguageSupported(Windows.Globalization.Language language, bool* return_result);
	HRESULT abi_TryCreateFromLanguage(Windows.Globalization.Language language, Windows.Media.Ocr.OcrEngine* return_result);
	HRESULT abi_TryCreateFromUserProfileLanguages(Windows.Media.Ocr.OcrEngine* return_result);
}

@uuid("0043a16f-e31f-3a24-899c-d444bd088124")
@WinrtFactory("Windows.Media.Ocr.OcrLine")
interface IOcrLine : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Words(Windows.Foundation.Collections.IVectorView!(Windows.Media.Ocr.OcrWord)* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("9bd235b2-175b-3d6a-92e2-388c206e2f63")
@WinrtFactory("Windows.Media.Ocr.OcrResult")
interface IOcrResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Lines(Windows.Foundation.Collections.IVectorView!(Windows.Media.Ocr.OcrLine)* return_value);
	HRESULT get_TextAngle(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("3c2a477a-5cd9-3525-ba2a-23d1e0a68a1d")
@WinrtFactory("Windows.Media.Ocr.OcrWord")
interface IOcrWord : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BoundingRect(Windows.Foundation.Rect* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

interface OcrEngine : Windows.Media.Ocr.IOcrEngine
{
}

interface OcrLine : Windows.Media.Ocr.IOcrLine
{
}

interface OcrResult : Windows.Media.Ocr.IOcrResult
{
}

interface OcrWord : Windows.Media.Ocr.IOcrWord
{
}