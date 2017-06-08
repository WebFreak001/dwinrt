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
}

enum PlaylistFormat
{
	WindowsMedia = 0,
	Zune = 1,
	M3u = 2
}