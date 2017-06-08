module Windows.Devices.HumanInterfaceDevice;

import dwinrt;

@uuid("524df48a-3695-408c-bba2-e2eb5abfbc20")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidBooleanControl")
interface IHidBooleanControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsAbsolute(bool* return_value);
}

@uuid("7189f5a3-32f1-46e3-befd-44d2663b7e6a")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidCollection")
interface IHidCollection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_Type(Windows.Devices.HumanInterfaceDevice.HidCollectionType* return_value);
	HRESULT get_UsagePage(UINT32* return_value);
	HRESULT get_UsageId(UINT32* return_value);
}

@uuid("5f8a14e7-2200-432e-95da-d09b87d574a8")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidDevice")
interface IHidDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("9e5981e4-9856-418c-9f73-77de0cd85754")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidDevice")
interface IHidDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(UINT16 usagePage, UINT16 usageId, HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorVidPid(UINT16 usagePage, UINT16 usageId, UINT16 vendorId, UINT16 productId, HSTRING* return_selector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Storage.FileAccessMode accessMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.HumanInterfaceDevice.HidDevice)* return_hidDevice);
}

@uuid("841d9b79-5ae5-46e3-82ef-1fec5c8942f4")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidFeatureReport")
interface IHidFeatureReport : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Report(Windows.Devices.HumanInterfaceDevice.HidInputReport* return_value);
}

@uuid("e38a12a5-35a7-4b75-89c8-fb1f28b10823")
@WinrtFactory("Windows.Devices.HumanInterfaceDevice.HidNumericControl")
interface IHidNumericControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(UINT16* return_value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Data(Windows.Storage.Streams.IBuffer value);
	HRESULT abi_GetBooleanControl(UINT16 usagePage, UINT16 usageId, Windows.Devices.HumanInterfaceDevice.HidBooleanControl* return_value);
	HRESULT abi_GetBooleanControlByDescription(Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription controlDescription, Windows.Devices.HumanInterfaceDevice.HidBooleanControl* return_value);
	HRESULT abi_GetNumericControl(UINT16 usagePage, UINT16 usageId, Windows.Devices.HumanInterfaceDevice.HidNumericControl* return_value);
	HRESULT abi_GetNumericControlByDescription(Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription controlDescription, Windows.Devices.HumanInterfaceDevice.HidNumericControl* return_value);
}

interface HidBooleanControl
{
}

interface HidBooleanControlDescription
{
}

interface HidCollection
{
}

interface HidDevice
{
}

interface HidFeatureReport
{
}

interface HidInputReport
{
}

interface HidInputReportReceivedEventArgs
{
}

interface HidNumericControl
{
}

interface HidNumericControlDescription
{
}

interface HidOutputReport
{
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