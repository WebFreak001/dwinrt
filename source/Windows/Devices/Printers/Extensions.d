module Windows.Devices.Printers.Extensions;

import dwinrt;

@uuid("c56f74bd-3669-4a66-ab42-c8151930cd34")
@WinrtFactory("Windows.Devices.Printers.Extensions.Print3DWorkflow")
interface IPrint3DWorkflow : IInspectable
{
extern(Windows):
	HRESULT get_DeviceID(HSTRING* return_value);
	HRESULT abi_GetPrintModelPackage(IInspectable* return_printModelPackage);
	HRESULT get_IsPrintReady(bool* return_value);
	HRESULT set_IsPrintReady(bool value);
	HRESULT add_PrintRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Printers.Extensions.Print3DWorkflow, Windows.Devices.Printers.Extensions.Print3DWorkflowPrintRequestedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_PrintRequested(EventRegistrationToken eventCookie);
}

@uuid("a2a6c54f-8ac1-4918-9741-e34f3004239e")
@WinrtFactory("Windows.Devices.Printers.Extensions.Print3DWorkflow")
interface IPrint3DWorkflow2 : IInspectable
{
extern(Windows):
	HRESULT add_PrinterChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Printers.Extensions.Print3DWorkflow, Windows.Devices.Printers.Extensions.Print3DWorkflowPrinterChangedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_PrinterChanged(EventRegistrationToken eventCookie);
}

@uuid("19f8c858-5ac8-4b55-8a5f-e61567dafb4d")
@WinrtFactory("Windows.Devices.Printers.Extensions.Print3DWorkflowPrintRequestedEventArgs")
interface IPrint3DWorkflowPrintRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Printers.Extensions.Print3DWorkflowStatus* return_value);
	HRESULT abi_SetExtendedStatus(Windows.Devices.Printers.Extensions.Print3DWorkflowDetail value);
	HRESULT abi_SetSource(IInspectable source);
	HRESULT abi_SetSourceChanged(bool value);
}

@uuid("45226402-95fc-4847-93b3-134dbf5c60f7")
@WinrtFactory("Windows.Devices.Printers.Extensions.Print3DWorkflowPrinterChangedEventArgs")
interface IPrint3DWorkflowPrinterChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_NewDeviceId(HSTRING* return_value);
}

@uuid("e70d9fc1-ff79-4aa4-8c9b-0c93aedfde8a")
@WinrtFactory("Windows.Devices.Printers.Extensions.PrintExtensionContext")
interface IPrintExtensionContextStatic : IInspectable
{
extern(Windows):
	HRESULT abi_FromDeviceId(HSTRING deviceId, IInspectable* return_context);
}

@uuid("e00e4c8a-4828-4da1-8bb8-8672df8515e7")
@WinrtFactory("Windows.Devices.Printers.Extensions.PrintNotificationEventDetails")
interface IPrintNotificationEventDetails : IInspectable
{
extern(Windows):
	HRESULT get_PrinterName(HSTRING* return_value);
	HRESULT get_EventData(HSTRING* return_value);
	HRESULT set_EventData(HSTRING value);
}

@uuid("e3c22451-3aa4-4885-9240-311f5f8fbe9d")
@WinrtFactory("Windows.Devices.Printers.Extensions.PrintTaskConfiguration")
interface IPrintTaskConfiguration : IInspectable
{
extern(Windows):
	HRESULT get_PrinterExtensionContext(IInspectable* return_context);
	HRESULT add_SaveRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Printers.Extensions.PrintTaskConfiguration, Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequestedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_SaveRequested(EventRegistrationToken eventCookie);
}

@uuid("eeaf2fcb-621e-4b62-ac77-b281cce08d60")
@WinrtFactory("Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequest")
interface IPrintTaskConfigurationSaveRequest : IInspectable
{
extern(Windows):
	HRESULT abi_Cancel();
	HRESULT abi_Save(IInspectable printerExtensionContext);
	HRESULT abi_GetDeferral(Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequestedDeferral* return_deferral);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
}

@uuid("e959d568-f729-44a4-871d-bd0628696a33")
@WinrtFactory("Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequestedDeferral")
interface IPrintTaskConfigurationSaveRequestedDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("e06c2879-0d61-4938-91d0-96a45bee8479")
@WinrtFactory("Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequestedEventArgs")
interface IPrintTaskConfigurationSaveRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequest* return_context);
}

interface Print3DWorkflow : Windows.Devices.Printers.Extensions.IPrint3DWorkflow, Windows.Devices.Printers.Extensions.IPrint3DWorkflow2
{
extern(Windows):
	final HSTRING DeviceID()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrint3DWorkflow).get_DeviceID(&_ret));
		return _ret;
	}
	final IInspectable GetPrintModelPackage()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrint3DWorkflow).abi_GetPrintModelPackage(&_ret));
		return _ret;
	}
	final bool IsPrintReady()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrint3DWorkflow).get_IsPrintReady(&_ret));
		return _ret;
	}
	final void IsPrintReady(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrint3DWorkflow).set_IsPrintReady(value));
	}
	final void removePrintRequested(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_PrintRequested(eventCookie));
	}
	final void removePrinterChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_PrinterChanged(eventCookie));
	}
}

interface Print3DWorkflowPrintRequestedEventArgs : Windows.Devices.Printers.Extensions.IPrint3DWorkflowPrintRequestedEventArgs
{
extern(Windows):
	final Windows.Devices.Printers.Extensions.Print3DWorkflowStatus Status()
	{
		Windows.Devices.Printers.Extensions.Print3DWorkflowStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrint3DWorkflowPrintRequestedEventArgs).get_Status(&_ret));
		return _ret;
	}
	final void SetExtendedStatus(Windows.Devices.Printers.Extensions.Print3DWorkflowDetail value)
	{
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrint3DWorkflowPrintRequestedEventArgs).abi_SetExtendedStatus(value));
	}
	final void SetSource(IInspectable source)
	{
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrint3DWorkflowPrintRequestedEventArgs).abi_SetSource(source));
	}
	final void SetSourceChanged(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrint3DWorkflowPrintRequestedEventArgs).abi_SetSourceChanged(value));
	}
}

interface Print3DWorkflowPrinterChangedEventArgs : Windows.Devices.Printers.Extensions.IPrint3DWorkflowPrinterChangedEventArgs
{
extern(Windows):
	final HSTRING NewDeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrint3DWorkflowPrinterChangedEventArgs).get_NewDeviceId(&_ret));
		return _ret;
	}
}

interface PrintExtensionContext
{
}

interface PrintNotificationEventDetails : Windows.Devices.Printers.Extensions.IPrintNotificationEventDetails
{
extern(Windows):
	final HSTRING PrinterName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrintNotificationEventDetails).get_PrinterName(&_ret));
		return _ret;
	}
	final HSTRING EventData()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrintNotificationEventDetails).get_EventData(&_ret));
		return _ret;
	}
	final void EventData(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrintNotificationEventDetails).set_EventData(value));
	}
}

interface PrintTaskConfiguration : Windows.Devices.Printers.Extensions.IPrintTaskConfiguration
{
extern(Windows):
	final IInspectable PrinterExtensionContext()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrintTaskConfiguration).get_PrinterExtensionContext(&_ret));
		return _ret;
	}
	final void removeSaveRequested(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_SaveRequested(eventCookie));
	}
}

interface PrintTaskConfigurationSaveRequest : Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequest
{
extern(Windows):
	final void Cancel()
	{
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequest).abi_Cancel());
	}
	final void Save(IInspectable printerExtensionContext)
	{
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequest).abi_Save(printerExtensionContext));
	}
	final Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequestedDeferral GetDeferral()
	{
		Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequestedDeferral _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequest).get_Deadline(&_ret));
		return _ret;
	}
}

interface PrintTaskConfigurationSaveRequestedDeferral : Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequestedDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequestedDeferral).abi_Complete());
	}
}

interface PrintTaskConfigurationSaveRequestedEventArgs : Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequestedEventArgs
{
extern(Windows):
	final Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequest Request()
	{
		Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequest _ret;
		Debug.OK(this.as!(Windows.Devices.Printers.Extensions.IPrintTaskConfigurationSaveRequestedEventArgs).get_Request(&_ret));
		return _ret;
	}
}

enum Print3DWorkflowDetail
{
	Unknown = 0,
	ModelExceedsPrintBed = 1,
	UploadFailed = 2,
	InvalidMaterialSelection = 3,
	InvalidModel = 4,
	ModelNotManifold = 5,
	InvalidPrintTicket = 6
}

enum Print3DWorkflowStatus
{
	Abandoned = 0,
	Canceled = 1,
	Failed = 2,
	Slicing = 3,
	Submitted = 4
}