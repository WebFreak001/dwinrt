module Windows.Devices.Usb;

import dwinrt;

@uuid("3c6e4846-06cf-42a9-9dc2-971c1b14b6e3")
@WinrtFactory("Windows.Devices.Usb.UsbBulkInEndpointDescriptor")
interface IUsbBulkInEndpointDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_MaxPacketSize(UINT32* return_value);
	HRESULT get_EndpointNumber(ubyte* return_value);
	HRESULT get_Pipe(Windows.Devices.Usb.UsbBulkInPipe* return_value);
}

@uuid("f01d2d3b-4548-4d50-b326-d82cdabe1220")
@WinrtFactory("Windows.Devices.Usb.UsbBulkInPipe")
interface IUsbBulkInPipe : IInspectable
{
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
extern(Windows):
	HRESULT get_MaxPacketSize(UINT32* return_value);
	HRESULT get_EndpointNumber(ubyte* return_value);
	HRESULT get_Pipe(Windows.Devices.Usb.UsbBulkOutPipe* return_value);
}

@uuid("a8e9ee6e-0115-45aa-8b21-37b225bccee7")
@WinrtFactory("Windows.Devices.Usb.UsbBulkOutPipe")
interface IUsbBulkOutPipe : IInspectable
{
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
extern(Windows):
	HRESULT get_UsbInterfaces(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterface)* return_value);
	HRESULT get_ConfigurationDescriptor(Windows.Devices.Usb.UsbConfigurationDescriptor* return_value);
	HRESULT get_Descriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor)* return_value);
}

@uuid("f2176d92-b442-407a-8207-7d646c0385f3")
@WinrtFactory("Windows.Devices.Usb.UsbConfigurationDescriptor")
interface IUsbConfigurationDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_ConfigurationValue(ubyte* return_value);
	HRESULT get_MaxPowerMilliamps(UINT32* return_value);
	HRESULT get_SelfPowered(bool* return_value);
	HRESULT get_RemoteWakeup(bool* return_value);
}

@uuid("424ced93-e740-40a1-92bd-da120ea04914")
@WinrtFactory("Windows.Devices.Usb.UsbConfigurationDescriptor")
interface IUsbConfigurationDescriptorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TryParse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbConfigurationDescriptor* out_parsed, bool* return_success);
	HRESULT abi_Parse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbConfigurationDescriptor* return_parsed);
}

@uuid("8e9465a6-d73d-46de-94be-aae7f07c0f5c")
@WinrtFactory("Windows.Devices.Usb.UsbControlRequestType")
interface IUsbControlRequestType : IInspectable
{
extern(Windows):
	HRESULT get_Direction(Windows.Devices.Usb.UsbTransferDirection* return_value);
	HRESULT set_Direction(Windows.Devices.Usb.UsbTransferDirection value);
	HRESULT get_ControlTransferType(Windows.Devices.Usb.UsbControlTransferType* return_value);
	HRESULT set_ControlTransferType(Windows.Devices.Usb.UsbControlTransferType value);
	HRESULT get_Recipient(Windows.Devices.Usb.UsbControlRecipient* return_value);
	HRESULT set_Recipient(Windows.Devices.Usb.UsbControlRecipient value);
	HRESULT get_AsByte(ubyte* return_value);
	HRESULT set_AsByte(ubyte value);
}

@uuid("0a89f216-5f9d-4874-8904-da9ad3f5528f")
@WinrtFactory("Windows.Devices.Usb.UsbDescriptor")
interface IUsbDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_Length(ubyte* return_value);
	HRESULT get_DescriptorType(ubyte* return_value);
	HRESULT abi_ReadDescriptorBuffer(Windows.Storage.Streams.IBuffer buffer);
}

@uuid("5249b992-c456-44d5-ad5e-24f5a089f63b")
@WinrtFactory("Windows.Devices.Usb.UsbDevice")
interface IUsbDevice_Base : IInspectable
{
extern(Windows):
	HRESULT abi_SendControlOutTransferAsync(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_SendControlOutTransferAsyncNoBuffer(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_SendControlInTransferAsync(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_operation);
	HRESULT abi_SendControlInTransferAsyncNoBuffer(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_operation);
	HRESULT get_DefaultInterface(Windows.Devices.Usb.UsbInterface* return_value);
	HRESULT get_DeviceDescriptor(Windows.Devices.Usb.UsbDeviceDescriptor* return_value);
	HRESULT get_Configuration(Windows.Devices.Usb.UsbConfiguration* return_value);
}
@uuid("5249b992-c456-44d5-ad5e-24f5a089f63b")
@WinrtFactory("Windows.Devices.Usb.UsbDevice")
interface IUsbDevice : IUsbDevice_Base, Windows.Foundation.IClosable {}

@uuid("051942f9-845e-47eb-b12a-38f2f617afe7")
@WinrtFactory("Windows.Devices.Usb.UsbDeviceClass")
interface IUsbDeviceClass : IInspectable
{
extern(Windows):
	HRESULT get_ClassCode(ubyte* return_value);
	HRESULT set_ClassCode(ubyte value);
	HRESULT get_SubclassCode(Windows.Foundation.IReference!(ubyte)* return_value);
	HRESULT set_SubclassCode(Windows.Foundation.IReference!(ubyte) value);
	HRESULT get_ProtocolCode(Windows.Foundation.IReference!(ubyte)* return_value);
	HRESULT set_ProtocolCode(Windows.Foundation.IReference!(ubyte) value);
}

@uuid("686f955d-9b92-4b30-9781-c22c55ac35cb")
@WinrtFactory("Windows.Devices.Usb.UsbDeviceClasses")
interface IUsbDeviceClasses : IInspectable
{
}

@uuid("b20b0527-c580-4599-a165-981b4fd03230")
@WinrtFactory("Windows.Devices.Usb.UsbDeviceClasses")
interface IUsbDeviceClassesStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_BcdUsb(UINT32* return_value);
	HRESULT get_MaxPacketSize0(ubyte* return_value);
	HRESULT get_VendorId(UINT32* return_value);
	HRESULT get_ProductId(UINT32* return_value);
	HRESULT get_BcdDeviceRevision(UINT32* return_value);
	HRESULT get_NumberOfConfigurations(ubyte* return_value);
}

@uuid("066b85a2-09b7-4446-8502-6fe6dcaa7309")
@WinrtFactory("Windows.Devices.Usb.UsbDevice")
interface IUsbDeviceStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_EndpointNumber(ubyte* return_value);
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
extern(Windows):
	HRESULT abi_TryParse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbEndpointDescriptor* out_parsed, bool* return_success);
	HRESULT abi_Parse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbEndpointDescriptor* return_parsed);
}

@uuid("a0322b95-7f47-48ab-a727-678c25be2112")
@WinrtFactory("Windows.Devices.Usb.UsbInterface")
interface IUsbInterface : IInspectable
{
extern(Windows):
	HRESULT get_BulkInPipes(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInPipe)* return_value);
	HRESULT get_InterruptInPipes(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInPipe)* return_value);
	HRESULT get_BulkOutPipes(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutPipe)* return_value);
	HRESULT get_InterruptOutPipes(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutPipe)* return_value);
	HRESULT get_InterfaceSettings(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterfaceSetting)* return_value);
	HRESULT get_InterfaceNumber(ubyte* return_value);
	HRESULT get_Descriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor)* return_value);
}

@uuid("199670c7-b7ee-4f90-8cd5-94a2e257598a")
@WinrtFactory("Windows.Devices.Usb.UsbInterfaceDescriptor")
interface IUsbInterfaceDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_ClassCode(ubyte* return_value);
	HRESULT get_SubclassCode(ubyte* return_value);
	HRESULT get_ProtocolCode(ubyte* return_value);
	HRESULT get_AlternateSettingNumber(ubyte* return_value);
	HRESULT get_InterfaceNumber(ubyte* return_value);
}

@uuid("e34a9ff5-77d6-48b6-b0be-16c6422316fe")
@WinrtFactory("Windows.Devices.Usb.UsbInterfaceDescriptor")
interface IUsbInterfaceDescriptorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TryParse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbInterfaceDescriptor* out_parsed, bool* return_success);
	HRESULT abi_Parse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbInterfaceDescriptor* return_parsed);
}

@uuid("1827bba7-8da7-4af7-8f4c-7f3032e781f5")
@WinrtFactory("Windows.Devices.Usb.UsbInterfaceSetting")
interface IUsbInterfaceSetting : IInspectable
{
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
extern(Windows):
	HRESULT get_MaxPacketSize(UINT32* return_value);
	HRESULT get_EndpointNumber(ubyte* return_value);
	HRESULT get_Interval(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Pipe(Windows.Devices.Usb.UsbInterruptInPipe* return_value);
}

@uuid("b7b04092-1418-4936-8209-299cf5605583")
@WinrtFactory("Windows.Devices.Usb.UsbInterruptInEventArgs")
interface IUsbInterruptInEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InterruptData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("fa007116-84d7-48c7-8a3f-4c0b235f2ea6")
@WinrtFactory("Windows.Devices.Usb.UsbInterruptInPipe")
interface IUsbInterruptInPipe : IInspectable
{
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
extern(Windows):
	HRESULT get_MaxPacketSize(UINT32* return_value);
	HRESULT get_EndpointNumber(ubyte* return_value);
	HRESULT get_Interval(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Pipe(Windows.Devices.Usb.UsbInterruptOutPipe* return_value);
}

@uuid("e984c8a9-aaf9-49d0-b96c-f661ab4a7f95")
@WinrtFactory("Windows.Devices.Usb.UsbInterruptOutPipe")
interface IUsbInterruptOutPipe : IInspectable
{
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
extern(Windows):
	HRESULT get_RequestType(Windows.Devices.Usb.UsbControlRequestType* return_value);
	HRESULT set_RequestType(Windows.Devices.Usb.UsbControlRequestType value);
	HRESULT get_Request(ubyte* return_value);
	HRESULT set_Request(ubyte value);
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
extern(Windows):
	HRESULT abi_CreateWithEightByteBuffer(Windows.Storage.Streams.IBuffer eightByteBuffer, Windows.Devices.Usb.UsbSetupPacket* return_value);
}

interface UsbBulkInEndpointDescriptor : Windows.Devices.Usb.IUsbBulkInEndpointDescriptor
{
extern(Windows):
	final UINT32 MaxPacketSize()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkInEndpointDescriptor)this.asInterface(uuid("3c6e4846-06cf-42a9-9dc2-971c1b14b6e3"))).get_MaxPacketSize(&_ret));
		return _ret;
	}
	final ubyte EndpointNumber()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkInEndpointDescriptor)this.asInterface(uuid("3c6e4846-06cf-42a9-9dc2-971c1b14b6e3"))).get_EndpointNumber(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbBulkInPipe Pipe()
	{
		Windows.Devices.Usb.UsbBulkInPipe _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkInEndpointDescriptor)this.asInterface(uuid("3c6e4846-06cf-42a9-9dc2-971c1b14b6e3"))).get_Pipe(&_ret));
		return _ret;
	}
}

interface UsbBulkInPipe : Windows.Devices.Usb.IUsbBulkInPipe
{
extern(Windows):
	final UINT32 MaxTransferSizeBytes()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkInPipe)this.asInterface(uuid("f01d2d3b-4548-4d50-b326-d82cdabe1220"))).get_MaxTransferSizeBytes(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbBulkInEndpointDescriptor EndpointDescriptor()
	{
		Windows.Devices.Usb.UsbBulkInEndpointDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkInPipe)this.asInterface(uuid("f01d2d3b-4548-4d50-b326-d82cdabe1220"))).get_EndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearStallAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkInPipe)this.asInterface(uuid("f01d2d3b-4548-4d50-b326-d82cdabe1220"))).abi_ClearStallAsync(&_ret));
		return _ret;
	}
	final void ReadOptions(Windows.Devices.Usb.UsbReadOptions value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkInPipe)this.asInterface(uuid("f01d2d3b-4548-4d50-b326-d82cdabe1220"))).set_ReadOptions(value));
	}
	final Windows.Devices.Usb.UsbReadOptions ReadOptions()
	{
		Windows.Devices.Usb.UsbReadOptions _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkInPipe)this.asInterface(uuid("f01d2d3b-4548-4d50-b326-d82cdabe1220"))).get_ReadOptions(&_ret));
		return _ret;
	}
	final void FlushBuffer()
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkInPipe)this.asInterface(uuid("f01d2d3b-4548-4d50-b326-d82cdabe1220"))).abi_FlushBuffer());
	}
	final Windows.Storage.Streams.IInputStream InputStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkInPipe)this.asInterface(uuid("f01d2d3b-4548-4d50-b326-d82cdabe1220"))).get_InputStream(&_ret));
		return _ret;
	}
}

interface UsbBulkOutEndpointDescriptor : Windows.Devices.Usb.IUsbBulkOutEndpointDescriptor
{
extern(Windows):
	final UINT32 MaxPacketSize()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkOutEndpointDescriptor)this.asInterface(uuid("2820847a-ffee-4f60-9be1-956cac3ecb65"))).get_MaxPacketSize(&_ret));
		return _ret;
	}
	final ubyte EndpointNumber()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkOutEndpointDescriptor)this.asInterface(uuid("2820847a-ffee-4f60-9be1-956cac3ecb65"))).get_EndpointNumber(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbBulkOutPipe Pipe()
	{
		Windows.Devices.Usb.UsbBulkOutPipe _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkOutEndpointDescriptor)this.asInterface(uuid("2820847a-ffee-4f60-9be1-956cac3ecb65"))).get_Pipe(&_ret));
		return _ret;
	}
}

interface UsbBulkOutPipe : Windows.Devices.Usb.IUsbBulkOutPipe
{
extern(Windows):
	final Windows.Devices.Usb.UsbBulkOutEndpointDescriptor EndpointDescriptor()
	{
		Windows.Devices.Usb.UsbBulkOutEndpointDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkOutPipe)this.asInterface(uuid("a8e9ee6e-0115-45aa-8b21-37b225bccee7"))).get_EndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearStallAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkOutPipe)this.asInterface(uuid("a8e9ee6e-0115-45aa-8b21-37b225bccee7"))).abi_ClearStallAsync(&_ret));
		return _ret;
	}
	final void WriteOptions(Windows.Devices.Usb.UsbWriteOptions value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkOutPipe)this.asInterface(uuid("a8e9ee6e-0115-45aa-8b21-37b225bccee7"))).set_WriteOptions(value));
	}
	final Windows.Devices.Usb.UsbWriteOptions WriteOptions()
	{
		Windows.Devices.Usb.UsbWriteOptions _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkOutPipe)this.asInterface(uuid("a8e9ee6e-0115-45aa-8b21-37b225bccee7"))).get_WriteOptions(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream OutputStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbBulkOutPipe)this.asInterface(uuid("a8e9ee6e-0115-45aa-8b21-37b225bccee7"))).get_OutputStream(&_ret));
		return _ret;
	}
}

interface UsbConfiguration : Windows.Devices.Usb.IUsbConfiguration
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterface) UsbInterfaces()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterface) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbConfiguration)this.asInterface(uuid("68177429-36a9-46d7-b873-fc689251ec30"))).get_UsbInterfaces(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbConfigurationDescriptor ConfigurationDescriptor()
	{
		Windows.Devices.Usb.UsbConfigurationDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbConfiguration)this.asInterface(uuid("68177429-36a9-46d7-b873-fc689251ec30"))).get_ConfigurationDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) Descriptors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbConfiguration)this.asInterface(uuid("68177429-36a9-46d7-b873-fc689251ec30"))).get_Descriptors(&_ret));
		return _ret;
	}
}

interface UsbConfigurationDescriptor : Windows.Devices.Usb.IUsbConfigurationDescriptor
{
extern(Windows):
	final ubyte ConfigurationValue()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbConfigurationDescriptor)this.asInterface(uuid("f2176d92-b442-407a-8207-7d646c0385f3"))).get_ConfigurationValue(&_ret));
		return _ret;
	}
	final UINT32 MaxPowerMilliamps()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbConfigurationDescriptor)this.asInterface(uuid("f2176d92-b442-407a-8207-7d646c0385f3"))).get_MaxPowerMilliamps(&_ret));
		return _ret;
	}
	final bool SelfPowered()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbConfigurationDescriptor)this.asInterface(uuid("f2176d92-b442-407a-8207-7d646c0385f3"))).get_SelfPowered(&_ret));
		return _ret;
	}
	final bool RemoteWakeup()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbConfigurationDescriptor)this.asInterface(uuid("f2176d92-b442-407a-8207-7d646c0385f3"))).get_RemoteWakeup(&_ret));
		return _ret;
	}

	private static Windows.Devices.Usb.IUsbConfigurationDescriptorStatics _staticInstance;
	public static Windows.Devices.Usb.IUsbConfigurationDescriptorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Usb.IUsbConfigurationDescriptorStatics);
		return _staticInstance;
	}
	static bool TryParse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbConfigurationDescriptor* out_parsed)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(descriptor, out_parsed, &_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbConfigurationDescriptor Parse(Windows.Devices.Usb.UsbDescriptor descriptor)
	{
		Windows.Devices.Usb.UsbConfigurationDescriptor _ret;
		Debug.OK(staticInstance.abi_Parse(descriptor, &_ret));
		return _ret;
	}
}

interface UsbControlRequestType : Windows.Devices.Usb.IUsbControlRequestType
{
extern(Windows):
	final Windows.Devices.Usb.UsbTransferDirection Direction()
	{
		Windows.Devices.Usb.UsbTransferDirection _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbControlRequestType)this.asInterface(uuid("8e9465a6-d73d-46de-94be-aae7f07c0f5c"))).get_Direction(&_ret));
		return _ret;
	}
	final void Direction(Windows.Devices.Usb.UsbTransferDirection value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbControlRequestType)this.asInterface(uuid("8e9465a6-d73d-46de-94be-aae7f07c0f5c"))).set_Direction(value));
	}
	final Windows.Devices.Usb.UsbControlTransferType ControlTransferType()
	{
		Windows.Devices.Usb.UsbControlTransferType _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbControlRequestType)this.asInterface(uuid("8e9465a6-d73d-46de-94be-aae7f07c0f5c"))).get_ControlTransferType(&_ret));
		return _ret;
	}
	final void ControlTransferType(Windows.Devices.Usb.UsbControlTransferType value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbControlRequestType)this.asInterface(uuid("8e9465a6-d73d-46de-94be-aae7f07c0f5c"))).set_ControlTransferType(value));
	}
	final Windows.Devices.Usb.UsbControlRecipient Recipient()
	{
		Windows.Devices.Usb.UsbControlRecipient _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbControlRequestType)this.asInterface(uuid("8e9465a6-d73d-46de-94be-aae7f07c0f5c"))).get_Recipient(&_ret));
		return _ret;
	}
	final void Recipient(Windows.Devices.Usb.UsbControlRecipient value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbControlRequestType)this.asInterface(uuid("8e9465a6-d73d-46de-94be-aae7f07c0f5c"))).set_Recipient(value));
	}
	final ubyte AsByte()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbControlRequestType)this.asInterface(uuid("8e9465a6-d73d-46de-94be-aae7f07c0f5c"))).get_AsByte(&_ret));
		return _ret;
	}
	final void AsByte(ubyte value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbControlRequestType)this.asInterface(uuid("8e9465a6-d73d-46de-94be-aae7f07c0f5c"))).set_AsByte(value));
	}
	static UsbControlRequestType New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(UsbControlRequestType).abi_ActivateInstance(&ret));
		return cast(UsbControlRequestType) ret;
	}
}

interface UsbDescriptor : Windows.Devices.Usb.IUsbDescriptor
{
extern(Windows):
	final ubyte Length()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDescriptor)this.asInterface(uuid("0a89f216-5f9d-4874-8904-da9ad3f5528f"))).get_Length(&_ret));
		return _ret;
	}
	final ubyte DescriptorType()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDescriptor)this.asInterface(uuid("0a89f216-5f9d-4874-8904-da9ad3f5528f"))).get_DescriptorType(&_ret));
		return _ret;
	}
	final void ReadDescriptorBuffer(Windows.Storage.Streams.IBuffer buffer)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbDescriptor)this.asInterface(uuid("0a89f216-5f9d-4874-8904-da9ad3f5528f"))).abi_ReadDescriptorBuffer(buffer));
	}
}

interface UsbDevice : Windows.Devices.Usb.IUsbDevice, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(UINT32) SendControlOutTransferAsync(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDevice)this.asInterface(uuid("5249b992-c456-44d5-ad5e-24f5a089f63b"))).abi_SendControlOutTransferAsync(setupPacket, buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SendControlOutTransferAsyncNoBuffer(Windows.Devices.Usb.UsbSetupPacket setupPacket)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDevice)this.asInterface(uuid("5249b992-c456-44d5-ad5e-24f5a089f63b"))).abi_SendControlOutTransferAsyncNoBuffer(setupPacket, &_ret));
		return _ret;
	}
	alias SendControlOutTransferAsync = SendControlOutTransferAsyncNoBuffer;
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) SendControlInTransferAsync(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDevice)this.asInterface(uuid("5249b992-c456-44d5-ad5e-24f5a089f63b"))).abi_SendControlInTransferAsync(setupPacket, buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) SendControlInTransferAsyncNoBuffer(Windows.Devices.Usb.UsbSetupPacket setupPacket)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDevice)this.asInterface(uuid("5249b992-c456-44d5-ad5e-24f5a089f63b"))).abi_SendControlInTransferAsyncNoBuffer(setupPacket, &_ret));
		return _ret;
	}
	alias SendControlInTransferAsync = SendControlInTransferAsyncNoBuffer;
	final Windows.Devices.Usb.UsbInterface DefaultInterface()
	{
		Windows.Devices.Usb.UsbInterface _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDevice)this.asInterface(uuid("5249b992-c456-44d5-ad5e-24f5a089f63b"))).get_DefaultInterface(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbDeviceDescriptor DeviceDescriptor()
	{
		Windows.Devices.Usb.UsbDeviceDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDevice)this.asInterface(uuid("5249b992-c456-44d5-ad5e-24f5a089f63b"))).get_DeviceDescriptor(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbConfiguration Configuration()
	{
		Windows.Devices.Usb.UsbConfiguration _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDevice)this.asInterface(uuid("5249b992-c456-44d5-ad5e-24f5a089f63b"))).get_Configuration(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.Usb.IUsbDeviceStatics _staticInstance;
	public static Windows.Devices.Usb.IUsbDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Usb.IUsbDeviceStatics);
		return _staticInstance;
	}
	static HSTRING GetDeviceSelector(UINT32 vendorId, UINT32 productId, GUID winUsbInterfaceClass)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(vendorId, productId, winUsbInterfaceClass, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelectorGuidOnly(GUID winUsbInterfaceClass)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelectorGuidOnly(winUsbInterfaceClass, &_ret));
		return _ret;
	}
	alias GetDeviceSelector = GetDeviceSelectorGuidOnly;
	static HSTRING GetDeviceSelectorVidPidOnly(UINT32 vendorId, UINT32 productId)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelectorVidPidOnly(vendorId, productId, &_ret));
		return _ret;
	}
	alias GetDeviceSelector = GetDeviceSelectorVidPidOnly;
	static HSTRING GetDeviceClassSelector(Windows.Devices.Usb.UsbDeviceClass usbClass)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceClassSelector(usbClass, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Usb.UsbDevice) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Usb.UsbDevice) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
}

interface UsbDeviceClass : Windows.Devices.Usb.IUsbDeviceClass
{
extern(Windows):
	final ubyte ClassCode()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceClass)this.asInterface(uuid("051942f9-845e-47eb-b12a-38f2f617afe7"))).get_ClassCode(&_ret));
		return _ret;
	}
	final void ClassCode(ubyte value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceClass)this.asInterface(uuid("051942f9-845e-47eb-b12a-38f2f617afe7"))).set_ClassCode(value));
	}
	final Windows.Foundation.IReference!(ubyte) SubclassCode()
	{
		Windows.Foundation.IReference!(ubyte) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceClass)this.asInterface(uuid("051942f9-845e-47eb-b12a-38f2f617afe7"))).get_SubclassCode(&_ret));
		return _ret;
	}
	final void SubclassCode(Windows.Foundation.IReference!(ubyte) value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceClass)this.asInterface(uuid("051942f9-845e-47eb-b12a-38f2f617afe7"))).set_SubclassCode(value));
	}
	final Windows.Foundation.IReference!(ubyte) ProtocolCode()
	{
		Windows.Foundation.IReference!(ubyte) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceClass)this.asInterface(uuid("051942f9-845e-47eb-b12a-38f2f617afe7"))).get_ProtocolCode(&_ret));
		return _ret;
	}
	final void ProtocolCode(Windows.Foundation.IReference!(ubyte) value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceClass)this.asInterface(uuid("051942f9-845e-47eb-b12a-38f2f617afe7"))).set_ProtocolCode(value));
	}
	static UsbDeviceClass New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(UsbDeviceClass).abi_ActivateInstance(&ret));
		return cast(UsbDeviceClass) ret;
	}
}

interface UsbDeviceClasses : Windows.Devices.Usb.IUsbDeviceClasses
{
	private static Windows.Devices.Usb.IUsbDeviceClassesStatics _staticInstance;
	public static Windows.Devices.Usb.IUsbDeviceClassesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Usb.IUsbDeviceClassesStatics);
		return _staticInstance;
	}
	static Windows.Devices.Usb.UsbDeviceClass CdcControl()
	{
		Windows.Devices.Usb.UsbDeviceClass _ret;
		Debug.OK(staticInstance.get_CdcControl(&_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbDeviceClass Physical()
	{
		Windows.Devices.Usb.UsbDeviceClass _ret;
		Debug.OK(staticInstance.get_Physical(&_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbDeviceClass PersonalHealthcare()
	{
		Windows.Devices.Usb.UsbDeviceClass _ret;
		Debug.OK(staticInstance.get_PersonalHealthcare(&_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbDeviceClass ActiveSync()
	{
		Windows.Devices.Usb.UsbDeviceClass _ret;
		Debug.OK(staticInstance.get_ActiveSync(&_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbDeviceClass PalmSync()
	{
		Windows.Devices.Usb.UsbDeviceClass _ret;
		Debug.OK(staticInstance.get_PalmSync(&_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbDeviceClass DeviceFirmwareUpdate()
	{
		Windows.Devices.Usb.UsbDeviceClass _ret;
		Debug.OK(staticInstance.get_DeviceFirmwareUpdate(&_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbDeviceClass Irda()
	{
		Windows.Devices.Usb.UsbDeviceClass _ret;
		Debug.OK(staticInstance.get_Irda(&_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbDeviceClass Measurement()
	{
		Windows.Devices.Usb.UsbDeviceClass _ret;
		Debug.OK(staticInstance.get_Measurement(&_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbDeviceClass VendorSpecific()
	{
		Windows.Devices.Usb.UsbDeviceClass _ret;
		Debug.OK(staticInstance.get_VendorSpecific(&_ret));
		return _ret;
	}
}

interface UsbDeviceDescriptor : Windows.Devices.Usb.IUsbDeviceDescriptor
{
extern(Windows):
	final UINT32 BcdUsb()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceDescriptor)this.asInterface(uuid("1f48d1f6-ba97-4322-b92c-b5b189216588"))).get_BcdUsb(&_ret));
		return _ret;
	}
	final ubyte MaxPacketSize0()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceDescriptor)this.asInterface(uuid("1f48d1f6-ba97-4322-b92c-b5b189216588"))).get_MaxPacketSize0(&_ret));
		return _ret;
	}
	final UINT32 VendorId()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceDescriptor)this.asInterface(uuid("1f48d1f6-ba97-4322-b92c-b5b189216588"))).get_VendorId(&_ret));
		return _ret;
	}
	final UINT32 ProductId()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceDescriptor)this.asInterface(uuid("1f48d1f6-ba97-4322-b92c-b5b189216588"))).get_ProductId(&_ret));
		return _ret;
	}
	final UINT32 BcdDeviceRevision()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceDescriptor)this.asInterface(uuid("1f48d1f6-ba97-4322-b92c-b5b189216588"))).get_BcdDeviceRevision(&_ret));
		return _ret;
	}
	final ubyte NumberOfConfigurations()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbDeviceDescriptor)this.asInterface(uuid("1f48d1f6-ba97-4322-b92c-b5b189216588"))).get_NumberOfConfigurations(&_ret));
		return _ret;
	}
}

interface UsbEndpointDescriptor : Windows.Devices.Usb.IUsbEndpointDescriptor
{
extern(Windows):
	final ubyte EndpointNumber()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbEndpointDescriptor)this.asInterface(uuid("6b4862d9-8df7-4b40-ac83-578f139f0575"))).get_EndpointNumber(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbTransferDirection Direction()
	{
		Windows.Devices.Usb.UsbTransferDirection _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbEndpointDescriptor)this.asInterface(uuid("6b4862d9-8df7-4b40-ac83-578f139f0575"))).get_Direction(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbEndpointType EndpointType()
	{
		Windows.Devices.Usb.UsbEndpointType _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbEndpointDescriptor)this.asInterface(uuid("6b4862d9-8df7-4b40-ac83-578f139f0575"))).get_EndpointType(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbBulkInEndpointDescriptor AsBulkInEndpointDescriptor()
	{
		Windows.Devices.Usb.UsbBulkInEndpointDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbEndpointDescriptor)this.asInterface(uuid("6b4862d9-8df7-4b40-ac83-578f139f0575"))).get_AsBulkInEndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterruptInEndpointDescriptor AsInterruptInEndpointDescriptor()
	{
		Windows.Devices.Usb.UsbInterruptInEndpointDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbEndpointDescriptor)this.asInterface(uuid("6b4862d9-8df7-4b40-ac83-578f139f0575"))).get_AsInterruptInEndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbBulkOutEndpointDescriptor AsBulkOutEndpointDescriptor()
	{
		Windows.Devices.Usb.UsbBulkOutEndpointDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbEndpointDescriptor)this.asInterface(uuid("6b4862d9-8df7-4b40-ac83-578f139f0575"))).get_AsBulkOutEndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor AsInterruptOutEndpointDescriptor()
	{
		Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbEndpointDescriptor)this.asInterface(uuid("6b4862d9-8df7-4b40-ac83-578f139f0575"))).get_AsInterruptOutEndpointDescriptor(&_ret));
		return _ret;
	}

	private static Windows.Devices.Usb.IUsbEndpointDescriptorStatics _staticInstance;
	public static Windows.Devices.Usb.IUsbEndpointDescriptorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Usb.IUsbEndpointDescriptorStatics);
		return _staticInstance;
	}
	static bool TryParse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbEndpointDescriptor* out_parsed)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(descriptor, out_parsed, &_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbEndpointDescriptor Parse(Windows.Devices.Usb.UsbDescriptor descriptor)
	{
		Windows.Devices.Usb.UsbEndpointDescriptor _ret;
		Debug.OK(staticInstance.abi_Parse(descriptor, &_ret));
		return _ret;
	}
}

interface UsbInterface : Windows.Devices.Usb.IUsbInterface
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInPipe) BulkInPipes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInPipe) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterface)this.asInterface(uuid("a0322b95-7f47-48ab-a727-678c25be2112"))).get_BulkInPipes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInPipe) InterruptInPipes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInPipe) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterface)this.asInterface(uuid("a0322b95-7f47-48ab-a727-678c25be2112"))).get_InterruptInPipes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutPipe) BulkOutPipes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutPipe) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterface)this.asInterface(uuid("a0322b95-7f47-48ab-a727-678c25be2112"))).get_BulkOutPipes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutPipe) InterruptOutPipes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutPipe) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterface)this.asInterface(uuid("a0322b95-7f47-48ab-a727-678c25be2112"))).get_InterruptOutPipes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterfaceSetting) InterfaceSettings()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterfaceSetting) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterface)this.asInterface(uuid("a0322b95-7f47-48ab-a727-678c25be2112"))).get_InterfaceSettings(&_ret));
		return _ret;
	}
	final ubyte InterfaceNumber()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterface)this.asInterface(uuid("a0322b95-7f47-48ab-a727-678c25be2112"))).get_InterfaceNumber(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) Descriptors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterface)this.asInterface(uuid("a0322b95-7f47-48ab-a727-678c25be2112"))).get_Descriptors(&_ret));
		return _ret;
	}
}

interface UsbInterfaceDescriptor : Windows.Devices.Usb.IUsbInterfaceDescriptor
{
extern(Windows):
	final ubyte ClassCode()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceDescriptor)this.asInterface(uuid("199670c7-b7ee-4f90-8cd5-94a2e257598a"))).get_ClassCode(&_ret));
		return _ret;
	}
	final ubyte SubclassCode()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceDescriptor)this.asInterface(uuid("199670c7-b7ee-4f90-8cd5-94a2e257598a"))).get_SubclassCode(&_ret));
		return _ret;
	}
	final ubyte ProtocolCode()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceDescriptor)this.asInterface(uuid("199670c7-b7ee-4f90-8cd5-94a2e257598a"))).get_ProtocolCode(&_ret));
		return _ret;
	}
	final ubyte AlternateSettingNumber()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceDescriptor)this.asInterface(uuid("199670c7-b7ee-4f90-8cd5-94a2e257598a"))).get_AlternateSettingNumber(&_ret));
		return _ret;
	}
	final ubyte InterfaceNumber()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceDescriptor)this.asInterface(uuid("199670c7-b7ee-4f90-8cd5-94a2e257598a"))).get_InterfaceNumber(&_ret));
		return _ret;
	}

	private static Windows.Devices.Usb.IUsbInterfaceDescriptorStatics _staticInstance;
	public static Windows.Devices.Usb.IUsbInterfaceDescriptorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Usb.IUsbInterfaceDescriptorStatics);
		return _staticInstance;
	}
	static bool TryParse(Windows.Devices.Usb.UsbDescriptor descriptor, Windows.Devices.Usb.UsbInterfaceDescriptor* out_parsed)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(descriptor, out_parsed, &_ret));
		return _ret;
	}
	static Windows.Devices.Usb.UsbInterfaceDescriptor Parse(Windows.Devices.Usb.UsbDescriptor descriptor)
	{
		Windows.Devices.Usb.UsbInterfaceDescriptor _ret;
		Debug.OK(staticInstance.abi_Parse(descriptor, &_ret));
		return _ret;
	}
}

interface UsbInterfaceSetting : Windows.Devices.Usb.IUsbInterfaceSetting
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInEndpointDescriptor) BulkInEndpoints()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInEndpointDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceSetting)this.asInterface(uuid("1827bba7-8da7-4af7-8f4c-7f3032e781f5"))).get_BulkInEndpoints(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInEndpointDescriptor) InterruptInEndpoints()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInEndpointDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceSetting)this.asInterface(uuid("1827bba7-8da7-4af7-8f4c-7f3032e781f5"))).get_InterruptInEndpoints(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutEndpointDescriptor) BulkOutEndpoints()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutEndpointDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceSetting)this.asInterface(uuid("1827bba7-8da7-4af7-8f4c-7f3032e781f5"))).get_BulkOutEndpoints(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor) InterruptOutEndpoints()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceSetting)this.asInterface(uuid("1827bba7-8da7-4af7-8f4c-7f3032e781f5"))).get_InterruptOutEndpoints(&_ret));
		return _ret;
	}
	final bool Selected()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceSetting)this.asInterface(uuid("1827bba7-8da7-4af7-8f4c-7f3032e781f5"))).get_Selected(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SelectSettingAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceSetting)this.asInterface(uuid("1827bba7-8da7-4af7-8f4c-7f3032e781f5"))).abi_SelectSettingAsync(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterfaceDescriptor InterfaceDescriptor()
	{
		Windows.Devices.Usb.UsbInterfaceDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceSetting)this.asInterface(uuid("1827bba7-8da7-4af7-8f4c-7f3032e781f5"))).get_InterfaceDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) Descriptors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterfaceSetting)this.asInterface(uuid("1827bba7-8da7-4af7-8f4c-7f3032e781f5"))).get_Descriptors(&_ret));
		return _ret;
	}
}

interface UsbInterruptInEndpointDescriptor : Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor
{
extern(Windows):
	final UINT32 MaxPacketSize()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor)this.asInterface(uuid("c0528967-c911-4c3a-86b2-419c2da89039"))).get_MaxPacketSize(&_ret));
		return _ret;
	}
	final ubyte EndpointNumber()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor)this.asInterface(uuid("c0528967-c911-4c3a-86b2-419c2da89039"))).get_EndpointNumber(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Interval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor)this.asInterface(uuid("c0528967-c911-4c3a-86b2-419c2da89039"))).get_Interval(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterruptInPipe Pipe()
	{
		Windows.Devices.Usb.UsbInterruptInPipe _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor)this.asInterface(uuid("c0528967-c911-4c3a-86b2-419c2da89039"))).get_Pipe(&_ret));
		return _ret;
	}
}

interface UsbInterruptInEventArgs : Windows.Devices.Usb.IUsbInterruptInEventArgs
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer InterruptData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptInEventArgs)this.asInterface(uuid("b7b04092-1418-4936-8209-299cf5605583"))).get_InterruptData(&_ret));
		return _ret;
	}
}

interface UsbInterruptInPipe : Windows.Devices.Usb.IUsbInterruptInPipe
{
extern(Windows):
	final Windows.Devices.Usb.UsbInterruptInEndpointDescriptor EndpointDescriptor()
	{
		Windows.Devices.Usb.UsbInterruptInEndpointDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptInPipe)this.asInterface(uuid("fa007116-84d7-48c7-8a3f-4c0b235f2ea6"))).get_EndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearStallAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptInPipe)this.asInterface(uuid("fa007116-84d7-48c7-8a3f-4c0b235f2ea6"))).abi_ClearStallAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDataReceived(void delegate(Windows.Devices.Usb.UsbInterruptInPipe, Windows.Devices.Usb.UsbInterruptInEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptInPipe)this.asInterface(uuid("fa007116-84d7-48c7-8a3f-4c0b235f2ea6"))).add_DataReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Usb.UsbInterruptInPipe, Windows.Devices.Usb.UsbInterruptInEventArgs), Windows.Devices.Usb.UsbInterruptInPipe, Windows.Devices.Usb.UsbInterruptInEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDataReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptInPipe)this.asInterface(uuid("fa007116-84d7-48c7-8a3f-4c0b235f2ea6"))).remove_DataReceived(token));
	}
}

interface UsbInterruptOutEndpointDescriptor : Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor
{
extern(Windows):
	final UINT32 MaxPacketSize()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor)this.asInterface(uuid("cc9fed81-10ca-4533-952d-9e278341e80f"))).get_MaxPacketSize(&_ret));
		return _ret;
	}
	final ubyte EndpointNumber()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor)this.asInterface(uuid("cc9fed81-10ca-4533-952d-9e278341e80f"))).get_EndpointNumber(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Interval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor)this.asInterface(uuid("cc9fed81-10ca-4533-952d-9e278341e80f"))).get_Interval(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterruptOutPipe Pipe()
	{
		Windows.Devices.Usb.UsbInterruptOutPipe _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor)this.asInterface(uuid("cc9fed81-10ca-4533-952d-9e278341e80f"))).get_Pipe(&_ret));
		return _ret;
	}
}

interface UsbInterruptOutPipe : Windows.Devices.Usb.IUsbInterruptOutPipe
{
extern(Windows):
	final Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor EndpointDescriptor()
	{
		Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptOutPipe)this.asInterface(uuid("e984c8a9-aaf9-49d0-b96c-f661ab4a7f95"))).get_EndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearStallAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptOutPipe)this.asInterface(uuid("e984c8a9-aaf9-49d0-b96c-f661ab4a7f95"))).abi_ClearStallAsync(&_ret));
		return _ret;
	}
	final void WriteOptions(Windows.Devices.Usb.UsbWriteOptions value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptOutPipe)this.asInterface(uuid("e984c8a9-aaf9-49d0-b96c-f661ab4a7f95"))).set_WriteOptions(value));
	}
	final Windows.Devices.Usb.UsbWriteOptions WriteOptions()
	{
		Windows.Devices.Usb.UsbWriteOptions _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptOutPipe)this.asInterface(uuid("e984c8a9-aaf9-49d0-b96c-f661ab4a7f95"))).get_WriteOptions(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream OutputStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbInterruptOutPipe)this.asInterface(uuid("e984c8a9-aaf9-49d0-b96c-f661ab4a7f95"))).get_OutputStream(&_ret));
		return _ret;
	}
}

interface UsbSetupPacket : Windows.Devices.Usb.IUsbSetupPacket
{
extern(Windows):
	final Windows.Devices.Usb.UsbControlRequestType RequestType()
	{
		Windows.Devices.Usb.UsbControlRequestType _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacket)this.asInterface(uuid("104ba132-c78f-4c51-b654-e49d02f2cb03"))).get_RequestType(&_ret));
		return _ret;
	}
	final void RequestType(Windows.Devices.Usb.UsbControlRequestType value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacket)this.asInterface(uuid("104ba132-c78f-4c51-b654-e49d02f2cb03"))).set_RequestType(value));
	}
	final ubyte Request()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacket)this.asInterface(uuid("104ba132-c78f-4c51-b654-e49d02f2cb03"))).get_Request(&_ret));
		return _ret;
	}
	final void Request(ubyte value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacket)this.asInterface(uuid("104ba132-c78f-4c51-b654-e49d02f2cb03"))).set_Request(value));
	}
	final UINT32 Value()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacket)this.asInterface(uuid("104ba132-c78f-4c51-b654-e49d02f2cb03"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacket)this.asInterface(uuid("104ba132-c78f-4c51-b654-e49d02f2cb03"))).set_Value(value));
	}
	final UINT32 Index()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacket)this.asInterface(uuid("104ba132-c78f-4c51-b654-e49d02f2cb03"))).get_Index(&_ret));
		return _ret;
	}
	final void Index(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacket)this.asInterface(uuid("104ba132-c78f-4c51-b654-e49d02f2cb03"))).set_Index(value));
	}
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacket)this.asInterface(uuid("104ba132-c78f-4c51-b654-e49d02f2cb03"))).get_Length(&_ret));
		return _ret;
	}
	final void Length(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacket)this.asInterface(uuid("104ba132-c78f-4c51-b654-e49d02f2cb03"))).set_Length(value));
	}
	static UsbSetupPacket New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(UsbSetupPacket).abi_ActivateInstance(&ret));
		return cast(UsbSetupPacket) ret;
	}
	static Windows.Devices.Usb.UsbSetupPacket New(Windows.Storage.Streams.IBuffer eightByteBuffer)
	{
		auto factory = factory!(Windows.Devices.Usb.IUsbSetupPacketFactory);
		Windows.Devices.Usb.UsbSetupPacket _ret;
		Debug.OK((cast(Windows.Devices.Usb.IUsbSetupPacketFactory)factory.asInterface(uuid("c9257d50-1b2e-4a41-a2a7-338f0cef3c14"))).abi_CreateWithEightByteBuffer(eightByteBuffer, &_ret));
		return _ret;
	}
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