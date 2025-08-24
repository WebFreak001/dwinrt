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
extern(Windows):
	HRESULT abi_CreateSyndicationAttribute(HSTRING attributeName, HSTRING attributeNamespace, HSTRING attributeValue, Windows.Web.Syndication.SyndicationAttribute* return_syndicationAttribute);
}

@uuid("8715626f-0cba-4a7f-89ff-ecb5281423b6")
@WinrtFactory("Windows.Web.Syndication.SyndicationCategory")
interface ISyndicationCategory_Base : IInspectable
{
extern(Windows):
	HRESULT get_Label(HSTRING* return_value);
	HRESULT set_Label(HSTRING value);
	HRESULT get_Scheme(HSTRING* return_value);
	HRESULT set_Scheme(HSTRING value);
	HRESULT get_Term(HSTRING* return_value);
	HRESULT set_Term(HSTRING value);
}
@uuid("8715626f-0cba-4a7f-89ff-ecb5281423b6")
@WinrtFactory("Windows.Web.Syndication.SyndicationCategory")
interface ISyndicationCategory : ISyndicationCategory_Base, Windows.Web.Syndication.ISyndicationNode {}

@uuid("ab42802f-49e0-4525-8ab2-ab45c02528ff")
@WinrtFactory("Windows.Web.Syndication.SyndicationCategory")
interface ISyndicationCategoryFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateSyndicationCategory(HSTRING term, Windows.Web.Syndication.SyndicationCategory* return_category);
	HRESULT abi_CreateSyndicationCategoryEx(HSTRING term, HSTRING scheme, HSTRING label, Windows.Web.Syndication.SyndicationCategory* return_category);
}

@uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5")
interface ISyndicationClient : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateSyndicationClient(Windows.Security.Credentials.PasswordCredential serverCredential, Windows.Web.Syndication.SyndicationClient* return_syndicationClient);
}

@uuid("4641fefe-0e55-40d0-b8d0-6a2ccba9fc7c")
@WinrtFactory("Windows.Web.Syndication.SyndicationContent")
interface ISyndicationContent_Base : IInspectable
{
extern(Windows):
	HRESULT get_SourceUri(Windows.Foundation.Uri* return_value);
	HRESULT set_SourceUri(Windows.Foundation.Uri value);
}
@uuid("4641fefe-0e55-40d0-b8d0-6a2ccba9fc7c")
@WinrtFactory("Windows.Web.Syndication.SyndicationContent")
interface ISyndicationContent : ISyndicationContent_Base, Windows.Web.Syndication.ISyndicationText, Windows.Web.Syndication.ISyndicationNode {}

@uuid("3d2fbb93-9520-4173-9388-7e2df324a8a0")
@WinrtFactory("Windows.Web.Syndication.SyndicationContent")
interface ISyndicationContentFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateSyndicationContent(HSTRING text, Windows.Web.Syndication.SyndicationTextType type, Windows.Web.Syndication.SyndicationContent* return_content);
	HRESULT abi_CreateSyndicationContentWithSourceUri(Windows.Foundation.Uri sourceUri, Windows.Web.Syndication.SyndicationContent* return_content);
}

@uuid("1fbb2361-45c7-4833-8aa0-be5f3b58a7f4")
@WinrtFactory("Windows.Web.Syndication.SyndicationError")
interface ISyndicationErrorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetStatus(INT32 hresult, Windows.Web.Syndication.SyndicationErrorStatus* return_status);
}

@uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b")
@WinrtFactory("Windows.Web.Syndication.SyndicationFeed")
interface ISyndicationFeed_Base : IInspectable
{
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
@uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b")
@WinrtFactory("Windows.Web.Syndication.SyndicationFeed")
interface ISyndicationFeed : ISyndicationFeed_Base, Windows.Web.Syndication.ISyndicationNode {}

@uuid("23472232-8be9-48b7-8934-6205131d9357")
@WinrtFactory("Windows.Web.Syndication.SyndicationFeed")
interface ISyndicationFeedFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateSyndicationFeed(HSTRING title, HSTRING subtitle, Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationFeed* return_feed);
}

@uuid("9768b379-fb2b-4f6d-b41c-088a5868825c")
@WinrtFactory("Windows.Web.Syndication.SyndicationGenerator")
interface ISyndicationGenerator : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateSyndicationGenerator(HSTRING text, Windows.Web.Syndication.SyndicationGenerator* return_generator);
}

@uuid("548db883-c384-45c1-8ae8-a378c4ec486c")
@WinrtFactory("Windows.Web.Syndication.SyndicationItem")
interface ISyndicationItem_Base : IInspectable
{
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
@uuid("548db883-c384-45c1-8ae8-a378c4ec486c")
@WinrtFactory("Windows.Web.Syndication.SyndicationItem")
interface ISyndicationItem : ISyndicationItem_Base, Windows.Web.Syndication.ISyndicationNode {}

@uuid("251d434f-7db8-487a-85e4-10d191e66ebb")
@WinrtFactory("Windows.Web.Syndication.SyndicationItem")
interface ISyndicationItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateSyndicationItem(HSTRING title, Windows.Web.Syndication.SyndicationContent content, Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationItem* return_item);
}

@uuid("27553abd-a10e-41b5-86bd-9759086eb0c5")
@WinrtFactory("Windows.Web.Syndication.SyndicationLink")
interface ISyndicationLink_Base : IInspectable
{
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
@uuid("27553abd-a10e-41b5-86bd-9759086eb0c5")
@WinrtFactory("Windows.Web.Syndication.SyndicationLink")
interface ISyndicationLink : ISyndicationLink_Base, Windows.Web.Syndication.ISyndicationNode {}

@uuid("5ed863d4-5535-48ac-98d4-c190995080b3")
@WinrtFactory("Windows.Web.Syndication.SyndicationLink")
interface ISyndicationLinkFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateSyndicationLink(Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationLink* return_link);
	HRESULT abi_CreateSyndicationLinkEx(Windows.Foundation.Uri uri, HSTRING relationship, HSTRING title, HSTRING mediaType, UINT32 length, Windows.Web.Syndication.SyndicationLink* return_link);
}

@uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2")
interface ISyndicationNode : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateSyndicationNode(HSTRING nodeName, HSTRING nodeNamespace, HSTRING nodeValue, Windows.Web.Syndication.SyndicationNode* return_node);
}

@uuid("fa1ee5da-a7c6-4517-a096-0143faf29327")
@WinrtFactory("Windows.Web.Syndication.SyndicationPerson")
interface ISyndicationPerson_Base : IInspectable
{
extern(Windows):
	HRESULT get_Email(HSTRING* return_value);
	HRESULT set_Email(HSTRING value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
}
@uuid("fa1ee5da-a7c6-4517-a096-0143faf29327")
@WinrtFactory("Windows.Web.Syndication.SyndicationPerson")
interface ISyndicationPerson : ISyndicationPerson_Base, Windows.Web.Syndication.ISyndicationNode {}

@uuid("dcf4886d-229d-4b58-a49b-f3d2f0f5c99f")
@WinrtFactory("Windows.Web.Syndication.SyndicationPerson")
interface ISyndicationPersonFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateSyndicationPerson(HSTRING name, Windows.Web.Syndication.SyndicationPerson* return_person);
	HRESULT abi_CreateSyndicationPersonEx(HSTRING name, HSTRING email, Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationPerson* return_person);
}

@uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9")
interface ISyndicationText_Base : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
	HRESULT get_Type(HSTRING* return_value);
	HRESULT set_Type(HSTRING value);
	HRESULT get_Xml(Windows.Data.Xml.Dom.XmlDocument* return_value);
	HRESULT set_Xml(Windows.Data.Xml.Dom.XmlDocument value);
}
@uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9")
interface ISyndicationText : ISyndicationText_Base, Windows.Web.Syndication.ISyndicationNode {}

@uuid("ee7342f7-11c6-4b25-ab62-e596bd162946")
@WinrtFactory("Windows.Web.Syndication.SyndicationText")
interface ISyndicationTextFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateSyndicationText(HSTRING text, Windows.Web.Syndication.SyndicationText* return_syndicationText);
	HRESULT abi_CreateSyndicationTextEx(HSTRING text, Windows.Web.Syndication.SyndicationTextType type, Windows.Web.Syndication.SyndicationText* return_syndicationText);
}

interface SyndicationAttribute : Windows.Web.Syndication.ISyndicationAttribute
{
extern(Windows):
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationAttribute)this.asInterface(uuid("71e8f969-526e-4001-9a91-e84f83161ab1"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final void Name(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationAttribute)this.asInterface(uuid("71e8f969-526e-4001-9a91-e84f83161ab1"))).set_Name(hstring(value).handle));
	}
	final wstring Namespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationAttribute)this.asInterface(uuid("71e8f969-526e-4001-9a91-e84f83161ab1"))).get_Namespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void Namespace(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationAttribute)this.asInterface(uuid("71e8f969-526e-4001-9a91-e84f83161ab1"))).set_Namespace(hstring(value).handle));
	}
	final wstring Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationAttribute)this.asInterface(uuid("71e8f969-526e-4001-9a91-e84f83161ab1"))).get_Value(&_ret));
		return hstring(_ret).d_str;
	}
	final void Value(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationAttribute)this.asInterface(uuid("71e8f969-526e-4001-9a91-e84f83161ab1"))).set_Value(hstring(value).handle));
	}
	static SyndicationAttribute New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationAttribute).abi_ActivateInstance(&ret));
		return cast(SyndicationAttribute) ret;
	}
	static Windows.Web.Syndication.SyndicationAttribute New(wstring attributeName, wstring attributeNamespace, wstring attributeValue)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationAttributeFactory);
		Windows.Web.Syndication.SyndicationAttribute _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationAttributeFactory)factory.asInterface(uuid("624f1599-ed3e-420f-be86-640414886e4b"))).abi_CreateSyndicationAttribute(hstring(attributeName).handle, hstring(attributeNamespace).handle, hstring(attributeValue).handle, &_ret));
		return _ret;
	}
}

interface SyndicationCategory : Windows.Web.Syndication.ISyndicationCategory, Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final wstring Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationCategory)this.asInterface(uuid("8715626f-0cba-4a7f-89ff-ecb5281423b6"))).get_Label(&_ret));
		return hstring(_ret).d_str;
	}
	final void Label(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationCategory)this.asInterface(uuid("8715626f-0cba-4a7f-89ff-ecb5281423b6"))).set_Label(hstring(value).handle));
	}
	final wstring Scheme()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationCategory)this.asInterface(uuid("8715626f-0cba-4a7f-89ff-ecb5281423b6"))).get_Scheme(&_ret));
		return hstring(_ret).d_str;
	}
	final void Scheme(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationCategory)this.asInterface(uuid("8715626f-0cba-4a7f-89ff-ecb5281423b6"))).set_Scheme(hstring(value).handle));
	}
	final wstring Term()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationCategory)this.asInterface(uuid("8715626f-0cba-4a7f-89ff-ecb5281423b6"))).get_Term(&_ret));
		return hstring(_ret).d_str;
	}
	final void Term(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationCategory)this.asInterface(uuid("8715626f-0cba-4a7f-89ff-ecb5281423b6"))).set_Term(hstring(value).handle));
	}
	final wstring NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeName(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeName(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeName(hstring(value).handle));
	}
	final wstring NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeNamespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeNamespace(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeNamespace(hstring(value).handle));
	}
	final wstring NodeValue()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeValue(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeValue(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeValue(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
	static SyndicationCategory New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationCategory).abi_ActivateInstance(&ret));
		return cast(SyndicationCategory) ret;
	}
	static Windows.Web.Syndication.SyndicationCategory New(wstring term)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationCategoryFactory);
		Windows.Web.Syndication.SyndicationCategory _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationCategoryFactory)factory.asInterface(uuid("ab42802f-49e0-4525-8ab2-ab45c02528ff"))).abi_CreateSyndicationCategory(hstring(term).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Syndication.SyndicationCategory New(wstring term, wstring scheme, wstring label)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationCategoryFactory);
		Windows.Web.Syndication.SyndicationCategory _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationCategoryFactory)factory.asInterface(uuid("ab42802f-49e0-4525-8ab2-ab45c02528ff"))).abi_CreateSyndicationCategoryEx(hstring(term).handle, hstring(scheme).handle, hstring(label).handle, &_ret));
		return _ret;
	}
}

interface SyndicationClient : Windows.Web.Syndication.ISyndicationClient
{
extern(Windows):
	final Windows.Security.Credentials.PasswordCredential ServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).get_ServerCredential(&_ret));
		return _ret;
	}
	final void ServerCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).set_ServerCredential(value));
	}
	final Windows.Security.Credentials.PasswordCredential ProxyCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).get_ProxyCredential(&_ret));
		return _ret;
	}
	final void ProxyCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).set_ProxyCredential(value));
	}
	final UINT32 MaxResponseBufferSize()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).get_MaxResponseBufferSize(&_ret));
		return _ret;
	}
	final void MaxResponseBufferSize(UINT32 value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).set_MaxResponseBufferSize(value));
	}
	final UINT32 Timeout()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).get_Timeout(&_ret));
		return _ret;
	}
	final void Timeout(UINT32 value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).set_Timeout(value));
	}
	final bool BypassCacheOnRetrieve()
	{
		bool _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).get_BypassCacheOnRetrieve(&_ret));
		return _ret;
	}
	final void BypassCacheOnRetrieve(bool value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).set_BypassCacheOnRetrieve(value));
	}
	final void SetRequestHeader(wstring name, wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).abi_SetRequestHeader(hstring(name).handle, hstring(value).handle));
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationFeed, Windows.Web.Syndication.RetrievalProgress) RetrieveFeedAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationFeed, Windows.Web.Syndication.RetrievalProgress) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClient)this.asInterface(uuid("9e18a9b7-7249-4b45-b229-7df895a5a1f5"))).abi_RetrieveFeedAsync(uri, &_ret));
		return _ret;
	}
	static SyndicationClient New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationClient).abi_ActivateInstance(&ret));
		return cast(SyndicationClient) ret;
	}
	static Windows.Web.Syndication.SyndicationClient New(Windows.Security.Credentials.PasswordCredential serverCredential)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationClientFactory);
		Windows.Web.Syndication.SyndicationClient _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationClientFactory)factory.asInterface(uuid("2ec4b32c-a79b-4114-b29a-05dffbafb9a4"))).abi_CreateSyndicationClient(serverCredential, &_ret));
		return _ret;
	}
}

interface SyndicationContent : Windows.Web.Syndication.ISyndicationText, Windows.Web.Syndication.ISyndicationNode, Windows.Web.Syndication.ISyndicationContent
{
extern(Windows):
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final void Text(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).set_Text(hstring(value).handle));
	}
	final wstring Type()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).get_Type(&_ret));
		return hstring(_ret).d_str;
	}
	final void Type(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).set_Type(hstring(value).handle));
	}
	final Windows.Data.Xml.Dom.XmlDocument Xml()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).get_Xml(&_ret));
		return _ret;
	}
	final void Xml(Windows.Data.Xml.Dom.XmlDocument value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).set_Xml(value));
	}
	final wstring NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeName(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeName(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeName(hstring(value).handle));
	}
	final wstring NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeNamespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeNamespace(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeNamespace(hstring(value).handle));
	}
	final wstring NodeValue()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeValue(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeValue(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeValue(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
	final Windows.Foundation.Uri SourceUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationContent)this.asInterface(uuid("4641fefe-0e55-40d0-b8d0-6a2ccba9fc7c"))).get_SourceUri(&_ret));
		return _ret;
	}
	final void SourceUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationContent)this.asInterface(uuid("4641fefe-0e55-40d0-b8d0-6a2ccba9fc7c"))).set_SourceUri(value));
	}
	static SyndicationContent New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationContent).abi_ActivateInstance(&ret));
		return cast(SyndicationContent) ret;
	}
	static Windows.Web.Syndication.SyndicationContent New(wstring text, Windows.Web.Syndication.SyndicationTextType type)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationContentFactory);
		Windows.Web.Syndication.SyndicationContent _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationContentFactory)factory.asInterface(uuid("3d2fbb93-9520-4173-9388-7e2df324a8a0"))).abi_CreateSyndicationContent(hstring(text).handle, type, &_ret));
		return _ret;
	}
	static Windows.Web.Syndication.SyndicationContent New(Windows.Foundation.Uri sourceUri)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationContentFactory);
		Windows.Web.Syndication.SyndicationContent _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationContentFactory)factory.asInterface(uuid("3d2fbb93-9520-4173-9388-7e2df324a8a0"))).abi_CreateSyndicationContentWithSourceUri(sourceUri, &_ret));
		return _ret;
	}
}

interface SyndicationError
{
	private static Windows.Web.Syndication.ISyndicationErrorStatics _staticInstance;
	public static Windows.Web.Syndication.ISyndicationErrorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Web.Syndication.ISyndicationErrorStatics);
		return _staticInstance;
	}
	static Windows.Web.Syndication.SyndicationErrorStatus GetStatus(INT32 hresult)
	{
		Windows.Web.Syndication.SyndicationErrorStatus _ret;
		Debug.OK(staticInstance.abi_GetStatus(hresult, &_ret));
		return _ret;
	}
}

interface SyndicationFeed : Windows.Web.Syndication.ISyndicationFeed, Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson) Authors()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_Authors(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationCategory) Categories()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationCategory) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_Categories(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson) Contributors()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_Contributors(&_ret));
		return _ret;
	}
	final Windows.Web.Syndication.SyndicationGenerator Generator()
	{
		Windows.Web.Syndication.SyndicationGenerator _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_Generator(&_ret));
		return _ret;
	}
	final void Generator(Windows.Web.Syndication.SyndicationGenerator value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).set_Generator(value));
	}
	final Windows.Foundation.Uri IconUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_IconUri(&_ret));
		return _ret;
	}
	final void IconUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).set_IconUri(value));
	}
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final void Id(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).set_Id(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationItem) Items()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationItem) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_Items(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime LastUpdatedTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_LastUpdatedTime(&_ret));
		return _ret;
	}
	final void LastUpdatedTime(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).set_LastUpdatedTime(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationLink) Links()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationLink) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_Links(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri ImageUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_ImageUri(&_ret));
		return _ret;
	}
	final void ImageUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).set_ImageUri(value));
	}
	final Windows.Web.Syndication.ISyndicationText Rights()
	{
		Windows.Web.Syndication.ISyndicationText _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_Rights(&_ret));
		return _ret;
	}
	final void Rights(Windows.Web.Syndication.ISyndicationText value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).set_Rights(value));
	}
	final Windows.Web.Syndication.ISyndicationText Subtitle()
	{
		Windows.Web.Syndication.ISyndicationText _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_Subtitle(&_ret));
		return _ret;
	}
	final void Subtitle(Windows.Web.Syndication.ISyndicationText value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).set_Subtitle(value));
	}
	final Windows.Web.Syndication.ISyndicationText Title()
	{
		Windows.Web.Syndication.ISyndicationText _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_Title(&_ret));
		return _ret;
	}
	final void Title(Windows.Web.Syndication.ISyndicationText value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).set_Title(value));
	}
	final Windows.Foundation.Uri FirstUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_FirstUri(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri LastUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_LastUri(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri NextUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_NextUri(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri PreviousUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_PreviousUri(&_ret));
		return _ret;
	}
	final Windows.Web.Syndication.SyndicationFormat SourceFormat()
	{
		Windows.Web.Syndication.SyndicationFormat _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).get_SourceFormat(&_ret));
		return _ret;
	}
	final void Load(wstring feed)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).abi_Load(hstring(feed).handle));
	}
	final void LoadFromXml(Windows.Data.Xml.Dom.XmlDocument feedDocument)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeed)this.asInterface(uuid("7ffe3cd2-5b66-4d62-8403-1bc10d910d6b"))).abi_LoadFromXml(feedDocument));
	}
	final wstring NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeName(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeName(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeName(hstring(value).handle));
	}
	final wstring NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeNamespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeNamespace(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeNamespace(hstring(value).handle));
	}
	final wstring NodeValue()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeValue(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeValue(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeValue(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
	static SyndicationFeed New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationFeed).abi_ActivateInstance(&ret));
		return cast(SyndicationFeed) ret;
	}
	static Windows.Web.Syndication.SyndicationFeed New(wstring title, wstring subtitle, Windows.Foundation.Uri uri)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationFeedFactory);
		Windows.Web.Syndication.SyndicationFeed _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationFeedFactory)factory.asInterface(uuid("23472232-8be9-48b7-8934-6205131d9357"))).abi_CreateSyndicationFeed(hstring(title).handle, hstring(subtitle).handle, uri, &_ret));
		return _ret;
	}
}

interface SyndicationGenerator : Windows.Web.Syndication.ISyndicationGenerator, Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationGenerator)this.asInterface(uuid("9768b379-fb2b-4f6d-b41c-088a5868825c"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final void Text(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationGenerator)this.asInterface(uuid("9768b379-fb2b-4f6d-b41c-088a5868825c"))).set_Text(hstring(value).handle));
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationGenerator)this.asInterface(uuid("9768b379-fb2b-4f6d-b41c-088a5868825c"))).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationGenerator)this.asInterface(uuid("9768b379-fb2b-4f6d-b41c-088a5868825c"))).set_Uri(value));
	}
	final wstring Version()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationGenerator)this.asInterface(uuid("9768b379-fb2b-4f6d-b41c-088a5868825c"))).get_Version(&_ret));
		return hstring(_ret).d_str;
	}
	final void Version(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationGenerator)this.asInterface(uuid("9768b379-fb2b-4f6d-b41c-088a5868825c"))).set_Version(hstring(value).handle));
	}
	final wstring NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeName(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeName(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeName(hstring(value).handle));
	}
	final wstring NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeNamespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeNamespace(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeNamespace(hstring(value).handle));
	}
	final wstring NodeValue()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeValue(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeValue(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeValue(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
	static SyndicationGenerator New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationGenerator).abi_ActivateInstance(&ret));
		return cast(SyndicationGenerator) ret;
	}
	static Windows.Web.Syndication.SyndicationGenerator New(wstring text)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationGeneratorFactory);
		Windows.Web.Syndication.SyndicationGenerator _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationGeneratorFactory)factory.asInterface(uuid("a34083e3-1e26-4dbc-ba9d-1ab84beff97b"))).abi_CreateSyndicationGenerator(hstring(text).handle, &_ret));
		return _ret;
	}
}

interface SyndicationItem : Windows.Web.Syndication.ISyndicationItem, Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson) Authors()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_Authors(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationCategory) Categories()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationCategory) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_Categories(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson) Contributors()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationPerson) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_Contributors(&_ret));
		return _ret;
	}
	final Windows.Web.Syndication.SyndicationContent Content()
	{
		Windows.Web.Syndication.SyndicationContent _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.Web.Syndication.SyndicationContent value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).set_Content(value));
	}
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final void Id(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).set_Id(hstring(value).handle));
	}
	final Windows.Foundation.DateTime LastUpdatedTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_LastUpdatedTime(&_ret));
		return _ret;
	}
	final void LastUpdatedTime(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).set_LastUpdatedTime(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationLink) Links()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationLink) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_Links(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime PublishedDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_PublishedDate(&_ret));
		return _ret;
	}
	final void PublishedDate(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).set_PublishedDate(value));
	}
	final Windows.Web.Syndication.ISyndicationText Rights()
	{
		Windows.Web.Syndication.ISyndicationText _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_Rights(&_ret));
		return _ret;
	}
	final void Rights(Windows.Web.Syndication.ISyndicationText value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).set_Rights(value));
	}
	final Windows.Web.Syndication.SyndicationFeed Source()
	{
		Windows.Web.Syndication.SyndicationFeed _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.Web.Syndication.SyndicationFeed value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).set_Source(value));
	}
	final Windows.Web.Syndication.ISyndicationText Summary()
	{
		Windows.Web.Syndication.ISyndicationText _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_Summary(&_ret));
		return _ret;
	}
	final void Summary(Windows.Web.Syndication.ISyndicationText value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).set_Summary(value));
	}
	final Windows.Web.Syndication.ISyndicationText Title()
	{
		Windows.Web.Syndication.ISyndicationText _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_Title(&_ret));
		return _ret;
	}
	final void Title(Windows.Web.Syndication.ISyndicationText value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).set_Title(value));
	}
	final Windows.Foundation.Uri CommentsUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_CommentsUri(&_ret));
		return _ret;
	}
	final void CommentsUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).set_CommentsUri(value));
	}
	final Windows.Foundation.Uri EditUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_EditUri(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri EditMediaUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_EditMediaUri(&_ret));
		return _ret;
	}
	final wstring ETag()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_ETag(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Uri ItemUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).get_ItemUri(&_ret));
		return _ret;
	}
	final void Load(wstring item)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).abi_Load(hstring(item).handle));
	}
	final void LoadFromXml(Windows.Data.Xml.Dom.XmlDocument itemDocument)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItem)this.asInterface(uuid("548db883-c384-45c1-8ae8-a378c4ec486c"))).abi_LoadFromXml(itemDocument));
	}
	final wstring NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeName(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeName(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeName(hstring(value).handle));
	}
	final wstring NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeNamespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeNamespace(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeNamespace(hstring(value).handle));
	}
	final wstring NodeValue()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeValue(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeValue(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeValue(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
	static SyndicationItem New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationItem).abi_ActivateInstance(&ret));
		return cast(SyndicationItem) ret;
	}
	static Windows.Web.Syndication.SyndicationItem New(wstring title, Windows.Web.Syndication.SyndicationContent content, Windows.Foundation.Uri uri)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationItemFactory);
		Windows.Web.Syndication.SyndicationItem _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationItemFactory)factory.asInterface(uuid("251d434f-7db8-487a-85e4-10d191e66ebb"))).abi_CreateSyndicationItem(hstring(title).handle, content, uri, &_ret));
		return _ret;
	}
}

interface SyndicationLink : Windows.Web.Syndication.ISyndicationLink, Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).get_Length(&_ret));
		return _ret;
	}
	final void Length(UINT32 value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).set_Length(value));
	}
	final wstring MediaType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).get_MediaType(&_ret));
		return hstring(_ret).d_str;
	}
	final void MediaType(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).set_MediaType(hstring(value).handle));
	}
	final wstring Relationship()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).get_Relationship(&_ret));
		return hstring(_ret).d_str;
	}
	final void Relationship(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).set_Relationship(hstring(value).handle));
	}
	final wstring Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).get_Title(&_ret));
		return hstring(_ret).d_str;
	}
	final void Title(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).set_Title(hstring(value).handle));
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).set_Uri(value));
	}
	final wstring ResourceLanguage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).get_ResourceLanguage(&_ret));
		return hstring(_ret).d_str;
	}
	final void ResourceLanguage(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLink)this.asInterface(uuid("27553abd-a10e-41b5-86bd-9759086eb0c5"))).set_ResourceLanguage(hstring(value).handle));
	}
	final wstring NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeName(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeName(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeName(hstring(value).handle));
	}
	final wstring NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeNamespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeNamespace(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeNamespace(hstring(value).handle));
	}
	final wstring NodeValue()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeValue(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeValue(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeValue(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
	static SyndicationLink New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationLink).abi_ActivateInstance(&ret));
		return cast(SyndicationLink) ret;
	}
	static Windows.Web.Syndication.SyndicationLink New(Windows.Foundation.Uri uri)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationLinkFactory);
		Windows.Web.Syndication.SyndicationLink _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLinkFactory)factory.asInterface(uuid("5ed863d4-5535-48ac-98d4-c190995080b3"))).abi_CreateSyndicationLink(uri, &_ret));
		return _ret;
	}
	static Windows.Web.Syndication.SyndicationLink New(Windows.Foundation.Uri uri, wstring relationship, wstring title, wstring mediaType, UINT32 length)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationLinkFactory);
		Windows.Web.Syndication.SyndicationLink _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationLinkFactory)factory.asInterface(uuid("5ed863d4-5535-48ac-98d4-c190995080b3"))).abi_CreateSyndicationLinkEx(uri, hstring(relationship).handle, hstring(title).handle, hstring(mediaType).handle, length, &_ret));
		return _ret;
	}
}

interface SyndicationNode : Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final wstring NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeName(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeName(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeName(hstring(value).handle));
	}
	final wstring NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeNamespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeNamespace(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeNamespace(hstring(value).handle));
	}
	final wstring NodeValue()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeValue(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeValue(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeValue(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
	static SyndicationNode New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationNode).abi_ActivateInstance(&ret));
		return cast(SyndicationNode) ret;
	}
	static Windows.Web.Syndication.SyndicationNode New(wstring nodeName, wstring nodeNamespace, wstring nodeValue)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationNodeFactory);
		Windows.Web.Syndication.SyndicationNode _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNodeFactory)factory.asInterface(uuid("12902188-4acb-49a8-b777-a5eb92e18a79"))).abi_CreateSyndicationNode(hstring(nodeName).handle, hstring(nodeNamespace).handle, hstring(nodeValue).handle, &_ret));
		return _ret;
	}
}

interface SyndicationPerson : Windows.Web.Syndication.ISyndicationPerson, Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final wstring Email()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationPerson)this.asInterface(uuid("fa1ee5da-a7c6-4517-a096-0143faf29327"))).get_Email(&_ret));
		return hstring(_ret).d_str;
	}
	final void Email(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationPerson)this.asInterface(uuid("fa1ee5da-a7c6-4517-a096-0143faf29327"))).set_Email(hstring(value).handle));
	}
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationPerson)this.asInterface(uuid("fa1ee5da-a7c6-4517-a096-0143faf29327"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final void Name(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationPerson)this.asInterface(uuid("fa1ee5da-a7c6-4517-a096-0143faf29327"))).set_Name(hstring(value).handle));
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationPerson)this.asInterface(uuid("fa1ee5da-a7c6-4517-a096-0143faf29327"))).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationPerson)this.asInterface(uuid("fa1ee5da-a7c6-4517-a096-0143faf29327"))).set_Uri(value));
	}
	final wstring NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeName(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeName(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeName(hstring(value).handle));
	}
	final wstring NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeNamespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeNamespace(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeNamespace(hstring(value).handle));
	}
	final wstring NodeValue()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeValue(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeValue(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeValue(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
	static SyndicationPerson New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationPerson).abi_ActivateInstance(&ret));
		return cast(SyndicationPerson) ret;
	}
	static Windows.Web.Syndication.SyndicationPerson New(wstring name)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationPersonFactory);
		Windows.Web.Syndication.SyndicationPerson _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationPersonFactory)factory.asInterface(uuid("dcf4886d-229d-4b58-a49b-f3d2f0f5c99f"))).abi_CreateSyndicationPerson(hstring(name).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Syndication.SyndicationPerson New(wstring name, wstring email, Windows.Foundation.Uri uri)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationPersonFactory);
		Windows.Web.Syndication.SyndicationPerson _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationPersonFactory)factory.asInterface(uuid("dcf4886d-229d-4b58-a49b-f3d2f0f5c99f"))).abi_CreateSyndicationPersonEx(hstring(name).handle, hstring(email).handle, uri, &_ret));
		return _ret;
	}
}

interface SyndicationText : Windows.Web.Syndication.ISyndicationText, Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final void Text(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).set_Text(hstring(value).handle));
	}
	final wstring Type()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).get_Type(&_ret));
		return hstring(_ret).d_str;
	}
	final void Type(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).set_Type(hstring(value).handle));
	}
	final Windows.Data.Xml.Dom.XmlDocument Xml()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).get_Xml(&_ret));
		return _ret;
	}
	final void Xml(Windows.Data.Xml.Dom.XmlDocument value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationText)this.asInterface(uuid("b9cc5e80-313a-4091-a2a6-243e0ee923f9"))).set_Xml(value));
	}
	final wstring NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeName(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeName(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeName(hstring(value).handle));
	}
	final wstring NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeNamespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeNamespace(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeNamespace(hstring(value).handle));
	}
	final wstring NodeValue()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_NodeValue(&_ret));
		return hstring(_ret).d_str;
	}
	final void NodeValue(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_NodeValue(hstring(value).handle));
	}
	final wstring Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_Language(&_ret));
		return hstring(_ret).d_str;
	}
	final void Language(wstring value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_Language(hstring(value).handle));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationNode)this.asInterface(uuid("753cef78-51f8-45c0-a9f5-f1719dec3fb2"))).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
	static SyndicationText New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SyndicationText).abi_ActivateInstance(&ret));
		return cast(SyndicationText) ret;
	}
	static Windows.Web.Syndication.SyndicationText New(wstring text)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationTextFactory);
		Windows.Web.Syndication.SyndicationText _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationTextFactory)factory.asInterface(uuid("ee7342f7-11c6-4b25-ab62-e596bd162946"))).abi_CreateSyndicationText(hstring(text).handle, &_ret));
		return _ret;
	}
	static Windows.Web.Syndication.SyndicationText New(wstring text, Windows.Web.Syndication.SyndicationTextType type)
	{
		auto factory = factory!(Windows.Web.Syndication.ISyndicationTextFactory);
		Windows.Web.Syndication.SyndicationText _ret;
		Debug.OK((cast(Windows.Web.Syndication.ISyndicationTextFactory)factory.asInterface(uuid("ee7342f7-11c6-4b25-ab62-e596bd162946"))).abi_CreateSyndicationTextEx(hstring(text).handle, type, &_ret));
		return _ret;
	}
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