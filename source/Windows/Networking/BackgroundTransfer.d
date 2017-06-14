module Windows.Networking.BackgroundTransfer;

import dwinrt;

struct BackgroundDownloadProgress
{
	UINT64 BytesReceived;
	UINT64 TotalBytesToReceive;
	Windows.Networking.BackgroundTransfer.BackgroundTransferStatus Status;
	bool HasResponseChanged;
	bool HasRestarted;
}

struct BackgroundUploadProgress
{
	UINT64 BytesReceived;
	UINT64 BytesSent;
	UINT64 TotalBytesToReceive;
	UINT64 TotalBytesToSend;
	Windows.Networking.BackgroundTransfer.BackgroundTransferStatus Status;
	bool HasResponseChanged;
	bool HasRestarted;
}

@uuid("c1c79333-6649-4b1d-a826-a4b3dd234d0b")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloader_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateDownload(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile resultFile, Windows.Networking.BackgroundTransfer.DownloadOperation* return_operation);
	HRESULT abi_CreateDownloadFromFile(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile resultFile, Windows.Storage.IStorageFile requestBodyFile, Windows.Networking.BackgroundTransfer.DownloadOperation* return_operation);
	HRESULT abi_CreateDownloadAsync(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile resultFile, Windows.Storage.Streams.IInputStream requestBodyStream, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.DownloadOperation)* return_operation);
}
interface IBackgroundDownloader : IBackgroundDownloader_Base, Windows.Networking.BackgroundTransfer.IBackgroundTransferBase {}

@uuid("a94a5847-348d-4a35-890e-8a1ef3798479")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloader2 : IInspectable
{
extern(Windows):
	HRESULT get_TransferGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup* return_value);
	HRESULT set_TransferGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup value);
	HRESULT get_SuccessToastNotification(Windows.UI.Notifications.ToastNotification* return_value);
	HRESULT set_SuccessToastNotification(Windows.UI.Notifications.ToastNotification value);
	HRESULT get_FailureToastNotification(Windows.UI.Notifications.ToastNotification* return_value);
	HRESULT set_FailureToastNotification(Windows.UI.Notifications.ToastNotification value);
	HRESULT get_SuccessTileNotification(Windows.UI.Notifications.TileNotification* return_value);
	HRESULT set_SuccessTileNotification(Windows.UI.Notifications.TileNotification value);
	HRESULT get_FailureTileNotification(Windows.UI.Notifications.TileNotification* return_value);
	HRESULT set_FailureTileNotification(Windows.UI.Notifications.TileNotification value);
}

@uuid("d11a8c48-86e8-48e2-b615-6976aabf861d")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloader3 : IInspectable
{
extern(Windows):
	HRESULT get_CompletionGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup* return_value);
}

@uuid("26836c24-d89e-46f4-a29a-4f4d4f144155")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloaderFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithCompletionGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup completionGroup, Windows.Networking.BackgroundTransfer.BackgroundDownloader* return_backgroundDownloader);
}

@uuid("52a65a35-c64e-426c-9919-540d0d21a650")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloaderStaticMethods : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentDownloadsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.DownloadOperation))* return_operation);
	deprecated("GetCurrentDownloadsAsync(group) may be altered or unavailable for releases after Windows 8.1. Instead, use GetCurrentDownloadsForTransferGroupAsync.")
	HRESULT abi_GetCurrentDownloadsForGroupAsync(HSTRING group, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.DownloadOperation))* return_operation);
}

@uuid("2faa1327-1ad4-4ca5-b2cd-08dbf0746afe")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloaderStaticMethods2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentDownloadsForTransferGroupAsync(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup group, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.DownloadOperation))* return_operation);
}

@uuid("5d14e906-9266-4808-bd71-5925f2a3130a")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloaderUserConsent : IInspectable
{
extern(Windows):
	deprecated("RequestUnconstrainedDownloadsAsync is deprecated and may not work on all platforms. For more info, see MSDN.")
	HRESULT abi_RequestUnconstrainedDownloadsAsync(Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.DownloadOperation) operations, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UnconstrainedTransferRequestResult)* return_operation);
}

@uuid("2a9da250-c769-458c-afe8-feb8d4d3b2ef")
interface IBackgroundTransferBase : IInspectable
{
extern(Windows):
	HRESULT abi_SetRequestHeader(HSTRING headerName, HSTRING headerValue);
	HRESULT get_ServerCredential(Windows.Security.Credentials.PasswordCredential* return_credential);
	HRESULT set_ServerCredential(Windows.Security.Credentials.PasswordCredential credential);
	HRESULT get_ProxyCredential(Windows.Security.Credentials.PasswordCredential* return_credential);
	HRESULT set_ProxyCredential(Windows.Security.Credentials.PasswordCredential credential);
	HRESULT get_Method(HSTRING* return_value);
	HRESULT set_Method(HSTRING value);
	deprecated("Group may be altered or unavailable for releases after Windows 8.1. Instead, use TransferGroup.")
	HRESULT get_Group(HSTRING* return_value);
	deprecated("Group may be altered or unavailable for releases after Windows 8.1. Instead, use TransferGroup.")
	HRESULT set_Group(HSTRING value);
	HRESULT get_CostPolicy(Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy* return_value);
	HRESULT set_CostPolicy(Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy value);
}

@uuid("2d930225-986b-574d-7950-0add47f5d706")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup")
interface IBackgroundTransferCompletionGroup : IInspectable
{
extern(Windows):
	HRESULT get_Trigger(Windows.ApplicationModel.Background.IBackgroundTrigger* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT abi_Enable();
}

@uuid("7b6be286-6e47-5136-7fcb-fa4389f46f5b")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroupTriggerDetails")
interface IBackgroundTransferCompletionGroupTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Downloads(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.DownloadOperation)* return_value);
	HRESULT get_Uploads(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.UploadOperation)* return_value);
}

@uuid("e8e15657-d7d1-4ed8-838e-674ac217ace6")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart")
interface IBackgroundTransferContentPart : IInspectable
{
extern(Windows):
	HRESULT abi_SetHeader(HSTRING headerName, HSTRING headerValue);
	HRESULT abi_SetText(HSTRING value);
	HRESULT abi_SetFile(Windows.Storage.IStorageFile value);
}

@uuid("90ef98a9-7a01-4a0b-9f80-a0b0bb370f8d")
interface IBackgroundTransferContentPartFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithName(HSTRING name, Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart* return_value);
	HRESULT abi_CreateWithNameAndFileName(HSTRING name, HSTRING fileName, Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart* return_value);
}

@uuid("aad33b04-1192-4bf4-8b68-39c5add244e2")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferError")
interface IBackgroundTransferErrorStaticMethods : IInspectable
{
extern(Windows):
	HRESULT abi_GetStatus(INT32 hresult, Windows.Web.WebErrorStatus* return_status);
}

@uuid("d8c3e3e4-6459-4540-85eb-aaa1c8903677")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferGroup")
interface IBackgroundTransferGroup : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_TransferBehavior(Windows.Networking.BackgroundTransfer.BackgroundTransferBehavior* return_value);
	HRESULT set_TransferBehavior(Windows.Networking.BackgroundTransfer.BackgroundTransferBehavior value);
}

@uuid("02ec50b2-7d18-495b-aa22-32a97d45d3e2")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferGroup")
interface IBackgroundTransferGroupStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateGroup(HSTRING name, Windows.Networking.BackgroundTransfer.BackgroundTransferGroup* return_value);
}

@uuid("ded06846-90ca-44fb-8fb1-124154c0d539")
interface IBackgroundTransferOperation : IInspectable
{
extern(Windows):
	HRESULT get_Guid(GUID* return_value);
	HRESULT get_RequestedUri(Windows.Foundation.Uri* return_value);
	HRESULT get_Method(HSTRING* return_value);
	deprecated("Group may be altered or unavailable for releases after Windows 8.1. Instead, use TransferGroup.")
	HRESULT get_Group(HSTRING* return_value);
	HRESULT get_CostPolicy(Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy* return_value);
	HRESULT set_CostPolicy(Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy value);
	HRESULT abi_GetResultStreamAt(UINT64 position, Windows.Storage.Streams.IInputStream* return_value);
	HRESULT abi_GetResponseInformation(Windows.Networking.BackgroundTransfer.ResponseInformation* return_value);
}

@uuid("04854327-5254-4b3a-915e-0aa49275c0f9")
interface IBackgroundTransferOperationPriority : IInspectable
{
extern(Windows):
	HRESULT get_Priority(Windows.Networking.BackgroundTransfer.BackgroundTransferPriority* return_value);
	HRESULT set_Priority(Windows.Networking.BackgroundTransfer.BackgroundTransferPriority value);
}

@uuid("c595c9ae-cead-465b-8801-c55ac90a01ce")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploader_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateUpload(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile sourceFile, Windows.Networking.BackgroundTransfer.UploadOperation* return_operation);
	HRESULT abi_CreateUploadFromStreamAsync(Windows.Foundation.Uri uri, Windows.Storage.Streams.IInputStream sourceStream, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation)* return_operation);
	HRESULT abi_CreateUploadWithFormDataAndAutoBoundaryAsync(Windows.Foundation.Uri uri, Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart) parts, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation)* return_operation);
	HRESULT abi_CreateUploadWithSubTypeAsync(Windows.Foundation.Uri uri, Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart) parts, HSTRING subType, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation)* return_operation);
	HRESULT abi_CreateUploadWithSubTypeAndBoundaryAsync(Windows.Foundation.Uri uri, Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart) parts, HSTRING subType, HSTRING boundary, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation)* return_operation);
}
interface IBackgroundUploader : IBackgroundUploader_Base, Windows.Networking.BackgroundTransfer.IBackgroundTransferBase {}

@uuid("8e0612ce-0c34-4463-807f-198a1b8bd4ad")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploader2 : IInspectable
{
extern(Windows):
	HRESULT get_TransferGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup* return_value);
	HRESULT set_TransferGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup value);
	HRESULT get_SuccessToastNotification(Windows.UI.Notifications.ToastNotification* return_value);
	HRESULT set_SuccessToastNotification(Windows.UI.Notifications.ToastNotification value);
	HRESULT get_FailureToastNotification(Windows.UI.Notifications.ToastNotification* return_value);
	HRESULT set_FailureToastNotification(Windows.UI.Notifications.ToastNotification value);
	HRESULT get_SuccessTileNotification(Windows.UI.Notifications.TileNotification* return_value);
	HRESULT set_SuccessTileNotification(Windows.UI.Notifications.TileNotification value);
	HRESULT get_FailureTileNotification(Windows.UI.Notifications.TileNotification* return_value);
	HRESULT set_FailureTileNotification(Windows.UI.Notifications.TileNotification value);
}

@uuid("b95e9439-5bf0-4b3a-8c47-2c6199a854b9")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploader3 : IInspectable
{
extern(Windows):
	HRESULT get_CompletionGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup* return_value);
}

@uuid("736203c7-10e7-48a0-ac3c-1ac71095ec57")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploaderFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithCompletionGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup completionGroup, Windows.Networking.BackgroundTransfer.BackgroundUploader* return_backgroundUploader);
}

@uuid("f2875cfb-9b05-4741-9121-740a83e247df")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploaderStaticMethods : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentUploadsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.UploadOperation))* return_operation);
	deprecated("GetCurrentUploadsAsync(group) may be altered or unavailable for releases after Windows 8.1. Instead, use GetCurrentUploadsForTransferGroupAsync.")
	HRESULT abi_GetCurrentUploadsForGroupAsync(HSTRING group, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.UploadOperation))* return_operation);
}

@uuid("e919ac62-ea08-42f0-a2ac-07e467549080")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploaderStaticMethods2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentUploadsForTransferGroupAsync(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup group, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.UploadOperation))* return_operation);
}

@uuid("3bb384cb-0760-461d-907f-5138f84d44c1")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploaderUserConsent : IInspectable
{
extern(Windows):
	deprecated("RequestUnconstrainedUploadsAsync is deprecated and may not work on all platforms. For more info, see MSDN.")
	HRESULT abi_RequestUnconstrainedUploadsAsync(Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.UploadOperation) operations, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UnconstrainedTransferRequestResult)* return_operation);
}

@uuid("a8d6f754-7dc1-4cd9-8810-2a6aa9417e11")
@WinrtFactory("Windows.Networking.BackgroundTransfer.ContentPrefetcher")
interface IContentPrefetcher : IInspectable
{
extern(Windows):
	HRESULT get_ContentUris(Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri)* return_value);
	HRESULT set_IndirectContentUri(Windows.Foundation.Uri value);
	HRESULT get_IndirectContentUri(Windows.Foundation.Uri* return_value);
}

@uuid("e361fd08-132a-4fde-a7cc-fcb0e66523af")
@WinrtFactory("Windows.Networking.BackgroundTransfer.ContentPrefetcher")
interface IContentPrefetcherTime : IInspectable
{
extern(Windows):
	HRESULT get_LastSuccessfulPrefetchTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("bd87ebb0-5714-4e09-ba68-bef73903b0d7")
@WinrtFactory("Windows.Networking.BackgroundTransfer.DownloadOperation")
interface IDownloadOperation_Base : IInspectable
{
extern(Windows):
	HRESULT get_ResultFile(Windows.Storage.IStorageFile* return_value);
	HRESULT get_Progress(Windows.Networking.BackgroundTransfer.BackgroundDownloadProgress* return_value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.DownloadOperation, Windows.Networking.BackgroundTransfer.DownloadOperation)* return_operation);
	HRESULT abi_AttachAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.DownloadOperation, Windows.Networking.BackgroundTransfer.DownloadOperation)* return_operation);
	HRESULT abi_Pause();
	HRESULT abi_Resume();
}
interface IDownloadOperation : IDownloadOperation_Base, Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation {}

@uuid("a3cced40-8f9c-4353-9cd4-290dee387c38")
@WinrtFactory("Windows.Networking.BackgroundTransfer.DownloadOperation")
interface IDownloadOperation2 : IInspectable
{
extern(Windows):
	HRESULT get_TransferGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup* return_value);
}

@uuid("f8bb9a12-f713-4792-8b68-d9d297f91d2e")
@WinrtFactory("Windows.Networking.BackgroundTransfer.ResponseInformation")
interface IResponseInformation : IInspectable
{
extern(Windows):
	HRESULT get_IsResumable(bool* return_value);
	HRESULT get_ActualUri(Windows.Foundation.Uri* return_value);
	HRESULT get_StatusCode(UINT32* return_value);
	HRESULT get_Headers(Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING)* return_value);
}

@uuid("4c24b81f-d944-4112-a98e-6a69522b7ebb")
@WinrtFactory("Windows.Networking.BackgroundTransfer.UnconstrainedTransferRequestResult")
interface IUnconstrainedTransferRequestResult : IInspectable
{
extern(Windows):
	deprecated("IsUnconstrained is deprecated and may not work on all platforms. For more info, see MSDN.")
	HRESULT get_IsUnconstrained(bool* return_value);
}

@uuid("3e5624e0-7389-434c-8b35-427fd36bbdae")
@WinrtFactory("Windows.Networking.BackgroundTransfer.UploadOperation")
interface IUploadOperation_Base : IInspectable
{
extern(Windows):
	HRESULT get_SourceFile(Windows.Storage.IStorageFile* return_value);
	HRESULT get_Progress(Windows.Networking.BackgroundTransfer.BackgroundUploadProgress* return_value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.UploadOperation, Windows.Networking.BackgroundTransfer.UploadOperation)* return_operation);
	HRESULT abi_AttachAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.UploadOperation, Windows.Networking.BackgroundTransfer.UploadOperation)* return_operation);
}
interface IUploadOperation : IUploadOperation_Base, Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation {}

@uuid("556189f2-2774-4df6-9fa5-209f2bfb12f7")
@WinrtFactory("Windows.Networking.BackgroundTransfer.UploadOperation")
interface IUploadOperation2 : IInspectable
{
extern(Windows):
	HRESULT get_TransferGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup* return_value);
}

interface BackgroundDownloader : Windows.Networking.BackgroundTransfer.IBackgroundDownloader, Windows.Networking.BackgroundTransfer.IBackgroundTransferBase, Windows.Networking.BackgroundTransfer.IBackgroundDownloader2, Windows.Networking.BackgroundTransfer.IBackgroundDownloader3
{
extern(Windows):
	final Windows.Networking.BackgroundTransfer.DownloadOperation CreateDownload(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile resultFile)
	{
		Windows.Networking.BackgroundTransfer.DownloadOperation _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader).abi_CreateDownload(uri, resultFile, &_ret));
		return _ret;
	}
	final Windows.Networking.BackgroundTransfer.DownloadOperation CreateDownloadFromFile(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile resultFile, Windows.Storage.IStorageFile requestBodyFile)
	{
		Windows.Networking.BackgroundTransfer.DownloadOperation _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader).abi_CreateDownloadFromFile(uri, resultFile, requestBodyFile, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.DownloadOperation) CreateDownloadAsync(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile resultFile, Windows.Storage.Streams.IInputStream requestBodyStream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.DownloadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader).abi_CreateDownloadAsync(uri, resultFile, requestBodyStream, &_ret));
		return _ret;
	}
	final void SetRequestHeader(HSTRING headerName, HSTRING headerValue)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).abi_SetRequestHeader(headerName, headerValue));
	}
	final Windows.Security.Credentials.PasswordCredential ServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).get_ServerCredential(&_ret));
		return _ret;
	}
	final void ServerCredential(Windows.Security.Credentials.PasswordCredential credential)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).set_ServerCredential(credential));
	}
	final Windows.Security.Credentials.PasswordCredential ProxyCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).get_ProxyCredential(&_ret));
		return _ret;
	}
	final void ProxyCredential(Windows.Security.Credentials.PasswordCredential credential)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).set_ProxyCredential(credential));
	}
	final HSTRING Method()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).get_Method(&_ret));
		return _ret;
	}
	final void Method(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).set_Method(value));
	}
	deprecated("Group may be altered or unavailable for releases after Windows 8.1. Instead, use TransferGroup.")
	final HSTRING Group()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).get_Group(&_ret));
		return _ret;
	}
	deprecated("Group may be altered or unavailable for releases after Windows 8.1. Instead, use TransferGroup.")
	final void Group(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).set_Group(value));
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy CostPolicy()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).get_CostPolicy(&_ret));
		return _ret;
	}
	final void CostPolicy(Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).set_CostPolicy(value));
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferGroup TransferGroup()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferGroup _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader2).get_TransferGroup(&_ret));
		return _ret;
	}
	final void TransferGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader2).set_TransferGroup(value));
	}
	final Windows.UI.Notifications.ToastNotification SuccessToastNotification()
	{
		Windows.UI.Notifications.ToastNotification _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader2).get_SuccessToastNotification(&_ret));
		return _ret;
	}
	final void SuccessToastNotification(Windows.UI.Notifications.ToastNotification value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader2).set_SuccessToastNotification(value));
	}
	final Windows.UI.Notifications.ToastNotification FailureToastNotification()
	{
		Windows.UI.Notifications.ToastNotification _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader2).get_FailureToastNotification(&_ret));
		return _ret;
	}
	final void FailureToastNotification(Windows.UI.Notifications.ToastNotification value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader2).set_FailureToastNotification(value));
	}
	final Windows.UI.Notifications.TileNotification SuccessTileNotification()
	{
		Windows.UI.Notifications.TileNotification _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader2).get_SuccessTileNotification(&_ret));
		return _ret;
	}
	final void SuccessTileNotification(Windows.UI.Notifications.TileNotification value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader2).set_SuccessTileNotification(value));
	}
	final Windows.UI.Notifications.TileNotification FailureTileNotification()
	{
		Windows.UI.Notifications.TileNotification _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader2).get_FailureTileNotification(&_ret));
		return _ret;
	}
	final void FailureTileNotification(Windows.UI.Notifications.TileNotification value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader2).set_FailureTileNotification(value));
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup CompletionGroup()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundDownloader3).get_CompletionGroup(&_ret));
		return _ret;
	}
}

interface BackgroundTransferCompletionGroup : Windows.Networking.BackgroundTransfer.IBackgroundTransferCompletionGroup
{
extern(Windows):
	final Windows.ApplicationModel.Background.IBackgroundTrigger Trigger()
	{
		Windows.ApplicationModel.Background.IBackgroundTrigger _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferCompletionGroup).get_Trigger(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferCompletionGroup).get_IsEnabled(&_ret));
		return _ret;
	}
	final void Enable()
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferCompletionGroup).abi_Enable());
	}
}

interface BackgroundTransferCompletionGroupTriggerDetails : Windows.Networking.BackgroundTransfer.IBackgroundTransferCompletionGroupTriggerDetails
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.DownloadOperation) Downloads()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.DownloadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferCompletionGroupTriggerDetails).get_Downloads(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.UploadOperation) Uploads()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.UploadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferCompletionGroupTriggerDetails).get_Uploads(&_ret));
		return _ret;
	}
}

interface BackgroundTransferContentPart : Windows.Networking.BackgroundTransfer.IBackgroundTransferContentPart
{
extern(Windows):
	final void SetHeader(HSTRING headerName, HSTRING headerValue)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferContentPart).abi_SetHeader(headerName, headerValue));
	}
	final void SetText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferContentPart).abi_SetText(value));
	}
	final void SetFile(Windows.Storage.IStorageFile value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferContentPart).abi_SetFile(value));
	}
}

interface BackgroundTransferError
{
}

interface BackgroundTransferGroup : Windows.Networking.BackgroundTransfer.IBackgroundTransferGroup
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferGroup).get_Name(&_ret));
		return _ret;
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferBehavior TransferBehavior()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferBehavior _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferGroup).get_TransferBehavior(&_ret));
		return _ret;
	}
	final void TransferBehavior(Windows.Networking.BackgroundTransfer.BackgroundTransferBehavior value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferGroup).set_TransferBehavior(value));
	}
}

interface BackgroundUploader : Windows.Networking.BackgroundTransfer.IBackgroundUploader, Windows.Networking.BackgroundTransfer.IBackgroundTransferBase, Windows.Networking.BackgroundTransfer.IBackgroundUploader2, Windows.Networking.BackgroundTransfer.IBackgroundUploader3
{
extern(Windows):
	final Windows.Networking.BackgroundTransfer.UploadOperation CreateUpload(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile sourceFile)
	{
		Windows.Networking.BackgroundTransfer.UploadOperation _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader).abi_CreateUpload(uri, sourceFile, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation) CreateUploadFromStreamAsync(Windows.Foundation.Uri uri, Windows.Storage.Streams.IInputStream sourceStream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader).abi_CreateUploadFromStreamAsync(uri, sourceStream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation) CreateUploadWithFormDataAndAutoBoundaryAsync(Windows.Foundation.Uri uri, Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart) parts)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader).abi_CreateUploadWithFormDataAndAutoBoundaryAsync(uri, parts, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation) CreateUploadWithSubTypeAsync(Windows.Foundation.Uri uri, Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart) parts, HSTRING subType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader).abi_CreateUploadWithSubTypeAsync(uri, parts, subType, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation) CreateUploadWithSubTypeAndBoundaryAsync(Windows.Foundation.Uri uri, Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart) parts, HSTRING subType, HSTRING boundary)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader).abi_CreateUploadWithSubTypeAndBoundaryAsync(uri, parts, subType, boundary, &_ret));
		return _ret;
	}
	final void SetRequestHeader(HSTRING headerName, HSTRING headerValue)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).abi_SetRequestHeader(headerName, headerValue));
	}
	final Windows.Security.Credentials.PasswordCredential ServerCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).get_ServerCredential(&_ret));
		return _ret;
	}
	final void ServerCredential(Windows.Security.Credentials.PasswordCredential credential)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).set_ServerCredential(credential));
	}
	final Windows.Security.Credentials.PasswordCredential ProxyCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).get_ProxyCredential(&_ret));
		return _ret;
	}
	final void ProxyCredential(Windows.Security.Credentials.PasswordCredential credential)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).set_ProxyCredential(credential));
	}
	final HSTRING Method()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).get_Method(&_ret));
		return _ret;
	}
	final void Method(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).set_Method(value));
	}
	deprecated("Group may be altered or unavailable for releases after Windows 8.1. Instead, use TransferGroup.")
	final HSTRING Group()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).get_Group(&_ret));
		return _ret;
	}
	deprecated("Group may be altered or unavailable for releases after Windows 8.1. Instead, use TransferGroup.")
	final void Group(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).set_Group(value));
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy CostPolicy()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).get_CostPolicy(&_ret));
		return _ret;
	}
	final void CostPolicy(Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferBase).set_CostPolicy(value));
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferGroup TransferGroup()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferGroup _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader2).get_TransferGroup(&_ret));
		return _ret;
	}
	final void TransferGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader2).set_TransferGroup(value));
	}
	final Windows.UI.Notifications.ToastNotification SuccessToastNotification()
	{
		Windows.UI.Notifications.ToastNotification _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader2).get_SuccessToastNotification(&_ret));
		return _ret;
	}
	final void SuccessToastNotification(Windows.UI.Notifications.ToastNotification value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader2).set_SuccessToastNotification(value));
	}
	final Windows.UI.Notifications.ToastNotification FailureToastNotification()
	{
		Windows.UI.Notifications.ToastNotification _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader2).get_FailureToastNotification(&_ret));
		return _ret;
	}
	final void FailureToastNotification(Windows.UI.Notifications.ToastNotification value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader2).set_FailureToastNotification(value));
	}
	final Windows.UI.Notifications.TileNotification SuccessTileNotification()
	{
		Windows.UI.Notifications.TileNotification _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader2).get_SuccessTileNotification(&_ret));
		return _ret;
	}
	final void SuccessTileNotification(Windows.UI.Notifications.TileNotification value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader2).set_SuccessTileNotification(value));
	}
	final Windows.UI.Notifications.TileNotification FailureTileNotification()
	{
		Windows.UI.Notifications.TileNotification _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader2).get_FailureTileNotification(&_ret));
		return _ret;
	}
	final void FailureTileNotification(Windows.UI.Notifications.TileNotification value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader2).set_FailureTileNotification(value));
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup CompletionGroup()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundUploader3).get_CompletionGroup(&_ret));
		return _ret;
	}
}

interface ContentPrefetcher
{
}

interface DownloadOperation : Windows.Networking.BackgroundTransfer.IDownloadOperation, Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation, Windows.Networking.BackgroundTransfer.IBackgroundTransferOperationPriority, Windows.Networking.BackgroundTransfer.IDownloadOperation2
{
extern(Windows):
	final Windows.Storage.IStorageFile ResultFile()
	{
		Windows.Storage.IStorageFile _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IDownloadOperation).get_ResultFile(&_ret));
		return _ret;
	}
	final Windows.Networking.BackgroundTransfer.BackgroundDownloadProgress Progress()
	{
		Windows.Networking.BackgroundTransfer.BackgroundDownloadProgress _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IDownloadOperation).get_Progress(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.DownloadOperation, Windows.Networking.BackgroundTransfer.DownloadOperation) StartAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.DownloadOperation, Windows.Networking.BackgroundTransfer.DownloadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IDownloadOperation).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.DownloadOperation, Windows.Networking.BackgroundTransfer.DownloadOperation) AttachAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.DownloadOperation, Windows.Networking.BackgroundTransfer.DownloadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IDownloadOperation).abi_AttachAsync(&_ret));
		return _ret;
	}
	final void Pause()
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IDownloadOperation).abi_Pause());
	}
	final void Resume()
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IDownloadOperation).abi_Resume());
	}
	final GUID Guid()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).get_Guid(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri RequestedUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).get_RequestedUri(&_ret));
		return _ret;
	}
	final HSTRING Method()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).get_Method(&_ret));
		return _ret;
	}
	deprecated("Group may be altered or unavailable for releases after Windows 8.1. Instead, use TransferGroup.")
	final HSTRING Group()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).get_Group(&_ret));
		return _ret;
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy CostPolicy()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).get_CostPolicy(&_ret));
		return _ret;
	}
	final void CostPolicy(Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).set_CostPolicy(value));
	}
	final Windows.Storage.Streams.IInputStream GetResultStreamAt(UINT64 position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).abi_GetResultStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Networking.BackgroundTransfer.ResponseInformation GetResponseInformation()
	{
		Windows.Networking.BackgroundTransfer.ResponseInformation _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).abi_GetResponseInformation(&_ret));
		return _ret;
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferPriority Priority()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferPriority _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperationPriority).get_Priority(&_ret));
		return _ret;
	}
	final void Priority(Windows.Networking.BackgroundTransfer.BackgroundTransferPriority value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperationPriority).set_Priority(value));
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferGroup TransferGroup()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferGroup _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IDownloadOperation2).get_TransferGroup(&_ret));
		return _ret;
	}
}

interface ResponseInformation : Windows.Networking.BackgroundTransfer.IResponseInformation
{
extern(Windows):
	final bool IsResumable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IResponseInformation).get_IsResumable(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri ActualUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IResponseInformation).get_ActualUri(&_ret));
		return _ret;
	}
	final UINT32 StatusCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IResponseInformation).get_StatusCode(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) Headers()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IResponseInformation).get_Headers(&_ret));
		return _ret;
	}
}

interface UnconstrainedTransferRequestResult : Windows.Networking.BackgroundTransfer.IUnconstrainedTransferRequestResult
{
extern(Windows):
	deprecated("IsUnconstrained is deprecated and may not work on all platforms. For more info, see MSDN.")
	final bool IsUnconstrained()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IUnconstrainedTransferRequestResult).get_IsUnconstrained(&_ret));
		return _ret;
	}
}

interface UploadOperation : Windows.Networking.BackgroundTransfer.IUploadOperation, Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation, Windows.Networking.BackgroundTransfer.IBackgroundTransferOperationPriority, Windows.Networking.BackgroundTransfer.IUploadOperation2
{
extern(Windows):
	final Windows.Storage.IStorageFile SourceFile()
	{
		Windows.Storage.IStorageFile _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IUploadOperation).get_SourceFile(&_ret));
		return _ret;
	}
	final Windows.Networking.BackgroundTransfer.BackgroundUploadProgress Progress()
	{
		Windows.Networking.BackgroundTransfer.BackgroundUploadProgress _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IUploadOperation).get_Progress(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.UploadOperation, Windows.Networking.BackgroundTransfer.UploadOperation) StartAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.UploadOperation, Windows.Networking.BackgroundTransfer.UploadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IUploadOperation).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.UploadOperation, Windows.Networking.BackgroundTransfer.UploadOperation) AttachAsync()
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.UploadOperation, Windows.Networking.BackgroundTransfer.UploadOperation) _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IUploadOperation).abi_AttachAsync(&_ret));
		return _ret;
	}
	final GUID Guid()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).get_Guid(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri RequestedUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).get_RequestedUri(&_ret));
		return _ret;
	}
	final HSTRING Method()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).get_Method(&_ret));
		return _ret;
	}
	deprecated("Group may be altered or unavailable for releases after Windows 8.1. Instead, use TransferGroup.")
	final HSTRING Group()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).get_Group(&_ret));
		return _ret;
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy CostPolicy()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).get_CostPolicy(&_ret));
		return _ret;
	}
	final void CostPolicy(Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).set_CostPolicy(value));
	}
	final Windows.Storage.Streams.IInputStream GetResultStreamAt(UINT64 position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).abi_GetResultStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Networking.BackgroundTransfer.ResponseInformation GetResponseInformation()
	{
		Windows.Networking.BackgroundTransfer.ResponseInformation _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation).abi_GetResponseInformation(&_ret));
		return _ret;
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferPriority Priority()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferPriority _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperationPriority).get_Priority(&_ret));
		return _ret;
	}
	final void Priority(Windows.Networking.BackgroundTransfer.BackgroundTransferPriority value)
	{
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IBackgroundTransferOperationPriority).set_Priority(value));
	}
	final Windows.Networking.BackgroundTransfer.BackgroundTransferGroup TransferGroup()
	{
		Windows.Networking.BackgroundTransfer.BackgroundTransferGroup _ret;
		Debug.OK(this.as!(Windows.Networking.BackgroundTransfer.IUploadOperation2).get_TransferGroup(&_ret));
		return _ret;
	}
}

enum BackgroundTransferBehavior
{
	Parallel = 0,
	Serialized = 1
}

enum BackgroundTransferCostPolicy
{
	Default = 0,
	UnrestrictedOnly = 1,
	Always = 2
}

enum BackgroundTransferPriority
{
	Default = 0,
	High = 1
}

enum BackgroundTransferStatus
{
	Idle = 0,
	Running = 1,
	PausedByApplication = 2,
	PausedCostedNetwork = 3,
	PausedNoNetwork = 4,
	Completed = 5,
	Canceled = 6,
	Error = 7,
	PausedSystemPolicy = 32
}