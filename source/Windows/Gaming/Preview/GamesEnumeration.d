module Windows.Gaming.Preview.GamesEnumeration;

import dwinrt;

@uuid("25f6a421-d8f5-4d91-b40e-53d5e86fde64")
interface GameListChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Gaming.Preview.GamesEnumeration.GameListEntry game);
}

@uuid("10c5648f-6c8f-4712-9b38-474bc22e76d8")
interface GameListRemovedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(HSTRING identifier);
}

@uuid("735924d3-811f-4494-b69c-c641a0c61543")
interface IGameListEntry : IInspectable
{
extern(Windows):
	HRESULT get_DisplayInfo(Windows.ApplicationModel.AppDisplayInfo* return_value);
	HRESULT abi_LaunchAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT get_Category(Windows.Gaming.Preview.GamesEnumeration.GameListCategory* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
	HRESULT abi_SetCategoryAsync(Windows.Gaming.Preview.GamesEnumeration.GameListCategory value, Windows.Foundation.IAsyncAction* return_action);
}

@uuid("2ddd0f6f-9c66-4b05-945c-d6ed78491b8c")
@WinrtFactory("Windows.Gaming.Preview.GamesEnumeration.GameList")
interface IGameListStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Preview.GamesEnumeration.GameListEntry))* return_operation);
	HRESULT abi_FindAllAsyncPackageFamilyName(HSTRING packageFamilyName, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Preview.GamesEnumeration.GameListEntry))* return_operation);
	HRESULT add_GameAdded(Windows.Gaming.Preview.GamesEnumeration.GameListChangedEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_GameAdded(EventRegistrationToken token);
	HRESULT add_GameRemoved(Windows.Gaming.Preview.GamesEnumeration.GameListRemovedEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_GameRemoved(EventRegistrationToken token);
	HRESULT add_GameUpdated(Windows.Gaming.Preview.GamesEnumeration.GameListChangedEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_GameUpdated(EventRegistrationToken token);
}

interface GameList
{
	private static Windows.Gaming.Preview.GamesEnumeration.IGameListStatics _staticInstance;
	public static Windows.Gaming.Preview.GamesEnumeration.IGameListStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Gaming.Preview.GamesEnumeration.IGameListStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Preview.GamesEnumeration.GameListEntry)) FindAllAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Preview.GamesEnumeration.GameListEntry)) _ret;
		Debug.OK(staticInstance.abi_FindAllAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Preview.GamesEnumeration.GameListEntry)) FindAllAsyncPackageFamilyName(wstring packageFamilyName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Gaming.Preview.GamesEnumeration.GameListEntry)) _ret;
		Debug.OK(staticInstance.abi_FindAllAsyncPackageFamilyName(hstring(packageFamilyName).handle, &_ret));
		return _ret;
	}
	alias FindAllAsync = FindAllAsyncPackageFamilyName;
	static EventRegistrationToken OnGameAdded(void delegate(Windows.Gaming.Preview.GamesEnumeration.GameListEntry) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_GameAdded(event!(Windows.Gaming.Preview.GamesEnumeration.GameListChangedEventHandler, Windows.Gaming.Preview.GamesEnumeration.GameListEntry)(fn), &tok));
		return tok;
	}
	static void removeGameAdded(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_GameAdded(token));
	}
	static EventRegistrationToken OnGameRemoved(void delegate(HSTRING) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_GameRemoved(event!(Windows.Gaming.Preview.GamesEnumeration.GameListRemovedEventHandler, HSTRING)(fn), &tok));
		return tok;
	}
	static void removeGameRemoved(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_GameRemoved(token));
	}
	static EventRegistrationToken OnGameUpdated(void delegate(Windows.Gaming.Preview.GamesEnumeration.GameListEntry) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_GameUpdated(event!(Windows.Gaming.Preview.GamesEnumeration.GameListChangedEventHandler, Windows.Gaming.Preview.GamesEnumeration.GameListEntry)(fn), &tok));
		return tok;
	}
	static void removeGameUpdated(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_GameUpdated(token));
	}
}

interface GameListEntry : Windows.Gaming.Preview.GamesEnumeration.IGameListEntry
{
extern(Windows):
	final Windows.ApplicationModel.AppDisplayInfo DisplayInfo()
	{
		Windows.ApplicationModel.AppDisplayInfo _ret;
		Debug.OK((cast(Windows.Gaming.Preview.GamesEnumeration.IGameListEntry)this.asInterface(uuid("735924d3-811f-4494-b69c-c641a0c61543"))).get_DisplayInfo(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) LaunchAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Gaming.Preview.GamesEnumeration.IGameListEntry)this.asInterface(uuid("735924d3-811f-4494-b69c-c641a0c61543"))).abi_LaunchAsync(&_ret));
		return _ret;
	}
	final Windows.Gaming.Preview.GamesEnumeration.GameListCategory Category()
	{
		Windows.Gaming.Preview.GamesEnumeration.GameListCategory _ret;
		Debug.OK((cast(Windows.Gaming.Preview.GamesEnumeration.IGameListEntry)this.asInterface(uuid("735924d3-811f-4494-b69c-c641a0c61543"))).get_Category(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK((cast(Windows.Gaming.Preview.GamesEnumeration.IGameListEntry)this.asInterface(uuid("735924d3-811f-4494-b69c-c641a0c61543"))).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetCategoryAsync(Windows.Gaming.Preview.GamesEnumeration.GameListCategory value)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Gaming.Preview.GamesEnumeration.IGameListEntry)this.asInterface(uuid("735924d3-811f-4494-b69c-c641a0c61543"))).abi_SetCategoryAsync(value, &_ret));
		return _ret;
	}
}

enum GameListCategory
{
	Candidate = 0,
	ConfirmedBySystem = 1,
	ConfirmedByUser = 2
}