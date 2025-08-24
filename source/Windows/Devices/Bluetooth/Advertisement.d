module Windows.Devices.Bluetooth.Advertisement;

import dwinrt;

@uuid("066fb2b7-33d1-4e7d-8367-cf81d0f79653")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement")
interface IBluetoothLEAdvertisement : IInspectable
{
extern(Windows):
	HRESULT get_Flags(Windows.Foundation.IReference!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFlags)* return_value);
	HRESULT set_Flags(Windows.Foundation.IReference!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFlags) value);
	HRESULT get_LocalName(HSTRING* return_value);
	HRESULT set_LocalName(HSTRING value);
	HRESULT get_ServiceUuids(Windows.Foundation.Collections.IVector!(GUID)* return_value);
	HRESULT get_ManufacturerData(Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData)* return_value);
	HRESULT get_DataSections(Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection)* return_value);
	HRESULT abi_GetManufacturerDataByCompanyId(UINT16 companyId, Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData)* return_dataList);
	HRESULT abi_GetSectionsByType(ubyte type, Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection)* return_sectionList);
}

@uuid("fbfad7f2-b9c5-4a08-bc51-502f8ef68a79")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementBytePattern")
interface IBluetoothLEAdvertisementBytePattern : IInspectable
{
extern(Windows):
	HRESULT get_DataType(ubyte* return_value);
	HRESULT set_DataType(ubyte value);
	HRESULT get_Offset(INT16* return_value);
	HRESULT set_Offset(INT16 value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Data(Windows.Storage.Streams.IBuffer value);
}

@uuid("c2e24d73-fd5c-4ec3-be2a-9ca6fa11b7bd")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementBytePattern")
interface IBluetoothLEAdvertisementBytePatternFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(ubyte dataType, INT16 offset, Windows.Storage.Streams.IBuffer data, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementBytePattern* return_value);
}

@uuid("d7213314-3a43-40f9-b6f0-92bfefc34ae3")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection")
interface IBluetoothLEAdvertisementDataSection : IInspectable
{
extern(Windows):
	HRESULT get_DataType(ubyte* return_value);
	HRESULT set_DataType(ubyte value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Data(Windows.Storage.Streams.IBuffer value);
}

@uuid("e7a40942-a845-4045-bf7e-3e9971db8a6b")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection")
interface IBluetoothLEAdvertisementDataSectionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(ubyte dataType, Windows.Storage.Streams.IBuffer data, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection* return_value);
}

@uuid("3bb6472f-0606-434b-a76e-74159f0684d3")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataTypes")
interface IBluetoothLEAdvertisementDataTypesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Flags(ubyte* return_value);
	HRESULT get_IncompleteService16BitUuids(ubyte* return_value);
	HRESULT get_CompleteService16BitUuids(ubyte* return_value);
	HRESULT get_IncompleteService32BitUuids(ubyte* return_value);
	HRESULT get_CompleteService32BitUuids(ubyte* return_value);
	HRESULT get_IncompleteService128BitUuids(ubyte* return_value);
	HRESULT get_CompleteService128BitUuids(ubyte* return_value);
	HRESULT get_ShortenedLocalName(ubyte* return_value);
	HRESULT get_CompleteLocalName(ubyte* return_value);
	HRESULT get_TxPowerLevel(ubyte* return_value);
	HRESULT get_SlaveConnectionIntervalRange(ubyte* return_value);
	HRESULT get_ServiceSolicitation16BitUuids(ubyte* return_value);
	HRESULT get_ServiceSolicitation32BitUuids(ubyte* return_value);
	HRESULT get_ServiceSolicitation128BitUuids(ubyte* return_value);
	HRESULT get_ServiceData16BitUuids(ubyte* return_value);
	HRESULT get_ServiceData32BitUuids(ubyte* return_value);
	HRESULT get_ServiceData128BitUuids(ubyte* return_value);
	HRESULT get_PublicTargetAddress(ubyte* return_value);
	HRESULT get_RandomTargetAddress(ubyte* return_value);
	HRESULT get_Appearance(ubyte* return_value);
	HRESULT get_AdvertisingInterval(ubyte* return_value);
	HRESULT get_ManufacturerSpecificData(ubyte* return_value);
}

@uuid("131eb0d3-d04e-47b1-837e-49405bf6f80f")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter")
interface IBluetoothLEAdvertisementFilter : IInspectable
{
extern(Windows):
	HRESULT get_Advertisement(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement* return_value);
	HRESULT set_Advertisement(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement value);
	HRESULT get_BytePatterns(Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementBytePattern)* return_value);
}

@uuid("cde820f9-d9fa-43d6-a264-ddd8b7da8b78")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisher")
interface IBluetoothLEAdvertisementPublisher : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus* return_value);
	HRESULT get_Advertisement(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement* return_value);
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT add_StatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatusChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusChanged(EventRegistrationToken token);
}

@uuid("5c5f065e-b863-4981-a1af-1c544d8b0c0d")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisher")
interface IBluetoothLEAdvertisementPublisherFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement advertisement, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisher* return_value);
}

@uuid("09c2bd9f-2dff-4b23-86ee-0d14fb94aeae")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatusChangedEventArgs")
interface IBluetoothLEAdvertisementPublisherStatusChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus* return_value);
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("27987ddf-e596-41be-8d43-9e6731d4a913")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementReceivedEventArgs")
interface IBluetoothLEAdvertisementReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RawSignalStrengthInDBm(INT16* return_value);
	HRESULT get_BluetoothAddress(ulong* return_value);
	HRESULT get_AdvertisementType(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementType* return_value);
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_Advertisement(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement* return_value);
}

@uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher")
interface IBluetoothLEAdvertisementWatcher : IInspectable
{
extern(Windows):
	HRESULT get_MinSamplingInterval(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_MaxSamplingInterval(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_MinOutOfRangeTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_MaxOutOfRangeTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Status(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcherStatus* return_value);
	HRESULT get_ScanningMode(Windows.Devices.Bluetooth.Advertisement.BluetoothLEScanningMode* return_value);
	HRESULT set_ScanningMode(Windows.Devices.Bluetooth.Advertisement.BluetoothLEScanningMode value);
	HRESULT get_SignalStrengthFilter(Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter* return_value);
	HRESULT set_SignalStrengthFilter(Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter value);
	HRESULT get_AdvertisementFilter(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter* return_value);
	HRESULT set_AdvertisementFilter(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter value);
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT add_Received(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Received(EventRegistrationToken token);
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcherStoppedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Stopped(EventRegistrationToken token);
}

@uuid("9aaf2d56-39ac-453e-b32a-85c657e017f1")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher")
interface IBluetoothLEAdvertisementWatcherFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter advertisementFilter, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher* return_value);
}

@uuid("dd40f84d-e7b9-43e3-9c04-0685d085fd8c")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcherStoppedEventArgs")
interface IBluetoothLEAdvertisementWatcherStoppedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("912dba18-6963-4533-b061-4694dafb34e5")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData")
interface IBluetoothLEManufacturerData : IInspectable
{
extern(Windows):
	HRESULT get_CompanyId(UINT16* return_value);
	HRESULT set_CompanyId(UINT16 value);
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_Data(Windows.Storage.Streams.IBuffer value);
}

@uuid("c09b39f8-319a-441e-8de5-66a81e877a6c")
@WinrtFactory("Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData")
interface IBluetoothLEManufacturerDataFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT16 companyId, Windows.Storage.Streams.IBuffer data, Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData* return_value);
}

interface BluetoothLEAdvertisement : Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFlags) Flags()
	{
		Windows.Foundation.IReference!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFlags) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement)this.asInterface(uuid("066fb2b7-33d1-4e7d-8367-cf81d0f79653"))).get_Flags(&_ret));
		return _ret;
	}
	final void Flags(Windows.Foundation.IReference!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFlags) value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement)this.asInterface(uuid("066fb2b7-33d1-4e7d-8367-cf81d0f79653"))).set_Flags(value));
	}
	final wstring LocalName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement)this.asInterface(uuid("066fb2b7-33d1-4e7d-8367-cf81d0f79653"))).get_LocalName(&_ret));
		return hstring(_ret).d_str;
	}
	final void LocalName(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement)this.asInterface(uuid("066fb2b7-33d1-4e7d-8367-cf81d0f79653"))).set_LocalName(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVector!(GUID) ServiceUuids()
	{
		Windows.Foundation.Collections.IVector!(GUID) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement)this.asInterface(uuid("066fb2b7-33d1-4e7d-8367-cf81d0f79653"))).get_ServiceUuids(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData) ManufacturerData()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement)this.asInterface(uuid("066fb2b7-33d1-4e7d-8367-cf81d0f79653"))).get_ManufacturerData(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection) DataSections()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement)this.asInterface(uuid("066fb2b7-33d1-4e7d-8367-cf81d0f79653"))).get_DataSections(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData) GetManufacturerDataByCompanyId(UINT16 companyId)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement)this.asInterface(uuid("066fb2b7-33d1-4e7d-8367-cf81d0f79653"))).abi_GetManufacturerDataByCompanyId(companyId, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection) GetSectionsByType(ubyte type)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement)this.asInterface(uuid("066fb2b7-33d1-4e7d-8367-cf81d0f79653"))).abi_GetSectionsByType(type, &_ret));
		return _ret;
	}
	static BluetoothLEAdvertisement New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BluetoothLEAdvertisement).abi_ActivateInstance(&ret));
		return cast(BluetoothLEAdvertisement) ret;
	}
}

interface BluetoothLEAdvertisementBytePattern : Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePattern
{
extern(Windows):
	final ubyte DataType()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePattern)this.asInterface(uuid("fbfad7f2-b9c5-4a08-bc51-502f8ef68a79"))).get_DataType(&_ret));
		return _ret;
	}
	final void DataType(ubyte value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePattern)this.asInterface(uuid("fbfad7f2-b9c5-4a08-bc51-502f8ef68a79"))).set_DataType(value));
	}
	final INT16 Offset()
	{
		INT16 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePattern)this.asInterface(uuid("fbfad7f2-b9c5-4a08-bc51-502f8ef68a79"))).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(INT16 value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePattern)this.asInterface(uuid("fbfad7f2-b9c5-4a08-bc51-502f8ef68a79"))).set_Offset(value));
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePattern)this.asInterface(uuid("fbfad7f2-b9c5-4a08-bc51-502f8ef68a79"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePattern)this.asInterface(uuid("fbfad7f2-b9c5-4a08-bc51-502f8ef68a79"))).set_Data(value));
	}
	static BluetoothLEAdvertisementBytePattern New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BluetoothLEAdvertisementBytePattern).abi_ActivateInstance(&ret));
		return cast(BluetoothLEAdvertisementBytePattern) ret;
	}
	static Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementBytePattern New(ubyte dataType, INT16 offset, Windows.Storage.Streams.IBuffer data)
	{
		auto factory = factory!(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePatternFactory);
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementBytePattern _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementBytePatternFactory)factory.asInterface(uuid("c2e24d73-fd5c-4ec3-be2a-9ca6fa11b7bd"))).abi_Create(dataType, offset, data, &_ret));
		return _ret;
	}
}

interface BluetoothLEAdvertisementDataSection : Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataSection
{
extern(Windows):
	final ubyte DataType()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataSection)this.asInterface(uuid("d7213314-3a43-40f9-b6f0-92bfefc34ae3"))).get_DataType(&_ret));
		return _ret;
	}
	final void DataType(ubyte value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataSection)this.asInterface(uuid("d7213314-3a43-40f9-b6f0-92bfefc34ae3"))).set_DataType(value));
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataSection)this.asInterface(uuid("d7213314-3a43-40f9-b6f0-92bfefc34ae3"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataSection)this.asInterface(uuid("d7213314-3a43-40f9-b6f0-92bfefc34ae3"))).set_Data(value));
	}
	static BluetoothLEAdvertisementDataSection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BluetoothLEAdvertisementDataSection).abi_ActivateInstance(&ret));
		return cast(BluetoothLEAdvertisementDataSection) ret;
	}
	static Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection New(ubyte dataType, Windows.Storage.Streams.IBuffer data)
	{
		auto factory = factory!(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataSectionFactory);
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementDataSection _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataSectionFactory)factory.asInterface(uuid("e7a40942-a845-4045-bf7e-3e9971db8a6b"))).abi_Create(dataType, data, &_ret));
		return _ret;
	}
}

interface BluetoothLEAdvertisementDataTypes
{
	private static Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataTypesStatics _staticInstance;
	public static Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataTypesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementDataTypesStatics);
		return _staticInstance;
	}
	static ubyte Flags()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Flags(&_ret));
		return _ret;
	}
	static ubyte IncompleteService16BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_IncompleteService16BitUuids(&_ret));
		return _ret;
	}
	static ubyte CompleteService16BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_CompleteService16BitUuids(&_ret));
		return _ret;
	}
	static ubyte IncompleteService32BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_IncompleteService32BitUuids(&_ret));
		return _ret;
	}
	static ubyte CompleteService32BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_CompleteService32BitUuids(&_ret));
		return _ret;
	}
	static ubyte IncompleteService128BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_IncompleteService128BitUuids(&_ret));
		return _ret;
	}
	static ubyte CompleteService128BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_CompleteService128BitUuids(&_ret));
		return _ret;
	}
	static ubyte ShortenedLocalName()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_ShortenedLocalName(&_ret));
		return _ret;
	}
	static ubyte CompleteLocalName()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_CompleteLocalName(&_ret));
		return _ret;
	}
	static ubyte TxPowerLevel()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_TxPowerLevel(&_ret));
		return _ret;
	}
	static ubyte SlaveConnectionIntervalRange()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_SlaveConnectionIntervalRange(&_ret));
		return _ret;
	}
	static ubyte ServiceSolicitation16BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_ServiceSolicitation16BitUuids(&_ret));
		return _ret;
	}
	static ubyte ServiceSolicitation32BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_ServiceSolicitation32BitUuids(&_ret));
		return _ret;
	}
	static ubyte ServiceSolicitation128BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_ServiceSolicitation128BitUuids(&_ret));
		return _ret;
	}
	static ubyte ServiceData16BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_ServiceData16BitUuids(&_ret));
		return _ret;
	}
	static ubyte ServiceData32BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_ServiceData32BitUuids(&_ret));
		return _ret;
	}
	static ubyte ServiceData128BitUuids()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_ServiceData128BitUuids(&_ret));
		return _ret;
	}
	static ubyte PublicTargetAddress()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_PublicTargetAddress(&_ret));
		return _ret;
	}
	static ubyte RandomTargetAddress()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_RandomTargetAddress(&_ret));
		return _ret;
	}
	static ubyte Appearance()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_Appearance(&_ret));
		return _ret;
	}
	static ubyte AdvertisingInterval()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_AdvertisingInterval(&_ret));
		return _ret;
	}
	static ubyte ManufacturerSpecificData()
	{
		ubyte _ret;
		Debug.OK(staticInstance.get_ManufacturerSpecificData(&_ret));
		return _ret;
	}
}

interface BluetoothLEAdvertisementFilter : Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementFilter
{
extern(Windows):
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement Advertisement()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementFilter)this.asInterface(uuid("131eb0d3-d04e-47b1-837e-49405bf6f80f"))).get_Advertisement(&_ret));
		return _ret;
	}
	final void Advertisement(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementFilter)this.asInterface(uuid("131eb0d3-d04e-47b1-837e-49405bf6f80f"))).set_Advertisement(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementBytePattern) BytePatterns()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementBytePattern) _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementFilter)this.asInterface(uuid("131eb0d3-d04e-47b1-837e-49405bf6f80f"))).get_BytePatterns(&_ret));
		return _ret;
	}
	static BluetoothLEAdvertisementFilter New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BluetoothLEAdvertisementFilter).abi_ActivateInstance(&ret));
		return cast(BluetoothLEAdvertisementFilter) ret;
	}
}

interface BluetoothLEAdvertisementPublisher : Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisher
{
extern(Windows):
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus Status()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisher)this.asInterface(uuid("cde820f9-d9fa-43d6-a264-ddd8b7da8b78"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement Advertisement()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisher)this.asInterface(uuid("cde820f9-d9fa-43d6-a264-ddd8b7da8b78"))).get_Advertisement(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisher)this.asInterface(uuid("cde820f9-d9fa-43d6-a264-ddd8b7da8b78"))).abi_Start());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisher)this.asInterface(uuid("cde820f9-d9fa-43d6-a264-ddd8b7da8b78"))).abi_Stop());
	}
	final EventRegistrationToken OnStatusChanged(void delegate(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatusChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisher)this.asInterface(uuid("cde820f9-d9fa-43d6-a264-ddd8b7da8b78"))).add_StatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatusChangedEventArgs), Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatusChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisher)this.asInterface(uuid("cde820f9-d9fa-43d6-a264-ddd8b7da8b78"))).remove_StatusChanged(token));
	}
	static BluetoothLEAdvertisementPublisher New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BluetoothLEAdvertisementPublisher).abi_ActivateInstance(&ret));
		return cast(BluetoothLEAdvertisementPublisher) ret;
	}
	static Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisher New(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement advertisement)
	{
		auto factory = factory!(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisherFactory);
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisher _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisherFactory)factory.asInterface(uuid("5c5f065e-b863-4981-a1af-1c544d8b0c0d"))).abi_Create(advertisement, &_ret));
		return _ret;
	}
}

interface BluetoothLEAdvertisementPublisherStatusChangedEventArgs : Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisherStatusChangedEventArgs
{
extern(Windows):
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus Status()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementPublisherStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisherStatusChangedEventArgs)this.asInterface(uuid("09c2bd9f-2dff-4b23-86ee-0d14fb94aeae"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementPublisherStatusChangedEventArgs)this.asInterface(uuid("09c2bd9f-2dff-4b23-86ee-0d14fb94aeae"))).get_Error(&_ret));
		return _ret;
	}
}

interface BluetoothLEAdvertisementReceivedEventArgs : Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementReceivedEventArgs
{
extern(Windows):
	final INT16 RawSignalStrengthInDBm()
	{
		INT16 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementReceivedEventArgs)this.asInterface(uuid("27987ddf-e596-41be-8d43-9e6731d4a913"))).get_RawSignalStrengthInDBm(&_ret));
		return _ret;
	}
	final ulong BluetoothAddress()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementReceivedEventArgs)this.asInterface(uuid("27987ddf-e596-41be-8d43-9e6731d4a913"))).get_BluetoothAddress(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementType AdvertisementType()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementType _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementReceivedEventArgs)this.asInterface(uuid("27987ddf-e596-41be-8d43-9e6731d4a913"))).get_AdvertisementType(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementReceivedEventArgs)this.asInterface(uuid("27987ddf-e596-41be-8d43-9e6731d4a913"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement Advertisement()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementReceivedEventArgs)this.asInterface(uuid("27987ddf-e596-41be-8d43-9e6731d4a913"))).get_Advertisement(&_ret));
		return _ret;
	}
}

interface BluetoothLEAdvertisementWatcher : Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher
{
extern(Windows):
	final Windows.Foundation.TimeSpan MinSamplingInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).get_MinSamplingInterval(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan MaxSamplingInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).get_MaxSamplingInterval(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan MinOutOfRangeTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).get_MinOutOfRangeTimeout(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan MaxOutOfRangeTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).get_MaxOutOfRangeTimeout(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcherStatus Status()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcherStatus _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEScanningMode ScanningMode()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEScanningMode _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).get_ScanningMode(&_ret));
		return _ret;
	}
	final void ScanningMode(Windows.Devices.Bluetooth.Advertisement.BluetoothLEScanningMode value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).set_ScanningMode(value));
	}
	final Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter SignalStrengthFilter()
	{
		Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).get_SignalStrengthFilter(&_ret));
		return _ret;
	}
	final void SignalStrengthFilter(Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).set_SignalStrengthFilter(value));
	}
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter AdvertisementFilter()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).get_AdvertisementFilter(&_ret));
		return _ret;
	}
	final void AdvertisementFilter(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).set_AdvertisementFilter(value));
	}
	final void Start()
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).abi_Start());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).abi_Stop());
	}
	final EventRegistrationToken OnReceived(void delegate(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).add_Received(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementReceivedEventArgs), Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).remove_Received(token));
	}
	final EventRegistrationToken OnStopped(void delegate(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcherStoppedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).add_Stopped(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcherStoppedEventArgs), Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher, Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcherStoppedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStopped(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcher)this.asInterface(uuid("a6ac336f-f3d3-4297-8d6c-c81ea6623f40"))).remove_Stopped(token));
	}
	static BluetoothLEAdvertisementWatcher New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BluetoothLEAdvertisementWatcher).abi_ActivateInstance(&ret));
		return cast(BluetoothLEAdvertisementWatcher) ret;
	}
	static Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher New(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter advertisementFilter)
	{
		auto factory = factory!(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcherFactory);
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementWatcher _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcherFactory)factory.asInterface(uuid("9aaf2d56-39ac-453e-b32a-85c657e017f1"))).abi_Create(advertisementFilter, &_ret));
		return _ret;
	}
}

interface BluetoothLEAdvertisementWatcherStoppedEventArgs : Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcherStoppedEventArgs
{
extern(Windows):
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisementWatcherStoppedEventArgs)this.asInterface(uuid("dd40f84d-e7b9-43e3-9c04-0685d085fd8c"))).get_Error(&_ret));
		return _ret;
	}
}

interface BluetoothLEManufacturerData : Windows.Devices.Bluetooth.Advertisement.IBluetoothLEManufacturerData
{
extern(Windows):
	final UINT16 CompanyId()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEManufacturerData)this.asInterface(uuid("912dba18-6963-4533-b061-4694dafb34e5"))).get_CompanyId(&_ret));
		return _ret;
	}
	final void CompanyId(UINT16 value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEManufacturerData)this.asInterface(uuid("912dba18-6963-4533-b061-4694dafb34e5"))).set_CompanyId(value));
	}
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEManufacturerData)this.asInterface(uuid("912dba18-6963-4533-b061-4694dafb34e5"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEManufacturerData)this.asInterface(uuid("912dba18-6963-4533-b061-4694dafb34e5"))).set_Data(value));
	}
	static BluetoothLEManufacturerData New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BluetoothLEManufacturerData).abi_ActivateInstance(&ret));
		return cast(BluetoothLEManufacturerData) ret;
	}
	static Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData New(UINT16 companyId, Windows.Storage.Streams.IBuffer data)
	{
		auto factory = factory!(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEManufacturerDataFactory);
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEManufacturerData _ret;
		Debug.OK((cast(Windows.Devices.Bluetooth.Advertisement.IBluetoothLEManufacturerDataFactory)factory.asInterface(uuid("c09b39f8-319a-441e-8de5-66a81e877a6c"))).abi_Create(companyId, data, &_ret));
		return _ret;
	}
}

@bitflags
enum BluetoothLEAdvertisementFlags
{
	None = 0x0,
	LimitedDiscoverableMode = 0x1,
	GeneralDiscoverableMode = 0x2,
	ClassicNotSupported = 0x4,
	DualModeControllerCapable = 0x8,
	DualModeHostCapable = 0x10
}

enum BluetoothLEAdvertisementPublisherStatus
{
	Created = 0,
	Waiting = 1,
	Started = 2,
	Stopping = 3,
	Stopped = 4,
	Aborted = 5
}

enum BluetoothLEAdvertisementType
{
	ConnectableUndirected = 0,
	ConnectableDirected = 1,
	ScannableUndirected = 2,
	NonConnectableUndirected = 3,
	ScanResponse = 4
}

enum BluetoothLEAdvertisementWatcherStatus
{
	Created = 0,
	Started = 1,
	Stopping = 2,
	Stopped = 3,
	Aborted = 4
}

enum BluetoothLEScanningMode
{
	Passive = 0,
	Active = 1
}