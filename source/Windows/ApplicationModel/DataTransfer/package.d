module Windows.ApplicationModel.DataTransfer;

import dwinrt;

@uuid("e7ecd720-f2f4-4a2d-920e-170a2f482a27")
interface DataProviderHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.ApplicationModel.DataTransfer.DataProviderRequest request);
}

@uuid("e7f9d9ba-e1ba-4e4d-bd65-d43845d3212f")
interface ShareProviderHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.ApplicationModel.DataTransfer.ShareProviderOperation operation);
}

@uuid("c627e291-34e2-4963-8eed-93cbb0ea3d70")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.Clipboard")
interface IClipboardStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetContent(Windows.ApplicationModel.DataTransfer.DataPackageView* return_content);
	HRESULT abi_SetContent(Windows.ApplicationModel.DataTransfer.DataPackage content);
	HRESULT abi_Flush();
	HRESULT abi_Clear();
	HRESULT add_ContentChanged(Windows.Foundation.EventHandler!(IInspectable) changeHandler, EventRegistrationToken* return_token);
	HRESULT remove_ContentChanged(EventRegistrationToken token);
}

@uuid("61ebf5c7-efea-4346-9554-981d7e198ffe")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackage")
interface IDataPackage : IInspectable
{
extern(Windows):
	HRESULT abi_GetView(Windows.ApplicationModel.DataTransfer.DataPackageView* return_value);
	HRESULT get_Properties(Windows.ApplicationModel.DataTransfer.DataPackagePropertySet* return_value);
	HRESULT get_RequestedOperation(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
	HRESULT set_RequestedOperation(Windows.ApplicationModel.DataTransfer.DataPackageOperation value);
	HRESULT add_OperationCompleted(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.DataTransfer.DataPackage, Windows.ApplicationModel.DataTransfer.OperationCompletedEventArgs) handler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_OperationCompleted(EventRegistrationToken eventCookie);
	HRESULT add_Destroyed(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.DataTransfer.DataPackage, IInspectable) handler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_Destroyed(EventRegistrationToken eventCookie);
	HRESULT abi_SetData(HSTRING formatId, IInspectable value);
	HRESULT abi_SetDataProvider(HSTRING formatId, Windows.ApplicationModel.DataTransfer.DataProviderHandler delayRenderer);
	HRESULT abi_SetText(HSTRING value);
	deprecated("SetUri may be altered or unavailable for releases after Windows Phone 'OSVersion' (TBD). Instead, use SetWebLink or SetApplicationLink.")
	HRESULT abi_SetUri(Windows.Foundation.Uri value);
	HRESULT abi_SetHtmlFormat(HSTRING value);
	HRESULT get_ResourceMap(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Storage.Streams.RandomAccessStreamReference)* return_value);
	HRESULT abi_SetRtf(HSTRING value);
	HRESULT abi_SetBitmap(Windows.Storage.Streams.RandomAccessStreamReference value);
	HRESULT abi_SetStorageItemsReadOnly(Windows.Foundation.Collections.IIterable!(Windows.Storage.IStorageItem) value);
	HRESULT abi_SetStorageItems(Windows.Foundation.Collections.IIterable!(Windows.Storage.IStorageItem) value, bool readOnly);
}

@uuid("041c1fe9-2409-45e1-a538-4c53eeee04a7")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackage")
interface IDataPackage2 : IInspectable
{
extern(Windows):
	HRESULT abi_SetApplicationLink(Windows.Foundation.Uri value);
	HRESULT abi_SetWebLink(Windows.Foundation.Uri value);
}

@uuid("88f31f5d-787b-4d32-965a-a9838105a056")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackage")
interface IDataPackage3 : IInspectable
{
extern(Windows):
	HRESULT add_ShareCompleted(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.DataTransfer.DataPackage, Windows.ApplicationModel.DataTransfer.ShareCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ShareCompleted(EventRegistrationToken token);
}

@uuid("cd1c93eb-4c4c-443a-a8d3-f5c241e91689")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackagePropertySet")
interface IDataPackagePropertySet : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_FileTypes(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_ApplicationName(HSTRING* return_value);
	HRESULT set_ApplicationName(HSTRING value);
	HRESULT get_ApplicationListingUri(Windows.Foundation.Uri* return_value);
	HRESULT set_ApplicationListingUri(Windows.Foundation.Uri value);
}

@uuid("eb505d4a-9800-46aa-b181-7b6f0f2b919a")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackagePropertySet")
interface IDataPackagePropertySet2 : IInspectable
{
extern(Windows):
	HRESULT get_ContentSourceWebLink(Windows.Foundation.Uri* return_value);
	HRESULT set_ContentSourceWebLink(Windows.Foundation.Uri value);
	HRESULT get_ContentSourceApplicationLink(Windows.Foundation.Uri* return_value);
	HRESULT set_ContentSourceApplicationLink(Windows.Foundation.Uri value);
	HRESULT get_PackageFamilyName(HSTRING* return_value);
	HRESULT set_PackageFamilyName(HSTRING value);
	HRESULT get_Square30x30Logo(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Square30x30Logo(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_LogoBackgroundColor(Windows.UI.Color* return_value);
	HRESULT set_LogoBackgroundColor(Windows.UI.Color value);
}

@uuid("9e87fd9b-5205-401b-874a-455653bd39e8")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackagePropertySet")
interface IDataPackagePropertySet3 : IInspectable
{
extern(Windows):
	HRESULT get_EnterpriseId(HSTRING* return_value);
	HRESULT set_EnterpriseId(HSTRING value);
}

@uuid("b94cec01-0c1a-4c57-be55-75d01289735d")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView")
interface IDataPackagePropertySetView : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.RandomAccessStreamReference* return_value);
	HRESULT get_FileTypes(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_ApplicationName(HSTRING* return_value);
	HRESULT get_ApplicationListingUri(Windows.Foundation.Uri* return_value);
}

@uuid("6054509b-8ebe-4feb-9c1e-75e69de54b84")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView")
interface IDataPackagePropertySetView2 : IInspectable
{
extern(Windows):
	HRESULT get_PackageFamilyName(HSTRING* return_value);
	HRESULT get_ContentSourceWebLink(Windows.Foundation.Uri* return_value);
	HRESULT get_ContentSourceApplicationLink(Windows.Foundation.Uri* return_value);
	HRESULT get_Square30x30Logo(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT get_LogoBackgroundColor(Windows.UI.Color* return_value);
}

@uuid("db764ce5-d174-495c-84fc-1a51f6ab45d7")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView")
interface IDataPackagePropertySetView3 : IInspectable
{
extern(Windows):
	HRESULT get_EnterpriseId(HSTRING* return_value);
}

@uuid("7b840471-5900-4d85-a90b-10cb85fe3552")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackageView")
interface IDataPackageView : IInspectable
{
extern(Windows):
	HRESULT get_Properties(Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView* return_value);
	HRESULT get_RequestedOperation(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
	HRESULT abi_ReportOperationCompleted(Windows.ApplicationModel.DataTransfer.DataPackageOperation value);
	HRESULT get_AvailableFormats(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_formatIds);
	HRESULT abi_Contains(HSTRING formatId, bool* return_value);
	HRESULT abi_GetDataAsync(HSTRING formatId, Windows.Foundation.IAsyncOperation!(IInspectable)* return_operation);
	HRESULT abi_GetTextAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetCustomTextAsync(HSTRING formatId, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	deprecated("GetUriAsync may be altered or unavailable for releases after Windows 8.1. Instead, use GetWebLinkAsync or GetApplicationLinkAsync.")
	HRESULT abi_GetUriAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Uri)* return_operation);
	HRESULT abi_GetHtmlFormatAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetResourceMapAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Storage.Streams.RandomAccessStreamReference))* return_operation);
	HRESULT abi_GetRtfAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetBitmapAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.RandomAccessStreamReference)* return_operation);
	HRESULT abi_GetStorageItemsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Storage.IStorageItem))* return_operation);
}

@uuid("40ecba95-2450-4c1d-b6b4-ed45463dee9c")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackageView")
interface IDataPackageView2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetApplicationLinkAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Uri)* return_operation);
	HRESULT abi_GetWebLinkAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Uri)* return_operation);
}

@uuid("d37771a8-ddad-4288-8428-d1cae394128b")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackageView")
interface IDataPackageView3 : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_operation);
	HRESULT abi_RequestAccessWithEnterpriseIdAsync(HSTRING enterpriseId, Windows.Foundation.IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)* return_operation);
	HRESULT abi_UnlockAndAssumeEnterpriseIdentity(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult* return_result);
}

@uuid("dfe96f1f-e042-4433-a09f-26d6ffda8b85")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataPackageView")
interface IDataPackageView4 : IInspectable
{
extern(Windows):
	HRESULT abi_SetAcceptedFormatId(HSTRING formatId);
}

@uuid("c2cf2373-2d26-43d9-b69d-dcb86d03f6da")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataProviderDeferral")
interface IDataProviderDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("ebbc7157-d3c8-47da-acde-f82388d5f716")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataProviderRequest")
interface IDataProviderRequest : IInspectable
{
extern(Windows):
	HRESULT get_FormatId(HSTRING* return_value);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
	HRESULT abi_GetDeferral(Windows.ApplicationModel.DataTransfer.DataProviderDeferral* return_value);
	HRESULT abi_SetData(IInspectable value);
}

@uuid("4341ae3b-fc12-4e53-8c02-ac714c415a27")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataRequest")
interface IDataRequest : IInspectable
{
extern(Windows):
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackage* return_value);
	HRESULT set_Data(Windows.ApplicationModel.DataTransfer.DataPackage value);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
	HRESULT abi_FailWithDisplayText(HSTRING value);
	HRESULT abi_GetDeferral(Windows.ApplicationModel.DataTransfer.DataRequestDeferral* return_value);
}

@uuid("6dc4b89f-0386-4263-87c1-ed7dce30890e")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataRequestDeferral")
interface IDataRequestDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("cb8ba807-6ac5-43c9-8ac5-9ba232163182")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataRequestedEventArgs")
interface IDataRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.DataTransfer.DataRequest* return_value);
}

@uuid("a5caee9b-8708-49d1-8d36-67d25a8da00c")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataTransferManager")
interface IDataTransferManager : IInspectable
{
extern(Windows):
	HRESULT add_DataRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.DataTransfer.DataTransferManager, Windows.ApplicationModel.DataTransfer.DataRequestedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_DataRequested(EventRegistrationToken eventCookie);
	HRESULT add_TargetApplicationChosen(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.DataTransfer.DataTransferManager, Windows.ApplicationModel.DataTransfer.TargetApplicationChosenEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_TargetApplicationChosen(EventRegistrationToken eventCookie);
}

@uuid("30ae7d71-8ba8-4c02-8e3f-ddb23b388715")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataTransferManager")
interface IDataTransferManager2 : IInspectable
{
extern(Windows):
	HRESULT add_ShareProvidersRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.DataTransfer.DataTransferManager, Windows.ApplicationModel.DataTransfer.ShareProvidersRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ShareProvidersRequested(EventRegistrationToken token);
}

@uuid("a9da01aa-e00e-4cfe-aa44-2dd932dca3d8")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataTransferManager")
interface IDataTransferManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ShowShareUI();
	HRESULT abi_GetForCurrentView(Windows.ApplicationModel.DataTransfer.DataTransferManager* return_value);
}

@uuid("c54ec2ec-9f97-4d63-9868-395e271ad8f5")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DataTransferManager")
interface IDataTransferManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_IsSupported(bool* return_value);
}

@uuid("e22e7749-dd70-446f-aefc-61cee59f655e")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.HtmlFormatHelper")
interface IHtmlFormatHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetStaticFragment(HSTRING htmlFormat, HSTRING* return_htmlFragment);
	HRESULT abi_CreateHtmlFormat(HSTRING htmlFragment, HSTRING* return_htmlFormat);
}

@uuid("e7af329d-051d-4fab-b1a9-47fd77f70a41")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.OperationCompletedEventArgs")
interface IOperationCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Operation(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
}

@uuid("858fa073-1e19-4105-b2f7-c8478808d562")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.OperationCompletedEventArgs")
interface IOperationCompletedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_AcceptedFormatId(HSTRING* return_value);
}

@uuid("4574c442-f913-4f60-9df7-cc4060ab1916")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.ShareCompletedEventArgs")
interface IShareCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ShareTarget(Windows.ApplicationModel.DataTransfer.ShareTargetInfo* return_value);
}

@uuid("2fabe026-443e-4cda-af25-8d81070efd80")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.ShareProvider")
interface IShareProvider : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_DisplayIcon(Windows.Storage.Streams.RandomAccessStreamReference* return_value);
	HRESULT get_BackgroundColor(Windows.UI.Color* return_value);
	HRESULT get_Tag(IInspectable* return_value);
	HRESULT set_Tag(IInspectable value);
}

@uuid("172a174c-e79e-4f6d-b07d-128f469e0296")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.ShareProvider")
interface IShareProviderFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING title, Windows.Storage.Streams.RandomAccessStreamReference displayIcon, Windows.UI.Color backgroundColor, Windows.ApplicationModel.DataTransfer.ShareProviderHandler handler, Windows.ApplicationModel.DataTransfer.ShareProvider* return_result);
}

@uuid("19cef937-d435-4179-b6af-14e0492b69f6")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.ShareProviderOperation")
interface IShareProviderOperation : IInspectable
{
extern(Windows):
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackageView* return_value);
	HRESULT get_Provider(Windows.ApplicationModel.DataTransfer.ShareProvider* return_value);
	HRESULT abi_ReportCompleted();
}

@uuid("f888f356-a3f8-4fce-85e4-8826e63be799")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.ShareProvidersRequestedEventArgs")
interface IShareProvidersRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Providers(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.DataTransfer.ShareProvider)* return_value);
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackageView* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("385be607-c6e8-4114-b294-28f3bb6f9904")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.ShareTargetInfo")
interface IShareTargetInfo : IInspectable
{
extern(Windows):
	HRESULT get_AppUserModelId(HSTRING* return_value);
	HRESULT get_ShareProvider(Windows.ApplicationModel.DataTransfer.ShareProvider* return_value);
}

@uuid("c6132ada-34b1-4849-bd5f-d09fee3158c5")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.SharedStorageAccessManager")
interface ISharedStorageAccessManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_AddFile(Windows.Storage.IStorageFile file, HSTRING* return_outToken);
	HRESULT abi_RedeemTokenForFileAsync(HSTRING token, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_RemoveFile(HSTRING token);
}

@uuid("7ed681a1-a880-40c9-b4ed-0bee1e15f549")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.StandardDataFormats")
interface IStandardDataFormatsStatics : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
	deprecated("Uri may be altered or unavailable for releases after Windows Phone 'OSVersion' (TBD). Instead, use WebLink or ApplicationLink.")
	HRESULT get_Uri(HSTRING* return_value);
	HRESULT get_Html(HSTRING* return_value);
	HRESULT get_Rtf(HSTRING* return_value);
	HRESULT get_Bitmap(HSTRING* return_value);
	HRESULT get_StorageItems(HSTRING* return_value);
}

@uuid("42a254f4-9d76-42e8-861b-47c25dd0cf71")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.StandardDataFormats")
interface IStandardDataFormatsStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_WebLink(HSTRING* return_value);
	HRESULT get_ApplicationLink(HSTRING* return_value);
}

@uuid("ca6fb8ac-2987-4ee3-9c54-d8afbcb86c1d")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.TargetApplicationChosenEventArgs")
interface ITargetApplicationChosenEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ApplicationName(HSTRING* return_value);
}

interface Clipboard
{
}

interface DataPackage : Windows.ApplicationModel.DataTransfer.IDataPackage, Windows.ApplicationModel.DataTransfer.IDataPackage2, Windows.ApplicationModel.DataTransfer.IDataPackage3
{
}

interface DataPackagePropertySet : Windows.ApplicationModel.DataTransfer.IDataPackagePropertySet, Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)), Windows.ApplicationModel.DataTransfer.IDataPackagePropertySet2, Windows.ApplicationModel.DataTransfer.IDataPackagePropertySet3
{
}

interface DataPackagePropertySetView : Windows.ApplicationModel.DataTransfer.IDataPackagePropertySetView, Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)), Windows.ApplicationModel.DataTransfer.IDataPackagePropertySetView2, Windows.ApplicationModel.DataTransfer.IDataPackagePropertySetView3
{
}

interface DataPackageView : Windows.ApplicationModel.DataTransfer.IDataPackageView, Windows.ApplicationModel.DataTransfer.IDataPackageView2, Windows.ApplicationModel.DataTransfer.IDataPackageView3, Windows.ApplicationModel.DataTransfer.IDataPackageView4
{
}

interface DataProviderDeferral : Windows.ApplicationModel.DataTransfer.IDataProviderDeferral
{
}

interface DataProviderRequest : Windows.ApplicationModel.DataTransfer.IDataProviderRequest
{
}

interface DataRequest : Windows.ApplicationModel.DataTransfer.IDataRequest
{
}

interface DataRequestDeferral : Windows.ApplicationModel.DataTransfer.IDataRequestDeferral
{
}

interface DataRequestedEventArgs : Windows.ApplicationModel.DataTransfer.IDataRequestedEventArgs
{
}

interface DataTransferManager : Windows.ApplicationModel.DataTransfer.IDataTransferManager, Windows.ApplicationModel.DataTransfer.IDataTransferManager2
{
}

interface HtmlFormatHelper
{
}

interface OperationCompletedEventArgs : Windows.ApplicationModel.DataTransfer.IOperationCompletedEventArgs, Windows.ApplicationModel.DataTransfer.IOperationCompletedEventArgs2
{
}

interface ShareCompletedEventArgs : Windows.ApplicationModel.DataTransfer.IShareCompletedEventArgs
{
}

interface ShareProvider : Windows.ApplicationModel.DataTransfer.IShareProvider
{
}

interface ShareProviderOperation : Windows.ApplicationModel.DataTransfer.IShareProviderOperation
{
}

interface ShareProvidersRequestedEventArgs : Windows.ApplicationModel.DataTransfer.IShareProvidersRequestedEventArgs
{
}

interface ShareTargetInfo : Windows.ApplicationModel.DataTransfer.IShareTargetInfo
{
}

interface SharedStorageAccessManager
{
}

interface StandardDataFormats
{
}

interface TargetApplicationChosenEventArgs : Windows.ApplicationModel.DataTransfer.ITargetApplicationChosenEventArgs
{
}

@bitflags
enum DataPackageOperation
{
	None = 0x0,
	Copy = 0x1,
	Move = 0x2,
	Link = 0x4
}