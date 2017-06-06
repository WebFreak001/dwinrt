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
	HRESULT Run();
	HRESULT Exit();
}

@uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f")
interface IApplicationOverrides
{
	HRESULT OnInitialize();
	HRESULT OnActivated(IActivatedEventArgs args);
	HRESULT OnLaunched(ILaunchActivatedEventArgs args);
	HRESULT OnFileActivated(IFileActivatedEventArgs args);
	HRESULT OnSearchActivated(ISearchActivatedEventArgs args);
	HRESULT OnSharingTargetActivated(IShareTargetActivatedEventArgs args);
	HRESULT OnFilePickerActivated(IFilePickerActivatedEventArgs args);
}

@winrtFactory!IApplication @uuid("93bbe361-be5a-4ee3-b4a3-95118dc97a89")
interface IApplicationFactory : IInspectable
{
extern (Windows):
	HRESULT CreateInstance(IInspectable outer, IInspectable* inner, IApplication* result);
}
