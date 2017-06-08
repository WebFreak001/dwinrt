module Windows.Data.Xml.Dom;

import dwinrt;

@uuid("6a0b5ffc-63b4-480f-9e6a-8a92816aade4")
@WinrtFactory("Windows.Data.Xml.Dom.DtdEntity")
interface IDtdEntity : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PublicId(IInspectable* return_value);
	HRESULT get_SystemId(IInspectable* return_value);
	HRESULT get_NotationName(IInspectable* return_value);
}

@uuid("8cb4e04d-6d46-4edb-ab73-df83c51ad397")
@WinrtFactory("Windows.Data.Xml.Dom.DtdNotation")
interface IDtdNotation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PublicId(IInspectable* return_value);
	HRESULT get_SystemId(IInspectable* return_value);
}

@uuid("ac144aa4-b4f1-4db6-b206-8a22c308db0a")
@WinrtFactory("Windows.Data.Xml.Dom.XmlAttribute")
interface IXmlAttribute : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Specified(bool* return_value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT set_Value(HSTRING value);
}

@uuid("4d04b46f-c8bd-45b4-8899-0400d7c2c60f")
@WinrtFactory("Windows.Data.Xml.Dom.XmlCDataSection")
interface IXmlCDataSection : IInspectable
{
}

@uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26")
interface IXmlCharacterData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Data(HSTRING* return_value);
	HRESULT set_Data(HSTRING value);
	HRESULT get_Length(UINT32* return_value);
	HRESULT abi_SubstringData(UINT32 offset, UINT32 count, HSTRING* return_data);
	HRESULT abi_AppendData(HSTRING data);
	HRESULT abi_InsertData(UINT32 offset, HSTRING data);
	HRESULT abi_DeleteData(UINT32 offset, UINT32 count);
	HRESULT abi_ReplaceData(UINT32 offset, UINT32 count, HSTRING data);
}

@uuid("bca474d5-b61f-4611-9cac-2e92e3476d47")
@WinrtFactory("Windows.Data.Xml.Dom.XmlComment")
interface IXmlComment : IInspectable
{
}

@uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocument")
interface IXmlDocument : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Doctype(Windows.Data.Xml.Dom.XmlDocumentType* return_value);
	HRESULT get_Implementation(Windows.Data.Xml.Dom.XmlDomImplementation* return_value);
	HRESULT get_DocumentElement(Windows.Data.Xml.Dom.XmlElement* return_value);
	HRESULT abi_CreateElement(HSTRING tagName, Windows.Data.Xml.Dom.XmlElement* return_newElement);
	HRESULT abi_CreateDocumentFragment(Windows.Data.Xml.Dom.XmlDocumentFragment* return_newDocumentFragment);
	HRESULT abi_CreateTextNode(HSTRING data, Windows.Data.Xml.Dom.XmlText* return_newTextNode);
	HRESULT abi_CreateComment(HSTRING data, Windows.Data.Xml.Dom.XmlComment* return_newComment);
	HRESULT abi_CreateProcessingInstruction(HSTRING target, HSTRING data, Windows.Data.Xml.Dom.XmlProcessingInstruction* return_newProcessingInstruction);
	HRESULT abi_CreateAttribute(HSTRING name, Windows.Data.Xml.Dom.XmlAttribute* return_newAttribute);
	HRESULT abi_CreateEntityReference(HSTRING name, Windows.Data.Xml.Dom.XmlEntityReference* return_newEntityReference);
	HRESULT abi_GetElementsByTagName(HSTRING tagName, Windows.Data.Xml.Dom.XmlNodeList* return_elements);
	HRESULT abi_CreateCDataSection(HSTRING data, Windows.Data.Xml.Dom.XmlCDataSection* return_newCDataSection);
	HRESULT get_DocumentUri(HSTRING* return_value);
	HRESULT abi_CreateAttributeNS(IInspectable namespaceUri, HSTRING qualifiedName, Windows.Data.Xml.Dom.XmlAttribute* return_newAttribute);
	HRESULT abi_CreateElementNS(IInspectable namespaceUri, HSTRING qualifiedName, Windows.Data.Xml.Dom.XmlElement* return_newElement);
	HRESULT abi_GetElementById(HSTRING elementId, Windows.Data.Xml.Dom.XmlElement* return_element);
	HRESULT abi_ImportNode(Windows.Data.Xml.Dom.IXmlNode node, bool deep, Windows.Data.Xml.Dom.IXmlNode* return_newNode);
}

@uuid("e2ea6a96-0c21-44a5-8bc9-9e4a262708ec")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocumentFragment")
interface IXmlDocumentFragment : IInspectable
{
}

@uuid("6cd0e74e-ee65-4489-9ebf-ca43e87ba637")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocument")
interface IXmlDocumentIO : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_LoadXml(HSTRING xml);
	HRESULT abi_LoadXmlWithSettings(HSTRING xml, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings);
	HRESULT abi_SaveToFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("5d034661-7bd8-4ad5-9ebf-81e6347263b1")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocument")
interface IXmlDocumentIO2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_LoadXmlFromBuffer(Windows.Storage.Streams.IBuffer buffer);
	HRESULT abi_LoadXmlFromBufferWithSettings(Windows.Storage.Streams.IBuffer buffer, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings);
}

@uuid("5543d254-d757-4b79-9539-232b18f50bf1")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocument")
interface IXmlDocumentStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_LoadFromUriAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument)* return_asyncInfo);
	HRESULT abi_LoadFromUriWithSettingsAsync(Windows.Foundation.Uri uri, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings, Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument)* return_asyncInfo);
	HRESULT abi_LoadFromFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument)* return_asyncInfo);
	HRESULT abi_LoadFromFileWithSettingsAsync(Windows.Storage.IStorageFile file, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings, Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument)* return_asyncInfo);
}

@uuid("f7342425-9781-4964-8e94-9b1c6dfc9bc7")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocumentType")
interface IXmlDocumentType : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Entities(Windows.Data.Xml.Dom.XmlNamedNodeMap* return_value);
	HRESULT get_Notations(Windows.Data.Xml.Dom.XmlNamedNodeMap* return_value);
}

@uuid("6de58132-f11d-4fbb-8cc6-583cba93112f")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDomImplementation")
interface IXmlDomImplementation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_HasFeature(HSTRING feature, IInspectable version_, bool* return_featureSupported);
}

@uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37")
@WinrtFactory("Windows.Data.Xml.Dom.XmlElement")
interface IXmlElement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TagName(HSTRING* return_value);
	HRESULT abi_GetAttribute(HSTRING attributeName, HSTRING* return_attributeValue);
	HRESULT abi_SetAttribute(HSTRING attributeName, HSTRING attributeValue);
	HRESULT abi_RemoveAttribute(HSTRING attributeName);
	HRESULT abi_GetAttributeNode(HSTRING attributeName, Windows.Data.Xml.Dom.XmlAttribute* return_attributeNode);
	HRESULT abi_SetAttributeNode(Windows.Data.Xml.Dom.XmlAttribute newAttribute, Windows.Data.Xml.Dom.XmlAttribute* return_previousAttribute);
	HRESULT abi_RemoveAttributeNode(Windows.Data.Xml.Dom.XmlAttribute attributeNode, Windows.Data.Xml.Dom.XmlAttribute* return_removedAttribute);
	HRESULT abi_GetElementsByTagName(HSTRING tagName, Windows.Data.Xml.Dom.XmlNodeList* return_elements);
	HRESULT abi_SetAttributeNS(IInspectable namespaceUri, HSTRING qualifiedName, HSTRING value);
	HRESULT abi_GetAttributeNS(IInspectable namespaceUri, HSTRING localName, HSTRING* return_value);
	HRESULT abi_RemoveAttributeNS(IInspectable namespaceUri, HSTRING localName);
	HRESULT abi_SetAttributeNodeNS(Windows.Data.Xml.Dom.XmlAttribute newAttribute, Windows.Data.Xml.Dom.XmlAttribute* return_previousAttribute);
	HRESULT abi_GetAttributeNodeNS(IInspectable namespaceUri, HSTRING localName, Windows.Data.Xml.Dom.XmlAttribute* return_previousAttribute);
}

@uuid("2e2f47bc-c3d0-4ccf-bb86-0ab8c36a61cf")
@WinrtFactory("Windows.Data.Xml.Dom.XmlEntityReference")
interface IXmlEntityReference : IInspectable
{
}

@uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6")
@WinrtFactory("Windows.Data.Xml.Dom.XmlLoadSettings")
interface IXmlLoadSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxElementDepth(UINT32* return_value);
	HRESULT set_MaxElementDepth(UINT32 value);
	HRESULT get_ProhibitDtd(bool* return_value);
	HRESULT set_ProhibitDtd(bool value);
	HRESULT get_ResolveExternals(bool* return_value);
	HRESULT set_ResolveExternals(bool value);
	HRESULT get_ValidateOnParse(bool* return_value);
	HRESULT set_ValidateOnParse(bool value);
	HRESULT get_ElementContentWhiteSpace(bool* return_value);
	HRESULT set_ElementContentWhiteSpace(bool value);
}

@uuid("b3a69eb0-aab0-4b82-a6fa-b1453f7c021b")
@WinrtFactory("Windows.Data.Xml.Dom.XmlNamedNodeMap")
interface IXmlNamedNodeMap : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Length(UINT32* return_value);
	HRESULT abi_Item(UINT32 index, Windows.Data.Xml.Dom.IXmlNode* return_node);
	HRESULT abi_GetNamedItem(HSTRING name, Windows.Data.Xml.Dom.IXmlNode* return_node);
	HRESULT abi_SetNamedItem(Windows.Data.Xml.Dom.IXmlNode node, Windows.Data.Xml.Dom.IXmlNode* return_previousNode);
	HRESULT abi_RemoveNamedItem(HSTRING name, Windows.Data.Xml.Dom.IXmlNode* return_previousNode);
	HRESULT abi_GetNamedItemNS(IInspectable namespaceUri, HSTRING name, Windows.Data.Xml.Dom.IXmlNode* return_node);
	HRESULT abi_RemoveNamedItemNS(IInspectable namespaceUri, HSTRING name, Windows.Data.Xml.Dom.IXmlNode* return_previousNode);
	HRESULT abi_SetNamedItemNS(Windows.Data.Xml.Dom.IXmlNode node, Windows.Data.Xml.Dom.IXmlNode* return_previousNode);
}

@uuid("1c741d59-2122-47d5-a856-83f3d4214875")
interface IXmlNode : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NodeValue(IInspectable* return_value);
	HRESULT set_NodeValue(IInspectable value);
	HRESULT get_NodeType(Windows.Data.Xml.Dom.NodeType* return_value);
	HRESULT get_NodeName(HSTRING* return_value);
	HRESULT get_ParentNode(Windows.Data.Xml.Dom.IXmlNode* return_value);
	HRESULT get_ChildNodes(Windows.Data.Xml.Dom.XmlNodeList* return_value);
	HRESULT get_FirstChild(Windows.Data.Xml.Dom.IXmlNode* return_value);
	HRESULT get_LastChild(Windows.Data.Xml.Dom.IXmlNode* return_value);
	HRESULT get_PreviousSibling(Windows.Data.Xml.Dom.IXmlNode* return_value);
	HRESULT get_NextSibling(Windows.Data.Xml.Dom.IXmlNode* return_value);
	HRESULT get_Attributes(Windows.Data.Xml.Dom.XmlNamedNodeMap* return_value);
	HRESULT abi_HasChildNodes(bool* return_value);
	HRESULT get_OwnerDocument(Windows.Data.Xml.Dom.XmlDocument* return_value);
	HRESULT abi_InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild, Windows.Data.Xml.Dom.IXmlNode* return_insertedChild);
	HRESULT abi_ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild, Windows.Data.Xml.Dom.IXmlNode* return_previousChild);
	HRESULT abi_RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode, Windows.Data.Xml.Dom.IXmlNode* return_removedChild);
	HRESULT abi_AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode* return_appendedChild);
	HRESULT abi_CloneNode(bool deep, Windows.Data.Xml.Dom.IXmlNode* return_newNode);
	HRESULT get_NamespaceUri(IInspectable* return_value);
	HRESULT get_LocalName(IInspectable* return_value);
	HRESULT get_Prefix(IInspectable* return_value);
	HRESULT abi_Normalize();
	HRESULT set_Prefix(IInspectable value);
}

@uuid("8c60ad77-83a4-4ec1-9c54-7ba429e13da6")
@WinrtFactory("Windows.Data.Xml.Dom.XmlNodeList")
interface IXmlNodeList : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Length(UINT32* return_value);
	HRESULT abi_Item(UINT32 index, Windows.Data.Xml.Dom.IXmlNode* return_node);
}

@uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b")
interface IXmlNodeSelector : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SelectSingleNode(HSTRING xpath, Windows.Data.Xml.Dom.IXmlNode* return_node);
	HRESULT abi_SelectNodes(HSTRING xpath, Windows.Data.Xml.Dom.XmlNodeList* return_nodelist);
	HRESULT abi_SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces, Windows.Data.Xml.Dom.IXmlNode* return_node);
	HRESULT abi_SelectNodesNS(HSTRING xpath, IInspectable namespaces, Windows.Data.Xml.Dom.XmlNodeList* return_nodelist);
}

@uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c")
interface IXmlNodeSerializer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetXml(HSTRING* return_outerXml);
	HRESULT get_InnerText(HSTRING* return_value);
	HRESULT set_InnerText(HSTRING value);
}

@uuid("2707fd1e-1e92-4ece-b6f4-26f069078ddc")
@WinrtFactory("Windows.Data.Xml.Dom.XmlProcessingInstruction")
interface IXmlProcessingInstruction : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Target(HSTRING* return_value);
	HRESULT get_Data(HSTRING* return_value);
	HRESULT set_Data(HSTRING value);
}

@uuid("f931a4cb-308d-4760-a1d5-43b67450ac7e")
interface IXmlText : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SplitText(UINT32 offset, Windows.Data.Xml.Dom.IXmlText* return_secondPart);
}

interface DtdEntity : Windows.Data.Xml.Dom.IDtdEntity, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

interface DtdNotation : Windows.Data.Xml.Dom.IDtdNotation, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

interface XmlAttribute : Windows.Data.Xml.Dom.IXmlAttribute, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

interface XmlCDataSection : Windows.Data.Xml.Dom.IXmlCDataSection, Windows.Data.Xml.Dom.IXmlText, Windows.Data.Xml.Dom.IXmlCharacterData, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

interface XmlComment : Windows.Data.Xml.Dom.IXmlComment, Windows.Data.Xml.Dom.IXmlCharacterData, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

interface XmlDocument : Windows.Data.Xml.Dom.IXmlDocument, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlDocumentIO, Windows.Data.Xml.Dom.IXmlDocumentIO2
{
}

interface XmlDocumentFragment : Windows.Data.Xml.Dom.IXmlDocumentFragment, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

interface XmlDocumentType : Windows.Data.Xml.Dom.IXmlDocumentType, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

interface XmlDomImplementation : Windows.Data.Xml.Dom.IXmlDomImplementation
{
}

interface XmlElement : Windows.Data.Xml.Dom.IXmlElement, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

interface XmlEntityReference : Windows.Data.Xml.Dom.IXmlEntityReference, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

interface XmlLoadSettings : Windows.Data.Xml.Dom.IXmlLoadSettings
{
}

interface XmlNamedNodeMap : Windows.Data.Xml.Dom.IXmlNamedNodeMap, Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode), Windows.Foundation.Collections.IIterable!(Windows.Data.Xml.Dom.IXmlNode)
{
}

interface XmlNodeList : Windows.Data.Xml.Dom.IXmlNodeList, Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode), Windows.Foundation.Collections.IIterable!(Windows.Data.Xml.Dom.IXmlNode)
{
}

interface XmlProcessingInstruction : Windows.Data.Xml.Dom.IXmlProcessingInstruction, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

interface XmlText : Windows.Data.Xml.Dom.IXmlText, Windows.Data.Xml.Dom.IXmlCharacterData, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
}

enum NodeType
{
	Invalid = 0,
	ElementNode = 1,
	AttributeNode = 2,
	TextNode = 3,
	DataSectionNode = 4,
	EntityReferenceNode = 5,
	EntityNode = 6,
	ProcessingInstructionNode = 7,
	CommentNode = 8,
	DocumentNode = 9,
	DocumentTypeNode = 10,
	DocumentFragmentNode = 11,
	NotationNode = 12
}