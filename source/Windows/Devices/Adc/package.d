module Windows.Devices.Adc;

import dwinrt;

@uuid("040bf414-2588-4a56-abef-73a260acc60a")
@WinrtFactory("Windows.Devices.Adc.AdcChannel")
interface IAdcChannel_Base : IInspectable
{
extern(Windows):
	HRESULT get_Controller(Windows.Devices.Adc.AdcController* return_value);
	HRESULT abi_ReadValue(INT32* return_result);
	HRESULT abi_ReadRatio(double* return_result);
}
@uuid("040bf414-2588-4a56-abef-73a260acc60a")
@WinrtFactory("Windows.Devices.Adc.AdcChannel")
interface IAdcChannel : IAdcChannel_Base, Windows.Foundation.IClosable {}

@uuid("2a76e4b0-a896-4219-86b6-ea8cdce98f56")
@WinrtFactory("Windows.Devices.Adc.AdcController")
interface IAdcController : IInspectable
{
extern(Windows):
	HRESULT get_ChannelCount(INT32* return_value);
	HRESULT get_ResolutionInBits(INT32* return_value);
	HRESULT get_MinValue(INT32* return_value);
	HRESULT get_MaxValue(INT32* return_value);
	HRESULT get_ChannelMode(Windows.Devices.Adc.AdcChannelMode* return_value);
	HRESULT set_ChannelMode(Windows.Devices.Adc.AdcChannelMode value);
	HRESULT abi_IsChannelModeSupported(Windows.Devices.Adc.AdcChannelMode channelMode, bool* return_result);
	HRESULT abi_OpenChannel(INT32 channelNumber, Windows.Devices.Adc.AdcChannel* return_result);
}

@uuid("cce98e0c-01f8-4891-bc3b-be53ef279ca4")
@WinrtFactory("Windows.Devices.Adc.AdcController")
interface IAdcControllerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetControllersAsync(Windows.Devices.Adc.Provider.IAdcProvider provider, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Adc.AdcController))* return_operation);
}

@uuid("a2b93b1d-977b-4f5a-a5fe-a6abaffe6484")
@WinrtFactory("Windows.Devices.Adc.AdcController")
interface IAdcControllerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Adc.AdcController)* return_operation);
}

interface AdcChannel : Windows.Devices.Adc.IAdcChannel, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Devices.Adc.AdcController Controller()
	{
		Windows.Devices.Adc.AdcController _ret;
		Debug.OK((cast(Windows.Devices.Adc.IAdcChannel)this.asInterface(uuid("040bf414-2588-4a56-abef-73a260acc60a"))).get_Controller(&_ret));
		return _ret;
	}
	final INT32 ReadValue()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Adc.IAdcChannel)this.asInterface(uuid("040bf414-2588-4a56-abef-73a260acc60a"))).abi_ReadValue(&_ret));
		return _ret;
	}
	final double ReadRatio()
	{
		double _ret;
		Debug.OK((cast(Windows.Devices.Adc.IAdcChannel)this.asInterface(uuid("040bf414-2588-4a56-abef-73a260acc60a"))).abi_ReadRatio(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface AdcController : Windows.Devices.Adc.IAdcController
{
extern(Windows):
	final INT32 ChannelCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Adc.IAdcController)this.asInterface(uuid("2a76e4b0-a896-4219-86b6-ea8cdce98f56"))).get_ChannelCount(&_ret));
		return _ret;
	}
	final INT32 ResolutionInBits()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Adc.IAdcController)this.asInterface(uuid("2a76e4b0-a896-4219-86b6-ea8cdce98f56"))).get_ResolutionInBits(&_ret));
		return _ret;
	}
	final INT32 MinValue()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Adc.IAdcController)this.asInterface(uuid("2a76e4b0-a896-4219-86b6-ea8cdce98f56"))).get_MinValue(&_ret));
		return _ret;
	}
	final INT32 MaxValue()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Adc.IAdcController)this.asInterface(uuid("2a76e4b0-a896-4219-86b6-ea8cdce98f56"))).get_MaxValue(&_ret));
		return _ret;
	}
	final Windows.Devices.Adc.AdcChannelMode ChannelMode()
	{
		Windows.Devices.Adc.AdcChannelMode _ret;
		Debug.OK((cast(Windows.Devices.Adc.IAdcController)this.asInterface(uuid("2a76e4b0-a896-4219-86b6-ea8cdce98f56"))).get_ChannelMode(&_ret));
		return _ret;
	}
	final void ChannelMode(Windows.Devices.Adc.AdcChannelMode value)
	{
		Debug.OK((cast(Windows.Devices.Adc.IAdcController)this.asInterface(uuid("2a76e4b0-a896-4219-86b6-ea8cdce98f56"))).set_ChannelMode(value));
	}
	final bool IsChannelModeSupported(Windows.Devices.Adc.AdcChannelMode channelMode)
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Adc.IAdcController)this.asInterface(uuid("2a76e4b0-a896-4219-86b6-ea8cdce98f56"))).abi_IsChannelModeSupported(channelMode, &_ret));
		return _ret;
	}
	final Windows.Devices.Adc.AdcChannel OpenChannel(INT32 channelNumber)
	{
		Windows.Devices.Adc.AdcChannel _ret;
		Debug.OK((cast(Windows.Devices.Adc.IAdcController)this.asInterface(uuid("2a76e4b0-a896-4219-86b6-ea8cdce98f56"))).abi_OpenChannel(channelNumber, &_ret));
		return _ret;
	}

	private static Windows.Devices.Adc.IAdcControllerStatics _staticInstance;
	public static Windows.Devices.Adc.IAdcControllerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Adc.IAdcControllerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Adc.AdcController)) GetControllersAsync(Windows.Devices.Adc.Provider.IAdcProvider provider)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Adc.AdcController)) _ret;
		Debug.OK(staticInstance.abi_GetControllersAsync(provider, &_ret));
		return _ret;
	}
}

enum AdcChannelMode
{
	SingleEnded = 0,
	Differential = 1
}