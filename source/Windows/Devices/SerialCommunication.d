module Windows.Devices.SerialCommunication;

import dwinrt;

@uuid("fcc6bf59-1283-4d8a-bfdf-566b33ddb28f")
@WinrtFactory("Windows.Devices.SerialCommunication.ErrorReceivedEventArgs")
interface IErrorReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Error(Windows.Devices.SerialCommunication.SerialError* return_value);
}

@uuid("a2bf1db0-fc9c-4607-93d0-fa5e8343ee22")
@WinrtFactory("Windows.Devices.SerialCommunication.PinChangedEventArgs")
interface IPinChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PinChange(Windows.Devices.SerialCommunication.SerialPinChange* return_value);
}

@uuid("e187ccc6-2210-414f-b65a-f5553a03372a")
@WinrtFactory("Windows.Devices.SerialCommunication.SerialDevice")
interface ISerialDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BaudRate(UINT32* return_value);
	HRESULT set_BaudRate(UINT32 value);
	HRESULT get_BreakSignalState(bool* return_value);
	HRESULT set_BreakSignalState(bool value);
	HRESULT get_BytesReceived(UINT32* return_value);
	HRESULT get_CarrierDetectState(bool* return_value);
	HRESULT get_ClearToSendState(bool* return_value);
	HRESULT get_DataBits(UINT16* return_value);
	HRESULT set_DataBits(UINT16 value);
	HRESULT get_DataSetReadyState(bool* return_value);
	HRESULT get_Handshake(Windows.Devices.SerialCommunication.SerialHandshake* return_value);
	HRESULT set_Handshake(Windows.Devices.SerialCommunication.SerialHandshake value);
	HRESULT get_IsDataTerminalReadyEnabled(bool* return_value);
	HRESULT set_IsDataTerminalReadyEnabled(bool value);
	HRESULT get_IsRequestToSendEnabled(bool* return_value);
	HRESULT set_IsRequestToSendEnabled(bool value);
	HRESULT get_Parity(Windows.Devices.SerialCommunication.SerialParity* return_value);
	HRESULT set_Parity(Windows.Devices.SerialCommunication.SerialParity value);
	HRESULT get_PortName(HSTRING* return_value);
	HRESULT get_ReadTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_ReadTimeout(Windows.Foundation.TimeSpan value);
	HRESULT get_StopBits(Windows.Devices.SerialCommunication.SerialStopBitCount* return_value);
	HRESULT set_StopBits(Windows.Devices.SerialCommunication.SerialStopBitCount value);
	HRESULT get_UsbVendorId(UINT16* return_value);
	HRESULT get_UsbProductId(UINT16* return_value);
	HRESULT get_WriteTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_WriteTimeout(Windows.Foundation.TimeSpan value);
	HRESULT get_InputStream(Windows.Storage.Streams.IInputStream* return_value);
	HRESULT get_OutputStream(Windows.Storage.Streams.IOutputStream* return_value);
	HRESULT add_ErrorReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.SerialCommunication.SerialDevice, Windows.Devices.SerialCommunication.ErrorReceivedEventArgs) reportHandler, EventRegistrationToken* return_token);
	HRESULT remove_ErrorReceived(EventRegistrationToken token);
	HRESULT add_PinChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.SerialCommunication.SerialDevice, Windows.Devices.SerialCommunication.PinChangedEventArgs) reportHandler, EventRegistrationToken* return_token);
	HRESULT remove_PinChanged(EventRegistrationToken token);
}

@uuid("058c4a70-0836-4993-ae1a-b61ae3be056b")
@WinrtFactory("Windows.Devices.SerialCommunication.SerialDevice")
interface ISerialDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_GetDeviceSelectorFromPortName(HSTRING portName, HSTRING* return_result);
	HRESULT abi_GetDeviceSelectorFromUsbVidPid(UINT16 vendorId, UINT16 productId, HSTRING* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.SerialCommunication.SerialDevice)* return_result);
}

interface ErrorReceivedEventArgs : Windows.Devices.SerialCommunication.IErrorReceivedEventArgs
{
}

interface PinChangedEventArgs : Windows.Devices.SerialCommunication.IPinChangedEventArgs
{
}

interface SerialDevice : Windows.Devices.SerialCommunication.ISerialDevice, Windows.Foundation.IClosable
{
}

enum SerialError
{
	Frame = 0,
	BufferOverrun = 1,
	ReceiveFull = 2,
	ReceiveParity = 3,
	TransmitFull = 4
}

enum SerialHandshake
{
	None = 0,
	RequestToSend = 1,
	XOnXOff = 2,
	RequestToSendXOnXOff = 3
}

enum SerialParity
{
	None = 0,
	Odd = 1,
	Even = 2,
	Mark = 3,
	Space = 4
}

enum SerialPinChange
{
	BreakSignal = 0,
	CarrierDetect = 1,
	ClearToSend = 2,
	DataSetReady = 3,
	RingIndicator = 4
}

enum SerialStopBitCount
{
	One = 0,
	OnePointFive = 1,
	Two = 2
}