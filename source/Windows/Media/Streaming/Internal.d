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
	private static Windows.Media.Streaming.Internal.IMediaRendererBrokerStatics _staticInstance;
	public static Windows.Media.Streaming.Internal.IMediaRendererBrokerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Streaming.Internal.IMediaRendererBrokerStatics);
		return _staticInstance;
	}
	static Windows.Media.Streaming.CreateMediaRendererOperation CreateMediaRendererAsync(HSTRING deviceIdentifier, IInspectable mediaSessionFactoryMF, HSTRING applicationUserModelId)
	{
		Windows.Media.Streaming.CreateMediaRendererOperation _ret;
		Debug.OK(staticInstance.abi_CreateMediaRendererAsync(deviceIdentifier, mediaSessionFactoryMF, applicationUserModelId, &_ret));
		return _ret;
	}
	static Windows.Media.Streaming.CreateMediaRendererOperation CreateMediaRendererFromBasicDeviceAsync(Windows.Media.Streaming.IBasicDevice basicDevice, IInspectable mediaSessionFactoryMF, HSTRING applicationUserModelId)
	{
		Windows.Media.Streaming.CreateMediaRendererOperation _ret;
		Debug.OK(staticInstance.abi_CreateMediaRendererFromBasicDeviceAsync(basicDevice, mediaSessionFactoryMF, applicationUserModelId, &_ret));
		return _ret;
	}
}