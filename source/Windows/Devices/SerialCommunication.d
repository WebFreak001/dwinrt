module Windows.Devices.SerialCommunication;

import dwinrt;

@uuid("fcc6bf59-1283-4d8a-bfdf-566b33ddb28f")
@WinrtFactory("Windows.Devices.SerialCommunication.ErrorReceivedEventArgs")
interface IErrorReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Devices.SerialCommunication.SerialError* return_value);
}

@uuid("a2bf1db0-fc9c-4607-93d0-fa5e8343ee22")
@WinrtFactory("Windows.Devices.SerialCommunication.PinChangedEventArgs")
interface IPinChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PinChange(Windows.Devices.SerialCommunication.SerialPinChange* return_value);
}

@uuid("e187ccc6-2210-414f-b65a-f5553a03372a")
@WinrtFactory("Windows.Devices.SerialCommunication.SerialDevice")
interface ISerialDevice_Base : IInspectable
{
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
@uuid("e187ccc6-2210-414f-b65a-f5553a03372a")
@WinrtFactory("Windows.Devices.SerialCommunication.SerialDevice")
interface ISerialDevice : ISerialDevice_Base, Windows.Foundation.IClosable {}

@uuid("058c4a70-0836-4993-ae1a-b61ae3be056b")
@WinrtFactory("Windows.Devices.SerialCommunication.SerialDevice")
interface ISerialDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_GetDeviceSelectorFromPortName(HSTRING portName, HSTRING* return_result);
	HRESULT abi_GetDeviceSelectorFromUsbVidPid(UINT16 vendorId, UINT16 productId, HSTRING* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.SerialCommunication.SerialDevice)* return_result);
}

interface ErrorReceivedEventArgs : Windows.Devices.SerialCommunication.IErrorReceivedEventArgs
{
extern(Windows):
	final Windows.Devices.SerialCommunication.SerialError Error()
	{
		Windows.Devices.SerialCommunication.SerialError _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.IErrorReceivedEventArgs)this.asInterface(uuid("fcc6bf59-1283-4d8a-bfdf-566b33ddb28f"))).get_Error(&_ret));
		return _ret;
	}
}

interface PinChangedEventArgs : Windows.Devices.SerialCommunication.IPinChangedEventArgs
{
extern(Windows):
	final Windows.Devices.SerialCommunication.SerialPinChange PinChange()
	{
		Windows.Devices.SerialCommunication.SerialPinChange _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.IPinChangedEventArgs)this.asInterface(uuid("a2bf1db0-fc9c-4607-93d0-fa5e8343ee22"))).get_PinChange(&_ret));
		return _ret;
	}
}

interface SerialDevice : Windows.Devices.SerialCommunication.ISerialDevice, Windows.Foundation.IClosable
{
extern(Windows):
	final UINT32 BaudRate()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_BaudRate(&_ret));
		return _ret;
	}
	final void BaudRate(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).set_BaudRate(value));
	}
	final bool BreakSignalState()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_BreakSignalState(&_ret));
		return _ret;
	}
	final void BreakSignalState(bool value)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).set_BreakSignalState(value));
	}
	final UINT32 BytesReceived()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_BytesReceived(&_ret));
		return _ret;
	}
	final bool CarrierDetectState()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_CarrierDetectState(&_ret));
		return _ret;
	}
	final bool ClearToSendState()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_ClearToSendState(&_ret));
		return _ret;
	}
	final UINT16 DataBits()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_DataBits(&_ret));
		return _ret;
	}
	final void DataBits(UINT16 value)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).set_DataBits(value));
	}
	final bool DataSetReadyState()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_DataSetReadyState(&_ret));
		return _ret;
	}
	final Windows.Devices.SerialCommunication.SerialHandshake Handshake()
	{
		Windows.Devices.SerialCommunication.SerialHandshake _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_Handshake(&_ret));
		return _ret;
	}
	final void Handshake(Windows.Devices.SerialCommunication.SerialHandshake value)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).set_Handshake(value));
	}
	final bool IsDataTerminalReadyEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_IsDataTerminalReadyEnabled(&_ret));
		return _ret;
	}
	final void IsDataTerminalReadyEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).set_IsDataTerminalReadyEnabled(value));
	}
	final bool IsRequestToSendEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_IsRequestToSendEnabled(&_ret));
		return _ret;
	}
	final void IsRequestToSendEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).set_IsRequestToSendEnabled(value));
	}
	final Windows.Devices.SerialCommunication.SerialParity Parity()
	{
		Windows.Devices.SerialCommunication.SerialParity _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_Parity(&_ret));
		return _ret;
	}
	final void Parity(Windows.Devices.SerialCommunication.SerialParity value)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).set_Parity(value));
	}
	final HSTRING PortName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_PortName(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan ReadTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_ReadTimeout(&_ret));
		return _ret;
	}
	final void ReadTimeout(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).set_ReadTimeout(value));
	}
	final Windows.Devices.SerialCommunication.SerialStopBitCount StopBits()
	{
		Windows.Devices.SerialCommunication.SerialStopBitCount _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_StopBits(&_ret));
		return _ret;
	}
	final void StopBits(Windows.Devices.SerialCommunication.SerialStopBitCount value)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).set_StopBits(value));
	}
	final UINT16 UsbVendorId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_UsbVendorId(&_ret));
		return _ret;
	}
	final UINT16 UsbProductId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_UsbProductId(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan WriteTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_WriteTimeout(&_ret));
		return _ret;
	}
	final void WriteTimeout(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).set_WriteTimeout(value));
	}
	final Windows.Storage.Streams.IInputStream InputStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_InputStream(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream OutputStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).get_OutputStream(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnErrorReceived(void delegate(Windows.Devices.SerialCommunication.SerialDevice, Windows.Devices.SerialCommunication.ErrorReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).add_ErrorReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.SerialCommunication.SerialDevice, Windows.Devices.SerialCommunication.ErrorReceivedEventArgs), Windows.Devices.SerialCommunication.SerialDevice, Windows.Devices.SerialCommunication.ErrorReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeErrorReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).remove_ErrorReceived(token));
	}
	final EventRegistrationToken OnPinChanged(void delegate(Windows.Devices.SerialCommunication.SerialDevice, Windows.Devices.SerialCommunication.PinChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).add_PinChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.SerialCommunication.SerialDevice, Windows.Devices.SerialCommunication.PinChangedEventArgs), Windows.Devices.SerialCommunication.SerialDevice, Windows.Devices.SerialCommunication.PinChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePinChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.SerialCommunication.ISerialDevice)this.asInterface(uuid("e187ccc6-2210-414f-b65a-f5553a03372a"))).remove_PinChanged(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.SerialCommunication.ISerialDeviceStatics _staticInstance;
	public static Windows.Devices.SerialCommunication.ISerialDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.SerialCommunication.ISerialDeviceStatics);
		return _staticInstance;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelectorFromPortName(HSTRING portName)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelectorFromPortName(portName, &_ret));
		return _ret;
	}
	alias GetDeviceSelector = GetDeviceSelectorFromPortName;
	static HSTRING GetDeviceSelectorFromUsbVidPid(UINT16 vendorId, UINT16 productId)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelectorFromUsbVidPid(vendorId, productId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.SerialCommunication.SerialDevice) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.SerialCommunication.SerialDevice) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
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