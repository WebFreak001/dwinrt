module Windows.Devices.Bluetooth.GenericAttributeProfile;

import dwinrt;

@uuid("59cb50c1-5934-4f68-a198-eb864fa44e6b")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic")
interface IGattCharacteristic : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT add_ValueChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic*,Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs*) valueChangedHandler, EventRegistrationToken* return_valueChangedEventCookie);
	HRESULT remove_ValueChanged(EventRegistrationToken valueChangedEventCookie);
}

@uuid("ae1ab578-ec06-4764-b780-9835a1d35d6e")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic")
interface IGattCharacteristic2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Service(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService* return_value);
	deprecated("Use GetDescriptorsAsync instead of GetAllDescriptors.  For more information, see MSDN.")
	HRESULT abi_GetAllDescriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor)* return_descriptors);
}

@uuid("3f3c663e-93d4-406b-b817-db81f8ed53b3")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic")
interface IGattCharacteristic3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("Use BluetoothUuidHelper instead of ConvertShortIdToUuid.  For more information, see MSDN.")
	HRESULT abi_ConvertShortIdToUuid(UINT16 shortId, GUID* return_characteristicUuid);
}

@uuid("58fa4586-b1de-470c-b7de-0d11ff44f4b7")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristicUuids")
interface IGattCharacteristicUuidsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(BYTE)* return_value);
	HRESULT get_Characteristics(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic)* return_value);
}

@uuid("506d5599-0112-419a-8e3b-ae21afabd2c2")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult")
interface IGattClientNotificationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SubscribedClient(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient* return_value);
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(BYTE)* return_value);
}

@uuid("92055f2b-8084-4344-b4c2-284de19a8506")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor")
interface IGattDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_WriteValueWithResultAsync(Windows.Storage.Streams.IBuffer value, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult)* return_operation);
}

@uuid("92055f2d-8084-4344-b4c2-284de19a8506")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor")
interface IGattDescriptorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("Use BluetoothUuidHelper instead of ConvertShortIdToUuid.  For more information, see MSDN.")
	HRESULT abi_ConvertShortIdToUuid(UINT16 shortId, GUID* return_descriptorUuid);
}

@uuid("a6f862ce-9cfc-42f1-9185-ff37b75181d3")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptorUuids")
interface IGattDescriptorUuidsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(BYTE)* return_value);
	HRESULT get_Descriptors(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDescriptor)* return_value);
}

@uuid("ac7b7c05-b33c-47cf-990f-6b8f5577df71")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService")
interface IGattDeviceService : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("Use GetCharacteristicsForUuidAsync instead of GetCharacteristics.  For more information, see MSDN.")
	HRESULT abi_GetCharacteristics(GUID characteristicUuid, Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic)* return_value);
	deprecated("Use GetIncludedServicesForUuidAsync instead of GetIncludedServices.	 For more information, see MSDN.")
	HRESULT abi_GetIncludedServices(GUID serviceUuid, Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService)* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Uuid(GUID* return_value);
	HRESULT get_AttributeHandle(UINT16* return_value);
}

@uuid("fc54520b-0b0d-4708-bae0-9ffd9489bc59")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService")
interface IGattDeviceService2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("b293a950-0c53-437c-a9b3-5c3210c6e569")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService")
interface IGattDeviceService3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(BYTE)* return_value);
	HRESULT get_Services(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattDeviceService)* return_value);
}

@uuid("aede376d-5412-4d74-92a8-8deb8526829c")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic")
interface IGattLocalCharacteristic : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT add_SubscribedClientsChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_SubscribedClientsChanged(EventRegistrationToken token);
	HRESULT add_ReadRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic*,Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadRequested(EventRegistrationToken token);
	HRESULT add_WriteRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic*,Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_WriteRequested(EventRegistrationToken token);
	HRESULT abi_NotifyValueAsync(Windows.Storage.Streams.IBuffer value, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult))* return_operation);
	HRESULT abi_NotifyValueForSubscribedClientAsync(Windows.Storage.Streams.IBuffer value, Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient subscribedClient, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientNotificationResult)* return_operation);
}

@uuid("faf73db4-4cff-44c7-8445-040e6ead0063")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicParameters")
interface IGattLocalCharacteristicParameters : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Characteristic(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic* return_value);
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("f48ebe06-789d-4a4b-8652-bd017b5d2fc6")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor")
interface IGattLocalDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uuid(GUID* return_value);
	HRESULT get_StaticValue(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_ReadProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT get_WriteProtectionLevel(Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtectionLevel* return_value);
	HRESULT add_ReadRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor*,Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReadRequested(EventRegistrationToken token);
	HRESULT add_WriteRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor*,Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_WriteRequested(EventRegistrationToken token);
}

@uuid("5fdede6a-f3c1-4b66-8c4b-e3d2293b40e9")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptorParameters")
interface IGattLocalDescriptorParameters : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Descriptor(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalDescriptor* return_value);
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("f513e258-f7f7-4902-b803-57fcc7d6fe83")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService")
interface IGattLocalService : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uuid(GUID* return_value);
	HRESULT abi_CreateCharacteristicAsync(GUID characteristicUuid, Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicParameters parameters, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristicResult)* return_operation);
	HRESULT get_Characteristics(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalCharacteristic)* return_value);
}

@uuid("196d0021-faad-45dc-ae5b-2ac3184e84db")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat")
interface IGattPresentationFormat : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FormatType(BYTE* return_value);
	HRESULT get_Exponent(INT32* return_value);
	HRESULT get_Unit(UINT16* return_value);
	HRESULT get_Namespace(BYTE* return_value);
	HRESULT get_Description(UINT16* return_value);
}

@uuid("196d0020-faad-45dc-ae5b-2ac3184e84db")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat")
interface IGattPresentationFormatStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BluetoothSigAssignedNumbers(BYTE* return_value);
}

@uuid("a9c21713-b82f-435e-b634-21fd85a43c07")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat")
interface IGattPresentationFormatStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromParts(BYTE formatType, INT32 exponent, UINT16 unit, BYTE namespaceId, UINT16 description, Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormat* return_result);
}

@uuid("faf1ba0a-30ba-409c-bef7-cffb6d03b8fb")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattPresentationFormatTypes")
interface IGattPresentationFormatTypesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Boolean(BYTE* return_value);
	HRESULT get_Bit2(BYTE* return_value);
	HRESULT get_Nibble(BYTE* return_value);
	HRESULT get_UInt8(BYTE* return_value);
	HRESULT get_UInt12(BYTE* return_value);
	HRESULT get_UInt16(BYTE* return_value);
	HRESULT get_UInt24(BYTE* return_value);
	HRESULT get_UInt32(BYTE* return_value);
	HRESULT get_UInt48(BYTE* return_value);
	HRESULT get_UInt64(BYTE* return_value);
	HRESULT get_UInt128(BYTE* return_value);
	HRESULT get_SInt8(BYTE* return_value);
	HRESULT get_SInt12(BYTE* return_value);
	HRESULT get_SInt16(BYTE* return_value);
	HRESULT get_SInt24(BYTE* return_value);
	HRESULT get_SInt32(BYTE* return_value);
	HRESULT get_SInt48(BYTE* return_value);
	HRESULT get_SInt64(BYTE* return_value);
	HRESULT get_SInt128(BYTE* return_value);
	HRESULT get_Float32(BYTE* return_value);
	HRESULT get_Float64(BYTE* return_value);
	HRESULT get_SFloat(BYTE* return_value);
	HRESULT get_Float(BYTE* return_value);
	HRESULT get_DUInt16(BYTE* return_value);
	HRESULT get_Utf8(BYTE* return_value);
	HRESULT get_Utf16(BYTE* return_value);
	HRESULT get_Struct(BYTE* return_value);
}

@uuid("ca46c5c5-0ecc-4809-bea3-cf79bc991e37")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattProtocolError")
interface IGattProtocolErrorStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InvalidHandle(BYTE* return_value);
	HRESULT get_ReadNotPermitted(BYTE* return_value);
	HRESULT get_WriteNotPermitted(BYTE* return_value);
	HRESULT get_InvalidPdu(BYTE* return_value);
	HRESULT get_InsufficientAuthentication(BYTE* return_value);
	HRESULT get_RequestNotSupported(BYTE* return_value);
	HRESULT get_InvalidOffset(BYTE* return_value);
	HRESULT get_InsufficientAuthorization(BYTE* return_value);
	HRESULT get_PrepareQueueFull(BYTE* return_value);
	HRESULT get_AttributeNotFound(BYTE* return_value);
	HRESULT get_AttributeNotLong(BYTE* return_value);
	HRESULT get_InsufficientEncryptionKeySize(BYTE* return_value);
	HRESULT get_InvalidAttributeValueLength(BYTE* return_value);
	HRESULT get_UnlikelyError(BYTE* return_value);
	HRESULT get_InsufficientEncryption(BYTE* return_value);
	HRESULT get_UnsupportedGroupType(BYTE* return_value);
	HRESULT get_InsufficientResources(BYTE* return_value);
}

@uuid("63a66f09-1aea-4c4c-a50f-97bae474b348")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadClientCharacteristicConfigurationDescriptorResult")
interface IGattReadClientCharacteristicConfigurationDescriptorResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ClientCharacteristicConfigurationDescriptor(Windows.Devices.Bluetooth.GenericAttributeProfile.GattClientCharacteristicConfigurationDescriptorValue* return_value);
}

@uuid("1bf1a59d-ba4d-4622-8651-f4ee150d0a5d")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadClientCharacteristicConfigurationDescriptorResult")
interface IGattReadClientCharacteristicConfigurationDescriptorResult2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(BYTE)* return_value);
}

@uuid("f1dd6535-6acd-42a6-a4bb-d789dae0043e")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest")
interface IGattReadRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Offset(UINT32* return_value);
	HRESULT get_Length(UINT32* return_value);
	HRESULT get_State(Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState* return_value);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest*,Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_StateChanged(EventRegistrationToken token);
	HRESULT abi_RespondWithValue(Windows.Storage.Streams.IBuffer value);
	HRESULT abi_RespondWithProtocolError(BYTE protocolError);
}

@uuid("93497243-f39c-484b-8ab6-996ba486cfa3")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequestedEventArgs")
interface IGattReadRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Session(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
	HRESULT abi_GetRequestAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadRequest)* return_operation);
}

@uuid("63a66f08-1aea-4c4c-a50f-97bae474b348")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult")
interface IGattReadResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_Value(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("a10f50a0-fb43-48af-baaa-638a5c6329fe")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReadResult")
interface IGattReadResult2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(BYTE)* return_value);
}

@uuid("63a66f07-1aea-4c4c-a50f-97bae474b348")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReliableWriteTransaction")
interface IGattReliableWriteTransaction : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_WriteValue(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic characteristic, Windows.Storage.Streams.IBuffer value);
	HRESULT abi_CommitAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus)* return_asyncOp);
}

@uuid("51113987-ef12-462f-9fb2-a1a43a679416")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattReliableWriteTransaction")
interface IGattReliableWriteTransaction2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CommitWithResultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult)* return_operation);
}

@uuid("e834d92c-27be-44b3-9d0d-4fc6e808dd3f")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs")
interface IGattRequestStateChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_State(Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState* return_value);
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("7822b3cd-2889-4f86-a051-3f0aed1c2760")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider")
interface IGattServiceProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Service(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService* return_value);
	HRESULT get_AdvertisementStatus(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatus* return_value);
	HRESULT add_AdvertisementStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider*,Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatusChangedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_AdvertisementStatusChanged(EventRegistrationToken token);
	HRESULT abi_StartAdvertising();
	HRESULT abi_StartAdvertisingWithParameters(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters parameters);
	HRESULT abi_StopAdvertising();
}

@uuid("59a5aa65-fa21-4ffc-b155-04d928012686")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatusChangedEventArgs")
interface IGattServiceProviderAdvertisementStatusChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisementStatus* return_value);
}

@uuid("e2ce31ab-6315-4c22-9bd7-781dbc3d8d82")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters")
interface IGattServiceProviderAdvertisingParameters : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_ServiceProvider(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider* return_value);
}

@uuid("31794063-5256-4054-a4f4-7bbe7755a57e")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProvider")
interface IGattServiceProviderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateAsync(GUID serviceUuid, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderResult)* return_operation);
}

@uuid("6dc57058-9aba-4417-b8f2-dce016d34ee2")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceUuids")
interface IGattServiceUuidsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(Windows.Devices.Bluetooth.BluetoothDeviceId* return_value);
	HRESULT get_CanMaintainConnection(bool* return_value);
	HRESULT set_MaintainConnection(bool value);
	HRESULT get_MaintainConnection(bool* return_value);
	HRESULT get_MaxPduSize(UINT16* return_value);
	HRESULT get_SessionStatus(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatus* return_value);
	HRESULT add_MaxPduSizeChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_MaxPduSizeChanged(EventRegistrationToken token);
	HRESULT add_SessionStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession*,Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatusChangedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_SessionStatusChanged(EventRegistrationToken token);
}

@uuid("2e65b95c-539f-4db7-82a8-73bdbbf73ebf")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession")
interface IGattSessionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromDeviceIdAsync(Windows.Devices.Bluetooth.BluetoothDeviceId deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession)* return_operation);
}

@uuid("7605b72e-837f-404c-ab34-3163f39ddf32")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatusChangedEventArgs")
interface IGattSessionStatusChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSessionStatus* return_value);
}

@uuid("736e9001-15a4-4ec2-9248-e3f20d463be9")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient")
interface IGattSubscribedClient : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Session(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession* return_value);
	HRESULT get_MaxNotificationSize(UINT16* return_value);
	HRESULT add_MaxNotificationSizeChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSubscribedClient*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_MaxNotificationSizeChanged(EventRegistrationToken token);
}

@uuid("d21bdb54-06e3-4ed8-a263-acfac8ba7313")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattValueChangedEventArgs")
interface IGattValueChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CharacteristicValue(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_timestamp);
}

@uuid("aeb6a9ed-de2f-4fc2-a9a8-94ea7844f13d")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest")
interface IGattWriteRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Offset(UINT32* return_value);
	HRESULT get_Option(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteOption* return_value);
	HRESULT get_State(Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestState* return_value);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest*,Windows.Devices.Bluetooth.GenericAttributeProfile.GattRequestStateChangedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_StateChanged(EventRegistrationToken token);
	HRESULT abi_Respond();
	HRESULT abi_RespondWithProtocolError(BYTE protocolError);
}

@uuid("2dec8bbe-a73a-471a-94d5-037deadd0806")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequestedEventArgs")
interface IGattWriteRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Session(Windows.Devices.Bluetooth.GenericAttributeProfile.GattSession* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
	HRESULT abi_GetRequestAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteRequest)* return_operation);
}

@uuid("4991ddb1-cb2b-44f7-99fc-d29a2871dc9b")
@WinrtFactory("Windows.Devices.Bluetooth.GenericAttributeProfile.GattWriteResult")
interface IGattWriteResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus* return_value);
	HRESULT get_ProtocolError(Windows.Foundation.IReference!(BYTE)* return_value);
}

interface GattCharacteristic
{
}

interface GattCharacteristicsResult
{
}

interface GattClientNotificationResult
{
}

interface GattDescriptor
{
}

interface GattDescriptorsResult
{
}

interface GattDeviceService
{
}

interface GattDeviceServicesResult
{
}

interface GattLocalCharacteristic
{
}

interface GattLocalCharacteristicParameters
{
}

interface GattLocalCharacteristicResult
{
}

interface GattLocalDescriptor
{
}

interface GattLocalDescriptorParameters
{
}

interface GattLocalDescriptorResult
{
}

interface GattLocalService
{
}

interface GattPresentationFormat
{
}

interface GattReadClientCharacteristicConfigurationDescriptorResult
{
}

interface GattReadRequest
{
}

interface GattReadRequestedEventArgs
{
}

interface GattReadResult
{
}

interface GattReliableWriteTransaction
{
}

interface GattRequestStateChangedEventArgs
{
}

interface GattServiceProvider
{
}

interface GattServiceProviderAdvertisementStatusChangedEventArgs
{
}

interface GattServiceProviderAdvertisingParameters
{
}

interface GattServiceProviderResult
{
}

interface GattSession
{
}

interface GattSessionStatusChangedEventArgs
{
}

interface GattSubscribedClient
{
}

interface GattValueChangedEventArgs
{
}

interface GattWriteRequest
{
}

interface GattWriteRequestedEventArgs
{
}

interface GattWriteResult
{
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