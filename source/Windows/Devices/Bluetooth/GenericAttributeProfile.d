module Windows.Devices.Bluetooth.GenericAttributeProfile;

import dwinrt;

@uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic")
interface IGattCharacteristic : IInspectable
{
extern(Windows):
	deprecated("Use GetDescriptorsForUuidAsync instead of GetDescriptors.  For more information, see MSDN.")
	HRESULT abi_GetDescriptors(GUID descriptorUuid, Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor)* return_value);
	HRESULT get_CharacteristicProperties(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties* return_value);
	HRESULT get_ProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT set_ProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value);
	HRESULT get_UserDescription(HSTRING* return_value);
	HRESULT get_Uuid(GUID* return_value);
	HRESULT get_AttributeHandle(UINT16* return_value);
	HRESULT get_PresentationFormats(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat)* return_value);
	HRESULT abi_ReadValueAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult)* return_value);
	HRESULT abi_ReadValueWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult)* return_value);
	HRESULT abi_WriteValueAsync(Windows.Storage.Streams.IBuffer value, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus)* return_asyncOp);
	HRESULT abi_WriteValueWithOptionAsync(Windows.Storage.Streams.IBuffer value, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteOption writeOption, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus)* return_asyncOp);
	HRESULT abi_ReadClientCharacteristicConfigurationDescriptorAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadClientCharacteristicConfigurationDescriptorResult)* return_asyncOp);
	HRESULT abi_WriteClientCharacteristicConfigurationDescriptorAsync(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientCharacteristicConfigurationDescriptorValue clientCharacteristicConfigurationDescriptorValue, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus)* return_asyncOp);
	HRESULT add_ValueChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs) valueChangedHandler, EventRegistrationToken* return_valueChangedEventCookie);
	HRESULT remove_ValueChanged(EventRegistrationToken valueChangedEventCookie);
}

@uuid("ae1ab578-ec06-4764-b780-9835a1d35d6e")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic")
interface IGattCharacteristic2_Base : IInspectable
{
extern(Windows):
	HRESULT get_Service(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService* return_value);
	deprecated("Use GetDescriptorsAsync instead of GetAllDescriptors.  For more information, see MSDN.")
	HRESULT abi_GetAllDescriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor)* return_descriptors);
}
@uuid("ae1ab578-ec06-4764-b780-9835a1d35d6e")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic")
interface IGattCharacteristic2 : IGattCharacteristic2_Base, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic {}

@uuid("3f3c663e-93d4-406b-b817-db81f8ed53b3")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic")
interface IGattCharacteristic3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDescriptorsAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult)* return_operation);
	HRESULT abi_GetDescriptorsWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult)* return_operation);
	HRESULT abi_GetDescriptorsForUuidAsync(GUID descriptorUuid, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult)* return_operation);
	HRESULT abi_GetDescriptorsForUuidWithCacheModeAsync(GUID descriptorUuid, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult)* return_operation);
	HRESULT abi_WriteValueWithResultAsync(Windows.Storage.Streams.IBuffer value, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult)* return_operation);
	HRESULT abi_WriteValueWithResultAndOptionAsync(Windows.Storage.Streams.IBuffer value, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteOption writeOption, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult)* return_operation);
	HRESULT abi_WriteClientCharacteristicConfigurationDescriptorWithResultAsync(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientCharacteristicConfigurationDescriptorValue clientCharacteristicConfigurationDescriptorValue, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult)* return_operation);
}

@uuid("59cb50c3-5934-4f68-a198-eb864fa44e6b")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic")
interface IGattCharacteristicStatics : IInspectable
{
extern(Windows):
	deprecated("Use BluetoothUuidHelper instead of ConvertShortIdToUuid.  For more information, see MSDN.")
	HRESULT abi_ConvertShortIdToUuid(UINT16 shortId, GUID* return_characteristicUuid);
}

@uuid("58fa4586-b1de-470c-b7de-0d11ff44f4b7")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicUuids")
interface IGattCharacteristicUuidsStatics : IInspectable
{
extern(Windows):
	HRESULT get_BatteryLevel(GUID* return_value);
	HRESULT get_BloodPressureFeature(GUID* return_value);
	HRESULT get_BloodPressureMeasurement(GUID* return_value);
	HRESULT get_BodySensorLocation(GUID* return_value);
	HRESULT get_CscFeature(GUID* return_value);
	HRESULT get_CscMeasurement(GUID* return_value);
	HRESULT get_GlucoseFeature(GUID* return_value);
	HRESULT get_GlucoseMeasurement(GUID* return_value);
	HRESULT get_GlucoseMeasurementContext(GUID* return_value);
	HRESULT get_HeartRateControlPoint(GUID* return_value);
	HRESULT get_HeartRateMeasurement(GUID* return_value);
	HRESULT get_IntermediateCuffPressure(GUID* return_value);
	HRESULT get_IntermediateTemperature(GUID* return_value);
	HRESULT get_MeasurementInterval(GUID* return_value);
	HRESULT get_RecordAccessControlPoint(GUID* return_value);
	HRESULT get_RscFeature(GUID* return_value);
	HRESULT get_RscMeasurement(GUID* return_value);
	HRESULT get_SCControlPoint(GUID* return_value);
	HRESULT get_SensorLocation(GUID* return_value);
	HRESULT get_TemperatureMeasurement(GUID* return_value);
	HRESULT get_TemperatureType(GUID* return_value);
}

@uuid("1855b425-d46e-4a2c-9c3f-ed6dea29e7be")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicUuids")
interface IGattCharacteristicUuidsStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_AlertCategoryId(GUID* return_value);
	HRESULT get_AlertCategoryIdBitMask(GUID* return_value);
	HRESULT get_AlertLevel(GUID* return_value);
	HRESULT get_AlertNotificationControlPoint(GUID* return_value);
	HRESULT get_AlertStatus(GUID* return_value);
	HRESULT get_GapAppearance(GUID* return_value);
	HRESULT get_BootKeyboardInputReport(GUID* return_value);
	HRESULT get_BootKeyboardOutputReport(GUID* return_value);
	HRESULT get_BootMouseInputReport(GUID* return_value);
	HRESULT get_CurrentTime(GUID* return_value);
	HRESULT get_CyclingPowerControlPoint(GUID* return_value);
	HRESULT get_CyclingPowerFeature(GUID* return_value);
	HRESULT get_CyclingPowerMeasurement(GUID* return_value);
	HRESULT get_CyclingPowerVector(GUID* return_value);
	HRESULT get_DateTime(GUID* return_value);
	HRESULT get_DayDateTime(GUID* return_value);
	HRESULT get_DayOfWeek(GUID* return_value);
	HRESULT get_GapDeviceName(GUID* return_value);
	HRESULT get_DstOffset(GUID* return_value);
	HRESULT get_ExactTime256(GUID* return_value);
	HRESULT get_FirmwareRevisionString(GUID* return_value);
	HRESULT get_HardwareRevisionString(GUID* return_value);
	HRESULT get_HidControlPoint(GUID* return_value);
	HRESULT get_HidInformation(GUID* return_value);
	HRESULT get_Ieee1107320601RegulatoryCertificationDataList(GUID* return_value);
	HRESULT get_LnControlPoint(GUID* return_value);
	HRESULT get_LnFeature(GUID* return_value);
	HRESULT get_LocalTimeInformation(GUID* return_value);
	HRESULT get_LocationAndSpeed(GUID* return_value);
	HRESULT get_ManufacturerNameString(GUID* return_value);
	HRESULT get_ModelNumberString(GUID* return_value);
	HRESULT get_Navigation(GUID* return_value);
	HRESULT get_NewAlert(GUID* return_value);
	HRESULT get_GapPeripheralPreferredConnectionParameters(GUID* return_value);
	HRESULT get_GapPeripheralPrivacyFlag(GUID* return_value);
	HRESULT get_PnpId(GUID* return_value);
	HRESULT get_PositionQuality(GUID* return_value);
	HRESULT get_ProtocolMode(GUID* return_value);
	HRESULT get_GapReconnectionAddress(GUID* return_value);
	HRESULT get_ReferenceTimeInformation(GUID* return_value);
	HRESULT get_Report(GUID* return_value);
	HRESULT get_ReportMap(GUID* return_value);
	HRESULT get_RingerControlPoint(GUID* return_value);
	HRESULT get_RingerSetting(GUID* return_value);
	HRESULT get_ScanIntervalWindow(GUID* return_value);
	HRESULT get_ScanRefresh(GUID* return_value);
	HRESULT get_SerialNumberString(GUID* return_value);
	HRESULT get_GattServiceChanged(GUID* return_value);
	HRESULT get_SoftwareRevisionString(GUID* return_value);
	HRESULT get_SupportedNewAlertCategory(GUID* return_value);
	HRESULT get_SupportUnreadAlertCategory(GUID* return_value);
	HRESULT get_SystemId(GUID* return_value);
	HRESULT get_TimeAccuracy(GUID* return_value);
	HRESULT get_TimeSource(GUID* return_value);
	HRESULT get_TimeUpdateControlPoint(GUID* return_value);
	HRESULT get_TimeUpdateState(GUID* return_value);
	HRESULT get_TimeWithDst(GUID* return_value);
	HRESULT get_TimeZone(GUID* return_value);
	HRESULT get_TxPowerLevel(GUID* return_value);
	HRESULT get_UnreadAlertStatus(GUID* return_value);
}

@uuid("1194945c-b257-4f3e-9db7-f68bc9a9aef2")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult")
interface IGattCharacteristicsResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(ubyte)* return_value);
	HRESULT get_Characteristics(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic)* return_value);
}

@uuid("506d5599-0112-419a-8e3b-ae21afabd2c2")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult")
interface IGattClientNotificationResult : IInspectable
{
extern(Windows):
	HRESULT get_SubscribedClient(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient* return_value);
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(ubyte)* return_value);
}

@uuid("92055f2b-8084-4344-b4c2-284de19a8506")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor")
interface IGattDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_ProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT set_ProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value);
	HRESULT get_Uuid(GUID* return_value);
	HRESULT get_AttributeHandle(UINT16* return_value);
	HRESULT abi_ReadValueAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult)* return_value);
	HRESULT abi_ReadValueWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult)* return_value);
	HRESULT abi_WriteValueAsync(Windows.Storage.Streams.IBuffer value, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus)* return_action);
}

@uuid("8f563d39-d630-406c-ba11-10cdd16b0e5e")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor")
interface IGattDescriptor2 : IInspectable
{
extern(Windows):
	HRESULT abi_WriteValueWithResultAsync(Windows.Storage.Streams.IBuffer value, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult)* return_operation);
}

@uuid("92055f2d-8084-4344-b4c2-284de19a8506")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor")
interface IGattDescriptorStatics : IInspectable
{
extern(Windows):
	deprecated("Use BluetoothUuidHelper instead of ConvertShortIdToUuid.  For more information, see MSDN.")
	HRESULT abi_ConvertShortIdToUuid(UINT16 shortId, GUID* return_descriptorUuid);
}

@uuid("a6f862ce-9cfc-42f1-9185-ff37b75181d3")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorUuids")
interface IGattDescriptorUuidsStatics : IInspectable
{
extern(Windows):
	HRESULT get_CharacteristicAggregateFormat(GUID* return_value);
	HRESULT get_CharacteristicExtendedProperties(GUID* return_value);
	HRESULT get_CharacteristicPresentationFormat(GUID* return_value);
	HRESULT get_CharacteristicUserDescription(GUID* return_value);
	HRESULT get_ClientCharacteristicConfiguration(GUID* return_value);
	HRESULT get_ServerCharacteristicConfiguration(GUID* return_value);
}

@uuid("9bc091f3-95e7-4489-8d25-ff81955a57b9")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult")
interface IGattDescriptorsResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(ubyte)* return_value);
	HRESULT get_Descriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor)* return_value);
}

@uuid("ac7b7c05-b33c-47cf-990f-6b8f5577df71")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService")
interface IGattDeviceService_Base : IInspectable
{
extern(Windows):
	deprecated("Use GetCharacteristicsForUuidAsync instead of GetCharacteristics.  For more information, see MSDN.")
	HRESULT abi_GetCharacteristics(GUID characteristicUuid, Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic)* return_value);
	deprecated("Use GetIncludedServicesForUuidAsync instead of GetIncludedServices.	 For more information, see MSDN.")
	HRESULT abi_GetIncludedServices(GUID serviceUuid, Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService)* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Uuid(GUID* return_value);
	HRESULT get_AttributeHandle(UINT16* return_value);
}
@uuid("ac7b7c05-b33c-47cf-990f-6b8f5577df71")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService")
interface IGattDeviceService : IGattDeviceService_Base, Windows.Foundation.IClosable {}

@uuid("fc54520b-0b0d-4708-bae0-9ffd9489bc59")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService")
interface IGattDeviceService2_Base : IInspectable
{
extern(Windows):
	deprecated("Use Session instead of Device property.	 For more information, see MSDN.")
	HRESULT get_Device(Windows.Devices.Bluetooth.BluetoothLEDevice* return_value);
	deprecated("ParentServices may be altered or unavailable in future releases.  For more information, see MSDN.")
	HRESULT get_ParentServices(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService)* return_value);
	deprecated("Use GetCharacteristicsAsync instead of GetAllCharacteristics.  For more information, see MSDN.")
	HRESULT abi_GetAllCharacteristics(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic)* return_characteristics);
	deprecated("Use GetIncludedServicesAsync instead of GetAllIncludedServices.	 For more information, see MSDN.")
	HRESULT abi_GetAllIncludedServices(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService)* return_includedServices);
}
@uuid("fc54520b-0b0d-4708-bae0-9ffd9489bc59")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService")
interface IGattDeviceService2 : IGattDeviceService2_Base, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService, Windows.Foundation.IClosable {}

@uuid("b293a950-0c53-437c-a9b3-5c3210c6e569")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService")
interface IGattDeviceService3 : IInspectable
{
extern(Windows):
	HRESULT get_DeviceAccessInformation(Windows.Devices.Enumeration.DeviceAccessInformation* return_value);
	HRESULT get_Session(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession* return_value);
	HRESULT get_SharingMode(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSharingMode* return_value);
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus)* return_value);
	HRESULT abi_OpenAsync(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSharingMode sharingMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattOpenStatus)* return_operation);
	HRESULT abi_GetCharacteristicsAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult)* return_operation);
	HRESULT abi_GetCharacteristicsWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult)* return_operation);
	HRESULT abi_GetCharacteristicsForUuidAsync(GUID characteristicUuid, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult)* return_operation);
	HRESULT abi_GetCharacteristicsForUuidWithCacheModeAsync(GUID characteristicUuid, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult)* return_operation);
	HRESULT abi_GetIncludedServicesAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult)* return_operation);
	HRESULT abi_GetIncludedServicesWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult)* return_operation);
	HRESULT abi_GetIncludedServicesForUuidAsync(GUID serviceUuid, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult)* return_operation);
	HRESULT abi_GetIncludedServicesForUuidWithCacheModeAsync(GUID serviceUuid, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult)* return_operation);
}

@uuid("196d0022-faad-45dc-ae5b-2ac3184e84db")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService")
interface IGattDeviceServiceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService)* return_asyncOp);
	HRESULT abi_GetDeviceSelectorFromUuid(GUID serviceUuid, HSTRING* return_selector);
	deprecated("Use GetDeviceSelectorFromUuid instead of GetDeviceSelectorFromShortId.	For more information, see MSDN.")
	HRESULT abi_GetDeviceSelectorFromShortId(UINT16 serviceShortId, HSTRING* return_selector);
	deprecated("Use BluetoothUuidHelper instead of ConvertShortIdToUuid.  For more information, see MSDN.")
	HRESULT abi_ConvertShortIdToUuid(UINT16 shortId, GUID* return_serviceUuid);
}

@uuid("0604186e-24a6-4b0d-a2f2-30cc01545d25")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService")
interface IGattDeviceServiceStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdWithSharingModeAsync(HSTRING deviceId, Windows.Devices.Bluetooth.GenericAttributeProfile.GattSharingMode sharingMode, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService)* return_operation);
	HRESULT abi_GetDeviceSelectorForBluetoothDeviceId(Windows.Devices.Bluetooth.BluetoothDeviceId bluetoothDeviceId, HSTRING* return_result);
	HRESULT abi_GetDeviceSelectorForBluetoothDeviceIdWithCacheMode(Windows.Devices.Bluetooth.BluetoothDeviceId bluetoothDeviceId, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, HSTRING* return_result);
	HRESULT abi_GetDeviceSelectorForBluetoothDeviceIdAndUuid(Windows.Devices.Bluetooth.BluetoothDeviceId bluetoothDeviceId, GUID serviceUuid, HSTRING* return_result);
	HRESULT abi_GetDeviceSelectorForBluetoothDeviceIdAndUuidWithCacheMode(Windows.Devices.Bluetooth.BluetoothDeviceId bluetoothDeviceId, GUID serviceUuid, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode, HSTRING* return_result);
}

@uuid("171dd3ee-016d-419d-838a-576cf475a3d8")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult")
interface IGattDeviceServicesResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(ubyte)* return_value);
	HRESULT get_Services(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService)* return_value);
}

@uuid("aede376d-5412-4d74-92a8-8deb8526829c")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic")
interface IGattLocalCharacteristic : IInspectable
{
extern(Windows):
	HRESULT get_Uuid(GUID* return_value);
	HRESULT get_StaticValue(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_CharacteristicProperties(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties* return_value);
	HRESULT get_ReadProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT get_WriteProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT abi_CreateDescriptorAsync(GUID descriptorUuid, Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptorParameters parameters, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptorResult)* return_operation);
	HRESULT get_Descriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor)* return_value);
	HRESULT get_UserDescription(HSTRING* return_value);
	HRESULT get_PresentationFormats(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat)* return_value);
	HRESULT get_SubscribedClients(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient)* return_value);
	HRESULT add_SubscribedClientsChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SubscribedClientsChanged(EventRegistrationToken token);
	HRESULT add_ReadRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadRequested(EventRegistrationToken token);
	HRESULT add_WriteRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_WriteRequested(EventRegistrationToken token);
	HRESULT abi_NotifyValueAsync(Windows.Storage.Streams.IBuffer value, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult))* return_operation);
	HRESULT abi_NotifyValueForSubscribedClientAsync(Windows.Storage.Streams.IBuffer value, Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient subscribedClient, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult)* return_operation);
}

@uuid("faf73db4-4cff-44c7-8445-040e6ead0063")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicParameters")
interface IGattLocalCharacteristicParameters : IInspectable
{
extern(Windows):
	HRESULT set_StaticValue(Windows.Storage.Streams.IBuffer value);
	HRESULT get_StaticValue(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_CharacteristicProperties(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties value);
	HRESULT get_CharacteristicProperties(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties* return_value);
	HRESULT set_ReadProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value);
	HRESULT get_ReadProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT set_WriteProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value);
	HRESULT get_WriteProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT set_UserDescription(HSTRING value);
	HRESULT get_UserDescription(HSTRING* return_value);
	HRESULT get_PresentationFormats(Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat)* return_value);
}

@uuid("7975de9b-0170-4397-9666-92f863f12ee6")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicResult")
interface IGattLocalCharacteristicResult : IInspectable
{
extern(Windows):
	HRESULT get_Characteristic(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic* return_value);
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("f48ebe06-789d-4a4b-8652-bd017b5d2fc6")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor")
interface IGattLocalDescriptor : IInspectable
{
extern(Windows):
	HRESULT get_Uuid(GUID* return_value);
	HRESULT get_StaticValue(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_ReadProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT get_WriteProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT add_ReadRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor, Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadRequested(EventRegistrationToken token);
	HRESULT add_WriteRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_WriteRequested(EventRegistrationToken token);
}

@uuid("5fdede6a-f3c1-4b66-8c4b-e3d2293b40e9")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptorParameters")
interface IGattLocalDescriptorParameters : IInspectable
{
extern(Windows):
	HRESULT set_StaticValue(Windows.Storage.Streams.IBuffer value);
	HRESULT get_StaticValue(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_ReadProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value);
	HRESULT get_ReadProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT set_WriteProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value);
	HRESULT get_WriteProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
}

@uuid("375791be-321f-4366-bfc1-3bc6b82c79f8")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptorResult")
interface IGattLocalDescriptorResult : IInspectable
{
extern(Windows):
	HRESULT get_Descriptor(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor* return_value);
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("f513e258-f7f7-4902-b803-57fcc7d6fe83")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService")
interface IGattLocalService : IInspectable
{
extern(Windows):
	HRESULT get_Uuid(GUID* return_value);
	HRESULT abi_CreateCharacteristicAsync(GUID characteristicUuid, Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicParameters parameters, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicResult)* return_operation);
	HRESULT get_Characteristics(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic)* return_value);
}

@uuid("196d0021-faad-45dc-ae5b-2ac3184e84db")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat")
interface IGattPresentationFormat : IInspectable
{
extern(Windows):
	HRESULT get_FormatType(ubyte* return_value);
	HRESULT get_Exponent(INT32* return_value);
	HRESULT get_Unit(UINT16* return_value);
	HRESULT get_Namespace(ubyte* return_value);
	HRESULT get_Description(UINT16* return_value);
}

@uuid("196d0020-faad-45dc-ae5b-2ac3184e84db")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat")
interface IGattPresentationFormatStatics : IInspectable
{
extern(Windows):
	HRESULT get_BluetoothSigAssignedNumbers(ubyte* return_value);
}

@uuid("a9c21713-b82f-435e-b634-21fd85a43c07")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat")
interface IGattPresentationFormatStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_FromParts(ubyte formatType, INT32 exponent, UINT16 unit, ubyte namespaceId, UINT16 description, Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat* return_result);
}
@uuid("a9c21713-b82f-435e-b634-21fd85a43c07")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat")
interface IGattPresentationFormatStatics2 : IGattPresentationFormatStatics2_Base, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormatStatics {}

@uuid("faf1ba0a-30ba-409c-bef7-cffb6d03b8fb")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormatTypes")
interface IGattPresentationFormatTypesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Boolean(ubyte* return_value);
	HRESULT get_Bit2(ubyte* return_value);
	HRESULT get_Nibble(ubyte* return_value);
	HRESULT get_UInt8(ubyte* return_value);
	HRESULT get_UInt12(ubyte* return_value);
	HRESULT get_UInt16(ubyte* return_value);
	HRESULT get_UInt24(ubyte* return_value);
	HRESULT get_UInt32(ubyte* return_value);
	HRESULT get_UInt48(ubyte* return_value);
	HRESULT get_UInt64(ubyte* return_value);
	HRESULT get_UInt128(ubyte* return_value);
	HRESULT get_SInt8(ubyte* return_value);
	HRESULT get_SInt12(ubyte* return_value);
	HRESULT get_SInt16(ubyte* return_value);
	HRESULT get_SInt24(ubyte* return_value);
	HRESULT get_SInt32(ubyte* return_value);
	HRESULT get_SInt48(ubyte* return_value);
	HRESULT get_SInt64(ubyte* return_value);
	HRESULT get_SInt128(ubyte* return_value);
	HRESULT get_Float32(ubyte* return_value);
	HRESULT get_Float64(ubyte* return_value);
	HRESULT get_SFloat(ubyte* return_value);
	HRESULT get_Float(ubyte* return_value);
	HRESULT get_DUInt16(ubyte* return_value);
	HRESULT get_Utf8(ubyte* return_value);
	HRESULT get_Utf16(ubyte* return_value);
	HRESULT get_Struct(ubyte* return_value);
}

@uuid("ca46c5c5-0ecc-4809-bea3-cf79bc991e37")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtocolError")
interface IGattProtocolErrorStatics : IInspectable
{
extern(Windows):
	HRESULT get_InvalidHandle(ubyte* return_value);
	HRESULT get_ReadNotPermitted(ubyte* return_value);
	HRESULT get_WriteNotPermitted(ubyte* return_value);
	HRESULT get_InvalidPdu(ubyte* return_value);
	HRESULT get_InsufficientAuthentication(ubyte* return_value);
	HRESULT get_RequestNotSupported(ubyte* return_value);
	HRESULT get_InvalidOffset(ubyte* return_value);
	HRESULT get_InsufficientAuthorization(ubyte* return_value);
	HRESULT get_PrepareQueueFull(ubyte* return_value);
	HRESULT get_AttributeNotFound(ubyte* return_value);
	HRESULT get_AttributeNotLong(ubyte* return_value);
	HRESULT get_InsufficientEncryptionKeySize(ubyte* return_value);
	HRESULT get_InvalidAttributeValueLength(ubyte* return_value);
	HRESULT get_UnlikelyError(ubyte* return_value);
	HRESULT get_InsufficientEncryption(ubyte* return_value);
	HRESULT get_UnsupportedGroupType(ubyte* return_value);
	HRESULT get_InsufficientResources(ubyte* return_value);
}

@uuid("63a66f09-1aea-4c4c-a50f-97bae474b348")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadClientCharacteristicConfigurationDescriptorResult")
interface IGattReadClientCharacteristicConfigurationDescriptorResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ClientCharacteristicConfigurationDescriptor(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientCharacteristicConfigurationDescriptorValue* return_value);
}

@uuid("1bf1a59d-ba4d-4622-8651-f4ee150d0a5d")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadClientCharacteristicConfigurationDescriptorResult")
interface IGattReadClientCharacteristicConfigurationDescriptorResult2 : IInspectable
{
extern(Windows):
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(ubyte)* return_value);
}

@uuid("f1dd6535-6acd-42a6-a4bb-d789dae0043e")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest")
interface IGattReadRequest : IInspectable
{
extern(Windows):
	HRESULT get_Offset(UINT32* return_value);
	HRESULT get_Length(UINT32* return_value);
	HRESULT get_State(Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState* return_value);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest, Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StateChanged(EventRegistrationToken token);
	HRESULT abi_RespondWithValue(Windows.Storage.Streams.IBuffer value);
	HRESULT abi_RespondWithProtocolError(ubyte protocolError);
}

@uuid("93497243-f39c-484b-8ab6-996ba486cfa3")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs")
interface IGattReadRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Session(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
	HRESULT abi_GetRequestAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest)* return_operation);
}

@uuid("63a66f08-1aea-4c4c-a50f-97bae474b348")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult")
interface IGattReadResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_Value(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("a10f50a0-fb43-48af-baaa-638a5c6329fe")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult")
interface IGattReadResult2 : IInspectable
{
extern(Windows):
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(ubyte)* return_value);
}

@uuid("63a66f07-1aea-4c4c-a50f-97bae474b348")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReliableWriteTransaction")
interface IGattReliableWriteTransaction : IInspectable
{
extern(Windows):
	HRESULT abi_WriteValue(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic characteristic, Windows.Storage.Streams.IBuffer value);
	HRESULT abi_CommitAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus)* return_asyncOp);
}

@uuid("51113987-ef12-462f-9fb2-a1a43a679416")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReliableWriteTransaction")
interface IGattReliableWriteTransaction2 : IInspectable
{
extern(Windows):
	HRESULT abi_CommitWithResultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult)* return_operation);
}

@uuid("e834d92c-27be-44b3-9d0d-4fc6e808dd3f")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs")
interface IGattRequestStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_State(Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState* return_value);
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("7822b3cd-2889-4f86-a051-3f0aed1c2760")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider")
interface IGattServiceProvider : IInspectable
{
extern(Windows):
	HRESULT get_Service(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService* return_value);
	HRESULT get_AdvertisementStatus(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatus* return_value);
	HRESULT add_AdvertisementStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider, Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatusChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AdvertisementStatusChanged(EventRegistrationToken token);
	HRESULT abi_StartAdvertising();
	HRESULT abi_StartAdvertisingWithParameters(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters parameters);
	HRESULT abi_StopAdvertising();
}

@uuid("59a5aa65-fa21-4ffc-b155-04d928012686")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatusChangedEventArgs")
interface IGattServiceProviderAdvertisementStatusChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatus* return_value);
}

@uuid("e2ce31ab-6315-4c22-9bd7-781dbc3d8d82")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters")
interface IGattServiceProviderAdvertisingParameters : IInspectable
{
extern(Windows):
	HRESULT set_IsConnectable(bool value);
	HRESULT get_IsConnectable(bool* return_value);
	HRESULT set_IsDiscoverable(bool value);
	HRESULT get_IsDiscoverable(bool* return_value);
}

@uuid("764696d8-c53e-428c-8a48-67afe02c3ae6")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderResult")
interface IGattServiceProviderResult : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_ServiceProvider(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider* return_value);
}

@uuid("31794063-5256-4054-a4f4-7bbe7755a57e")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider")
interface IGattServiceProviderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAsync(GUID serviceUuid, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderResult)* return_operation);
}

@uuid("6dc57058-9aba-4417-b8f2-dce016d34ee2")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceUuids")
interface IGattServiceUuidsStatics : IInspectable
{
extern(Windows):
	HRESULT get_Battery(GUID* return_value);
	HRESULT get_BloodPressure(GUID* return_value);
	HRESULT get_CyclingSpeedAndCadence(GUID* return_value);
	HRESULT get_GenericAccess(GUID* return_value);
	HRESULT get_GenericAttribute(GUID* return_value);
	HRESULT get_Glucose(GUID* return_value);
	HRESULT get_HealthThermometer(GUID* return_value);
	HRESULT get_HeartRate(GUID* return_value);
	HRESULT get_RunningSpeedAndCadence(GUID* return_value);
}

@uuid("d2ae94f5-3d15-4f79-9c0c-eaafa675155c")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceUuids")
interface IGattServiceUuidsStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_AlertNotification(GUID* return_value);
	HRESULT get_CurrentTime(GUID* return_value);
	HRESULT get_CyclingPower(GUID* return_value);
	HRESULT get_DeviceInformation(GUID* return_value);
	HRESULT get_HumanInterfaceDevice(GUID* return_value);
	HRESULT get_ImmediateAlert(GUID* return_value);
	HRESULT get_LinkLoss(GUID* return_value);
	HRESULT get_LocationAndNavigation(GUID* return_value);
	HRESULT get_NextDstChange(GUID* return_value);
	HRESULT get_PhoneAlertStatus(GUID* return_value);
	HRESULT get_ReferenceTimeUpdate(GUID* return_value);
	HRESULT get_ScanParameters(GUID* return_value);
	HRESULT get_TxPower(GUID* return_value);
}

@uuid("d23b5143-e04e-4c24-999c-9c256f9856b1")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession")
interface IGattSession : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(Windows.Devices.Bluetooth.BluetoothDeviceId* return_value);
	HRESULT get_CanMaintainConnection(bool* return_value);
	HRESULT set_MaintainConnection(bool value);
	HRESULT get_MaintainConnection(bool* return_value);
	HRESULT get_MaxPduSize(UINT16* return_value);
	HRESULT get_SessionStatus(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatus* return_value);
	HRESULT add_MaxPduSizeChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_MaxPduSizeChanged(EventRegistrationToken token);
	HRESULT add_SessionStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession, Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatusChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SessionStatusChanged(EventRegistrationToken token);
}

@uuid("2e65b95c-539f-4db7-82a8-73bdbbf73ebf")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession")
interface IGattSessionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromDeviceIdAsync(Windows.Devices.Bluetooth.BluetoothDeviceId deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession)* return_operation);
}

@uuid("7605b72e-837f-404c-ab34-3163f39ddf32")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatusChangedEventArgs")
interface IGattSessionStatusChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatus* return_value);
}

@uuid("736e9001-15a4-4ec2-9248-e3f20d463be9")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient")
interface IGattSubscribedClient : IInspectable
{
extern(Windows):
	HRESULT get_Session(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession* return_value);
	HRESULT get_MaxNotificationSize(UINT16* return_value);
	HRESULT add_MaxNotificationSizeChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_MaxNotificationSizeChanged(EventRegistrationToken token);
}

@uuid("d21bdb54-06e3-4ed8-a263-acfac8ba7313")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs")
interface IGattValueChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_CharacteristicValue(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_timestamp);
}

@uuid("aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest")
interface IGattWriteRequest : IInspectable
{
extern(Windows):
	HRESULT get_Value(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Offset(UINT32* return_value);
	HRESULT get_Option(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteOption* return_value);
	HRESULT get_State(Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState* return_value);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest, Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StateChanged(EventRegistrationToken token);
	HRESULT abi_Respond();
	HRESULT abi_RespondWithProtocolError(ubyte protocolError);
}

@uuid("2dec8bbe-a73a-471a-94d5-037deadd0806")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs")
interface IGattWriteRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Session(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
	HRESULT abi_GetRequestAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest)* return_operation);
}

@uuid("4991ddb1-cb2b-44f7-99fc-d29a2871dc9b")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult")
interface IGattWriteResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(ubyte)* return_value);
}

interface GattCharacteristic : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic2, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic3
{
extern(Windows):
	deprecated("Use GetDescriptorsForUuidAsync instead of GetDescriptors.  For more information, see MSDN.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor) GetDescriptors(GUID descriptorUuid)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).abi_GetDescriptors(descriptorUuid, &_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties CharacteristicProperties()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).get_CharacteristicProperties(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel ProtectionLevel()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).get_ProtectionLevel(&_ret));
		return _ret;
	}
	final void ProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).set_ProtectionLevel(value));
	}
	final HSTRING UserDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).get_UserDescription(&_ret));
		return _ret;
	}
	final GUID Uuid()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).get_Uuid(&_ret));
		return _ret;
	}
	final UINT16 AttributeHandle()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).get_AttributeHandle(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat) PresentationFormats()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).get_PresentationFormats(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult) ReadValueAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).abi_ReadValueAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult) ReadValueWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).abi_ReadValueWithCacheModeAsync(cacheMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus) WriteValueAsync(Windows.Storage.Streams.IBuffer value)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).abi_WriteValueAsync(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus) WriteValueWithOptionAsync(Windows.Storage.Streams.IBuffer value, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteOption writeOption)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).abi_WriteValueWithOptionAsync(value, writeOption, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadClientCharacteristicConfigurationDescriptorResult) ReadClientCharacteristicConfigurationDescriptorAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadClientCharacteristicConfigurationDescriptorResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).abi_ReadClientCharacteristicConfigurationDescriptorAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus) WriteClientCharacteristicConfigurationDescriptorAsync(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientCharacteristicConfigurationDescriptorValue clientCharacteristicConfigurationDescriptorValue)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).abi_WriteClientCharacteristicConfigurationDescriptorAsync(clientCharacteristicConfigurationDescriptorValue, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnValueChanged(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).add_ValueChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs), Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeValueChanged(EventRegistrationToken valueChangedEventCookie)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic)this.asInterface(uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b"))).remove_ValueChanged(valueChangedEventCookie));
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService Service()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic2)this.asInterface(uuid("ae1ab578-ec06-4764-b780-9835a1d35d6e"))).get_Service(&_ret));
		return _ret;
	}
	deprecated("Use GetDescriptorsAsync instead of GetAllDescriptors.  For more information, see MSDN.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor) GetAllDescriptors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic2)this.asInterface(uuid("ae1ab578-ec06-4764-b780-9835a1d35d6e"))).abi_GetAllDescriptors(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult) GetDescriptorsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic3)this.asInterface(uuid("3f3c663e-93d4-406b-b817-db81f8ed53b3"))).abi_GetDescriptorsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult) GetDescriptorsWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic3)this.asInterface(uuid("3f3c663e-93d4-406b-b817-db81f8ed53b3"))).abi_GetDescriptorsWithCacheModeAsync(cacheMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult) GetDescriptorsForUuidAsync(GUID descriptorUuid)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic3)this.asInterface(uuid("3f3c663e-93d4-406b-b817-db81f8ed53b3"))).abi_GetDescriptorsForUuidAsync(descriptorUuid, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult) GetDescriptorsForUuidWithCacheModeAsync(GUID descriptorUuid, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorsResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic3)this.asInterface(uuid("3f3c663e-93d4-406b-b817-db81f8ed53b3"))).abi_GetDescriptorsForUuidWithCacheModeAsync(descriptorUuid, cacheMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult) WriteValueWithResultAsync(Windows.Storage.Streams.IBuffer value)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic3)this.asInterface(uuid("3f3c663e-93d4-406b-b817-db81f8ed53b3"))).abi_WriteValueWithResultAsync(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult) WriteValueWithResultAndOptionAsync(Windows.Storage.Streams.IBuffer value, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteOption writeOption)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic3)this.asInterface(uuid("3f3c663e-93d4-406b-b817-db81f8ed53b3"))).abi_WriteValueWithResultAndOptionAsync(value, writeOption, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult) WriteClientCharacteristicConfigurationDescriptorWithResultAsync(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientCharacteristicConfigurationDescriptorValue clientCharacteristicConfigurationDescriptorValue)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristic3)this.asInterface(uuid("3f3c663e-93d4-406b-b817-db81f8ed53b3"))).abi_WriteClientCharacteristicConfigurationDescriptorWithResultAsync(clientCharacteristicConfigurationDescriptorValue, &_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicStatics);
		return _staticInstance;
	}
	deprecated("Use BluetoothUuidHelper instead of ConvertShortIdToUuid.  For more information, see MSDN.")
	static GUID ConvertShortIdToUuid(UINT16 shortId)
	{
		GUID _ret;
		Debug.OK(staticInstance.abi_ConvertShortIdToUuid(shortId, &_ret));
		return _ret;
	}
}

interface GattCharacteristicUuids
{
	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicUuidsStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicUuidsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicUuidsStatics);
		return _staticInstance;
	}
	static GUID BatteryLevel()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_BatteryLevel(&_ret));
		return _ret;
	}
	static GUID BloodPressureFeature()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_BloodPressureFeature(&_ret));
		return _ret;
	}
	static GUID BloodPressureMeasurement()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_BloodPressureMeasurement(&_ret));
		return _ret;
	}
	static GUID BodySensorLocation()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_BodySensorLocation(&_ret));
		return _ret;
	}
	static GUID CscFeature()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_CscFeature(&_ret));
		return _ret;
	}
	static GUID CscMeasurement()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_CscMeasurement(&_ret));
		return _ret;
	}
	static GUID GlucoseFeature()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_GlucoseFeature(&_ret));
		return _ret;
	}
	static GUID GlucoseMeasurement()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_GlucoseMeasurement(&_ret));
		return _ret;
	}
	static GUID GlucoseMeasurementContext()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_GlucoseMeasurementContext(&_ret));
		return _ret;
	}
	static GUID HeartRateControlPoint()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_HeartRateControlPoint(&_ret));
		return _ret;
	}
	static GUID HeartRateMeasurement()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_HeartRateMeasurement(&_ret));
		return _ret;
	}
	static GUID IntermediateCuffPressure()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_IntermediateCuffPressure(&_ret));
		return _ret;
	}
	static GUID IntermediateTemperature()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_IntermediateTemperature(&_ret));
		return _ret;
	}
	static GUID MeasurementInterval()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_MeasurementInterval(&_ret));
		return _ret;
	}
	static GUID RecordAccessControlPoint()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_RecordAccessControlPoint(&_ret));
		return _ret;
	}
	static GUID RscFeature()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_RscFeature(&_ret));
		return _ret;
	}
	static GUID RscMeasurement()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_RscMeasurement(&_ret));
		return _ret;
	}
	static GUID SCControlPoint()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_SCControlPoint(&_ret));
		return _ret;
	}
	static GUID SensorLocation()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_SensorLocation(&_ret));
		return _ret;
	}
	static GUID TemperatureMeasurement()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_TemperatureMeasurement(&_ret));
		return _ret;
	}
	static GUID TemperatureType()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_TemperatureType(&_ret));
		return _ret;
	}
}

interface GattCharacteristicsResult : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicsResult
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus Status()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicsResult)this.asInterface(uuid("1194945c-b257-4f3e-9db7-f68bc9a9aef2"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ubyte) ProtocolError()
	{
		Windows.Foundation.IReference!(ubyte) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicsResult)this.asInterface(uuid("1194945c-b257-4f3e-9db7-f68bc9a9aef2"))).get_ProtocolError(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic) Characteristics()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattCharacteristicsResult)this.asInterface(uuid("1194945c-b257-4f3e-9db7-f68bc9a9aef2"))).get_Characteristics(&_ret));
		return _ret;
	}
}

interface GattClientNotificationResult : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattClientNotificationResult
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient SubscribedClient()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattClientNotificationResult)this.asInterface(uuid("506d5599-0112-419a-8e3b-ae21afabd2c2"))).get_SubscribedClient(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus Status()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattClientNotificationResult)this.asInterface(uuid("506d5599-0112-419a-8e3b-ae21afabd2c2"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ubyte) ProtocolError()
	{
		Windows.Foundation.IReference!(ubyte) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattClientNotificationResult)this.asInterface(uuid("506d5599-0112-419a-8e3b-ae21afabd2c2"))).get_ProtocolError(&_ret));
		return _ret;
	}
}

interface GattDescriptor : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor2
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel ProtectionLevel()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor)this.asInterface(uuid("92055f2b-8084-4344-b4c2-284de19a8506"))).get_ProtectionLevel(&_ret));
		return _ret;
	}
	final void ProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor)this.asInterface(uuid("92055f2b-8084-4344-b4c2-284de19a8506"))).set_ProtectionLevel(value));
	}
	final GUID Uuid()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor)this.asInterface(uuid("92055f2b-8084-4344-b4c2-284de19a8506"))).get_Uuid(&_ret));
		return _ret;
	}
	final UINT16 AttributeHandle()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor)this.asInterface(uuid("92055f2b-8084-4344-b4c2-284de19a8506"))).get_AttributeHandle(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult) ReadValueAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor)this.asInterface(uuid("92055f2b-8084-4344-b4c2-284de19a8506"))).abi_ReadValueAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult) ReadValueWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor)this.asInterface(uuid("92055f2b-8084-4344-b4c2-284de19a8506"))).abi_ReadValueWithCacheModeAsync(cacheMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus) WriteValueAsync(Windows.Storage.Streams.IBuffer value)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor)this.asInterface(uuid("92055f2b-8084-4344-b4c2-284de19a8506"))).abi_WriteValueAsync(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult) WriteValueWithResultAsync(Windows.Storage.Streams.IBuffer value)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptor2)this.asInterface(uuid("8f563d39-d630-406c-ba11-10cdd16b0e5e"))).abi_WriteValueWithResultAsync(value, &_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorStatics);
		return _staticInstance;
	}
	deprecated("Use BluetoothUuidHelper instead of ConvertShortIdToUuid.  For more information, see MSDN.")
	static GUID ConvertShortIdToUuid(UINT16 shortId)
	{
		GUID _ret;
		Debug.OK(staticInstance.abi_ConvertShortIdToUuid(shortId, &_ret));
		return _ret;
	}
}

interface GattDescriptorUuids
{
	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorUuidsStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorUuidsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorUuidsStatics);
		return _staticInstance;
	}
	static GUID CharacteristicAggregateFormat()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_CharacteristicAggregateFormat(&_ret));
		return _ret;
	}
	static GUID CharacteristicExtendedProperties()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_CharacteristicExtendedProperties(&_ret));
		return _ret;
	}
	static GUID CharacteristicPresentationFormat()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_CharacteristicPresentationFormat(&_ret));
		return _ret;
	}
	static GUID CharacteristicUserDescription()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_CharacteristicUserDescription(&_ret));
		return _ret;
	}
	static GUID ClientCharacteristicConfiguration()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_ClientCharacteristicConfiguration(&_ret));
		return _ret;
	}
	static GUID ServerCharacteristicConfiguration()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_ServerCharacteristicConfiguration(&_ret));
		return _ret;
	}
}

interface GattDescriptorsResult : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorsResult
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus Status()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorsResult)this.asInterface(uuid("9bc091f3-95e7-4489-8d25-ff81955a57b9"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ubyte) ProtocolError()
	{
		Windows.Foundation.IReference!(ubyte) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorsResult)this.asInterface(uuid("9bc091f3-95e7-4489-8d25-ff81955a57b9"))).get_ProtocolError(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor) Descriptors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDescriptorsResult)this.asInterface(uuid("9bc091f3-95e7-4489-8d25-ff81955a57b9"))).get_Descriptors(&_ret));
		return _ret;
	}
}

interface GattDeviceService : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService, Windows.Foundation.IClosable, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService2, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3
{
extern(Windows):
	deprecated("Use GetCharacteristicsForUuidAsync instead of GetCharacteristics.  For more information, see MSDN.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic) GetCharacteristics(GUID characteristicUuid)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService)this.asInterface(uuid("ac7b7c05-b33c-47cf-990f-6b8f5577df71"))).abi_GetCharacteristics(characteristicUuid, &_ret));
		return _ret;
	}
	deprecated("Use GetIncludedServicesForUuidAsync instead of GetIncludedServices.	 For more information, see MSDN.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) GetIncludedServices(GUID serviceUuid)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService)this.asInterface(uuid("ac7b7c05-b33c-47cf-990f-6b8f5577df71"))).abi_GetIncludedServices(serviceUuid, &_ret));
		return _ret;
	}
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService)this.asInterface(uuid("ac7b7c05-b33c-47cf-990f-6b8f5577df71"))).get_DeviceId(&_ret));
		return _ret;
	}
	final GUID Uuid()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService)this.asInterface(uuid("ac7b7c05-b33c-47cf-990f-6b8f5577df71"))).get_Uuid(&_ret));
		return _ret;
	}
	final UINT16 AttributeHandle()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService)this.asInterface(uuid("ac7b7c05-b33c-47cf-990f-6b8f5577df71"))).get_AttributeHandle(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	deprecated("Use Session instead of Device property.	 For more information, see MSDN.")
	final Windows.Devices.Bluetooth.BluetoothLEDevice Device()
	{
		Windows.Devices.Bluetooth.BluetoothLEDevice _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService2)this.asInterface(uuid("fc54520b-0b0d-4708-bae0-9ffd9489bc59"))).get_Device(&_ret));
		return _ret;
	}
	deprecated("ParentServices may be altered or unavailable in future releases.  For more information, see MSDN.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) ParentServices()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService2)this.asInterface(uuid("fc54520b-0b0d-4708-bae0-9ffd9489bc59"))).get_ParentServices(&_ret));
		return _ret;
	}
	deprecated("Use GetCharacteristicsAsync instead of GetAllCharacteristics.  For more information, see MSDN.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic) GetAllCharacteristics()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService2)this.asInterface(uuid("fc54520b-0b0d-4708-bae0-9ffd9489bc59"))).abi_GetAllCharacteristics(&_ret));
		return _ret;
	}
	deprecated("Use GetIncludedServicesAsync instead of GetAllIncludedServices.	 For more information, see MSDN.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) GetAllIncludedServices()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService2)this.asInterface(uuid("fc54520b-0b0d-4708-bae0-9ffd9489bc59"))).abi_GetAllIncludedServices(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceAccessInformation DeviceAccessInformation()
	{
		Windows.Devices.Enumeration.DeviceAccessInformation _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).get_DeviceAccessInformation(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession Session()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).get_Session(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattSharingMode SharingMode()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattSharingMode _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).get_SharingMode(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).abi_RequestAccessAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattOpenStatus) OpenAsync(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSharingMode sharingMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattOpenStatus) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).abi_OpenAsync(sharingMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult) GetCharacteristicsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).abi_GetCharacteristicsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult) GetCharacteristicsWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).abi_GetCharacteristicsWithCacheModeAsync(cacheMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult) GetCharacteristicsForUuidAsync(GUID characteristicUuid)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).abi_GetCharacteristicsForUuidAsync(characteristicUuid, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult) GetCharacteristicsForUuidWithCacheModeAsync(GUID characteristicUuid, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicsResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).abi_GetCharacteristicsForUuidWithCacheModeAsync(characteristicUuid, cacheMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) GetIncludedServicesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).abi_GetIncludedServicesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) GetIncludedServicesWithCacheModeAsync(Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).abi_GetIncludedServicesWithCacheModeAsync(cacheMode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) GetIncludedServicesForUuidAsync(GUID serviceUuid)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).abi_GetIncludedServicesForUuidAsync(serviceUuid, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) GetIncludedServicesForUuidWithCacheModeAsync(GUID serviceUuid, Windows.Devices.Bluetooth.BluetoothCacheMode cacheMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceServicesResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceService3)this.asInterface(uuid("b293a950-0c53-437c-a9b3-5c3210c6e569"))).abi_GetIncludedServicesForUuidWithCacheModeAsync(serviceUuid, cacheMode, &_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceServiceStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceServiceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceServiceStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelectorFromUuid(GUID serviceUuid)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelectorFromUuid(serviceUuid, &_ret));
		return _ret;
	}
	deprecated("Use GetDeviceSelectorFromUuid instead of GetDeviceSelectorFromShortId.	For more information, see MSDN.")
	static HSTRING GetDeviceSelectorFromShortId(UINT16 serviceShortId)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelectorFromShortId(serviceShortId, &_ret));
		return _ret;
	}
	deprecated("Use BluetoothUuidHelper instead of ConvertShortIdToUuid.  For more information, see MSDN.")
	static GUID ConvertShortIdToUuid(UINT16 shortId)
	{
		GUID _ret;
		Debug.OK(staticInstance.abi_ConvertShortIdToUuid(shortId, &_ret));
		return _ret;
	}
}

interface GattDeviceServicesResult : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceServicesResult
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus Status()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceServicesResult)this.asInterface(uuid("171dd3ee-016d-419d-838a-576cf475a3d8"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ubyte) ProtocolError()
	{
		Windows.Foundation.IReference!(ubyte) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceServicesResult)this.asInterface(uuid("171dd3ee-016d-419d-838a-576cf475a3d8"))).get_ProtocolError(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) Services()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattDeviceServicesResult)this.asInterface(uuid("171dd3ee-016d-419d-838a-576cf475a3d8"))).get_Services(&_ret));
		return _ret;
	}
}

interface GattLocalCharacteristic : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic
{
extern(Windows):
	final GUID Uuid()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).get_Uuid(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer StaticValue()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).get_StaticValue(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties CharacteristicProperties()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).get_CharacteristicProperties(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel ReadProtectionLevel()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).get_ReadProtectionLevel(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel WriteProtectionLevel()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).get_WriteProtectionLevel(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptorResult) CreateDescriptorAsync(GUID descriptorUuid, Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptorParameters parameters)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptorResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).abi_CreateDescriptorAsync(descriptorUuid, parameters, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor) Descriptors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).get_Descriptors(&_ret));
		return _ret;
	}
	final HSTRING UserDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).get_UserDescription(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat) PresentationFormats()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).get_PresentationFormats(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient) SubscribedClients()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).get_SubscribedClients(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnSubscribedClientsChanged(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).add_SubscribedClientsChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, IInspectable), Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSubscribedClientsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).remove_SubscribedClientsChanged(token));
	}
	final EventRegistrationToken OnReadRequested(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).add_ReadRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs), Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeReadRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).remove_ReadRequested(token));
	}
	final EventRegistrationToken OnWriteRequested(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).add_WriteRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs), Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeWriteRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).remove_WriteRequested(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult)) NotifyValueAsync(Windows.Storage.Streams.IBuffer value)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult)) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).abi_NotifyValueAsync(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult) NotifyValueForSubscribedClientAsync(Windows.Storage.Streams.IBuffer value, Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient subscribedClient)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristic)this.asInterface(uuid("aede376d-5412-4d74-92a8-8deb8526829c"))).abi_NotifyValueForSubscribedClientAsync(value, subscribedClient, &_ret));
		return _ret;
	}
}

interface GattLocalCharacteristicParameters : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters
{
extern(Windows):
	final void StaticValue(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).set_StaticValue(value));
	}
	final Windows.Storage.Streams.IBuffer StaticValue()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).get_StaticValue(&_ret));
		return _ret;
	}
	final void CharacteristicProperties(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).set_CharacteristicProperties(value));
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties CharacteristicProperties()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicProperties _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).get_CharacteristicProperties(&_ret));
		return _ret;
	}
	final void ReadProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).set_ReadProtectionLevel(value));
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel ReadProtectionLevel()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).get_ReadProtectionLevel(&_ret));
		return _ret;
	}
	final void WriteProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).set_WriteProtectionLevel(value));
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel WriteProtectionLevel()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).get_WriteProtectionLevel(&_ret));
		return _ret;
	}
	final void UserDescription(HSTRING value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).set_UserDescription(value));
	}
	final HSTRING UserDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).get_UserDescription(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat) PresentationFormats()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicParameters)this.asInterface(uuid("faf73db4-4cff-44c7-8445-040e6ead0063"))).get_PresentationFormats(&_ret));
		return _ret;
	}
	static GattLocalCharacteristicParameters New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GattLocalCharacteristicParameters).abi_ActivateInstance(&ret));
		return cast(GattLocalCharacteristicParameters) ret;
	}
}

interface GattLocalCharacteristicResult : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicResult
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic Characteristic()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicResult)this.asInterface(uuid("7975de9b-0170-4397-9666-92f863f12ee6"))).get_Characteristic(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalCharacteristicResult)this.asInterface(uuid("7975de9b-0170-4397-9666-92f863f12ee6"))).get_Error(&_ret));
		return _ret;
	}
}

interface GattLocalDescriptor : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptor
{
extern(Windows):
	final GUID Uuid()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptor)this.asInterface(uuid("f48ebe06-789d-4a4b-8652-bd017b5d2fc6"))).get_Uuid(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer StaticValue()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptor)this.asInterface(uuid("f48ebe06-789d-4a4b-8652-bd017b5d2fc6"))).get_StaticValue(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel ReadProtectionLevel()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptor)this.asInterface(uuid("f48ebe06-789d-4a4b-8652-bd017b5d2fc6"))).get_ReadProtectionLevel(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel WriteProtectionLevel()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptor)this.asInterface(uuid("f48ebe06-789d-4a4b-8652-bd017b5d2fc6"))).get_WriteProtectionLevel(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnReadRequested(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor, Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptor)this.asInterface(uuid("f48ebe06-789d-4a4b-8652-bd017b5d2fc6"))).add_ReadRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor, Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs), Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor, Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeReadRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptor)this.asInterface(uuid("f48ebe06-789d-4a4b-8652-bd017b5d2fc6"))).remove_ReadRequested(token));
	}
	final EventRegistrationToken OnWriteRequested(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptor)this.asInterface(uuid("f48ebe06-789d-4a4b-8652-bd017b5d2fc6"))).add_WriteRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs), Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor, Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeWriteRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptor)this.asInterface(uuid("f48ebe06-789d-4a4b-8652-bd017b5d2fc6"))).remove_WriteRequested(token));
	}
}

interface GattLocalDescriptorParameters : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorParameters
{
extern(Windows):
	final void StaticValue(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorParameters)this.asInterface(uuid("5fdede6a-f3c1-4b66-8c4b-e3d2293b40e9"))).set_StaticValue(value));
	}
	final Windows.Storage.Streams.IBuffer StaticValue()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorParameters)this.asInterface(uuid("5fdede6a-f3c1-4b66-8c4b-e3d2293b40e9"))).get_StaticValue(&_ret));
		return _ret;
	}
	final void ReadProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorParameters)this.asInterface(uuid("5fdede6a-f3c1-4b66-8c4b-e3d2293b40e9"))).set_ReadProtectionLevel(value));
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel ReadProtectionLevel()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorParameters)this.asInterface(uuid("5fdede6a-f3c1-4b66-8c4b-e3d2293b40e9"))).get_ReadProtectionLevel(&_ret));
		return _ret;
	}
	final void WriteProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorParameters)this.asInterface(uuid("5fdede6a-f3c1-4b66-8c4b-e3d2293b40e9"))).set_WriteProtectionLevel(value));
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel WriteProtectionLevel()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorParameters)this.asInterface(uuid("5fdede6a-f3c1-4b66-8c4b-e3d2293b40e9"))).get_WriteProtectionLevel(&_ret));
		return _ret;
	}
	static GattLocalDescriptorParameters New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GattLocalDescriptorParameters).abi_ActivateInstance(&ret));
		return cast(GattLocalDescriptorParameters) ret;
	}
}

interface GattLocalDescriptorResult : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorResult
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor Descriptor()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorResult)this.asInterface(uuid("375791be-321f-4366-bfc1-3bc6b82c79f8"))).get_Descriptor(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalDescriptorResult)this.asInterface(uuid("375791be-321f-4366-bfc1-3bc6b82c79f8"))).get_Error(&_ret));
		return _ret;
	}
}

interface GattLocalService : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalService
{
extern(Windows):
	final GUID Uuid()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalService)this.asInterface(uuid("f513e258-f7f7-4902-b803-57fcc7d6fe83"))).get_Uuid(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicResult) CreateCharacteristicAsync(GUID characteristicUuid, Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicParameters parameters)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalService)this.asInterface(uuid("f513e258-f7f7-4902-b803-57fcc7d6fe83"))).abi_CreateCharacteristicAsync(characteristicUuid, parameters, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic) Characteristics()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattLocalService)this.asInterface(uuid("f513e258-f7f7-4902-b803-57fcc7d6fe83"))).get_Characteristics(&_ret));
		return _ret;
	}
}

interface GattPresentationFormat : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormat
{
extern(Windows):
	final ubyte FormatType()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormat)this.asInterface(uuid("196d0021-faad-45dc-ae5b-2ac3184e84db"))).get_FormatType(&_ret));
		return _ret;
	}
	final INT32 Exponent()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormat)this.asInterface(uuid("196d0021-faad-45dc-ae5b-2ac3184e84db"))).get_Exponent(&_ret));
		return _ret;
	}
	final UINT16 Unit()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormat)this.asInterface(uuid("196d0021-faad-45dc-ae5b-2ac3184e84db"))).get_Unit(&_ret));
		return _ret;
	}
	final ubyte Namespace()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormat)this.asInterface(uuid("196d0021-faad-45dc-ae5b-2ac3184e84db"))).get_Namespace(&_ret));
		return _ret;
	}
	final UINT16 Description()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormat)this.asInterface(uuid("196d0021-faad-45dc-ae5b-2ac3184e84db"))).get_Description(&_ret));
		return _ret;
	}

	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormatStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormatStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormatStatics);
		return _staticInstance;
	}
	static ubyte BluetoothSigAssignedNumbers()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_BluetoothSigAssignedNumbers(&_ret));
		return _ret;
	}
}

interface GattPresentationFormatTypes
{
	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormatTypesStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormatTypesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattPresentationFormatTypesStatics);
		return _staticInstance;
	}
	static ubyte Boolean()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Boolean(&_ret));
		return _ret;
	}
	static ubyte Bit2()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Bit2(&_ret));
		return _ret;
	}
	static ubyte Nibble()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Nibble(&_ret));
		return _ret;
	}
	static ubyte UInt8()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_UInt8(&_ret));
		return _ret;
	}
	static ubyte UInt12()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_UInt12(&_ret));
		return _ret;
	}
	static ubyte UInt16()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_UInt16(&_ret));
		return _ret;
	}
	static ubyte UInt24()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_UInt24(&_ret));
		return _ret;
	}
	static ubyte UInt32()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_UInt32(&_ret));
		return _ret;
	}
	static ubyte UInt48()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_UInt48(&_ret));
		return _ret;
	}
	static ubyte UInt64()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_UInt64(&_ret));
		return _ret;
	}
	static ubyte UInt128()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_UInt128(&_ret));
		return _ret;
	}
	static ubyte SInt8()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_SInt8(&_ret));
		return _ret;
	}
	static ubyte SInt12()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_SInt12(&_ret));
		return _ret;
	}
	static ubyte SInt16()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_SInt16(&_ret));
		return _ret;
	}
	static ubyte SInt24()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_SInt24(&_ret));
		return _ret;
	}
	static ubyte SInt32()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_SInt32(&_ret));
		return _ret;
	}
	static ubyte SInt48()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_SInt48(&_ret));
		return _ret;
	}
	static ubyte SInt64()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_SInt64(&_ret));
		return _ret;
	}
	static ubyte SInt128()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_SInt128(&_ret));
		return _ret;
	}
	static ubyte Float32()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Float32(&_ret));
		return _ret;
	}
	static ubyte Float64()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Float64(&_ret));
		return _ret;
	}
	static ubyte SFloat()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_SFloat(&_ret));
		return _ret;
	}
	static ubyte Float()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Float(&_ret));
		return _ret;
	}
	static ubyte DUInt16()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_DUInt16(&_ret));
		return _ret;
	}
	static ubyte Utf8()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Utf8(&_ret));
		return _ret;
	}
	static ubyte Utf16()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Utf16(&_ret));
		return _ret;
	}
	static ubyte Struct()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Struct(&_ret));
		return _ret;
	}
}

interface GattProtocolError
{
	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattProtocolErrorStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattProtocolErrorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattProtocolErrorStatics);
		return _staticInstance;
	}
	static ubyte InvalidHandle()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_InvalidHandle(&_ret));
		return _ret;
	}
	static ubyte ReadNotPermitted()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_ReadNotPermitted(&_ret));
		return _ret;
	}
	static ubyte WriteNotPermitted()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_WriteNotPermitted(&_ret));
		return _ret;
	}
	static ubyte InvalidPdu()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_InvalidPdu(&_ret));
		return _ret;
	}
	static ubyte InsufficientAuthentication()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_InsufficientAuthentication(&_ret));
		return _ret;
	}
	static ubyte RequestNotSupported()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_RequestNotSupported(&_ret));
		return _ret;
	}
	static ubyte InvalidOffset()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_InvalidOffset(&_ret));
		return _ret;
	}
	static ubyte InsufficientAuthorization()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_InsufficientAuthorization(&_ret));
		return _ret;
	}
	static ubyte PrepareQueueFull()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_PrepareQueueFull(&_ret));
		return _ret;
	}
	static ubyte AttributeNotFound()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_AttributeNotFound(&_ret));
		return _ret;
	}
	static ubyte AttributeNotLong()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_AttributeNotLong(&_ret));
		return _ret;
	}
	static ubyte InsufficientEncryptionKeySize()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_InsufficientEncryptionKeySize(&_ret));
		return _ret;
	}
	static ubyte InvalidAttributeValueLength()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_InvalidAttributeValueLength(&_ret));
		return _ret;
	}
	static ubyte UnlikelyError()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_UnlikelyError(&_ret));
		return _ret;
	}
	static ubyte InsufficientEncryption()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_InsufficientEncryption(&_ret));
		return _ret;
	}
	static ubyte UnsupportedGroupType()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_UnsupportedGroupType(&_ret));
		return _ret;
	}
	static ubyte InsufficientResources()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_InsufficientResources(&_ret));
		return _ret;
	}
}

interface GattReadClientCharacteristicConfigurationDescriptorResult : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadClientCharacteristicConfigurationDescriptorResult, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadClientCharacteristicConfigurationDescriptorResult2
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus Status()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadClientCharacteristicConfigurationDescriptorResult)this.asInterface(uuid("63a66f09-1aea-4c4c-a50f-97bae474b348"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientCharacteristicConfigurationDescriptorValue ClientCharacteristicConfigurationDescriptor()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientCharacteristicConfigurationDescriptorValue _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadClientCharacteristicConfigurationDescriptorResult)this.asInterface(uuid("63a66f09-1aea-4c4c-a50f-97bae474b348"))).get_ClientCharacteristicConfigurationDescriptor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ubyte) ProtocolError()
	{
		Windows.Foundation.IReference!(ubyte) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadClientCharacteristicConfigurationDescriptorResult2)this.asInterface(uuid("1bf1a59d-ba4d-4622-8651-f4ee150d0a5d"))).get_ProtocolError(&_ret));
		return _ret;
	}
}

interface GattReadRequest : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequest
{
extern(Windows):
	final UINT32 Offset()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequest)this.asInterface(uuid("f1dd6535-6acd-42a6-a4bb-d789dae0043e"))).get_Offset(&_ret));
		return _ret;
	}
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequest)this.asInterface(uuid("f1dd6535-6acd-42a6-a4bb-d789dae0043e"))).get_Length(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState State()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequest)this.asInterface(uuid("f1dd6535-6acd-42a6-a4bb-d789dae0043e"))).get_State(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnStateChanged(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest, Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequest)this.asInterface(uuid("f1dd6535-6acd-42a6-a4bb-d789dae0043e"))).add_StateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest, Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs), Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest, Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStateChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequest)this.asInterface(uuid("f1dd6535-6acd-42a6-a4bb-d789dae0043e"))).remove_StateChanged(token));
	}
	final void RespondWithValue(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequest)this.asInterface(uuid("f1dd6535-6acd-42a6-a4bb-d789dae0043e"))).abi_RespondWithValue(value));
	}
	final void RespondWithProtocolError(ubyte protocolError)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequest)this.asInterface(uuid("f1dd6535-6acd-42a6-a4bb-d789dae0043e"))).abi_RespondWithProtocolError(protocolError));
	}
}

interface GattReadRequestedEventArgs : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequestedEventArgs
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession Session()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequestedEventArgs)this.asInterface(uuid("93497243-f39c-484b-8ab6-996ba486cfa3"))).get_Session(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequestedEventArgs)this.asInterface(uuid("93497243-f39c-484b-8ab6-996ba486cfa3"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest) GetRequestAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadRequestedEventArgs)this.asInterface(uuid("93497243-f39c-484b-8ab6-996ba486cfa3"))).abi_GetRequestAsync(&_ret));
		return _ret;
	}
}

interface GattReadResult : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadResult, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadResult2
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus Status()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadResult)this.asInterface(uuid("63a66f08-1aea-4c4c-a50f-97bae474b348"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Value()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadResult)this.asInterface(uuid("63a66f08-1aea-4c4c-a50f-97bae474b348"))).get_Value(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ubyte) ProtocolError()
	{
		Windows.Foundation.IReference!(ubyte) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReadResult2)this.asInterface(uuid("a10f50a0-fb43-48af-baaa-638a5c6329fe"))).get_ProtocolError(&_ret));
		return _ret;
	}
}

interface GattReliableWriteTransaction : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReliableWriteTransaction, Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReliableWriteTransaction2
{
extern(Windows):
	final void WriteValue(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic characteristic, Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReliableWriteTransaction)this.asInterface(uuid("63a66f07-1aea-4c4c-a50f-97bae474b348"))).abi_WriteValue(characteristic, value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus) CommitAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReliableWriteTransaction)this.asInterface(uuid("63a66f07-1aea-4c4c-a50f-97bae474b348"))).abi_CommitAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult) CommitWithResultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattReliableWriteTransaction2)this.asInterface(uuid("51113987-ef12-462f-9fb2-a1a43a679416"))).abi_CommitWithResultAsync(&_ret));
		return _ret;
	}
	static GattReliableWriteTransaction New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GattReliableWriteTransaction).abi_ActivateInstance(&ret));
		return cast(GattReliableWriteTransaction) ret;
	}
}

interface GattRequestStateChangedEventArgs : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattRequestStateChangedEventArgs
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState State()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattRequestStateChangedEventArgs)this.asInterface(uuid("e834d92c-27be-44b3-9d0d-4fc6e808dd3f"))).get_State(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattRequestStateChangedEventArgs)this.asInterface(uuid("e834d92c-27be-44b3-9d0d-4fc6e808dd3f"))).get_Error(&_ret));
		return _ret;
	}
}

interface GattServiceProvider : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProvider
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService Service()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProvider)this.asInterface(uuid("7822b3cd-2889-4f86-a051-3f0aed1c2760"))).get_Service(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatus AdvertisementStatus()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProvider)this.asInterface(uuid("7822b3cd-2889-4f86-a051-3f0aed1c2760"))).get_AdvertisementStatus(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAdvertisementStatusChanged(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider, Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatusChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProvider)this.asInterface(uuid("7822b3cd-2889-4f86-a051-3f0aed1c2760"))).add_AdvertisementStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider, Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatusChangedEventArgs), Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider, Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatusChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAdvertisementStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProvider)this.asInterface(uuid("7822b3cd-2889-4f86-a051-3f0aed1c2760"))).remove_AdvertisementStatusChanged(token));
	}
	final void StartAdvertising()
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProvider)this.asInterface(uuid("7822b3cd-2889-4f86-a051-3f0aed1c2760"))).abi_StartAdvertising());
	}
	final void StartAdvertisingWithParameters(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters parameters)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProvider)this.asInterface(uuid("7822b3cd-2889-4f86-a051-3f0aed1c2760"))).abi_StartAdvertisingWithParameters(parameters));
	}
	final void StopAdvertising()
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProvider)this.asInterface(uuid("7822b3cd-2889-4f86-a051-3f0aed1c2760"))).abi_StopAdvertising());
	}

	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderResult) CreateAsync(GUID serviceUuid)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderResult) _ret;
		Debug.OK(staticInstance.abi_CreateAsync(serviceUuid, &_ret));
		return _ret;
	}
}

interface GattServiceProviderAdvertisementStatusChangedEventArgs : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisementStatusChangedEventArgs
{
extern(Windows):
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisementStatusChangedEventArgs)this.asInterface(uuid("59a5aa65-fa21-4ffc-b155-04d928012686"))).get_Error(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatus Status()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisementStatusChangedEventArgs)this.asInterface(uuid("59a5aa65-fa21-4ffc-b155-04d928012686"))).get_Status(&_ret));
		return _ret;
	}
}

interface GattServiceProviderAdvertisingParameters : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisingParameters
{
extern(Windows):
	final void IsConnectable(bool value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisingParameters)this.asInterface(uuid("e2ce31ab-6315-4c22-9bd7-781dbc3d8d82"))).set_IsConnectable(value));
	}
	final bool IsConnectable()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisingParameters)this.asInterface(uuid("e2ce31ab-6315-4c22-9bd7-781dbc3d8d82"))).get_IsConnectable(&_ret));
		return _ret;
	}
	final void IsDiscoverable(bool value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisingParameters)this.asInterface(uuid("e2ce31ab-6315-4c22-9bd7-781dbc3d8d82"))).set_IsDiscoverable(value));
	}
	final bool IsDiscoverable()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderAdvertisingParameters)this.asInterface(uuid("e2ce31ab-6315-4c22-9bd7-781dbc3d8d82"))).get_IsDiscoverable(&_ret));
		return _ret;
	}
	static GattServiceProviderAdvertisingParameters New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(GattServiceProviderAdvertisingParameters).abi_ActivateInstance(&ret));
		return cast(GattServiceProviderAdvertisingParameters) ret;
	}
}

interface GattServiceProviderResult : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderResult
{
extern(Windows):
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderResult)this.asInterface(uuid("764696d8-c53e-428c-8a48-67afe02c3ae6"))).get_Error(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider ServiceProvider()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceProviderResult)this.asInterface(uuid("764696d8-c53e-428c-8a48-67afe02c3ae6"))).get_ServiceProvider(&_ret));
		return _ret;
	}
}

interface GattServiceUuids
{
	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceUuidsStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceUuidsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattServiceUuidsStatics);
		return _staticInstance;
	}
	static GUID Battery()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_Battery(&_ret));
		return _ret;
	}
	static GUID BloodPressure()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_BloodPressure(&_ret));
		return _ret;
	}
	static GUID CyclingSpeedAndCadence()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_CyclingSpeedAndCadence(&_ret));
		return _ret;
	}
	static GUID GenericAccess()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_GenericAccess(&_ret));
		return _ret;
	}
	static GUID GenericAttribute()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_GenericAttribute(&_ret));
		return _ret;
	}
	static GUID Glucose()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_Glucose(&_ret));
		return _ret;
	}
	static GUID HealthThermometer()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_HealthThermometer(&_ret));
		return _ret;
	}
	static GUID HeartRate()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_HeartRate(&_ret));
		return _ret;
	}
	static GUID RunningSpeedAndCadence()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_RunningSpeedAndCadence(&_ret));
		return _ret;
	}
}

interface GattSession : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Devices.Bluetooth.BluetoothDeviceId DeviceId()
	{
		Windows.Devices.Bluetooth.BluetoothDeviceId _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession)this.asInterface(uuid("d23b5143-e04e-4c24-999c-9c256f9856b1"))).get_DeviceId(&_ret));
		return _ret;
	}
	final bool CanMaintainConnection()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession)this.asInterface(uuid("d23b5143-e04e-4c24-999c-9c256f9856b1"))).get_CanMaintainConnection(&_ret));
		return _ret;
	}
	final void MaintainConnection(bool value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession)this.asInterface(uuid("d23b5143-e04e-4c24-999c-9c256f9856b1"))).set_MaintainConnection(value));
	}
	final bool MaintainConnection()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession)this.asInterface(uuid("d23b5143-e04e-4c24-999c-9c256f9856b1"))).get_MaintainConnection(&_ret));
		return _ret;
	}
	final UINT16 MaxPduSize()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession)this.asInterface(uuid("d23b5143-e04e-4c24-999c-9c256f9856b1"))).get_MaxPduSize(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatus SessionStatus()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession)this.asInterface(uuid("d23b5143-e04e-4c24-999c-9c256f9856b1"))).get_SessionStatus(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnMaxPduSizeChanged(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession)this.asInterface(uuid("d23b5143-e04e-4c24-999c-9c256f9856b1"))).add_MaxPduSizeChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession, IInspectable), Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeMaxPduSizeChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession)this.asInterface(uuid("d23b5143-e04e-4c24-999c-9c256f9856b1"))).remove_MaxPduSizeChanged(token));
	}
	final EventRegistrationToken OnSessionStatusChanged(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession, Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatusChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession)this.asInterface(uuid("d23b5143-e04e-4c24-999c-9c256f9856b1"))).add_SessionStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession, Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatusChangedEventArgs), Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession, Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatusChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSessionStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSession)this.asInterface(uuid("d23b5143-e04e-4c24-999c-9c256f9856b1"))).remove_SessionStatusChanged(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSessionStatics _staticInstance;
	public static Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSessionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSessionStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession) FromDeviceIdAsync(Windows.Devices.Bluetooth.BluetoothDeviceId deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession) _ret;
		Debug.OK(staticInstance.abi_FromDeviceIdAsync(deviceId, &_ret));
		return _ret;
	}
}

interface GattSessionStatusChangedEventArgs : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSessionStatusChangedEventArgs
{
extern(Windows):
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSessionStatusChangedEventArgs)this.asInterface(uuid("7605b72e-837f-404c-ab34-3163f39ddf32"))).get_Error(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatus Status()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSessionStatusChangedEventArgs)this.asInterface(uuid("7605b72e-837f-404c-ab34-3163f39ddf32"))).get_Status(&_ret));
		return _ret;
	}
}

interface GattSubscribedClient : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSubscribedClient
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession Session()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSubscribedClient)this.asInterface(uuid("736e9001-15a4-4ec2-9248-e3f20d463be9"))).get_Session(&_ret));
		return _ret;
	}
	final UINT16 MaxNotificationSize()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSubscribedClient)this.asInterface(uuid("736e9001-15a4-4ec2-9248-e3f20d463be9"))).get_MaxNotificationSize(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnMaxNotificationSizeChanged(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSubscribedClient)this.asInterface(uuid("736e9001-15a4-4ec2-9248-e3f20d463be9"))).add_MaxNotificationSizeChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient, IInspectable), Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeMaxNotificationSizeChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattSubscribedClient)this.asInterface(uuid("736e9001-15a4-4ec2-9248-e3f20d463be9"))).remove_MaxNotificationSizeChanged(token));
	}
}

interface GattValueChangedEventArgs : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattValueChangedEventArgs
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer CharacteristicValue()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattValueChangedEventArgs)this.asInterface(uuid("d21bdb54-06e3-4ed8-a263-acfac8ba7313"))).get_CharacteristicValue(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattValueChangedEventArgs)this.asInterface(uuid("d21bdb54-06e3-4ed8-a263-acfac8ba7313"))).get_Timestamp(&_ret));
		return _ret;
	}
}

interface GattWriteRequest : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequest
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Value()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequest)this.asInterface(uuid("aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d"))).get_Value(&_ret));
		return _ret;
	}
	final UINT32 Offset()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequest)this.asInterface(uuid("aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d"))).get_Offset(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteOption Option()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteOption _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequest)this.asInterface(uuid("aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d"))).get_Option(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState State()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequest)this.asInterface(uuid("aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d"))).get_State(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnStateChanged(void delegate(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest, Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequest)this.asInterface(uuid("aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d"))).add_StateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest, Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs), Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest, Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStateChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequest)this.asInterface(uuid("aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d"))).remove_StateChanged(token));
	}
	final void Respond()
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequest)this.asInterface(uuid("aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d"))).abi_Respond());
	}
	final void RespondWithProtocolError(ubyte protocolError)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequest)this.asInterface(uuid("aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d"))).abi_RespondWithProtocolError(protocolError));
	}
}

interface GattWriteRequestedEventArgs : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequestedEventArgs
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession Session()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequestedEventArgs)this.asInterface(uuid("2dec8bbe-a73a-471a-94d5-037deadd0806"))).get_Session(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequestedEventArgs)this.asInterface(uuid("2dec8bbe-a73a-471a-94d5-037deadd0806"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest) GetRequestAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteRequestedEventArgs)this.asInterface(uuid("2dec8bbe-a73a-471a-94d5-037deadd0806"))).abi_GetRequestAsync(&_ret));
		return _ret;
	}
}

interface GattWriteResult : Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteResult
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus Status()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteResult)this.asInterface(uuid("4991ddb1-cb2b-44f7-99fc-d29a2871dc9b"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(ubyte) ProtocolError()
	{
		Windows.Foundation.IReference!(ubyte) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.GenericAttributeProfile.IGattWriteResult)this.asInterface(uuid("4991ddb1-cb2b-44f7-99fc-d29a2871dc9b"))).get_ProtocolError(&_ret));
		return _ret;
	}
}

@bitflags
enum GattCharacteristicProperties
{
	None = 0x0,
	Broadcast = 0x1,
	Read = 0x2,
	WriteWithoutResponse = 0x4,
	Write = 0x8,
	Notify = 0x10,
	Indicate = 0x20,
	AuthenticatedSignedWrites = 0x40,
	ExtendedProperties = 0x80,
	ReliableWrites = 0x100,
	WritableAuxiliaries = 0x200
}

enum GattClientCharacteristicConfigurationDescriptorValue
{
	None = 0,
	Notify = 1,
	Indicate = 2
}

enum GattCommunicationStatus
{
	Success = 0,
	Unreachable = 1,
	ProtocolError = 2,
	AccessDenied = 3
}

enum GattOpenStatus
{
	Unspecified = 0,
	Success = 1,
	AlreadyOpened = 2,
	NotFound = 3,
	SharingViolation = 4,
	AccessDenied = 5
}

enum GattProtectionLevel
{
	Plain = 0,
	AuthenticationRequired = 1,
	EncryptionRequired = 2,
	EncryptionAndAuthenticationRequired = 3
}

enum GattRequestState
{
	Pending = 0,
	Completed = 1,
	Canceled = 2
}

enum GattServiceProviderAdvertisementStatus
{
	Created = 0,
	Stopped = 1,
	Started = 2,
	Aborted = 3
}

enum GattSessionStatus
{
	Closed = 0,
	Active = 1
}

enum GattSharingMode
{
	Unspecified = 0,
	Exclusive = 1,
	SharedReadOnly = 2,
	SharedReadAndWrite = 3
}

enum GattWriteOption
{
	WriteWithResponse = 0,
	WriteWithoutResponse = 1
}