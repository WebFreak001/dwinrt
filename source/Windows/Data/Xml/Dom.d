module Windows.Data.Xml.Dom;

import dwinrt;

@uuid("6a0b5ffc-63b4-480f-9e6a-8a92816aade4")
@WinrtFactory("Windows.Data.Xml.Dom.DtdEntity")
interface IDtdEntity_Base : IInspectable
{
extern(Windows):
	HRESULT get_PublicId(IInspectable* return_value);
	HRESULT get_SystemId(IInspectable* return_value);
	HRESULT get_NotationName(IInspectable* return_value);
}
@uuid("6a0b5ffc-63b4-480f-9e6a-8a92816aade4")
@WinrtFactory("Windows.Data.Xml.Dom.DtdEntity")
interface IDtdEntity : IDtdEntity_Base, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("8cb4e04d-6d46-4edb-ab73-df83c51ad397")
@WinrtFactory("Windows.Data.Xml.Dom.DtdNotation")
interface IDtdNotation_Base : IInspectable
{
extern(Windows):
	HRESULT get_PublicId(IInspectable* return_value);
	HRESULT get_SystemId(IInspectable* return_value);
}
@uuid("8cb4e04d-6d46-4edb-ab73-df83c51ad397")
@WinrtFactory("Windows.Data.Xml.Dom.DtdNotation")
interface IDtdNotation : IDtdNotation_Base, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("ac144aa4-b4f1-4db6-b206-8a22c308db0a")
@WinrtFactory("Windows.Data.Xml.Dom.XmlAttribute")
interface IXmlAttribute_Base : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Specified(bool* return_value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT set_Value(HSTRING value);
}
@uuid("ac144aa4-b4f1-4db6-b206-8a22c308db0a")
@WinrtFactory("Windows.Data.Xml.Dom.XmlAttribute")
interface IXmlAttribute : IXmlAttribute_Base, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("4d04b46f-c8bd-45b4-8899-0400d7c2c60f")
@WinrtFactory("Windows.Data.Xml.Dom.XmlCDataSection")
interface IXmlCDataSection_Base : IInspectable
{
}
@uuid("4d04b46f-c8bd-45b4-8899-0400d7c2c60f")
@WinrtFactory("Windows.Data.Xml.Dom.XmlCDataSection")
interface IXmlCDataSection : IXmlCDataSection_Base, Windows.Data.Xml.Dom.IXmlText, Windows.Data.Xml.Dom.IXmlCharacterData, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26")
interface IXmlCharacterData_Base : IInspectable
{
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
@uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26")
interface IXmlCharacterData : IXmlCharacterData_Base, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("bca474d5-b61f-4611-9cac-2e92e3476d47")
@WinrtFactory("Windows.Data.Xml.Dom.XmlComment")
interface IXmlComment_Base : IInspectable
{
}
@uuid("bca474d5-b61f-4611-9cac-2e92e3476d47")
@WinrtFactory("Windows.Data.Xml.Dom.XmlComment")
interface IXmlComment : IXmlComment_Base, Windows.Data.Xml.Dom.IXmlCharacterData, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocument")
interface IXmlDocument_Base : IInspectable
{
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
@uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocument")
interface IXmlDocument : IXmlDocument_Base, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("e2ea6a96-0c21-44a5-8bc9-9e4a262708ec")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocumentFragment")
interface IXmlDocumentFragment_Base : IInspectable
{
}
@uuid("e2ea6a96-0c21-44a5-8bc9-9e4a262708ec")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocumentFragment")
interface IXmlDocumentFragment : IXmlDocumentFragment_Base, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("6cd0e74e-ee65-4489-9ebf-ca43e87ba637")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocument")
interface IXmlDocumentIO : IInspectable
{
extern(Windows):
	HRESULT abi_LoadXml(HSTRING xml);
	HRESULT abi_LoadXml(HSTRING xml, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings);
	HRESULT abi_SaveToFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("5d034661-7bd8-4ad5-9ebf-81e6347263b1")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocument")
interface IXmlDocumentIO2 : IInspectable
{
extern(Windows):
	HRESULT abi_LoadXmlFromBuffer(Windows.Storage.Streams.IBuffer buffer);
	HRESULT abi_LoadXmlFromBuffer(Windows.Storage.Streams.IBuffer buffer, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings);
}

@uuid("5543d254-d757-4b79-9539-232b18f50bf1")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocument")
interface IXmlDocumentStatics : IInspectable
{
extern(Windows):
	HRESULT abi_LoadFromUriAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument)* return_asyncInfo);
	HRESULT abi_LoadFromUriAsync(Windows.Foundation.Uri uri, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings, Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument)* return_asyncInfo);
	HRESULT abi_LoadFromFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument)* return_asyncInfo);
	HRESULT abi_LoadFromFileAsync(Windows.Storage.IStorageFile file, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings, Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument)* return_asyncInfo);
}

@uuid("f7342425-9781-4964-8e94-9b1c6dfc9bc7")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocumentType")
interface IXmlDocumentType_Base : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Entities(Windows.Data.Xml.Dom.XmlNamedNodeMap* return_value);
	HRESULT get_Notations(Windows.Data.Xml.Dom.XmlNamedNodeMap* return_value);
}
@uuid("f7342425-9781-4964-8e94-9b1c6dfc9bc7")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDocumentType")
interface IXmlDocumentType : IXmlDocumentType_Base, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("6de58132-f11d-4fbb-8cc6-583cba93112f")
@WinrtFactory("Windows.Data.Xml.Dom.XmlDomImplementation")
interface IXmlDomImplementation : IInspectable
{
extern(Windows):
	HRESULT abi_HasFeature(HSTRING feature, IInspectable version_, bool* return_featureSupported);
}

@uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37")
@WinrtFactory("Windows.Data.Xml.Dom.XmlElement")
interface IXmlElement_Base : IInspectable
{
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
@uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37")
@WinrtFactory("Windows.Data.Xml.Dom.XmlElement")
interface IXmlElement : IXmlElement_Base, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("2e2f47bc-c3d0-4ccf-bb86-0ab8c36a61cf")
@WinrtFactory("Windows.Data.Xml.Dom.XmlEntityReference")
interface IXmlEntityReference_Base : IInspectable
{
}
@uuid("2e2f47bc-c3d0-4ccf-bb86-0ab8c36a61cf")
@WinrtFactory("Windows.Data.Xml.Dom.XmlEntityReference")
interface IXmlEntityReference : IXmlEntityReference_Base, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6")
@WinrtFactory("Windows.Data.Xml.Dom.XmlLoadSettings")
interface IXmlLoadSettings : IInspectable
{
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
interface IXmlNamedNodeMap_Base : IInspectable
{
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
@uuid("b3a69eb0-aab0-4b82-a6fa-b1453f7c021b")
@WinrtFactory("Windows.Data.Xml.Dom.XmlNamedNodeMap")
interface IXmlNamedNodeMap : IXmlNamedNodeMap_Base, Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode), Windows.Foundation.Collections.IIterable!(Windows.Data.Xml.Dom.IXmlNode) {}

@uuid("1c741d59-2122-47d5-a856-83f3d4214875")
interface IXmlNode_Base : IInspectable
{
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
@uuid("1c741d59-2122-47d5-a856-83f3d4214875")
interface IXmlNode : IXmlNode_Base, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("8c60ad77-83a4-4ec1-9c54-7ba429e13da6")
@WinrtFactory("Windows.Data.Xml.Dom.XmlNodeList")
interface IXmlNodeList_Base : IInspectable
{
extern(Windows):
	HRESULT get_Length(UINT32* return_value);
	HRESULT abi_Item(UINT32 index, Windows.Data.Xml.Dom.IXmlNode* return_node);
}
@uuid("8c60ad77-83a4-4ec1-9c54-7ba429e13da6")
@WinrtFactory("Windows.Data.Xml.Dom.XmlNodeList")
interface IXmlNodeList : IXmlNodeList_Base, Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode), Windows.Foundation.Collections.IIterable!(Windows.Data.Xml.Dom.IXmlNode) {}

@uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b")
interface IXmlNodeSelector : IInspectable
{
extern(Windows):
	HRESULT abi_SelectSingleNode(HSTRING xpath, Windows.Data.Xml.Dom.IXmlNode* return_node);
	HRESULT abi_SelectNodes(HSTRING xpath, Windows.Data.Xml.Dom.XmlNodeList* return_nodelist);
	HRESULT abi_SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces, Windows.Data.Xml.Dom.IXmlNode* return_node);
	HRESULT abi_SelectNodesNS(HSTRING xpath, IInspectable namespaces, Windows.Data.Xml.Dom.XmlNodeList* return_nodelist);
}

@uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c")
interface IXmlNodeSerializer : IInspectable
{
extern(Windows):
	HRESULT abi_GetXml(HSTRING* return_outerXml);
	HRESULT get_InnerText(HSTRING* return_value);
	HRESULT set_InnerText(HSTRING value);
}

@uuid("2707fd1e-1e92-4ece-b6f4-26f069078ddc")
@WinrtFactory("Windows.Data.Xml.Dom.XmlProcessingInstruction")
interface IXmlProcessingInstruction_Base : IInspectable
{
extern(Windows):
	HRESULT get_Target(HSTRING* return_value);
	HRESULT get_Data(HSTRING* return_value);
	HRESULT set_Data(HSTRING value);
}
@uuid("2707fd1e-1e92-4ece-b6f4-26f069078ddc")
@WinrtFactory("Windows.Data.Xml.Dom.XmlProcessingInstruction")
interface IXmlProcessingInstruction : IXmlProcessingInstruction_Base, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

@uuid("f931a4cb-308d-4760-a1d5-43b67450ac7e")
interface IXmlText_Base : IInspectable
{
extern(Windows):
	HRESULT abi_SplitText(UINT32 offset, Windows.Data.Xml.Dom.IXmlText* return_secondPart);
}
@uuid("f931a4cb-308d-4760-a1d5-43b67450ac7e")
interface IXmlText : IXmlText_Base, Windows.Data.Xml.Dom.IXmlCharacterData, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlNodeSerializer {}

interface DtdEntity : Windows.Data.Xml.Dom.IDtdEntity, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final IInspectable PublicId()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IDtdEntity)this.asInterface(uuid("6a0b5ffc-63b4-480f-9e6a-8a92816aade4"))).get_PublicId(&_ret));
		return _ret;
	}
	final IInspectable SystemId()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IDtdEntity)this.asInterface(uuid("6a0b5ffc-63b4-480f-9e6a-8a92816aade4"))).get_SystemId(&_ret));
		return _ret;
	}
	final IInspectable NotationName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IDtdEntity)this.asInterface(uuid("6a0b5ffc-63b4-480f-9e6a-8a92816aade4"))).get_NotationName(&_ret));
		return _ret;
	}
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
}

interface DtdNotation : Windows.Data.Xml.Dom.IDtdNotation, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final IInspectable PublicId()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IDtdNotation)this.asInterface(uuid("8cb4e04d-6d46-4edb-ab73-df83c51ad397"))).get_PublicId(&_ret));
		return _ret;
	}
	final IInspectable SystemId()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IDtdNotation)this.asInterface(uuid("8cb4e04d-6d46-4edb-ab73-df83c51ad397"))).get_SystemId(&_ret));
		return _ret;
	}
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
}

interface XmlAttribute : Windows.Data.Xml.Dom.IXmlAttribute, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlAttribute)this.asInterface(uuid("ac144aa4-b4f1-4db6-b206-8a22c308db0a"))).get_Name(&_ret));
		return _ret;
	}
	final bool Specified()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlAttribute)this.asInterface(uuid("ac144aa4-b4f1-4db6-b206-8a22c308db0a"))).get_Specified(&_ret));
		return _ret;
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlAttribute)this.asInterface(uuid("ac144aa4-b4f1-4db6-b206-8a22c308db0a"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlAttribute)this.asInterface(uuid("ac144aa4-b4f1-4db6-b206-8a22c308db0a"))).set_Value(value));
	}
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
}

interface XmlCDataSection : Windows.Data.Xml.Dom.IXmlCDataSection, Windows.Data.Xml.Dom.IXmlText, Windows.Data.Xml.Dom.IXmlCharacterData, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final Windows.Data.Xml.Dom.IXmlText SplitText(UINT32 offset)
	{
		Windows.Data.Xml.Dom.IXmlText _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlText)this.asInterface(uuid("f931a4cb-308d-4760-a1d5-43b67450ac7e"))).abi_SplitText(offset, &_ret));
		return _ret;
	}
	final HSTRING Data()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).set_Data(value));
	}
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).get_Length(&_ret));
		return _ret;
	}
	final HSTRING SubstringData(UINT32 offset, UINT32 count)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_SubstringData(offset, count, &_ret));
		return _ret;
	}
	final void AppendData(HSTRING data)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_AppendData(data));
	}
	final void InsertData(UINT32 offset, HSTRING data)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_InsertData(offset, data));
	}
	final void DeleteData(UINT32 offset, UINT32 count)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_DeleteData(offset, count));
	}
	final void ReplaceData(UINT32 offset, UINT32 count, HSTRING data)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_ReplaceData(offset, count, data));
	}
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
}

interface XmlComment : Windows.Data.Xml.Dom.IXmlComment, Windows.Data.Xml.Dom.IXmlCharacterData, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final HSTRING Data()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).set_Data(value));
	}
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).get_Length(&_ret));
		return _ret;
	}
	final HSTRING SubstringData(UINT32 offset, UINT32 count)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_SubstringData(offset, count, &_ret));
		return _ret;
	}
	final void AppendData(HSTRING data)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_AppendData(data));
	}
	final void InsertData(UINT32 offset, HSTRING data)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_InsertData(offset, data));
	}
	final void DeleteData(UINT32 offset, UINT32 count)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_DeleteData(offset, count));
	}
	final void ReplaceData(UINT32 offset, UINT32 count, HSTRING data)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_ReplaceData(offset, count, data));
	}
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
}

interface XmlDocument : Windows.Data.Xml.Dom.IXmlDocument, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector, Windows.Data.Xml.Dom.IXmlDocumentIO, Windows.Data.Xml.Dom.IXmlDocumentIO2
{
extern(Windows):
	final Windows.Data.Xml.Dom.XmlDocumentType Doctype()
	{
		Windows.Data.Xml.Dom.XmlDocumentType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).get_Doctype(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDomImplementation Implementation()
	{
		Windows.Data.Xml.Dom.XmlDomImplementation _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).get_Implementation(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlElement DocumentElement()
	{
		Windows.Data.Xml.Dom.XmlElement _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).get_DocumentElement(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlElement CreateElement(HSTRING tagName)
	{
		Windows.Data.Xml.Dom.XmlElement _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_CreateElement(tagName, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocumentFragment CreateDocumentFragment()
	{
		Windows.Data.Xml.Dom.XmlDocumentFragment _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_CreateDocumentFragment(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlText CreateTextNode(HSTRING data)
	{
		Windows.Data.Xml.Dom.XmlText _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_CreateTextNode(data, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlComment CreateComment(HSTRING data)
	{
		Windows.Data.Xml.Dom.XmlComment _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_CreateComment(data, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlProcessingInstruction CreateProcessingInstruction(HSTRING target, HSTRING data)
	{
		Windows.Data.Xml.Dom.XmlProcessingInstruction _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_CreateProcessingInstruction(target, data, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlAttribute CreateAttribute(HSTRING name)
	{
		Windows.Data.Xml.Dom.XmlAttribute _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_CreateAttribute(name, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlEntityReference CreateEntityReference(HSTRING name)
	{
		Windows.Data.Xml.Dom.XmlEntityReference _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_CreateEntityReference(name, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList GetElementsByTagName(HSTRING tagName)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_GetElementsByTagName(tagName, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlCDataSection CreateCDataSection(HSTRING data)
	{
		Windows.Data.Xml.Dom.XmlCDataSection _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_CreateCDataSection(data, &_ret));
		return _ret;
	}
	final HSTRING DocumentUri()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).get_DocumentUri(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlAttribute CreateAttributeNS(IInspectable namespaceUri, HSTRING qualifiedName)
	{
		Windows.Data.Xml.Dom.XmlAttribute _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_CreateAttributeNS(namespaceUri, qualifiedName, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlElement CreateElementNS(IInspectable namespaceUri, HSTRING qualifiedName)
	{
		Windows.Data.Xml.Dom.XmlElement _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_CreateElementNS(namespaceUri, qualifiedName, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlElement GetElementById(HSTRING elementId)
	{
		Windows.Data.Xml.Dom.XmlElement _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_GetElementById(elementId, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ImportNode(Windows.Data.Xml.Dom.IXmlNode node, bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocument)this.asInterface(uuid("f7f3a506-1e87-42d6-bcfb-b8c809fa5494"))).abi_ImportNode(node, deep, &_ret));
		return _ret;
	}
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final void LoadXml(HSTRING xml)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocumentIO)this.asInterface(uuid("6cd0e74e-ee65-4489-9ebf-ca43e87ba637"))).abi_LoadXml(xml));
	}
	final void LoadXml(HSTRING xml, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocumentIO)this.asInterface(uuid("6cd0e74e-ee65-4489-9ebf-ca43e87ba637"))).abi_LoadXml(xml, loadSettings));
	}
	alias LoadXml = LoadXmlWithSettings;
	final Windows.Foundation.IAsyncAction SaveToFileAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocumentIO)this.asInterface(uuid("6cd0e74e-ee65-4489-9ebf-ca43e87ba637"))).abi_SaveToFileAsync(file, &_ret));
		return _ret;
	}
	final void LoadXmlFromBuffer(Windows.Storage.Streams.IBuffer buffer)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocumentIO2)this.asInterface(uuid("5d034661-7bd8-4ad5-9ebf-81e6347263b1"))).abi_LoadXmlFromBuffer(buffer));
	}
	final void LoadXmlFromBuffer(Windows.Storage.Streams.IBuffer buffer, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocumentIO2)this.asInterface(uuid("5d034661-7bd8-4ad5-9ebf-81e6347263b1"))).abi_LoadXmlFromBuffer(buffer, loadSettings));
	}
	alias LoadXmlFromBuffer = LoadXmlFromBufferWithSettings;

	private static Windows.Data.Xml.Dom.IXmlDocumentStatics _staticInstance;
	public static Windows.Data.Xml.Dom.IXmlDocumentStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Data.Xml.Dom.IXmlDocumentStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument) LoadFromUriAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument) _ret;
		Debug.OK(staticInstance.abi_LoadFromUriAsync(uri, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument) LoadFromUriAsync(Windows.Foundation.Uri uri, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument) _ret;
		Debug.OK(staticInstance.abi_LoadFromUriAsync(uri, loadSettings, &_ret));
		return _ret;
	}
	alias LoadFromUriAsync = LoadFromUriWithSettingsAsync;
	static Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument) LoadFromFileAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument) _ret;
		Debug.OK(staticInstance.abi_LoadFromFileAsync(file, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument) LoadFromFileAsync(Windows.Storage.IStorageFile file, Windows.Data.Xml.Dom.XmlLoadSettings loadSettings)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Data.Xml.Dom.XmlDocument) _ret;
		Debug.OK(staticInstance.abi_LoadFromFileAsync(file, loadSettings, &_ret));
		return _ret;
	}
	alias LoadFromFileAsync = LoadFromFileWithSettingsAsync;
	static XmlDocument New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(XmlDocument).abi_ActivateInstance(&ret));
		return cast(XmlDocument) ret;
	}
}

interface XmlDocumentFragment : Windows.Data.Xml.Dom.IXmlDocumentFragment, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
}

interface XmlDocumentType : Windows.Data.Xml.Dom.IXmlDocumentType, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocumentType)this.asInterface(uuid("f7342425-9781-4964-8e94-9b1c6dfc9bc7"))).get_Name(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Entities()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocumentType)this.asInterface(uuid("f7342425-9781-4964-8e94-9b1c6dfc9bc7"))).get_Entities(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Notations()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDocumentType)this.asInterface(uuid("f7342425-9781-4964-8e94-9b1c6dfc9bc7"))).get_Notations(&_ret));
		return _ret;
	}
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
}

interface XmlDomImplementation : Windows.Data.Xml.Dom.IXmlDomImplementation
{
extern(Windows):
	final bool HasFeature(HSTRING feature, IInspectable version_)
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlDomImplementation)this.asInterface(uuid("6de58132-f11d-4fbb-8cc6-583cba93112f"))).abi_HasFeature(feature, version_, &_ret));
		return _ret;
	}
}

interface XmlElement : Windows.Data.Xml.Dom.IXmlElement, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final HSTRING TagName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).get_TagName(&_ret));
		return _ret;
	}
	final HSTRING GetAttribute(HSTRING attributeName)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_GetAttribute(attributeName, &_ret));
		return _ret;
	}
	final void SetAttribute(HSTRING attributeName, HSTRING attributeValue)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_SetAttribute(attributeName, attributeValue));
	}
	final void RemoveAttribute(HSTRING attributeName)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_RemoveAttribute(attributeName));
	}
	final Windows.Data.Xml.Dom.XmlAttribute GetAttributeNode(HSTRING attributeName)
	{
		Windows.Data.Xml.Dom.XmlAttribute _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_GetAttributeNode(attributeName, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlAttribute SetAttributeNode(Windows.Data.Xml.Dom.XmlAttribute newAttribute)
	{
		Windows.Data.Xml.Dom.XmlAttribute _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_SetAttributeNode(newAttribute, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlAttribute RemoveAttributeNode(Windows.Data.Xml.Dom.XmlAttribute attributeNode)
	{
		Windows.Data.Xml.Dom.XmlAttribute _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_RemoveAttributeNode(attributeNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList GetElementsByTagName(HSTRING tagName)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_GetElementsByTagName(tagName, &_ret));
		return _ret;
	}
	final void SetAttributeNS(IInspectable namespaceUri, HSTRING qualifiedName, HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_SetAttributeNS(namespaceUri, qualifiedName, value));
	}
	final HSTRING GetAttributeNS(IInspectable namespaceUri, HSTRING localName)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_GetAttributeNS(namespaceUri, localName, &_ret));
		return _ret;
	}
	final void RemoveAttributeNS(IInspectable namespaceUri, HSTRING localName)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_RemoveAttributeNS(namespaceUri, localName));
	}
	final Windows.Data.Xml.Dom.XmlAttribute SetAttributeNodeNS(Windows.Data.Xml.Dom.XmlAttribute newAttribute)
	{
		Windows.Data.Xml.Dom.XmlAttribute _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_SetAttributeNodeNS(newAttribute, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlAttribute GetAttributeNodeNS(IInspectable namespaceUri, HSTRING localName)
	{
		Windows.Data.Xml.Dom.XmlAttribute _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlElement)this.asInterface(uuid("2dfb8a1f-6b10-4ef8-9f83-efcce8faec37"))).abi_GetAttributeNodeNS(namespaceUri, localName, &_ret));
		return _ret;
	}
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
}

interface XmlEntityReference : Windows.Data.Xml.Dom.IXmlEntityReference, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
}

interface XmlLoadSettings : Windows.Data.Xml.Dom.IXmlLoadSettings
{
extern(Windows):
	final UINT32 MaxElementDepth()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlLoadSettings)this.asInterface(uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6"))).get_MaxElementDepth(&_ret));
		return _ret;
	}
	final void MaxElementDepth(UINT32 value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlLoadSettings)this.asInterface(uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6"))).set_MaxElementDepth(value));
	}
	final bool ProhibitDtd()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlLoadSettings)this.asInterface(uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6"))).get_ProhibitDtd(&_ret));
		return _ret;
	}
	final void ProhibitDtd(bool value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlLoadSettings)this.asInterface(uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6"))).set_ProhibitDtd(value));
	}
	final bool ResolveExternals()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlLoadSettings)this.asInterface(uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6"))).get_ResolveExternals(&_ret));
		return _ret;
	}
	final void ResolveExternals(bool value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlLoadSettings)this.asInterface(uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6"))).set_ResolveExternals(value));
	}
	final bool ValidateOnParse()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlLoadSettings)this.asInterface(uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6"))).get_ValidateOnParse(&_ret));
		return _ret;
	}
	final void ValidateOnParse(bool value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlLoadSettings)this.asInterface(uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6"))).set_ValidateOnParse(value));
	}
	final bool ElementContentWhiteSpace()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlLoadSettings)this.asInterface(uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6"))).get_ElementContentWhiteSpace(&_ret));
		return _ret;
	}
	final void ElementContentWhiteSpace(bool value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlLoadSettings)this.asInterface(uuid("58aa07a8-fed6-46f7-b4c5-fb1ba72108d6"))).set_ElementContentWhiteSpace(value));
	}
	static XmlLoadSettings New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(XmlLoadSettings).abi_ActivateInstance(&ret));
		return cast(XmlLoadSettings) ret;
	}
}

interface XmlNamedNodeMap : Windows.Data.Xml.Dom.IXmlNamedNodeMap, Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode), Windows.Foundation.Collections.IIterable!(Windows.Data.Xml.Dom.IXmlNode)
{
extern(Windows):
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNamedNodeMap)this.asInterface(uuid("b3a69eb0-aab0-4b82-a6fa-b1453f7c021b"))).get_Length(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode Item(UINT32 index)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNamedNodeMap)this.asInterface(uuid("b3a69eb0-aab0-4b82-a6fa-b1453f7c021b"))).abi_Item(index, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode GetNamedItem(HSTRING name)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNamedNodeMap)this.asInterface(uuid("b3a69eb0-aab0-4b82-a6fa-b1453f7c021b"))).abi_GetNamedItem(name, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SetNamedItem(Windows.Data.Xml.Dom.IXmlNode node)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNamedNodeMap)this.asInterface(uuid("b3a69eb0-aab0-4b82-a6fa-b1453f7c021b"))).abi_SetNamedItem(node, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveNamedItem(HSTRING name)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNamedNodeMap)this.asInterface(uuid("b3a69eb0-aab0-4b82-a6fa-b1453f7c021b"))).abi_RemoveNamedItem(name, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode GetNamedItemNS(IInspectable namespaceUri, HSTRING name)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNamedNodeMap)this.asInterface(uuid("b3a69eb0-aab0-4b82-a6fa-b1453f7c021b"))).abi_GetNamedItemNS(namespaceUri, name, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveNamedItemNS(IInspectable namespaceUri, HSTRING name)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNamedNodeMap)this.asInterface(uuid("b3a69eb0-aab0-4b82-a6fa-b1453f7c021b"))).abi_RemoveNamedItemNS(namespaceUri, name, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SetNamedItemNS(Windows.Data.Xml.Dom.IXmlNode node)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNamedNodeMap)this.asInterface(uuid("b3a69eb0-aab0-4b82-a6fa-b1453f7c021b"))).abi_SetNamedItemNS(node, &_ret));
		return _ret;
	}
	final void GetAt(uint index, Windows.Data.Xml.Dom.IXmlNode* out_item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode))this).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode))this).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Data.Xml.Dom.IXmlNode value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Xml.Dom.IXmlNode* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Data.Xml.Dom.IXmlNode)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Data.Xml.Dom.IXmlNode))this).abi_First(out_first));
	}
}

interface XmlNodeList : Windows.Data.Xml.Dom.IXmlNodeList, Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode), Windows.Foundation.Collections.IIterable!(Windows.Data.Xml.Dom.IXmlNode)
{
extern(Windows):
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeList)this.asInterface(uuid("8c60ad77-83a4-4ec1-9c54-7ba429e13da6"))).get_Length(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode Item(UINT32 index)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeList)this.asInterface(uuid("8c60ad77-83a4-4ec1-9c54-7ba429e13da6"))).abi_Item(index, &_ret));
		return _ret;
	}
	final void GetAt(uint index, Windows.Data.Xml.Dom.IXmlNode* out_item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode))this).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode))this).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Data.Xml.Dom.IXmlNode value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Xml.Dom.IXmlNode* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Data.Xml.Dom.IXmlNode))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Data.Xml.Dom.IXmlNode)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Data.Xml.Dom.IXmlNode))this).abi_First(out_first));
	}
}

interface XmlProcessingInstruction : Windows.Data.Xml.Dom.IXmlProcessingInstruction, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final HSTRING Target()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlProcessingInstruction)this.asInterface(uuid("2707fd1e-1e92-4ece-b6f4-26f069078ddc"))).get_Target(&_ret));
		return _ret;
	}
	final HSTRING Data()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlProcessingInstruction)this.asInterface(uuid("2707fd1e-1e92-4ece-b6f4-26f069078ddc"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlProcessingInstruction)this.asInterface(uuid("2707fd1e-1e92-4ece-b6f4-26f069078ddc"))).set_Data(value));
	}
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
}

interface XmlText : Windows.Data.Xml.Dom.IXmlText, Windows.Data.Xml.Dom.IXmlCharacterData, Windows.Data.Xml.Dom.IXmlNode, Windows.Data.Xml.Dom.IXmlNodeSerializer, Windows.Data.Xml.Dom.IXmlNodeSelector
{
extern(Windows):
	final Windows.Data.Xml.Dom.IXmlText SplitText(UINT32 offset)
	{
		Windows.Data.Xml.Dom.IXmlText _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlText)this.asInterface(uuid("f931a4cb-308d-4760-a1d5-43b67450ac7e"))).abi_SplitText(offset, &_ret));
		return _ret;
	}
	final HSTRING Data()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).set_Data(value));
	}
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).get_Length(&_ret));
		return _ret;
	}
	final HSTRING SubstringData(UINT32 offset, UINT32 count)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_SubstringData(offset, count, &_ret));
		return _ret;
	}
	final void AppendData(HSTRING data)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_AppendData(data));
	}
	final void InsertData(UINT32 offset, HSTRING data)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_InsertData(offset, data));
	}
	final void DeleteData(UINT32 offset, UINT32 count)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_DeleteData(offset, count));
	}
	final void ReplaceData(UINT32 offset, UINT32 count, HSTRING data)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlCharacterData)this.asInterface(uuid("132e42ab-4e36-4df6-b1c8-0ce62fd88b26"))).abi_ReplaceData(offset, count, data));
	}
	final IInspectable NodeValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_NodeValue(value));
	}
	final Windows.Data.Xml.Dom.NodeType NodeType()
	{
		Windows.Data.Xml.Dom.NodeType _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeType(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NodeName(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ParentNode()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ParentNode(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList ChildNodes()
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_ChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode FirstChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_FirstChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode LastChild()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LastChild(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode PreviousSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_PreviousSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode NextSibling()
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NextSibling(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNamedNodeMap Attributes()
	{
		Windows.Data.Xml.Dom.XmlNamedNodeMap _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Attributes(&_ret));
		return _ret;
	}
	final bool HasChildNodes()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_HasChildNodes(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument OwnerDocument()
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_OwnerDocument(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode InsertBefore(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_InsertBefore(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode ReplaceChild(Windows.Data.Xml.Dom.IXmlNode newChild, Windows.Data.Xml.Dom.IXmlNode referenceChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_ReplaceChild(newChild, referenceChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode RemoveChild(Windows.Data.Xml.Dom.IXmlNode childNode)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_RemoveChild(childNode, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode AppendChild(Windows.Data.Xml.Dom.IXmlNode newChild)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_AppendChild(newChild, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode CloneNode(bool deep)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_CloneNode(deep, &_ret));
		return _ret;
	}
	final IInspectable NamespaceUri()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_NamespaceUri(&_ret));
		return _ret;
	}
	final IInspectable LocalName()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_LocalName(&_ret));
		return _ret;
	}
	final IInspectable Prefix()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).get_Prefix(&_ret));
		return _ret;
	}
	final void Normalize()
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).abi_Normalize());
	}
	final void Prefix(IInspectable value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNode)this.asInterface(uuid("1c741d59-2122-47d5-a856-83f3d4214875"))).set_Prefix(value));
	}
	final HSTRING GetXml()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).abi_GetXml(&_ret));
		return _ret;
	}
	final HSTRING InnerText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).get_InnerText(&_ret));
		return _ret;
	}
	final void InnerText(HSTRING value)
	{
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSerializer)this.asInterface(uuid("5cc5b382-e6dd-4991-abef-06d8d2e7bd0c"))).set_InnerText(value));
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNode(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNode(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodes(HSTRING xpath)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodes(xpath, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.IXmlNode SelectSingleNodeNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.IXmlNode _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectSingleNodeNS(xpath, namespaces, &_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlNodeList SelectNodesNS(HSTRING xpath, IInspectable namespaces)
	{
		Windows.Data.Xml.Dom.XmlNodeList _ret;
		Debug.OK((cast(Windows.Data.Xml.Dom.IXmlNodeSelector)this.asInterface(uuid("63dbba8b-d0db-4fe1-b745-f9433afdc25b"))).abi_SelectNodesNS(xpath, namespaces, &_ret));
		return _ret;
	}
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