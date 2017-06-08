module Windows.UI.Xaml.Navigation;

import dwinrt;

@uuid("aebaf785-43fc-4e2c-95c3-97ae84eabc8e")
interface LoadCompletedEventHandler
{
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Navigation.NavigationEventArgs e);
}

@uuid("7bd1cf54-23cf-4cce-b2f5-4ce78d96896e")
interface NavigatedEventHandler
{
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Navigation.NavigationEventArgs e);
}

@uuid("75d6a78f-a302-4489-9898-24ea49182910")
interface NavigatingCancelEventHandler
{
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Navigation.NavigatingCancelEventArgs e);
}

@uuid("4dab4671-12b2-43c7-b892-9be2dcd3e88d")
interface NavigationFailedEventHandler
{
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Navigation.NavigationFailedEventArgs e);
}

@uuid("f0117ddb-12fa-4d8d-8b26-b383d09c2b3c")
interface NavigationStoppedEventHandler
{
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Navigation.NavigationEventArgs e);
}

@uuid("fd1d67ae-eafb-4079-be80-6dc92a03aedf")
@WinrtFactory("Windows.UI.Xaml.Navigation.NavigatingCancelEventArgs")
interface INavigatingCancelEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
	HRESULT get_NavigationMode(Windows.UI.Xaml.Navigation.NavigationMode* return_value);
	HRESULT get_SourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
}

@uuid("5407b704-8147-4343-838f-dd1ee908c137")
@WinrtFactory("Windows.UI.Xaml.Navigation.NavigatingCancelEventArgs")
interface INavigatingCancelEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Parameter(IInspectable* return_value);
	HRESULT get_NavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo* return_value);
}

@uuid("b6aa9834-6691-44d1-bdf7-58820c27b0d0")
@WinrtFactory("Windows.UI.Xaml.Navigation.NavigationEventArgs")
interface INavigationEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Content(IInspectable* return_value);
	HRESULT get_Parameter(IInspectable* return_value);
	HRESULT get_SourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT get_NavigationMode(Windows.UI.Xaml.Navigation.NavigationMode* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
}

@uuid("dbff71d9-979a-4b2e-a49b-3bb17fdef574")
@WinrtFactory("Windows.UI.Xaml.Navigation.NavigationEventArgs")
interface INavigationEventArgs2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo* return_value);
}

@uuid("11c1dff7-36c2-4102-b2ef-0217a97289b3")
@WinrtFactory("Windows.UI.Xaml.Navigation.NavigationFailedEventArgs")
interface INavigationFailedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Exception(HRESULT* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_SourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
}

@uuid("ef8814a6-9388-4aca-8572-405194069080")
@WinrtFactory("Windows.UI.Xaml.Navigation.PageStackEntry")
interface IPageStackEntry : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SourcePageType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT get_Parameter(IInspectable* return_value);
	HRESULT get_NavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo* return_value);
}

@uuid("4454048a-a8b9-4f78-9b84-1f51f58851ff")
@WinrtFactory("Windows.UI.Xaml.Navigation.PageStackEntry")
interface IPageStackEntryFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Xaml.Interop.TypeName sourcePageType, IInspectable parameter, Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo navigationTransitionInfo, Windows.UI.Xaml.Navigation.PageStackEntry* return_instance);
}

@uuid("aceff8e3-246c-4033-9f01-01cb0da5254e")
@WinrtFactory("Windows.UI.Xaml.Navigation.PageStackEntry")
interface IPageStackEntryStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SourcePageTypeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

interface NavigatingCancelEventArgs
{
}

interface NavigationEventArgs
{
}

interface NavigationFailedEventArgs
{
}

interface PageStackEntry : Windows.UI.Xaml.DependencyObject
{
}

enum NavigationCacheMode
{
	Disabled = 0,
	Required = 1,
	Enabled = 2
}

enum NavigationMode
{
	New = 0,
	Back = 1,
	Forward = 2,
	Refresh = 3
}