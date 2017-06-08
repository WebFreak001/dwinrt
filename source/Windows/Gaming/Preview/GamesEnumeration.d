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
}

interface GameListEntry : Windows.Gaming.Preview.GamesEnumeration.IGameListEntry
{
}

enum GameListCategory
{
	Candidate = 0,
	ConfirmedBySystem = 1,
	ConfirmedByUser = 2
}