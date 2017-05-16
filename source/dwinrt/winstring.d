module dwinrt.winstring;

public import core.stdc.wchar_;

struct HSTRING__
{
	int unused;
}

alias HSTRING = HSTRING__*;

struct HSTRING_BUFFER__
{
	int unused;
}

alias HSTRING_BUFFER = HSTRING_BUFFER__*;

struct HSTRING_HEADER
{
	union ReservedT
	{
		void* Reserved1;
		version (Win64)
			char[24] Reserved2;
		else
			char[20] Reserved2;
	}

	ReservedT Reserved;
}

extern (C)
{
	extern (Windows)
	{
		import core.sys.windows.windows;

	nothrow @nogc:
		HRESULT WindowsCompareStringOrdinal(HSTRING str1, HSTRING str2, INT32* order);
		HRESULT WindowsConcatString(HSTRING str1, HSTRING str2, HSTRING* out_);
		HRESULT WindowsCreateString(LPCWSTR ptr, UINT32 len, HSTRING* out_);
		HRESULT WindowsCreateStringReference(LPCWSTR ptr, UINT32 len,
				HSTRING_HEADER* header, HSTRING* out_);
		HRESULT WindowsDeleteString(HSTRING str);
		HRESULT WindowsDeleteStringBuffer(HSTRING_BUFFER buf);
		HRESULT WindowsDuplicateString(HSTRING str, HSTRING* out_);
		UINT32 WindowsGetStringLen(HSTRING str);
		LPCWSTR WindowsGetStringRawBuffer(HSTRING str, UINT32* len);
		BOOL WindowsIsStringEmpty(HSTRING str);
		HRESULT WindowsPreallocateStringBuffer(UINT32 len, WCHAR** outptr, HSTRING_BUFFER* out_);
		HRESULT WindowsPromoteStringBuffer(HSTRING_BUFFER buf, HSTRING* out_);
		HRESULT WindowsReplaceString(HSTRING haystack, HSTRING needle,
				HSTRING replacement, HSTRING* out_);
		HRESULT WindowsStringHasEmbeddedNull(HSTRING str, BOOL* out_);
		HRESULT WindowsSubstring(HSTRING str, UINT32 pos, HSTRING* out_);
		HRESULT WindowsSubstringWithSpecifiedLength(HSTRING str, UINT32 pos, UINT32 len, HSTRING* out_);
		HRESULT WindowsTrimStringEnd(HSTRING str, HSTRING charstr, HSTRING* out_);
		HRESULT WindowsTrimStringStart(HSTRING str, HSTRING charstr, HSTRING* out_);
	}
}
