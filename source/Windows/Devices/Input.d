module Windows.Devices.Input;

import dwinrt;

@uuid("3a3f9b56-6798-4bbc-833e-0f34b17c65ff")
@WinrtFactory("Windows.Devices.Input.KeyboardCapabilities")
interface IKeyboardCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeyboardPresent(INT32* return_value);
}

@uuid("bca5e023-7dd9-4b6b-9a92-55d43cb38f73")
@WinrtFactory("Windows.Devices.Input.MouseCapabilities")
interface IMouseCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MousePresent(INT32* return_value);
	HRESULT get_VerticalWheelPresent(INT32* return_value);
	HRESULT get_HorizontalWheelPresent(INT32* return_value);
	HRESULT get_SwapButtons(INT32* return_value);
	HRESULT get_NumberOfButtons(UINT32* return_value);
}

@uuid("88edf458-f2c8-49f4-be1f-c256b388bc11")
@WinrtFactory("Windows.Devices.Input.MouseDevice")
interface IMouseDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_MouseMoved(Windows.Foundation.TypedEventHandler!(Windows.Devices.Input.MouseDevice*,Windows.Devices.Input.MouseEventArgs*) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_MouseMoved(EventRegistrationToken cookie);
}

@uuid("484a9045-6d70-49db-8e68-46ffbd17d38d")
@WinrtFactory("Windows.Devices.Input.MouseDevice")
interface IMouseDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.Devices.Input.MouseDevice* return_mouseDevice);
}

@uuid("f625aa5d-2354-4cc7-9230-96941c969fde")
@WinrtFactory("Windows.Devices.Input.MouseEventArgs")
interface IMouseEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MouseDelta(Windows.Devices.Input.MouseDelta* return_value);
}

@uuid("93c9bafc-ebcb-467e-82c6-276feae36b5a")
@WinrtFactory("Windows.Devices.Input.PointerDevice")
interface IPointerDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointerDeviceType(Windows.Devices.Input.PointerDeviceType* return_value);
	HRESULT get_IsIntegrated(bool* return_value);
	HRESULT get_MaxContacts(UINT32* return_value);
	HRESULT get_PhysicalDeviceRect(Windows.Foundation.Rect* return_value);
	HRESULT get_ScreenRect(Windows.Foundation.Rect* return_value);
	HRESULT get_SupportedUsages(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Input.PointerDeviceUsage)* return_value);
}

@uuid("f8a6d2a0-c484-489f-ae3e-30d2ee1ffd3e")
@WinrtFactory("Windows.Devices.Input.PointerDevice")
interface IPointerDevice2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxPointersWithZDistance(UINT32* return_value);
}

@uuid("d8b89aa1-d1c6-416e-bd8d-5790914dc563")
@WinrtFactory("Windows.Devices.Input.PointerDevice")
interface IPointerDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetPointerDevice(UINT32 pointerId, Windows.Devices.Input.PointerDevice* return_pointerDevice);
	HRESULT abi_GetPointerDevices(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Input.PointerDevice)* return_pointerDevices);
}

@uuid("20dd55f9-13f1-46c8-9285-2c05fa3eda6f")
@WinrtFactory("Windows.Devices.Input.TouchCapabilities")
interface ITouchCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TouchPresent(INT32* return_value);
	HRESULT get_Contacts(UINT32* return_value);
}

interface KeyboardCapabilities
{
}

interface MouseCapabilities
{
}

interface MouseDevice
{
}

interface MouseEventArgs
{
}

interface PointerDevice
{
}

interface TouchCapabilities
{
}

enum PointerDeviceType
{
	Touch = 0,
	Pen = 1,
	Mouse = 2
}