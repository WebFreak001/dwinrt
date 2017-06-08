module Windows.UI.Xaml.Hosting;

import dwinrt;

@uuid("08c92b38-ec99-4c55-bc85-a1c180b27646")
@WinrtFactory("Windows.UI.Xaml.Hosting.ElementCompositionPreview")
interface IElementCompositionPreviewStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetElementVisual(Windows.UI.Xaml.UIElement element, Windows.UI.Composition.Visual* return_result);
	HRESULT abi_GetElementChildVisual(Windows.UI.Xaml.UIElement element, Windows.UI.Composition.Visual* return_result);
	HRESULT abi_SetElementChildVisual(Windows.UI.Xaml.UIElement element, Windows.UI.Composition.Visual visual);
	HRESULT abi_GetScrollViewerManipulationPropertySet(Windows.UI.Xaml.Controls.ScrollViewer scrollViewer, Windows.UI.Composition.CompositionPropertySet* return_result);
}

@uuid("24148fbb-23d6-4f37-ba0c-0733e799722d")
@WinrtFactory("Windows.UI.Xaml.Hosting.ElementCompositionPreview")
interface IElementCompositionPreviewStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetImplicitShowAnimation(Windows.UI.Xaml.UIElement element, Windows.UI.Composition.ICompositionAnimationBase animation);
	HRESULT abi_SetImplicitHideAnimation(Windows.UI.Xaml.UIElement element, Windows.UI.Composition.ICompositionAnimationBase animation);
	HRESULT abi_SetIsTranslationEnabled(Windows.UI.Xaml.UIElement element, bool value);
	HRESULT abi_GetPointerPositionPropertySet(Windows.UI.Xaml.UIElement targetElement, Windows.UI.Composition.CompositionPropertySet* return_result);
}

@uuid("a714944a-1619-4fc6-b31b-89512ef022a2")
@WinrtFactory("Windows.UI.Xaml.Hosting.XamlUIPresenter")
interface IXamlUIPresenter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RootElement(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_RootElement(Windows.UI.Xaml.UIElement value);
	HRESULT get_ThemeKey(HSTRING* return_value);
	HRESULT set_ThemeKey(HSTRING value);
	HRESULT get_ThemeResourcesXaml(HSTRING* return_value);
	HRESULT set_ThemeResourcesXaml(HSTRING value);
	HRESULT abi_SetSize(INT32 width, INT32 height);
	HRESULT abi_Render();
	HRESULT abi_Present();
}

@uuid("aafb84cd-9f6d-4f80-ac2c-0e6cb9f31659")
interface IXamlUIPresenterHost : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ResolveFileResource(HSTRING path, HSTRING* return_returnValue);
}

@uuid("61595672-7ca4-4a21-b56a-88f4812388ca")
interface IXamlUIPresenterHost2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetGenericXamlFilePath(HSTRING* return_returnValue);
}

@uuid("b14292bf-7320-41bb-9f26-4d6fd34db45a")
interface IXamlUIPresenterHost3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ResolveDictionaryResource(Windows.UI.Xaml.ResourceDictionary dictionary, IInspectable dictionaryKey, IInspectable suggestedValue, IInspectable* return_returnValue);
}

@uuid("71eaeac8-45e1-4192-85aa-3a422edd23cf")
@WinrtFactory("Windows.UI.Xaml.Hosting.XamlUIPresenter")
interface IXamlUIPresenterStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CompleteTimelinesAutomatically(bool* return_value);
	HRESULT set_CompleteTimelinesAutomatically(bool value);
	HRESULT abi_SetHost(Windows.UI.Xaml.Hosting.IXamlUIPresenterHost host);
	HRESULT abi_NotifyWindowSizeChanged();
}

@uuid("5c6b68d2-cf1c-4f53-bf09-6a745f7a9703")
@WinrtFactory("Windows.UI.Xaml.Hosting.XamlUIPresenter")
interface IXamlUIPresenterStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetFlyoutPlacementTargetInfo(Windows.UI.Xaml.FrameworkElement placementTarget, Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode preferredPlacement, Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode* out_targetPreferredPlacement, bool* out_allowFallbacks, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_GetFlyoutPlacement(Windows.Foundation.Rect placementTargetBounds, Windows.Foundation.Size controlSize, Windows.Foundation.Size minControlSize, Windows.Foundation.Rect containerRect, Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode targetPreferredPlacement, bool allowFallbacks, Windows.UI.Xaml.Controls.Primitives.FlyoutPlacementMode* out_chosenPlacement, Windows.Foundation.Rect* return_returnValue);
}

interface ElementCompositionPreview
{
}

interface XamlUIPresenter
{
}