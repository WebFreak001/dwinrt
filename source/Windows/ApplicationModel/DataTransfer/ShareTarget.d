module Windows.ApplicationModel.DataTransfer.ShareTarget;

import dwinrt;

@uuid("603e4308-f0be-4adc-acc9-8b27ab9cf556")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.ShareTarget.QuickLink")
interface IQuickLink : IInspectable
{
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
extern(Windows):
	HRESULT abi_DismissUI();
}

interface QuickLink : Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink
{
extern(Windows):
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink)this.asInterface(uuid("603e4308-f0be-4adc-acc9-8b27ab9cf556"))).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink)this.asInterface(uuid("603e4308-f0be-4adc-acc9-8b27ab9cf556"))).set_Title(value));
	}
	final Windows.Storage.Streams.RandomAccessStreamReference Thumbnail()
	{
		Windows.Storage.Streams.RandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink)this.asInterface(uuid("603e4308-f0be-4adc-acc9-8b27ab9cf556"))).get_Thumbnail(&_ret));
		return _ret;
	}
	final void Thumbnail(Windows.Storage.Streams.RandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink)this.asInterface(uuid("603e4308-f0be-4adc-acc9-8b27ab9cf556"))).set_Thumbnail(value));
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink)this.asInterface(uuid("603e4308-f0be-4adc-acc9-8b27ab9cf556"))).get_Id(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink)this.asInterface(uuid("603e4308-f0be-4adc-acc9-8b27ab9cf556"))).set_Id(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) SupportedDataFormats()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink)this.asInterface(uuid("603e4308-f0be-4adc-acc9-8b27ab9cf556"))).get_SupportedDataFormats(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) SupportedFileTypes()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IQuickLink)this.asInterface(uuid("603e4308-f0be-4adc-acc9-8b27ab9cf556"))).get_SupportedFileTypes(&_ret));
		return _ret;
	}
	static QuickLink New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(QuickLink).abi_ActivateInstance(&ret));
		return cast(QuickLink) ret;
	}
}

interface ShareOperation : Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation, Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation2
{
extern(Windows):
	final Windows.ApplicationModel.DataTransfer.DataPackageView Data()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageView _ret;
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation)this.asInterface(uuid("2246bab8-d0f8-41c1-a82a-4137db6504fb"))).get_Data(&_ret));
		return _ret;
	}
	final HSTRING QuickLinkId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation)this.asInterface(uuid("2246bab8-d0f8-41c1-a82a-4137db6504fb"))).get_QuickLinkId(&_ret));
		return _ret;
	}
	final void RemoveThisQuickLink()
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation)this.asInterface(uuid("2246bab8-d0f8-41c1-a82a-4137db6504fb"))).abi_RemoveThisQuickLink());
	}
	final void ReportStarted()
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation)this.asInterface(uuid("2246bab8-d0f8-41c1-a82a-4137db6504fb"))).abi_ReportStarted());
	}
	final void ReportDataRetrieved()
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation)this.asInterface(uuid("2246bab8-d0f8-41c1-a82a-4137db6504fb"))).abi_ReportDataRetrieved());
	}
	final void ReportSubmittedBackgroundTask()
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation)this.asInterface(uuid("2246bab8-d0f8-41c1-a82a-4137db6504fb"))).abi_ReportSubmittedBackgroundTask());
	}
	final void ReportCompletedWithQuickLink(Windows.ApplicationModel.DataTransfer.ShareTarget.QuickLink quicklink)
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation)this.asInterface(uuid("2246bab8-d0f8-41c1-a82a-4137db6504fb"))).abi_ReportCompletedWithQuickLink(quicklink));
	}
	alias ReportCompleted = ReportCompletedWithQuickLink;
	final void ReportCompleted()
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation)this.asInterface(uuid("2246bab8-d0f8-41c1-a82a-4137db6504fb"))).abi_ReportCompleted());
	}
	final void ReportError(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation)this.asInterface(uuid("2246bab8-d0f8-41c1-a82a-4137db6504fb"))).abi_ReportError(value));
	}
	final void DismissUI()
	{
		Debug.OK((cast(Windows.ApplicationModel.DataTransfer.ShareTarget.IShareOperation2)this.asInterface(uuid("0ffb97c1-9778-4a09-8e5b-cb5e482d0555"))).abi_DismissUI());
	}
}