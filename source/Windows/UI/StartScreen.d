module Windows.UI.StartScreen;

import dwinrt;

@uuid("b0234c3e-cd6f-4cb6-a611-61fd505f3ed1")
@WinrtFactory("Windows.UI.StartScreen.JumpList")
interface IJumpList : IInspectable
{
extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(Windows.UI.StartScreen.JumpListItem)* return_value);
	HRESULT get_SystemGroupKind(Windows.UI.StartScreen.JumpListSystemGroupKind* return_value);
	HRESULT set_SystemGroupKind(Windows.UI.StartScreen.JumpListSystemGroupKind value);
	HRESULT abi_SaveAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("7adb6717-8b5d-4820-995b-9b418dbe48b0")
@WinrtFactory("Windows.UI.StartScreen.JumpListItem")
interface IJumpListItem : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.UI.StartScreen.JumpListItemKind* return_value);
	HRESULT get_Arguments(HSTRING* return_value);
	HRESULT get_RemovedByUser(bool* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_GroupName(HSTRING* return_value);
	HRESULT set_GroupName(HSTRING value);
	HRESULT get_Logo(Windows.Foundation.Uri* return_value);
	HRESULT set_Logo(Windows.Foundation.Uri value);
}

@uuid("f1bfc4e8-c7aa-49cb-8dde-ecfccd7ad7e4")
@WinrtFactory("Windows.UI.StartScreen.JumpListItem")
interface IJumpListItemStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithArguments(HSTRING arguments, HSTRING displayName, Windows.UI.StartScreen.JumpListItem* return_result);
	HRESULT abi_CreateSeparator(Windows.UI.StartScreen.JumpListItem* return_result);
}

@uuid("a7e0c681-e67e-4b74-8250-3f322c4d92c3")
@WinrtFactory("Windows.UI.StartScreen.JumpList")
interface IJumpListStatics : IInspectable
{
extern(Windows):
	HRESULT abi_LoadCurrentAsync(Windows.Foundation.IAsyncOperation!(Windows.UI.StartScreen.JumpList)* return_result);
	HRESULT abi_IsSupported(bool* return_result);
}

@uuid("9e9e51e0-2bb5-4bc0-bb8d-42b23abcc88d")
@WinrtFactory("Windows.UI.StartScreen.SecondaryTile")
interface ISecondaryTile : IInspectable
{
extern(Windows):
	HRESULT set_TileId(HSTRING value);
	HRESULT get_TileId(HSTRING* return_value);
	HRESULT set_Arguments(HSTRING value);
	HRESULT get_Arguments(HSTRING* return_value);
	deprecated("ShortName may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayName.")
	HRESULT set_ShortName(HSTRING value);
	deprecated("ShortName may be altered or unavailable for releases after Windows 8.1. Instead, use DisplayName.")
	HRESULT get_ShortName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_DisplayName(HSTRING* return_value);
	deprecated("Logo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Square150x150Logo.")
	HRESULT set_Logo(Windows.Foundation.Uri value);
	deprecated("Logo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Square150x150Logo.")
	HRESULT get_Logo(Windows.Foundation.Uri* return_value);
	deprecated("SmallLogo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Square30x30Logo.")
	HRESULT set_SmallLogo(Windows.Foundation.Uri value);
	deprecated("SmallLogo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Square30x30Logo.")
	HRESULT get_SmallLogo(Windows.Foundation.Uri* return_value);
	deprecated("WideLogo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Wide310x150Logo.")
	HRESULT set_WideLogo(Windows.Foundation.Uri value);
	deprecated("WideLogo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Wide310x150Logo.")
	HRESULT get_WideLogo(Windows.Foundation.Uri* return_value);
	HRESULT set_LockScreenBadgeLogo(Windows.Foundation.Uri value);
	HRESULT get_LockScreenBadgeLogo(Windows.Foundation.Uri* return_value);
	HRESULT set_LockScreenDisplayBadgeAndTileText(bool value);
	HRESULT get_LockScreenDisplayBadgeAndTileText(bool* return_value);
	deprecated("TileOptions may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.ShowNameOnSquare150x150Logo, VisualElements.ShowNameOnWide310x150Logo, and RoamingEnabled.")
	HRESULT set_TileOptions(Windows.UI.StartScreen.TileOptions value);
	deprecated("TileOptions may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.ShowNameOnSquare150x150Logo, VisualElements.ShowNameOnWide310x150Logo, and RoamingEnabled.")
	HRESULT get_TileOptions(Windows.UI.StartScreen.TileOptions* return_value);
	deprecated("TileOptions may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.ShowNameOnSquare150x150Logo, VisualElements.ShowNameOnWide310x150Logo, and RoamingEnabled.")
	HRESULT set_ForegroundText(Windows.UI.StartScreen.ForegroundText value);
	deprecated("ForegroundText may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.ForegroundText.")
	HRESULT get_ForegroundText(Windows.UI.StartScreen.ForegroundText* return_value);
	deprecated("BackgroundColor may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.BackgroundColor.")
	HRESULT set_BackgroundColor(Windows.UI.Color value);
	deprecated("BackgroundColor may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.BackgroundColor.")
	HRESULT get_BackgroundColor(Windows.UI.Color* return_value);
	HRESULT abi_RequestCreateAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestCreateAsyncWithPoint(Windows.Foundation.Point invocationPoint, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestCreateAsyncWithRect(Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestCreateAsyncWithRectAndPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestDeleteAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestDeleteAsyncWithPoint(Windows.Foundation.Point invocationPoint, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestDeleteAsyncWithRect(Windows.Foundation.Rect selection, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestDeleteAsyncWithRectAndPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_UpdateAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("b2f6cc35-3250-4990-923c-294ab4b694dd")
@WinrtFactory("Windows.UI.StartScreen.SecondaryTile")
interface ISecondaryTile2 : IInspectable
{
extern(Windows):
	HRESULT set_PhoneticName(HSTRING value);
	HRESULT get_PhoneticName(HSTRING* return_value);
	HRESULT get_VisualElements(Windows.UI.StartScreen.SecondaryTileVisualElements* return_value);
	HRESULT set_RoamingEnabled(bool value);
	HRESULT get_RoamingEnabled(bool* return_value);
	HRESULT add_VisualElementsRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.StartScreen.SecondaryTile, Windows.UI.StartScreen.VisualElementsRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_VisualElementsRequested(EventRegistrationToken token);
}

@uuid("57f52ca0-51bc-4abf-8ebf-627a0398b05a")
@WinrtFactory("Windows.UI.StartScreen.SecondaryTile")
interface ISecondaryTileFactory : IInspectable
{
extern(Windows):
	deprecated("SecondaryTile(string, string, string, string, Windows.UI.StartScreen.TileOptions, Windows.Foundation.Uri) may be altered or unavailable for releases after Windows Phone 8.1. Instead, use SecondaryTile(string, string, string, Windows.Foundation.Uri, Windows.UI.StartScreen.TileSize).")
	HRESULT abi_CreateTile(HSTRING tileId, HSTRING shortName, HSTRING displayName, HSTRING arguments, Windows.UI.StartScreen.TileOptions tileOptions, Windows.Foundation.Uri logoReference, Windows.UI.StartScreen.SecondaryTile* return_value);
	deprecated("SecondaryTile(string, string, string, string, Windows.UI.StartScreen.TileOptions, Windows.Foundation.Uri, Windows.Foundation.Uri) may be altered or unavailable for releases after Windows Phone 8.1. Instead, use SecondaryTile(string, string, string, Windows.Foundation.Uri, Windows.UI.StartScreen.TileSize).")
	HRESULT abi_CreateWideTile(HSTRING tileId, HSTRING shortName, HSTRING displayName, HSTRING arguments, Windows.UI.StartScreen.TileOptions tileOptions, Windows.Foundation.Uri logoReference, Windows.Foundation.Uri wideLogoReference, Windows.UI.StartScreen.SecondaryTile* return_value);
	HRESULT abi_CreateWithId(HSTRING tileId, Windows.UI.StartScreen.SecondaryTile* return_value);
}

@uuid("274b8a3b-522d-448e-9eb2-d0672ab345c8")
@WinrtFactory("Windows.UI.StartScreen.SecondaryTile")
interface ISecondaryTileFactory2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMinimalTile(HSTRING tileId, HSTRING displayName, HSTRING arguments, Windows.Foundation.Uri square150x150Logo, Windows.UI.StartScreen.TileSize desiredSize, Windows.UI.StartScreen.SecondaryTile* return_value);
}

@uuid("99908dae-d051-4676-87fe-9ec242d83c74")
@WinrtFactory("Windows.UI.StartScreen.SecondaryTile")
interface ISecondaryTileStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Exists(HSTRING tileId, bool* return_exists);
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.StartScreen.SecondaryTile))* return_operation);
	HRESULT abi_FindAllForApplicationAsync(HSTRING applicationId, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.StartScreen.SecondaryTile))* return_operation);
	HRESULT abi_FindAllForPackageAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.StartScreen.SecondaryTile))* return_operation);
}

@uuid("1d8df333-815e-413f-9f50-a81da70a96b2")
@WinrtFactory("Windows.UI.StartScreen.SecondaryTileVisualElements")
interface ISecondaryTileVisualElements : IInspectable
{
extern(Windows):
	deprecated("SecondaryTileVisualElements.Square30x30Logo may be altered or unavailable for release after Windows 10.")
	HRESULT set_Square30x30Logo(Windows.Foundation.Uri value);
	deprecated("SecondaryTileVisualElements.Square30x30Logo may be altered or unavailable for release after Windows 10.")
	HRESULT get_Square30x30Logo(Windows.Foundation.Uri* return_value);
	deprecated("SecondaryTileVisualElements.Square70x70Logo may be altered or unavailable for release after Windows Phone 8.1.")
	HRESULT set_Square70x70Logo(Windows.Foundation.Uri value);
	deprecated("SecondaryTileVisualElements.Square70x70Logo may be altered or unavailable for release after Windows Phone 8.1.")
	HRESULT get_Square70x70Logo(Windows.Foundation.Uri* return_value);
	HRESULT set_Square150x150Logo(Windows.Foundation.Uri value);
	HRESULT get_Square150x150Logo(Windows.Foundation.Uri* return_value);
	HRESULT set_Wide310x150Logo(Windows.Foundation.Uri value);
	HRESULT get_Wide310x150Logo(Windows.Foundation.Uri* return_value);
	HRESULT set_Square310x310Logo(Windows.Foundation.Uri value);
	HRESULT get_Square310x310Logo(Windows.Foundation.Uri* return_value);
	HRESULT set_ForegroundText(Windows.UI.StartScreen.ForegroundText value);
	HRESULT get_ForegroundText(Windows.UI.StartScreen.ForegroundText* return_value);
	HRESULT set_BackgroundColor(Windows.UI.Color value);
	HRESULT get_BackgroundColor(Windows.UI.Color* return_value);
	HRESULT set_ShowNameOnSquare150x150Logo(bool value);
	HRESULT get_ShowNameOnSquare150x150Logo(bool* return_value);
	HRESULT set_ShowNameOnWide310x150Logo(bool value);
	HRESULT get_ShowNameOnWide310x150Logo(bool* return_value);
	HRESULT set_ShowNameOnSquare310x310Logo(bool value);
	HRESULT get_ShowNameOnSquare310x310Logo(bool* return_value);
}

@uuid("fd2e31d0-57dc-4794-8ecf-5682f5f3e6ef")
@WinrtFactory("Windows.UI.StartScreen.SecondaryTileVisualElements")
interface ISecondaryTileVisualElements2 : IInspectable
{
extern(Windows):
	HRESULT set_Square71x71Logo(Windows.Foundation.Uri value);
	HRESULT get_Square71x71Logo(Windows.Foundation.Uri* return_value);
}

@uuid("56b55ad6-d15c-40f4-81e7-57ffd8f8a4e9")
@WinrtFactory("Windows.UI.StartScreen.SecondaryTileVisualElements")
interface ISecondaryTileVisualElements3 : IInspectable
{
extern(Windows):
	HRESULT set_Square44x44Logo(Windows.Foundation.Uri value);
	HRESULT get_Square44x44Logo(Windows.Foundation.Uri* return_value);
}

@uuid("4a1dcbcb-26e9-4eb4-8933-859eb6ecdb29")
@WinrtFactory("Windows.UI.StartScreen.StartScreenManager")
interface IStartScreenManager : IInspectable
{
extern(Windows):
	HRESULT get_User(Windows.System.User* return_value);
	HRESULT abi_SupportsAppListEntry(Windows.ApplicationModel.Core.AppListEntry appListEntry, bool* return_result);
	HRESULT abi_ContainsAppListEntryAsync(Windows.ApplicationModel.Core.AppListEntry appListEntry, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestAddAppListEntryAsync(Windows.ApplicationModel.Core.AppListEntry appListEntry, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("7865ef0f-b585-464e-8993-34e8f8738d48")
@WinrtFactory("Windows.UI.StartScreen.StartScreenManager")
interface IStartScreenManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.UI.StartScreen.StartScreenManager* return_value);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.UI.StartScreen.StartScreenManager* return_result);
}

@uuid("c138333a-9308-4072-88cc-d068db347c68")
@WinrtFactory("Windows.UI.StartScreen.VisualElementsRequest")
interface IVisualElementsRequest : IInspectable
{
extern(Windows):
	HRESULT get_VisualElements(Windows.UI.StartScreen.SecondaryTileVisualElements* return_value);
	HRESULT get_AlternateVisualElements(Windows.Foundation.Collections.IVectorView!(Windows.UI.StartScreen.SecondaryTileVisualElements)* return_value);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
	HRESULT abi_GetDeferral(Windows.UI.StartScreen.VisualElementsRequestDeferral* return_deferral);
}

@uuid("a1656eb0-0126-4357-8204-bd82bb2a046d")
@WinrtFactory("Windows.UI.StartScreen.VisualElementsRequestDeferral")
interface IVisualElementsRequestDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("7b6fc982-3a0d-4ece-af96-cd17e1b00b2d")
@WinrtFactory("Windows.UI.StartScreen.VisualElementsRequestedEventArgs")
interface IVisualElementsRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.UI.StartScreen.VisualElementsRequest* return_value);
}

interface JumpList : Windows.UI.StartScreen.IJumpList
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.UI.StartScreen.JumpListItem) Items()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.StartScreen.JumpListItem) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpList).get_Items(&_ret));
		return _ret;
	}
	final Windows.UI.StartScreen.JumpListSystemGroupKind SystemGroupKind()
	{
		Windows.UI.StartScreen.JumpListSystemGroupKind _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpList).get_SystemGroupKind(&_ret));
		return _ret;
	}
	final void SystemGroupKind(Windows.UI.StartScreen.JumpListSystemGroupKind value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpList).set_SystemGroupKind(value));
	}
	final Windows.Foundation.IAsyncAction SaveAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpList).abi_SaveAsync(&_ret));
		return _ret;
	}
}

interface JumpListItem : Windows.UI.StartScreen.IJumpListItem
{
extern(Windows):
	final Windows.UI.StartScreen.JumpListItemKind Kind()
	{
		Windows.UI.StartScreen.JumpListItemKind _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).get_Kind(&_ret));
		return _ret;
	}
	final HSTRING Arguments()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).get_Arguments(&_ret));
		return _ret;
	}
	final bool RemovedByUser()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).get_RemovedByUser(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).set_Description(value));
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).set_DisplayName(value));
	}
	final HSTRING GroupName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).get_GroupName(&_ret));
		return _ret;
	}
	final void GroupName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).set_GroupName(value));
	}
	final Windows.Foundation.Uri Logo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).get_Logo(&_ret));
		return _ret;
	}
	final void Logo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.IJumpListItem).set_Logo(value));
	}
}

interface SecondaryTile : Windows.UI.StartScreen.ISecondaryTile, Windows.UI.StartScreen.ISecondaryTile2
{
extern(Windows):
	final void TileId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_TileId(value));
	}
	final HSTRING TileId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_TileId(&_ret));
		return _ret;
	}
	final void Arguments(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_Arguments(value));
	}
	final HSTRING Arguments()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_Arguments(&_ret));
		return _ret;
	}
	deprecated("ShortName may be altered or unavailable for releases after Windows Phone 8.1. Instead, use DisplayName.")
	final void ShortName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_ShortName(value));
	}
	deprecated("ShortName may be altered or unavailable for releases after Windows 8.1. Instead, use DisplayName.")
	final HSTRING ShortName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_ShortName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_DisplayName(value));
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_DisplayName(&_ret));
		return _ret;
	}
	deprecated("Logo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Square150x150Logo.")
	final void Logo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_Logo(value));
	}
	deprecated("Logo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Square150x150Logo.")
	final Windows.Foundation.Uri Logo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_Logo(&_ret));
		return _ret;
	}
	deprecated("SmallLogo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Square30x30Logo.")
	final void SmallLogo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_SmallLogo(value));
	}
	deprecated("SmallLogo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Square30x30Logo.")
	final Windows.Foundation.Uri SmallLogo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_SmallLogo(&_ret));
		return _ret;
	}
	deprecated("WideLogo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Wide310x150Logo.")
	final void WideLogo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_WideLogo(value));
	}
	deprecated("WideLogo may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.Wide310x150Logo.")
	final Windows.Foundation.Uri WideLogo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_WideLogo(&_ret));
		return _ret;
	}
	final void LockScreenBadgeLogo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_LockScreenBadgeLogo(value));
	}
	final Windows.Foundation.Uri LockScreenBadgeLogo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_LockScreenBadgeLogo(&_ret));
		return _ret;
	}
	final void LockScreenDisplayBadgeAndTileText(bool value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_LockScreenDisplayBadgeAndTileText(value));
	}
	final bool LockScreenDisplayBadgeAndTileText()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_LockScreenDisplayBadgeAndTileText(&_ret));
		return _ret;
	}
	deprecated("TileOptions may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.ShowNameOnSquare150x150Logo, VisualElements.ShowNameOnWide310x150Logo, and RoamingEnabled.")
	final void TileOptions(Windows.UI.StartScreen.TileOptions value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_TileOptions(value));
	}
	deprecated("TileOptions may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.ShowNameOnSquare150x150Logo, VisualElements.ShowNameOnWide310x150Logo, and RoamingEnabled.")
	final Windows.UI.StartScreen.TileOptions TileOptions()
	{
		Windows.UI.StartScreen.TileOptions _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_TileOptions(&_ret));
		return _ret;
	}
	deprecated("TileOptions may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.ShowNameOnSquare150x150Logo, VisualElements.ShowNameOnWide310x150Logo, and RoamingEnabled.")
	final void ForegroundText(Windows.UI.StartScreen.ForegroundText value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_ForegroundText(value));
	}
	deprecated("ForegroundText may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.ForegroundText.")
	final Windows.UI.StartScreen.ForegroundText ForegroundText()
	{
		Windows.UI.StartScreen.ForegroundText _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_ForegroundText(&_ret));
		return _ret;
	}
	deprecated("BackgroundColor may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.BackgroundColor.")
	final void BackgroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).set_BackgroundColor(value));
	}
	deprecated("BackgroundColor may be altered or unavailable for releases after Windows 8.1. Instead, use VisualElements.BackgroundColor.")
	final Windows.UI.Color BackgroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).get_BackgroundColor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestCreateAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).abi_RequestCreateAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestCreateAsyncWithPoint(Windows.Foundation.Point invocationPoint)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).abi_RequestCreateAsyncWithPoint(invocationPoint, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestCreateAsyncWithRect(Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).abi_RequestCreateAsyncWithRect(selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestCreateAsyncWithRectAndPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).abi_RequestCreateAsyncWithRectAndPlacement(selection, preferredPlacement, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestDeleteAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).abi_RequestDeleteAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestDeleteAsyncWithPoint(Windows.Foundation.Point invocationPoint)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).abi_RequestDeleteAsyncWithPoint(invocationPoint, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestDeleteAsyncWithRect(Windows.Foundation.Rect selection)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).abi_RequestDeleteAsyncWithRect(selection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestDeleteAsyncWithRectAndPlacement(Windows.Foundation.Rect selection, Windows.UI.Popups.Placement preferredPlacement)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).abi_RequestDeleteAsyncWithRectAndPlacement(selection, preferredPlacement, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) UpdateAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile).abi_UpdateAsync(&_ret));
		return _ret;
	}
	final void PhoneticName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile2).set_PhoneticName(value));
	}
	final HSTRING PhoneticName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile2).get_PhoneticName(&_ret));
		return _ret;
	}
	final Windows.UI.StartScreen.SecondaryTileVisualElements VisualElements()
	{
		Windows.UI.StartScreen.SecondaryTileVisualElements _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile2).get_VisualElements(&_ret));
		return _ret;
	}
	final void RoamingEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile2).set_RoamingEnabled(value));
	}
	final bool RoamingEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTile2).get_RoamingEnabled(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnVisualElementsRequested(void delegate(Windows.UI.StartScreen.SecondaryTile, Windows.UI.StartScreen.VisualElementsRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_VisualElementsRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.StartScreen.SecondaryTile, Windows.UI.StartScreen.VisualElementsRequestedEventArgs), Windows.UI.StartScreen.SecondaryTile, Windows.UI.StartScreen.VisualElementsRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeVisualElementsRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_VisualElementsRequested(token));
	}
}

interface SecondaryTileVisualElements : Windows.UI.StartScreen.ISecondaryTileVisualElements, Windows.UI.StartScreen.ISecondaryTileVisualElements2, Windows.UI.StartScreen.ISecondaryTileVisualElements3
{
extern(Windows):
	deprecated("SecondaryTileVisualElements.Square30x30Logo may be altered or unavailable for release after Windows 10.")
	final void Square30x30Logo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).set_Square30x30Logo(value));
	}
	deprecated("SecondaryTileVisualElements.Square30x30Logo may be altered or unavailable for release after Windows 10.")
	final Windows.Foundation.Uri Square30x30Logo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).get_Square30x30Logo(&_ret));
		return _ret;
	}
	deprecated("SecondaryTileVisualElements.Square70x70Logo may be altered or unavailable for release after Windows Phone 8.1.")
	final void Square70x70Logo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).set_Square70x70Logo(value));
	}
	deprecated("SecondaryTileVisualElements.Square70x70Logo may be altered or unavailable for release after Windows Phone 8.1.")
	final Windows.Foundation.Uri Square70x70Logo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).get_Square70x70Logo(&_ret));
		return _ret;
	}
	final void Square150x150Logo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).set_Square150x150Logo(value));
	}
	final Windows.Foundation.Uri Square150x150Logo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).get_Square150x150Logo(&_ret));
		return _ret;
	}
	final void Wide310x150Logo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).set_Wide310x150Logo(value));
	}
	final Windows.Foundation.Uri Wide310x150Logo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).get_Wide310x150Logo(&_ret));
		return _ret;
	}
	final void Square310x310Logo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).set_Square310x310Logo(value));
	}
	final Windows.Foundation.Uri Square310x310Logo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).get_Square310x310Logo(&_ret));
		return _ret;
	}
	final void ForegroundText(Windows.UI.StartScreen.ForegroundText value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).set_ForegroundText(value));
	}
	final Windows.UI.StartScreen.ForegroundText ForegroundText()
	{
		Windows.UI.StartScreen.ForegroundText _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).get_ForegroundText(&_ret));
		return _ret;
	}
	final void BackgroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).set_BackgroundColor(value));
	}
	final Windows.UI.Color BackgroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).get_BackgroundColor(&_ret));
		return _ret;
	}
	final void ShowNameOnSquare150x150Logo(bool value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).set_ShowNameOnSquare150x150Logo(value));
	}
	final bool ShowNameOnSquare150x150Logo()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).get_ShowNameOnSquare150x150Logo(&_ret));
		return _ret;
	}
	final void ShowNameOnWide310x150Logo(bool value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).set_ShowNameOnWide310x150Logo(value));
	}
	final bool ShowNameOnWide310x150Logo()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).get_ShowNameOnWide310x150Logo(&_ret));
		return _ret;
	}
	final void ShowNameOnSquare310x310Logo(bool value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).set_ShowNameOnSquare310x310Logo(value));
	}
	final bool ShowNameOnSquare310x310Logo()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements).get_ShowNameOnSquare310x310Logo(&_ret));
		return _ret;
	}
	final void Square71x71Logo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements2).set_Square71x71Logo(value));
	}
	final Windows.Foundation.Uri Square71x71Logo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements2).get_Square71x71Logo(&_ret));
		return _ret;
	}
	final void Square44x44Logo(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements3).set_Square44x44Logo(value));
	}
	final Windows.Foundation.Uri Square44x44Logo()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.ISecondaryTileVisualElements3).get_Square44x44Logo(&_ret));
		return _ret;
	}
}

interface StartScreenManager : Windows.UI.StartScreen.IStartScreenManager
{
extern(Windows):
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IStartScreenManager).get_User(&_ret));
		return _ret;
	}
	final bool SupportsAppListEntry(Windows.ApplicationModel.Core.AppListEntry appListEntry)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IStartScreenManager).abi_SupportsAppListEntry(appListEntry, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) ContainsAppListEntryAsync(Windows.ApplicationModel.Core.AppListEntry appListEntry)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IStartScreenManager).abi_ContainsAppListEntryAsync(appListEntry, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestAddAppListEntryAsync(Windows.ApplicationModel.Core.AppListEntry appListEntry)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IStartScreenManager).abi_RequestAddAppListEntryAsync(appListEntry, &_ret));
		return _ret;
	}
}

interface VisualElementsRequest : Windows.UI.StartScreen.IVisualElementsRequest
{
extern(Windows):
	final Windows.UI.StartScreen.SecondaryTileVisualElements VisualElements()
	{
		Windows.UI.StartScreen.SecondaryTileVisualElements _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IVisualElementsRequest).get_VisualElements(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.StartScreen.SecondaryTileVisualElements) AlternateVisualElements()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.StartScreen.SecondaryTileVisualElements) _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IVisualElementsRequest).get_AlternateVisualElements(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IVisualElementsRequest).get_Deadline(&_ret));
		return _ret;
	}
	final Windows.UI.StartScreen.VisualElementsRequestDeferral GetDeferral()
	{
		Windows.UI.StartScreen.VisualElementsRequestDeferral _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IVisualElementsRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface VisualElementsRequestDeferral : Windows.UI.StartScreen.IVisualElementsRequestDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.UI.StartScreen.IVisualElementsRequestDeferral).abi_Complete());
	}
}

interface VisualElementsRequestedEventArgs : Windows.UI.StartScreen.IVisualElementsRequestedEventArgs
{
extern(Windows):
	final Windows.UI.StartScreen.VisualElementsRequest Request()
	{
		Windows.UI.StartScreen.VisualElementsRequest _ret;
		Debug.OK(this.as!(Windows.UI.StartScreen.IVisualElementsRequestedEventArgs).get_Request(&_ret));
		return _ret;
	}
}

enum ForegroundText
{
	Dark = 0,
	Light = 1
}

enum JumpListItemKind
{
	Arguments = 0,
	Separator = 1
}

enum JumpListSystemGroupKind
{
	None = 0,
	Frequent = 1,
	Recent = 2
}

@bitflags
enum TileOptions
{
	None = 0x0,
	ShowNameOnLogo = 0x1,
	ShowNameOnWideLogo = 0x2,
	CopyOnDeployment = 0x4
}

enum TileSize
{
	Default = 0,
	Square30x30 = 1,
	Square70x70 = 2,
	Square150x150 = 3,
	Wide310x150 = 4,
	Square310x310 = 5,
	Square71x71 = 6,
	Square44x44 = 7
}