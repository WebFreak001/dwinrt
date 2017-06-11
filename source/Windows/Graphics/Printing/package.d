module Windows.Graphics.Printing;

import dwinrt;

struct PrintPageDescription
{
	Windows.Foundation.Size PageSize;
	Windows.Foundation.Rect ImageableRect;
	UINT32 DpiX;
	UINT32 DpiY;
}

@uuid("6c109fa8-5cb6-4b3a-8663-f39cb02dc9b4")
interface PrintTaskSourceRequestedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Graphics.Printing.PrintTaskSourceRequestedArgs args);
}

@uuid("dedc0c30-f1eb-47df-aae6-ed5427511f01")
interface IPrintDocumentSource : IInspectable
{
}

@uuid("ff2a9694-8c99-44fd-ae4a-19d9aa9a0f0a")
@WinrtFactory("Windows.Graphics.Printing.PrintManager")
interface IPrintManager : IInspectable
{
extern(Windows):
	HRESULT add_PrintTaskRequested(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.PrintManager, Windows.Graphics.Printing.PrintTaskRequestedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_PrintTaskRequested(EventRegistrationToken eventCookie);
}

@uuid("58185dcd-e634-4654-84f0-e0152a8217ac")
@WinrtFactory("Windows.Graphics.Printing.PrintManager")
interface IPrintManagerStatic : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.Graphics.Printing.PrintManager* return_printingManager);
	HRESULT abi_ShowPrintUIAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("35a99955-e6ab-4139-9abd-b86a729b3598")
@WinrtFactory("Windows.Graphics.Printing.PrintManager")
interface IPrintManagerStatic2 : IInspectable
{
extern(Windows):
	HRESULT abi_IsSupported(bool* return_result);
}

@uuid("dd4be9c9-a6a1-4ada-930e-da872a4f23d3")
@WinrtFactory("Windows.Graphics.Printing.PrintPageInfo")
interface IPrintPageInfo : IInspectable
{
extern(Windows):
	HRESULT set_MediaSize(Windows.Graphics.Printing.PrintMediaSize value);
	HRESULT get_MediaSize(Windows.Graphics.Printing.PrintMediaSize* return_value);
	HRESULT set_PageSize(Windows.Foundation.Size value);
	HRESULT get_PageSize(Windows.Foundation.Size* return_value);
	HRESULT set_DpiX(UINT32 value);
	HRESULT get_DpiX(UINT32* return_value);
	HRESULT set_DpiY(UINT32 value);
	HRESULT get_DpiY(UINT32* return_value);
	HRESULT set_Orientation(Windows.Graphics.Printing.PrintOrientation value);
	HRESULT get_Orientation(Windows.Graphics.Printing.PrintOrientation* return_value);
}

@uuid("61d80247-6cf6-4fad-84e2-a5e82e2d4ceb")
@WinrtFactory("Windows.Graphics.Printing.PrintTask")
interface IPrintTask : IInspectable
{
extern(Windows):
	HRESULT get_Properties(Windows.ApplicationModel.DataTransfer.DataPackagePropertySet* return_value);
	HRESULT get_Source(Windows.Graphics.Printing.IPrintDocumentSource* return_value);
	HRESULT get_Options(Windows.Graphics.Printing.PrintTaskOptions* return_value);
	HRESULT add_Previewing(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.PrintTask, IInspectable) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_Previewing(EventRegistrationToken eventCookie);
	HRESULT add_Submitting(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.PrintTask, IInspectable) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_Submitting(EventRegistrationToken eventCookie);
	HRESULT add_Progressing(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.PrintTask, Windows.Graphics.Printing.PrintTaskProgressingEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_Progressing(EventRegistrationToken eventCookie);
	HRESULT add_Completed(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.PrintTask, Windows.Graphics.Printing.PrintTaskCompletedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_Completed(EventRegistrationToken eventCookie);
}

@uuid("36234877-3e53-4d9d-8f5e-316ac8dedae1")
@WinrtFactory("Windows.Graphics.Printing.PrintTask")
interface IPrintTask2 : IInspectable
{
extern(Windows):
	HRESULT set_IsPreviewEnabled(bool value);
	HRESULT get_IsPreviewEnabled(bool* return_value);
}

@uuid("5bcd34af-24e9-4c10-8d07-14c346ba3fce")
@WinrtFactory("Windows.Graphics.Printing.PrintTaskCompletedEventArgs")
interface IPrintTaskCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Completion(Windows.Graphics.Printing.PrintTaskCompletion* return_value);
}

@uuid("5a0a66bb-d289-41bb-96dd-57e28338ae3f")
@WinrtFactory("Windows.Graphics.Printing.PrintTaskOptions")
interface IPrintTaskOptions : IInspectable
{
extern(Windows):
	HRESULT set_Bordering(Windows.Graphics.Printing.PrintBordering value);
	HRESULT get_Bordering(Windows.Graphics.Printing.PrintBordering* return_value);
	HRESULT abi_GetPagePrintTicket(Windows.Graphics.Printing.PrintPageInfo printPageInfo, Windows.Storage.Streams.IRandomAccessStream* return_printTicket);
}

@uuid("1bdbb474-4ed1-41eb-be3c-72d18ed67337")
interface IPrintTaskOptionsCore : IInspectable
{
extern(Windows):
	HRESULT abi_GetPageDescription(UINT32 jobPageNumber, Windows.Graphics.Printing.PrintPageDescription* return_description);
}

@uuid("c1b71832-9e93-4e55-814b-3326a59efce1")
interface IPrintTaskOptionsCoreProperties : IInspectable
{
extern(Windows):
	HRESULT set_MediaSize(Windows.Graphics.Printing.PrintMediaSize value);
	HRESULT get_MediaSize(Windows.Graphics.Printing.PrintMediaSize* return_value);
	HRESULT set_MediaType(Windows.Graphics.Printing.PrintMediaType value);
	HRESULT get_MediaType(Windows.Graphics.Printing.PrintMediaType* return_value);
	HRESULT set_Orientation(Windows.Graphics.Printing.PrintOrientation value);
	HRESULT get_Orientation(Windows.Graphics.Printing.PrintOrientation* return_value);
	HRESULT set_PrintQuality(Windows.Graphics.Printing.PrintQuality value);
	HRESULT get_PrintQuality(Windows.Graphics.Printing.PrintQuality* return_value);
	HRESULT set_ColorMode(Windows.Graphics.Printing.PrintColorMode value);
	HRESULT get_ColorMode(Windows.Graphics.Printing.PrintColorMode* return_value);
	HRESULT set_Duplex(Windows.Graphics.Printing.PrintDuplex value);
	HRESULT get_Duplex(Windows.Graphics.Printing.PrintDuplex* return_value);
	HRESULT set_Collation(Windows.Graphics.Printing.PrintCollation value);
	HRESULT get_Collation(Windows.Graphics.Printing.PrintCollation* return_value);
	HRESULT set_Staple(Windows.Graphics.Printing.PrintStaple value);
	HRESULT get_Staple(Windows.Graphics.Printing.PrintStaple* return_value);
	HRESULT set_HolePunch(Windows.Graphics.Printing.PrintHolePunch value);
	HRESULT get_HolePunch(Windows.Graphics.Printing.PrintHolePunch* return_value);
	HRESULT set_Binding(Windows.Graphics.Printing.PrintBinding value);
	HRESULT get_Binding(Windows.Graphics.Printing.PrintBinding* return_value);
	HRESULT get_MinCopies(UINT32* return_value);
	HRESULT get_MaxCopies(UINT32* return_value);
	HRESULT set_NumberOfCopies(UINT32 value);
	HRESULT get_NumberOfCopies(UINT32* return_value);
}

@uuid("62e69e23-9a1e-4336-b74f-3cc7f4cff709")
interface IPrintTaskOptionsCoreUIConfiguration : IInspectable
{
extern(Windows):
	HRESULT get_DisplayedOptions(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("810cd3cb-b410-4282-a073-5ac378234174")
@WinrtFactory("Windows.Graphics.Printing.PrintTaskProgressingEventArgs")
interface IPrintTaskProgressingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DocumentPageCount(UINT32* return_value);
}

@uuid("6ff61e2e-2722-4240-a67c-f364849a17f3")
@WinrtFactory("Windows.Graphics.Printing.PrintTaskRequest")
interface IPrintTaskRequest : IInspectable
{
extern(Windows):
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
	HRESULT abi_CreatePrintTask(HSTRING title, Windows.Graphics.Printing.PrintTaskSourceRequestedHandler handler, Windows.Graphics.Printing.PrintTask* return_task);
	HRESULT abi_GetDeferral(Windows.Graphics.Printing.PrintTaskRequestedDeferral* return_deferral);
}

@uuid("cfefb3f0-ce3e-42c7-9496-64800c622c44")
@WinrtFactory("Windows.Graphics.Printing.PrintTaskRequestedDeferral")
interface IPrintTaskRequestedDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("d0aff924-a31b-454c-a7b6-5d0cc522fc16")
@WinrtFactory("Windows.Graphics.Printing.PrintTaskRequestedEventArgs")
interface IPrintTaskRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.Graphics.Printing.PrintTaskRequest* return_value);
}

@uuid("f9f067be-f456-41f0-9c98-5ce73e851410")
@WinrtFactory("Windows.Graphics.Printing.PrintTaskSourceRequestedArgs")
interface IPrintTaskSourceRequestedArgs : IInspectable
{
extern(Windows):
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
	HRESULT abi_SetSource(Windows.Graphics.Printing.IPrintDocumentSource source);
	HRESULT abi_GetDeferral(Windows.Graphics.Printing.PrintTaskSourceRequestedDeferral* return_deferral);
}

@uuid("4a1560d1-6992-4d9d-8555-4ca4563fb166")
@WinrtFactory("Windows.Graphics.Printing.PrintTaskSourceRequestedDeferral")
interface IPrintTaskSourceRequestedDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("295d70c0-c2cb-4b7d-b0ea-93095091a220")
@WinrtFactory("Windows.Graphics.Printing.PrintTask")
interface IPrintTaskTargetDeviceSupport : IInspectable
{
extern(Windows):
	HRESULT set_IsPrinterTargetEnabled(bool value);
	HRESULT get_IsPrinterTargetEnabled(bool* return_value);
	HRESULT set_Is3DManufacturingTargetEnabled(bool value);
	HRESULT get_Is3DManufacturingTargetEnabled(bool* return_value);
}

@uuid("b4483d26-0dd0-4cd4-baff-930fc7d6a574")
@WinrtFactory("Windows.Graphics.Printing.StandardPrintTaskOptions")
interface IStandardPrintTaskOptionsStatic : IInspectable
{
extern(Windows):
	HRESULT get_MediaSize(HSTRING* return_value);
	HRESULT get_MediaType(HSTRING* return_value);
	HRESULT get_Orientation(HSTRING* return_value);
	HRESULT get_PrintQuality(HSTRING* return_value);
	HRESULT get_ColorMode(HSTRING* return_value);
	HRESULT get_Duplex(HSTRING* return_value);
	HRESULT get_Collation(HSTRING* return_value);
	HRESULT get_Staple(HSTRING* return_value);
	HRESULT get_HolePunch(HSTRING* return_value);
	HRESULT get_Binding(HSTRING* return_value);
	HRESULT get_Copies(HSTRING* return_value);
	HRESULT get_NUp(HSTRING* return_value);
	HRESULT get_InputBin(HSTRING* return_value);
}

@uuid("3be38bf4-7a44-4269-9a52-81261e289ee9")
@WinrtFactory("Windows.Graphics.Printing.StandardPrintTaskOptions")
interface IStandardPrintTaskOptionsStatic2 : IInspectable
{
extern(Windows):
	HRESULT get_Bordering(HSTRING* return_value);
}

interface PrintManager : Windows.Graphics.Printing.IPrintManager
{
extern(Windows):
	final EventRegistrationToken OnPrintTaskRequested(void delegate(Windows.Graphics.Printing.PrintManager, Windows.Graphics.Printing.PrintTaskRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PrintTaskRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.PrintManager, Windows.Graphics.Printing.PrintTaskRequestedEventArgs), Windows.Graphics.Printing.PrintManager, Windows.Graphics.Printing.PrintTaskRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePrintTaskRequested(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_PrintTaskRequested(eventCookie));
	}
}

interface PrintPageInfo : Windows.Graphics.Printing.IPrintPageInfo
{
extern(Windows):
	final void MediaSize(Windows.Graphics.Printing.PrintMediaSize value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintPageInfo).set_MediaSize(value));
	}
	final Windows.Graphics.Printing.PrintMediaSize MediaSize()
	{
		Windows.Graphics.Printing.PrintMediaSize _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintPageInfo).get_MediaSize(&_ret));
		return _ret;
	}
	final void PageSize(Windows.Foundation.Size value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintPageInfo).set_PageSize(value));
	}
	final Windows.Foundation.Size PageSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintPageInfo).get_PageSize(&_ret));
		return _ret;
	}
	final void DpiX(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintPageInfo).set_DpiX(value));
	}
	final UINT32 DpiX()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintPageInfo).get_DpiX(&_ret));
		return _ret;
	}
	final void DpiY(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintPageInfo).set_DpiY(value));
	}
	final UINT32 DpiY()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintPageInfo).get_DpiY(&_ret));
		return _ret;
	}
	final void Orientation(Windows.Graphics.Printing.PrintOrientation value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintPageInfo).set_Orientation(value));
	}
	final Windows.Graphics.Printing.PrintOrientation Orientation()
	{
		Windows.Graphics.Printing.PrintOrientation _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintPageInfo).get_Orientation(&_ret));
		return _ret;
	}
}

interface PrintTask : Windows.Graphics.Printing.IPrintTask, Windows.Graphics.Printing.IPrintTaskTargetDeviceSupport, Windows.Graphics.Printing.IPrintTask2
{
extern(Windows):
	final Windows.ApplicationModel.DataTransfer.DataPackagePropertySet Properties()
	{
		Windows.ApplicationModel.DataTransfer.DataPackagePropertySet _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTask).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Graphics.Printing.IPrintDocumentSource Source()
	{
		Windows.Graphics.Printing.IPrintDocumentSource _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTask).get_Source(&_ret));
		return _ret;
	}
	final Windows.Graphics.Printing.PrintTaskOptions Options()
	{
		Windows.Graphics.Printing.PrintTaskOptions _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTask).get_Options(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnPreviewing(void delegate(Windows.Graphics.Printing.PrintTask, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Previewing(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.PrintTask, IInspectable), Windows.Graphics.Printing.PrintTask, IInspectable)(fn), &tok));
		return tok;
	}
	final void removePreviewing(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_Previewing(eventCookie));
	}
	final EventRegistrationToken OnSubmitting(void delegate(Windows.Graphics.Printing.PrintTask, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Submitting(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.PrintTask, IInspectable), Windows.Graphics.Printing.PrintTask, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSubmitting(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_Submitting(eventCookie));
	}
	final EventRegistrationToken OnProgressing(void delegate(Windows.Graphics.Printing.PrintTask, Windows.Graphics.Printing.PrintTaskProgressingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Progressing(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.PrintTask, Windows.Graphics.Printing.PrintTaskProgressingEventArgs), Windows.Graphics.Printing.PrintTask, Windows.Graphics.Printing.PrintTaskProgressingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeProgressing(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_Progressing(eventCookie));
	}
	final EventRegistrationToken OnCompleted(void delegate(Windows.Graphics.Printing.PrintTask, Windows.Graphics.Printing.PrintTaskCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Completed(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.PrintTask, Windows.Graphics.Printing.PrintTaskCompletedEventArgs), Windows.Graphics.Printing.PrintTask, Windows.Graphics.Printing.PrintTaskCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCompleted(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_Completed(eventCookie));
	}
	final void IsPrinterTargetEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskTargetDeviceSupport).set_IsPrinterTargetEnabled(value));
	}
	final bool IsPrinterTargetEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskTargetDeviceSupport).get_IsPrinterTargetEnabled(&_ret));
		return _ret;
	}
	final void Is3DManufacturingTargetEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskTargetDeviceSupport).set_Is3DManufacturingTargetEnabled(value));
	}
	final bool Is3DManufacturingTargetEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskTargetDeviceSupport).get_Is3DManufacturingTargetEnabled(&_ret));
		return _ret;
	}
	final void IsPreviewEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTask2).set_IsPreviewEnabled(value));
	}
	final bool IsPreviewEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTask2).get_IsPreviewEnabled(&_ret));
		return _ret;
	}
}

interface PrintTaskCompletedEventArgs : Windows.Graphics.Printing.IPrintTaskCompletedEventArgs
{
extern(Windows):
	final Windows.Graphics.Printing.PrintTaskCompletion Completion()
	{
		Windows.Graphics.Printing.PrintTaskCompletion _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskCompletedEventArgs).get_Completion(&_ret));
		return _ret;
	}
}

interface PrintTaskOptions : Windows.Graphics.Printing.IPrintTaskOptionsCore, Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties, Windows.Graphics.Printing.IPrintTaskOptionsCoreUIConfiguration, Windows.Graphics.Printing.IPrintTaskOptions
{
extern(Windows):
	final Windows.Graphics.Printing.PrintPageDescription GetPageDescription(UINT32 jobPageNumber)
	{
		Windows.Graphics.Printing.PrintPageDescription _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCore).abi_GetPageDescription(jobPageNumber, &_ret));
		return _ret;
	}
	final void MediaSize(Windows.Graphics.Printing.PrintMediaSize value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_MediaSize(value));
	}
	final Windows.Graphics.Printing.PrintMediaSize MediaSize()
	{
		Windows.Graphics.Printing.PrintMediaSize _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_MediaSize(&_ret));
		return _ret;
	}
	final void MediaType(Windows.Graphics.Printing.PrintMediaType value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_MediaType(value));
	}
	final Windows.Graphics.Printing.PrintMediaType MediaType()
	{
		Windows.Graphics.Printing.PrintMediaType _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_MediaType(&_ret));
		return _ret;
	}
	final void Orientation(Windows.Graphics.Printing.PrintOrientation value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_Orientation(value));
	}
	final Windows.Graphics.Printing.PrintOrientation Orientation()
	{
		Windows.Graphics.Printing.PrintOrientation _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_Orientation(&_ret));
		return _ret;
	}
	final void PrintQuality(Windows.Graphics.Printing.PrintQuality value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_PrintQuality(value));
	}
	final Windows.Graphics.Printing.PrintQuality PrintQuality()
	{
		Windows.Graphics.Printing.PrintQuality _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_PrintQuality(&_ret));
		return _ret;
	}
	final void ColorMode(Windows.Graphics.Printing.PrintColorMode value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_ColorMode(value));
	}
	final Windows.Graphics.Printing.PrintColorMode ColorMode()
	{
		Windows.Graphics.Printing.PrintColorMode _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_ColorMode(&_ret));
		return _ret;
	}
	final void Duplex(Windows.Graphics.Printing.PrintDuplex value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_Duplex(value));
	}
	final Windows.Graphics.Printing.PrintDuplex Duplex()
	{
		Windows.Graphics.Printing.PrintDuplex _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_Duplex(&_ret));
		return _ret;
	}
	final void Collation(Windows.Graphics.Printing.PrintCollation value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_Collation(value));
	}
	final Windows.Graphics.Printing.PrintCollation Collation()
	{
		Windows.Graphics.Printing.PrintCollation _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_Collation(&_ret));
		return _ret;
	}
	final void Staple(Windows.Graphics.Printing.PrintStaple value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_Staple(value));
	}
	final Windows.Graphics.Printing.PrintStaple Staple()
	{
		Windows.Graphics.Printing.PrintStaple _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_Staple(&_ret));
		return _ret;
	}
	final void HolePunch(Windows.Graphics.Printing.PrintHolePunch value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_HolePunch(value));
	}
	final Windows.Graphics.Printing.PrintHolePunch HolePunch()
	{
		Windows.Graphics.Printing.PrintHolePunch _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_HolePunch(&_ret));
		return _ret;
	}
	final void Binding(Windows.Graphics.Printing.PrintBinding value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_Binding(value));
	}
	final Windows.Graphics.Printing.PrintBinding Binding()
	{
		Windows.Graphics.Printing.PrintBinding _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_Binding(&_ret));
		return _ret;
	}
	final UINT32 MinCopies()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_MinCopies(&_ret));
		return _ret;
	}
	final UINT32 MaxCopies()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_MaxCopies(&_ret));
		return _ret;
	}
	final void NumberOfCopies(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).set_NumberOfCopies(value));
	}
	final UINT32 NumberOfCopies()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties).get_NumberOfCopies(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) DisplayedOptions()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptionsCoreUIConfiguration).get_DisplayedOptions(&_ret));
		return _ret;
	}
	final void Bordering(Windows.Graphics.Printing.PrintBordering value)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptions).set_Bordering(value));
	}
	final Windows.Graphics.Printing.PrintBordering Bordering()
	{
		Windows.Graphics.Printing.PrintBordering _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptions).get_Bordering(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStream GetPagePrintTicket(Windows.Graphics.Printing.PrintPageInfo printPageInfo)
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskOptions).abi_GetPagePrintTicket(printPageInfo, &_ret));
		return _ret;
	}
}

interface PrintTaskProgressingEventArgs : Windows.Graphics.Printing.IPrintTaskProgressingEventArgs
{
extern(Windows):
	final UINT32 DocumentPageCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskProgressingEventArgs).get_DocumentPageCount(&_ret));
		return _ret;
	}
}

interface PrintTaskRequest : Windows.Graphics.Printing.IPrintTaskRequest
{
extern(Windows):
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskRequest).get_Deadline(&_ret));
		return _ret;
	}
	final Windows.Graphics.Printing.PrintTask CreatePrintTask(HSTRING title, Windows.Graphics.Printing.PrintTaskSourceRequestedHandler handler)
	{
		Windows.Graphics.Printing.PrintTask _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskRequest).abi_CreatePrintTask(title, handler, &_ret));
		return _ret;
	}
	final Windows.Graphics.Printing.PrintTaskRequestedDeferral GetDeferral()
	{
		Windows.Graphics.Printing.PrintTaskRequestedDeferral _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface PrintTaskRequestedDeferral : Windows.Graphics.Printing.IPrintTaskRequestedDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskRequestedDeferral).abi_Complete());
	}
}

interface PrintTaskRequestedEventArgs : Windows.Graphics.Printing.IPrintTaskRequestedEventArgs
{
extern(Windows):
	final Windows.Graphics.Printing.PrintTaskRequest Request()
	{
		Windows.Graphics.Printing.PrintTaskRequest _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskRequestedEventArgs).get_Request(&_ret));
		return _ret;
	}
}

interface PrintTaskSourceRequestedArgs : Windows.Graphics.Printing.IPrintTaskSourceRequestedArgs
{
extern(Windows):
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskSourceRequestedArgs).get_Deadline(&_ret));
		return _ret;
	}
	final void SetSource(Windows.Graphics.Printing.IPrintDocumentSource source)
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskSourceRequestedArgs).abi_SetSource(source));
	}
	final Windows.Graphics.Printing.PrintTaskSourceRequestedDeferral GetDeferral()
	{
		Windows.Graphics.Printing.PrintTaskSourceRequestedDeferral _ret;
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskSourceRequestedArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface PrintTaskSourceRequestedDeferral : Windows.Graphics.Printing.IPrintTaskSourceRequestedDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.Graphics.Printing.IPrintTaskSourceRequestedDeferral).abi_Complete());
	}
}

interface StandardPrintTaskOptions
{
}

enum PrintBinding
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	None = 3,
	Bale = 4,
	BindBottom = 5,
	BindLeft = 6,
	BindRight = 7,
	BindTop = 8,
	Booklet = 9,
	EdgeStitchBottom = 10,
	EdgeStitchLeft = 11,
	EdgeStitchRight = 12,
	EdgeStitchTop = 13,
	Fold = 14,
	JogOffset = 15,
	Trim = 16
}

enum PrintBordering
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	Bordered = 3,
	Borderless = 4
}

enum PrintCollation
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	Collated = 3,
	Uncollated = 4
}

enum PrintColorMode
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	Color = 3,
	Grayscale = 4,
	Monochrome = 5
}

enum PrintDuplex
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	OneSided = 3,
	TwoSidedShortEdge = 4,
	TwoSidedLongEdge = 5
}

enum PrintHolePunch
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	None = 3,
	LeftEdge = 4,
	RightEdge = 5,
	TopEdge = 6,
	BottomEdge = 7
}

enum PrintMediaSize
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	BusinessCard = 3,
	CreditCard = 4,
	IsoA0 = 5,
	IsoA1 = 6,
	IsoA10 = 7,
	IsoA2 = 8,
	IsoA3 = 9,
	IsoA3Extra = 10,
	IsoA3Rotated = 11,
	IsoA4 = 12,
	IsoA4Extra = 13,
	IsoA4Rotated = 14,
	IsoA5 = 15,
	IsoA5Extra = 16,
	IsoA5Rotated = 17,
	IsoA6 = 18,
	IsoA6Rotated = 19,
	IsoA7 = 20,
	IsoA8 = 21,
	IsoA9 = 22,
	IsoB0 = 23,
	IsoB1 = 24,
	IsoB10 = 25,
	IsoB2 = 26,
	IsoB3 = 27,
	IsoB4 = 28,
	IsoB4Envelope = 29,
	IsoB5Envelope = 30,
	IsoB5Extra = 31,
	IsoB7 = 32,
	IsoB8 = 33,
	IsoB9 = 34,
	IsoC0 = 35,
	IsoC1 = 36,
	IsoC10 = 37,
	IsoC2 = 38,
	IsoC3 = 39,
	IsoC3Envelope = 40,
	IsoC4 = 41,
	IsoC4Envelope = 42,
	IsoC5 = 43,
	IsoC5Envelope = 44,
	IsoC6 = 45,
	IsoC6C5Envelope = 46,
	IsoC6Envelope = 47,
	IsoC7 = 48,
	IsoC8 = 49,
	IsoC9 = 50,
	IsoDLEnvelope = 51,
	IsoDLEnvelopeRotated = 52,
	IsoSRA3 = 53,
	Japan2LPhoto = 54,
	JapanChou3Envelope = 55,
	JapanChou3EnvelopeRotated = 56,
	JapanChou4Envelope = 57,
	JapanChou4EnvelopeRotated = 58,
	JapanDoubleHagakiPostcard = 59,
	JapanDoubleHagakiPostcardRotated = 60,
	JapanHagakiPostcard = 61,
	JapanHagakiPostcardRotated = 62,
	JapanKaku2Envelope = 63,
	JapanKaku2EnvelopeRotated = 64,
	JapanKaku3Envelope = 65,
	JapanKaku3EnvelopeRotated = 66,
	JapanLPhoto = 67,
	JapanQuadrupleHagakiPostcard = 68,
	JapanYou1Envelope = 69,
	JapanYou2Envelope = 70,
	JapanYou3Envelope = 71,
	JapanYou4Envelope = 72,
	JapanYou4EnvelopeRotated = 73,
	JapanYou6Envelope = 74,
	JapanYou6EnvelopeRotated = 75,
	JisB0 = 76,
	JisB1 = 77,
	JisB10 = 78,
	JisB2 = 79,
	JisB3 = 80,
	JisB4 = 81,
	JisB4Rotated = 82,
	JisB5 = 83,
	JisB5Rotated = 84,
	JisB6 = 85,
	JisB6Rotated = 86,
	JisB7 = 87,
	JisB8 = 88,
	JisB9 = 89,
	NorthAmerica10x11 = 90,
	NorthAmerica10x12 = 91,
	NorthAmerica10x14 = 92,
	NorthAmerica11x17 = 93,
	NorthAmerica14x17 = 94,
	NorthAmerica4x6 = 95,
	NorthAmerica4x8 = 96,
	NorthAmerica5x7 = 97,
	NorthAmerica8x10 = 98,
	NorthAmerica9x11 = 99,
	NorthAmericaArchitectureASheet = 100,
	NorthAmericaArchitectureBSheet = 101,
	NorthAmericaArchitectureCSheet = 102,
	NorthAmericaArchitectureDSheet = 103,
	NorthAmericaArchitectureESheet = 104,
	NorthAmericaCSheet = 105,
	NorthAmericaDSheet = 106,
	NorthAmericaESheet = 107,
	NorthAmericaExecutive = 108,
	NorthAmericaGermanLegalFanfold = 109,
	NorthAmericaGermanStandardFanfold = 110,
	NorthAmericaLegal = 111,
	NorthAmericaLegalExtra = 112,
	NorthAmericaLetter = 113,
	NorthAmericaLetterExtra = 114,
	NorthAmericaLetterPlus = 115,
	NorthAmericaLetterRotated = 116,
	NorthAmericaMonarchEnvelope = 117,
	NorthAmericaNote = 118,
	NorthAmericaNumber10Envelope = 119,
	NorthAmericaNumber10EnvelopeRotated = 120,
	NorthAmericaNumber11Envelope = 121,
	NorthAmericaNumber12Envelope = 122,
	NorthAmericaNumber14Envelope = 123,
	NorthAmericaNumber9Envelope = 124,
	NorthAmericaPersonalEnvelope = 125,
	NorthAmericaQuarto = 126,
	NorthAmericaStatement = 127,
	NorthAmericaSuperA = 128,
	NorthAmericaSuperB = 129,
	NorthAmericaTabloid = 130,
	NorthAmericaTabloidExtra = 131,
	OtherMetricA3Plus = 132,
	OtherMetricA4Plus = 133,
	OtherMetricFolio = 134,
	OtherMetricInviteEnvelope = 135,
	OtherMetricItalianEnvelope = 136,
	Prc10Envelope = 137,
	Prc10EnvelopeRotated = 138,
	Prc16K = 139,
	Prc16KRotated = 140,
	Prc1Envelope = 141,
	Prc1EnvelopeRotated = 142,
	Prc2Envelope = 143,
	Prc2EnvelopeRotated = 144,
	Prc32K = 145,
	Prc32KBig = 146,
	Prc32KRotated = 147,
	Prc3Envelope = 148,
	Prc3EnvelopeRotated = 149,
	Prc4Envelope = 150,
	Prc4EnvelopeRotated = 151,
	Prc5Envelope = 152,
	Prc5EnvelopeRotated = 153,
	Prc6Envelope = 154,
	Prc6EnvelopeRotated = 155,
	Prc7Envelope = 156,
	Prc7EnvelopeRotated = 157,
	Prc8Envelope = 158,
	Prc8EnvelopeRotated = 159,
	Prc9Envelope = 160,
	Prc9EnvelopeRotated = 161,
	Roll04Inch = 162,
	Roll06Inch = 163,
	Roll08Inch = 164,
	Roll12Inch = 165,
	Roll15Inch = 166,
	Roll18Inch = 167,
	Roll22Inch = 168,
	Roll24Inch = 169,
	Roll30Inch = 170,
	Roll36Inch = 171,
	Roll54Inch = 172
}

enum PrintMediaType
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	AutoSelect = 3,
	Archival = 4,
	BackPrintFilm = 5,
	Bond = 6,
	CardStock = 7,
	Continuous = 8,
	EnvelopePlain = 9,
	EnvelopeWindow = 10,
	Fabric = 11,
	HighResolution = 12,
	Label = 13,
	MultiLayerForm = 14,
	MultiPartForm = 15,
	Photographic = 16,
	PhotographicFilm = 17,
	PhotographicGlossy = 18,
	PhotographicHighGloss = 19,
	PhotographicMatte = 20,
	PhotographicSatin = 21,
	PhotographicSemiGloss = 22,
	Plain = 23,
	Screen = 24,
	ScreenPaged = 25,
	Stationery = 26,
	TabStockFull = 27,
	TabStockPreCut = 28,
	Transparency = 29,
	TShirtTransfer = 30,
	None = 31
}

enum PrintOrientation
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	Portrait = 3,
	PortraitFlipped = 4,
	Landscape = 5,
	LandscapeFlipped = 6
}

enum PrintQuality
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	Automatic = 3,
	Draft = 4,
	Fax = 5,
	High = 6,
	Normal = 7,
	Photographic = 8,
	Text = 9
}

enum PrintStaple
{
	Default = 0,
	NotAvailable = 1,
	PrinterCustom = 2,
	None = 3,
	StapleTopLeft = 4,
	StapleTopRight = 5,
	StapleBottomLeft = 6,
	StapleBottomRight = 7,
	StapleDualLeft = 8,
	StapleDualRight = 9,
	StapleDualTop = 10,
	StapleDualBottom = 11,
	SaddleStitch = 12
}

enum PrintTaskCompletion
{
	Abandoned = 0,
	Canceled = 1,
	Failed = 2,
	Submitted = 3
}