module Windows.Media.Streaming.Internal;

import dwinrt;

@uuid("19974cb1-9a1d-45c0-87cf-2c1e835a981c")
interface IMediaRendererBrokerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMediaRendererAsync(HSTRING deviceIdentifier, IInspectable mediaSessionFactoryMF, HSTRING applicationUserModelId, Windows.Media.Streaming.CreateMediaRendererOperation* return_value);
	HRESULT abi_CreateMediaRendererFromBasicDeviceAsync(Windows.Media.Streaming.IBasicDevice basicDevice, IInspectable mediaSessionFactoryMF, HSTRING applicationUserModelId, Windows.Media.Streaming.CreateMediaRendererOperation* return_value);
}

interface MediaRendererBroker
{
}