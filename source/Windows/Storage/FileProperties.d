module Windows.Storage.FileProperties;

import dwinrt;

@uuid("d05d55db-785e-4a66-be02-9beec58aea81")
@WinrtFactory("Windows.Storage.FileProperties.BasicProperties")
interface IBasicProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Size(UINT64* return_value);
	HRESULT get_DateModified(Windows.Foundation.DateTime* return_value);
	HRESULT get_ItemDate(Windows.Foundation.DateTime* return_value);
}

@uuid("7eab19bc-1821-4923-b4a9-0aea404d0070")
@WinrtFactory("Windows.Storage.FileProperties.DocumentProperties")
interface IDocumentProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Author(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Keywords(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT set_Comment(HSTRING value);
}

@uuid("41493244-2524-4655-86a6-ed16f5fc716b")
@WinrtFactory("Windows.Storage.FileProperties.GeotagHelper")
interface IGeotagHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetGeotagAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Devices.Geolocation.Geopoint)* return_operation);
	HRESULT abi_SetGeotagFromGeolocatorAsync(Windows.Storage.IStorageFile file, Windows.Devices.Geolocation.Geolocator geolocator, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_SetGeotagAsync(Windows.Storage.IStorageFile file, Windows.Devices.Geolocation.Geopoint geopoint, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("523c9424-fcff-4275-afee-ecdb9ab47973")
@WinrtFactory("Windows.Storage.FileProperties.ImageProperties")
interface IImageProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("bc8aab62-66ec-419a-bc5d-ca65a4cb46da")
@WinrtFactory("Windows.Storage.FileProperties.MusicProperties")
interface IMusicProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("05294bad-bc38-48bf-85d7-770e0e2ae0ba")
@WinrtFactory("Windows.Storage.FileProperties.StorageItemContentProperties")
interface IStorageItemContentProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetMusicPropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.MusicProperties)* return_operation);
	HRESULT abi_GetVideoPropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.VideoProperties)* return_operation);
	HRESULT abi_GetImagePropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.ImageProperties)* return_operation);
	HRESULT abi_GetDocumentPropertiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.FileProperties.DocumentProperties)* return_operation);
}

@uuid("c54361b2-54cd-432b-bdbc-4b19c4b470d7")
interface IStorageItemExtraProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RetrievePropertiesAsync(Windows.Foundation.Collections.IIterable!(HSTRING) propertiesToRetrieve, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))* return_operation);
	HRESULT abi_SavePropertiesAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)) propertiesToSave, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_SavePropertiesAsyncOverloadDefault(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("693dd42f-dbe7-49b5-b3b3-2893ac5d3423")
@WinrtFactory("Windows.Storage.FileProperties.StorageItemThumbnail")
interface IThumbnailProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OriginalWidth(UINT32* return_value);
	HRESULT get_OriginalHeight(UINT32* return_value);
	HRESULT get_ReturnedSmallerCachedSize(bool* return_value);
	HRESULT get_Type(Windows.Storage.FileProperties.ThumbnailType* return_value);
}

@uuid("719ae507-68de-4db8-97de-49998c059f2f")
@WinrtFactory("Windows.Storage.FileProperties.VideoProperties")
interface IVideoProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

interface BasicProperties
{
}

interface DocumentProperties
{
}

interface ImageProperties
{
}

interface MusicProperties
{
}

interface StorageItemContentProperties
{
}

interface StorageItemThumbnail
{
}

interface VideoProperties
{
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