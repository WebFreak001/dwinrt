module Windows.Devices.Input;

import dwinrt;

struct MouseDelta
{
	INT32 X;
	INT32 Y;
}

struct PointerDeviceUsage
{
	UINT32 UsagePage;
	UINT32 Usage;
	INT32 MinLogical;
	INT32 MaxLogical;
	INT32 MinPhysical;
	INT32 MaxPhysical;
	UINT32 Unit;
	float PhysicalMultiplier;
}

@uuid("3a3f9b56-6798-4bbc-833e-0f34b17c65ff")
@WinrtFactory("Windows.Devices.Input.KeyboardCapabilities")
interface IKeyboardCapabilities : IInspectable
{
extern(Windows):
	HRESULT get_KeyboardPresent(INT32* return_value);
}

@uuid("bca5e023-7dd9-4b6b-9a92-55d43cb38f73")
@WinrtFactory("Windows.Devices.Input.MouseCapabilities")
interface IMouseCapabilities : IInspectable
{
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
extern(Windows):
	HRESULT add_MouseMoved(Windows.Foundation.TypedEventHandler!(Windows.Devices.Input.MouseDevice, Windows.Devices.Input.MouseEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_MouseMoved(EventRegistrationToken cookie);
}

@uuid("484a9045-6d70-49db-8e68-46ffbd17d38d")
@WinrtFactory("Windows.Devices.Input.MouseDevice")
interface IMouseDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.Devices.Input.MouseDevice* return_mouseDevice);
}

@uuid("f625aa5d-2354-4cc7-9230-96941c969fde")
@WinrtFactory("Windows.Devices.Input.MouseEventArgs")
interface IMouseEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_MouseDelta(Windows.Devices.Input.MouseDelta* return_value);
}

@uuid("93c9bafc-ebcb-467e-82c6-276feae36b5a")
@WinrtFactory("Windows.Devices.Input.PointerDevice")
interface IPointerDevice : IInspectable
{
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
extern(Windows):
	HRESULT get_MaxPointersWithZDistance(UINT32* return_value);
}

@uuid("d8b89aa1-d1c6-416e-bd8d-5790914dc563")
@WinrtFactory("Windows.Devices.Input.PointerDevice")
interface IPointerDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetPointerDevice(UINT32 pointerId, Windows.Devices.Input.PointerDevice* return_pointerDevice);
	HRESULT abi_GetPointerDevices(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Input.PointerDevice)* return_pointerDevices);
}

@uuid("20dd55f9-13f1-46c8-9285-2c05fa3eda6f")
@WinrtFactory("Windows.Devices.Input.TouchCapabilities")
interface ITouchCapabilities : IInspectable
{
extern(Windows):
	HRESULT get_TouchPresent(INT32* return_value);
	HRESULT get_Contacts(UINT32* return_value);
}

interface KeyboardCapabilities : Windows.Devices.Input.IKeyboardCapabilities
{
extern(Windows):
	final INT32 KeyboardPresent()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IKeyboardCapabilities).get_KeyboardPresent(&_ret));
		return _ret;
	}
	static KeyboardCapabilities New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(KeyboardCapabilities).abi_ActivateInstance(&ret));
		return ret.as!(KeyboardCapabilities);
	}
}

interface MouseCapabilities : Windows.Devices.Input.IMouseCapabilities
{
extern(Windows):
	final INT32 MousePresent()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IMouseCapabilities).get_MousePresent(&_ret));
		return _ret;
	}
	final INT32 VerticalWheelPresent()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IMouseCapabilities).get_VerticalWheelPresent(&_ret));
		return _ret;
	}
	final INT32 HorizontalWheelPresent()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IMouseCapabilities).get_HorizontalWheelPresent(&_ret));
		return _ret;
	}
	final INT32 SwapButtons()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IMouseCapabilities).get_SwapButtons(&_ret));
		return _ret;
	}
	final UINT32 NumberOfButtons()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IMouseCapabilities).get_NumberOfButtons(&_ret));
		return _ret;
	}
	static MouseCapabilities New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MouseCapabilities).abi_ActivateInstance(&ret));
		return ret.as!(MouseCapabilities);
	}
}

interface MouseDevice : Windows.Devices.Input.IMouseDevice
{
extern(Windows):
	final EventRegistrationToken OnMouseMoved(void delegate(Windows.Devices.Input.MouseDevice, Windows.Devices.Input.MouseEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Input.IMouseDevice).add_MouseMoved(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Input.MouseDevice, Windows.Devices.Input.MouseEventArgs), Windows.Devices.Input.MouseDevice, Windows.Devices.Input.MouseEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMouseMoved(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.Devices.Input.IMouseDevice).remove_MouseMoved(cookie));
	}

	private static Windows.Devices.Input.IMouseDeviceStatics _staticInstance;
	public static Windows.Devices.Input.IMouseDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Input.IMouseDeviceStatics);
		return _staticInstance;
	}
	static Windows.Devices.Input.MouseDevice GetForCurrentView()
	{
		Windows.Devices.Input.MouseDevice _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Input.IMouseDeviceStatics).abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface MouseEventArgs : Windows.Devices.Input.IMouseEventArgs
{
extern(Windows):
	final Windows.Devices.Input.MouseDelta MouseDelta()
	{
		Windows.Devices.Input.MouseDelta _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IMouseEventArgs).get_MouseDelta(&_ret));
		return _ret;
	}
}

interface PointerDevice : Windows.Devices.Input.IPointerDevice, Windows.Devices.Input.IPointerDevice2
{
extern(Windows):
	final Windows.Devices.Input.PointerDeviceType PointerDeviceType()
	{
		Windows.Devices.Input.PointerDeviceType _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IPointerDevice).get_PointerDeviceType(&_ret));
		return _ret;
	}
	final bool IsIntegrated()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IPointerDevice).get_IsIntegrated(&_ret));
		return _ret;
	}
	final UINT32 MaxContacts()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IPointerDevice).get_MaxContacts(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect PhysicalDeviceRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IPointerDevice).get_PhysicalDeviceRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect ScreenRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IPointerDevice).get_ScreenRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Input.PointerDeviceUsage) SupportedUsages()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Input.PointerDeviceUsage) _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IPointerDevice).get_SupportedUsages(&_ret));
		return _ret;
	}
	final UINT32 MaxPointersWithZDistance()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Input.IPointerDevice2).get_MaxPointersWithZDistance(&_ret));
		return _ret;
	}

	private static Windows.Devices.Input.IPointerDeviceStatics _staticInstance;
	public static Windows.Devices.Input.IPointerDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Input.IPointerDeviceStatics);
		return _staticInstance;
	}
	static Windows.Devices.Input.PointerDevice GetPointerDevice(UINT32 pointerId)
	{
		Windows.Devices.Input.PointerDevice _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Input.IPointerDeviceStatics).abi_GetPointerDevice(pointerId, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Devices.Input.PointerDevice) GetPointerDevices()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Input.PointerDevice) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Input.IPointerDeviceStatics).abi_GetPointerDevices(&_ret));
		return _ret;
	}
}

interface TouchCapabilities : Windows.Devices.Input.ITouchCapabilities
{
extern(Windows):
	final INT32 TouchPresent()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Input.ITouchCapabilities).get_TouchPresent(&_ret));
		return _ret;
	}
	final UINT32 Contacts()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Input.ITouchCapabilities).get_Contacts(&_ret));
		return _ret;
	}
	static TouchCapabilities New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(TouchCapabilities).abi_ActivateInstance(&ret));
		return ret.as!(TouchCapabilities);
	}
}

enum PointerDeviceType
{
	Touch = 0,
	Pen = 1,
	Mouse = 2
}