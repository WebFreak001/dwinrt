module Windows.Devices.Bluetooth.Background;

import dwinrt;

@uuid("610eca86-3480-41c9-a918-7ddadf207e00")
@WinrtFactory("Windows.Devices.Bluetooth.Background.BluetoothLEAdvertisementPublisherTriggerDetails")
interface IBluetoothLEAdvertisementPublisherTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus* return_value);
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("a7db5ad7-2257-4e69-9784-fee645c1dce0")
@WinrtFactory("Windows.Devices.Bluetooth.Background.BluetoothLEAdvertisementWatcherTriggerDetails")
interface IBluetoothLEAdvertisementWatcherTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_Advertisements(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementReceivedEventArgs)* return_value);
	HRESULT get_SignalStrengthFilter(Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter* return_value);
}

@uuid("9ba03b18-0fec-436a-93b1-f46c697532a2")
@WinrtFactory("Windows.Devices.Bluetooth.Background.GattCharacteristicNotificationTriggerDetails")
interface IGattCharacteristicNotificationTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Characteristic(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic* return_value);
	HRESULT get_Value(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("727a50dc-949d-454a-b192-983467e3d50f")
@WinrtFactory("Windows.Devices.Bluetooth.Background.GattCharacteristicNotificationTriggerDetails")
interface IGattCharacteristicNotificationTriggerDetails2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_EventTriggeringMode(Windows.Devices.Bluetooth.Background.BluetoothEventTriggeringMode* return_value);
	HRESULT get_ValueChangedEvents(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs)* return_value);
}

@uuid("7fa1b9b9-2f13-40b5-9582-8eb78e98ef13")
@WinrtFactory("Windows.Devices.Bluetooth.Background.GattServiceProviderConnection")
interface IGattServiceProviderConnection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TriggerId(HSTRING* return_value);
	HRESULT get_Service(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService* return_value);
	HRESULT abi_Start();
}

@uuid("3d509f4b-0b0e-4466-b8cd-6ebdda1fa17d")
@WinrtFactory("Windows.Devices.Bluetooth.Background.GattServiceProviderConnection")
interface IGattServiceProviderConnectionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllServices(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Devices.Bluetooth.Background.GattServiceProviderConnection)* return_value);
}

@uuid("ae8c0625-05ff-4afb-b16a-de95f3cf0158")
@WinrtFactory("Windows.Devices.Bluetooth.Background.GattServiceProviderTriggerDetails")
interface IGattServiceProviderTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Connection(Windows.Devices.Bluetooth.Background.GattServiceProviderConnection* return_value);
}

@uuid("f922734d-2e3c-4efc-ab59-fc5cf96f97e3")
@WinrtFactory("Windows.Devices.Bluetooth.Background.RfcommConnectionTriggerDetails")
interface IRfcommConnectionTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Socket(Windows.Networking.Sockets.StreamSocket* return_value);
	HRESULT get_Incoming(bool* return_value);
	HRESULT get_RemoteDevice(Windows.Devices.Bluetooth.BluetoothDevice* return_value);
}

@uuid("6d3e75a8-5429-4059-92e3-1e8b65528707")
@WinrtFactory("Windows.Devices.Bluetooth.Background.RfcommInboundConnectionInformation")
interface IRfcommInboundConnectionInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteServiceId(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId* return_value);
	HRESULT set_RemoteServiceId(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId value);
}

interface BluetoothLEAdvertisementPublisherTriggerDetails : Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementPublisherTriggerDetails
{
}

interface BluetoothLEAdvertisementWatcherTriggerDetails : Windows.Devices.Bluetooth.Background.IBluetoothLEAdvertisementWatcherTriggerDetails
{
}

interface GattCharacteristicNotificationTriggerDetails : Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails, Windows.Devices.Bluetooth.Background.IGattCharacteristicNotificationTriggerDetails2
{
}

interface GattServiceProviderConnection : Windows.Devices.Bluetooth.Background.IGattServiceProviderConnection
{
}

interface GattServiceProviderTriggerDetails : Windows.Devices.Bluetooth.Background.IGattServiceProviderTriggerDetails
{
}

interface RfcommConnectionTriggerDetails : Windows.Devices.Bluetooth.Background.IRfcommConnectionTriggerDetails
{
}

interface RfcommInboundConnectionInformation : Windows.Devices.Bluetooth.Background.IRfcommInboundConnectionInformation
{
}

interface RfcommOutboundConnectionInformation : Windows.Devices.Bluetooth.Background.IRfcommOutboundConnectionInformation
{
}

enum BluetoothEventTriggeringMode
{
	Serial = 0,
	Batch = 1,
	KeepLatest = 2
}