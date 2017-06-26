module Windows.Devices.Bluetooth;

import dwinrt;

@uuid("7974f04c-5f7a-4a34-9225-a855f84b1a8b")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothAdapter")
interface IBluetoothAdapter : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_BluetoothAddress(ulong* return_value);
	HRESULT get_IsClassicSupported(bool* return_value);
	HRESULT get_IsLowEnergySupported(bool* return_value);
	HRESULT get_IsPeripheralRoleSupported(bool* return_value);
	HRESULT get_IsCentralRoleSupported(bool* return_value);
	HRESULT get_IsAdvertisementOffloadSupported(bool* return_value);
	HRESULT abi_GetRadioAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.Radio)* return_operation);
}

@uuid("8b02fb6a-ac4c-4741-8661-8eab7d17ea9f")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothAdapter")
interface IBluetoothAdapterStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothAdapter)* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothAdapter)* return_operation);
}

@uuid("d640227e-d7d7-4661-9454-65039ca17a2b")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothClassOfDevice")
interface IBluetoothClassOfDevice : IInspectable
{
extern(Windows):
	HRESULT get_RawValue(UINT32* return_value);
	HRESULT get_MajorClass(Windows.Devices.Bluetooth.BluetoothMajorClass* return_value);
	HRESULT get_MinorClass(Windows.Devices.Bluetooth.BluetoothMinorClass* return_value);
	HRESULT get_ServiceCapabilities(Windows.Devices.Bluetooth.BluetoothServiceCapabilities* return_value);
}

@uuid("e46135bd-0fa2-416c-91b4-c1e48ca061c1")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothClassOfDevice")
interface IBluetoothClassOfDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromRawValue(UINT32 rawValue, Windows.Devices.Bluetooth.BluetoothClassOfDevice* return_classOfDevice);
	HRESULT abi_FromParts(Windows.Devices.Bluetooth.BluetoothMajorClass majorClass, Windows.Devices.Bluetooth.BluetoothMinorClass minorClass, Windows.Devices.Bluetooth.BluetoothServiceCapabilities serviceCapabilities, Windows.Devices.Bluetooth.BluetoothClassOfDevice* return_classOfDevice);
}

@uuid("2335b156-90d2-4a04-aef5-0e20b9e6b707")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothDevice")
interface IBluetoothDevice : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_HostName(Windows.Networking.HostName* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_ClassOfDevice(Windows.Devices.Bluetooth.BluetoothClassOfDevice* return_value);
	HRESULT get_SdpRecords(Windows.Foundation.Collections.IVectorView!(Windows.Storage.Streams.IBuffer)* return_value);
	deprecated("Use GetRfcommServicesAsync instead of RfcommServices.  For more info, see MSDN.")
	HRESULT get_RfcommServices(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService)* return_value);
	HRESULT get_ConnectionStatus(Windows.Devices.Bluetooth.BluetoothConnectionStatus* return_value);
	HRESULT get_BluetoothAddress(ulong* return_value);
	HRESULT add_NameChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothDevice, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_NameChanged(EventRegistrationToken token);
	HRESULT add_SdpRecordsChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothDevice, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SdpRecordsChanged(EventRegistrationToken token);
	HRESULT add_ConnectionStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothDevice, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ConnectionStatusChanged(EventRegistrationToken token);
}

@uuid("0133f954-b156-4dd0-b1f5-c11bc31a5163")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothDevice")
interface IBluetoothDevice2_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceInformation(Windows.Devices.Enumeration.DeviceInformation* return_value);
}
@uuid("0133f954-b156-4dd0-b1f5-c11bc31a5163")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothDevice")
interface IBluetoothDevice2 : IBluetoothDevice2_Base, Windows.Devices.Bluetooth.IBluetoothDevice {}

@uuid("57fff78b-651a-4454-b90f-eb21ef0b0d71")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothDevice")
interface IBluetoothDevice3_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceAccessInformation(Windows.Devices.Enumeration.DeviceAccessInformation* return_value);
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus)* return_value);
	HRESULT abi_GetRfcommServicesAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult)* return_operation);
	HRESULT abi_GetRfcommServicesWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult)* return_operation);
	HRESULT abi_GetRfcommServicesForIdAsync(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult)* return_operation);
	HRESULT abi_GetRfcommServicesForIdWithCacheModeAsync(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult)* return_operation);
}
@uuid("57fff78b-651a-4454-b90f-eb21ef0b0d71")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothDevice")
interface IBluetoothDevice3 : IBluetoothDevice3_Base, Windows.Devices.Bluetooth.IBluetoothDevice2, Windows.Devices.Bluetooth.IBluetoothDevice {}

@uuid("c17949af-57c1-4642-bcce-e6c06b20ae76")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothDeviceId")
interface IBluetoothDeviceId : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_IsClassicDevice(bool* return_value);
	HRESULT get_IsLowEnergyDevice(bool* return_value);
}

@uuid("0991df51-57db-4725-bbd7-84f64327ec2c")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothDevice")
interface IBluetoothDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothDevice)* return_operation);
	HRESULT abi_FromHostNameAsync(Windows.Networking.HostName hostName, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothDevice)* return_operation);
	HRESULT abi_FromBluetoothAddressAsync(ulong address, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothDevice)* return_operation);
	HRESULT abi_GetDeviceSelector(HSTRING* return_deviceSelector);
}

@uuid("c29e8e2f-4e14-4477-aa1b-b8b47e5b7ece")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothDevice")
interface IBluetoothDeviceStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelectorFromPairingState(bool pairingState, HSTRING* return_deviceSelector);
	HRESULT abi_GetDeviceSelectorFromConnectionStatus(Windows.Devices.Bluetooth.BluetoothConnectionStatus connectionStatus, HSTRING* return_deviceSelector);
	HRESULT abi_GetDeviceSelectorFromDeviceName(HSTRING deviceName, HSTRING* return_deviceSelector);
	HRESULT abi_GetDeviceSelectorFromBluetoothAddress(ulong bluetoothAddress, HSTRING* return_deviceSelector);
	HRESULT abi_GetDeviceSelectorFromClassOfDevice(Windows.Devices.Bluetooth.BluetoothClassOfDevice classOfDevice, HSTRING* return_deviceSelector);
}
@uuid("c29e8e2f-4e14-4477-aa1b-b8b47e5b7ece")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothDevice")
interface IBluetoothDeviceStatics2 : IBluetoothDeviceStatics2_Base, Windows.Devices.Bluetooth.IBluetoothDeviceStatics {}

@uuid("5d2079f2-66a8-4258-985e-02b4d9509f18")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothLEAppearance")
interface IBluetoothLEAppearance : IInspectable
{
extern(Windows):
	HRESULT get_RawValue(UINT16* return_value);
	HRESULT get_Category(UINT16* return_value);
	HRESULT get_SubCategory(UINT16* return_value);
}

@uuid("6d4d54fe-046a-4185-aab6-824cf0610861")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothLEAppearanceCategories")
interface IBluetoothLEAppearanceCategoriesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Uncategorized(UINT16* return_value);
	HRESULT get_Phone(UINT16* return_value);
	HRESULT get_Computer(UINT16* return_value);
	HRESULT get_Watch(UINT16* return_value);
	HRESULT get_Clock(UINT16* return_value);
	HRESULT get_Display(UINT16* return_value);
	HRESULT get_RemoteControl(UINT16* return_value);
	HRESULT get_EyeGlasses(UINT16* return_value);
	HRESULT get_Tag(UINT16* return_value);
	HRESULT get_Keyring(UINT16* return_value);
	HRESULT get_MediaPlayer(UINT16* return_value);
	HRESULT get_BarcodeScanner(UINT16* return_value);
	HRESULT get_Thermometer(UINT16* return_value);
	HRESULT get_HeartRate(UINT16* return_value);
	HRESULT get_BloodPressure(UINT16* return_value);
	HRESULT get_HumanInterfaceDevice(UINT16* return_value);
	HRESULT get_GlucoseMeter(UINT16* return_value);
	HRESULT get_RunningWalking(UINT16* return_value);
	HRESULT get_Cycling(UINT16* return_value);
	HRESULT get_PulseOximeter(UINT16* return_value);
	HRESULT get_WeightScale(UINT16* return_value);
	HRESULT get_OutdoorSportActivity(UINT16* return_value);
}

@uuid("a193c0c7-4504-4f4a-9ba5-cd1054e5e065")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothLEAppearance")
interface IBluetoothLEAppearanceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromRawValue(UINT16 rawValue, Windows.Devices.Bluetooth.BluetoothLEAppearance* return_appearance);
	HRESULT abi_FromParts(UINT16 appearanceCategory, UINT16 appearanceSubCategory, Windows.Devices.Bluetooth.BluetoothLEAppearance* return_appearance);
}

@uuid("e57ba606-2144-415a-8312-71ccf291f8d1")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothLEAppearanceSubcategories")
interface IBluetoothLEAppearanceSubcategoriesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Generic(UINT16* return_value);
	HRESULT get_SportsWatch(UINT16* return_value);
	HRESULT get_ThermometerEar(UINT16* return_value);
	HRESULT get_HeartRateBelt(UINT16* return_value);
	HRESULT get_BloodPressureArm(UINT16* return_value);
	HRESULT get_BloodPressureWrist(UINT16* return_value);
	HRESULT get_Keyboard(UINT16* return_value);
	HRESULT get_Mouse(UINT16* return_value);
	HRESULT get_Joystick(UINT16* return_value);
	HRESULT get_Gamepad(UINT16* return_value);
	HRESULT get_DigitizerTablet(UINT16* return_value);
	HRESULT get_CardReader(UINT16* return_value);
	HRESULT get_DigitalPen(UINT16* return_value);
	HRESULT get_BarcodeScanner(UINT16* return_value);
	HRESULT get_RunningWalkingInShoe(UINT16* return_value);
	HRESULT get_RunningWalkingOnShoe(UINT16* return_value);
	HRESULT get_RunningWalkingOnHip(UINT16* return_value);
	HRESULT get_CyclingComputer(UINT16* return_value);
	HRESULT get_CyclingSpeedSensor(UINT16* return_value);
	HRESULT get_CyclingCadenceSensor(UINT16* return_value);
	HRESULT get_CyclingPowerSensor(UINT16* return_value);
	HRESULT get_CyclingSpeedCadenceSensor(UINT16* return_value);
	HRESULT get_OximeterFingertip(UINT16* return_value);
	HRESULT get_OximeterWristWorn(UINT16* return_value);
	HRESULT get_LocationDisplay(UINT16* return_value);
	HRESULT get_LocationNavigationDisplay(UINT16* return_value);
	HRESULT get_LocationPod(UINT16* return_value);
	HRESULT get_LocationNavigationPod(UINT16* return_value);
}

@uuid("b5ee2f7b-4ad8-4642-ac48-80a0b500e887")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothLEDevice")
interface IBluetoothLEDevice : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
	deprecated("Use GetGattServicesAsync instead of GattServices.  For more information, see MSDN.")
	HRESULT get_GattServices(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService)* return_value);
	HRESULT get_ConnectionStatus(Windows.Devices.Bluetooth.BluetoothConnectionStatus* return_value);
	HRESULT get_BluetoothAddress(ulong* return_value);
	deprecated("Use GetGattServicesForUuidAsync instead of GetGattService.	For more information, see MSDN.")
	HRESULT abi_GetGattService(GUID serviceUuid, Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService* return_service);
	HRESULT add_NameChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_NameChanged(EventRegistrationToken token);
	HRESULT add_GattServicesChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_GattServicesChanged(EventRegistrationToken token);
	HRESULT add_ConnectionStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ConnectionStatusChanged(EventRegistrationToken token);
}

@uuid("26f062b3-7aee-4d31-baba-b1b9775f5916")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothLEDevice")
interface IBluetoothLEDevice2_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceInformation(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT get_Appearance(Windows.Devices.Bluetooth.BluetoothLEAppearance* return_value);
	HRESULT get_BluetoothAddressType(Windows.Devices.Bluetooth.BluetoothAddressType* return_value);
}
@uuid("26f062b3-7aee-4d31-baba-b1b9775f5916")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothLEDevice")
interface IBluetoothLEDevice2 : IBluetoothLEDevice2_Base, Windows.Devices.Bluetooth.IBluetoothLEDevice {}

@uuid("aee9e493-44ac-40dc-af33-b2c13c01ca46")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothLEDevice")
interface IBluetoothLEDevice3 : IInspectable
{
extern(Windows):
	HRESULT get_DeviceAccessInformation(Windows.Devices.Enumeration.DeviceAccessInformation* return_value);
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus)* return_operation);
	HRESULT abi_GetGattServicesAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult)* return_operation);
	HRESULT abi_GetGattServicesWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult)* return_operation);
	HRESULT abi_GetGattServicesForUuidAsync(GUID serviceUuid, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult)* return_operation);
	HRESULT abi_GetGattServicesForUuidWithCacheModeAsync(GUID serviceUuid, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult)* return_operation);
}

@uuid("c8cf1a19-f0b6-4bf0-8689-41303de2d9f4")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothLEDevice")
interface IBluetoothLEDeviceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothLEDevice)* return_operation);
	HRESULT abi_FromBluetoothAddressAsync(ulong bluetoothAddress, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothLEDevice)* return_operation);
	HRESULT abi_GetDeviceSelector(HSTRING* return_deviceSelector);
}

@uuid("5f12c06b-3bac-43e8-ad16-563271bd41c2")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothLEDevice")
interface IBluetoothLEDeviceStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelectorFromPairingState(bool pairingState, HSTRING* return_deviceSelector);
	HRESULT abi_GetDeviceSelectorFromConnectionStatus(Windows.Devices.Bluetooth.BluetoothConnectionStatus connectionStatus, HSTRING* return_deviceSelector);
	HRESULT abi_GetDeviceSelectorFromDeviceName(HSTRING deviceName, HSTRING* return_deviceSelector);
	HRESULT abi_GetDeviceSelectorFromBluetoothAddress(ulong bluetoothAddress, HSTRING* return_deviceSelector);
	HRESULT abi_GetDeviceSelectorFromBluetoothAddressWithBluetoothAddressType(ulong bluetoothAddress, Windows.Devices.Bluetooth.BluetoothAddressType bluetoothAddressType, HSTRING* return_deviceSelector);
	HRESULT abi_GetDeviceSelectorFromAppearance(Windows.Devices.Bluetooth.BluetoothLEAppearance appearance, HSTRING* return_deviceSelector);
	HRESULT abi_FromBluetoothAddressWithBluetoothAddressTypeAsync(ulong bluetoothAddress, Windows.Devices.Bluetooth.BluetoothAddressType bluetoothAddressType, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothLEDevice)* return_operation);
}

@uuid("df7b7391-6bb5-4cfe-90b1-5d7324edcf7f")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter")
interface IBluetoothSignalStrengthFilter : IInspectable
{
extern(Windows):
	HRESULT get_InRangeThresholdInDBm(Windows.Foundation.IReference!(INT16)* return_value);
	HRESULT set_InRangeThresholdInDBm(Windows.Foundation.IReference!(INT16) value);
	HRESULT get_OutOfRangeThresholdInDBm(Windows.Foundation.IReference!(INT16)* return_value);
	HRESULT set_OutOfRangeThresholdInDBm(Windows.Foundation.IReference!(INT16) value);
	HRESULT get_OutOfRangeTimeout(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_OutOfRangeTimeout(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_SamplingInterval(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_SamplingInterval(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
}

@uuid("17df0cd8-cf74-4b21-afe6-f57a11bcdea0")
@WinrtFactory("Windows.Devices.Bluetooth.BluetoothUuidHelper")
interface IBluetoothUuidHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromShortId(UINT32 shortId, GUID* return_result);
	HRESULT abi_TryGetShortId(GUID uuid, Windows.Foundation.IReference!(UINT32)* return_result);
}

interface BluetoothAdapter : Windows.Devices.Bluetooth.IBluetoothAdapter
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothAdapter).get_DeviceId(&_ret));
		return _ret;
	}
	final ulong BluetoothAddress()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothAdapter).get_BluetoothAddress(&_ret));
		return _ret;
	}
	final bool IsClassicSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothAdapter).get_IsClassicSupported(&_ret));
		return _ret;
	}
	final bool IsLowEnergySupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothAdapter).get_IsLowEnergySupported(&_ret));
		return _ret;
	}
	final bool IsPeripheralRoleSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothAdapter).get_IsPeripheralRoleSupported(&_ret));
		return _ret;
	}
	final bool IsCentralRoleSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothAdapter).get_IsCentralRoleSupported(&_ret));
		return _ret;
	}
	final bool IsAdvertisementOffloadSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothAdapter).get_IsAdvertisementOffloadSupported(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.Radio) GetRadioAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Radios.Radio) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothAdapter).abi_GetRadioAsync(&_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.IBluetoothAdapterStatics _staticInstance;
	public static Windows.Devices.Bluetooth.IBluetoothAdapterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.IBluetoothAdapterStatics);
		return _staticInstance;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothAdapterStatics).abi_GetDeviceSelector(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothAdapter) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothAdapter) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothAdapterStatics).abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothAdapter) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothAdapter) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothAdapterStatics).abi_GetDefaultAsync(&_ret));
		return _ret;
	}
}

interface BluetoothClassOfDevice : Windows.Devices.Bluetooth.IBluetoothClassOfDevice
{
extern(Windows):
	final UINT32 RawValue()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothClassOfDevice).get_RawValue(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothMajorClass MajorClass()
	{
		Windows.Devices.Bluetooth.BluetoothMajorClass _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothClassOfDevice).get_MajorClass(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothMinorClass MinorClass()
	{
		Windows.Devices.Bluetooth.BluetoothMinorClass _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothClassOfDevice).get_MinorClass(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothServiceCapabilities ServiceCapabilities()
	{
		Windows.Devices.Bluetooth.BluetoothServiceCapabilities _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothClassOfDevice).get_ServiceCapabilities(&_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.IBluetoothClassOfDeviceStatics _staticInstance;
	public static Windows.Devices.Bluetooth.IBluetoothClassOfDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.IBluetoothClassOfDeviceStatics);
		return _staticInstance;
	}
	static Windows.Devices.Bluetooth.BluetoothClassOfDevice FromRawValue(UINT32 rawValue)
	{
		Windows.Devices.Bluetooth.BluetoothClassOfDevice _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothClassOfDeviceStatics).abi_FromRawValue(rawValue, &_ret));
		return _ret;
	}
	static Windows.Devices.Bluetooth.BluetoothClassOfDevice FromParts(Windows.Devices.Bluetooth.BluetoothMajorClass majorClass, Windows.Devices.Bluetooth.BluetoothMinorClass minorClass, Windows.Devices.Bluetooth.BluetoothServiceCapabilities serviceCapabilities)
	{
		Windows.Devices.Bluetooth.BluetoothClassOfDevice _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothClassOfDeviceStatics).abi_FromParts(majorClass, minorClass, serviceCapabilities, &_ret));
		return _ret;
	}
}

interface BluetoothDevice : Windows.Devices.Bluetooth.IBluetoothDevice, Windows.Foundation.IClosable, Windows.Devices.Bluetooth.IBluetoothDevice2, Windows.Devices.Bluetooth.IBluetoothDevice3
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Networking.HostName HostName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).get_HostName(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).get_Name(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothClassOfDevice ClassOfDevice()
	{
		Windows.Devices.Bluetooth.BluetoothClassOfDevice _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).get_ClassOfDevice(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Storage.Streams.IBuffer) SdpRecords()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).get_SdpRecords(&_ret));
		return _ret;
	}
	deprecated("Use GetRfcommServicesAsync instead of RfcommServices.  For more info, see MSDN.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService) RfcommServices()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceService) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).get_RfcommServices(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothConnectionStatus ConnectionStatus()
	{
		Windows.Devices.Bluetooth.BluetoothConnectionStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).get_ConnectionStatus(&_ret));
		return _ret;
	}
	final ulong BluetoothAddress()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).get_BluetoothAddress(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnNameChanged(void delegate(Windows.Devices.Bluetooth.BluetoothDevice, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).add_NameChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothDevice, IInspectable), Windows.Devices.Bluetooth.BluetoothDevice, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeNameChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).remove_NameChanged(token));
	}
	final EventRegistrationToken OnSdpRecordsChanged(void delegate(Windows.Devices.Bluetooth.BluetoothDevice, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).add_SdpRecordsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothDevice, IInspectable), Windows.Devices.Bluetooth.BluetoothDevice, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSdpRecordsChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).remove_SdpRecordsChanged(token));
	}
	final EventRegistrationToken OnConnectionStatusChanged(void delegate(Windows.Devices.Bluetooth.BluetoothDevice, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).add_ConnectionStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothDevice, IInspectable), Windows.Devices.Bluetooth.BluetoothDevice, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeConnectionStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice).remove_ConnectionStatusChanged(token));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Devices.Enumeration.DeviceInformation DeviceInformation()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice2).get_DeviceInformation(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceAccessInformation DeviceAccessInformation()
	{
		Windows.Devices.Enumeration.DeviceAccessInformation _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice3).get_DeviceAccessInformation(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice3).abi_RequestAccessAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult) GetRfcommServicesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice3).abi_GetRfcommServicesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult) GetRfcommServicesWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice3).abi_GetRfcommServicesWithCacheModeAsync(cacheMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult) GetRfcommServicesForIdAsync(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice3).abi_GetRfcommServicesForIdAsync(serviceId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult) GetRfcommServicesForIdWithCacheModeAsync(Windows.Devices.Bluetooth.Rfcomm.RfcommServiceId serviceId, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.Rfcomm.RfcommDeviceServicesResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDevice3).abi_GetRfcommServicesForIdWithCacheModeAsync(serviceId, cacheMode, &_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.IBluetoothDeviceStatics _staticInstance;
	public static Windows.Devices.Bluetooth.IBluetoothDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.IBluetoothDeviceStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothDevice) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothDevice) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothDeviceStatics).abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothDevice) FromHostNameAsync(Windows.Networking.HostName hostName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothDevice) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothDeviceStatics).abi_FromHostNameAsync(hostName, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothDevice) FromBluetoothAddressAsync(ulong address)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothDevice) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothDeviceStatics).abi_FromBluetoothAddressAsync(address, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothDeviceStatics).abi_GetDeviceSelector(&_ret));
		return _ret;
	}
}

interface BluetoothDeviceId : Windows.Devices.Bluetooth.IBluetoothDeviceId
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDeviceId).get_Id(&_ret));
		return _ret;
	}
	final bool IsClassicDevice()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDeviceId).get_IsClassicDevice(&_ret));
		return _ret;
	}
	final bool IsLowEnergyDevice()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothDeviceId).get_IsLowEnergyDevice(&_ret));
		return _ret;
	}
}

interface BluetoothLEAppearance : Windows.Devices.Bluetooth.IBluetoothLEAppearance
{
extern(Windows):
	final UINT16 RawValue()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearance).get_RawValue(&_ret));
		return _ret;
	}
	final UINT16 Category()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearance).get_Category(&_ret));
		return _ret;
	}
	final UINT16 SubCategory()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearance).get_SubCategory(&_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.IBluetoothLEAppearanceStatics _staticInstance;
	public static Windows.Devices.Bluetooth.IBluetoothLEAppearanceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceStatics);
		return _staticInstance;
	}
	static Windows.Devices.Bluetooth.BluetoothLEAppearance FromRawValue(UINT16 rawValue)
	{
		Windows.Devices.Bluetooth.BluetoothLEAppearance _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceStatics).abi_FromRawValue(rawValue, &_ret));
		return _ret;
	}
	static Windows.Devices.Bluetooth.BluetoothLEAppearance FromParts(UINT16 appearanceCategory, UINT16 appearanceSubCategory)
	{
		Windows.Devices.Bluetooth.BluetoothLEAppearance _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceStatics).abi_FromParts(appearanceCategory, appearanceSubCategory, &_ret));
		return _ret;
	}
}

interface BluetoothLEAppearanceCategories
{
	private static Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics _staticInstance;
	public static Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics);
		return _staticInstance;
	}
	static UINT16 Uncategorized()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_Uncategorized(&_ret));
		return _ret;
	}
	static UINT16 Phone()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_Phone(&_ret));
		return _ret;
	}
	static UINT16 Computer()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_Computer(&_ret));
		return _ret;
	}
	static UINT16 Watch()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_Watch(&_ret));
		return _ret;
	}
	static UINT16 Clock()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_Clock(&_ret));
		return _ret;
	}
	static UINT16 Display()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_Display(&_ret));
		return _ret;
	}
	static UINT16 RemoteControl()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_RemoteControl(&_ret));
		return _ret;
	}
	static UINT16 EyeGlasses()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_EyeGlasses(&_ret));
		return _ret;
	}
	static UINT16 Tag()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_Tag(&_ret));
		return _ret;
	}
	static UINT16 Keyring()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_Keyring(&_ret));
		return _ret;
	}
	static UINT16 MediaPlayer()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_MediaPlayer(&_ret));
		return _ret;
	}
	static UINT16 BarcodeScanner()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_BarcodeScanner(&_ret));
		return _ret;
	}
	static UINT16 Thermometer()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_Thermometer(&_ret));
		return _ret;
	}
	static UINT16 HeartRate()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_HeartRate(&_ret));
		return _ret;
	}
	static UINT16 BloodPressure()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_BloodPressure(&_ret));
		return _ret;
	}
	static UINT16 HumanInterfaceDevice()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_HumanInterfaceDevice(&_ret));
		return _ret;
	}
	static UINT16 GlucoseMeter()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_GlucoseMeter(&_ret));
		return _ret;
	}
	static UINT16 RunningWalking()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_RunningWalking(&_ret));
		return _ret;
	}
	static UINT16 Cycling()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_Cycling(&_ret));
		return _ret;
	}
	static UINT16 PulseOximeter()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_PulseOximeter(&_ret));
		return _ret;
	}
	static UINT16 WeightScale()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_WeightScale(&_ret));
		return _ret;
	}
	static UINT16 OutdoorSportActivity()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceCategoriesStatics).get_OutdoorSportActivity(&_ret));
		return _ret;
	}
}

interface BluetoothLEAppearanceSubcategories
{
	private static Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics _staticInstance;
	public static Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics);
		return _staticInstance;
	}
	static UINT16 Generic()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_Generic(&_ret));
		return _ret;
	}
	static UINT16 SportsWatch()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_SportsWatch(&_ret));
		return _ret;
	}
	static UINT16 ThermometerEar()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_ThermometerEar(&_ret));
		return _ret;
	}
	static UINT16 HeartRateBelt()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_HeartRateBelt(&_ret));
		return _ret;
	}
	static UINT16 BloodPressureArm()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_BloodPressureArm(&_ret));
		return _ret;
	}
	static UINT16 BloodPressureWrist()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_BloodPressureWrist(&_ret));
		return _ret;
	}
	static UINT16 Keyboard()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_Keyboard(&_ret));
		return _ret;
	}
	static UINT16 Mouse()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_Mouse(&_ret));
		return _ret;
	}
	static UINT16 Joystick()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_Joystick(&_ret));
		return _ret;
	}
	static UINT16 Gamepad()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_Gamepad(&_ret));
		return _ret;
	}
	static UINT16 DigitizerTablet()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_DigitizerTablet(&_ret));
		return _ret;
	}
	static UINT16 CardReader()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_CardReader(&_ret));
		return _ret;
	}
	static UINT16 DigitalPen()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_DigitalPen(&_ret));
		return _ret;
	}
	static UINT16 BarcodeScanner()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_BarcodeScanner(&_ret));
		return _ret;
	}
	static UINT16 RunningWalkingInShoe()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_RunningWalkingInShoe(&_ret));
		return _ret;
	}
	static UINT16 RunningWalkingOnShoe()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_RunningWalkingOnShoe(&_ret));
		return _ret;
	}
	static UINT16 RunningWalkingOnHip()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_RunningWalkingOnHip(&_ret));
		return _ret;
	}
	static UINT16 CyclingComputer()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_CyclingComputer(&_ret));
		return _ret;
	}
	static UINT16 CyclingSpeedSensor()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_CyclingSpeedSensor(&_ret));
		return _ret;
	}
	static UINT16 CyclingCadenceSensor()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_CyclingCadenceSensor(&_ret));
		return _ret;
	}
	static UINT16 CyclingPowerSensor()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_CyclingPowerSensor(&_ret));
		return _ret;
	}
	static UINT16 CyclingSpeedCadenceSensor()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_CyclingSpeedCadenceSensor(&_ret));
		return _ret;
	}
	static UINT16 OximeterFingertip()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_OximeterFingertip(&_ret));
		return _ret;
	}
	static UINT16 OximeterWristWorn()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_OximeterWristWorn(&_ret));
		return _ret;
	}
	static UINT16 LocationDisplay()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_LocationDisplay(&_ret));
		return _ret;
	}
	static UINT16 LocationNavigationDisplay()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_LocationNavigationDisplay(&_ret));
		return _ret;
	}
	static UINT16 LocationPod()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_LocationPod(&_ret));
		return _ret;
	}
	static UINT16 LocationNavigationPod()
	{
		UINT16 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEAppearanceSubcategoriesStatics).get_LocationNavigationPod(&_ret));
		return _ret;
	}
}

interface BluetoothLEDevice : Windows.Devices.Bluetooth.IBluetoothLEDevice, Windows.Foundation.IClosable, Windows.Devices.Bluetooth.IBluetoothLEDevice2, Windows.Devices.Bluetooth.IBluetoothLEDevice3
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).get_DeviceId(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).get_Name(&_ret));
		return _ret;
	}
	deprecated("Use GetGattServicesAsync instead of GattServices.  For more information, see MSDN.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) GattServices()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).get_GattServices(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothConnectionStatus ConnectionStatus()
	{
		Windows.Devices.Bluetooth.BluetoothConnectionStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).get_ConnectionStatus(&_ret));
		return _ret;
	}
	final ulong BluetoothAddress()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).get_BluetoothAddress(&_ret));
		return _ret;
	}
	deprecated("Use GetGattServicesForUuidAsync instead of GetGattService.	For more information, see MSDN.")
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService GetGattService(GUID serviceUuid)
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).abi_GetGattService(serviceUuid, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnNameChanged(void delegate(Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).add_NameChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable), Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeNameChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).remove_NameChanged(token));
	}
	final EventRegistrationToken OnGattServicesChanged(void delegate(Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).add_GattServicesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable), Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeGattServicesChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).remove_GattServicesChanged(token));
	}
	final EventRegistrationToken OnConnectionStatusChanged(void delegate(Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).add_ConnectionStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable), Windows.Devices.Bluetooth.BluetoothLEDevice, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeConnectionStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice).remove_ConnectionStatusChanged(token));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Devices.Enumeration.DeviceInformation DeviceInformation()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice2).get_DeviceInformation(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothLEAppearance Appearance()
	{
		Windows.Devices.Bluetooth.BluetoothLEAppearance _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice2).get_Appearance(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothAddressType BluetoothAddressType()
	{
		Windows.Devices.Bluetooth.BluetoothAddressType _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice2).get_BluetoothAddressType(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceAccessInformation DeviceAccessInformation()
	{
		Windows.Devices.Enumeration.DeviceAccessInformation _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice3).get_DeviceAccessInformation(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice3).abi_RequestAccessAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) GetGattServicesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice3).abi_GetGattServicesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) GetGattServicesWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice3).abi_GetGattServicesWithCacheModeAsync(cacheMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) GetGattServicesForUuidAsync(GUID serviceUuid)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice3).abi_GetGattServicesForUuidAsync(serviceUuid, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) GetGattServicesForUuidWithCacheModeAsync(GUID serviceUuid, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothLEDevice3).abi_GetGattServicesForUuidWithCacheModeAsync(serviceUuid, cacheMode, &_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.IBluetoothLEDeviceStatics _staticInstance;
	public static Windows.Devices.Bluetooth.IBluetoothLEDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.IBluetoothLEDeviceStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothLEDevice) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothLEDevice) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEDeviceStatics).abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothLEDevice) FromBluetoothAddressAsync(ulong bluetoothAddress)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.BluetoothLEDevice) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEDeviceStatics).abi_FromBluetoothAddressAsync(bluetoothAddress, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothLEDeviceStatics).abi_GetDeviceSelector(&_ret));
		return _ret;
	}
}

interface BluetoothSignalStrengthFilter : Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter
{
extern(Windows):
	final Windows.Foundation.IReference!(INT16) InRangeThresholdInDBm()
	{
		Windows.Foundation.IReference!(INT16) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter).get_InRangeThresholdInDBm(&_ret));
		return _ret;
	}
	final void InRangeThresholdInDBm(Windows.Foundation.IReference!(INT16) value)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter).set_InRangeThresholdInDBm(value));
	}
	final Windows.Foundation.IReference!(INT16) OutOfRangeThresholdInDBm()
	{
		Windows.Foundation.IReference!(INT16) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter).get_OutOfRangeThresholdInDBm(&_ret));
		return _ret;
	}
	final void OutOfRangeThresholdInDBm(Windows.Foundation.IReference!(INT16) value)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter).set_OutOfRangeThresholdInDBm(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) OutOfRangeTimeout()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter).get_OutOfRangeTimeout(&_ret));
		return _ret;
	}
	final void OutOfRangeTimeout(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter).set_OutOfRangeTimeout(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) SamplingInterval()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter).get_SamplingInterval(&_ret));
		return _ret;
	}
	final void SamplingInterval(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Devices.Bluetooth.IBluetoothSignalStrengthFilter).set_SamplingInterval(value));
	}
}

interface BluetoothUuidHelper
{
	private static Windows.Devices.Bluetooth.IBluetoothUuidHelperStatics _staticInstance;
	public static Windows.Devices.Bluetooth.IBluetoothUuidHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.IBluetoothUuidHelperStatics);
		return _staticInstance;
	}
	static GUID FromShortId(UINT32 shortId)
	{
		GUID _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothUuidHelperStatics).abi_FromShortId(shortId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IReference!(UINT32) TryGetShortId(GUID uuid)
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Bluetooth.IBluetoothUuidHelperStatics).abi_TryGetShortId(uuid, &_ret));
		return _ret;
	}
}

enum BluetoothAddressType
{
	Public = 0,
	Random = 1,
	Unspecified = 2
}

enum BluetoothCacheMode
{
	Cached = 0,
	Uncached = 1
}

enum BluetoothConnectionStatus
{
	Disconnected = 0,
	Connected = 1
}

enum BluetoothError
{
	Success = 0,
	RadioNotAvailable = 1,
	ResourceInUse = 2,
	DeviceNotConnected = 3,
	OtherError = 4,
	DisabledByPolicy = 5,
	NotSupported = 6,
	DisabledByUser = 7,
	ConsentRequired = 8,
	TransportNotSupported = 9
}

enum BluetoothMajorClass
{
	Miscellaneous = 0,
	Computer = 1,
	Phone = 2,
	NetworkAccessPoint = 3,
	AudioVideo = 4,
	Peripheral = 5,
	Imaging = 6,
	Wearable = 7,
	Toy = 8,
	Health = 9
}

enum BluetoothMinorClass
{
	Uncategorized = 0,
	ComputerDesktop = 1,
	ComputerServer = 2,
	ComputerLaptop = 3,
	ComputerHandheld = 4,
	ComputerPalmSize = 5,
	ComputerWearable = 6,
	ComputerTablet = 7,
	PhoneCellular = 1,
	PhoneCordless = 2,
	PhoneSmartPhone = 3,
	PhoneWired = 4,
	PhoneIsdn = 5,
	NetworkFullyAvailable = 0,
	NetworkUsed01To17Percent = 8,
	NetworkUsed17To33Percent = 16,
	NetworkUsed33To50Percent = 24,
	NetworkUsed50To67Percent = 32,
	NetworkUsed67To83Percent = 40,
	NetworkUsed83To99Percent = 48,
	NetworkNoServiceAvailable = 56,
	AudioVideoWearableHeadset = 1,
	AudioVideoHandsFree = 2,
	AudioVideoMicrophone = 4,
	AudioVideoLoudspeaker = 5,
	AudioVideoHeadphones = 6,
	AudioVideoPortableAudio = 7,
	AudioVideoCarAudio = 8,
	AudioVideoSetTopBox = 9,
	AudioVideoHifiAudioDevice = 10,
	AudioVideoVcr = 11,
	AudioVideoVideoCamera = 12,
	AudioVideoCamcorder = 13,
	AudioVideoVideoMonitor = 14,
	AudioVideoVideoDisplayAndLoudspeaker = 15,
	AudioVideoVideoConferencing = 16,
	AudioVideoGamingOrToy = 18,
	PeripheralJoystick = 1,
	PeripheralGamepad = 2,
	PeripheralRemoteControl = 3,
	PeripheralSensing = 4,
	PeripheralDigitizerTablet = 5,
	PeripheralCardReader = 6,
	PeripheralDigitalPen = 7,
	PeripheralHandheldScanner = 8,
	PeripheralHandheldGesture = 9,
	WearableWristwatch = 1,
	WearablePager = 2,
	WearableJacket = 3,
	WearableHelmet = 4,
	WearableGlasses = 5,
	ToyRobot = 1,
	ToyVehicle = 2,
	ToyDoll = 3,
	ToyController = 4,
	ToyGame = 5,
	HealthBloodPressureMonitor = 1,
	HealthThermometer = 2,
	HealthWeighingScale = 3,
	HealthGlucoseMeter = 4,
	HealthPulseOximeter = 5,
	HealthHeartRateMonitor = 6,
	HealthHealthDataDisplay = 7,
	HealthStepCounter = 8,
	HealthBodyCompositionAnalyzer = 9,
	HealthPeakFlowMonitor = 10,
	HealthMedicationMonitor = 11,
	HealthKneeProsthesis = 12,
	HealthAnkleProsthesis = 13,
	HealthGenericHealthManager = 14,
	HealthPersonalMobilityDevice = 15
}

@bitflags
enum BluetoothServiceCapabilities
{
	None = 0x0,
	LimitedDiscoverableMode = 0x1,
	PositioningService = 0x8,
	NetworkingService = 0x10,
	RenderingService = 0x20,
	CapturingService = 0x40,
	ObjectTransferService = 0x80,
	AudioService = 0x100,
	TelephoneService = 0x200,
	InformationService = 0x400
}