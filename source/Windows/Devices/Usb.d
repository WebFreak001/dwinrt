module Windows.Devices.Usb;

import dwinrt;

@uuid("3c6e4846-06cf-42a9-9dc2-971c1b14b6e3")
@WinrtFactory("Windows.Devices.Usb.UsbBulkInEndpointDescriptor")
interface IUsbBulkInEndpointDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxPacketSize(UINT32* return_value);
	HRESULT get_EndpointNumber(BYTE* return_value);
	HRESULT get_Pipe(Windows.Devices.Usb.UsbBulkInPipe* return_value);
}

@uuid("f01d2d3b-4548-4d50-b326-d82cdabe1220")
@WinrtFactory("Windows.Devices.Usb.UsbBulkInPipe")
interface IUsbBulkInPipe : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxTransferSizeBytes(UINT32* return_value);
	HRESULT get_EndpointDescriptor(Windows.Devices.Usb.UsbBulkInEndpointDescriptor* return_value);
	HRESULT abi_ClearStallAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT set_ReadOptions(Windows.Devices.Usb.UsbReadOptions value);
	HRESULT get_ReadOptions(Windows.Devices.Usb.UsbReadOptions* return_value);
	HRESULT abi_FlushBuffer();
	HRESULT get_InputStream(Windows.Storage.Streams.IInputStream* return_value);
}

@uuid("2820847a-ffee-4f60-9be1-956cac3ecb65")
@WinrtFactory("Windows.Devices.Usb.UsbBulkOutEndpointDescriptor")
interface IUsbBulkOutEndpointDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxPacketSize(UINT32* return_value);
	HRESULT get_EndpointNumber(BYTE* return_value);
	HRESULT get_Pipe(Windows.Devices.Usb.UsbBulkOutPipe* return_value);
}

@uuid("a8e9ee6e-0115-45aa-8b21-37b225bccee7")
@WinrtFactory("Windows.Devices.Usb.UsbBulkOutPipe")
interface IUsbBulkOutPipe : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EndpointDescriptor(Windows.Devices.Usb.UsbBulkOutEndpointDescriptor* return_value);
	HRESULT abi_ClearStallAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT set_WriteOptions(Windows.Devices.Usb.UsbWriteOptions value);
	HRESULT get_WriteOptions(Windows.Devices.Usb.UsbWriteOptions* return_value);
	HRESULT get_OutputStream(Windows.Storage.Streams.IOutputStream* return_value);
}

@uuid("68177429-36a9-46d7-b873-fc689251ec30")
@WinrtFactory("Windows.Devices.Usb.UsbConfiguration")
interface IUsbConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UsbInterfaces(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterface)* return_value);
	HRESULT get_ConfigurationDescriptor(Windows.Devices.Usb.UsbConfigurationDescriptor* return_value);
	HRESULT get_Descriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor)* return_value);
}

@uuid("f2176d92-b442-407a-8207-7d646c0385f3")
@WinrtFactory("Windows.Devices.Usb.UsbConfigurationDescriptor")
interface IUsbConfigurationDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ConfigurationValue(BYTE* return_value);
	HRESULT get_MaxPowerMilliamps(UINT32* return_value);
	HRESULT get_SelfPowered(bool* return_value);
	HRESULT get_RemoteWakeup(bool* return_value);
}

@uuid("424ced93-e740-40a1-92bd-da120ea04914")
@WinrtFactory("Windows.Devices.Usb.UsbConfigurationDescriptor")
interface IUsbConfigurationDescriptorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryParse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbConfigurationDescriptor* out_parsed, bool* return_success);
	HRESULT abi_Parse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbConfigurationDescriptor* return_parsed);
}

@uuid("8e9465a6-d73d-46de-94be-aae7f07c0f5c")
@WinrtFactory("Windows.Devices.Usb.UsbControlRequestType")
interface IUsbControlRequestType : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Direction(Windows.Devices.Usb.UsbTransferDirection* return_value);
	HRESULT set_Direction(Windows.Devices.Usb.UsbTransferDirection value);
	HRESULT get_ControlTransferType(Windows.Devices.Usb.UsbControlTransferType* return_value);
	HRESULT set_ControlTransferType(Windows.Devices.Usb.UsbControlTransferType value);
	HRESULT get_Recipient(Windows.Devices.Usb.UsbControlRecipient* return_value);
	HRESULT set_Recipient(Windows.Devices.Usb.UsbControlRecipient value);
	HRESULT get_AsByte(BYTE* return_value);
	HRESULT set_AsByte(BYTE value);
}

@uuid("0a89f216-5f9d-4874-8904-da9ad3f5528f")
@WinrtFactory("Windows.Devices.Usb.UsbDescriptor")
interface IUsbDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Length(BYTE* return_value);
	HRESULT get_DescriptorType(BYTE* return_value);
	HRESULT abi_ReadDescriptorBuffer(Windows.Storage.Streams.IBuffer buffer);
}

@uuid("5249b992-c456-44d5-ad5e-24f5a089f63b")
@WinrtFactory("Windows.Devices.Usb.UsbDevice")
interface IUsbDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SendControlOutTransferAsync(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_SendControlOutTransferAsyncNoBuffer(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_SendControlInTransferAsync(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_operation);
	HRESULT abi_SendControlInTransferAsyncNoBuffer(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_operation);
	HRESULT get_DefaultInterface(Windows.Devices.Usb.UsbInterface* return_value);
	HRESULT get_DeviceDescriptor(Windows.Devices.Usb.UsbDeviceDescriptor* return_value);
	HRESULT get_Configuration(Windows.Devices.Usb.UsbConfiguration* return_value);
}

@uuid("051942f9-845e-47eb-b12a-38f2f617afe7")
@WinrtFactory("Windows.Devices.Usb.UsbDeviceClass")
interface IUsbDeviceClass : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ClassCode(BYTE* return_value);
	HRESULT set_ClassCode(BYTE value);
	HRESULT get_SubclassCode(Windows.Foundation.IReference!(BYTE)* return_value);
	HRESULT set_SubclassCode(Windows.Foundation.IReference!(BYTE) value);
	HRESULT get_ProtocolCode(Windows.Foundation.IReference!(BYTE)* return_value);
	HRESULT set_ProtocolCode(Windows.Foundation.IReference!(BYTE) value);
}

@uuid("b20b0527-c580-4599-a165-981b4fd03230")
@WinrtFactory("Windows.Devices.Usb.UsbDeviceClasses")
interface IUsbDeviceClassesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CdcControl(Windows.Devices.Usb.UsbDeviceClass* return_value);
	HRESULT get_Physical(Windows.Devices.Usb.UsbDeviceClass* return_value);
	HRESULT get_PersonalHealthcare(Windows.Devices.Usb.UsbDeviceClass* return_value);
	HRESULT get_ActiveSync(Windows.Devices.Usb.UsbDeviceClass* return_value);
	HRESULT get_PalmSync(Windows.Devices.Usb.UsbDeviceClass* return_value);
	HRESULT get_DeviceFirmwareUpdate(Windows.Devices.Usb.UsbDeviceClass* return_value);
	HRESULT get_Irda(Windows.Devices.Usb.UsbDeviceClass* return_value);
	HRESULT get_Measurement(Windows.Devices.Usb.UsbDeviceClass* return_value);
	HRESULT get_VendorSpecific(Windows.Devices.Usb.UsbDeviceClass* return_value);
}

@uuid("1f48d1f6-ba97-4322-b92c-b5b189216588")
@WinrtFactory("Windows.Devices.Usb.UsbDeviceDescriptor")
interface IUsbDeviceDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BcdUsb(UINT32* return_value);
	HRESULT get_MaxPacketSize0(BYTE* return_value);
	HRESULT get_VendorId(UINT32* return_value);
	HRESULT get_ProductId(UINT32* return_value);
	HRESULT get_BcdDeviceRevision(UINT32* return_value);
	HRESULT get_NumberOfConfigurations(BYTE* return_value);
}

@uuid("066b85a2-09b7-4446-8502-6fe6dcaa7309")
@WinrtFactory("Windows.Devices.Usb.UsbDevice")
interface IUsbDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(UINT32 vendorId, UINT32 productId, GUID winUsbInterfaceClass, HSTRING* return_value);
	HRESULT abi_GetDeviceSelectorGuidOnly(GUID winUsbInterfaceClass, HSTRING* return_value);
	HRESULT abi_GetDeviceSelectorVidPidOnly(UINT32 vendorId, UINT32 productId, HSTRING* return_value);
	HRESULT abi_GetDeviceClassSelector(Windows.Devices.Usb.UsbDeviceClass usbClass, HSTRING* return_value);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Usb.UsbDevice)* return_operation);
}

@uuid("6b4862d9-8df7-4b40-ac83-578f139f0575")
@WinrtFactory("Windows.Devices.Usb.UsbEndpointDescriptor")
interface IUsbEndpointDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EndpointNumber(BYTE* return_value);
	HRESULT get_Direction(Windows.Devices.Usb.UsbTransferDirection* return_value);
	HRESULT get_EndpointType(Windows.Devices.Usb.UsbEndpointType* return_value);
	HRESULT get_AsBulkInEndpointDescriptor(Windows.Devices.Usb.UsbBulkInEndpointDescriptor* return_value);
	HRESULT get_AsInterruptInEndpointDescriptor(Windows.Devices.Usb.UsbInterruptInEndpointDescriptor* return_value);
	HRESULT get_AsBulkOutEndpointDescriptor(Windows.Devices.Usb.UsbBulkOutEndpointDescriptor* return_value);
	HRESULT get_AsInterruptOutEndpointDescriptor(Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor* return_value);
}

@uuid("c890b201-9a6a-495e-a82c-295b9e708106")
@WinrtFactory("Windows.Devices.Usb.UsbEndpointDescriptor")
interface IUsbEndpointDescriptorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryParse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbEndpointDescriptor* out_parsed, bool* return_success);
	HRESULT abi_Parse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbEndpointDescriptor* return_parsed);
}

@uuid("a0322b95-7f47-48ab-a727-678c25be2112")
@WinrtFactory("Windows.Devices.Usb.UsbInterface")
interface IUsbInterface : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BulkInPipes(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInPipe)* return_value);
	HRESULT get_InterruptInPipes(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInPipe)* return_value);
	HRESULT get_BulkOutPipes(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutPipe)* return_value);
	HRESULT get_InterruptOutPipes(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutPipe)* return_value);
	HRESULT get_InterfaceSettings(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterfaceSetting)* return_value);
	HRESULT get_InterfaceNumber(BYTE* return_value);
	HRESULT get_Descriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor)* return_value);
}

@uuid("199670c7-b7ee-4f90-8cd5-94a2e257598a")
@WinrtFactory("Windows.Devices.Usb.UsbInterfaceDescriptor")
interface IUsbInterfaceDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ClassCode(BYTE* return_value);
	HRESULT get_SubclassCode(BYTE* return_value);
	HRESULT get_ProtocolCode(BYTE* return_value);
	HRESULT get_AlternateSettingNumber(BYTE* return_value);
	HRESULT get_InterfaceNumber(BYTE* return_value);
}

@uuid("e34a9ff5-77d6-48b6-b0be-16c6422316fe")
@WinrtFactory("Windows.Devices.Usb.UsbInterfaceDescriptor")
interface IUsbInterfaceDescriptorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TryParse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbInterfaceDescriptor* out_parsed, bool* return_success);
	HRESULT abi_Parse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbInterfaceDescriptor* return_parsed);
}

@uuid("1827bba7-8da7-4af7-8f4c-7f3032e781f5")
@WinrtFactory("Windows.Devices.Usb.UsbInterfaceSetting")
interface IUsbInterfaceSetting : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BulkInEndpoints(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInEndpointDescriptor)* return_value);
	HRESULT get_InterruptInEndpoints(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInEndpointDescriptor)* return_value);
	HRESULT get_BulkOutEndpoints(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutEndpointDescriptor)* return_value);
	HRESULT get_InterruptOutEndpoints(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor)* return_value);
	HRESULT get_Selected(bool* return_value);
	HRESULT abi_SelectSettingAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT get_InterfaceDescriptor(Windows.Devices.Usb.UsbInterfaceDescriptor* return_value);
	HRESULT get_Descriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor)* return_value);
}

@uuid("c0528967-c911-4c3a-86b2-419c2da89039")
@WinrtFactory("Windows.Devices.Usb.UsbInterruptInEndpointDescriptor")
interface IUsbInterruptInEndpointDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxPacketSize(UINT32* return_value);
	HRESULT get_EndpointNumber(BYTE* return_value);
	HRESULT get_Interval(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Pipe(Windows.Devices.Usb.UsbInterruptInPipe* return_value);
}

@uuid("b7b04092-1418-4936-8209-299cf5605583")
@WinrtFactory("Windows.Devices.Usb.UsbInterruptInEventArgs")
interface IUsbInterruptInEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InterruptData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("fa007116-84d7-48c7-8a3f-4c0b235f2ea6")
@WinrtFactory("Windows.Devices.Usb.UsbInterruptInPipe")
interface IUsbInterruptInPipe : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EndpointDescriptor(Windows.Devices.Usb.UsbInterruptInEndpointDescriptor* return_value);
	HRESULT abi_ClearStallAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT add_DataReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.Usb.UsbInterruptInPipe, Windows.Devices.Usb.UsbInterruptInEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DataReceived(EventRegistrationToken token);
}

@uuid("cc9fed81-10ca-4533-952d-9e278341e80f")
@WinrtFactory("Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor")
interface IUsbInterruptOutEndpointDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxPacketSize(UINT32* return_value);
	HRESULT get_EndpointNumber(BYTE* return_value);
	HRESULT get_Interval(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Pipe(Windows.Devices.Usb.UsbInterruptOutPipe* return_value);
}

@uuid("e984c8a9-aaf9-49d0-b96c-f661ab4a7f95")
@WinrtFactory("Windows.Devices.Usb.UsbInterruptOutPipe")
interface IUsbInterruptOutPipe : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EndpointDescriptor(Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor* return_value);
	HRESULT abi_ClearStallAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT set_WriteOptions(Windows.Devices.Usb.UsbWriteOptions value);
	HRESULT get_WriteOptions(Windows.Devices.Usb.UsbWriteOptions* return_value);
	HRESULT get_OutputStream(Windows.Storage.Streams.IOutputStream* return_value);
}

@uuid("104ba132-c78f-4c51-b654-e49d02f2cb03")
@WinrtFactory("Windows.Devices.Usb.UsbSetupPacket")
interface IUsbSetupPacket : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RequestType(Windows.Devices.Usb.UsbControlRequestType* return_value);
	HRESULT set_RequestType(Windows.Devices.Usb.UsbControlRequestType value);
	HRESULT get_Request(BYTE* return_value);
	HRESULT set_Request(BYTE value);
	HRESULT get_Value(UINT32* return_value);
	HRESULT set_Value(UINT32 value);
	HRESULT get_Index(UINT32* return_value);
	HRESULT set_Index(UINT32 value);
	HRESULT get_Length(UINT32* return_value);
	HRESULT set_Length(UINT32 value);
}

@uuid("c9257d50-1b2e-4a41-a2a7-338f0cef3c14")
@WinrtFactory("Windows.Devices.Usb.UsbSetupPacket")
interface IUsbSetupPacketFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithEightByteBuffer(Windows.Storage.Streams.IBuffer eightByteBuffer, Windows.Devices.Usb.UsbSetupPacket* return_value);
}

interface UsbBulkInEndpointDescriptor
{
}

interface UsbBulkInPipe
{
}

interface UsbBulkOutEndpointDescriptor
{
}

interface UsbBulkOutPipe
{
}

interface UsbConfiguration
{
}

interface UsbConfigurationDescriptor
{
}

interface UsbControlRequestType
{
}

interface UsbDescriptor
{
}

interface UsbDevice
{
}

interface UsbDeviceClass
{
}

interface UsbDeviceClasses
{
}

interface UsbDeviceDescriptor
{
}

interface UsbEndpointDescriptor
{
}

interface UsbInterface
{
}

interface UsbInterfaceDescriptor
{
}

interface UsbInterfaceSetting
{
}

interface UsbInterruptInEndpointDescriptor
{
}

interface UsbInterruptInEventArgs
{
}

interface UsbInterruptInPipe
{
}

interface UsbInterruptOutEndpointDescriptor
{
}

interface UsbInterruptOutPipe
{
}

interface UsbSetupPacket
{
}

enum UsbControlRecipient
{
	Device = 0,
	SpecifiedInterface = 1,
	Endpoint = 2,
	Other = 3,
	DefaultInterface = 4
}

enum UsbControlTransferType
{
	Standard = 0,
	Class = 1,
	Vendor = 2
}

enum UsbEndpointType
{
	Control = 0,
	Isochronous = 1,
	Bulk = 2,
	Interrupt = 3
}

@bitflags
enum UsbReadOptions
{
	None = 0x0,
	AutoClearStall = 0x1,
	OverrideAutomaticBufferManagement = 0x2,
	IgnoreShortPacket = 0x4,
	AllowPartialReads = 0x8
}

enum UsbTransferDirection
{
	Out = 0,
	In = 1
}

@bitflags
enum UsbWriteOptions
{
	None = 0x0,
	AutoClearStall = 0x1,
	ShortPacketTerminate = 0x2
}