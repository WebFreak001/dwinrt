module Windows.Devices.Usb;

import dwinrt;

@uuid("3c6e4846-06cf-42a9-9dc2-971c1b14b6e3")
@WinrtFactory("Windows.Devices.Usb.UsbBulkInEndpointDescriptor")
interface IUsbBulkInEndpointDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_MaxPacketSize(UINT32* return_value);
	HRESULT get_EndpointNumber(BYTE* return_value);
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
	HRESULT get_EndpointNumber(BYTE* return_value);
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
	HRESULT get_ConfigurationValue(BYTE* return_value);
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
	HRESULT get_AsByte(BYTE* return_value);
	HRESULT set_AsByte(BYTE value);
}

@uuid("0a89f216-5f9d-4874-8904-da9ad3f5528f")
@WinrtFactory("Windows.Devices.Usb.UsbDescriptor")
interface IUsbDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_Length(BYTE* return_value);
	HRESULT get_DescriptorType(BYTE* return_value);
	HRESULT abi_ReadDescriptorBuffer(Windows.Storage.Streams.IBuffer buffer);
}

@uuid("5249b992-c456-44d5-ad5e-24f5a089f63b")
@WinrtFactory("Windows.Devices.Usb.UsbDevice")
interface IUsbDevice : IInspectable, Windows.Foundation.IClosable
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

@uuid("051942f9-845e-47eb-b12a-38f2f617afe7")
@WinrtFactory("Windows.Devices.Usb.UsbDeviceClass")
interface IUsbDeviceClass : IInspectable
{
extern(Windows):
	HRESULT get_ClassCode(BYTE* return_value);
	HRESULT set_ClassCode(BYTE value);
	HRESULT get_SubclassCode(Windows.Foundation.IReference!(BYTE)* return_value);
	HRESULT set_SubclassCode(Windows.Foundation.IReference!(BYTE) value);
	HRESULT get_ProtocolCode(Windows.Foundation.IReference!(BYTE)* return_value);
	HRESULT set_ProtocolCode(Windows.Foundation.IReference!(BYTE) value);
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
	HRESULT get_InterfaceNumber(BYTE* return_value);
	HRESULT get_Descriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor)* return_value);
}

@uuid("199670c7-b7ee-4f90-8cd5-94a2e257598a")
@WinrtFactory("Windows.Devices.Usb.UsbInterfaceDescriptor")
interface IUsbInterfaceDescriptor : IInspectable
{
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
	HRESULT get_EndpointNumber(BYTE* return_value);
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
	HRESULT get_EndpointNumber(BYTE* return_value);
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
extern(Windows):
	HRESULT abi_CreateWithEightByteBuffer(Windows.Storage.Streams.IBuffer eightByteBuffer, Windows.Devices.Usb.UsbSetupPacket* return_value);
}

interface UsbBulkInEndpointDescriptor : Windows.Devices.Usb.IUsbBulkInEndpointDescriptor
{
extern(Windows):
	final UINT32 MaxPacketSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkInEndpointDescriptor).get_MaxPacketSize(&_ret));
		return _ret;
	}
	final BYTE EndpointNumber()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkInEndpointDescriptor).get_EndpointNumber(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbBulkInPipe Pipe()
	{
		Windows.Devices.Usb.UsbBulkInPipe _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkInEndpointDescriptor).get_Pipe(&_ret));
		return _ret;
	}
}

interface UsbBulkInPipe : Windows.Devices.Usb.IUsbBulkInPipe
{
extern(Windows):
	final UINT32 MaxTransferSizeBytes()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkInPipe).get_MaxTransferSizeBytes(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbBulkInEndpointDescriptor EndpointDescriptor()
	{
		Windows.Devices.Usb.UsbBulkInEndpointDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkInPipe).get_EndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearStallAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkInPipe).abi_ClearStallAsync(&_ret));
		return _ret;
	}
	final void ReadOptions(Windows.Devices.Usb.UsbReadOptions value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkInPipe).set_ReadOptions(value));
	}
	final Windows.Devices.Usb.UsbReadOptions ReadOptions()
	{
		Windows.Devices.Usb.UsbReadOptions _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkInPipe).get_ReadOptions(&_ret));
		return _ret;
	}
	final void FlushBuffer()
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkInPipe).abi_FlushBuffer());
	}
	final Windows.Storage.Streams.IInputStream InputStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkInPipe).get_InputStream(&_ret));
		return _ret;
	}
}

interface UsbBulkOutEndpointDescriptor : Windows.Devices.Usb.IUsbBulkOutEndpointDescriptor
{
extern(Windows):
	final UINT32 MaxPacketSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkOutEndpointDescriptor).get_MaxPacketSize(&_ret));
		return _ret;
	}
	final BYTE EndpointNumber()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkOutEndpointDescriptor).get_EndpointNumber(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbBulkOutPipe Pipe()
	{
		Windows.Devices.Usb.UsbBulkOutPipe _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkOutEndpointDescriptor).get_Pipe(&_ret));
		return _ret;
	}
}

interface UsbBulkOutPipe : Windows.Devices.Usb.IUsbBulkOutPipe
{
extern(Windows):
	final Windows.Devices.Usb.UsbBulkOutEndpointDescriptor EndpointDescriptor()
	{
		Windows.Devices.Usb.UsbBulkOutEndpointDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkOutPipe).get_EndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearStallAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkOutPipe).abi_ClearStallAsync(&_ret));
		return _ret;
	}
	final void WriteOptions(Windows.Devices.Usb.UsbWriteOptions value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkOutPipe).set_WriteOptions(value));
	}
	final Windows.Devices.Usb.UsbWriteOptions WriteOptions()
	{
		Windows.Devices.Usb.UsbWriteOptions _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkOutPipe).get_WriteOptions(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream OutputStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbBulkOutPipe).get_OutputStream(&_ret));
		return _ret;
	}
}

interface UsbConfiguration : Windows.Devices.Usb.IUsbConfiguration
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterface) UsbInterfaces()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterface) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbConfiguration).get_UsbInterfaces(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbConfigurationDescriptor ConfigurationDescriptor()
	{
		Windows.Devices.Usb.UsbConfigurationDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbConfiguration).get_ConfigurationDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) Descriptors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbConfiguration).get_Descriptors(&_ret));
		return _ret;
	}
}

interface UsbConfigurationDescriptor : Windows.Devices.Usb.IUsbConfigurationDescriptor
{
extern(Windows):
	final BYTE ConfigurationValue()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbConfigurationDescriptor).get_ConfigurationValue(&_ret));
		return _ret;
	}
	final UINT32 MaxPowerMilliamps()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbConfigurationDescriptor).get_MaxPowerMilliamps(&_ret));
		return _ret;
	}
	final bool SelfPowered()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbConfigurationDescriptor).get_SelfPowered(&_ret));
		return _ret;
	}
	final bool RemoteWakeup()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbConfigurationDescriptor).get_RemoteWakeup(&_ret));
		return _ret;
	}
}

interface UsbControlRequestType : Windows.Devices.Usb.IUsbControlRequestType
{
extern(Windows):
	final Windows.Devices.Usb.UsbTransferDirection Direction()
	{
		Windows.Devices.Usb.UsbTransferDirection _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbControlRequestType).get_Direction(&_ret));
		return _ret;
	}
	final void Direction(Windows.Devices.Usb.UsbTransferDirection value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbControlRequestType).set_Direction(value));
	}
	final Windows.Devices.Usb.UsbControlTransferType ControlTransferType()
	{
		Windows.Devices.Usb.UsbControlTransferType _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbControlRequestType).get_ControlTransferType(&_ret));
		return _ret;
	}
	final void ControlTransferType(Windows.Devices.Usb.UsbControlTransferType value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbControlRequestType).set_ControlTransferType(value));
	}
	final Windows.Devices.Usb.UsbControlRecipient Recipient()
	{
		Windows.Devices.Usb.UsbControlRecipient _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbControlRequestType).get_Recipient(&_ret));
		return _ret;
	}
	final void Recipient(Windows.Devices.Usb.UsbControlRecipient value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbControlRequestType).set_Recipient(value));
	}
	final BYTE AsByte()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbControlRequestType).get_AsByte(&_ret));
		return _ret;
	}
	final void AsByte(BYTE value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbControlRequestType).set_AsByte(value));
	}
}

interface UsbDescriptor : Windows.Devices.Usb.IUsbDescriptor
{
extern(Windows):
	final BYTE Length()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDescriptor).get_Length(&_ret));
		return _ret;
	}
	final BYTE DescriptorType()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDescriptor).get_DescriptorType(&_ret));
		return _ret;
	}
	final void ReadDescriptorBuffer(Windows.Storage.Streams.IBuffer buffer)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDescriptor).abi_ReadDescriptorBuffer(buffer));
	}
}

interface UsbDevice : Windows.Devices.Usb.IUsbDevice, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(UINT32) SendControlOutTransferAsync(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDevice).abi_SendControlOutTransferAsync(setupPacket, buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SendControlOutTransferAsyncNoBuffer(Windows.Devices.Usb.UsbSetupPacket setupPacket)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDevice).abi_SendControlOutTransferAsyncNoBuffer(setupPacket, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) SendControlInTransferAsync(Windows.Devices.Usb.UsbSetupPacket setupPacket, Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDevice).abi_SendControlInTransferAsync(setupPacket, buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) SendControlInTransferAsyncNoBuffer(Windows.Devices.Usb.UsbSetupPacket setupPacket)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDevice).abi_SendControlInTransferAsyncNoBuffer(setupPacket, &_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterface DefaultInterface()
	{
		Windows.Devices.Usb.UsbInterface _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDevice).get_DefaultInterface(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbDeviceDescriptor DeviceDescriptor()
	{
		Windows.Devices.Usb.UsbDeviceDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDevice).get_DeviceDescriptor(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbConfiguration Configuration()
	{
		Windows.Devices.Usb.UsbConfiguration _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDevice).get_Configuration(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface UsbDeviceClass : Windows.Devices.Usb.IUsbDeviceClass
{
extern(Windows):
	final BYTE ClassCode()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceClass).get_ClassCode(&_ret));
		return _ret;
	}
	final void ClassCode(BYTE value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceClass).set_ClassCode(value));
	}
	final Windows.Foundation.IReference!(BYTE) SubclassCode()
	{
		Windows.Foundation.IReference!(BYTE) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceClass).get_SubclassCode(&_ret));
		return _ret;
	}
	final void SubclassCode(Windows.Foundation.IReference!(BYTE) value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceClass).set_SubclassCode(value));
	}
	final Windows.Foundation.IReference!(BYTE) ProtocolCode()
	{
		Windows.Foundation.IReference!(BYTE) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceClass).get_ProtocolCode(&_ret));
		return _ret;
	}
	final void ProtocolCode(Windows.Foundation.IReference!(BYTE) value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceClass).set_ProtocolCode(value));
	}
}

interface UsbDeviceClasses : Windows.Devices.Usb.IUsbDeviceClasses
{
}

interface UsbDeviceDescriptor : Windows.Devices.Usb.IUsbDeviceDescriptor
{
extern(Windows):
	final UINT32 BcdUsb()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceDescriptor).get_BcdUsb(&_ret));
		return _ret;
	}
	final BYTE MaxPacketSize0()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceDescriptor).get_MaxPacketSize0(&_ret));
		return _ret;
	}
	final UINT32 VendorId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceDescriptor).get_VendorId(&_ret));
		return _ret;
	}
	final UINT32 ProductId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceDescriptor).get_ProductId(&_ret));
		return _ret;
	}
	final UINT32 BcdDeviceRevision()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceDescriptor).get_BcdDeviceRevision(&_ret));
		return _ret;
	}
	final BYTE NumberOfConfigurations()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbDeviceDescriptor).get_NumberOfConfigurations(&_ret));
		return _ret;
	}
}

interface UsbEndpointDescriptor : Windows.Devices.Usb.IUsbEndpointDescriptor
{
extern(Windows):
	final BYTE EndpointNumber()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbEndpointDescriptor).get_EndpointNumber(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbTransferDirection Direction()
	{
		Windows.Devices.Usb.UsbTransferDirection _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbEndpointDescriptor).get_Direction(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbEndpointType EndpointType()
	{
		Windows.Devices.Usb.UsbEndpointType _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbEndpointDescriptor).get_EndpointType(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbBulkInEndpointDescriptor AsBulkInEndpointDescriptor()
	{
		Windows.Devices.Usb.UsbBulkInEndpointDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbEndpointDescriptor).get_AsBulkInEndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterruptInEndpointDescriptor AsInterruptInEndpointDescriptor()
	{
		Windows.Devices.Usb.UsbInterruptInEndpointDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbEndpointDescriptor).get_AsInterruptInEndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbBulkOutEndpointDescriptor AsBulkOutEndpointDescriptor()
	{
		Windows.Devices.Usb.UsbBulkOutEndpointDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbEndpointDescriptor).get_AsBulkOutEndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor AsInterruptOutEndpointDescriptor()
	{
		Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbEndpointDescriptor).get_AsInterruptOutEndpointDescriptor(&_ret));
		return _ret;
	}
}

interface UsbInterface : Windows.Devices.Usb.IUsbInterface
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInPipe) BulkInPipes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInPipe) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterface).get_BulkInPipes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInPipe) InterruptInPipes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInPipe) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterface).get_InterruptInPipes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutPipe) BulkOutPipes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutPipe) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterface).get_BulkOutPipes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutPipe) InterruptOutPipes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutPipe) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterface).get_InterruptOutPipes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterfaceSetting) InterfaceSettings()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterfaceSetting) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterface).get_InterfaceSettings(&_ret));
		return _ret;
	}
	final BYTE InterfaceNumber()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterface).get_InterfaceNumber(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) Descriptors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterface).get_Descriptors(&_ret));
		return _ret;
	}
}

interface UsbInterfaceDescriptor : Windows.Devices.Usb.IUsbInterfaceDescriptor
{
extern(Windows):
	final BYTE ClassCode()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceDescriptor).get_ClassCode(&_ret));
		return _ret;
	}
	final BYTE SubclassCode()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceDescriptor).get_SubclassCode(&_ret));
		return _ret;
	}
	final BYTE ProtocolCode()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceDescriptor).get_ProtocolCode(&_ret));
		return _ret;
	}
	final BYTE AlternateSettingNumber()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceDescriptor).get_AlternateSettingNumber(&_ret));
		return _ret;
	}
	final BYTE InterfaceNumber()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceDescriptor).get_InterfaceNumber(&_ret));
		return _ret;
	}
}

interface UsbInterfaceSetting : Windows.Devices.Usb.IUsbInterfaceSetting
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInEndpointDescriptor) BulkInEndpoints()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkInEndpointDescriptor) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceSetting).get_BulkInEndpoints(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInEndpointDescriptor) InterruptInEndpoints()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptInEndpointDescriptor) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceSetting).get_InterruptInEndpoints(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutEndpointDescriptor) BulkOutEndpoints()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbBulkOutEndpointDescriptor) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceSetting).get_BulkOutEndpoints(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor) InterruptOutEndpoints()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceSetting).get_InterruptOutEndpoints(&_ret));
		return _ret;
	}
	final bool Selected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceSetting).get_Selected(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SelectSettingAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceSetting).abi_SelectSettingAsync(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterfaceDescriptor InterfaceDescriptor()
	{
		Windows.Devices.Usb.UsbInterfaceDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceSetting).get_InterfaceDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) Descriptors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Usb.UsbDescriptor) _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterfaceSetting).get_Descriptors(&_ret));
		return _ret;
	}
}

interface UsbInterruptInEndpointDescriptor : Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor
{
extern(Windows):
	final UINT32 MaxPacketSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor).get_MaxPacketSize(&_ret));
		return _ret;
	}
	final BYTE EndpointNumber()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor).get_EndpointNumber(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Interval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor).get_Interval(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterruptInPipe Pipe()
	{
		Windows.Devices.Usb.UsbInterruptInPipe _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptInEndpointDescriptor).get_Pipe(&_ret));
		return _ret;
	}
}

interface UsbInterruptInEventArgs : Windows.Devices.Usb.IUsbInterruptInEventArgs
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer InterruptData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptInEventArgs).get_InterruptData(&_ret));
		return _ret;
	}
}

interface UsbInterruptInPipe : Windows.Devices.Usb.IUsbInterruptInPipe
{
extern(Windows):
	final Windows.Devices.Usb.UsbInterruptInEndpointDescriptor EndpointDescriptor()
	{
		Windows.Devices.Usb.UsbInterruptInEndpointDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptInPipe).get_EndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearStallAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptInPipe).abi_ClearStallAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnDataReceived(void delegate(Windows.Devices.Usb.UsbInterruptInPipe, Windows.Devices.Usb.UsbInterruptInEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DataReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Usb.UsbInterruptInPipe, Windows.Devices.Usb.UsbInterruptInEventArgs), Windows.Devices.Usb.UsbInterruptInPipe, Windows.Devices.Usb.UsbInterruptInEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDataReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_DataReceived(token));
	}
}

interface UsbInterruptOutEndpointDescriptor : Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor
{
extern(Windows):
	final UINT32 MaxPacketSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor).get_MaxPacketSize(&_ret));
		return _ret;
	}
	final BYTE EndpointNumber()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor).get_EndpointNumber(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Interval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor).get_Interval(&_ret));
		return _ret;
	}
	final Windows.Devices.Usb.UsbInterruptOutPipe Pipe()
	{
		Windows.Devices.Usb.UsbInterruptOutPipe _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptOutEndpointDescriptor).get_Pipe(&_ret));
		return _ret;
	}
}

interface UsbInterruptOutPipe : Windows.Devices.Usb.IUsbInterruptOutPipe
{
extern(Windows):
	final Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor EndpointDescriptor()
	{
		Windows.Devices.Usb.UsbInterruptOutEndpointDescriptor _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptOutPipe).get_EndpointDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearStallAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptOutPipe).abi_ClearStallAsync(&_ret));
		return _ret;
	}
	final void WriteOptions(Windows.Devices.Usb.UsbWriteOptions value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptOutPipe).set_WriteOptions(value));
	}
	final Windows.Devices.Usb.UsbWriteOptions WriteOptions()
	{
		Windows.Devices.Usb.UsbWriteOptions _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptOutPipe).get_WriteOptions(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream OutputStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbInterruptOutPipe).get_OutputStream(&_ret));
		return _ret;
	}
}

interface UsbSetupPacket : Windows.Devices.Usb.IUsbSetupPacket
{
extern(Windows):
	final Windows.Devices.Usb.UsbControlRequestType RequestType()
	{
		Windows.Devices.Usb.UsbControlRequestType _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbSetupPacket).get_RequestType(&_ret));
		return _ret;
	}
	final void RequestType(Windows.Devices.Usb.UsbControlRequestType value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbSetupPacket).set_RequestType(value));
	}
	final BYTE Request()
	{
		BYTE _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbSetupPacket).get_Request(&_ret));
		return _ret;
	}
	final void Request(BYTE value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbSetupPacket).set_Request(value));
	}
	final UINT32 Value()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbSetupPacket).get_Value(&_ret));
		return _ret;
	}
	final void Value(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbSetupPacket).set_Value(value));
	}
	final UINT32 Index()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbSetupPacket).get_Index(&_ret));
		return _ret;
	}
	final void Index(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbSetupPacket).set_Index(value));
	}
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbSetupPacket).get_Length(&_ret));
		return _ret;
	}
	final void Length(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Usb.IUsbSetupPacket).set_Length(value));
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