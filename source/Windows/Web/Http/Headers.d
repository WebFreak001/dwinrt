module Windows.Web.Http.Headers;

import dwinrt;

@uuid("9a586b89-d5d0-4fbe-bd9d-b5b3636811b4")
@WinrtFactory("Windows.Web.Http.Headers.HttpCacheDirectiveHeaderValueCollection")
interface IHttpCacheDirectiveHeaderValueCollection : IInspectable
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
interface IHttpChallengeHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
interface IHttpConnectionOptionHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
interface IHttpContentCodingHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
interface IHttpContentCodingWithQualityHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
	HRESULT get_Size(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT set_Size(Windows.Foundation.IReference!(UINT64) value);
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
interface IHttpContentHeaderCollection : IInspectable
{
extern(Windows):
	HRESULT get_ContentDisposition(Windows.Web.Http.Headers.HttpContentDispositionHeaderValue* return_value);
	HRESULT set_ContentDisposition(Windows.Web.Http.Headers.HttpContentDispositionHeaderValue value);
	HRESULT get_ContentEncoding(Windows.Web.Http.Headers.HttpContentCodingHeaderValueCollection* return_value);
	HRESULT get_ContentLanguage(Windows.Web.Http.Headers.HttpLanguageHeaderValueCollection* return_value);
	HRESULT get_ContentLength(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT set_ContentLength(Windows.Foundation.IReference!(UINT64) value);
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

@uuid("04d967d3-a4f6-495c-9530-8579fcba8aa9")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentRangeHeaderValue")
interface IHttpContentRangeHeaderValue : IInspectable
{
extern(Windows):
	HRESULT get_FirstBytePosition(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_LastBytePosition(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_Length(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_Unit(HSTRING* return_value);
	HRESULT set_Unit(HSTRING value);
}

@uuid("3f5bd691-a03c-4456-9a6f-ef27ecd03cae")
@WinrtFactory("Windows.Web.Http.Headers.HttpContentRangeHeaderValue")
interface IHttpContentRangeHeaderValueFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromLength(UINT64 length, Windows.Web.Http.Headers.HttpContentRangeHeaderValue* return_contentRangeHeaderValue);
	HRESULT abi_CreateFromRange(UINT64 from, UINT64 to, Windows.Web.Http.Headers.HttpContentRangeHeaderValue* return_contentRangeHeaderValue);
	HRESULT abi_CreateFromRangeWithLength(UINT64 from, UINT64 to, UINT64 length, Windows.Web.Http.Headers.HttpContentRangeHeaderValue* return_contentRangeHeaderValue);
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
interface IHttpCookiePairHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
interface IHttpExpectationHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
interface IHttpLanguageHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
interface IHttpLanguageRangeWithQualityHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
interface IHttpMediaTypeWithQualityHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
interface IHttpMethodHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
interface IHttpProductInfoHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
interface IHttpRequestHeaderCollection : IInspectable
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

@uuid("7a990969-fa3f-41ed-aac6-bf957975c16b")
@WinrtFactory("Windows.Web.Http.Headers.HttpResponseHeaderCollection")
interface IHttpResponseHeaderCollection : IInspectable
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
interface IHttpTransferCodingHeaderValueCollection : IInspectable
{
extern(Windows):
	HRESULT abi_ParseAdd(HSTRING input);
	HRESULT abi_TryParseAdd(HSTRING input, bool* return_succeeded);
}

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
}

interface HttpChallengeHeaderValue : Windows.Web.Http.Headers.IHttpChallengeHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpChallengeHeaderValueCollection : Windows.Web.Http.Headers.IHttpChallengeHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpChallengeHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpChallengeHeaderValue), Windows.Foundation.IStringable
{
}

interface HttpConnectionOptionHeaderValue : Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpConnectionOptionHeaderValueCollection : Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue), Windows.Foundation.IStringable
{
}

interface HttpContentCodingHeaderValue : Windows.Web.Http.Headers.IHttpContentCodingHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpContentCodingHeaderValueCollection : Windows.Web.Http.Headers.IHttpContentCodingHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpContentCodingHeaderValue), Windows.Foundation.IStringable
{
}

interface HttpContentCodingWithQualityHeaderValue : Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpContentCodingWithQualityHeaderValueCollection : Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue), Windows.Foundation.IStringable
{
}

interface HttpContentDispositionHeaderValue : Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpContentHeaderCollection : Windows.Web.Http.Headers.IHttpContentHeaderCollection, Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)), Windows.Foundation.IStringable
{
}

interface HttpContentRangeHeaderValue : Windows.Web.Http.Headers.IHttpContentRangeHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpCookiePairHeaderValue : Windows.Web.Http.Headers.IHttpCookiePairHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpCookiePairHeaderValueCollection : Windows.Web.Http.Headers.IHttpCookiePairHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpCookiePairHeaderValue), Windows.Foundation.IStringable
{
}

interface HttpCredentialsHeaderValue : Windows.Web.Http.Headers.IHttpCredentialsHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpDateOrDeltaHeaderValue : Windows.Web.Http.Headers.IHttpDateOrDeltaHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpExpectationHeaderValue : Windows.Web.Http.Headers.IHttpExpectationHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpExpectationHeaderValueCollection : Windows.Web.Http.Headers.IHttpExpectationHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpExpectationHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpExpectationHeaderValue), Windows.Foundation.IStringable
{
}

interface HttpLanguageHeaderValueCollection : Windows.Web.Http.Headers.IHttpLanguageHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Globalization.Language), Windows.Foundation.Collections.IIterable!(Windows.Globalization.Language), Windows.Foundation.IStringable
{
}

interface HttpLanguageRangeWithQualityHeaderValue : Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpLanguageRangeWithQualityHeaderValueCollection : Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue), Windows.Foundation.IStringable
{
}

interface HttpMediaTypeHeaderValue : Windows.Web.Http.Headers.IHttpMediaTypeHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpMediaTypeWithQualityHeaderValue : Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpMediaTypeWithQualityHeaderValueCollection : Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue), Windows.Foundation.IStringable
{
}

interface HttpMethodHeaderValueCollection : Windows.Web.Http.Headers.IHttpMethodHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.HttpMethod), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.HttpMethod), Windows.Foundation.IStringable
{
}

interface HttpNameValueHeaderValue : Windows.Web.Http.Headers.IHttpNameValueHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpProductHeaderValue : Windows.Web.Http.Headers.IHttpProductHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpProductInfoHeaderValue : Windows.Web.Http.Headers.IHttpProductInfoHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpProductInfoHeaderValueCollection : Windows.Web.Http.Headers.IHttpProductInfoHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpProductInfoHeaderValue), Windows.Foundation.IStringable
{
}

interface HttpRequestHeaderCollection : Windows.Web.Http.Headers.IHttpRequestHeaderCollection, Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)), Windows.Foundation.IStringable
{
}

interface HttpResponseHeaderCollection : Windows.Web.Http.Headers.IHttpResponseHeaderCollection, Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)), Windows.Foundation.IStringable
{
}

interface HttpTransferCodingHeaderValue : Windows.Web.Http.Headers.IHttpTransferCodingHeaderValue, Windows.Foundation.IStringable
{
}

interface HttpTransferCodingHeaderValueCollection : Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueCollection, Windows.Foundation.Collections.IVector!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue), Windows.Foundation.Collections.IIterable!(Windows.Web.Http.Headers.HttpTransferCodingHeaderValue), Windows.Foundation.IStringable
{
}