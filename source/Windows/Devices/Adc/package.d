module Windows.Devices.Adc;

import dwinrt;

@uuid("040bf414-2588-4a56-abef-73a260acc60a")
@WinrtFactory("Windows.Devices.Adc.AdcChannel")
interface IAdcChannel : IInspectable, Windows.Foundation.IClosable
{
extern(Windows):
	HRESULT get_Controller(Windows.Devices.Adc.AdcController* return_value);
	HRESULT abi_ReadValue(INT32* return_result);
	HRESULT abi_ReadRatio(double* return_result);
}

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
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcChannel).get_Controller(&_ret));
		return _ret;
	}
	final INT32 ReadValue()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcChannel).abi_ReadValue(&_ret));
		return _ret;
	}
	final double ReadRatio()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcChannel).abi_ReadRatio(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface AdcController : Windows.Devices.Adc.IAdcController
{
extern(Windows):
	final INT32 ChannelCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcController).get_ChannelCount(&_ret));
		return _ret;
	}
	final INT32 ResolutionInBits()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcController).get_ResolutionInBits(&_ret));
		return _ret;
	}
	final INT32 MinValue()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcController).get_MinValue(&_ret));
		return _ret;
	}
	final INT32 MaxValue()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcController).get_MaxValue(&_ret));
		return _ret;
	}
	final Windows.Devices.Adc.AdcChannelMode ChannelMode()
	{
		Windows.Devices.Adc.AdcChannelMode _ret;
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcController).get_ChannelMode(&_ret));
		return _ret;
	}
	final void ChannelMode(Windows.Devices.Adc.AdcChannelMode value)
	{
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcController).set_ChannelMode(value));
	}
	final bool IsChannelModeSupported(Windows.Devices.Adc.AdcChannelMode channelMode)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcController).abi_IsChannelModeSupported(channelMode, &_ret));
		return _ret;
	}
	final Windows.Devices.Adc.AdcChannel OpenChannel(INT32 channelNumber)
	{
		Windows.Devices.Adc.AdcChannel _ret;
		Debug.OK(this.as!(Windows.Devices.Adc.IAdcController).abi_OpenChannel(channelNumber, &_ret));
		return _ret;
	}
}

enum AdcChannelMode
{
	SingleEnded = 0,
	Differential = 1
}