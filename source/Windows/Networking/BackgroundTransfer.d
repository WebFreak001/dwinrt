module Windows.Networking.BackgroundTransfer;

import dwinrt;

@uuid("c1c79333-6649-4b1d-a826-a4b3dd234d0b")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateDownload(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile resultFile, Windows.Networking.BackgroundTransfer.DownloadOperation* return_operation);
	HRESULT abi_CreateDownloadFromFile(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile resultFile, Windows.Storage.IStorageFile requestBodyFile, Windows.Networking.BackgroundTransfer.DownloadOperation* return_operation);
	HRESULT abi_CreateDownloadAsync(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile resultFile, Windows.Storage.Streams.IInputStream requestBodyStream, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.DownloadOperation)* return_operation);
}

@uuid("a94a5847-348d-4a35-890e-8a1ef3798479")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloader2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CompletionGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup* return_value);
}

@uuid("26836c24-d89e-46f4-a29a-4f4d4f144155")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloaderFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithCompletionGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup completionGroup, Windows.Networking.BackgroundTransfer.BackgroundDownloader* return_backgroundDownloader);
}

@uuid("52a65a35-c64e-426c-9919-540d0d21a650")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloaderStaticMethods : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrentDownloadsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.DownloadOperation))* return_operation);
	deprecated("GetCurrentDownloadsAsync(group) may be altered or unavailable for releases after Windows 8.1. Instead, use GetCurrentDownloadsForTransferGroupAsync.")
	HRESULT abi_GetCurrentDownloadsForGroupAsync(HSTRING group, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.DownloadOperation))* return_operation);
}

@uuid("2faa1327-1ad4-4ca5-b2cd-08dbf0746afe")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloaderStaticMethods2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrentDownloadsForTransferGroupAsync(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup group, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.DownloadOperation))* return_operation);
}

@uuid("5d14e906-9266-4808-bd71-5925f2a3130a")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundDownloader")
interface IBackgroundDownloaderUserConsent : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("RequestUnconstrainedDownloadsAsync is deprecated and may not work on all platforms. For more info, see MSDN.")
	HRESULT abi_RequestUnconstrainedDownloadsAsync(Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.DownloadOperation) operations, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UnconstrainedTransferRequestResult)* return_operation);
}

@uuid("2a9da250-c769-458c-afe8-feb8d4d3b2ef")
interface IBackgroundTransferBase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Trigger(Windows.ApplicationModel.Background.IBackgroundTrigger* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT abi_Enable();
}

@uuid("7b6be286-6e47-5136-7fcb-fa4389f46f5b")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroupTriggerDetails")
interface IBackgroundTransferCompletionGroupTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Downloads(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.DownloadOperation)* return_value);
	HRESULT get_Uploads(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.UploadOperation)* return_value);
}

@uuid("e8e15657-d7d1-4ed8-838e-674ac217ace6")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart")
interface IBackgroundTransferContentPart : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetHeader(HSTRING headerName, HSTRING headerValue);
	HRESULT abi_SetText(HSTRING value);
	HRESULT abi_SetFile(Windows.Storage.IStorageFile value);
}

@uuid("90ef98a9-7a01-4a0b-9f80-a0b0bb370f8d")
interface IBackgroundTransferContentPartFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithName(HSTRING name, Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart* return_value);
	HRESULT abi_CreateWithNameAndFileName(HSTRING name, HSTRING fileName, Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart* return_value);
}

@uuid("aad33b04-1192-4bf4-8b68-39c5add244e2")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferError")
interface IBackgroundTransferErrorStaticMethods : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetStatus(INT32 hresult, Windows.Web.WebErrorStatus* return_status);
}

@uuid("d8c3e3e4-6459-4540-85eb-aaa1c8903677")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferGroup")
interface IBackgroundTransferGroup : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_TransferBehavior(Windows.Networking.BackgroundTransfer.BackgroundTransferBehavior* return_value);
	HRESULT set_TransferBehavior(Windows.Networking.BackgroundTransfer.BackgroundTransferBehavior value);
}

@uuid("02ec50b2-7d18-495b-aa22-32a97d45d3e2")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundTransferGroup")
interface IBackgroundTransferGroupStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateGroup(HSTRING name, Windows.Networking.BackgroundTransfer.BackgroundTransferGroup* return_value);
}

@uuid("ded06846-90ca-44fb-8fb1-124154c0d539")
interface IBackgroundTransferOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Priority(Windows.Networking.BackgroundTransfer.BackgroundTransferPriority* return_value);
	HRESULT set_Priority(Windows.Networking.BackgroundTransfer.BackgroundTransferPriority value);
}

@uuid("c595c9ae-cead-465b-8801-c55ac90a01ce")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateUpload(Windows.Foundation.Uri uri, Windows.Storage.IStorageFile sourceFile, Windows.Networking.BackgroundTransfer.UploadOperation* return_operation);
	HRESULT abi_CreateUploadFromStreamAsync(Windows.Foundation.Uri uri, Windows.Storage.Streams.IInputStream sourceStream, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation)* return_operation);
	HRESULT abi_CreateUploadWithFormDataAndAutoBoundaryAsync(Windows.Foundation.Uri uri, Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart) parts, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation)* return_operation);
	HRESULT abi_CreateUploadWithSubTypeAsync(Windows.Foundation.Uri uri, Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart) parts, HSTRING subType, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation)* return_operation);
	HRESULT abi_CreateUploadWithSubTypeAndBoundaryAsync(Windows.Foundation.Uri uri, Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart) parts, HSTRING subType, HSTRING boundary, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UploadOperation)* return_operation);
}

@uuid("8e0612ce-0c34-4463-807f-198a1b8bd4ad")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploader2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CompletionGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup* return_value);
}

@uuid("736203c7-10e7-48a0-ac3c-1ac71095ec57")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploaderFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithCompletionGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup completionGroup, Windows.Networking.BackgroundTransfer.BackgroundUploader* return_backgroundUploader);
}

@uuid("f2875cfb-9b05-4741-9121-740a83e247df")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploaderStaticMethods : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrentUploadsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.UploadOperation))* return_operation);
	deprecated("GetCurrentUploadsAsync(group) may be altered or unavailable for releases after Windows 8.1. Instead, use GetCurrentUploadsForTransferGroupAsync.")
	HRESULT abi_GetCurrentUploadsForGroupAsync(HSTRING group, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.UploadOperation))* return_operation);
}

@uuid("e919ac62-ea08-42f0-a2ac-07e467549080")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploaderStaticMethods2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrentUploadsForTransferGroupAsync(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup group, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.BackgroundTransfer.UploadOperation))* return_operation);
}

@uuid("3bb384cb-0760-461d-907f-5138f84d44c1")
@WinrtFactory("Windows.Networking.BackgroundTransfer.BackgroundUploader")
interface IBackgroundUploaderUserConsent : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("RequestUnconstrainedUploadsAsync is deprecated and may not work on all platforms. For more info, see MSDN.")
	HRESULT abi_RequestUnconstrainedUploadsAsync(Windows.Foundation.Collections.IIterable!(Windows.Networking.BackgroundTransfer.UploadOperation) operations, Windows.Foundation.IAsyncOperation!(Windows.Networking.BackgroundTransfer.UnconstrainedTransferRequestResult)* return_operation);
}

@uuid("a8d6f754-7dc1-4cd9-8810-2a6aa9417e11")
@WinrtFactory("Windows.Networking.BackgroundTransfer.ContentPrefetcher")
interface IContentPrefetcher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentUris(Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri)* return_value);
	HRESULT set_IndirectContentUri(Windows.Foundation.Uri value);
	HRESULT get_IndirectContentUri(Windows.Foundation.Uri* return_value);
}

@uuid("e361fd08-132a-4fde-a7cc-fcb0e66523af")
@WinrtFactory("Windows.Networking.BackgroundTransfer.ContentPrefetcher")
interface IContentPrefetcherTime : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LastSuccessfulPrefetchTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
}

@uuid("bd87ebb0-5714-4e09-ba68-bef73903b0d7")
@WinrtFactory("Windows.Networking.BackgroundTransfer.DownloadOperation")
interface IDownloadOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ResultFile(Windows.Storage.IStorageFile* return_value);
	HRESULT get_Progress(Windows.Networking.BackgroundTransfer.BackgroundDownloadProgress* return_value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.DownloadOperation*,Windows.Networking.BackgroundTransfer.DownloadOperation*)* return_operation);
	HRESULT abi_AttachAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.DownloadOperation*,Windows.Networking.BackgroundTransfer.DownloadOperation*)* return_operation);
	HRESULT abi_Pause();
	HRESULT abi_Resume();
}

@uuid("a3cced40-8f9c-4353-9cd4-290dee387c38")
@WinrtFactory("Windows.Networking.BackgroundTransfer.DownloadOperation")
interface IDownloadOperation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TransferGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup* return_value);
}

@uuid("f8bb9a12-f713-4792-8b68-d9d297f91d2e")
@WinrtFactory("Windows.Networking.BackgroundTransfer.ResponseInformation")
interface IResponseInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsResumable(bool* return_value);
	HRESULT get_ActualUri(Windows.Foundation.Uri* return_value);
	HRESULT get_StatusCode(UINT32* return_value);
	HRESULT get_Headers(Windows.Foundation.Collections.IMapView!(HSTRING,HSTRING)* return_value);
}

@uuid("4c24b81f-d944-4112-a98e-6a69522b7ebb")
@WinrtFactory("Windows.Networking.BackgroundTransfer.UnconstrainedTransferRequestResult")
interface IUnconstrainedTransferRequestResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("IsUnconstrained is deprecated and may not work on all platforms. For more info, see MSDN.")
	HRESULT get_IsUnconstrained(bool* return_value);
}

@uuid("3e5624e0-7389-434c-8b35-427fd36bbdae")
@WinrtFactory("Windows.Networking.BackgroundTransfer.UploadOperation")
interface IUploadOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SourceFile(Windows.Storage.IStorageFile* return_value);
	HRESULT get_Progress(Windows.Networking.BackgroundTransfer.BackgroundUploadProgress* return_value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.UploadOperation*,Windows.Networking.BackgroundTransfer.UploadOperation*)* return_operation);
	HRESULT abi_AttachAsync(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Networking.BackgroundTransfer.UploadOperation*,Windows.Networking.BackgroundTransfer.UploadOperation*)* return_operation);
}

@uuid("556189f2-2774-4df6-9fa5-209f2bfb12f7")
@WinrtFactory("Windows.Networking.BackgroundTransfer.UploadOperation")
interface IUploadOperation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TransferGroup(Windows.Networking.BackgroundTransfer.BackgroundTransferGroup* return_value);
}

interface BackgroundDownloader
{
}

interface BackgroundTransferCompletionGroup
{
}

interface BackgroundTransferCompletionGroupTriggerDetails
{
}

interface BackgroundTransferContentPart
{
}

interface BackgroundTransferGroup
{
}

interface BackgroundUploader
{
}

interface DownloadOperation
{
}

interface ResponseInformation
{
}

interface UnconstrainedTransferRequestResult
{
}

interface UploadOperation
{
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