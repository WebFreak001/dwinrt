module Windows.Web.AtomPub;

import dwinrt;

@uuid("35392c38-cded-4d4c-9637-05f15c1c9406")
@WinrtFactory("Windows.Web.AtomPub.AtomPubClient")
interface IAtomPubClient : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RetrieveServiceDocumentAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.AtomPub.ServiceDocument*,Windows.Web.Syndication.RetrievalProgress)* return_operation);
	HRESULT abi_RetrieveMediaResourceAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IInputStream*,Windows.Web.Syndication.RetrievalProgress)* return_operation);
	HRESULT abi_RetrieveResourceAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem*,Windows.Web.Syndication.RetrievalProgress)* return_operation);
	HRESULT abi_CreateResourceAsync(Windows.Foundation.Uri uri, HSTRING description, Windows.Web.Syndication.SyndicationItem item, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem*,Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_CreateMediaResourceAsync(Windows.Foundation.Uri uri, HSTRING mediaType, HSTRING description, Windows.Storage.Streams.IInputStream mediaStream, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Web.Syndication.SyndicationItem*,Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_UpdateMediaResourceAsync(Windows.Foundation.Uri uri, HSTRING mediaType, Windows.Storage.Streams.IInputStream mediaStream, Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_UpdateResourceAsync(Windows.Foundation.Uri uri, Windows.Web.Syndication.SyndicationItem item, Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_UpdateResourceItemAsync(Windows.Web.Syndication.SyndicationItem item, Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_DeleteResourceAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_DeleteResourceItemAsync(Windows.Web.Syndication.SyndicationItem item, Windows.Foundation.IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)* return_operation);
	HRESULT abi_CancelAsyncOperations();
}

@uuid("49d55012-57cb-4bde-ab9f-2610b172777b")
@WinrtFactory("Windows.Web.AtomPub.AtomPubClient")
interface IAtomPubClientFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateAtomPubClientWithCredentials(Windows.Security.Credentials.PasswordCredential serverCredential, Windows.Web.AtomPub.AtomPubClient* return_atomPubClient);
}

@uuid("7f5fd609-bc88-41d4-88fa-3de6704d428e")
@WinrtFactory("Windows.Web.AtomPub.ResourceCollection")
interface IResourceCollection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Title(Windows.Web.Syndication.ISyndicationText* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Categories(Windows.Foundation.Collections.IVectorView!(Windows.Web.Syndication.SyndicationCategory)* return_value);
	HRESULT get_Accepts(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("8b7ec771-2ab3-4dbe-8bcc-778f92b75e51")
@WinrtFactory("Windows.Web.AtomPub.ServiceDocument")
interface IServiceDocument : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Workspaces(Windows.Foundation.Collections.IVectorView!(Windows.Web.AtomPub.Workspace)* return_value);
}

@uuid("b41da63b-a4b8-4036-89c5-83c31266ba49")
@WinrtFactory("Windows.Web.AtomPub.Workspace")
interface IWorkspace : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Title(Windows.Web.Syndication.ISyndicationText* return_value);
	HRESULT get_Collections(Windows.Foundation.Collections.IVectorView!(Windows.Web.AtomPub.ResourceCollection)* return_value);
}

interface AtomPubClient
{
}

interface ResourceCollection
{
}

interface ServiceDocument
{
}

interface Workspace
{
}