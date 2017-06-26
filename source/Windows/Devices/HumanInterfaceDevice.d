module Windows.Devices.HumanInterfaceDevice;

import dwinrt;

@uuid("524df48a-3695-408c-bba2-e2eb5abfbc20")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidBooleanControl")
interface IHidBooleanControl : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_UsagePage(UINT16* return_value);
	HRESULT get_UsageId(UINT16* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT set_IsActive(bool value);
	HRESULT get_ControlDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription* return_value);
}

@uuid("6196e543-29d8-4a2a-8683-849e207bbe31")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription")
interface IHidBooleanControlDescription : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_ReportId(UINT16* return_value);
	HRESULT get_ReportType(Windows.Devices.HumanInterfaceDevice.HidReportType* return_value);
	HRESULT get_UsagePage(UINT16* return_value);
	HRESULT get_UsageId(UINT16* return_value);
	HRESULT get_ParentCollections(Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidCollection)* return_value);
}

@uuid("c8eed2ea-8a77-4c36-aa00-5ff0449d3e73")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription")
interface IHidBooleanControlDescription2 : IInspectable
{
extern(Windows):
	HRESULT get_IsAbsolute(bool* return_value);
}

@uuid("7189f5a3-32f1-46e3-befd-44d2663b7e6a")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidCollection")
interface IHidCollection : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_Type(Windows.Devices.HumanInterfaceDevice.HidCollectionType* return_value);
	HRESULT get_UsagePage(UINT32* return_value);
	HRESULT get_UsageId(UINT32* return_value);
}

@uuid("5f8a14e7-2200-432e-95da-d09b87d574a8")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidDevice")
interface IHidDevice_Base : IInspectable
{
extern(Windows):
	HRESULT get_VendorId(UINT16* return_value);
	HRESULT get_ProductId(UINT16* return_value);
	HRESULT get_Version(UINT16* return_value);
	HRESULT get_UsagePage(UINT16* return_value);
	HRESULT get_UsageId(UINT16* return_value);
	HRESULT abi_GetInputReportAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport)* return_value);
	HRESULT abi_GetInputReportByIdAsync(UINT16 reportId, Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport)* return_value);
	HRESULT abi_GetFeatureReportAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport)* return_value);
	HRESULT abi_GetFeatureReportByIdAsync(UINT16 reportId, Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport)* return_value);
	HRESULT abi_CreateOutputReport(Windows.Devices.HumanInterfaceDevice.HidOutputReport* return_outputReport);
	HRESULT abi_CreateOutputReportById(UINT16 reportId, Windows.Devices.HumanInterfaceDevice.HidOutputReport* return_outputReport);
	HRESULT abi_CreateFeatureReport(Windows.Devices.HumanInterfaceDevice.HidFeatureReport* return_featureReport);
	HRESULT abi_CreateFeatureReportById(UINT16 reportId, Windows.Devices.HumanInterfaceDevice.HidFeatureReport* return_featureReport);
	HRESULT abi_SendOutputReportAsync(Windows.Devices.HumanInterfaceDevice.HidOutputReport outputReport, Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_SendFeatureReportAsync(Windows.Devices.HumanInterfaceDevice.HidFeatureReport featureReport, Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_GetBooleanControlDescriptions(Windows.Devices.HumanInterfaceDevice.HidReportType reportType, UINT16 usagePage, UINT16 usageId, Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription)* return_value);
	HRESULT abi_GetNumericControlDescriptions(Windows.Devices.HumanInterfaceDevice.HidReportType reportType, UINT16 usagePage, UINT16 usageId, Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription)* return_value);
	HRESULT add_InputReportReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.HumanInterfaceDevice.HidDevice, Windows.Devices.HumanInterfaceDevice.HidInputReportReceivedEventArgs) reportHandler, EventRegistrationToken* return_token);
	HRESULT remove_InputReportReceived(EventRegistrationToken token);
}
@uuid("5f8a14e7-2200-432e-95da-d09b87d574a8")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidDevice")
interface IHidDevice : IHidDevice_Base, Windows.Foundation.IClosable {}

@uuid("9e5981e4-9856-418c-9f73-77de0cd85754")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidDevice")
interface IHidDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(UINT16 usagePage, UINT16 usageId, HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorVidPid(UINT16 usagePage, UINT16 usageId, UINT16 vendorId, UINT16 productId, HSTRING* return_selector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Storage.FileAccessMode accessMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidDevice)* return_hidDevice);
}

@uuid("841d9b79-5ae5-46e3-82ef-1fec5c8942f4")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidFeatureReport")
interface IHidFeatureReport : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT16* return_value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Data(Windows.Storage.Streams.IBuffer value);
	HRESULT abi_GetBooleanControl(UINT16 usagePage, UINT16 usageId, Windows.Devices.HumanInterfaceDevice.HidBooleanControl* return_value);
	HRESULT abi_GetBooleanControlByDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription controlDescription, Windows.Devices.HumanInterfaceDevice.HidBooleanControl* return_value);
	HRESULT abi_GetNumericControl(UINT16 usagePage, UINT16 usageId, Windows.Devices.HumanInterfaceDevice.HidNumericControl* return_value);
	HRESULT abi_GetNumericControlByDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription controlDescription, Windows.Devices.HumanInterfaceDevice.HidNumericControl* return_value);
}

@uuid("c35d0e50-f7e7-4e8d-b23e-cabbe56b90e9")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidInputReport")
interface IHidInputReport : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT16* return_value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_ActivatedBooleanControls(Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControl)* return_value);
	HRESULT get_TransitionedBooleanControls(Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControl)* return_value);
	HRESULT abi_GetBooleanControl(UINT16 usagePage, UINT16 usageId, Windows.Devices.HumanInterfaceDevice.HidBooleanControl* return_value);
	HRESULT abi_GetBooleanControlByDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription controlDescription, Windows.Devices.HumanInterfaceDevice.HidBooleanControl* return_value);
	HRESULT abi_GetNumericControl(UINT16 usagePage, UINT16 usageId, Windows.Devices.HumanInterfaceDevice.HidNumericControl* return_value);
	HRESULT abi_GetNumericControlByDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription controlDescription, Windows.Devices.HumanInterfaceDevice.HidNumericControl* return_value);
}

@uuid("7059c5cb-59b2-4dc2-985c-0adc6136fa2d")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidInputReportReceivedEventArgs")
interface IHidInputReportReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Report(Windows.Devices.HumanInterfaceDevice.HidInputReport* return_value);
}

@uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidNumericControl")
interface IHidNumericControl : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_IsGrouped(bool* return_value);
	HRESULT get_UsagePage(UINT16* return_value);
	HRESULT get_UsageId(UINT16* return_value);
	HRESULT get_Value(INT64* return_value);
	HRESULT set_Value(INT64 value);
	HRESULT get_ScaledValue(INT64* return_value);
	HRESULT set_ScaledValue(INT64 value);
	HRESULT get_ControlDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription* return_value);
}

@uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription")
interface IHidNumericControlDescription : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_ReportId(UINT16* return_value);
	HRESULT get_ReportType(Windows.Devices.HumanInterfaceDevice.HidReportType* return_value);
	HRESULT get_ReportSize(UINT32* return_value);
	HRESULT get_ReportCount(UINT32* return_value);
	HRESULT get_UsagePage(UINT16* return_value);
	HRESULT get_UsageId(UINT16* return_value);
	HRESULT get_LogicalMinimum(INT32* return_value);
	HRESULT get_LogicalMaximum(INT32* return_value);
	HRESULT get_PhysicalMinimum(INT32* return_value);
	HRESULT get_PhysicalMaximum(INT32* return_value);
	HRESULT get_UnitExponent(UINT32* return_value);
	HRESULT get_Unit(UINT32* return_value);
	HRESULT get_IsAbsolute(bool* return_value);
	HRESULT get_HasNull(bool* return_value);
	HRESULT get_ParentCollections(Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidCollection)* return_value);
}

@uuid("62cb2544-c896-4463-93c1-df9db053c450")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidOutputReport")
interface IHidOutputReport : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT16* return_value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Data(Windows.Storage.Streams.IBuffer value);
	HRESULT abi_GetBooleanControl(UINT16 usagePage, UINT16 usageId, Windows.Devices.HumanInterfaceDevice.HidBooleanControl* return_value);
	HRESULT abi_GetBooleanControlByDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription controlDescription, Windows.Devices.HumanInterfaceDevice.HidBooleanControl* return_value);
	HRESULT abi_GetNumericControl(UINT16 usagePage, UINT16 usageId, Windows.Devices.HumanInterfaceDevice.HidNumericControl* return_value);
	HRESULT abi_GetNumericControlByDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription controlDescription, Windows.Devices.HumanInterfaceDevice.HidNumericControl* return_value);
}

interface HidBooleanControl : Windows.Devices.HumanInterfaceDevice.IHidBooleanControl
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl).get_Id(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl).get_UsageId(&_ret));
		return _ret;
	}
	final bool IsActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl).get_IsActive(&_ret));
		return _ret;
	}
	final void IsActive(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl).set_IsActive(value));
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription ControlDescription()
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl).get_ControlDescription(&_ret));
		return _ret;
	}
}

interface HidBooleanControlDescription : Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription, Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription2
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription).get_Id(&_ret));
		return _ret;
	}
	final UINT16 ReportId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription).get_ReportId(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidReportType ReportType()
	{
		Windows.Devices.HumanInterfaceDevice.HidReportType _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription).get_ReportType(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription).get_UsageId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidCollection) ParentCollections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidCollection) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription).get_ParentCollections(&_ret));
		return _ret;
	}
	final bool IsAbsolute()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription2).get_IsAbsolute(&_ret));
		return _ret;
	}
}

interface HidCollection : Windows.Devices.HumanInterfaceDevice.IHidCollection
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidCollection).get_Id(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidCollectionType Type()
	{
		Windows.Devices.HumanInterfaceDevice.HidCollectionType _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidCollection).get_Type(&_ret));
		return _ret;
	}
	final UINT32 UsagePage()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidCollection).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT32 UsageId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidCollection).get_UsageId(&_ret));
		return _ret;
	}
}

interface HidDevice : Windows.Devices.HumanInterfaceDevice.IHidDevice, Windows.Foundation.IClosable
{
extern(Windows):
	final UINT16 VendorId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).get_VendorId(&_ret));
		return _ret;
	}
	final UINT16 ProductId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).get_ProductId(&_ret));
		return _ret;
	}
	final UINT16 Version()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).get_Version(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).get_UsageId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport) GetInputReportAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_GetInputReportAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport) GetInputReportByIdAsync(UINT16 reportId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_GetInputReportByIdAsync(reportId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport) GetFeatureReportAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_GetFeatureReportAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport) GetFeatureReportByIdAsync(UINT16 reportId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_GetFeatureReportByIdAsync(reportId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidOutputReport CreateOutputReport()
	{
		Windows.Devices.HumanInterfaceDevice.HidOutputReport _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_CreateOutputReport(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidOutputReport CreateOutputReportById(UINT16 reportId)
	{
		Windows.Devices.HumanInterfaceDevice.HidOutputReport _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_CreateOutputReportById(reportId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidFeatureReport CreateFeatureReport()
	{
		Windows.Devices.HumanInterfaceDevice.HidFeatureReport _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_CreateFeatureReport(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidFeatureReport CreateFeatureReportById(UINT16 reportId)
	{
		Windows.Devices.HumanInterfaceDevice.HidFeatureReport _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_CreateFeatureReportById(reportId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SendOutputReportAsync(Windows.Devices.HumanInterfaceDevice.HidOutputReport outputReport)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_SendOutputReportAsync(outputReport, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SendFeatureReportAsync(Windows.Devices.HumanInterfaceDevice.HidFeatureReport featureReport)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_SendFeatureReportAsync(featureReport, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription) GetBooleanControlDescriptions(Windows.Devices.HumanInterfaceDevice.HidReportType reportType, UINT16 usagePage, UINT16 usageId)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_GetBooleanControlDescriptions(reportType, usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription) GetNumericControlDescriptions(Windows.Devices.HumanInterfaceDevice.HidReportType reportType, UINT16 usagePage, UINT16 usageId)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).abi_GetNumericControlDescriptions(reportType, usagePage, usageId, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnInputReportReceived(void delegate(Windows.Devices.HumanInterfaceDevice.HidDevice, Windows.Devices.HumanInterfaceDevice.HidInputReportReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).add_InputReportReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.HumanInterfaceDevice.HidDevice, Windows.Devices.HumanInterfaceDevice.HidInputReportReceivedEventArgs), Windows.Devices.HumanInterfaceDevice.HidDevice, Windows.Devices.HumanInterfaceDevice.HidInputReportReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeInputReportReceived(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidDevice).remove_InputReportReceived(token));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}

	private static Windows.Devices.HumanInterfaceDevice.IHidDeviceStatics _staticInstance;
	public static Windows.Devices.HumanInterfaceDevice.IHidDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.HumanInterfaceDevice.IHidDeviceStatics);
		return _staticInstance;
	}
	static HSTRING GetDeviceSelector(UINT16 usagePage, UINT16 usageId)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.HumanInterfaceDevice.IHidDeviceStatics).abi_GetDeviceSelector(usagePage, usageId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelectorVidPid(UINT16 usagePage, UINT16 usageId, UINT16 vendorId, UINT16 productId)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.HumanInterfaceDevice.IHidDeviceStatics).abi_GetDeviceSelectorVidPid(usagePage, usageId, vendorId, productId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidDevice) FromIdAsync(HSTRING deviceId, Windows.Storage.FileAccessMode accessMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidDevice) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.HumanInterfaceDevice.IHidDeviceStatics).abi_FromIdAsync(deviceId, accessMode, &_ret));
		return _ret;
	}
}

interface HidFeatureReport : Windows.Devices.HumanInterfaceDevice.IHidFeatureReport
{
extern(Windows):
	final UINT16 Id()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport).get_Id(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport).set_Data(value));
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport).abi_GetBooleanControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControlByDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport).abi_GetBooleanControlByDescription(controlDescription, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport).abi_GetNumericControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControlByDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport).abi_GetNumericControlByDescription(controlDescription, &_ret));
		return _ret;
	}
}

interface HidInputReport : Windows.Devices.HumanInterfaceDevice.IHidInputReport
{
extern(Windows):
	final UINT16 Id()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidInputReport).get_Id(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidInputReport).get_Data(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControl) ActivatedBooleanControls()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControl) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidInputReport).get_ActivatedBooleanControls(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControl) TransitionedBooleanControls()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControl) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidInputReport).get_TransitionedBooleanControls(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidInputReport).abi_GetBooleanControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControlByDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidInputReport).abi_GetBooleanControlByDescription(controlDescription, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidInputReport).abi_GetNumericControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControlByDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidInputReport).abi_GetNumericControlByDescription(controlDescription, &_ret));
		return _ret;
	}
}

interface HidInputReportReceivedEventArgs : Windows.Devices.HumanInterfaceDevice.IHidInputReportReceivedEventArgs
{
extern(Windows):
	final Windows.Devices.HumanInterfaceDevice.HidInputReport Report()
	{
		Windows.Devices.HumanInterfaceDevice.HidInputReport _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidInputReportReceivedEventArgs).get_Report(&_ret));
		return _ret;
	}
}

interface HidNumericControl : Windows.Devices.HumanInterfaceDevice.IHidNumericControl
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControl).get_Id(&_ret));
		return _ret;
	}
	final bool IsGrouped()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControl).get_IsGrouped(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControl).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControl).get_UsageId(&_ret));
		return _ret;
	}
	final INT64 Value()
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControl).get_Value(&_ret));
		return _ret;
	}
	final void Value(INT64 value)
	{
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControl).set_Value(value));
	}
	final INT64 ScaledValue()
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControl).get_ScaledValue(&_ret));
		return _ret;
	}
	final void ScaledValue(INT64 value)
	{
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControl).set_ScaledValue(value));
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription ControlDescription()
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControl).get_ControlDescription(&_ret));
		return _ret;
	}
}

interface HidNumericControlDescription : Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_Id(&_ret));
		return _ret;
	}
	final UINT16 ReportId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_ReportId(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidReportType ReportType()
	{
		Windows.Devices.HumanInterfaceDevice.HidReportType _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_ReportType(&_ret));
		return _ret;
	}
	final UINT32 ReportSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_ReportSize(&_ret));
		return _ret;
	}
	final UINT32 ReportCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_ReportCount(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_UsageId(&_ret));
		return _ret;
	}
	final INT32 LogicalMinimum()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_LogicalMinimum(&_ret));
		return _ret;
	}
	final INT32 LogicalMaximum()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_LogicalMaximum(&_ret));
		return _ret;
	}
	final INT32 PhysicalMinimum()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_PhysicalMinimum(&_ret));
		return _ret;
	}
	final INT32 PhysicalMaximum()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_PhysicalMaximum(&_ret));
		return _ret;
	}
	final UINT32 UnitExponent()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_UnitExponent(&_ret));
		return _ret;
	}
	final UINT32 Unit()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_Unit(&_ret));
		return _ret;
	}
	final bool IsAbsolute()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_IsAbsolute(&_ret));
		return _ret;
	}
	final bool HasNull()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_HasNull(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidCollection) ParentCollections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidCollection) _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription).get_ParentCollections(&_ret));
		return _ret;
	}
}

interface HidOutputReport : Windows.Devices.HumanInterfaceDevice.IHidOutputReport
{
extern(Windows):
	final UINT16 Id()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidOutputReport).get_Id(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidOutputReport).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidOutputReport).set_Data(value));
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidOutputReport).abi_GetBooleanControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControlByDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidOutputReport).abi_GetBooleanControlByDescription(controlDescription, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidOutputReport).abi_GetNumericControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControlByDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK(this.as!(Windows.Devices.HumanInterfaceDevice.IHidOutputReport).abi_GetNumericControlByDescription(controlDescription, &_ret));
		return _ret;
	}
}

enum HidCollectionType
{
	Physical = 0,
	Application = 1,
	Logical = 2,
	Report = 3,
	NamedArray = 4,
	UsageSwitch = 5,
	UsageModifier = 6,
	Other = 7
}

enum HidReportType
{
	Input = 0,
	Output = 1,
	Feature = 2
}