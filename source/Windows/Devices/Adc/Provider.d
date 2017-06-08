module Windows.Devices.Adc.Provider;

import dwinrt;

@uuid("be545828-816d-4de5-a048-aba06958aaa8")
interface IAdcControllerProvider : IInspectable
{
extern(Windows):
	HRESULT get_ChannelCount(INT32* return_value);
	HRESULT get_ResolutionInBits(INT32* return_value);
	HRESULT get_MinValue(INT32* return_value);
	HRESULT get_MaxValue(INT32* return_value);
	HRESULT get_ChannelMode(Windows.Devices.Adc.Provider.ProviderAdcChannelMode* return_value);
	HRESULT set_ChannelMode(Windows.Devices.Adc.Provider.ProviderAdcChannelMode value);
	HRESULT abi_IsChannelModeSupported(Windows.Devices.Adc.Provider.ProviderAdcChannelMode channelMode, bool* return_result);
	HRESULT abi_AcquireChannel(INT32 channel);
	HRESULT abi_ReleaseChannel(INT32 channel);
	HRESULT abi_ReadValue(INT32 channelNumber, INT32* return_result);
}

@uuid("28953668-9359-4c57-bc88-e275e81638c9")
interface IAdcProvider : IInspectable
{
extern(Windows):
	HRESULT abi_GetControllers(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Adc.Provider.IAdcControllerProvider)* return_result);
}

enum ProviderAdcChannelMode
{
	SingleEnded = 0,
	Differential = 1
}