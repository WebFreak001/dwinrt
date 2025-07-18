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
	HRESULT abi_GetInputReportAsync(UINT16 reportId, Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport)* return_value);
	HRESULT abi_GetFeatureReportAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport)* return_value);
	HRESULT abi_GetFeatureReportAsync(UINT16 reportId, Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport)* return_value);
	HRESULT abi_CreateOutputReport(Windows.Devices.HumanInterfaceDevice.HidOutputReport* return_outputReport);
	HRESULT abi_CreateOutputReport(UINT16 reportId, Windows.Devices.HumanInterfaceDevice.HidOutputReport* return_outputReport);
	HRESULT abi_CreateFeatureReport(Windows.Devices.HumanInterfaceDevice.HidFeatureReport* return_featureReport);
	HRESULT abi_CreateFeatureReport(UINT16 reportId, Windows.Devices.HumanInterfaceDevice.HidFeatureReport* return_featureReport);
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
	HRESULT abi_GetDeviceSelector(UINT16 usagePage, UINT16 usageId, UINT16 vendorId, UINT16 productId, HSTRING* return_selector);
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
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl)this.asInterface(uuid("524df48a-3695-408c-bba2-e2eb5abfbc20"))).get_Id(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl)this.asInterface(uuid("524df48a-3695-408c-bba2-e2eb5abfbc20"))).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl)this.asInterface(uuid("524df48a-3695-408c-bba2-e2eb5abfbc20"))).get_UsageId(&_ret));
		return _ret;
	}
	final bool IsActive()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl)this.asInterface(uuid("524df48a-3695-408c-bba2-e2eb5abfbc20"))).get_IsActive(&_ret));
		return _ret;
	}
	final void IsActive(bool value)
	{
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl)this.asInterface(uuid("524df48a-3695-408c-bba2-e2eb5abfbc20"))).set_IsActive(value));
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription ControlDescription()
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControl)this.asInterface(uuid("524df48a-3695-408c-bba2-e2eb5abfbc20"))).get_ControlDescription(&_ret));
		return _ret;
	}
}

interface HidBooleanControlDescription : Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription, Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription2
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription)this.asInterface(uuid("6196e543-29d8-4a2a-8683-849e207bbe31"))).get_Id(&_ret));
		return _ret;
	}
	final UINT16 ReportId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription)this.asInterface(uuid("6196e543-29d8-4a2a-8683-849e207bbe31"))).get_ReportId(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidReportType ReportType()
	{
		Windows.Devices.HumanInterfaceDevice.HidReportType _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription)this.asInterface(uuid("6196e543-29d8-4a2a-8683-849e207bbe31"))).get_ReportType(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription)this.asInterface(uuid("6196e543-29d8-4a2a-8683-849e207bbe31"))).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription)this.asInterface(uuid("6196e543-29d8-4a2a-8683-849e207bbe31"))).get_UsageId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidCollection) ParentCollections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidCollection) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription)this.asInterface(uuid("6196e543-29d8-4a2a-8683-849e207bbe31"))).get_ParentCollections(&_ret));
		return _ret;
	}
	final bool IsAbsolute()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription2)this.asInterface(uuid("c8eed2ea-8a77-4c36-aa00-5ff0449d3e73"))).get_IsAbsolute(&_ret));
		return _ret;
	}
}

interface HidCollection : Windows.Devices.HumanInterfaceDevice.IHidCollection
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidCollection)this.asInterface(uuid("7189f5a3-32f1-46e3-befd-44d2663b7e6a"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidCollectionType Type()
	{
		Windows.Devices.HumanInterfaceDevice.HidCollectionType _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidCollection)this.asInterface(uuid("7189f5a3-32f1-46e3-befd-44d2663b7e6a"))).get_Type(&_ret));
		return _ret;
	}
	final UINT32 UsagePage()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidCollection)this.asInterface(uuid("7189f5a3-32f1-46e3-befd-44d2663b7e6a"))).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT32 UsageId()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidCollection)this.asInterface(uuid("7189f5a3-32f1-46e3-befd-44d2663b7e6a"))).get_UsageId(&_ret));
		return _ret;
	}
}

interface HidDevice : Windows.Devices.HumanInterfaceDevice.IHidDevice, Windows.Foundation.IClosable
{
extern(Windows):
	final UINT16 VendorId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).get_VendorId(&_ret));
		return _ret;
	}
	final UINT16 ProductId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).get_ProductId(&_ret));
		return _ret;
	}
	final UINT16 Version()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).get_Version(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).get_UsageId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport) GetInputReportAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_GetInputReportAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport) GetInputReportAsync(UINT16 reportId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidInputReport) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_GetInputReportAsync(reportId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport) GetFeatureReportAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_GetFeatureReportAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport) GetFeatureReportAsync(UINT16 reportId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidFeatureReport) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_GetFeatureReportAsync(reportId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidOutputReport CreateOutputReport()
	{
		Windows.Devices.HumanInterfaceDevice.HidOutputReport _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_CreateOutputReport(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidOutputReport CreateOutputReport(UINT16 reportId)
	{
		Windows.Devices.HumanInterfaceDevice.HidOutputReport _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_CreateOutputReport(reportId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidFeatureReport CreateFeatureReport()
	{
		Windows.Devices.HumanInterfaceDevice.HidFeatureReport _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_CreateFeatureReport(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidFeatureReport CreateFeatureReport(UINT16 reportId)
	{
		Windows.Devices.HumanInterfaceDevice.HidFeatureReport _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_CreateFeatureReport(reportId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SendOutputReportAsync(Windows.Devices.HumanInterfaceDevice.HidOutputReport outputReport)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_SendOutputReportAsync(outputReport, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SendFeatureReportAsync(Windows.Devices.HumanInterfaceDevice.HidFeatureReport featureReport)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_SendFeatureReportAsync(featureReport, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription) GetBooleanControlDescriptions(Windows.Devices.HumanInterfaceDevice.HidReportType reportType, UINT16 usagePage, UINT16 usageId)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_GetBooleanControlDescriptions(reportType, usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription) GetNumericControlDescriptions(Windows.Devices.HumanInterfaceDevice.HidReportType reportType, UINT16 usagePage, UINT16 usageId)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).abi_GetNumericControlDescriptions(reportType, usagePage, usageId, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnInputReportReceived(void delegate(Windows.Devices.HumanInterfaceDevice.HidDevice, Windows.Devices.HumanInterfaceDevice.HidInputReportReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).add_InputReportReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.HumanInterfaceDevice.HidDevice, Windows.Devices.HumanInterfaceDevice.HidInputReportReceivedEventArgs), Windows.Devices.HumanInterfaceDevice.HidDevice, Windows.Devices.HumanInterfaceDevice.HidInputReportReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeInputReportReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidDevice)this.asInterface(uuid("5f8a14e7-2200-432e-95da-d09b87d574a8"))).remove_InputReportReceived(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
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
		Debug.OK(staticInstance.abi_GetDeviceSelector(usagePage, usageId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector(UINT16 usagePage, UINT16 usageId, UINT16 vendorId, UINT16 productId)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(usagePage, usageId, vendorId, productId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidDevice) FromIdAsync(HSTRING deviceId, Windows.Storage.FileAccessMode accessMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidDevice) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, accessMode, &_ret));
		return _ret;
	}
}

interface HidFeatureReport : Windows.Devices.HumanInterfaceDevice.IHidFeatureReport
{
extern(Windows):
	final UINT16 Id()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport)this.asInterface(uuid("841d9b79-5ae5-46e3-82ef-1fec5c8942f4"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport)this.asInterface(uuid("841d9b79-5ae5-46e3-82ef-1fec5c8942f4"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport)this.asInterface(uuid("841d9b79-5ae5-46e3-82ef-1fec5c8942f4"))).set_Data(value));
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport)this.asInterface(uuid("841d9b79-5ae5-46e3-82ef-1fec5c8942f4"))).abi_GetBooleanControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControlByDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport)this.asInterface(uuid("841d9b79-5ae5-46e3-82ef-1fec5c8942f4"))).abi_GetBooleanControlByDescription(controlDescription, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport)this.asInterface(uuid("841d9b79-5ae5-46e3-82ef-1fec5c8942f4"))).abi_GetNumericControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControlByDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidFeatureReport)this.asInterface(uuid("841d9b79-5ae5-46e3-82ef-1fec5c8942f4"))).abi_GetNumericControlByDescription(controlDescription, &_ret));
		return _ret;
	}
}

interface HidInputReport : Windows.Devices.HumanInterfaceDevice.IHidInputReport
{
extern(Windows):
	final UINT16 Id()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidInputReport)this.asInterface(uuid("c35d0e50-f7e7-4e8d-b23e-cabbe56b90e9"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidInputReport)this.asInterface(uuid("c35d0e50-f7e7-4e8d-b23e-cabbe56b90e9"))).get_Data(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControl) ActivatedBooleanControls()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControl) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidInputReport)this.asInterface(uuid("c35d0e50-f7e7-4e8d-b23e-cabbe56b90e9"))).get_ActivatedBooleanControls(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControl) TransitionedBooleanControls()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidBooleanControl) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidInputReport)this.asInterface(uuid("c35d0e50-f7e7-4e8d-b23e-cabbe56b90e9"))).get_TransitionedBooleanControls(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidInputReport)this.asInterface(uuid("c35d0e50-f7e7-4e8d-b23e-cabbe56b90e9"))).abi_GetBooleanControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControlByDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidInputReport)this.asInterface(uuid("c35d0e50-f7e7-4e8d-b23e-cabbe56b90e9"))).abi_GetBooleanControlByDescription(controlDescription, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidInputReport)this.asInterface(uuid("c35d0e50-f7e7-4e8d-b23e-cabbe56b90e9"))).abi_GetNumericControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControlByDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidInputReport)this.asInterface(uuid("c35d0e50-f7e7-4e8d-b23e-cabbe56b90e9"))).abi_GetNumericControlByDescription(controlDescription, &_ret));
		return _ret;
	}
}

interface HidInputReportReceivedEventArgs : Windows.Devices.HumanInterfaceDevice.IHidInputReportReceivedEventArgs
{
extern(Windows):
	final Windows.Devices.HumanInterfaceDevice.HidInputReport Report()
	{
		Windows.Devices.HumanInterfaceDevice.HidInputReport _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidInputReportReceivedEventArgs)this.asInterface(uuid("7059c5cb-59b2-4dc2-985c-0adc6136fa2d"))).get_Report(&_ret));
		return _ret;
	}
}

interface HidNumericControl : Windows.Devices.HumanInterfaceDevice.IHidNumericControl
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControl)this.asInterface(uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823"))).get_Id(&_ret));
		return _ret;
	}
	final bool IsGrouped()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControl)this.asInterface(uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823"))).get_IsGrouped(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControl)this.asInterface(uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823"))).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControl)this.asInterface(uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823"))).get_UsageId(&_ret));
		return _ret;
	}
	final INT64 Value()
	{
		INT64 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControl)this.asInterface(uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(INT64 value)
	{
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControl)this.asInterface(uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823"))).set_Value(value));
	}
	final INT64 ScaledValue()
	{
		INT64 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControl)this.asInterface(uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823"))).get_ScaledValue(&_ret));
		return _ret;
	}
	final void ScaledValue(INT64 value)
	{
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControl)this.asInterface(uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823"))).set_ScaledValue(value));
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription ControlDescription()
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControl)this.asInterface(uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823"))).get_ControlDescription(&_ret));
		return _ret;
	}
}

interface HidNumericControlDescription : Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_Id(&_ret));
		return _ret;
	}
	final UINT16 ReportId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_ReportId(&_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidReportType ReportType()
	{
		Windows.Devices.HumanInterfaceDevice.HidReportType _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_ReportType(&_ret));
		return _ret;
	}
	final UINT32 ReportSize()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_ReportSize(&_ret));
		return _ret;
	}
	final UINT32 ReportCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_ReportCount(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_UsagePage(&_ret));
		return _ret;
	}
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_UsageId(&_ret));
		return _ret;
	}
	final INT32 LogicalMinimum()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_LogicalMinimum(&_ret));
		return _ret;
	}
	final INT32 LogicalMaximum()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_LogicalMaximum(&_ret));
		return _ret;
	}
	final INT32 PhysicalMinimum()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_PhysicalMinimum(&_ret));
		return _ret;
	}
	final INT32 PhysicalMaximum()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_PhysicalMaximum(&_ret));
		return _ret;
	}
	final UINT32 UnitExponent()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_UnitExponent(&_ret));
		return _ret;
	}
	final UINT32 Unit()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_Unit(&_ret));
		return _ret;
	}
	final bool IsAbsolute()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_IsAbsolute(&_ret));
		return _ret;
	}
	final bool HasNull()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_HasNull(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidCollection) ParentCollections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.HumanInterfaceDevice.HidCollection) _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription)this.asInterface(uuid("638d5e86-1d97-4c75-927f-5ff58ba05e32"))).get_ParentCollections(&_ret));
		return _ret;
	}
}

interface HidOutputReport : Windows.Devices.HumanInterfaceDevice.IHidOutputReport
{
extern(Windows):
	final UINT16 Id()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidOutputReport)this.asInterface(uuid("62cb2544-c896-4463-93c1-df9db053c450"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidOutputReport)this.asInterface(uuid("62cb2544-c896-4463-93c1-df9db053c450"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidOutputReport)this.asInterface(uuid("62cb2544-c896-4463-93c1-df9db053c450"))).set_Data(value));
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidOutputReport)this.asInterface(uuid("62cb2544-c896-4463-93c1-df9db053c450"))).abi_GetBooleanControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidBooleanControl GetBooleanControlByDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidBooleanControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidOutputReport)this.asInterface(uuid("62cb2544-c896-4463-93c1-df9db053c450"))).abi_GetBooleanControlByDescription(controlDescription, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControl(UINT16 usagePage, UINT16 usageId)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidOutputReport)this.asInterface(uuid("62cb2544-c896-4463-93c1-df9db053c450"))).abi_GetNumericControl(usagePage, usageId, &_ret));
		return _ret;
	}
	final Windows.Devices.HumanInterfaceDevice.HidNumericControl GetNumericControlByDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription controlDescription)
	{
		Windows.Devices.HumanInterfaceDevice.HidNumericControl _ret;
		Debug.OK((cast(Windows.Devices.HumanInterfaceDevice.IHidOutputReport)this.asInterface(uuid("62cb2544-c896-4463-93c1-df9db053c450"))).abi_GetNumericControlByDescription(controlDescription, &_ret));
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