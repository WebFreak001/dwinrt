module Windows.Storage.FileProperties;

import dwinrt;

@uuid("d05d55db-785e-4a66-be02-9beec58aea81")
@WinrtFactory("Windows.Storage.FileProperties.BasicProperties")
interface IBasicProperties : IInspectable
{
extern(Windows):
	HRESULT get_Size(ulong* return_value);
	HRESULT get_DateModified(Windows.Foundation.DateTime* return_value);
	HRESULT get_ItemDate(Windows.Foundation.DateTime* return_value);
}

@uuid("7eab19bc-1821-4923-b4a9-0aea404d0070")
@WinrtFactory("Windows.Storage.FileProperties.DocumentProperties")
interface IDocumentProperties_Base : IInspectable
{
extern(Windows):
	HRESULT get_Author(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Keywords(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT set_Comment(HSTRING value);
}
@uuid("7eab19bc-1821-4923-b4a9-0aea404d0070")
@WinrtFactory("Windows.Storage.FileProperties.DocumentProperties")
interface IDocumentProperties : IDocumentProperties_Base, Windows.Storage.FileProperties.IStorageItemExtraProperties {}

@uuid("41493244-2524-4655-86a6-ed16f5fc716b")
@WinrtFactory("Windows.Storage.FileProperties.GeotagHelper")
interface IGeotagHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetGeotagAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.Geopoint)* return_operation);
	HRESULT abi_SetGeotagFromGeolocatorAsync(Windows.Storage.IStorageFile file, Windows.Devices.Geolocation.Geolocator geolocator, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_SetGeotagAsync(Windows.Storage.IStorageFile file, Windows.Devices.Geolocation.Geopoint geopoint, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("523c9424-fcff-4275-afee-ecdb9ab47973")
@WinrtFactory("Windows.Storage.FileProperties.ImageProperties")
interface IImageProperties_Base : IInspectable
{
extern(Windows):
	HRESULT get_Rating(UINT32* return_value);
	HRESULT set_Rating(UINT32 value);
	HRESULT get_Keywords(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_DateTaken(Windows.Foundation.DateTime* return_value);
	HRESULT set_DateTaken(Windows.Foundation.DateTime value);
	HRESULT get_Width(UINT32* return_value);
	HRESULT get_Height(UINT32* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Latitude(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_Longitude(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_CameraManufacturer(HSTRING* return_value);
	HRESULT set_CameraManufacturer(HSTRING value);
	HRESULT get_CameraModel(HSTRING* return_value);
	HRESULT set_CameraModel(HSTRING value);
	HRESULT get_Orientation(Windows.Storage.FileProperties.PhotoOrientation* return_value);
	HRESULT get_PeopleNames(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}
@uuid("523c9424-fcff-4275-afee-ecdb9ab47973")
@WinrtFactory("Windows.Storage.FileProperties.ImageProperties")
interface IImageProperties : IImageProperties_Base, Windows.Storage.FileProperties.IStorageItemExtraProperties {}

@uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da")
@WinrtFactory("Windows.Storage.FileProperties.MusicProperties")
interface IMusicProperties_Base : IInspectable
{
extern(Windows):
	HRESULT get_Album(HSTRING* return_value);
	HRESULT set_Album(HSTRING value);
	HRESULT get_Artist(HSTRING* return_value);
	HRESULT set_Artist(HSTRING value);
	HRESULT get_Genre(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_TrackNumber(UINT32* return_value);
	HRESULT set_TrackNumber(UINT32 value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Rating(UINT32* return_value);
	HRESULT set_Rating(UINT32 value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Bitrate(UINT32* return_value);
	HRESULT get_AlbumArtist(HSTRING* return_value);
	HRESULT set_AlbumArtist(HSTRING value);
	HRESULT get_Composers(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Conductors(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Subtitle(HSTRING* return_value);
	HRESULT set_Subtitle(HSTRING value);
	HRESULT get_Producers(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Publisher(HSTRING* return_value);
	HRESULT set_Publisher(HSTRING value);
	HRESULT get_Writers(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Year(UINT32* return_value);
	HRESULT set_Year(UINT32 value);
}
@uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da")
@WinrtFactory("Windows.Storage.FileProperties.MusicProperties")
interface IMusicProperties : IMusicProperties_Base, Windows.Storage.FileProperties.IStorageItemExtraProperties {}

@uuid("05294bad-bc38-48bf-85d7-770e0e2ae0ba")
@WinrtFactory("Windows.Storage.FileProperties.StorageItemContentProperties")
interface IStorageItemContentProperties_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetMusicPropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.MusicProperties)* return_operation);
	HRESULT abi_GetVideoPropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.VideoProperties)* return_operation);
	HRESULT abi_GetImagePropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.ImageProperties)* return_operation);
	HRESULT abi_GetDocumentPropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.DocumentProperties)* return_operation);
}
@uuid("05294bad-bc38-48bf-85d7-770e0e2ae0ba")
@WinrtFactory("Windows.Storage.FileProperties.StorageItemContentProperties")
interface IStorageItemContentProperties : IStorageItemContentProperties_Base, Windows.Storage.FileProperties.IStorageItemExtraProperties {}

@uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7")
interface IStorageItemExtraProperties : IInspectable
{
extern(Windows):
	HRESULT abi_RetrievePropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))* return_operation);
	HRESULT abi_SavePropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)) propertiesToSave, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_SavePropertiesAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("693dd42f-dbe7-49b5-b3b3-2893ac5d3423")
@WinrtFactory("Windows.Storage.FileProperties.StorageItemThumbnail")
interface IThumbnailProperties : IInspectable
{
extern(Windows):
	HRESULT get_OriginalWidth(UINT32* return_value);
	HRESULT get_OriginalHeight(UINT32* return_value);
	HRESULT get_ReturnedSmallerCachedSize(bool* return_value);
	HRESULT get_Type(Windows.Storage.FileProperties.ThumbnailType* return_value);
}

@uuid("719ae507-68de-4db8-97de-49998c059f2f")
@WinrtFactory("Windows.Storage.FileProperties.VideoProperties")
interface IVideoProperties_Base : IInspectable
{
extern(Windows):
	HRESULT get_Rating(UINT32* return_value);
	HRESULT set_Rating(UINT32 value);
	HRESULT get_Keywords(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Width(UINT32* return_value);
	HRESULT get_Height(UINT32* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Latitude(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_Longitude(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Subtitle(HSTRING* return_value);
	HRESULT set_Subtitle(HSTRING value);
	HRESULT get_Producers(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Publisher(HSTRING* return_value);
	HRESULT set_Publisher(HSTRING value);
	HRESULT get_Writers(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Year(UINT32* return_value);
	HRESULT set_Year(UINT32 value);
	HRESULT get_Bitrate(UINT32* return_value);
	HRESULT get_Directors(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Orientation(Windows.Storage.FileProperties.VideoOrientation* return_value);
}
@uuid("719ae507-68de-4db8-97de-49998c059f2f")
@WinrtFactory("Windows.Storage.FileProperties.VideoProperties")
interface IVideoProperties : IVideoProperties_Base, Windows.Storage.FileProperties.IStorageItemExtraProperties {}

interface BasicProperties : Windows.Storage.FileProperties.IBasicProperties, Windows.Storage.FileProperties.IStorageItemExtraProperties
{
extern(Windows):
	final ulong Size()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IBasicProperties)this.asInterface(uuid("d05d55db-785e-4a66-be02-9beec58aea81"))).get_Size(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime DateModified()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IBasicProperties)this.asInterface(uuid("d05d55db-785e-4a66-be02-9beec58aea81"))).get_DateModified(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ItemDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IBasicProperties)this.asInterface(uuid("d05d55db-785e-4a66-be02-9beec58aea81"))).get_ItemDate(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) RetrievePropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_RetrievePropertiesAsync(propertiesToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)) propertiesToSave)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(propertiesToSave, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(&_ret));
		return _ret;
	}
}

interface DocumentProperties : Windows.Storage.FileProperties.IDocumentProperties, Windows.Storage.FileProperties.IStorageItemExtraProperties
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(HSTRING) Author()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IDocumentProperties)this.asInterface(uuid("7eab19bc-1821-4923-b4a9-0aea404d0070"))).get_Author(&_ret));
		return _ret;
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IDocumentProperties)this.asInterface(uuid("7eab19bc-1821-4923-b4a9-0aea404d0070"))).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IDocumentProperties)this.asInterface(uuid("7eab19bc-1821-4923-b4a9-0aea404d0070"))).set_Title(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Keywords()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IDocumentProperties)this.asInterface(uuid("7eab19bc-1821-4923-b4a9-0aea404d0070"))).get_Keywords(&_ret));
		return _ret;
	}
	final HSTRING Comment()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IDocumentProperties)this.asInterface(uuid("7eab19bc-1821-4923-b4a9-0aea404d0070"))).get_Comment(&_ret));
		return _ret;
	}
	final void Comment(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IDocumentProperties)this.asInterface(uuid("7eab19bc-1821-4923-b4a9-0aea404d0070"))).set_Comment(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) RetrievePropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_RetrievePropertiesAsync(propertiesToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)) propertiesToSave)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(propertiesToSave, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(&_ret));
		return _ret;
	}
}

interface GeotagHelper
{
	private static Windows.Storage.FileProperties.IGeotagHelperStatics _staticInstance;
	public static Windows.Storage.FileProperties.IGeotagHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Storage.FileProperties.IGeotagHelperStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.Geopoint) GetGeotagAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.Geopoint) _ret;
		Debug.OK(staticInstance.abi_GetGeotagAsync(file, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction SetGeotagFromGeolocatorAsync(Windows.Storage.IStorageFile file, Windows.Devices.Geolocation.Geolocator geolocator)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_SetGeotagFromGeolocatorAsync(file, geolocator, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction SetGeotagAsync(Windows.Storage.IStorageFile file, Windows.Devices.Geolocation.Geopoint geopoint)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_SetGeotagAsync(file, geopoint, &_ret));
		return _ret;
	}
}

interface ImageProperties : Windows.Storage.FileProperties.IImageProperties, Windows.Storage.FileProperties.IStorageItemExtraProperties
{
extern(Windows):
	final UINT32 Rating()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_Rating(&_ret));
		return _ret;
	}
	final void Rating(UINT32 value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).set_Rating(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Keywords()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_Keywords(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime DateTaken()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_DateTaken(&_ret));
		return _ret;
	}
	final void DateTaken(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).set_DateTaken(value));
	}
	final UINT32 Width()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_Width(&_ret));
		return _ret;
	}
	final UINT32 Height()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_Height(&_ret));
		return _ret;
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).set_Title(value));
	}
	final Windows.Foundation.IReference!(double) Latitude()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_Latitude(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) Longitude()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_Longitude(&_ret));
		return _ret;
	}
	final HSTRING CameraManufacturer()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_CameraManufacturer(&_ret));
		return _ret;
	}
	final void CameraManufacturer(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).set_CameraManufacturer(value));
	}
	final HSTRING CameraModel()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_CameraModel(&_ret));
		return _ret;
	}
	final void CameraModel(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).set_CameraModel(value));
	}
	final Windows.Storage.FileProperties.PhotoOrientation Orientation()
	{
		Windows.Storage.FileProperties.PhotoOrientation _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_Orientation(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) PeopleNames()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IImageProperties)this.asInterface(uuid("523c9424-fcff-4275-afee-ecdb9ab47973"))).get_PeopleNames(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) RetrievePropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_RetrievePropertiesAsync(propertiesToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)) propertiesToSave)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(propertiesToSave, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(&_ret));
		return _ret;
	}
}

interface MusicProperties : Windows.Storage.FileProperties.IMusicProperties, Windows.Storage.FileProperties.IStorageItemExtraProperties
{
extern(Windows):
	final HSTRING Album()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Album(&_ret));
		return _ret;
	}
	final void Album(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).set_Album(value));
	}
	final HSTRING Artist()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Artist(&_ret));
		return _ret;
	}
	final void Artist(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).set_Artist(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Genre()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Genre(&_ret));
		return _ret;
	}
	final UINT32 TrackNumber()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_TrackNumber(&_ret));
		return _ret;
	}
	final void TrackNumber(UINT32 value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).set_TrackNumber(value));
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).set_Title(value));
	}
	final UINT32 Rating()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Rating(&_ret));
		return _ret;
	}
	final void Rating(UINT32 value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).set_Rating(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Duration(&_ret));
		return _ret;
	}
	final UINT32 Bitrate()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Bitrate(&_ret));
		return _ret;
	}
	final HSTRING AlbumArtist()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_AlbumArtist(&_ret));
		return _ret;
	}
	final void AlbumArtist(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).set_AlbumArtist(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Composers()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Composers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Conductors()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Conductors(&_ret));
		return _ret;
	}
	final HSTRING Subtitle()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Subtitle(&_ret));
		return _ret;
	}
	final void Subtitle(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).set_Subtitle(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Producers()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Producers(&_ret));
		return _ret;
	}
	final HSTRING Publisher()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Publisher(&_ret));
		return _ret;
	}
	final void Publisher(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).set_Publisher(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Writers()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Writers(&_ret));
		return _ret;
	}
	final UINT32 Year()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).get_Year(&_ret));
		return _ret;
	}
	final void Year(UINT32 value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IMusicProperties)this.asInterface(uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da"))).set_Year(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) RetrievePropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_RetrievePropertiesAsync(propertiesToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)) propertiesToSave)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(propertiesToSave, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(&_ret));
		return _ret;
	}
}

interface StorageItemContentProperties : Windows.Storage.FileProperties.IStorageItemContentProperties, Windows.Storage.FileProperties.IStorageItemExtraProperties
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.MusicProperties) GetMusicPropertiesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.MusicProperties) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemContentProperties)this.asInterface(uuid("05294bad-bc38-48bf-85d7-770e0e2ae0ba"))).abi_GetMusicPropertiesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.VideoProperties) GetVideoPropertiesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.VideoProperties) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemContentProperties)this.asInterface(uuid("05294bad-bc38-48bf-85d7-770e0e2ae0ba"))).abi_GetVideoPropertiesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.ImageProperties) GetImagePropertiesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.ImageProperties) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemContentProperties)this.asInterface(uuid("05294bad-bc38-48bf-85d7-770e0e2ae0ba"))).abi_GetImagePropertiesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.DocumentProperties) GetDocumentPropertiesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.DocumentProperties) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemContentProperties)this.asInterface(uuid("05294bad-bc38-48bf-85d7-770e0e2ae0ba"))).abi_GetDocumentPropertiesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) RetrievePropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_RetrievePropertiesAsync(propertiesToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)) propertiesToSave)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(propertiesToSave, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(&_ret));
		return _ret;
	}
}

interface StorageItemThumbnail : Windows.Storage.Streams.IRandomAccessStreamWithContentType, Windows.Storage.Streams.IContentTypeProvider, Windows.Storage.Streams.IRandomAccessStream, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream, Windows.Storage.FileProperties.IThumbnailProperties
{
extern(Windows):
	final HSTRING ContentType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Streams.IContentTypeProvider)this.asInterface(uuid("97d098a5-3b99-4de9-88a5-e11d2f50c795"))).get_ContentType(&_ret));
		return _ret;
	}
	final ulong Size()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).get_Size(&_ret));
		return _ret;
	}
	final void Size(ulong value)
	{
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).set_Size(value));
	}
	final Windows.Storage.Streams.IInputStream GetInputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).abi_GetInputStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream GetOutputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).abi_GetOutputStreamAt(position, &_ret));
		return _ret;
	}
	final ulong Position()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).get_Position(&_ret));
		return _ret;
	}
	final void Seek(ulong position)
	{
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).abi_Seek(position));
	}
	final Windows.Storage.Streams.IRandomAccessStream CloneStream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).abi_CloneStream(&_ret));
		return _ret;
	}
	final bool CanRead()
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).get_CanRead(&_ret));
		return _ret;
	}
	final bool CanWrite()
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).get_CanWrite(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IOutputStream)this.asInterface(uuid("905a0fe6-bc53-11df-8c49-001e4fc686da"))).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IOutputStream)this.asInterface(uuid("905a0fe6-bc53-11df-8c49-001e4fc686da"))).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IInputStream)this.asInterface(uuid("905a0fe2-bc53-11df-8c49-001e4fc686da"))).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
	final UINT32 OriginalWidth()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IThumbnailProperties)this.asInterface(uuid("693dd42f-dbe7-49b5-b3b3-2893ac5d3423"))).get_OriginalWidth(&_ret));
		return _ret;
	}
	final UINT32 OriginalHeight()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IThumbnailProperties)this.asInterface(uuid("693dd42f-dbe7-49b5-b3b3-2893ac5d3423"))).get_OriginalHeight(&_ret));
		return _ret;
	}
	final bool ReturnedSmallerCachedSize()
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IThumbnailProperties)this.asInterface(uuid("693dd42f-dbe7-49b5-b3b3-2893ac5d3423"))).get_ReturnedSmallerCachedSize(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.ThumbnailType Type()
	{
		Windows.Storage.FileProperties.ThumbnailType _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IThumbnailProperties)this.asInterface(uuid("693dd42f-dbe7-49b5-b3b3-2893ac5d3423"))).get_Type(&_ret));
		return _ret;
	}
}

interface VideoProperties : Windows.Storage.FileProperties.IVideoProperties, Windows.Storage.FileProperties.IStorageItemExtraProperties
{
extern(Windows):
	final UINT32 Rating()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Rating(&_ret));
		return _ret;
	}
	final void Rating(UINT32 value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).set_Rating(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Keywords()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Keywords(&_ret));
		return _ret;
	}
	final UINT32 Width()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Width(&_ret));
		return _ret;
	}
	final UINT32 Height()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Height(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Duration(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) Latitude()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Latitude(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) Longitude()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Longitude(&_ret));
		return _ret;
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).set_Title(value));
	}
	final HSTRING Subtitle()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Subtitle(&_ret));
		return _ret;
	}
	final void Subtitle(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).set_Subtitle(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Producers()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Producers(&_ret));
		return _ret;
	}
	final HSTRING Publisher()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Publisher(&_ret));
		return _ret;
	}
	final void Publisher(HSTRING value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).set_Publisher(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Writers()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Writers(&_ret));
		return _ret;
	}
	final UINT32 Year()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Year(&_ret));
		return _ret;
	}
	final void Year(UINT32 value)
	{
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).set_Year(value));
	}
	final UINT32 Bitrate()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Bitrate(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Directors()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Directors(&_ret));
		return _ret;
	}
	final Windows.Storage.FileProperties.VideoOrientation Orientation()
	{
		Windows.Storage.FileProperties.VideoOrientation _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IVideoProperties)this.asInterface(uuid("719ae507-68de-4db8-97de-49998c059f2f"))).get_Orientation(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) RetrievePropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)) _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_RetrievePropertiesAsync(propertiesToRetrieve, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)) propertiesToSave)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(propertiesToSave, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SavePropertiesAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Storage.FileProperties.IStorageItemExtraProperties)this.asInterface(uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7"))).abi_SavePropertiesAsync(&_ret));
		return _ret;
	}
}

enum PhotoOrientation
{
	Unspecified = 0,
	Normal = 1,
	FlipHorizontal = 2,
	Rotate180 = 3,
	FlipVertical = 4,
	Transpose = 5,
	Rotate270 = 6,
	Transverse = 7,
	Rotate90 = 8
}

@bitflags
enum PropertyPrefetchOptions
{
	None = 0x0,
	MusicProperties = 0x1,
	VideoProperties = 0x2,
	ImageProperties = 0x4,
	DocumentProperties = 0x8,
	BasicProperties = 0x10
}

enum ThumbnailMode
{
	PicturesView = 0,
	VideosView = 1,
	MusicView = 2,
	DocumentsView = 3,
	ListView = 4,
	SingleItem = 5
}

@bitflags
enum ThumbnailOptions
{
	None = 0x0,
	ReturnOnlyIfCached = 0x1,
	ResizeThumbnail = 0x2,
	UseCurrentScale = 0x4
}

enum ThumbnailType
{
	Image = 0,
	Icon = 1
}

enum VideoOrientation
{
	Normal = 0,
	Rotate90 = 90,
	Rotate180 = 180,
	Rotate270 = 270
}