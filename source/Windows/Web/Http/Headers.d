module Windows.Web.Http.Headers;

import dwinrt;

@uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4")
@WinrtFactory("Windows.Web.Http.Headers.HttpCacheDirectiveHeaderValueCollection")
interface IHttpCacheDirectiveHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT get_MaxAge(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_MaxAge(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_MaxStale(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_MaxStale(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_MinFresh(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_MinFresh(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_SharedMaxAge(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_SharedMaxAge(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4")
@WinrtFactory("Windows.Web.Http.Headers.HttpCacheDirectiveHeaderValueCollection")
interface IHttpCacheDirectiveHeaderValueCollection : IHttpCacheDirectiveHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) {}

@uuid("393361af-0f7d-4820-9fdd-a2b956eeaeab")
@WinrtFactory("Windows.Web.Http.Headers.HttpChallengeHeaderValue")
interface IHttpChallengeHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_Parameters(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue)* return_value);
	HRESULT get_Scheme(HSTRING* return_value);
	HRESULT get_Token(HSTRING* return_value);
}

@uuid("ca9e5f81-aee0-4353-a10b-e625babd64c2")
@WinrtFactory("Windows.Web.Http.Headers.HttpChallengeHeaderValueCollection")
interface IHttpChallengeHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("ca9e5f81-aee0-4353-a10b-e625babd64c2")
@WinrtFactory("Windows.Web.Http.Headers.HttpChallengeHeaderValueCollection")
interface IHttpChallengeHeaderValueCollection : IHttpChallengeHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpChallengeHeaderValue) {}

@uuid("c452c451-d99c-40aa-9399-90eeb98fc613")
@WinrtFactory("Windows.Web.Http.Headers.HttpChallengeHeaderValue")
interface IHttpChallengeHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromScheme(HSTRING scheme, Windows.Web.Http.Headers.HttpChallengeHeaderValue* return_challengeHeaderValue);
	HRESULT abi_CreateFromSchemeWithToken(HSTRING scheme, HSTRING token, Windows.Web.Http.Headers.HttpChallengeHeaderValue* return_challengeHeaderValue);
}

@uuid("f3d38a72-fc01-4d01-a008-fcb7c459d635")
@WinrtFactory("Windows.Web.Http.Headers.HttpChallengeHeaderValue")
interface IHttpChallengeHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpChallengeHeaderValue* return_challengeHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpChallengeHeaderValue* out_challengeHeaderValue, bool* return_succeeded);
}

@uuid("cb4af27a-4e90-45eb-8dcd-fd1408f4c44f")
@WinrtFactory("Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue")
interface IHttpConnectionOptionHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_Token(HSTRING* return_value);
}

@uuid("e4f56c1d-5142-4e00-8e0f-019509337629")
@WinrtFactory("Windows.Web.Http.Headers.HttpConnectionOptionHeaderValueCollection")
interface IHttpConnectionOptionHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("e4f56c1d-5142-4e00-8e0f-019509337629")
@WinrtFactory("Windows.Web.Http.Headers.HttpConnectionOptionHeaderValueCollection")
interface IHttpConnectionOptionHeaderValueCollection : IHttpConnectionOptionHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue) {}

@uuid("d93ccc1e-0b7d-4c3f-a58d-a2a1bdeabc0a")
@WinrtFactory("Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue")
interface IHttpConnectionOptionHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING token, Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue* return_connectionOptionHeaderValue);
}

@uuid("aaa75d37-a946-4b1f-85af-48b68b3c50bd")
@WinrtFactory("Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue")
interface IHttpConnectionOptionHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue* return_connectionOptionHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue* out_connectionOptionHeaderValue, bool* return_succeeded);
}

@uuid("bcf7f92a-9376-4d85-bccc-9f4f9acab434")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentCodingHeaderValue")
interface IHttpContentCodingHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_ContentCoding(HSTRING* return_value);
}

@uuid("7d221721-a6db-436e-8e83-91596192819c")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentCodingHeaderValueCollection")
interface IHttpContentCodingHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("7d221721-a6db-436e-8e83-91596192819c")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentCodingHeaderValueCollection")
interface IHttpContentCodingHeaderValueCollection : IHttpContentCodingHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue) {}

@uuid("c53d2bd7-332b-4350-8510-2e67a2289a5a")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentCodingHeaderValue")
interface IHttpContentCodingHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING contentCoding, Windows.Web.Http.Headers.HttpContentCodingHeaderValue* return_contentCodingHeaderValue);
}

@uuid("94d8602e-f9bf-42f7-aa46-ed272a41e212")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentCodingHeaderValue")
interface IHttpContentCodingHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpContentCodingHeaderValue* return_contentCodingHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpContentCodingHeaderValue* out_contentCodingHeaderValue, bool* return_succeeded);
}

@uuid("94531cd5-8b13-4d73-8651-f76b38f88495")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue")
interface IHttpContentCodingWithQualityHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_ContentCoding(HSTRING* return_value);
	HRESULT get_Quality(Windows.Foundation.IReference!(double)* return_value);
}

@uuid("7c0d753e-e899-4378-b5c8-412d820711cc")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValueCollection")
interface IHttpContentCodingWithQualityHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("7c0d753e-e899-4378-b5c8-412d820711cc")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValueCollection")
interface IHttpContentCodingWithQualityHeaderValueCollection : IHttpContentCodingWithQualityHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue) {}

@uuid("c45eee1a-c553-46fc-ade2-d75c1d53df7b")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue")
interface IHttpContentCodingWithQualityHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromValue(HSTRING contentCoding, Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue* return_contentCodingWithQualityHeaderValue);
	HRESULT abi_CreateFromValueWithQuality(HSTRING contentCoding, double quality, Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue* return_contentCodingWithQualityHeaderValue);
}

@uuid("e8c9357c-8f89-4801-8e75-4c9abfc3de71")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue")
interface IHttpContentCodingWithQualityHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue* return_contentCodingWithQualityHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue* out_contentCodingWithQualityHeaderValue, bool* return_succeeded);
}

@uuid("f2a2eedc-2629-4b49-9908-96a168e9365e")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentDispositionHeaderValue")
interface IHttpContentDispositionHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_DispositionType(HSTRING* return_value);
	HRESULT set_DispositionType(HSTRING value);
	HRESULT get_FileName(HSTRING* return_value);
	HRESULT set_FileName(HSTRING value);
	HRESULT get_FileNameStar(HSTRING* return_value);
	HRESULT set_FileNameStar(HSTRING value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Parameters(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue)* return_value);
	HRESULT get_Size(Windows.Foundation.IReference!(ulong)* return_value);
	HRESULT set_Size(Windows.Foundation.IReference!(ulong) value);
}

@uuid("9915bbc4-456c-4e81-8295-b2ab3cbcf545")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentDispositionHeaderValue")
interface IHttpContentDispositionHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING dispositionType, Windows.Web.Http.Headers.HttpContentDispositionHeaderValue* return_contentDispositionHeaderValue);
}

@uuid("29c56067-5a37-46e4-b074-c5177d69ca66")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentDispositionHeaderValue")
interface IHttpContentDispositionHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpContentDispositionHeaderValue* return_contentDispositionHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpContentDispositionHeaderValue* out_contentDispositionHeaderValue, bool* return_succeeded);
}

@uuid("40612a44-47ae-4b7e-9124-69628b64aa18")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentHeaderCollection")
interface IHttpContentHeaderCollection_Base : IInspectable
{
extern(Windows):
	HRESULT get_ContentDisposition(Windows.Web.Http.Headers.HttpContentDispositionHeaderValue* return_value);
	HRESULT set_ContentDisposition(Windows.Web.Http.Headers.HttpContentDispositionHeaderValue value);
	HRESULT get_ContentEncoding(Windows.Web.Http.Headers.HttpContentCodingHeaderValueCollection* return_value);
	HRESULT get_ContentLanguage(Windows.Web.Http.Headers.HttpLanguageHeaderValueCollection* return_value);
	HRESULT get_ContentLength(Windows.Foundation.IReference!(ulong)* return_value);
	HRESULT set_ContentLength(Windows.Foundation.IReference!(ulong) value);
	HRESULT get_ContentLocation(Windows.Foundation.Uri* return_value);
	HRESULT set_ContentLocation(Windows.Foundation.Uri value);
	HRESULT get_ContentMD5(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_ContentMD5(Windows.Storage.Streams.IBuffer value);
	HRESULT get_ContentRange(Windows.Web.Http.Headers.HttpContentRangeHeaderValue* return_value);
	HRESULT set_ContentRange(Windows.Web.Http.Headers.HttpContentRangeHeaderValue value);
	HRESULT get_ContentType(Windows.Web.Http.Headers.HttpMediaTypeHeaderValue* return_value);
	HRESULT set_ContentType(Windows.Web.Http.Headers.HttpMediaTypeHeaderValue value);
	HRESULT get_Expires(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Expires(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_LastModified(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_LastModified(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT abi_Append(HSTRING name, HSTRING value);
	HRESULT abi_TryAppendWithoutValidation(HSTRING name, HSTRING value, bool* return_succeeded);
}
@uuid("40612a44-47ae-4b7e-9124-69628b64aa18")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentHeaderCollection")
interface IHttpContentHeaderCollection : IHttpContentHeaderCollection_Base, Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) {}

@uuid("04d967d3-a4f6-495c-9530-8579fcba8aa9")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentRangeHeaderValue")
interface IHttpContentRangeHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_FirstBytePosition(Windows.Foundation.IReference!(ulong)* return_value);
	HRESULT get_LastBytePosition(Windows.Foundation.IReference!(ulong)* return_value);
	HRESULT get_Length(Windows.Foundation.IReference!(ulong)* return_value);
	HRESULT get_Unit(HSTRING* return_value);
	HRESULT set_Unit(HSTRING value);
}

@uuid("3f5bd691-a03c-4456-9a6f-ef27ecd03cae")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentRangeHeaderValue")
interface IHttpContentRangeHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromLength(ulong length, Windows.Web.Http.Headers.HttpContentRangeHeaderValue* return_contentRangeHeaderValue);
	HRESULT abi_CreateFromRange(ulong from, ulong to, Windows.Web.Http.Headers.HttpContentRangeHeaderValue* return_contentRangeHeaderValue);
	HRESULT abi_CreateFromRangeWithLength(ulong from, ulong to, ulong length, Windows.Web.Http.Headers.HttpContentRangeHeaderValue* return_contentRangeHeaderValue);
}

@uuid("80a346ca-174c-4fae-821c-134cd294aa38")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentRangeHeaderValue")
interface IHttpContentRangeHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpContentRangeHeaderValue* return_contentRangeHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpContentRangeHeaderValue* out_contentRangeHeaderValue, bool* return_succeeded);
}

@uuid("cbd46217-4b29-412b-bd90-b3d814ab8e1b")
@WinrtFactory("Windows.Web.Http.Headers.HttpCookiePairHeaderValue")
interface IHttpCookiePairHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT set_Value(HSTRING value);
}

@uuid("f3f44350-581e-4ecc-9f59-e507d04f06e6")
@WinrtFactory("Windows.Web.Http.Headers.HttpCookiePairHeaderValueCollection")
interface IHttpCookiePairHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("f3f44350-581e-4ecc-9f59-e507d04f06e6")
@WinrtFactory("Windows.Web.Http.Headers.HttpCookiePairHeaderValueCollection")
interface IHttpCookiePairHeaderValueCollection : IHttpCookiePairHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue) {}

@uuid("635e326f-146f-4f56-aa21-2cb7d6d58b1e")
@WinrtFactory("Windows.Web.Http.Headers.HttpCookiePairHeaderValue")
interface IHttpCookiePairHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromName(HSTRING name, Windows.Web.Http.Headers.HttpCookiePairHeaderValue* return_cookiePairHeaderValue);
	HRESULT abi_CreateFromNameWithValue(HSTRING name, HSTRING value, Windows.Web.Http.Headers.HttpCookiePairHeaderValue* return_cookiePairHeaderValue);
}

@uuid("6e866d48-06af-4462-8158-99388d5dca81")
@WinrtFactory("Windows.Web.Http.Headers.HttpCookiePairHeaderValue")
interface IHttpCookiePairHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpCookiePairHeaderValue* return_cookiePairHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpCookiePairHeaderValue* out_cookiePairHeaderValue, bool* return_succeeded);
}

@uuid("c34cc3cb-542e-4177-a6c7-b674ce193fbf")
@WinrtFactory("Windows.Web.Http.Headers.HttpCredentialsHeaderValue")
interface IHttpCredentialsHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_Parameters(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue)* return_value);
	HRESULT get_Scheme(HSTRING* return_value);
	HRESULT get_Token(HSTRING* return_value);
}

@uuid("f21d9e91-4d1c-4182-bfd1-34470a62f950")
@WinrtFactory("Windows.Web.Http.Headers.HttpCredentialsHeaderValue")
interface IHttpCredentialsHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromScheme(HSTRING scheme, Windows.Web.Http.Headers.HttpCredentialsHeaderValue* return_credentialsHeaderValue);
	HRESULT abi_CreateFromSchemeWithToken(HSTRING scheme, HSTRING token, Windows.Web.Http.Headers.HttpCredentialsHeaderValue* return_credentialsHeaderValue);
}

@uuid("a69b2be6-ce8c-4443-a35a-1b727b131036")
@WinrtFactory("Windows.Web.Http.Headers.HttpCredentialsHeaderValue")
interface IHttpCredentialsHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpCredentialsHeaderValue* return_credentialsHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpCredentialsHeaderValue* out_credentialsHeaderValue, bool* return_succeeded);
}

@uuid("eafcaa6a-c4dc-49e2-a27d-043adf5867a3")
@WinrtFactory("Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue")
interface IHttpDateOrDeltaHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_Delta(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
}

@uuid("7c2659a8-6672-4e90-9a9a-f39766f7f576")
@WinrtFactory("Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue")
interface IHttpDateOrDeltaHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue* return_dateOrDeltaHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue* out_dateOrDeltaHeaderValue, bool* return_succeeded);
}

@uuid("4ce585cd-3a99-43af-a2e6-ec232fea9658")
@WinrtFactory("Windows.Web.Http.Headers.HttpExpectationHeaderValue")
interface IHttpExpectationHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT set_Value(HSTRING value);
	HRESULT get_Parameters(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue)* return_value);
}

@uuid("e78521b3-a0e2-4ac4-9e66-79706cb9fd58")
@WinrtFactory("Windows.Web.Http.Headers.HttpExpectationHeaderValueCollection")
interface IHttpExpectationHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("e78521b3-a0e2-4ac4-9e66-79706cb9fd58")
@WinrtFactory("Windows.Web.Http.Headers.HttpExpectationHeaderValueCollection")
interface IHttpExpectationHeaderValueCollection : IHttpExpectationHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpExpectationHeaderValue) {}

@uuid("4ea275cb-d53e-4868-8856-1e21a5030dc0")
@WinrtFactory("Windows.Web.Http.Headers.HttpExpectationHeaderValue")
interface IHttpExpectationHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromName(HSTRING name, Windows.Web.Http.Headers.HttpExpectationHeaderValue* return_expectationHeaderValue);
	HRESULT abi_CreateFromNameWithValue(HSTRING name, HSTRING value, Windows.Web.Http.Headers.HttpExpectationHeaderValue* return_expectationHeaderValue);
}

@uuid("3019abe2-cfe5-473b-a57f-fba5b14eb257")
@WinrtFactory("Windows.Web.Http.Headers.HttpExpectationHeaderValue")
interface IHttpExpectationHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpExpectationHeaderValue* return_expectationHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpExpectationHeaderValue* out_expectationHeaderValue, bool* return_succeeded);
}

@uuid("9ebd7ca3-8219-44f6-9902-8c56dfd3340c")
@WinrtFactory("Windows.Web.Http.Headers.HttpLanguageHeaderValueCollection")
interface IHttpLanguageHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("9ebd7ca3-8219-44f6-9902-8c56dfd3340c")
@WinrtFactory("Windows.Web.Http.Headers.HttpLanguageHeaderValueCollection")
interface IHttpLanguageHeaderValueCollection : IHttpLanguageHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Globalization.Language), Windows.Foundation.Collections.IIterable!(Windows.Globalization.Language) {}

@uuid("7256e102-0080-4db4-a083-7de7b2e5ba4c")
@WinrtFactory("Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue")
interface IHttpLanguageRangeWithQualityHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_LanguageRange(HSTRING* return_languageRange);
	HRESULT get_Quality(Windows.Foundation.IReference!(double)* return_value);
}

@uuid("885d5abd-4b4f-480a-89ce-8aedcee6e3a0")
@WinrtFactory("Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValueCollection")
interface IHttpLanguageRangeWithQualityHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("885d5abd-4b4f-480a-89ce-8aedcee6e3a0")
@WinrtFactory("Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValueCollection")
interface IHttpLanguageRangeWithQualityHeaderValueCollection : IHttpLanguageRangeWithQualityHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue) {}

@uuid("7bb83970-780f-4c83-9fe4-dc3087f6bd55")
@WinrtFactory("Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue")
interface IHttpLanguageRangeWithQualityHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromLanguageRange(HSTRING languageRange, Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue* return_languageRangeWithQualityHeaderValue);
	HRESULT abi_CreateFromLanguageRangeWithQuality(HSTRING languageRange, double quality, Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue* return_languageRangeWithQualityHeaderValue);
}

@uuid("2541e146-f308-46f5-b695-42f54024ec68")
@WinrtFactory("Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue")
interface IHttpLanguageRangeWithQualityHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue* return_languageRangeWithQualityHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue* out_languageRangeWithQualityHeaderValue, bool* return_succeeded);
}

@uuid("16b28533-e728-4fcb-bdb0-08a431a14844")
@WinrtFactory("Windows.Web.Http.Headers.HttpMediaTypeHeaderValue")
interface IHttpMediaTypeHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_CharSet(HSTRING* return_value);
	HRESULT set_CharSet(HSTRING value);
	HRESULT get_MediaType(HSTRING* return_value);
	HRESULT set_MediaType(HSTRING value);
	HRESULT get_Parameters(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue)* return_value);
}

@uuid("bed747a8-cd17-42dd-9367-ab9c5b56dd7d")
@WinrtFactory("Windows.Web.Http.Headers.HttpMediaTypeHeaderValue")
interface IHttpMediaTypeHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING mediaType, Windows.Web.Http.Headers.HttpMediaTypeHeaderValue* return_mediaTypeHeaderValue);
}

@uuid("e04d83df-1d41-4d8c-a2de-6fd2ed87399b")
@WinrtFactory("Windows.Web.Http.Headers.HttpMediaTypeHeaderValue")
interface IHttpMediaTypeHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpMediaTypeHeaderValue* return_mediaTypeHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpMediaTypeHeaderValue* out_mediaTypeHeaderValue, bool* return_succeeded);
}

@uuid("188d5e32-76be-44a0-b1cd-2074bded2dde")
@WinrtFactory("Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue")
interface IHttpMediaTypeWithQualityHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_CharSet(HSTRING* return_value);
	HRESULT set_CharSet(HSTRING value);
	HRESULT get_MediaType(HSTRING* return_value);
	HRESULT set_MediaType(HSTRING value);
	HRESULT get_Parameters(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue)* return_value);
	HRESULT get_Quality(Windows.Foundation.IReference!(double)* return_value);
	HRESULT set_Quality(Windows.Foundation.IReference!(double) value);
}

@uuid("3c0c6b73-1342-4587-a056-18d02ff67165")
@WinrtFactory("Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValueCollection")
interface IHttpMediaTypeWithQualityHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("3c0c6b73-1342-4587-a056-18d02ff67165")
@WinrtFactory("Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValueCollection")
interface IHttpMediaTypeWithQualityHeaderValueCollection : IHttpMediaTypeWithQualityHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue) {}

@uuid("4c6d20f4-9457-44e6-a323-d122b958780b")
@WinrtFactory("Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue")
interface IHttpMediaTypeWithQualityHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromMediaType(HSTRING mediaType, Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue* return_mediaTypeWithQualityHeaderValue);
	HRESULT abi_CreateFromMediaTypeWithQuality(HSTRING mediaType, double quality, Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue* return_mediaTypeWithQualityHeaderValue);
}

@uuid("5b070cd9-b560-4fc8-9835-7e6c0a657b24")
@WinrtFactory("Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue")
interface IHttpMediaTypeWithQualityHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue* return_mediaTypeWithQualityHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue* out_mediaTypeWithQualityHeaderValue, bool* return_succeeded);
}

@uuid("43bc3ff4-6119-4adf-938c-34bfffcf92ed")
@WinrtFactory("Windows.Web.Http.Headers.HttpMethodHeaderValueCollection")
interface IHttpMethodHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("43bc3ff4-6119-4adf-938c-34bfffcf92ed")
@WinrtFactory("Windows.Web.Http.Headers.HttpMethodHeaderValueCollection")
interface IHttpMethodHeaderValueCollection : IHttpMethodHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.HttpMethod) {}

@uuid("d8ba7463-5b9a-4d1b-93f9-aa5b44ecfddf")
@WinrtFactory("Windows.Web.Http.Headers.HttpNameValueHeaderValue")
interface IHttpNameValueHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT set_Value(HSTRING value);
}

@uuid("770e2267-cbf8-4736-a925-93fbe10c7ca8")
@WinrtFactory("Windows.Web.Http.Headers.HttpNameValueHeaderValue")
interface IHttpNameValueHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromName(HSTRING name, Windows.Web.Http.Headers.HttpNameValueHeaderValue* return_nameValueHeaderValue);
	HRESULT abi_CreateFromNameWithValue(HSTRING name, HSTRING value, Windows.Web.Http.Headers.HttpNameValueHeaderValue* return_nameValueHeaderValue);
}

@uuid("ffd4030f-1130-4152-8659-256909a9d115")
@WinrtFactory("Windows.Web.Http.Headers.HttpNameValueHeaderValue")
interface IHttpNameValueHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpNameValueHeaderValue* return_nameValueHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpNameValueHeaderValue* out_nameValueHeaderValue, bool* return_succeeded);
}

@uuid("f4feee03-ebd4-4160-b9ff-807c5183b6e6")
@WinrtFactory("Windows.Web.Http.Headers.HttpProductHeaderValue")
interface IHttpProductHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Version(HSTRING* return_value);
}

@uuid("611aa4f5-82bc-42fb-977b-dc00536e5e86")
@WinrtFactory("Windows.Web.Http.Headers.HttpProductHeaderValue")
interface IHttpProductHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromName(HSTRING productName, Windows.Web.Http.Headers.HttpProductHeaderValue* return_productHeaderValue);
	HRESULT abi_CreateFromNameWithVersion(HSTRING productName, HSTRING productVersion, Windows.Web.Http.Headers.HttpProductHeaderValue* return_productHeaderValue);
}

@uuid("90c33e29-befc-4337-be62-49f097975f53")
@WinrtFactory("Windows.Web.Http.Headers.HttpProductHeaderValue")
interface IHttpProductHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpProductHeaderValue* return_productHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpProductHeaderValue* out_productHeaderValue, bool* return_succeeded);
}

@uuid("1b1a8732-4c35-486a-966f-646489198e4d")
@WinrtFactory("Windows.Web.Http.Headers.HttpProductInfoHeaderValue")
interface IHttpProductInfoHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_Product(Windows.Web.Http.Headers.HttpProductHeaderValue* return_value);
	HRESULT get_Comment(HSTRING* return_value);
}

@uuid("877df74a-d69b-44f8-ad4f-453af9c42ed0")
@WinrtFactory("Windows.Web.Http.Headers.HttpProductInfoHeaderValueCollection")
interface IHttpProductInfoHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("877df74a-d69b-44f8-ad4f-453af9c42ed0")
@WinrtFactory("Windows.Web.Http.Headers.HttpProductInfoHeaderValueCollection")
interface IHttpProductInfoHeaderValueCollection : IHttpProductInfoHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue) {}

@uuid("24220fbe-eabe-4464-b460-ec010b7c41e2")
@WinrtFactory("Windows.Web.Http.Headers.HttpProductInfoHeaderValue")
interface IHttpProductInfoHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromComment(HSTRING productComment, Windows.Web.Http.Headers.HttpProductInfoHeaderValue* return_productInfoHeaderValue);
	HRESULT abi_CreateFromNameWithVersion(HSTRING productName, HSTRING productVersion, Windows.Web.Http.Headers.HttpProductInfoHeaderValue* return_productInfoHeaderValue);
}

@uuid("db7fd857-327a-4e73-81e5-7059a302b042")
@WinrtFactory("Windows.Web.Http.Headers.HttpProductInfoHeaderValue")
interface IHttpProductInfoHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpProductInfoHeaderValue* return_productInfoHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpProductInfoHeaderValue* out_productInfoHeaderValue, bool* return_succeeded);
}

@uuid("af40329b-b544-469b-86b9-ac3d466fea36")
@WinrtFactory("Windows.Web.Http.Headers.HttpRequestHeaderCollection")
interface IHttpRequestHeaderCollection_Base : IInspectable
{
extern(Windows):
	HRESULT get_Accept(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValueCollection* return_value);
	HRESULT get_AcceptEncoding(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValueCollection* return_value);
	HRESULT get_AcceptLanguage(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValueCollection* return_value);
	HRESULT get_Authorization(Windows.Web.Http.Headers.HttpCredentialsHeaderValue* return_value);
	HRESULT set_Authorization(Windows.Web.Http.Headers.HttpCredentialsHeaderValue value);
	HRESULT get_CacheControl(Windows.Web.Http.Headers.HttpCacheDirectiveHeaderValueCollection* return_value);
	HRESULT get_Connection(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValueCollection* return_value);
	HRESULT get_Cookie(Windows.Web.Http.Headers.HttpCookiePairHeaderValueCollection* return_value);
	HRESULT get_Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Expect(Windows.Web.Http.Headers.HttpExpectationHeaderValueCollection* return_value);
	HRESULT get_From(HSTRING* return_value);
	HRESULT set_From(HSTRING value);
	HRESULT get_Host(Windows.Networking.HostName* return_value);
	HRESULT set_Host(Windows.Networking.HostName value);
	HRESULT get_IfModifiedSince(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_IfModifiedSince(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_IfUnmodifiedSince(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_IfUnmodifiedSince(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_MaxForwards(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_MaxForwards(Windows.Foundation.IReference!(UINT32) value);
	HRESULT get_ProxyAuthorization(Windows.Web.Http.Headers.HttpCredentialsHeaderValue* return_value);
	HRESULT set_ProxyAuthorization(Windows.Web.Http.Headers.HttpCredentialsHeaderValue value);
	HRESULT get_Referer(Windows.Foundation.Uri* return_value);
	HRESULT set_Referer(Windows.Foundation.Uri value);
	HRESULT get_TransferEncoding(Windows.Web.Http.Headers.HttpTransferCodingHeaderValueCollection* return_value);
	HRESULT get_UserAgent(Windows.Web.Http.Headers.HttpProductInfoHeaderValueCollection* return_value);
	HRESULT abi_Append(HSTRING name, HSTRING value);
	HRESULT abi_TryAppendWithoutValidation(HSTRING name, HSTRING value, bool* return_succeeded);
}
@uuid("af40329b-b544-469b-86b9-ac3d466fea36")
@WinrtFactory("Windows.Web.Http.Headers.HttpRequestHeaderCollection")
interface IHttpRequestHeaderCollection : IHttpRequestHeaderCollection_Base, Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) {}

@uuid("7a990969-fa3f-41ed-aac6-bf957975c16b")
@WinrtFactory("Windows.Web.Http.Headers.HttpResponseHeaderCollection")
interface IHttpResponseHeaderCollection_Base : IInspectable
{
extern(Windows):
	HRESULT get_Age(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_Age(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_Allow(Windows.Web.Http.Headers.HttpMethodHeaderValueCollection* return_value);
	HRESULT get_CacheControl(Windows.Web.Http.Headers.HttpCacheDirectiveHeaderValueCollection* return_value);
	HRESULT get_Connection(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValueCollection* return_value);
	HRESULT get_Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Location(Windows.Foundation.Uri* return_value);
	HRESULT set_Location(Windows.Foundation.Uri value);
	HRESULT get_ProxyAuthenticate(Windows.Web.Http.Headers.HttpChallengeHeaderValueCollection* return_value);
	HRESULT get_RetryAfter(Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue* return_value);
	HRESULT set_RetryAfter(Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue value);
	HRESULT get_TransferEncoding(Windows.Web.Http.Headers.HttpTransferCodingHeaderValueCollection* return_value);
	HRESULT get_WwwAuthenticate(Windows.Web.Http.Headers.HttpChallengeHeaderValueCollection* return_value);
	HRESULT abi_Append(HSTRING name, HSTRING value);
	HRESULT abi_TryAppendWithoutValidation(HSTRING name, HSTRING value, bool* return_succeeded);
}
@uuid("7a990969-fa3f-41ed-aac6-bf957975c16b")
@WinrtFactory("Windows.Web.Http.Headers.HttpResponseHeaderCollection")
interface IHttpResponseHeaderCollection : IHttpResponseHeaderCollection_Base, Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) {}

@uuid("436f32f9-3ded-42bd-b38a-5496a2511ce6")
@WinrtFactory("Windows.Web.Http.Headers.HttpTransferCodingHeaderValue")
interface IHttpTransferCodingHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_Parameters(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue)* return_value);
	HRESULT get_Value(HSTRING* return_value);
}

@uuid("202c8c34-2c03-49b8-9665-73e27cb2fc79")
@WinrtFactory("Windows.Web.Http.Headers.HttpTransferCodingHeaderValueCollection")
interface IHttpTransferCodingHeaderValueCollection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}
@uuid("202c8c34-2c03-49b8-9665-73e27cb2fc79")
@WinrtFactory("Windows.Web.Http.Headers.HttpTransferCodingHeaderValueCollection")
interface IHttpTransferCodingHeaderValueCollection : IHttpTransferCodingHeaderValueCollection_Base, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue) {}

@uuid("bb62dffc-e361-4f08-8e4f-c9e723de703b")
@WinrtFactory("Windows.Web.Http.Headers.HttpTransferCodingHeaderValue")
interface IHttpTransferCodingHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING input, Windows.Web.Http.Headers.HttpTransferCodingHeaderValue* return_transferCodingHeaderValue);
}

@uuid("6ab8892a-1a98-4d32-a906-7470a9875ce5")
@WinrtFactory("Windows.Web.Http.Headers.HttpTransferCodingHeaderValue")
interface IHttpTransferCodingHeaderValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Web.Http.Headers.HttpTransferCodingHeaderValue* return_transferCodingHeaderValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Web.Http.Headers.HttpTransferCodingHeaderValue* out_transferCodingHeaderValue, bool* return_succeeded);
}

interface HttpCacheDirectiveHeaderValueCollection : Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpNameValueHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) MaxAge()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection)this.asInterface(uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4"))).get_MaxAge(&_ret));
		return _ret;
	}
	final void MaxAge(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection)this.asInterface(uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4"))).set_MaxAge(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) MaxStale()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection)this.asInterface(uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4"))).get_MaxStale(&_ret));
		return _ret;
	}
	final void MaxStale(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection)this.asInterface(uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4"))).set_MaxStale(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) MinFresh()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection)this.asInterface(uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4"))).get_MinFresh(&_ret));
		return _ret;
	}
	final void MinFresh(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection)this.asInterface(uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4"))).set_MinFresh(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) SharedMaxAge()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection)this.asInterface(uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4"))).get_SharedMaxAge(&_ret));
		return _ret;
	}
	final void SharedMaxAge(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection)this.asInterface(uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4"))).set_SharedMaxAge(value));
	}
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection)this.asInterface(uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection)this.asInterface(uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpNameValueHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpNameValueHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpNameValueHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpNameValueHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpNameValueHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpNameValueHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpNameValueHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpNameValueHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpNameValueHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpNameValueHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpNameValueHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpChallengeHeaderValue : Windows.Web.Http.Headers.IHttpChallengeHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) Parameters()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpChallengeHeaderValue)this.asInterface(uuid("393361af-0f7d-4820-9fdd-a2b956eeaeab"))).get_Parameters(&_ret));
		return _ret;
	}
	final wstring Scheme()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpChallengeHeaderValue)this.asInterface(uuid("393361af-0f7d-4820-9fdd-a2b956eeaeab"))).get_Scheme(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Token()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpChallengeHeaderValue)this.asInterface(uuid("393361af-0f7d-4820-9fdd-a2b956eeaeab"))).get_Token(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpChallengeHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpChallengeHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpChallengeHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpChallengeHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpChallengeHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpChallengeHeaderValue* out_challengeHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_challengeHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpChallengeHeaderValue New(wstring scheme)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpChallengeHeaderValueFactory);
		Windows.Web.Http.Headers.HttpChallengeHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpChallengeHeaderValueFactory)factory.asInterface(uuid("c452c451-d99c-40aa-9399-90eeb98fc613"))).abi_CreateFromScheme(hstring(scheme).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpChallengeHeaderValue New(wstring scheme, wstring token)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpChallengeHeaderValueFactory);
		Windows.Web.Http.Headers.HttpChallengeHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpChallengeHeaderValueFactory)factory.asInterface(uuid("c452c451-d99c-40aa-9399-90eeb98fc613"))).abi_CreateFromSchemeWithToken(hstring(scheme).handle, hstring(token).handle, &_ret));
		return _ret;
	}
}

interface HttpChallengeHeaderValueCollection : Windows.Web.Http.Headers.IHttpChallengeHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpChallengeHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpChallengeHeaderValueCollection)this.asInterface(uuid("ca9e5f81-aee0-4353-a10b-e625babd64c2"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpChallengeHeaderValueCollection)this.asInterface(uuid("ca9e5f81-aee0-4353-a10b-e625babd64c2"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpChallengeHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpChallengeHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpChallengeHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpChallengeHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpChallengeHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpChallengeHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpChallengeHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpChallengeHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpChallengeHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpChallengeHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpChallengeHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpConnectionOptionHeaderValue : Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring Token()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValue)this.asInterface(uuid("cb4af27a-4e90-45eb-8dcd-fd1408f4c44f"))).get_Token(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue* out_connectionOptionHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_connectionOptionHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue New(wstring token)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueFactory);
		Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueFactory)factory.asInterface(uuid("d93ccc1e-0b7d-4c3f-a58d-a2a1bdeabc0a"))).abi_Create(hstring(token).handle, &_ret));
		return _ret;
	}
}

interface HttpConnectionOptionHeaderValueCollection : Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueCollection)this.asInterface(uuid("e4f56c1d-5142-4e00-8e0f-019509337629"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueCollection)this.asInterface(uuid("e4f56c1d-5142-4e00-8e0f-019509337629"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpContentCodingHeaderValue : Windows.Web.Http.Headers.IHttpContentCodingHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring ContentCoding()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentCodingHeaderValue)this.asInterface(uuid("bcf7f92a-9376-4d85-bccc-9f4f9acab434"))).get_ContentCoding(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpContentCodingHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpContentCodingHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpContentCodingHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpContentCodingHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpContentCodingHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpContentCodingHeaderValue* out_contentCodingHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_contentCodingHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpContentCodingHeaderValue New(wstring contentCoding)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpContentCodingHeaderValueFactory);
		Windows.Web.Http.Headers.HttpContentCodingHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentCodingHeaderValueFactory)factory.asInterface(uuid("c53d2bd7-332b-4350-8510-2e67a2289a5a"))).abi_Create(hstring(contentCoding).handle, &_ret));
		return _ret;
	}
}

interface HttpContentCodingHeaderValueCollection : Windows.Web.Http.Headers.IHttpContentCodingHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentCodingHeaderValueCollection)this.asInterface(uuid("7d221721-a6db-436e-8e83-91596192819c"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentCodingHeaderValueCollection)this.asInterface(uuid("7d221721-a6db-436e-8e83-91596192819c"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpContentCodingHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpContentCodingHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpContentCodingHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpContentCodingHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpContentCodingHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpContentCodingHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpContentCodingHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpContentCodingHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpContentCodingWithQualityHeaderValue : Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring ContentCoding()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValue)this.asInterface(uuid("94531cd5-8b13-4d73-8651-f76b38f88495"))).get_ContentCoding(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.IReference!(double) Quality()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValue)this.asInterface(uuid("94531cd5-8b13-4d73-8651-f76b38f88495"))).get_Quality(&_ret));
		return _ret;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue* out_contentCodingWithQualityHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_contentCodingWithQualityHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue New(wstring contentCoding)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueFactory);
		Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueFactory)factory.asInterface(uuid("c45eee1a-c553-46fc-ade2-d75c1d53df7b"))).abi_CreateFromValue(hstring(contentCoding).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue New(wstring contentCoding, double quality)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueFactory);
		Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueFactory)factory.asInterface(uuid("c45eee1a-c553-46fc-ade2-d75c1d53df7b"))).abi_CreateFromValueWithQuality(hstring(contentCoding).handle, quality, &_ret));
		return _ret;
	}
}

interface HttpContentCodingWithQualityHeaderValueCollection : Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueCollection)this.asInterface(uuid("7c0d753e-e899-4378-b5c8-412d820711cc"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueCollection)this.asInterface(uuid("7c0d753e-e899-4378-b5c8-412d820711cc"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpContentDispositionHeaderValue : Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring DispositionType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).get_DispositionType(&_ret));
		return hstring(_ret).d_str;
	}
	final void DispositionType(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).set_DispositionType(hstring(value).handle));
	}
	final wstring FileName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).get_FileName(&_ret));
		return hstring(_ret).d_str;
	}
	final void FileName(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).set_FileName(hstring(value).handle));
	}
	final wstring FileNameStar()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).get_FileNameStar(&_ret));
		return hstring(_ret).d_str;
	}
	final void FileNameStar(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).set_FileNameStar(hstring(value).handle));
	}
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final void Name(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).set_Name(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) Parameters()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).get_Parameters(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ulong) Size()
	{
		Windows.Foundation.IReference!(ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).get_Size(&_ret));
		return _ret;
	}
	final void Size(Windows.Foundation.IReference!(ulong) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue)this.asInterface(uuid("f2a2eedc-2629-4b49-9908-96a168e9365e"))).set_Size(value));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpContentDispositionHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpContentDispositionHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpContentDispositionHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpContentDispositionHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpContentDispositionHeaderValue* out_contentDispositionHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_contentDispositionHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpContentDispositionHeaderValue New(wstring dispositionType)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValueFactory);
		Windows.Web.Http.Headers.HttpContentDispositionHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentDispositionHeaderValueFactory)factory.asInterface(uuid("9915bbc4-456c-4e81-8295-b2ab3cbcf545"))).abi_Create(hstring(dispositionType).handle, &_ret));
		return _ret;
	}
}

interface HttpContentHeaderCollection : Windows.Web.Http.Headers.IHttpContentHeaderCollection, Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)), Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.Headers.HttpContentDispositionHeaderValue ContentDisposition()
	{
		Windows.Web.Http.Headers.HttpContentDispositionHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).get_ContentDisposition(&_ret));
		return _ret;
	}
	final void ContentDisposition(Windows.Web.Http.Headers.HttpContentDispositionHeaderValue value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).set_ContentDisposition(value));
	}
	final Windows.Web.Http.Headers.HttpContentCodingHeaderValueCollection ContentEncoding()
	{
		Windows.Web.Http.Headers.HttpContentCodingHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).get_ContentEncoding(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpLanguageHeaderValueCollection ContentLanguage()
	{
		Windows.Web.Http.Headers.HttpLanguageHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).get_ContentLanguage(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ulong) ContentLength()
	{
		Windows.Foundation.IReference!(ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).get_ContentLength(&_ret));
		return _ret;
	}
	final void ContentLength(Windows.Foundation.IReference!(ulong) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).set_ContentLength(value));
	}
	final Windows.Foundation.Uri ContentLocation()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).get_ContentLocation(&_ret));
		return _ret;
	}
	final void ContentLocation(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).set_ContentLocation(value));
	}
	final Windows.Storage.Streams.IBuffer ContentMD5()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).get_ContentMD5(&_ret));
		return _ret;
	}
	final void ContentMD5(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).set_ContentMD5(value));
	}
	final Windows.Web.Http.Headers.HttpContentRangeHeaderValue ContentRange()
	{
		Windows.Web.Http.Headers.HttpContentRangeHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).get_ContentRange(&_ret));
		return _ret;
	}
	final void ContentRange(Windows.Web.Http.Headers.HttpContentRangeHeaderValue value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).set_ContentRange(value));
	}
	final Windows.Web.Http.Headers.HttpMediaTypeHeaderValue ContentType()
	{
		Windows.Web.Http.Headers.HttpMediaTypeHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).get_ContentType(&_ret));
		return _ret;
	}
	final void ContentType(Windows.Web.Http.Headers.HttpMediaTypeHeaderValue value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).set_ContentType(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Expires()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).get_Expires(&_ret));
		return _ret;
	}
	final void Expires(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).set_Expires(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) LastModified()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).get_LastModified(&_ret));
		return _ret;
	}
	final void LastModified(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).set_LastModified(value));
	}
	final void Append(wstring name, wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).abi_Append(hstring(name).handle, hstring(value).handle));
	}
	final bool TryAppendWithoutValidation(wstring name, wstring value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentHeaderCollection)this.asInterface(uuid("40612a44-47ae-4b7e-9124-69628b64aa18"))).abi_TryAppendWithoutValidation(hstring(name).handle, hstring(value).handle, &_ret));
		return _ret;
	}
	final  HSTRING Lookup(wstring key)
	{
		 HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Lookup(hstring(key).handle, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(wstring key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_HasKey(hstring(key).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 HSTRING) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  HSTRING) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(wstring key,	HSTRING value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Insert(hstring(key).handle, value, &_ret));
		return _ret;
	}
	final void Remove(wstring key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Remove(hstring(key).handle));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
	static HttpContentHeaderCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(HttpContentHeaderCollection).abi_ActivateInstance(&ret));
		return cast(HttpContentHeaderCollection) ret;
	}
}

interface HttpContentRangeHeaderValue : Windows.Web.Http.Headers.IHttpContentRangeHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Foundation.IReference!(ulong) FirstBytePosition()
	{
		Windows.Foundation.IReference!(ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentRangeHeaderValue)this.asInterface(uuid("04d967d3-a4f6-495c-9530-8579fcba8aa9"))).get_FirstBytePosition(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ulong) LastBytePosition()
	{
		Windows.Foundation.IReference!(ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentRangeHeaderValue)this.asInterface(uuid("04d967d3-a4f6-495c-9530-8579fcba8aa9"))).get_LastBytePosition(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ulong) Length()
	{
		Windows.Foundation.IReference!(ulong) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentRangeHeaderValue)this.asInterface(uuid("04d967d3-a4f6-495c-9530-8579fcba8aa9"))).get_Length(&_ret));
		return _ret;
	}
	final wstring Unit()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentRangeHeaderValue)this.asInterface(uuid("04d967d3-a4f6-495c-9530-8579fcba8aa9"))).get_Unit(&_ret));
		return hstring(_ret).d_str;
	}
	final void Unit(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentRangeHeaderValue)this.asInterface(uuid("04d967d3-a4f6-495c-9530-8579fcba8aa9"))).set_Unit(hstring(value).handle));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpContentRangeHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpContentRangeHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpContentRangeHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpContentRangeHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpContentRangeHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpContentRangeHeaderValue* out_contentRangeHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_contentRangeHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpContentRangeHeaderValue New(ulong length)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpContentRangeHeaderValueFactory);
		Windows.Web.Http.Headers.HttpContentRangeHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentRangeHeaderValueFactory)factory.asInterface(uuid("3f5bd691-a03c-4456-9a6f-ef27ecd03cae"))).abi_CreateFromLength(length, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpContentRangeHeaderValue New(ulong from, ulong to)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpContentRangeHeaderValueFactory);
		Windows.Web.Http.Headers.HttpContentRangeHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentRangeHeaderValueFactory)factory.asInterface(uuid("3f5bd691-a03c-4456-9a6f-ef27ecd03cae"))).abi_CreateFromRange(from, to, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpContentRangeHeaderValue New(ulong from, ulong to, ulong length)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpContentRangeHeaderValueFactory);
		Windows.Web.Http.Headers.HttpContentRangeHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpContentRangeHeaderValueFactory)factory.asInterface(uuid("3f5bd691-a03c-4456-9a6f-ef27ecd03cae"))).abi_CreateFromRangeWithLength(from, to, length, &_ret));
		return _ret;
	}
}

interface HttpCookiePairHeaderValue : Windows.Web.Http.Headers.IHttpCookiePairHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCookiePairHeaderValue)this.asInterface(uuid("cbd46217-4b29-412b-bd90-b3d814ab8e1b"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCookiePairHeaderValue)this.asInterface(uuid("cbd46217-4b29-412b-bd90-b3d814ab8e1b"))).get_Value(&_ret));
		return hstring(_ret).d_str;
	}
	final void Value(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCookiePairHeaderValue)this.asInterface(uuid("cbd46217-4b29-412b-bd90-b3d814ab8e1b"))).set_Value(hstring(value).handle));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpCookiePairHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpCookiePairHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpCookiePairHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpCookiePairHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpCookiePairHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpCookiePairHeaderValue* out_cookiePairHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_cookiePairHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpCookiePairHeaderValue New(wstring name)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpCookiePairHeaderValueFactory);
		Windows.Web.Http.Headers.HttpCookiePairHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCookiePairHeaderValueFactory)factory.asInterface(uuid("635e326f-146f-4f56-aa21-2cb7d6d58b1e"))).abi_CreateFromName(hstring(name).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpCookiePairHeaderValue New(wstring name, wstring value)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpCookiePairHeaderValueFactory);
		Windows.Web.Http.Headers.HttpCookiePairHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCookiePairHeaderValueFactory)factory.asInterface(uuid("635e326f-146f-4f56-aa21-2cb7d6d58b1e"))).abi_CreateFromNameWithValue(hstring(name).handle, hstring(value).handle, &_ret));
		return _ret;
	}
}

interface HttpCookiePairHeaderValueCollection : Windows.Web.Http.Headers.IHttpCookiePairHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCookiePairHeaderValueCollection)this.asInterface(uuid("f3f44350-581e-4ecc-9f59-e507d04f06e6"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCookiePairHeaderValueCollection)this.asInterface(uuid("f3f44350-581e-4ecc-9f59-e507d04f06e6"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpCookiePairHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpCookiePairHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpCookiePairHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpCookiePairHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpCookiePairHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpCookiePairHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpCookiePairHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpCookiePairHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpCredentialsHeaderValue : Windows.Web.Http.Headers.IHttpCredentialsHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) Parameters()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCredentialsHeaderValue)this.asInterface(uuid("c34cc3cb-542e-4177-a6c7-b674ce193fbf"))).get_Parameters(&_ret));
		return _ret;
	}
	final wstring Scheme()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCredentialsHeaderValue)this.asInterface(uuid("c34cc3cb-542e-4177-a6c7-b674ce193fbf"))).get_Scheme(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Token()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCredentialsHeaderValue)this.asInterface(uuid("c34cc3cb-542e-4177-a6c7-b674ce193fbf"))).get_Token(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpCredentialsHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpCredentialsHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpCredentialsHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpCredentialsHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpCredentialsHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpCredentialsHeaderValue* out_credentialsHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_credentialsHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpCredentialsHeaderValue New(wstring scheme)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpCredentialsHeaderValueFactory);
		Windows.Web.Http.Headers.HttpCredentialsHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCredentialsHeaderValueFactory)factory.asInterface(uuid("f21d9e91-4d1c-4182-bfd1-34470a62f950"))).abi_CreateFromScheme(hstring(scheme).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpCredentialsHeaderValue New(wstring scheme, wstring token)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpCredentialsHeaderValueFactory);
		Windows.Web.Http.Headers.HttpCredentialsHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpCredentialsHeaderValueFactory)factory.asInterface(uuid("f21d9e91-4d1c-4182-bfd1-34470a62f950"))).abi_CreateFromSchemeWithToken(hstring(scheme).handle, hstring(token).handle, &_ret));
		return _ret;
	}
}

interface HttpDateOrDeltaHeaderValue : Windows.Web.Http.Headers.IHttpDateOrDeltaHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Date()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpDateOrDeltaHeaderValue)this.asInterface(uuid("eafcaa6a-c4dc-49e2-a27d-043adf5867a3"))).get_Date(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Delta()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpDateOrDeltaHeaderValue)this.asInterface(uuid("eafcaa6a-c4dc-49e2-a27d-043adf5867a3"))).get_Delta(&_ret));
		return _ret;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpDateOrDeltaHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpDateOrDeltaHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpDateOrDeltaHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue* out_dateOrDeltaHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_dateOrDeltaHeaderValue, &_ret));
		return _ret;
	}
}

interface HttpExpectationHeaderValue : Windows.Web.Http.Headers.IHttpExpectationHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpExpectationHeaderValue)this.asInterface(uuid("4ce585cd-3a99-43af-a2e6-ec232fea9658"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpExpectationHeaderValue)this.asInterface(uuid("4ce585cd-3a99-43af-a2e6-ec232fea9658"))).get_Value(&_ret));
		return hstring(_ret).d_str;
	}
	final void Value(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpExpectationHeaderValue)this.asInterface(uuid("4ce585cd-3a99-43af-a2e6-ec232fea9658"))).set_Value(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) Parameters()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpExpectationHeaderValue)this.asInterface(uuid("4ce585cd-3a99-43af-a2e6-ec232fea9658"))).get_Parameters(&_ret));
		return _ret;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpExpectationHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpExpectationHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpExpectationHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpExpectationHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpExpectationHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpExpectationHeaderValue* out_expectationHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_expectationHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpExpectationHeaderValue New(wstring name)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpExpectationHeaderValueFactory);
		Windows.Web.Http.Headers.HttpExpectationHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpExpectationHeaderValueFactory)factory.asInterface(uuid("4ea275cb-d53e-4868-8856-1e21a5030dc0"))).abi_CreateFromName(hstring(name).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpExpectationHeaderValue New(wstring name, wstring value)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpExpectationHeaderValueFactory);
		Windows.Web.Http.Headers.HttpExpectationHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpExpectationHeaderValueFactory)factory.asInterface(uuid("4ea275cb-d53e-4868-8856-1e21a5030dc0"))).abi_CreateFromNameWithValue(hstring(name).handle, hstring(value).handle, &_ret));
		return _ret;
	}
}

interface HttpExpectationHeaderValueCollection : Windows.Web.Http.Headers.IHttpExpectationHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpExpectationHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpExpectationHeaderValueCollection)this.asInterface(uuid("e78521b3-a0e2-4ac4-9e66-79706cb9fd58"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpExpectationHeaderValueCollection)this.asInterface(uuid("e78521b3-a0e2-4ac4-9e66-79706cb9fd58"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpExpectationHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpExpectationHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpExpectationHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpExpectationHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpExpectationHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpExpectationHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpExpectationHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpExpectationHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpExpectationHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpExpectationHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpExpectationHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpLanguageHeaderValueCollection : Windows.Web.Http.Headers.IHttpLanguageHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Globalization.Language), Windows.Foundation.Collections.IIterable!(Windows.Globalization.Language), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpLanguageHeaderValueCollection)this.asInterface(uuid("9ebd7ca3-8219-44f6-9902-8c56dfd3340c"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpLanguageHeaderValueCollection)this.asInterface(uuid("9ebd7ca3-8219-44f6-9902-8c56dfd3340c"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Globalization.Language GetAt(uint index)
	{
		Windows.Globalization.Language _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Globalization.Language value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Globalization.Language item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Globalization.Language item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Globalization.Language item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Globalization.Language* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Globalization.Language* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Globalization.Language))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Globalization.Language)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Globalization.Language))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpLanguageRangeWithQualityHeaderValue : Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring LanguageRange()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValue)this.asInterface(uuid("7256e102-0080-4db4-a083-7de7b2e5ba4c"))).get_LanguageRange(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.IReference!(double) Quality()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValue)this.asInterface(uuid("7256e102-0080-4db4-a083-7de7b2e5ba4c"))).get_Quality(&_ret));
		return _ret;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue* out_languageRangeWithQualityHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_languageRangeWithQualityHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue New(wstring languageRange)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueFactory);
		Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueFactory)factory.asInterface(uuid("7bb83970-780f-4c83-9fe4-dc3087f6bd55"))).abi_CreateFromLanguageRange(hstring(languageRange).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue New(wstring languageRange, double quality)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueFactory);
		Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueFactory)factory.asInterface(uuid("7bb83970-780f-4c83-9fe4-dc3087f6bd55"))).abi_CreateFromLanguageRangeWithQuality(hstring(languageRange).handle, quality, &_ret));
		return _ret;
	}
}

interface HttpLanguageRangeWithQualityHeaderValueCollection : Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueCollection)this.asInterface(uuid("885d5abd-4b4f-480a-89ce-8aedcee6e3a0"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueCollection)this.asInterface(uuid("885d5abd-4b4f-480a-89ce-8aedcee6e3a0"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpMediaTypeHeaderValue : Windows.Web.Http.Headers.IHttpMediaTypeHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring CharSet()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeHeaderValue)this.asInterface(uuid("16b28533-e728-4fcb-bdb0-08a431a14844"))).get_CharSet(&_ret));
		return hstring(_ret).d_str;
	}
	final void CharSet(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeHeaderValue)this.asInterface(uuid("16b28533-e728-4fcb-bdb0-08a431a14844"))).set_CharSet(hstring(value).handle));
	}
	final wstring MediaType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeHeaderValue)this.asInterface(uuid("16b28533-e728-4fcb-bdb0-08a431a14844"))).get_MediaType(&_ret));
		return hstring(_ret).d_str;
	}
	final void MediaType(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeHeaderValue)this.asInterface(uuid("16b28533-e728-4fcb-bdb0-08a431a14844"))).set_MediaType(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) Parameters()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeHeaderValue)this.asInterface(uuid("16b28533-e728-4fcb-bdb0-08a431a14844"))).get_Parameters(&_ret));
		return _ret;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpMediaTypeHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpMediaTypeHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpMediaTypeHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpMediaTypeHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpMediaTypeHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpMediaTypeHeaderValue* out_mediaTypeHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_mediaTypeHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpMediaTypeHeaderValue New(wstring mediaType)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpMediaTypeHeaderValueFactory);
		Windows.Web.Http.Headers.HttpMediaTypeHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeHeaderValueFactory)factory.asInterface(uuid("bed747a8-cd17-42dd-9367-ab9c5b56dd7d"))).abi_Create(hstring(mediaType).handle, &_ret));
		return _ret;
	}
}

interface HttpMediaTypeWithQualityHeaderValue : Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring CharSet()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValue)this.asInterface(uuid("188d5e32-76be-44a0-b1cd-2074bded2dde"))).get_CharSet(&_ret));
		return hstring(_ret).d_str;
	}
	final void CharSet(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValue)this.asInterface(uuid("188d5e32-76be-44a0-b1cd-2074bded2dde"))).set_CharSet(hstring(value).handle));
	}
	final wstring MediaType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValue)this.asInterface(uuid("188d5e32-76be-44a0-b1cd-2074bded2dde"))).get_MediaType(&_ret));
		return hstring(_ret).d_str;
	}
	final void MediaType(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValue)this.asInterface(uuid("188d5e32-76be-44a0-b1cd-2074bded2dde"))).set_MediaType(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) Parameters()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValue)this.asInterface(uuid("188d5e32-76be-44a0-b1cd-2074bded2dde"))).get_Parameters(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) Quality()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValue)this.asInterface(uuid("188d5e32-76be-44a0-b1cd-2074bded2dde"))).get_Quality(&_ret));
		return _ret;
	}
	final void Quality(Windows.Foundation.IReference!(double) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValue)this.asInterface(uuid("188d5e32-76be-44a0-b1cd-2074bded2dde"))).set_Quality(value));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue* out_mediaTypeWithQualityHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_mediaTypeWithQualityHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue New(wstring mediaType)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueFactory);
		Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueFactory)factory.asInterface(uuid("4c6d20f4-9457-44e6-a323-d122b958780b"))).abi_CreateFromMediaType(hstring(mediaType).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue New(wstring mediaType, double quality)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueFactory);
		Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueFactory)factory.asInterface(uuid("4c6d20f4-9457-44e6-a323-d122b958780b"))).abi_CreateFromMediaTypeWithQuality(hstring(mediaType).handle, quality, &_ret));
		return _ret;
	}
}

interface HttpMediaTypeWithQualityHeaderValueCollection : Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueCollection)this.asInterface(uuid("3c0c6b73-1342-4587-a056-18d02ff67165"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueCollection)this.asInterface(uuid("3c0c6b73-1342-4587-a056-18d02ff67165"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpMethodHeaderValueCollection : Windows.Web.Http.Headers.IHttpMethodHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.HttpMethod), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMethodHeaderValueCollection)this.asInterface(uuid("43bc3ff4-6119-4adf-938c-34bfffcf92ed"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpMethodHeaderValueCollection)this.asInterface(uuid("43bc3ff4-6119-4adf-938c-34bfffcf92ed"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.HttpMethod GetAt(uint index)
	{
		Windows.Web.Http.HttpMethod _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.HttpMethod)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.HttpMethod value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.HttpMethod item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.HttpMethod item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.HttpMethod item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.HttpMethod* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.HttpMethod* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.HttpMethod)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.HttpMethod))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpNameValueHeaderValue : Windows.Web.Http.Headers.IHttpNameValueHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpNameValueHeaderValue)this.asInterface(uuid("d8ba7463-5b9a-4d1b-93f9-aa5b44ecfddf"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpNameValueHeaderValue)this.asInterface(uuid("d8ba7463-5b9a-4d1b-93f9-aa5b44ecfddf"))).get_Value(&_ret));
		return hstring(_ret).d_str;
	}
	final void Value(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpNameValueHeaderValue)this.asInterface(uuid("d8ba7463-5b9a-4d1b-93f9-aa5b44ecfddf"))).set_Value(hstring(value).handle));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpNameValueHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpNameValueHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpNameValueHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpNameValueHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpNameValueHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpNameValueHeaderValue* out_nameValueHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_nameValueHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpNameValueHeaderValue New(wstring name)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpNameValueHeaderValueFactory);
		Windows.Web.Http.Headers.HttpNameValueHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpNameValueHeaderValueFactory)factory.asInterface(uuid("770e2267-cbf8-4736-a925-93fbe10c7ca8"))).abi_CreateFromName(hstring(name).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpNameValueHeaderValue New(wstring name, wstring value)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpNameValueHeaderValueFactory);
		Windows.Web.Http.Headers.HttpNameValueHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpNameValueHeaderValueFactory)factory.asInterface(uuid("770e2267-cbf8-4736-a925-93fbe10c7ca8"))).abi_CreateFromNameWithValue(hstring(name).handle, hstring(value).handle, &_ret));
		return _ret;
	}
}

interface HttpProductHeaderValue : Windows.Web.Http.Headers.IHttpProductHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpProductHeaderValue)this.asInterface(uuid("f4feee03-ebd4-4160-b9ff-807c5183b6e6"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Version()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpProductHeaderValue)this.asInterface(uuid("f4feee03-ebd4-4160-b9ff-807c5183b6e6"))).get_Version(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpProductHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpProductHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpProductHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpProductHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpProductHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpProductHeaderValue* out_productHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_productHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpProductHeaderValue New(wstring productName)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpProductHeaderValueFactory);
		Windows.Web.Http.Headers.HttpProductHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpProductHeaderValueFactory)factory.asInterface(uuid("611aa4f5-82bc-42fb-977b-dc00536e5e86"))).abi_CreateFromName(hstring(productName).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpProductHeaderValue New(wstring productName, wstring productVersion)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpProductHeaderValueFactory);
		Windows.Web.Http.Headers.HttpProductHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpProductHeaderValueFactory)factory.asInterface(uuid("611aa4f5-82bc-42fb-977b-dc00536e5e86"))).abi_CreateFromNameWithVersion(hstring(productName).handle, hstring(productVersion).handle, &_ret));
		return _ret;
	}
}

interface HttpProductInfoHeaderValue : Windows.Web.Http.Headers.IHttpProductInfoHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.Headers.HttpProductHeaderValue Product()
	{
		Windows.Web.Http.Headers.HttpProductHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpProductInfoHeaderValue)this.asInterface(uuid("1b1a8732-4c35-486a-966f-646489198e4d"))).get_Product(&_ret));
		return _ret;
	}
	final wstring Comment()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpProductInfoHeaderValue)this.asInterface(uuid("1b1a8732-4c35-486a-966f-646489198e4d"))).get_Comment(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpProductInfoHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpProductInfoHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpProductInfoHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpProductInfoHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpProductInfoHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpProductInfoHeaderValue* out_productInfoHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_productInfoHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpProductInfoHeaderValue New(wstring productComment)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpProductInfoHeaderValueFactory);
		Windows.Web.Http.Headers.HttpProductInfoHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpProductInfoHeaderValueFactory)factory.asInterface(uuid("24220fbe-eabe-4464-b460-ec010b7c41e2"))).abi_CreateFromComment(hstring(productComment).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpProductInfoHeaderValue New(wstring productName, wstring productVersion)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpProductInfoHeaderValueFactory);
		Windows.Web.Http.Headers.HttpProductInfoHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpProductInfoHeaderValueFactory)factory.asInterface(uuid("24220fbe-eabe-4464-b460-ec010b7c41e2"))).abi_CreateFromNameWithVersion(hstring(productName).handle, hstring(productVersion).handle, &_ret));
		return _ret;
	}
}

interface HttpProductInfoHeaderValueCollection : Windows.Web.Http.Headers.IHttpProductInfoHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpProductInfoHeaderValueCollection)this.asInterface(uuid("877df74a-d69b-44f8-ad4f-453af9c42ed0"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpProductInfoHeaderValueCollection)this.asInterface(uuid("877df74a-d69b-44f8-ad4f-453af9c42ed0"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpProductInfoHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpProductInfoHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpProductInfoHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpProductInfoHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpProductInfoHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpProductInfoHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpProductInfoHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpProductInfoHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpRequestHeaderCollection : Windows.Web.Http.Headers.IHttpRequestHeaderCollection, Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)), Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValueCollection Accept()
	{
		Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_Accept(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValueCollection AcceptEncoding()
	{
		Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_AcceptEncoding(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValueCollection AcceptLanguage()
	{
		Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_AcceptLanguage(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpCredentialsHeaderValue Authorization()
	{
		Windows.Web.Http.Headers.HttpCredentialsHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_Authorization(&_ret));
		return _ret;
	}
	final void Authorization(Windows.Web.Http.Headers.HttpCredentialsHeaderValue value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).set_Authorization(value));
	}
	final Windows.Web.Http.Headers.HttpCacheDirectiveHeaderValueCollection CacheControl()
	{
		Windows.Web.Http.Headers.HttpCacheDirectiveHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_CacheControl(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpConnectionOptionHeaderValueCollection Connection()
	{
		Windows.Web.Http.Headers.HttpConnectionOptionHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_Connection(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpCookiePairHeaderValueCollection Cookie()
	{
		Windows.Web.Http.Headers.HttpCookiePairHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_Cookie(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Date()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_Date(&_ret));
		return _ret;
	}
	final void Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).set_Date(value));
	}
	final Windows.Web.Http.Headers.HttpExpectationHeaderValueCollection Expect()
	{
		Windows.Web.Http.Headers.HttpExpectationHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_Expect(&_ret));
		return _ret;
	}
	final wstring From()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_From(&_ret));
		return hstring(_ret).d_str;
	}
	final void From(wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).set_From(hstring(value).handle));
	}
	final Windows.Networking.HostName Host()
	{
		Windows.Networking.HostName _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_Host(&_ret));
		return _ret;
	}
	final void Host(Windows.Networking.HostName value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).set_Host(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) IfModifiedSince()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_IfModifiedSince(&_ret));
		return _ret;
	}
	final void IfModifiedSince(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).set_IfModifiedSince(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) IfUnmodifiedSince()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_IfUnmodifiedSince(&_ret));
		return _ret;
	}
	final void IfUnmodifiedSince(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).set_IfUnmodifiedSince(value));
	}
	final Windows.Foundation.IReference!(UINT32) MaxForwards()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_MaxForwards(&_ret));
		return _ret;
	}
	final void MaxForwards(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).set_MaxForwards(value));
	}
	final Windows.Web.Http.Headers.HttpCredentialsHeaderValue ProxyAuthorization()
	{
		Windows.Web.Http.Headers.HttpCredentialsHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_ProxyAuthorization(&_ret));
		return _ret;
	}
	final void ProxyAuthorization(Windows.Web.Http.Headers.HttpCredentialsHeaderValue value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).set_ProxyAuthorization(value));
	}
	final Windows.Foundation.Uri Referer()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_Referer(&_ret));
		return _ret;
	}
	final void Referer(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).set_Referer(value));
	}
	final Windows.Web.Http.Headers.HttpTransferCodingHeaderValueCollection TransferEncoding()
	{
		Windows.Web.Http.Headers.HttpTransferCodingHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_TransferEncoding(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpProductInfoHeaderValueCollection UserAgent()
	{
		Windows.Web.Http.Headers.HttpProductInfoHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).get_UserAgent(&_ret));
		return _ret;
	}
	final void Append(wstring name, wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).abi_Append(hstring(name).handle, hstring(value).handle));
	}
	final bool TryAppendWithoutValidation(wstring name, wstring value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpRequestHeaderCollection)this.asInterface(uuid("af40329b-b544-469b-86b9-ac3d466fea36"))).abi_TryAppendWithoutValidation(hstring(name).handle, hstring(value).handle, &_ret));
		return _ret;
	}
	final  HSTRING Lookup(wstring key)
	{
		 HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Lookup(hstring(key).handle, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(wstring key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_HasKey(hstring(key).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 HSTRING) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  HSTRING) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(wstring key,	HSTRING value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Insert(hstring(key).handle, value, &_ret));
		return _ret;
	}
	final void Remove(wstring key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Remove(hstring(key).handle));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpResponseHeaderCollection : Windows.Web.Http.Headers.IHttpResponseHeaderCollection, Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)), Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Age()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).get_Age(&_ret));
		return _ret;
	}
	final void Age(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).set_Age(value));
	}
	final Windows.Web.Http.Headers.HttpMethodHeaderValueCollection Allow()
	{
		Windows.Web.Http.Headers.HttpMethodHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).get_Allow(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpCacheDirectiveHeaderValueCollection CacheControl()
	{
		Windows.Web.Http.Headers.HttpCacheDirectiveHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).get_CacheControl(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpConnectionOptionHeaderValueCollection Connection()
	{
		Windows.Web.Http.Headers.HttpConnectionOptionHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).get_Connection(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) Date()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).get_Date(&_ret));
		return _ret;
	}
	final void Date(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).set_Date(value));
	}
	final Windows.Foundation.Uri Location()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).get_Location(&_ret));
		return _ret;
	}
	final void Location(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).set_Location(value));
	}
	final Windows.Web.Http.Headers.HttpChallengeHeaderValueCollection ProxyAuthenticate()
	{
		Windows.Web.Http.Headers.HttpChallengeHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).get_ProxyAuthenticate(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue RetryAfter()
	{
		Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).get_RetryAfter(&_ret));
		return _ret;
	}
	final void RetryAfter(Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).set_RetryAfter(value));
	}
	final Windows.Web.Http.Headers.HttpTransferCodingHeaderValueCollection TransferEncoding()
	{
		Windows.Web.Http.Headers.HttpTransferCodingHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).get_TransferEncoding(&_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpChallengeHeaderValueCollection WwwAuthenticate()
	{
		Windows.Web.Http.Headers.HttpChallengeHeaderValueCollection _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).get_WwwAuthenticate(&_ret));
		return _ret;
	}
	final void Append(wstring name, wstring value)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).abi_Append(hstring(name).handle, hstring(value).handle));
	}
	final bool TryAppendWithoutValidation(wstring name, wstring value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpResponseHeaderCollection)this.asInterface(uuid("7a990969-fa3f-41ed-aac6-bf957975c16b"))).abi_TryAppendWithoutValidation(hstring(name).handle, hstring(value).handle, &_ret));
		return _ret;
	}
	final  HSTRING Lookup(wstring key)
	{
		 HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Lookup(hstring(key).handle, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(wstring key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_HasKey(hstring(key).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 HSTRING) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  HSTRING) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(wstring key,	HSTRING value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Insert(hstring(key).handle, value, &_ret));
		return _ret;
	}
	final void Remove(wstring key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Remove(hstring(key).handle));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}

interface HttpTransferCodingHeaderValue : Windows.Web.Http.Headers.IHttpTransferCodingHeaderValue, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) Parameters()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpNameValueHeaderValue) _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpTransferCodingHeaderValue)this.asInterface(uuid("436f32f9-3ded-42bd-b38a-5496a2511ce6"))).get_Parameters(&_ret));
		return _ret;
	}
	final wstring Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpTransferCodingHeaderValue)this.asInterface(uuid("436f32f9-3ded-42bd-b38a-5496a2511ce6"))).get_Value(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}

	private static Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueStatics _staticInstance;
	public static Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueStatics);
		return _staticInstance;
	}
	static Windows.Web.Http.Headers.HttpTransferCodingHeaderValue Parse(wstring input)
	{
		Windows.Web.Http.Headers.HttpTransferCodingHeaderValue _ret;
		Debug.OK(staticInstance.abi_Parse(hstring(input).handle, &_ret));
		return _ret;
	}
	static bool TryParse(wstring input, Windows.Web.Http.Headers.HttpTransferCodingHeaderValue* out_transferCodingHeaderValue)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(hstring(input).handle, out_transferCodingHeaderValue, &_ret));
		return _ret;
	}
	static Windows.Web.Http.Headers.HttpTransferCodingHeaderValue New(wstring input)
	{
		auto factory = factory!(Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueFactory);
		Windows.Web.Http.Headers.HttpTransferCodingHeaderValue _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueFactory)factory.asInterface(uuid("bb62dffc-e361-4f08-8e4f-c9e723de703b"))).abi_Create(hstring(input).handle, &_ret));
		return _ret;
	}
}

interface HttpTransferCodingHeaderValueCollection : Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue), Windows.Foundation.IStringable
{
extern(Windows):
	final void ParseAdd(wstring input)
	{
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueCollection)this.asInterface(uuid("202c8c34-2c03-49b8-9665-73e27cb2fc79"))).abi_ParseAdd(hstring(input).handle));
	}
	final bool TryParseAdd(wstring input)
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueCollection)this.asInterface(uuid("202c8c34-2c03-49b8-9665-73e27cb2fc79"))).abi_TryParseAdd(hstring(input).handle, &_ret));
		return _ret;
	}
	final Windows.Web.Http.Headers.HttpTransferCodingHeaderValue GetAt(uint index)
	{
		Windows.Web.Http.Headers.HttpTransferCodingHeaderValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Web.Http.Headers.HttpTransferCodingHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Web.Http.Headers.HttpTransferCodingHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Web.Http.Headers.HttpTransferCodingHeaderValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Web.Http.Headers.HttpTransferCodingHeaderValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue))this).abi_First(out_first));
	}
	final wstring ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return hstring(_ret).d_str;
	}
}