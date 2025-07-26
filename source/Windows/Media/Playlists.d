module Windows.Media.Playlists;

import dwinrt;

@uuid("803736f5-cf44-4d97-83b3-7a089e9ab663")
@WinrtFactory("Windows.Media.Playlists.Playlist")
interface IPlaylist : IInspectable
{
extern(Windows):
	HRESULT get_Files(Windows.Foundation.Collections.IVector!(Windows.Storage.StorageFile)* return_value);
	HRESULT abi_SaveAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_SaveAsAsync(Windows.Storage.IStorageFolder saveLocation, HSTRING desiredName, Windows.Storage.NameCollisionOption option, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_SaveAsWithFormatAsync(Windows.Storage.IStorageFolder saveLocation, HSTRING desiredName, Windows.Storage.NameCollisionOption option, Windows.Media.Playlists.PlaylistFormat playlistFormat, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
}

@uuid("c5c331cd-81f9-4ff3-95b9-70b6ff046b68")
@WinrtFactory("Windows.Media.Playlists.Playlist")
interface IPlaylistStatics : IInspectable
{
extern(Windows):
	HRESULT abi_LoadAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.Playlists.Playlist)* return_operation);
}

interface Playlist : Windows.Media.Playlists.IPlaylist
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Storage.StorageFile) Files()
	{
		Windows.Foundation.Collections.IVector!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Media.Playlists.IPlaylist)this.asInterface(uuid("803736f5-cf44-4d97-83b3-7a089e9ab663"))).get_Files(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Playlists.IPlaylist)this.asInterface(uuid("803736f5-cf44-4d97-83b3-7a089e9ab663"))).abi_SaveAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) SaveAsAsync(Windows.Storage.IStorageFolder saveLocation, HSTRING desiredName, Windows.Storage.NameCollisionOption option)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Media.Playlists.IPlaylist)this.asInterface(uuid("803736f5-cf44-4d97-83b3-7a089e9ab663"))).abi_SaveAsAsync(saveLocation, desiredName, option, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) SaveAsWithFormatAsync(Windows.Storage.IStorageFolder saveLocation, HSTRING desiredName, Windows.Storage.NameCollisionOption option, Windows.Media.Playlists.PlaylistFormat playlistFormat)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Media.Playlists.IPlaylist)this.asInterface(uuid("803736f5-cf44-4d97-83b3-7a089e9ab663"))).abi_SaveAsWithFormatAsync(saveLocation, desiredName, option, playlistFormat, &_ret));
		return _ret;
	}
	alias SaveAsAsync = SaveAsWithFormatAsync;

	private static Windows.Media.Playlists.IPlaylistStatics _staticInstance;
	public static Windows.Media.Playlists.IPlaylistStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Playlists.IPlaylistStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Playlists.Playlist) LoadAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Playlists.Playlist) _ret;
		Debug.OK(staticInstance.abi_LoadAsync(file, &_ret));
		return _ret;
	}
	static Playlist New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Playlist).abi_ActivateInstance(&ret));
		return cast(Playlist) ret;
	}
}

enum PlaylistFormat
{
	WindowsMedia = 0,
	Zune = 1,
	M3u = 2
}