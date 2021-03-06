module Windows.Media.Streaming;

import dwinrt;

struct PlaySpeed
{
	INT32 Numerator;
	UINT32 Denominator;
}

struct TrackInformation
{
	UINT32 Track;
	UINT32 TrackId;
	Windows.Foundation.TimeSpan TrackDuration;
}

struct PositionInformation
{
	Windows.Media.Streaming.TrackInformation trackInformation;
	Windows.Foundation.TimeSpan relativeTime;
}

struct RenderingParameters
{
	UINT32 volume;
	bool mute;
}

struct TransportInformation
{
	Windows.Media.Streaming.TransportState CurrentTransportState;
	Windows.Media.Streaming.TransportStatus CurrentTransportStatus;
	Windows.Media.Streaming.PlaySpeed CurrentSpeed;
}

@uuid("b571c28c-a472-48d5-88d2-8adcaf1b8813")
interface ConnectionStatusHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Streaming.IBasicDevice sender, Windows.Media.Streaming.ConnectionStatus arg);
}

@uuid("a88a7d06-988c-4403-9d8a-015bed140b34")
interface DeviceControllerFinderHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Streaming.IDeviceController sender, HSTRING uniqueDeviceName, Windows.Media.Streaming.IBasicDevice device);
}

@uuid("3a2d9d45-72e9-4311-b46c-27c8bb7e6cb3")
interface RenderingParametersUpdateHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Streaming.IMediaRenderer sender, Windows.Media.Streaming.RenderingParameters arg);
}

@uuid("16fd02d5-da61-49d7-aab2-76867dd42db7")
interface TransportParametersUpdateHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Streaming.IMediaRenderer sender, Windows.Media.Streaming.ITransportParameters arg);
}

@uuid("b64d6974-6e79-49af-9933-908b6e9a160c")
interface IActiveBasicDevice_Base : IInspectable
{
extern(Windows):
	HRESULT get_MaxVolume(UINT32* return_value);
	HRESULT get_IsMuteSupported(bool* return_value);
	HRESULT get_IsSetNextSourceSupported(bool* return_value);
	HRESULT get_IsAudioSupported(bool* return_value);
	HRESULT get_IsVideoSupported(bool* return_value);
	HRESULT get_IsImageSupported(bool* return_value);
	HRESULT get_IsSearchSupported(bool* return_value);
	HRESULT abi_GetCachedSinkProtocolInfo(HSTRING* return_value);
	HRESULT abi_SetCachedSinkProtocolInfo(HSTRING value);
	HRESULT abi_GetCachedExtraSinkProtocolInfo(HSTRING* return_value);
	HRESULT abi_GetEffectiveBandwidth(bool transmitSpeed, ulong* return_currentSpeed);
	HRESULT abi_GetCachedBitrateMeasurement(GUID physicalNetworkInterface, ulong* return_bitrate);
	HRESULT abi_SetCachedBitrateMeasurement(GUID physicalNetworkInterface, ulong bitrate);
	HRESULT get_LogicalNetworkInterface(GUID* return_logicalNetworkInterface);
	HRESULT get_PhysicalNetworkInterface(GUID* return_physicalNetworkInterface);
	HRESULT abi_NotifyStreamingStatus(bool fIsStreaming);
}
@uuid("b64d6974-6e79-49af-9933-908b6e9a160c")
interface IActiveBasicDevice : IActiveBasicDevice_Base, Windows.Media.Streaming.IBasicDevice {}

@uuid("6d33255d-3642-4618-9db6-43524f4deadc")
interface IActiveBasicDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateBasicDeviceAsync(HSTRING deviceIdentifier, Windows.Media.Streaming.DeviceTypes type, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.ActiveBasicDevice)* return_value);
	HRESULT abi_CloneBasicDeviceAsync(Windows.Media.Streaming.IBasicDevice basicDevice, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.ActiveBasicDevice)* return_value);
	HRESULT abi_GetDevicesOnMatchingNetworkAsync(Windows.Media.Streaming.IActiveBasicDevice server, Windows.Media.Streaming.IActiveBasicDevice renderer, bool optimizeForProxying, bool allowChangeRendererNetwork, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.DevicePair)* return_operation);
	HRESULT abi_CreateDevicesOnMatchingNetworkAsync(HSTRING serverUDN, Windows.Media.Streaming.IActiveBasicDevice renderer, bool optimizeForProxying, bool allowChangeRendererNetwork, Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.DevicePair)* return_operation);
}

@uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0")
interface IBasicDevice : IInspectable
{
extern(Windows):
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT set_FriendlyName(HSTRING value);
	HRESULT get_ManufacturerName(HSTRING* return_value);
	HRESULT get_ManufacturerUrl(HSTRING* return_value);
	HRESULT get_UniqueDeviceName(HSTRING* return_value);
	HRESULT get_ModelName(HSTRING* return_value);
	HRESULT get_ModelNumber(HSTRING* return_value);
	HRESULT get_ModelUrl(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_SerialNumber(HSTRING* return_value);
	HRESULT get_PresentationUrl(HSTRING* return_value);
	HRESULT get_RemoteStreamingUrls(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_PhysicalAddresses(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_IpAddresses(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_CanWakeDevices(bool* return_value);
	HRESULT get_DiscoveredOnCurrentNetwork(bool* return_value);
	HRESULT get_Type(Windows.Media.Streaming.DeviceTypes* return_value);
	HRESULT get_Icons(Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.IDeviceIcon)* return_value);
	HRESULT get_ConnectionStatus(Windows.Media.Streaming.ConnectionStatus* return_value);
	HRESULT add_ConnectionStatusChanged(Windows.Media.Streaming.ConnectionStatusHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_ConnectionStatusChanged(EventRegistrationToken token);
}

@uuid("4feeb26d-50a7-402b-896a-be95064d6bff")
interface IDeviceController : IInspectable
{
extern(Windows):
	HRESULT get_CachedDevices(Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.IBasicDevice)* return_value);
	HRESULT abi_AddDevice(HSTRING uniqueDeviceName);
	HRESULT abi_RemoveDevice(Windows.Media.Streaming.IBasicDevice device);
	HRESULT add_DeviceArrival(Windows.Media.Streaming.DeviceControllerFinderHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_DeviceArrival(EventRegistrationToken token);
	HRESULT add_DeviceDeparture(Windows.Media.Streaming.DeviceControllerFinderHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_DeviceDeparture(EventRegistrationToken token);
}

@uuid("8ffb1a1e-023d-4de1-b556-ab5abf01929c")
interface IDeviceIcon : IInspectable
{
extern(Windows):
	HRESULT get_Width(UINT32* return_value);
	HRESULT get_Height(UINT32* return_value);
	HRESULT get_ContentType(HSTRING* return_value);
	HRESULT get_Stream(Windows.Storage.Streams.IRandomAccessStreamWithContentType* return_value);
}

@uuid("f1a423f1-b7b4-449c-a90d-aea8e17c5e5f")
interface IDevicePair : IInspectable
{
extern(Windows):
	HRESULT get_Server(Windows.Media.Streaming.ActiveBasicDevice* return_value);
	HRESULT get_Renderer(Windows.Media.Streaming.ActiveBasicDevice* return_value);
}

@uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b")
interface IMediaRenderer_Base : IInspectable
{
extern(Windows):
	HRESULT get_IsAudioSupported(bool* return_value);
	HRESULT get_IsVideoSupported(bool* return_value);
	HRESULT get_IsImageSupported(bool* return_value);
	HRESULT get_ActionInformation(Windows.Media.Streaming.IMediaRendererActionInformation* return_value);
	HRESULT abi_SetSourceFromUriAsync(HSTRING URI, Windows.Foundation.IAsyncOperation!(UINT32)* return_value);
	HRESULT abi_SetSourceFromStreamAsync(IInspectable stream, Windows.Foundation.IAsyncOperation!(UINT32)* return_value);
	HRESULT abi_SetSourceFromMediaSourceAsync(IInspectable mediaSource, Windows.Foundation.IAsyncOperation!(UINT32)* return_value);
	HRESULT abi_SetNextSourceFromUriAsync(HSTRING URI, Windows.Foundation.IAsyncOperation!(UINT32)* return_value);
	HRESULT abi_SetNextSourceFromStreamAsync(IInspectable stream, Windows.Foundation.IAsyncOperation!(UINT32)* return_value);
	HRESULT abi_SetNextSourceFromMediaSourceAsync(IInspectable mediaSource, Windows.Foundation.IAsyncOperation!(UINT32)* return_value);
	HRESULT abi_PlayAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_PlayAtSpeedAsync(Windows.Media.Streaming.PlaySpeed playSpeed, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_PauseAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_GetMuteAsync(Windows.Foundation.IAsyncOperation!(bool)* return_value);
	HRESULT abi_SetMuteAsync(bool mute, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_GetVolumeAsync(Windows.Foundation.IAsyncOperation!(UINT32)* return_value);
	HRESULT abi_SetVolumeAsync(UINT32 volume, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_SeekAsync(Windows.Foundation.TimeSpan target, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_GetTransportInformationAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.TransportInformation)* return_value);
	HRESULT abi_GetPositionInformationAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.PositionInformation)* return_value);
	HRESULT add_TransportParametersUpdate(Windows.Media.Streaming.TransportParametersUpdateHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_TransportParametersUpdate(EventRegistrationToken token);
	HRESULT add_RenderingParametersUpdate(Windows.Media.Streaming.RenderingParametersUpdateHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_RenderingParametersUpdate(EventRegistrationToken token);
	HRESULT abi_NextAsync(Windows.Foundation.IAsyncAction* return_value);
}
@uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b")
interface IMediaRenderer : IMediaRenderer_Base, Windows.Media.Streaming.IBasicDevice {}

@uuid("66fbbfee-5ab0-4a4f-8d15-e5056b26beda")
interface IMediaRendererActionInformation : IInspectable
{
extern(Windows):
	HRESULT get_IsMuteAvailable(bool* return_value);
	HRESULT get_IsPauseAvailable(bool* return_value);
	HRESULT get_IsPlayAvailable(bool* return_value);
	HRESULT get_IsSeekAvailable(bool* return_value);
	HRESULT get_IsSetNextSourceAvailable(bool* return_value);
	HRESULT get_IsStopAvailable(bool* return_value);
	HRESULT get_IsVolumeAvailable(bool* return_value);
	HRESULT get_PlaySpeeds(Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.PlaySpeed)* return_value);
}

@uuid("657ab43d-b909-42b2-94d0-e3a0b134e8c9")
interface IMediaRendererFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMediaRendererAsync(HSTRING deviceIdentifier, Windows.Media.Streaming.CreateMediaRendererOperation* return_value);
	HRESULT abi_CreateMediaRendererFromBasicDeviceAsync(Windows.Media.Streaming.IBasicDevice basicDevice, Windows.Media.Streaming.CreateMediaRendererOperation* return_value);
}

@uuid("8a4cd4a1-ed85-4e0f-bd68-8a6862e4636d")
interface IStreamSelectorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_SelectBestStreamAsync(Windows.Storage.StorageFile storageFile, Windows.Foundation.Collections.IPropertySet selectorProperties, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType)* return_value);
	HRESULT abi_GetStreamPropertiesAsync(Windows.Storage.StorageFile storageFile, Windows.Foundation.Collections.IPropertySet selectorProperties, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IPropertySet))* return_value);
	HRESULT abi_SelectBestStreamFromStreamAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.Collections.IPropertySet selectorProperties, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType)* return_value);
	HRESULT abi_GetStreamPropertiesFromStreamAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.Collections.IPropertySet selectorProperties, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IPropertySet))* return_value);
}

@uuid("eb0c4e24-2283-438d-8fff-dbe9df1cb2cc")
interface ITransportParameters : IInspectable
{
extern(Windows):
	HRESULT get_ActionInformation(Windows.Media.Streaming.IMediaRendererActionInformation* return_value);
	HRESULT get_TrackInformation(Windows.Media.Streaming.TrackInformation* return_value);
	HRESULT get_TransportInformation(Windows.Media.Streaming.TransportInformation* return_value);
}

interface ActiveBasicDevice : Windows.Media.Streaming.IActiveBasicDevice, Windows.Media.Streaming.IBasicDevice
{
extern(Windows):
	final UINT32 MaxVolume()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).get_MaxVolume(&_ret));
		return _ret;
	}
	final bool IsMuteSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).get_IsMuteSupported(&_ret));
		return _ret;
	}
	final bool IsSetNextSourceSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).get_IsSetNextSourceSupported(&_ret));
		return _ret;
	}
	final bool IsAudioSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).get_IsAudioSupported(&_ret));
		return _ret;
	}
	final bool IsVideoSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).get_IsVideoSupported(&_ret));
		return _ret;
	}
	final bool IsImageSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).get_IsImageSupported(&_ret));
		return _ret;
	}
	final bool IsSearchSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).get_IsSearchSupported(&_ret));
		return _ret;
	}
	final HSTRING GetCachedSinkProtocolInfo()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).abi_GetCachedSinkProtocolInfo(&_ret));
		return _ret;
	}
	final void SetCachedSinkProtocolInfo(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).abi_SetCachedSinkProtocolInfo(value));
	}
	final HSTRING GetCachedExtraSinkProtocolInfo()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).abi_GetCachedExtraSinkProtocolInfo(&_ret));
		return _ret;
	}
	final ulong GetEffectiveBandwidth(bool transmitSpeed)
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).abi_GetEffectiveBandwidth(transmitSpeed, &_ret));
		return _ret;
	}
	final ulong GetCachedBitrateMeasurement(GUID physicalNetworkInterface)
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).abi_GetCachedBitrateMeasurement(physicalNetworkInterface, &_ret));
		return _ret;
	}
	final void SetCachedBitrateMeasurement(GUID physicalNetworkInterface, ulong bitrate)
	{
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).abi_SetCachedBitrateMeasurement(physicalNetworkInterface, bitrate));
	}
	final GUID LogicalNetworkInterface()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).get_LogicalNetworkInterface(&_ret));
		return _ret;
	}
	final GUID PhysicalNetworkInterface()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).get_PhysicalNetworkInterface(&_ret));
		return _ret;
	}
	final void NotifyStreamingStatus(bool fIsStreaming)
	{
		Debug.OK((cast(Windows.Media.Streaming.IActiveBasicDevice)this.asInterface(uuid("b64d6974-6e79-49af-9933-908b6e9a160c"))).abi_NotifyStreamingStatus(fIsStreaming));
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_FriendlyName(&_ret));
		return _ret;
	}
	final void FriendlyName(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).set_FriendlyName(value));
	}
	final HSTRING ManufacturerName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ManufacturerName(&_ret));
		return _ret;
	}
	final HSTRING ManufacturerUrl()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ManufacturerUrl(&_ret));
		return _ret;
	}
	final HSTRING UniqueDeviceName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_UniqueDeviceName(&_ret));
		return _ret;
	}
	final HSTRING ModelName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ModelName(&_ret));
		return _ret;
	}
	final HSTRING ModelNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ModelNumber(&_ret));
		return _ret;
	}
	final HSTRING ModelUrl()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ModelUrl(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_Description(&_ret));
		return _ret;
	}
	final HSTRING SerialNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_SerialNumber(&_ret));
		return _ret;
	}
	final HSTRING PresentationUrl()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_PresentationUrl(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) RemoteStreamingUrls()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_RemoteStreamingUrls(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) PhysicalAddresses()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_PhysicalAddresses(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) IpAddresses()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_IpAddresses(&_ret));
		return _ret;
	}
	final bool CanWakeDevices()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_CanWakeDevices(&_ret));
		return _ret;
	}
	final bool DiscoveredOnCurrentNetwork()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_DiscoveredOnCurrentNetwork(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.DeviceTypes Type()
	{
		Windows.Media.Streaming.DeviceTypes _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_Type(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.IDeviceIcon) Icons()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.IDeviceIcon) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_Icons(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.ConnectionStatus ConnectionStatus()
	{
		Windows.Media.Streaming.ConnectionStatus _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ConnectionStatus(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnConnectionStatusChanged(void delegate(Windows.Media.Streaming.IBasicDevice, Windows.Media.Streaming.ConnectionStatus) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).add_ConnectionStatusChanged(event!(Windows.Media.Streaming.ConnectionStatusHandler, Windows.Media.Streaming.IBasicDevice, Windows.Media.Streaming.ConnectionStatus)(fn), &tok));
		return tok;
	}
	final void removeConnectionStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).remove_ConnectionStatusChanged(token));
	}

	private static Windows.Media.Streaming.IActiveBasicDeviceStatics _staticInstance;
	public static Windows.Media.Streaming.IActiveBasicDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Streaming.IActiveBasicDeviceStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.ActiveBasicDevice) CreateBasicDeviceAsync(HSTRING deviceIdentifier, Windows.Media.Streaming.DeviceTypes type)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.ActiveBasicDevice) _ret;
		Debug.OK(staticInstance.abi_CreateBasicDeviceAsync(deviceIdentifier, type, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.ActiveBasicDevice) CloneBasicDeviceAsync(Windows.Media.Streaming.IBasicDevice basicDevice)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.ActiveBasicDevice) _ret;
		Debug.OK(staticInstance.abi_CloneBasicDeviceAsync(basicDevice, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.DevicePair) GetDevicesOnMatchingNetworkAsync(Windows.Media.Streaming.IActiveBasicDevice server, Windows.Media.Streaming.IActiveBasicDevice renderer, bool optimizeForProxying, bool allowChangeRendererNetwork)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.DevicePair) _ret;
		Debug.OK(staticInstance.abi_GetDevicesOnMatchingNetworkAsync(server, renderer, optimizeForProxying, allowChangeRendererNetwork, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.DevicePair) CreateDevicesOnMatchingNetworkAsync(HSTRING serverUDN, Windows.Media.Streaming.IActiveBasicDevice renderer, bool optimizeForProxying, bool allowChangeRendererNetwork)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.DevicePair) _ret;
		Debug.OK(staticInstance.abi_CreateDevicesOnMatchingNetworkAsync(serverUDN, renderer, optimizeForProxying, allowChangeRendererNetwork, &_ret));
		return _ret;
	}
	static ActiveBasicDevice New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ActiveBasicDevice).abi_ActivateInstance(&ret));
		return cast(ActiveBasicDevice) ret;
	}
}

interface BasicDevice : Windows.Media.Streaming.IBasicDevice
{
extern(Windows):
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_FriendlyName(&_ret));
		return _ret;
	}
	final void FriendlyName(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).set_FriendlyName(value));
	}
	final HSTRING ManufacturerName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ManufacturerName(&_ret));
		return _ret;
	}
	final HSTRING ManufacturerUrl()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ManufacturerUrl(&_ret));
		return _ret;
	}
	final HSTRING UniqueDeviceName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_UniqueDeviceName(&_ret));
		return _ret;
	}
	final HSTRING ModelName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ModelName(&_ret));
		return _ret;
	}
	final HSTRING ModelNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ModelNumber(&_ret));
		return _ret;
	}
	final HSTRING ModelUrl()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ModelUrl(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_Description(&_ret));
		return _ret;
	}
	final HSTRING SerialNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_SerialNumber(&_ret));
		return _ret;
	}
	final HSTRING PresentationUrl()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_PresentationUrl(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) RemoteStreamingUrls()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_RemoteStreamingUrls(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) PhysicalAddresses()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_PhysicalAddresses(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) IpAddresses()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_IpAddresses(&_ret));
		return _ret;
	}
	final bool CanWakeDevices()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_CanWakeDevices(&_ret));
		return _ret;
	}
	final bool DiscoveredOnCurrentNetwork()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_DiscoveredOnCurrentNetwork(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.DeviceTypes Type()
	{
		Windows.Media.Streaming.DeviceTypes _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_Type(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.IDeviceIcon) Icons()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.IDeviceIcon) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_Icons(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.ConnectionStatus ConnectionStatus()
	{
		Windows.Media.Streaming.ConnectionStatus _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ConnectionStatus(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnConnectionStatusChanged(void delegate(Windows.Media.Streaming.IBasicDevice, Windows.Media.Streaming.ConnectionStatus) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).add_ConnectionStatusChanged(event!(Windows.Media.Streaming.ConnectionStatusHandler, Windows.Media.Streaming.IBasicDevice, Windows.Media.Streaming.ConnectionStatus)(fn), &tok));
		return tok;
	}
	final void removeConnectionStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).remove_ConnectionStatusChanged(token));
	}
	static BasicDevice New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BasicDevice).abi_ActivateInstance(&ret));
		return cast(BasicDevice) ret;
	}
}

interface CreateMediaRendererOperation : Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.MediaRenderer)
{
extern(Windows):
	final void Completed(Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Media.Streaming.MediaRenderer) handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.MediaRenderer))this).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Media.Streaming.MediaRenderer) Completed()
	{
		Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Media.Streaming.MediaRenderer) _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.MediaRenderer))this).get_Completed(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.MediaRenderer Results()
	{
		Windows.Media.Streaming.MediaRenderer _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.MediaRenderer))this).get_Results(&_ret));
		return _ret;
	}
}

interface DeviceController : Windows.Media.Streaming.IDeviceController
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.IBasicDevice) CachedDevices()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.IBasicDevice) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IDeviceController)this.asInterface(uuid("4feeb26d-50a7-402b-896a-be95064d6bff"))).get_CachedDevices(&_ret));
		return _ret;
	}
	final void AddDevice(HSTRING uniqueDeviceName)
	{
		Debug.OK((cast(Windows.Media.Streaming.IDeviceController)this.asInterface(uuid("4feeb26d-50a7-402b-896a-be95064d6bff"))).abi_AddDevice(uniqueDeviceName));
	}
	final void RemoveDevice(Windows.Media.Streaming.IBasicDevice device)
	{
		Debug.OK((cast(Windows.Media.Streaming.IDeviceController)this.asInterface(uuid("4feeb26d-50a7-402b-896a-be95064d6bff"))).abi_RemoveDevice(device));
	}
	final EventRegistrationToken OnDeviceArrival(void delegate(Windows.Media.Streaming.IDeviceController, HSTRING, Windows.Media.Streaming.IBasicDevice) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Streaming.IDeviceController)this.asInterface(uuid("4feeb26d-50a7-402b-896a-be95064d6bff"))).add_DeviceArrival(event!(Windows.Media.Streaming.DeviceControllerFinderHandler, Windows.Media.Streaming.IDeviceController, HSTRING, Windows.Media.Streaming.IBasicDevice)(fn), &tok));
		return tok;
	}
	final void removeDeviceArrival(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Streaming.IDeviceController)this.asInterface(uuid("4feeb26d-50a7-402b-896a-be95064d6bff"))).remove_DeviceArrival(token));
	}
	final EventRegistrationToken OnDeviceDeparture(void delegate(Windows.Media.Streaming.IDeviceController, HSTRING, Windows.Media.Streaming.IBasicDevice) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Streaming.IDeviceController)this.asInterface(uuid("4feeb26d-50a7-402b-896a-be95064d6bff"))).add_DeviceDeparture(event!(Windows.Media.Streaming.DeviceControllerFinderHandler, Windows.Media.Streaming.IDeviceController, HSTRING, Windows.Media.Streaming.IBasicDevice)(fn), &tok));
		return tok;
	}
	final void removeDeviceDeparture(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Streaming.IDeviceController)this.asInterface(uuid("4feeb26d-50a7-402b-896a-be95064d6bff"))).remove_DeviceDeparture(token));
	}
	static DeviceController New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(DeviceController).abi_ActivateInstance(&ret));
		return cast(DeviceController) ret;
	}
}

interface DevicePair : Windows.Media.Streaming.IDevicePair
{
extern(Windows):
	final Windows.Media.Streaming.ActiveBasicDevice Server()
	{
		Windows.Media.Streaming.ActiveBasicDevice _ret;
		Debug.OK((cast(Windows.Media.Streaming.IDevicePair)this.asInterface(uuid("f1a423f1-b7b4-449c-a90d-aea8e17c5e5f"))).get_Server(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.ActiveBasicDevice Renderer()
	{
		Windows.Media.Streaming.ActiveBasicDevice _ret;
		Debug.OK((cast(Windows.Media.Streaming.IDevicePair)this.asInterface(uuid("f1a423f1-b7b4-449c-a90d-aea8e17c5e5f"))).get_Renderer(&_ret));
		return _ret;
	}
}

interface MediaRenderer : Windows.Media.Streaming.IMediaRenderer, Windows.Media.Streaming.IBasicDevice
{
extern(Windows):
	final bool IsAudioSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).get_IsAudioSupported(&_ret));
		return _ret;
	}
	final bool IsVideoSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).get_IsVideoSupported(&_ret));
		return _ret;
	}
	final bool IsImageSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).get_IsImageSupported(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.IMediaRendererActionInformation ActionInformation()
	{
		Windows.Media.Streaming.IMediaRendererActionInformation _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).get_ActionInformation(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SetSourceFromUriAsync(HSTRING URI)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_SetSourceFromUriAsync(URI, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SetSourceFromStreamAsync(IInspectable stream)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_SetSourceFromStreamAsync(stream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SetSourceFromMediaSourceAsync(IInspectable mediaSource)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_SetSourceFromMediaSourceAsync(mediaSource, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SetNextSourceFromUriAsync(HSTRING URI)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_SetNextSourceFromUriAsync(URI, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SetNextSourceFromStreamAsync(IInspectable stream)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_SetNextSourceFromStreamAsync(stream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) SetNextSourceFromMediaSourceAsync(IInspectable mediaSource)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_SetNextSourceFromMediaSourceAsync(mediaSource, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction PlayAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_PlayAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction PlayAtSpeedAsync(Windows.Media.Streaming.PlaySpeed playSpeed)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_PlayAtSpeedAsync(playSpeed, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_StopAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction PauseAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_PauseAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) GetMuteAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_GetMuteAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetMuteAsync(bool mute)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_SetMuteAsync(mute, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) GetVolumeAsync()
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_GetVolumeAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetVolumeAsync(UINT32 volume)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_SetVolumeAsync(volume, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SeekAsync(Windows.Foundation.TimeSpan target)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_SeekAsync(target, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.TransportInformation) GetTransportInformationAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.TransportInformation) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_GetTransportInformationAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.PositionInformation) GetPositionInformationAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Streaming.PositionInformation) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_GetPositionInformationAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnTransportParametersUpdate(void delegate(Windows.Media.Streaming.IMediaRenderer, Windows.Media.Streaming.ITransportParameters) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).add_TransportParametersUpdate(event!(Windows.Media.Streaming.TransportParametersUpdateHandler, Windows.Media.Streaming.IMediaRenderer, Windows.Media.Streaming.ITransportParameters)(fn), &tok));
		return tok;
	}
	final void removeTransportParametersUpdate(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).remove_TransportParametersUpdate(token));
	}
	final EventRegistrationToken OnRenderingParametersUpdate(void delegate(Windows.Media.Streaming.IMediaRenderer, Windows.Media.Streaming.RenderingParameters) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).add_RenderingParametersUpdate(event!(Windows.Media.Streaming.RenderingParametersUpdateHandler, Windows.Media.Streaming.IMediaRenderer, Windows.Media.Streaming.RenderingParameters)(fn), &tok));
		return tok;
	}
	final void removeRenderingParametersUpdate(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).remove_RenderingParametersUpdate(token));
	}
	final Windows.Foundation.IAsyncAction NextAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Streaming.IMediaRenderer)this.asInterface(uuid("2c012ec3-d975-47fb-96ac-a6418b326d2b"))).abi_NextAsync(&_ret));
		return _ret;
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_FriendlyName(&_ret));
		return _ret;
	}
	final void FriendlyName(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).set_FriendlyName(value));
	}
	final HSTRING ManufacturerName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ManufacturerName(&_ret));
		return _ret;
	}
	final HSTRING ManufacturerUrl()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ManufacturerUrl(&_ret));
		return _ret;
	}
	final HSTRING UniqueDeviceName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_UniqueDeviceName(&_ret));
		return _ret;
	}
	final HSTRING ModelName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ModelName(&_ret));
		return _ret;
	}
	final HSTRING ModelNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ModelNumber(&_ret));
		return _ret;
	}
	final HSTRING ModelUrl()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ModelUrl(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_Description(&_ret));
		return _ret;
	}
	final HSTRING SerialNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_SerialNumber(&_ret));
		return _ret;
	}
	final HSTRING PresentationUrl()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_PresentationUrl(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) RemoteStreamingUrls()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_RemoteStreamingUrls(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) PhysicalAddresses()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_PhysicalAddresses(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) IpAddresses()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_IpAddresses(&_ret));
		return _ret;
	}
	final bool CanWakeDevices()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_CanWakeDevices(&_ret));
		return _ret;
	}
	final bool DiscoveredOnCurrentNetwork()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_DiscoveredOnCurrentNetwork(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.DeviceTypes Type()
	{
		Windows.Media.Streaming.DeviceTypes _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_Type(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.IDeviceIcon) Icons()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Streaming.IDeviceIcon) _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_Icons(&_ret));
		return _ret;
	}
	final Windows.Media.Streaming.ConnectionStatus ConnectionStatus()
	{
		Windows.Media.Streaming.ConnectionStatus _ret;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).get_ConnectionStatus(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnConnectionStatusChanged(void delegate(Windows.Media.Streaming.IBasicDevice, Windows.Media.Streaming.ConnectionStatus) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).add_ConnectionStatusChanged(event!(Windows.Media.Streaming.ConnectionStatusHandler, Windows.Media.Streaming.IBasicDevice, Windows.Media.Streaming.ConnectionStatus)(fn), &tok));
		return tok;
	}
	final void removeConnectionStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Streaming.IBasicDevice)this.asInterface(uuid("f4f26cbb-7962-48b7-80f7-c3a5d753bcb0"))).remove_ConnectionStatusChanged(token));
	}

	private static Windows.Media.Streaming.IMediaRendererFactory _staticInstance;
	public static Windows.Media.Streaming.IMediaRendererFactory staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Streaming.IMediaRendererFactory);
		return _staticInstance;
	}
	static Windows.Media.Streaming.CreateMediaRendererOperation CreateMediaRendererAsync(HSTRING deviceIdentifier)
	{
		Windows.Media.Streaming.CreateMediaRendererOperation _ret;
		Debug.OK(staticInstance.abi_CreateMediaRendererAsync(deviceIdentifier, &_ret));
		return _ret;
	}
	static Windows.Media.Streaming.CreateMediaRendererOperation CreateMediaRendererFromBasicDeviceAsync(Windows.Media.Streaming.IBasicDevice basicDevice)
	{
		Windows.Media.Streaming.CreateMediaRendererOperation _ret;
		Debug.OK(staticInstance.abi_CreateMediaRendererFromBasicDeviceAsync(basicDevice, &_ret));
		return _ret;
	}
	static MediaRenderer New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MediaRenderer).abi_ActivateInstance(&ret));
		return cast(MediaRenderer) ret;
	}
}

interface StreamSelector
{
	private static Windows.Media.Streaming.IStreamSelectorStatics _staticInstance;
	public static Windows.Media.Streaming.IStreamSelectorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Streaming.IStreamSelectorStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) SelectBestStreamAsync(Windows.Storage.StorageFile storageFile, Windows.Foundation.Collections.IPropertySet selectorProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) _ret;
		Debug.OK(staticInstance.abi_SelectBestStreamAsync(storageFile, selectorProperties, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IPropertySet)) GetStreamPropertiesAsync(Windows.Storage.StorageFile storageFile, Windows.Foundation.Collections.IPropertySet selectorProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IPropertySet)) _ret;
		Debug.OK(staticInstance.abi_GetStreamPropertiesAsync(storageFile, selectorProperties, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) SelectBestStreamFromStreamAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.Collections.IPropertySet selectorProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) _ret;
		Debug.OK(staticInstance.abi_SelectBestStreamFromStreamAsync(stream, selectorProperties, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IPropertySet)) GetStreamPropertiesFromStreamAsync(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.Collections.IPropertySet selectorProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Collections.IPropertySet)) _ret;
		Debug.OK(staticInstance.abi_GetStreamPropertiesFromStreamAsync(stream, selectorProperties, &_ret));
		return _ret;
	}
}

enum ConnectionStatus
{
	Online = 0,
	Offline = 1,
	Sleeping = 2
}

@bitflags
enum DeviceTypes
{
	Unknown = 0x0,
	DigitalMediaRenderer = 0x1,
	DigitalMediaServer = 0x2,
	DigitalMediaPlayer = 0x4
}

enum TransportState
{
	Unknown = 0,
	Stopped = 1,
	Playing = 2,
	Transitioning = 3,
	Paused = 4,
	Recording = 5,
	NoMediaPresent = 6,
	Last = 7
}

enum TransportStatus
{
	Unknown = 0,
	Ok = 1,
	ErrorOccurred = 2,
	Last = 3
}