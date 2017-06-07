module Windows.UI.Xaml;

import dwinrt;

@uuid("23429465-e36a-40e2-b139-a4704602a6e1")
interface SuspendingEventHandler : IUnknown
{
}

@uuid("9274e6bd-49a1-4958-beee-d0e19587b6e3")
interface UnhandledExceptionEventHandler : IUnknown
{
}

@uuid("5c21c742-2ced-4fd9-ba38-7118d40e966b")
interface WindowSizeChangedEventHandler : IUnknown
{
}

@uuid("0db89161-20d7-45df-9122-ba89576703ba")
interface WindowClosedEventHandler : IUnknown
{
}

@uuid("18026348-8619-4c7b-b534-ced45d9de219")
interface WindowActivatedEventHandler : IUnknown
{
}

@uuid("c1ea4f24-d6de-4191-8e3a-f48601f7489c")
interface IResourceDictionary : IInspectable
{
}

@uuid("74b861a1-7487-46a9-9a6e-c78b512726c5")
interface IApplication : IInspectable
{
extern (Windows):
	HRESULT get_Resources(IResourceDictionary** value);
	HRESULT put_Resources(IResourceDictionary* value);
	//HRESULT get_DebugSettings(IDebugSettings** value);
	//HRESULT get_RequestedTheme(ApplicationTheme* value);
	//HRESULT put_RequestedTheme(ApplicationTheme value);
	HRESULT add_UnhandledException(UnhandledExceptionEventHandler* value,
			EventRegistrationToken* token);
	HRESULT remove_UnhandledException(EventRegistrationToken token);
	HRESULT add_Suspending(SuspendingEventHandler* value, EventRegistrationToken* token);
	HRESULT remove_Suspending(EventRegistrationToken token);
	HRESULT add_Resuming(EventHandler!(IInspectable)* value, EventRegistrationToken* token);
	HRESULT remove_Resuming(EventRegistrationToken token);
	HRESULT abi_Exit();
}

@winrtFactory!IApplication @uuid("93bbe361-be5a-4ee3-b4a3-95118dc97a89")
interface IApplicationFactory : IInspectable
{
extern (Windows):
	HRESULT CreateInstance(IInspectable outer, IInspectable* inner, IApplication* result);
}

@uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f")
interface IApplicationOverrides : IInspectable
{
extern (Windows):
	HRESULT OnInitialize();
	HRESULT OnActivated(IActivatedEventArgs args);
	HRESULT OnLaunched(ILaunchActivatedEventArgs args);
	HRESULT OnFileActivated(IFileActivatedEventArgs args);
	HRESULT OnSearchActivated(ISearchActivatedEventArgs args);
	HRESULT OnSharingTargetActivated(IShareTargetActivatedEventArgs args);
	HRESULT OnFilePickerActivated(IFilePickerActivatedEventArgs args);
}

@uuid("cf651713-cd08-4fd8-b697-a281b6544e2e")
interface IActivatedEventArgs : IInspectable
{
}

@uuid("fbc93e26-a14a-4b4f-82b0-33bed920af52")
interface ILaunchActivatedEventArgs : IInspectable
{
extern (Windows):
	HRESULT get_Arguments(HSTRING* arguments);
	HRESULT get_TileId(HSTRING* tileID);
}

@uuid("bb2afc33-93b1-42ed-8b26-236dd9c78496")
interface IFileActivatedEventArgs : IInspectable
{
}

@uuid("8cb36951-58c8-43e3-94bc-41d33f8b630e")
interface ISearchActivatedEventArgs : IInspectable
{
}

@uuid("4bdaf9c8-cdb2-4acb-bfc3-6648563378ec")
interface IShareTargetActivatedEventArgs : IInspectable
{
}

@uuid("16c9f7ac-ad28-4ad1-bfd6-a1fe93cfb067")
interface IFilePickerActivatedEventArgs : IInspectable
{
}

struct TRectF
{
	float left, top, right, bottom;
}

@uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5")
interface IWindow : IInspectable
{
extern (Windows):
	HRESULT get_Bounds(TRectF*);
	HRESULT get_Visible(bool*);
	HRESULT get_Content(IUIElement*);
	HRESULT put_Content(IUIElement value);
	HRESULT get_CoreWindow(Windows.UI.Core.ICoreWindow*);
	HRESULT get_Dispatcher(Windows.UI.Core.ICoreDispatcher*);
	HRESULT add_Activated(WindowActivatedEventHandler value, EventRegistrationToken*);
	HRESULT remove_Activated(EventRegistrationToken token);
	HRESULT add_Closed(WindowClosedEventHandler value, EventRegistrationToken*);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT add_SizeChanged(WindowSizeChangedEventHandler value, EventRegistrationToken*);
	HRESULT remove_SizeChanged(EventRegistrationToken token);
	HRESULT Activate();
	HRESULT Close();

	final IUIElement Content()
	{
		IUIElement ret;
		assert(get_Content(&ret) == S_OK);
		return ret;
	}

	final IUIElement Content(IUIElement val)
	{
		assert(put_Content(val) == S_OK);
		return val;
	}
}

@winrtFactory!IWindow @uuid("93328409-4ea1-4afa-83dc-0c4e73e88bb1")
interface IWindowStatics : IInspectable
{
extern (Windows):
	HRESULT get_Current(IWindow* window);

	final IWindow Current()
	{
		IWindow ret;
		assert(get_Current(&ret) == S_OK);
		return ret;
	}
}

@WinrtFactory("Windows.UI.Xaml.Markup.XamlReader") @uuid("9891c6bd-534f-4955-b85a-8a8dc0dca602")
interface IXamlReaderStatics : IInspectable
{
extern (Windows):
	HRESULT Load(HSTRING xaml, IInspectable*);
	HRESULT LoadWithInitialTemplateValidation(HSTRING xaml, IInspectable*);
}

@uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1")
interface IUIElement : IInspectable
{
}
