module Windows.Devices.Printers;

import dwinrt;

@uuid("041c3d19-9713-42a2-9813-7dc3337428d3")
@WinrtFactory("Windows.Devices.Printers.Print3DDevice")
interface IPrint3DDevice : IInspectable
{
extern(Windows):
	HRESULT get_PrintSchema(Windows.Devices.Printers.PrintSchema* return_value);
}

@uuid("fde3620a-67cd-41b7-a344-5150a1fd75b5")
@WinrtFactory("Windows.Devices.Printers.Print3DDevice")
interface IPrint3DDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Printers.Print3DDevice)* return_operation);
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
}

@uuid("c2b98316-26b8-4bfb-8138-9f962c22a35b")
@WinrtFactory("Windows.Devices.Printers.PrintSchema")
interface IPrintSchema : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultPrintTicketAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType)* return_operation);
	HRESULT abi_GetCapabilitiesAsync(const Windows.Storage.Streams.IRandomAccessStreamWithContentType rainTicket, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType)* return_operation);
	HRESULT abi_MergeAndValidateWithDefaultPrintTicketAsync(Windows.Storage.Streams.IRandomAccessStreamWithContentType deltaTicket, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType)* return_operation);
}

interface Print3DDevice : Windows.Devices.Printers.IPrint3DDevice
{
extern(Windows):
	final Windows.Devices.Printers.PrintSchema PrintSchema()
	{
		Windows.Devices.Printers.PrintSchema _ret;
		Debug.OK((cast(Windows.Devices.Printers.IPrint3DDevice)this.asInterface(uuid("041c3d19-9713-42a2-9813-7dc3337428d3"))).get_PrintSchema(&_ret));
		return _ret;
	}

	private static Windows.Devices.Printers.IPrint3DDeviceStatics _staticInstance;
	public static Windows.Devices.Printers.IPrint3DDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Printers.IPrint3DDeviceStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Printers.Print3DDevice) FromIdAsync(wstring deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Printers.Print3DDevice) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(hstring(deviceId).handle, &_ret));
		return _ret;
	}
	static wstring GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return hstring(_ret).d_str;
	}
}

interface PrintSchema : Windows.Devices.Printers.IPrintSchema
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) GetDefaultPrintTicketAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) _ret;
		Debug.OK((cast(Windows.Devices.Printers.IPrintSchema)this.asInterface(uuid("c2b98316-26b8-4bfb-8138-9f962c22a35b"))).abi_GetDefaultPrintTicketAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) GetCapabilitiesAsync(const Windows.Storage.Streams.IRandomAccessStreamWithContentType rainTicket)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) _ret;
		Debug.OK((cast(Windows.Devices.Printers.IPrintSchema)this.asInterface(uuid("c2b98316-26b8-4bfb-8138-9f962c22a35b"))).abi_GetCapabilitiesAsync(rainTicket, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) MergeAndValidateWithDefaultPrintTicketAsync(Windows.Storage.Streams.IRandomAccessStreamWithContentType deltaTicket)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) _ret;
		Debug.OK((cast(Windows.Devices.Printers.IPrintSchema)this.asInterface(uuid("c2b98316-26b8-4bfb-8138-9f962c22a35b"))).abi_MergeAndValidateWithDefaultPrintTicketAsync(deltaTicket, &_ret));
		return _ret;
	}
}