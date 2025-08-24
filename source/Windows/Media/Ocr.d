module Windows.Media.Ocr;

import dwinrt;

@uuid("5a14bc41-5b76-3140-b680-8825562683ac")
@WinrtFactory("Windows.Media.Ocr.OcrEngine")
interface IOcrEngine : IInspectable
{
extern(Windows):
	HRESULT abi_RecognizeAsync(Windows.Graphics.Imaging.SoftwareBitmap bitmap, Windows.Foundation.IAsyncOperation!(Windows.Media.Ocr.OcrResult)* return_result);
	HRESULT get_RecognizerLanguage(Windows.Globalization.Language* return_value);
}

@uuid("5bffa85a-3384-3540-9940-699120d428a8")
@WinrtFactory("Windows.Media.Ocr.OcrEngine")
interface IOcrEngineStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_Words(Windows.Foundation.Collections.IVectorView!(Windows.Media.Ocr.OcrWord)* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("9bd235b2-175b-3d6a-92e2-388c206e2f63")
@WinrtFactory("Windows.Media.Ocr.OcrResult")
interface IOcrResult : IInspectable
{
extern(Windows):
	HRESULT get_Lines(Windows.Foundation.Collections.IVectorView!(Windows.Media.Ocr.OcrLine)* return_value);
	HRESULT get_TextAngle(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("3c2a477a-5cd9-3525-ba2a-23d1e0a68a1d")
@WinrtFactory("Windows.Media.Ocr.OcrWord")
interface IOcrWord : IInspectable
{
extern(Windows):
	HRESULT get_BoundingRect(Windows.Foundation.Rect* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

interface OcrEngine : Windows.Media.Ocr.IOcrEngine
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Ocr.OcrResult) RecognizeAsync(Windows.Graphics.Imaging.SoftwareBitmap bitmap)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Ocr.OcrResult) _ret;
		Debug.OK((cast(Windows.Media.Ocr.IOcrEngine)this.asInterface(uuid("5a14bc41-5b76-3140-b680-8825562683ac"))).abi_RecognizeAsync(bitmap, &_ret));
		return _ret;
	}
	final Windows.Globalization.Language RecognizerLanguage()
	{
		Windows.Globalization.Language _ret;
		Debug.OK((cast(Windows.Media.Ocr.IOcrEngine)this.asInterface(uuid("5a14bc41-5b76-3140-b680-8825562683ac"))).get_RecognizerLanguage(&_ret));
		return _ret;
	}

	private static Windows.Media.Ocr.IOcrEngineStatics _staticInstance;
	public static Windows.Media.Ocr.IOcrEngineStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Ocr.IOcrEngineStatics);
		return _staticInstance;
	}
	static UINT32 MaxImageDimension()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_MaxImageDimension(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language) AvailableRecognizerLanguages()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language) _ret;
		Debug.OK(staticInstance.get_AvailableRecognizerLanguages(&_ret));
		return _ret;
	}
	static bool IsLanguageSupported(Windows.Globalization.Language language)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsLanguageSupported(language, &_ret));
		return _ret;
	}
	static Windows.Media.Ocr.OcrEngine TryCreateFromLanguage(Windows.Globalization.Language language)
	{
		Windows.Media.Ocr.OcrEngine _ret;
		Debug.OK(staticInstance.abi_TryCreateFromLanguage(language, &_ret));
		return _ret;
	}
	static Windows.Media.Ocr.OcrEngine TryCreateFromUserProfileLanguages()
	{
		Windows.Media.Ocr.OcrEngine _ret;
		Debug.OK(staticInstance.abi_TryCreateFromUserProfileLanguages(&_ret));
		return _ret;
	}
}

interface OcrLine : Windows.Media.Ocr.IOcrLine
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Ocr.OcrWord) Words()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Ocr.OcrWord) _ret;
		Debug.OK((cast(Windows.Media.Ocr.IOcrLine)this.asInterface(uuid("0043a16f-e31f-3a24-899c-d444bd088124"))).get_Words(&_ret));
		return _ret;
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Ocr.IOcrLine)this.asInterface(uuid("0043a16f-e31f-3a24-899c-d444bd088124"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
}

interface OcrResult : Windows.Media.Ocr.IOcrResult
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Ocr.OcrLine) Lines()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Ocr.OcrLine) _ret;
		Debug.OK((cast(Windows.Media.Ocr.IOcrResult)this.asInterface(uuid("9bd235b2-175b-3d6a-92e2-388c206e2f63"))).get_Lines(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) TextAngle()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Media.Ocr.IOcrResult)this.asInterface(uuid("9bd235b2-175b-3d6a-92e2-388c206e2f63"))).get_TextAngle(&_ret));
		return _ret;
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Ocr.IOcrResult)this.asInterface(uuid("9bd235b2-175b-3d6a-92e2-388c206e2f63"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
}

interface OcrWord : Windows.Media.Ocr.IOcrWord
{
extern(Windows):
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.Media.Ocr.IOcrWord)this.asInterface(uuid("3c2a477a-5cd9-3525-ba2a-23d1e0a68a1d"))).get_BoundingRect(&_ret));
		return _ret;
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Ocr.IOcrWord)this.asInterface(uuid("3c2a477a-5cd9-3525-ba2a-23d1e0a68a1d"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
}