module Windows.ApplicationModel.DataTransfer.ShareTarget;

import dwinrt;

@uuid("603e4308-f0be-4adc-acc9-8b27ab9cf556")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.ShareTarget.QuickLink")
interface IQuickLink : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Thumbnail(Windows.Storage.Streams.RandomAccessStreamReference* return_value);
	HRESULT set_Thumbnail(Windows.Storage.Streams.RandomAccessStreamReference value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_SupportedDataFormats(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_SupportedFileTypes(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("2246bab8-d0f8-41c1-a82a-4137db6504fb")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation")
interface IShareOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackageView* return_value);
	HRESULT get_QuickLinkId(HSTRING* return_value);
	HRESULT abi_RemoveThisQuickLink();
	HRESULT abi_ReportStarted();
	HRESULT abi_ReportDataRetrieved();
	HRESULT abi_ReportSubmittedBackgroundTask();
	HRESULT abi_ReportCompletedWithQuickLink(Windows.ApplicationModel.DataTransfer.ShareTarget.QuickLink quicklink);
	HRESULT abi_ReportCompleted();
	HRESULT abi_ReportError(HSTRING value);
}

@uuid("0ffb97c1-9778-4a09-8e5b-cb5e482d0555")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation")
interface IShareOperation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_DismissUI();
}

interface QuickLink
{
}

interface ShareOperation
{
}