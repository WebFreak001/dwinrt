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
}

interface PrintSchema : Windows.Devices.Printers.IPrintSchema
{
}