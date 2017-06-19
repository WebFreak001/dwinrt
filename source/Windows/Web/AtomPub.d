module Windows.Web.AtomPub;

import dwinrt;

@uuid("35392c38-cded-4d4c-9637-05f15c1c9406")
@WinrtFactory("Windows.Web.AtomPub.AtomPubClient")
interface IAtomPubClient_Base : IInspectable
{
extern(Windows):
	HRESULT abi_RetrieveServiceDocumentAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.AtomPub.ServiceDocument, Windows.Web.Syndication.RetrievalProgress)* return_operation);
	HRESULT abi_RetrieveMediaResourceAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, Windows.Web.Syndication.RetrievalProgress)* return_operation);
	HRESULT abi_RetrieveResourceAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.RetrievalProgress)* return_operation);
	HRESULT abi_CreateResourceAsync(Windows.Foundation.Uri uri, HSTRING description, Windows.Web.Syndication.SyndicationItem item, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_CreateMediaResourceAsync(Windows.Foundation.Uri uri, HSTRING mediaType, HSTRING description, Windows.Storage.Streams.IInputStream mediaStream, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_UpdateMediaResourceAsync(Windows.Foundation.Uri uri, HSTRING mediaType, Windows.Storage.Streams.IInputStream mediaStream, Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_UpdateResourceAsync(Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationItem item, Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_UpdateResourceItemAsync(Windows.Web.Syndication.SyndicationItem item, Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_DeleteResourceAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_DeleteResourceItemAsync(Windows.Web.Syndication.SyndicationItem item, Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_CancelAsyncOperations();
}
@uuid("35392c38-cded-4d4c-9637-05f15c1c9406")
@WinrtFactory("Windows.Web.AtomPub.AtomPubClient")
interface IAtomPubClient : IAtomPubClient_Base, Windows.Web.Syndication.ISyndicationClient {}

@uuid("49d55012-57cb-4bde-ab9f-2610b172777b")
@WinrtFactory("Windows.Web.AtomPub.AtomPubClient")
interface IAtomPubClientFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAtomPubClientWithCredentials(Windows.Security.Credentials.PasswordCredential serverCredential, Windows.Web.AtomPub.AtomPubClient* return_atomPubClient);
}

@uuid("7f5fd609-bc88-41d4-88fa-3de6704d428e")
@WinrtFactory("Windows.Web.AtomPub.ResourceCollection")
interface IResourceCollection_Base : IInspectable
{
extern(Windows):
	HRESULT get_Title(Windows.Web.Syndication.ISyndicationText* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Categories(Windows.Foundation.Collections.IVectorView!(Windows.Web.Syndication.SyndicationCategory)* return_value);
	HRESULT get_Accepts(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}
@uuid("7f5fd609-bc88-41d4-88fa-3de6704d428e")
@WinrtFactory("Windows.Web.AtomPub.ResourceCollection")
interface IResourceCollection : IResourceCollection_Base, Windows.Web.Syndication.ISyndicationNode {}

@uuid("8b7ec771-2ab3-4dbe-8bcc-778f92b75e51")
@WinrtFactory("Windows.Web.AtomPub.ServiceDocument")
interface IServiceDocument_Base : IInspectable
{
extern(Windows):
	HRESULT get_Workspaces(Windows.Foundation.Collections.IVectorView!(Windows.Web.AtomPub.Workspace)* return_value);
}
@uuid("8b7ec771-2ab3-4dbe-8bcc-778f92b75e51")
@WinrtFactory("Windows.Web.AtomPub.ServiceDocument")
interface IServiceDocument : IServiceDocument_Base, Windows.Web.Syndication.ISyndicationNode {}

@uuid("b41da63b-a4b8-4036-89c5-83c31266ba49")
@WinrtFactory("Windows.Web.AtomPub.Workspace")
interface IWorkspace_Base : IInspectable
{
extern(Windows):
	HRESULT get_Title(Windows.Web.Syndication.ISyndicationText* return_value);
	HRESULT get_Collections(Windows.Foundation.Collections.IVectorView!(Windows.Web.AtomPub.ResourceCollection)* return_value);
}
@uuid("b41da63b-a4b8-4036-89c5-83c31266ba49")
@WinrtFactory("Windows.Web.AtomPub.Workspace")
interface IWorkspace : IWorkspace_Base, Windows.Web.Syndication.ISyndicationNode {}

interface AtomPubClient : Windows.Web.AtomPub.IAtomPubClient, Windows.Web.Syndication.ISyndicationClient
{
extern(Windows):
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.AtomPub.ServiceDocument, Windows.Web.Syndication.RetrievalProgress) RetrieveServiceDocumentAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.AtomPub.ServiceDocument, Windows.Web.Syndication.RetrievalProgress) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_RetrieveServiceDocumentAsync(uri, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, Windows.Web.Syndication.RetrievalProgress) RetrieveMediaResourceAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream, Windows.Web.Syndication.RetrievalProgress) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_RetrieveMediaResourceAsync(uri, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.RetrievalProgress) RetrieveResourceAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.RetrievalProgress) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_RetrieveResourceAsync(uri, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.TransferProgress) CreateResourceAsync(Windows.Foundation.Uri uri, HSTRING description, Windows.Web.Syndication.SyndicationItem item)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.TransferProgress) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_CreateResourceAsync(uri, description, item, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.TransferProgress) CreateMediaResourceAsync(Windows.Foundation.Uri uri, HSTRING mediaType, HSTRING description, Windows.Storage.Streams.IInputStream mediaStream)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.TransferProgress) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_CreateMediaResourceAsync(uri, mediaType, description, mediaStream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress) UpdateMediaResourceAsync(Windows.Foundation.Uri uri, HSTRING mediaType, Windows.Storage.Streams.IInputStream mediaStream)
	{
		Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_UpdateMediaResourceAsync(uri, mediaType, mediaStream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress) UpdateResourceAsync(Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationItem item)
	{
		Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_UpdateResourceAsync(uri, item, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress) UpdateResourceItemAsync(Windows.Web.Syndication.SyndicationItem item)
	{
		Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_UpdateResourceItemAsync(item, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress) DeleteResourceAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_DeleteResourceAsync(uri, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress) DeleteResourceItemAsync(Windows.Web.Syndication.SyndicationItem item)
	{
		Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_DeleteResourceItemAsync(item, &_ret));
		return _ret;
	}
	final void CancelAsyncOperations()
	{
		Debug.OK(this.as!(Windows.Web.AtomPub.IAtomPubClient).abi_CancelAsyncOperations());
	}
	final Windows.Security.Credentials.PasswordCredential ServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).get_ServerCredential(&_ret));
		return _ret;
	}
	final void ServerCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).set_ServerCredential(value));
	}
	final Windows.Security.Credentials.PasswordCredential ProxyCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).get_ProxyCredential(&_ret));
		return _ret;
	}
	final void ProxyCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).set_ProxyCredential(value));
	}
	final UINT32 MaxResponseBufferSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).get_MaxResponseBufferSize(&_ret));
		return _ret;
	}
	final void MaxResponseBufferSize(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).set_MaxResponseBufferSize(value));
	}
	final UINT32 Timeout()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).get_Timeout(&_ret));
		return _ret;
	}
	final void Timeout(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).set_Timeout(value));
	}
	final bool BypassCacheOnRetrieve()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).get_BypassCacheOnRetrieve(&_ret));
		return _ret;
	}
	final void BypassCacheOnRetrieve(bool value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).set_BypassCacheOnRetrieve(value));
	}
	final void SetRequestHeader(HSTRING name, HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).abi_SetRequestHeader(name, value));
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationFeed, Windows.Web.Syndication.RetrievalProgress) RetrieveFeedAsync(Windows.Foundation.Uri uri)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationFeed, Windows.Web.Syndication.RetrievalProgress) _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationClient).abi_RetrieveFeedAsync(uri, &_ret));
		return _ret;
	}
}

interface ResourceCollection : Windows.Web.AtomPub.IResourceCollection, Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final Windows.Web.Syndication.ISyndicationText Title()
	{
		Windows.Web.Syndication.ISyndicationText _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IResourceCollection).get_Title(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IResourceCollection).get_Uri(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Web.Syndication.SyndicationCategory) Categories()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Web.Syndication.SyndicationCategory) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IResourceCollection).get_Categories(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Accepts()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IResourceCollection).get_Accepts(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_NodeName(&_ret));
		return _ret;
	}
	final void NodeName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_NodeName(value));
	}
	final HSTRING NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_NodeNamespace(&_ret));
		return _ret;
	}
	final void NodeNamespace(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_NodeNamespace(value));
	}
	final HSTRING NodeValue()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_NodeValue(value));
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_Language(&_ret));
		return _ret;
	}
	final void Language(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_Language(value));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
}

interface ServiceDocument : Windows.Web.AtomPub.IServiceDocument, Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Web.AtomPub.Workspace) Workspaces()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Web.AtomPub.Workspace) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IServiceDocument).get_Workspaces(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_NodeName(&_ret));
		return _ret;
	}
	final void NodeName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_NodeName(value));
	}
	final HSTRING NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_NodeNamespace(&_ret));
		return _ret;
	}
	final void NodeNamespace(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_NodeNamespace(value));
	}
	final HSTRING NodeValue()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_NodeValue(value));
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_Language(&_ret));
		return _ret;
	}
	final void Language(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_Language(value));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
}

interface Workspace : Windows.Web.AtomPub.IWorkspace, Windows.Web.Syndication.ISyndicationNode
{
extern(Windows):
	final Windows.Web.Syndication.ISyndicationText Title()
	{
		Windows.Web.Syndication.ISyndicationText _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IWorkspace).get_Title(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Web.AtomPub.ResourceCollection) Collections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Web.AtomPub.ResourceCollection) _ret;
		Debug.OK(this.as!(Windows.Web.AtomPub.IWorkspace).get_Collections(&_ret));
		return _ret;
	}
	final HSTRING NodeName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_NodeName(&_ret));
		return _ret;
	}
	final void NodeName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_NodeName(value));
	}
	final HSTRING NodeNamespace()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_NodeNamespace(&_ret));
		return _ret;
	}
	final void NodeNamespace(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_NodeNamespace(value));
	}
	final HSTRING NodeValue()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_NodeValue(&_ret));
		return _ret;
	}
	final void NodeValue(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_NodeValue(value));
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_Language(&_ret));
		return _ret;
	}
	final void Language(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_Language(value));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_BaseUri(&_ret));
		return _ret;
	}
	final void BaseUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).set_BaseUri(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) AttributeExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.SyndicationAttribute) _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_AttributeExtensions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) ElementExtensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Web.Syndication.ISyndicationNode) _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).get_ElementExtensions(&_ret));
		return _ret;
	}
	final Windows.Data.Xml.Dom.XmlDocument GetXmlDocument(Windows.Web.Syndication.SyndicationFormat format)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK(this.as!(Windows.Web.Syndication.ISyndicationNode).abi_GetXmlDocument(format, &_ret));
		return _ret;
	}
}