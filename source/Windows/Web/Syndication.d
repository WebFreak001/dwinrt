module Windows.Web.Syndication;

import dwinrt;

struct RetrievalProgress
{
	UINT32 BytesRetrieved;
	UINT32 TotalBytesToRetrieve;
}

struct TransferProgress
{
	UINT32 BytesSent;
	UINT32 TotalBytesToSend;
	UINT32 BytesRetrieved;
	UINT32 TotalBytesToRetrieve;
}

@uuid("71e8f969-526e-4001-9a91-e84f83161ab1")
@WinrtFactory("Windows.Web.Syndication.SyndicationAttribute")
interface ISyndicationAttribute : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Namespace(HSTRING* return_value);
	HRESULT set_Namespace(HSTRING value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT set_Value(HSTRING value);
}

@uuid("624f1599-ed3e-420f-be86-640414886e4b")
@WinrtFactory("Windows.Web.Syndication.SyndicationAttribute")
interface ISyndicationAttributeFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationAttribute(HSTRING attributeName, HSTRING attributeNamespace, HSTRING attributeValue, Windows.Web.Syndication.SyndicationAttribute* return_syndicationAttribute);
}

@uuid("8715626f-0cba-4a7f-89ff-ecb5281423b6")
@WinrtFactory("Windows.Web.Syndication.SyndicationCategory")
interface ISyndicationCategory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Label(HSTRING* return_value);
	HRESULT set_Label(HSTRING value);
	HRESULT get_Scheme(HSTRING* return_value);
	HRESULT set_Scheme(HSTRING value);
	HRESULT get_Term(HSTRING* return_value);
	HRESULT set_Term(HSTRING value);
}

@uuid("ab42802f-49e0-4525-8ab2-ab45c02528ff")
@WinrtFactory("Windows.Web.Syndication.SyndicationCategory")
interface ISyndicationCategoryFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationCategory(HSTRING term, Windows.Web.Syndication.SyndicationCategory* return_category);
	HRESULT abi_CreateSyndicationCategoryEx(HSTRING term, HSTRING scheme, HSTRING label, Windows.Web.Syndication.SyndicationCategory* return_category);
}

@uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5")
interface ISyndicationClient : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServerCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_ServerCredential(Windows.Security.Credentials.PasswordCredential value);
	HRESULT get_ProxyCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_ProxyCredential(Windows.Security.Credentials.PasswordCredential value);
	HRESULT get_MaxResponseBufferSize(UINT32* return_value);
	HRESULT set_MaxResponseBufferSize(UINT32 value);
	HRESULT get_Timeout(UINT32* return_value);
	HRESULT set_Timeout(UINT32 value);
	HRESULT get_BypassCacheOnRetrieve(bool* return_value);
	HRESULT set_BypassCacheOnRetrieve(bool value);
	HRESULT abi_SetRequestHeader(HSTRING name, HSTRING value);
	HRESULT abi_RetrieveFeedAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationFeed, Windows.Web.Syndication.RetrievalProgress)* return_operation);
}

@uuid("2ec4b32c-a79b-4114-b29a-05dffbafb9a4")
@WinrtFactory("Windows.Web.Syndication.SyndicationClient")
interface ISyndicationClientFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationClient(Windows.Security.Credentials.PasswordCredential serverCredential, Windows.Web.Syndication.SyndicationClient* return_syndicationClient);
}

@uuid("4641fefe-0e55-40d0-b8d0-6a2ccba9fc7c")
@WinrtFactory("Windows.Web.Syndication.SyndicationContent")
interface ISyndicationContent : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SourceUri(Windows.Foundation.Uri* return_value);
	HRESULT set_SourceUri(Windows.Foundation.Uri value);
}

@uuid("3d2fbb93-9520-4173-9388-7e2df324a8a0")
@WinrtFactory("Windows.Web.Syndication.SyndicationContent")
interface ISyndicationContentFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationContent(HSTRING text, Windows.Web.Syndication.SyndicationTextType type, Windows.Web.Syndication.SyndicationContent* return_content);
	HRESULT abi_CreateSyndicationContentWithSourceUri(Windows.Foundation.Uri sourceUri, Windows.Web.Syndication.SyndicationContent* return_content);
}

@uuid("1fbb2361-45c7-4833-8aa0-be5f3b58a7f4")
@WinrtFactory("Windows.Web.Syndication.SyndicationError")
interface ISyndicationErrorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetStatus(INT32 hresult, Windows.Web.Syndication.SyndicationErrorStatus* return_status);
}

@uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b")
@WinrtFactory("Windows.Web.Syndication.SyndicationFeed")
interface ISyndicationFeed : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Authors(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson)* return_value);
	HRESULT get_Categories(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationCategory)* return_value);
	HRESULT get_Contributors(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson)* return_value);
	HRESULT get_Generator(Windows.Web.Syndication.SyndicationGenerator* return_value);
	HRESULT set_Generator(Windows.Web.Syndication.SyndicationGenerator value);
	HRESULT get_IconUri(Windows.Foundation.Uri* return_value);
	HRESULT set_IconUri(Windows.Foundation.Uri value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationItem)* return_value);
	HRESULT get_LastUpdatedTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_LastUpdatedTime(Windows.Foundation.DateTime value);
	HRESULT get_Links(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationLink)* return_value);
	HRESULT get_ImageUri(Windows.Foundation.Uri* return_value);
	HRESULT set_ImageUri(Windows.Foundation.Uri value);
	HRESULT get_Rights(Windows.Web.Syndication.ISyndicationText* return_value);
	HRESULT set_Rights(Windows.Web.Syndication.ISyndicationText value);
	HRESULT get_Subtitle(Windows.Web.Syndication.ISyndicationText* return_value);
	HRESULT set_Subtitle(Windows.Web.Syndication.ISyndicationText value);
	HRESULT get_Title(Windows.Web.Syndication.ISyndicationText* return_value);
	HRESULT set_Title(Windows.Web.Syndication.ISyndicationText value);
	HRESULT get_FirstUri(Windows.Foundation.Uri* return_value);
	HRESULT get_LastUri(Windows.Foundation.Uri* return_value);
	HRESULT get_NextUri(Windows.Foundation.Uri* return_value);
	HRESULT get_PreviousUri(Windows.Foundation.Uri* return_value);
	HRESULT get_SourceFormat(Windows.Web.Syndication.SyndicationFormat* return_value);
	HRESULT abi_Load(HSTRING feed);
	HRESULT abi_LoadFromXml(Windows.Data.Xml.Dom.XmlDocument feedDocument);
}

@uuid("23472232-8be9-48b7-8934-6205131d9357")
@WinrtFactory("Windows.Web.Syndication.SyndicationFeed")
interface ISyndicationFeedFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationFeed(HSTRING title, HSTRING subtitle, Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationFeed* return_feed);
}

@uuid("9768b379-fb2b-4f6d-b41c-088a5868825c")
@WinrtFactory("Windows.Web.Syndication.SyndicationGenerator")
interface ISyndicationGenerator : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
	HRESULT get_Version(HSTRING* return_value);
	HRESULT set_Version(HSTRING value);
}

@uuid("a34083e3-1e26-4dbc-ba9d-1ab84beff97b")
@WinrtFactory("Windows.Web.Syndication.SyndicationGenerator")
interface ISyndicationGeneratorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationGenerator(HSTRING text, Windows.Web.Syndication.SyndicationGenerator* return_generator);
}

@uuid("548db883-c384-45c1-8ae8-a378c4ec486c")
@WinrtFactory("Windows.Web.Syndication.SyndicationItem")
interface ISyndicationItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Authors(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson)* return_value);
	HRESULT get_Categories(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationCategory)* return_value);
	HRESULT get_Contributors(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson)* return_value);
	HRESULT get_Content(Windows.Web.Syndication.SyndicationContent* return_value);
	HRESULT set_Content(Windows.Web.Syndication.SyndicationContent value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_LastUpdatedTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_LastUpdatedTime(Windows.Foundation.DateTime value);
	HRESULT get_Links(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationLink)* return_value);
	HRESULT get_PublishedDate(Windows.Foundation.DateTime* return_value);
	HRESULT set_PublishedDate(Windows.Foundation.DateTime value);
	HRESULT get_Rights(Windows.Web.Syndication.ISyndicationText* return_value);
	HRESULT set_Rights(Windows.Web.Syndication.ISyndicationText value);
	HRESULT get_Source(Windows.Web.Syndication.SyndicationFeed* return_value);
	HRESULT set_Source(Windows.Web.Syndication.SyndicationFeed value);
	HRESULT get_Summary(Windows.Web.Syndication.ISyndicationText* return_value);
	HRESULT set_Summary(Windows.Web.Syndication.ISyndicationText value);
	HRESULT get_Title(Windows.Web.Syndication.ISyndicationText* return_value);
	HRESULT set_Title(Windows.Web.Syndication.ISyndicationText value);
	HRESULT get_CommentsUri(Windows.Foundation.Uri* return_value);
	HRESULT set_CommentsUri(Windows.Foundation.Uri value);
	HRESULT get_EditUri(Windows.Foundation.Uri* return_value);
	HRESULT get_EditMediaUri(Windows.Foundation.Uri* return_value);
	HRESULT get_ETag(HSTRING* return_value);
	HRESULT get_ItemUri(Windows.Foundation.Uri* return_value);
	HRESULT abi_Load(HSTRING item);
	HRESULT abi_LoadFromXml(Windows.Data.Xml.Dom.XmlDocument itemDocument);
}

@uuid("251d434f-7db8-487a-85e4-10d191e66ebb")
@WinrtFactory("Windows.Web.Syndication.SyndicationItem")
interface ISyndicationItemFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationItem(HSTRING title, Windows.Web.Syndication.SyndicationContent content, Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationItem* return_item);
}

@uuid("27553abd-a10e-41b5-86bd-9759086eb0c5")
@WinrtFactory("Windows.Web.Syndication.SyndicationLink")
interface ISyndicationLink : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Length(UINT32* return_value);
	HRESULT set_Length(UINT32 value);
	HRESULT get_MediaType(HSTRING* return_value);
	HRESULT set_MediaType(HSTRING value);
	HRESULT get_Relationship(HSTRING* return_value);
	HRESULT set_Relationship(HSTRING value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
	HRESULT get_ResourceLanguage(HSTRING* return_value);
	HRESULT set_ResourceLanguage(HSTRING value);
}

@uuid("5ed863d4-5535-48ac-98d4-c190995080b3")
@WinrtFactory("Windows.Web.Syndication.SyndicationLink")
interface ISyndicationLinkFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationLink(Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationLink* return_link);
	HRESULT abi_CreateSyndicationLinkEx(Windows.Foundation.Uri uri, HSTRING relationship, HSTRING title, HSTRING mediaType, UINT32 length, Windows.Web.Syndication.SyndicationLink* return_link);
}

@uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2")
interface ISyndicationNode : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NodeName(HSTRING* return_value);
	HRESULT set_NodeName(HSTRING value);
	HRESULT get_NodeNamespace(HSTRING* return_value);
	HRESULT set_NodeNamespace(HSTRING value);
	HRESULT get_NodeValue(HSTRING* return_value);
	HRESULT set_NodeValue(HSTRING value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT set_Language(HSTRING value);
	HRESULT get_BaseUri(Windows.Foundation.Uri* return_value);
	HRESULT set_BaseUri(Windows.Foundation.Uri value);
	HRESULT get_AttributeExtensions(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute)* return_value);
	HRESULT get_ElementExtensions(Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode)* return_value);
	HRESULT abi_GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format, Windows.Data.Xml.Dom.XmlDocument* return_xmlDocument);
}

@uuid("12902188-4acb-49a8-b777-a5eb92e18a79")
@WinrtFactory("Windows.Web.Syndication.SyndicationNode")
interface ISyndicationNodeFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationNode(HSTRING nodeName, HSTRING nodeNamespace, HSTRING nodeValue, Windows.Web.Syndication.SyndicationNode* return_node);
}

@uuid("fa1ee5da-a7c6-4517-a096-0143faf29327")
@WinrtFactory("Windows.Web.Syndication.SyndicationPerson")
interface ISyndicationPerson : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Email(HSTRING* return_value);
	HRESULT set_Email(HSTRING value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
}

@uuid("dcf4886d-229d-4b58-a49b-f3d2f0f5c99f")
@WinrtFactory("Windows.Web.Syndication.SyndicationPerson")
interface ISyndicationPersonFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationPerson(HSTRING name, Windows.Web.Syndication.SyndicationPerson* return_person);
	HRESULT abi_CreateSyndicationPersonEx(HSTRING name, HSTRING email, Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationPerson* return_person);
}

@uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9")
interface ISyndicationText : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_Type(HSTRING* return_value);
	HRESULT set_Type(HSTRING value);
	HRESULT get_Xml(Windows.Data.Xml.Dom.XmlDocument* return_value);
	HRESULT set_Xml(Windows.Data.Xml.Dom.XmlDocument value);
}

@uuid("ee7342f7-11c6-4b25-ab62-e596bd162946")
@WinrtFactory("Windows.Web.Syndication.SyndicationText")
interface ISyndicationTextFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateSyndicationText(HSTRING text, Windows.Web.Syndication.SyndicationText* return_syndicationText);
	HRESULT abi_CreateSyndicationTextEx(HSTRING text, Windows.Web.Syndication.SyndicationTextType type, Windows.Web.Syndication.SyndicationText* return_syndicationText);
}

interface SyndicationAttribute : Windows.Web.Syndication.ISyndicationAttribute
{
}

interface SyndicationCategory : Windows.Web.Syndication.ISyndicationCategory, Windows.Web.Syndication.ISyndicationNode
{
}

interface SyndicationClient : Windows.Web.Syndication.ISyndicationClient
{
}

interface SyndicationContent : Windows.Web.Syndication.ISyndicationText, Windows.Web.Syndication.ISyndicationNode, Windows.Web.Syndication.ISyndicationContent
{
}

interface SyndicationError
{
}

interface SyndicationFeed : Windows.Web.Syndication.ISyndicationFeed, Windows.Web.Syndication.ISyndicationNode
{
}

interface SyndicationGenerator : Windows.Web.Syndication.ISyndicationGenerator, Windows.Web.Syndication.ISyndicationNode
{
}

interface SyndicationItem : Windows.Web.Syndication.ISyndicationItem, Windows.Web.Syndication.ISyndicationNode
{
}

interface SyndicationLink : Windows.Web.Syndication.ISyndicationLink, Windows.Web.Syndication.ISyndicationNode
{
}

interface SyndicationNode : Windows.Web.Syndication.ISyndicationNode
{
}

interface SyndicationPerson : Windows.Web.Syndication.ISyndicationPerson, Windows.Web.Syndication.ISyndicationNode
{
}

interface SyndicationText : Windows.Web.Syndication.ISyndicationText, Windows.Web.Syndication.ISyndicationNode
{
}

enum SyndicationErrorStatus
{
	Unknown = 0,
	MissingRequiredElement = 1,
	MissingRequiredAttribute = 2,
	InvalidXml = 3,
	UnexpectedContent = 4,
	UnsupportedFormat = 5
}

enum SyndicationFormat
{
	Atom10 = 0,
	Rss20 = 1,
	Rss10 = 2,
	Rss092 = 3,
	Rss091 = 4,
	Atom03 = 5
}

enum SyndicationTextType
{
	Text = 0,
	Html = 1,
	Xhtml = 2
}