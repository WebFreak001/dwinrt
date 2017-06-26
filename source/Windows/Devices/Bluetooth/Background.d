module Windows.Devices.Bluetooth.Background;

import dwinrt;

@uuid("610eca86-3480-41c9-a918-7ddadf207e00")
@WinrtFactory("Windows.Devices.Bluetooth.Background.BluetoothLEAdvertisementPublisherTriggerDetails")
interface IBluetoothLEAdvertisementPublisherTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus* return_value);
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("a7db5ad7-2257-4e69-9784-fee645c1dce0")
@WinrtFactory("Windows.Devices.Bluetooth.Background.BluetoothLEAdvertisementWatcherTriggerDetails")
interface IBluetoothLEAdvertisementWatcherTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_Advertisements(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementReceivedEventArgs)* return_value);
	HRESULT get_SignalStrengthFilter(Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter* return_value);
}

@uuid("9ba03b18-0fec-436a-93b1-f46c697532a2")
@WinrtFactory("Windows.Devices.Bluetooth.Background.GattCharacteristicNotificationTriggerDetails")
interface IGattCharacteristicNotificationTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Characteristic(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic* return_value);
	HRESULT get_Value(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("727a50dc-949d-454a-b192-983467e3d50f")
@WinrtFactory("Windows.Devices.Bluetooth.Background.GattCharacteristicNotificationTriggerDetails")
interface IGattCharacteristicNotificationTriggerDetails2 : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_EventTriggeringMode(Windows.Devices.Bluetooth.Background.BluetoothEventTriggeringMode* return_value);
	HRESULT get_ValueChangedEvents(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs)* return_value);
}

@uuid("7fa1b9b9-2f13-40b5-9582-8eb78e98ef13")
@WinrtFactory("Windows.Devices.Bluetooth.Background.GattServiceProviderConnection")
interface IGattServiceProviderConnection : IInspectable
{
extern(Windows):
	HRESULT get_TriggerId(HSTRING* return_value);
	HRESULT get_Service(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService* return_value);
	HRESULT abi_Start();
}

@uuid("3d509f4b-0b0e-4466-b8cd-6ebdda1fa17d")
@WinrtFactory("Windows.Devices.Bluetooth.Background.GattServiceProviderConnection")
interface IGattServiceProviderConnectionStatics : IInspectable
{
extern(Windows):
	HRESULT get_AllServices(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Devices.Bluetooth.Background.GattServiceProviderConnection)* return_value);
}

@uuid("ae8c0625-05ff-4afb-b16a-de95f3cf0158")
@WinrtFactory("Windows.Devices.Bluetooth.Background.GattServiceProviderTriggerDetails")
interface IGattServiceProviderTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Connection(Windows.Devices.Bluetooth.Background.GattServiceProviderConnection* return_value);
}

@uuid("f922734d-2e3c-4efc-ab59-fc5cf96f97e3")
@WinrtFactory("Windows.Devices.Bluetooth.Background.RfcommConnectionTriggerDetails")
interface IRfcommConnectionTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Socket(Windows.Networking.Sockets.StreamSocket* return_value);
	HRESULT get_Incoming(bool* return_value);
	HRESULT get_RemoteDevice(Windows.Devices.Bluetooth.BluetoothDevice* return_value);
}

@uuid("6d3e75a8-5429-4059-92e3-1e8b65528707")
@WinrtFactory("Windows.Devices.Bluetooth.Background.RfcommInboundConnectionInformation")
interface IRfcommInboundConnectionInformation : IInspectable
{
extern(Windows):
	HRESULT get_SdpRecord(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_SdpRecord(Windows.Storage.Streams.IBuffer value);
	HRESULT get_LocalServiceId(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_value);
	HRESULT set_LocalServiceId(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId value);
	HRESULT get_ServiceCapabilities(Windows.Devices.Bluetooth.BluetoothServiceCapabilities* return_value);
	HRESULT set_ServiceCapabilities(Windows.Devices.Bluetooth.BluetoothServiceCapabilities value);
}

@uuid("b091227b-f434-4cb0-99b1-4ab8cedaedd7")
@WinrtFactory("Windows.Devices.Bluetooth.Background.RfcommOutboundConnectionInformation")
interface IRfcommOutboundConnectionInformation : IInspectable
{
extern(Windows):
	HRESULT get_RemoteServiceId(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_value);
	HRESULT set_RemoteServiceId(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId value);
}

interface BluetoothLEAdvertisementPublisherTriggerDetails : Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementPublisherTriggerDetails
{
extern(Windows):
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus Status()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementPublisherTriggerDetails).get_Status(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementPublisherTriggerDetails).get_Error(&_ret));
		return _ret;
	}
}

interface BluetoothLEAdvertisementWatcherTriggerDetails : Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementWatcherTriggerDetails
{
extern(Windows):
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementWatcherTriggerDetails).get_Error(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementReceivedEventArgs) Advertisements()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementReceivedEventArgs) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementWatcherTriggerDetails).get_Advertisements(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter SignalStrengthFilter()
	{
		Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementWatcherTriggerDetails).get_SignalStrengthFilter(&_ret));
		return _ret;
	}
}

interface GattCharacteristicNotificationTriggerDetails : Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails, Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails2
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic Characteristic()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails).get_Characteristic(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Value()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails).get_Value(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails2).get_Error(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.Background.BluetoothEventTriggeringMode EventTriggeringMode()
	{
		Windows.Devices.Bluetooth.Background.BluetoothEventTriggeringMode _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails2).get_EventTriggeringMode(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs) ValueChangedEvents()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails2).get_ValueChangedEvents(&_ret));
		return _ret;
	}
}

interface GattServiceProviderConnection : Windows.Devices.Bluetooth.Background.IGattServiceProviderConnection
{
extern(Windows):
	final HSTRING TriggerId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IGattServiceProviderConnection).get_TriggerId(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService Service()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IGattServiceProviderConnection).get_Service(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IGattServiceProviderConnection).abi_Start());
	}

	private static Windows.Devices.Bluetooth.Background.IGattServiceProviderConnectionStatics _staticInstance;
	public static Windows.Devices.Bluetooth.Background.IGattServiceProviderConnectionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.Background.IGattServiceProviderConnectionStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Devices.Bluetooth.Background.GattServiceProviderConnection) AllServices()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Devices.Bluetooth.Background.GattServiceProviderConnection) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.Background.IGattServiceProviderConnectionStatics).get_AllServices(&_ret));
		return _ret;
	}
}

interface GattServiceProviderTriggerDetails : Windows.Devices.Bluetooth.Background.IGattServiceProviderTriggerDetails
{
extern(Windows):
	final Windows.Devices.Bluetooth.Background.GattServiceProviderConnection Connection()
	{
		Windows.Devices.Bluetooth.Background.GattServiceProviderConnection _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IGattServiceProviderTriggerDetails).get_Connection(&_ret));
		return _ret;
	}
}

interface RfcommConnectionTriggerDetails : Windows.Devices.Bluetooth.Background.IRfcommConnectionTriggerDetails
{
extern(Windows):
	final Windows.Networking.Sockets.StreamSocket Socket()
	{
		Windows.Networking.Sockets.StreamSocket _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommConnectionTriggerDetails).get_Socket(&_ret));
		return _ret;
	}
	final bool Incoming()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommConnectionTriggerDetails).get_Incoming(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothDevice RemoteDevice()
	{
		Windows.Devices.Bluetooth.BluetoothDevice _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommConnectionTriggerDetails).get_RemoteDevice(&_ret));
		return _ret;
	}
}

interface RfcommInboundConnectionInformation : Windows.Devices.Bluetooth.Background.IRfcommInboundConnectionInformation
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer SdpRecord()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommInboundConnectionInformation).get_SdpRecord(&_ret));
		return _ret;
	}
	final void SdpRecord(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommInboundConnectionInformation).set_SdpRecord(value));
	}
	final Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId LocalServiceId()
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommInboundConnectionInformation).get_LocalServiceId(&_ret));
		return _ret;
	}
	final void LocalServiceId(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId value)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommInboundConnectionInformation).set_LocalServiceId(value));
	}
	final Windows.Devices.Bluetooth.BluetoothServiceCapabilities ServiceCapabilities()
	{
		Windows.Devices.Bluetooth.BluetoothServiceCapabilities _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommInboundConnectionInformation).get_ServiceCapabilities(&_ret));
		return _ret;
	}
	final void ServiceCapabilities(Windows.Devices.Bluetooth.BluetoothServiceCapabilities value)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommInboundConnectionInformation).set_ServiceCapabilities(value));
	}
}

interface RfcommOutboundConnectionInformation : Windows.Devices.Bluetooth.Background.IRfcommOutboundConnectionInformation
{
extern(Windows):
	final Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId RemoteServiceId()
	{
		Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommOutboundConnectionInformation).get_RemoteServiceId(&_ret));
		return _ret;
	}
	final void RemoteServiceId(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId value)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.Background.IRfcommOutboundConnectionInformation).set_RemoteServiceId(value));
	}
}

enum BluetoothEventTriggeringMode
{
	Serial = 0,
	Batch = 1,
	KeepLatest = 2
}