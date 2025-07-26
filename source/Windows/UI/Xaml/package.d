module Windows.UI.Xaml;

import dwinrt;

struct CornerRadius
{
	double TopLeft;
	double TopRight;
	double BottomRight;
	double BottomLeft;
}

struct Duration
{
	Windows.Foundation.TimeSpan TimeSpan;
	Windows.UI.Xaml.DurationType Type;
}

struct GridLength
{
	double Value;
	Windows.UI.Xaml.GridUnitType GridUnitType;
}

struct Thickness
{
	double Left;
	double Top;
	double Right;
	double Bottom;
}

@uuid("b6351c55-c284-46e4-8310-fb0967fab76f")
interface ApplicationInitializationCallback : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.UI.Xaml.ApplicationInitializationCallbackParams p);
}

@uuid("136b1782-54ba-420d-a1aa-82828721cde6")
interface BindingFailedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.BindingFailedEventArgs e);
}

@uuid("d6ecb12c-15b5-4ec8-b95c-cdd208f08153")
interface CreateDefaultValueCallback : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable* return_value);
}

@uuid("45883d16-27bf-4bc1-ac26-94c1601f3a49")
interface DependencyPropertyChangedCallback : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.UI.Xaml.DependencyObject sender, Windows.UI.Xaml.DependencyProperty dp);
}

@uuid("09223e5a-75be-4499-8180-1ddc005421c0")
interface DependencyPropertyChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.DependencyPropertyChangedEventArgs e);
}

@uuid("2ab1a205-1e73-4bcf-aabc-57b97e21961d")
interface DragEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.DragEventArgs e);
}

@uuid("93a956ae-1d7f-438b-b7b8-227d96b609c0")
interface EnteredBackgroundEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.ApplicationModel.EnteredBackgroundEventArgs e);
}

@uuid("68e0e810-f6ea-42bc-855b-5d9b67e6a262")
interface ExceptionRoutedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.ExceptionRoutedEventArgs e);
}

@uuid("aaad5dad-4fc6-4aa4-b7cf-877e36ada4f6")
interface LeavingBackgroundEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.ApplicationModel.LeavingBackgroundEventArgs e);
}

@uuid("5a9f8a25-d142-44a4-8231-fd676724f29b")
interface PropertyChangedCallback : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.UI.Xaml.DependencyObject d, Windows.UI.Xaml.DependencyPropertyChangedEventArgs e);
}

@uuid("a856e674-b0b6-4bc3-bba8-1ba06e40d4b5")
interface RoutedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.RoutedEventArgs e);
}

@uuid("1115b13c-25d2-480b-89dc-eb3dcbd6b7fa")
interface SizeChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.SizeChangedEventArgs e);
}

@uuid("23429465-e36a-40e2-b139-a4704602a6e1")
interface SuspendingEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.ApplicationModel.SuspendingEventArgs e);
}

@uuid("9274e6bd-49a1-4958-beee-d0e19587b6e3")
interface UnhandledExceptionEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.UnhandledExceptionEventArgs e);
}

@uuid("e6d5bbd5-e029-43a6-b36d-84a81042d774")
interface VisualStateChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.VisualStateChangedEventArgs e);
}

@uuid("18026348-8619-4c7b-b534-ced45d9de219")
interface WindowActivatedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Core.WindowActivatedEventArgs e);
}

@uuid("0db89161-20d7-45df-9122-ba89576703ba")
interface WindowClosedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Core.CoreWindowEventArgs e);
}

@uuid("5c21c742-2ced-4fd9-ba38-7118d40e966b")
interface WindowSizeChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Core.WindowSizeChangedEventArgs e);
}

@uuid("10406ad6-b090-4a4a-b2ad-d682df27130f")
interface WindowVisibilityChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Core.VisibilityChangedEventArgs e);
}

@uuid("a5f04119-0cd9-49f1-a23f-44e547ab9f1a")
@WinrtFactory("Windows.UI.Xaml.AdaptiveTrigger")
interface IAdaptiveTrigger : IInspectable
{
extern(Windows):
	HRESULT get_MinWindowWidth(double* return_value);
	HRESULT set_MinWindowWidth(double value);
	HRESULT get_MinWindowHeight(double* return_value);
	HRESULT set_MinWindowHeight(double value);
}

@uuid("c966d482-5aeb-4841-9247-c1a0bdd6f59f")
@WinrtFactory("Windows.UI.Xaml.AdaptiveTrigger")
interface IAdaptiveTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.AdaptiveTrigger* return_instance);
}

@uuid("b92e29ea-1615-4350-9c3b-92b2986bf444")
@WinrtFactory("Windows.UI.Xaml.AdaptiveTrigger")
interface IAdaptiveTriggerStatics : IInspectable
{
extern(Windows):
	HRESULT get_MinWindowWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinWindowHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("74b861a1-7487-46a9-9a6e-c78b512726c5")
@WinrtFactory("Windows.UI.Xaml.Application")
interface IApplication : IInspectable
{
extern(Windows):
	HRESULT get_Resources(Windows.UI.Xaml.ResourceDictionary* return_value);
	HRESULT set_Resources(Windows.UI.Xaml.ResourceDictionary value);
	HRESULT get_DebugSettings(Windows.UI.Xaml.DebugSettings* return_value);
	HRESULT get_RequestedTheme(Windows.UI.Xaml.ApplicationTheme* return_value);
	HRESULT set_RequestedTheme(Windows.UI.Xaml.ApplicationTheme value);
	HRESULT add_UnhandledException(Windows.UI.Xaml.UnhandledExceptionEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_UnhandledException(EventRegistrationToken token);
	HRESULT add_Suspending(Windows.UI.Xaml.SuspendingEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Suspending(EventRegistrationToken token);
	HRESULT add_Resuming(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Resuming(EventRegistrationToken token);
	HRESULT abi_Exit();
}

@uuid("019104be-522a-5904-f52f-de72010429e0")
@WinrtFactory("Windows.UI.Xaml.Application")
interface IApplication2 : IInspectable
{
extern(Windows):
	HRESULT get_FocusVisualKind(Windows.UI.Xaml.FocusVisualKind* return_value);
	HRESULT set_FocusVisualKind(Windows.UI.Xaml.FocusVisualKind value);
	HRESULT get_RequiresPointerMode(Windows.UI.Xaml.ApplicationRequiresPointerMode* return_value);
	HRESULT set_RequiresPointerMode(Windows.UI.Xaml.ApplicationRequiresPointerMode value);
	HRESULT add_LeavingBackground(Windows.UI.Xaml.LeavingBackgroundEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_LeavingBackground(EventRegistrationToken token);
	HRESULT add_EnteredBackground(Windows.UI.Xaml.EnteredBackgroundEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_EnteredBackground(EventRegistrationToken token);
}

@uuid("b775ad7c-18b8-45ca-a1b0-dc483e4b1028")
@WinrtFactory("Windows.UI.Xaml.Application")
interface IApplication3 : IInspectable
{
extern(Windows):
	HRESULT get_HighContrastAdjustment(Windows.UI.Xaml.ApplicationHighContrastAdjustment* return_value);
	HRESULT set_HighContrastAdjustment(Windows.UI.Xaml.ApplicationHighContrastAdjustment value);
}

@uuid("93bbe361-be5a-4ee3-b4a3-95118dc97a89")
@WinrtFactory("Windows.UI.Xaml.Application")
interface IApplicationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Application* return_instance);
}

@uuid("751b792e-5772-4488-8b87-f547faa64474")
@WinrtFactory("Windows.UI.Xaml.ApplicationInitializationCallbackParams")
interface IApplicationInitializationCallbackParams : IInspectable
{
}

@uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f")
@WinrtFactory("Windows.UI.Xaml.Application")
interface IApplicationOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnActivated(Windows.ApplicationModel.Activation.IActivatedEventArgs args);
	HRESULT abi_OnLaunched(Windows.ApplicationModel.Activation.LaunchActivatedEventArgs args);
	HRESULT abi_OnFileActivated(Windows.ApplicationModel.Activation.FileActivatedEventArgs args);
	HRESULT abi_OnSearchActivated(Windows.ApplicationModel.Activation.SearchActivatedEventArgs args);
	HRESULT abi_OnShareTargetActivated(Windows.ApplicationModel.Activation.ShareTargetActivatedEventArgs args);
	HRESULT abi_OnFileOpenPickerActivated(Windows.ApplicationModel.Activation.FileOpenPickerActivatedEventArgs args);
	HRESULT abi_OnFileSavePickerActivated(Windows.ApplicationModel.Activation.FileSavePickerActivatedEventArgs args);
	HRESULT abi_OnCachedFileUpdaterActivated(Windows.ApplicationModel.Activation.CachedFileUpdaterActivatedEventArgs args);
	HRESULT abi_OnWindowCreated(Windows.UI.Xaml.WindowCreatedEventArgs args);
}

@uuid("db5cd2b9-d3b4-558c-c64e-0434fd1bd889")
@WinrtFactory("Windows.UI.Xaml.Application")
interface IApplicationOverrides2 : IInspectable
{
extern(Windows):
	HRESULT abi_OnBackgroundActivated(Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs args);
}

@uuid("06499997-f7b4-45fe-b763-7577d1d3cb4a")
@WinrtFactory("Windows.UI.Xaml.Application")
interface IApplicationStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.UI.Xaml.Application* return_value);
	HRESULT abi_Start(Windows.UI.Xaml.ApplicationInitializationCallback callback);
	HRESULT abi_LoadComponent(IInspectable component, Windows.Foundation.Uri resourceLocator);
	HRESULT abi_LoadComponentWithResourceLocation(IInspectable component, Windows.Foundation.Uri resourceLocator, Windows.UI.Xaml.Controls.Primitives.ComponentResourceLocation componentResourceLocation);
}

@uuid("32c1d013-4dbd-446d-bbb8-0de35048a449")
@WinrtFactory("Windows.UI.Xaml.BindingFailedEventArgs")
interface IBindingFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Message(HSTRING* return_value);
}

@uuid("19bdd1b5-c7cb-46d9-a4dd-a1bbe83ef2fb")
@WinrtFactory("Windows.UI.Xaml.BringIntoViewOptions")
interface IBringIntoViewOptions : IInspectable
{
extern(Windows):
	HRESULT get_AnimationDesired(bool* return_value);
	HRESULT set_AnimationDesired(bool value);
	HRESULT get_TargetRect(Windows.Foundation.IReference!(Windows.Foundation.Rect)* return_value);
	HRESULT set_TargetRect(Windows.Foundation.IReference!(Windows.Foundation.Rect) value);
}

@uuid("fd7be182-1cdb-4288-b8c8-85ee79297bfc")
@WinrtFactory("Windows.UI.Xaml.CornerRadiusHelper")
interface ICornerRadiusHelper : IInspectable
{
}

@uuid("f4a1f659-d4d4-451f-a387-d6bf4b2451d4")
@WinrtFactory("Windows.UI.Xaml.CornerRadiusHelper")
interface ICornerRadiusHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromRadii(double topLeft, double topRight, double bottomRight, double bottomLeft, Windows.UI.Xaml.CornerRadius* return_returnValue);
	HRESULT abi_FromUniformRadius(double uniformRadius, Windows.UI.Xaml.CornerRadius* return_returnValue);
}

@uuid("7da68e21-0b8f-4f9f-a143-f8e7780136a2")
@WinrtFactory("Windows.UI.Xaml.DataContextChangedEventArgs")
interface IDataContextChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_NewValue(IInspectable* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("9910aec7-8ab5-4118-9bc6-09f45a35073d")
@WinrtFactory("Windows.UI.Xaml.DataTemplate")
interface IDataTemplate : IInspectable
{
extern(Windows):
	HRESULT abi_LoadContent(Windows.UI.Xaml.DependencyObject* return_returnValue);
}

@uuid("595e9547-cdff-4b92-b773-ab396878f353")
interface IDataTemplateExtension : IInspectable
{
extern(Windows):
	HRESULT abi_ResetTemplate();
	HRESULT abi_ProcessBinding(UINT32 phase, bool* return_returnValue);
	HRESULT abi_ProcessBindings(Windows.UI.Xaml.Controls.ContainerContentChangingEventArgs arg, INT32* return_returnValue);
}

@uuid("51ed9d7e-2b53-475b-9c88-0c1832c8351a")
@WinrtFactory("Windows.UI.Xaml.DataTemplate")
interface IDataTemplateFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.DataTemplate* return_instance);
}

@uuid("873b6c28-cceb-4b61-86fa-b2cec39cc2fa")
@WinrtFactory("Windows.UI.Xaml.DataTemplateKey")
interface IDataTemplateKey : IInspectable
{
extern(Windows):
	HRESULT get_DataType(IInspectable* return_value);
	HRESULT set_DataType(IInspectable value);
}

@uuid("e96b2959-d982-4152-91cb-de0e4dfd7693")
@WinrtFactory("Windows.UI.Xaml.DataTemplateKey")
interface IDataTemplateKeyFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.DataTemplateKey* return_instance);
	HRESULT abi_CreateInstanceWithType(IInspectable dataType, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.DataTemplateKey* return_instance);
}

@uuid("8af77d73-aa01-471e-bedd-8bad86219b77")
@WinrtFactory("Windows.UI.Xaml.DataTemplate")
interface IDataTemplateStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_ExtensionInstanceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetExtensionInstance(Windows.UI.Xaml.FrameworkElement element, Windows.UI.Xaml.IDataTemplateExtension* return_value);
	HRESULT abi_SetExtensionInstance(Windows.UI.Xaml.FrameworkElement element, Windows.UI.Xaml.IDataTemplateExtension value);
}

@uuid("3d451f98-c6a7-4d17-8398-d83a067183d8")
@WinrtFactory("Windows.UI.Xaml.DebugSettings")
interface IDebugSettings : IInspectable
{
extern(Windows):
	HRESULT get_EnableFrameRateCounter(bool* return_value);
	HRESULT set_EnableFrameRateCounter(bool value);
	HRESULT get_IsBindingTracingEnabled(bool* return_value);
	HRESULT set_IsBindingTracingEnabled(bool value);
	HRESULT get_IsOverdrawHeatMapEnabled(bool* return_value);
	HRESULT set_IsOverdrawHeatMapEnabled(bool value);
	HRESULT add_BindingFailed(Windows.UI.Xaml.BindingFailedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_BindingFailed(EventRegistrationToken token);
}

@uuid("48d37585-e1a6-469b-83c8-30825037119e")
@WinrtFactory("Windows.UI.Xaml.DebugSettings")
interface IDebugSettings2 : IInspectable
{
extern(Windows):
	HRESULT get_EnableRedrawRegions(bool* return_value);
	HRESULT set_EnableRedrawRegions(bool value);
}

@uuid("e6bb5022-0625-479f-8e32-4b583d73b7ac")
@WinrtFactory("Windows.UI.Xaml.DebugSettings")
interface IDebugSettings3 : IInspectable
{
extern(Windows):
	HRESULT get_IsTextPerformanceVisualizationEnabled(bool* return_value);
	HRESULT set_IsTextPerformanceVisualizationEnabled(bool value);
}

@uuid("5c526665-f60e-4912-af59-5fe0680f089d")
@WinrtFactory("Windows.UI.Xaml.DependencyObject")
interface IDependencyObject : IInspectable
{
extern(Windows):
	HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue);
	HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value);
	HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp);
	HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue);
	HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue);
	HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value);
}

@uuid("29fed85d-3d22-43a1-add0-17027c08b212")
@WinrtFactory("Windows.UI.Xaml.DependencyObject")
interface IDependencyObject2 : IInspectable
{
extern(Windows):
	HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue);
	HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token);
}

@uuid("051e79ff-b3a8-49ee-b5af-ac8f68b649e4")
@WinrtFactory("Windows.UI.Xaml.DependencyObjectCollection")
interface IDependencyObjectCollectionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.DependencyObjectCollection* return_instance);
}

@uuid("9a03af92-7d8a-4937-884f-ecf34fe02acb")
@WinrtFactory("Windows.UI.Xaml.DependencyObject")
interface IDependencyObjectFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.DependencyObject* return_instance);
}

@uuid("85b13970-9bc4-4e96-acf1-30c8fd3d55c8")
@WinrtFactory("Windows.UI.Xaml.DependencyProperty")
interface IDependencyProperty : IInspectable
{
extern(Windows):
	HRESULT abi_GetMetadata(Windows.UI.Xaml.Interop.TypeName forType, Windows.UI.Xaml.PropertyMetadata* return_returnValue);
}

@uuid("81212c2b-24d0-4957-abc3-224470a93a4e")
@WinrtFactory("Windows.UI.Xaml.DependencyPropertyChangedEventArgs")
interface IDependencyPropertyChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OldValue(IInspectable* return_value);
	HRESULT get_NewValue(IInspectable* return_value);
}

@uuid("49e5f28f-8259-4d5c-aae0-83d56dbb68d9")
@WinrtFactory("Windows.UI.Xaml.DependencyProperty")
interface IDependencyPropertyStatics : IInspectable
{
extern(Windows):
	HRESULT get_UnsetValue(IInspectable* return_value);
	HRESULT abi_Register(HSTRING name, Windows.UI.Xaml.Interop.TypeName propertyType, Windows.UI.Xaml.Interop.TypeName ownerType, Windows.UI.Xaml.PropertyMetadata typeMetadata, Windows.UI.Xaml.DependencyProperty* return_returnValue);
	HRESULT abi_RegisterAttached(HSTRING name, Windows.UI.Xaml.Interop.TypeName propertyType, Windows.UI.Xaml.Interop.TypeName ownerType, Windows.UI.Xaml.PropertyMetadata defaultMetadata, Windows.UI.Xaml.DependencyProperty* return_returnValue);
}

@uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc")
@WinrtFactory("Windows.UI.Xaml.DispatcherTimer")
interface IDispatcherTimer : IInspectable
{
extern(Windows):
	HRESULT get_Interval(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Interval(Windows.Foundation.TimeSpan value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT add_Tick(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Tick(EventRegistrationToken token);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

@uuid("e9961e6e-3626-403a-afe0-040d58165632")
@WinrtFactory("Windows.UI.Xaml.DispatcherTimer")
interface IDispatcherTimerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.DispatcherTimer* return_instance);
}

@uuid("b440c7c3-02b4-4980-9342-25dae1c0f188")
@WinrtFactory("Windows.UI.Xaml.DragEventArgs")
interface IDragEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackage* return_value);
	HRESULT set_Data(Windows.ApplicationModel.DataTransfer.DataPackage value);
	HRESULT abi_GetPosition(Windows.UI.Xaml.UIElement relativeTo, Windows.Foundation.Point* return_returnValue);
}

@uuid("26336658-2917-411d-bfc3-2f22471cbbe7")
@WinrtFactory("Windows.UI.Xaml.DragEventArgs")
interface IDragEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_DataView(Windows.ApplicationModel.DataTransfer.DataPackageView* return_value);
	HRESULT get_DragUIOverride(Windows.UI.Xaml.DragUIOverride* return_value);
	HRESULT get_Modifiers(Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers* return_value);
	HRESULT get_AcceptedOperation(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
	HRESULT set_AcceptedOperation(Windows.ApplicationModel.DataTransfer.DataPackageOperation value);
	HRESULT abi_GetDeferral(Windows.UI.Xaml.DragOperationDeferral* return_returnValue);
}

@uuid("d04fc3c6-8119-427a-8152-5f9550cc0416")
@WinrtFactory("Windows.UI.Xaml.DragEventArgs")
interface IDragEventArgs3 : IInspectable
{
extern(Windows):
	HRESULT get_AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
}

@uuid("ba73ecba-1b73-4086-b3d3-c223beea1633")
@WinrtFactory("Windows.UI.Xaml.DragOperationDeferral")
interface IDragOperationDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("6800d3fa-90b8-46f9-8e30-5ac25f73f0f9")
@WinrtFactory("Windows.UI.Xaml.DragStartingEventArgs")
interface IDragStartingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackage* return_value);
	HRESULT get_DragUI(Windows.UI.Xaml.DragUI* return_value);
	HRESULT abi_GetDeferral(Windows.UI.Xaml.DragOperationDeferral* return_returnValue);
	HRESULT abi_GetPosition(Windows.UI.Xaml.UIElement relativeTo, Windows.Foundation.Point* return_returnValue);
}

@uuid("d855e08e-44b6-4211-bd0b-7fddbb6e8231")
@WinrtFactory("Windows.UI.Xaml.DragStartingEventArgs")
interface IDragStartingEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
	HRESULT set_AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation value);
}

@uuid("2d9bd838-7c60-4842-9170-346fe10a226a")
@WinrtFactory("Windows.UI.Xaml.DragUI")
interface IDragUI : IInspectable
{
extern(Windows):
	HRESULT abi_SetContentFromBitmapImage(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage);
	HRESULT abi_SetContentFromBitmapImageWithAnchorPoint(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage, Windows.Foundation.Point anchorPoint);
	HRESULT abi_SetContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap);
	HRESULT abi_SetContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint);
	HRESULT abi_SetContentFromDataPackage();
}

@uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef")
@WinrtFactory("Windows.UI.Xaml.DragUIOverride")
interface IDragUIOverride : IInspectable
{
extern(Windows):
	HRESULT get_Caption(HSTRING* return_value);
	HRESULT set_Caption(HSTRING value);
	HRESULT get_IsContentVisible(bool* return_value);
	HRESULT set_IsContentVisible(bool value);
	HRESULT get_IsCaptionVisible(bool* return_value);
	HRESULT set_IsCaptionVisible(bool value);
	HRESULT get_IsGlyphVisible(bool* return_value);
	HRESULT set_IsGlyphVisible(bool value);
	HRESULT abi_Clear();
	HRESULT abi_SetContentFromBitmapImage(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage);
	HRESULT abi_SetContentFromBitmapImageWithAnchorPoint(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage, Windows.Foundation.Point anchorPoint);
	HRESULT abi_SetContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap);
	HRESULT abi_SetContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint);
}

@uuid("6c4fc188-95bc-4261-9ec5-21cab677b734")
@WinrtFactory("Windows.UI.Xaml.DropCompletedEventArgs")
interface IDropCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DropResult(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
}

@uuid("25c1659f-4497-4135-940f-ee96f4d6e934")
@WinrtFactory("Windows.UI.Xaml.DurationHelper")
interface IDurationHelper : IInspectable
{
}

@uuid("bc88093e-3547-4ec0-b519-ffa8f9c4838c")
@WinrtFactory("Windows.UI.Xaml.DurationHelper")
interface IDurationHelperStatics : IInspectable
{
extern(Windows):
	HRESULT get_Automatic(Windows.UI.Xaml.Duration* return_value);
	HRESULT get_Forever(Windows.UI.Xaml.Duration* return_value);
	HRESULT abi_Compare(Windows.UI.Xaml.Duration duration1, Windows.UI.Xaml.Duration duration2, INT32* return_returnValue);
	HRESULT abi_FromTimeSpan(Windows.Foundation.TimeSpan timeSpan, Windows.UI.Xaml.Duration* return_returnValue);
	HRESULT abi_GetHasTimeSpan(Windows.UI.Xaml.Duration target, bool* return_value);
	HRESULT abi_Add(Windows.UI.Xaml.Duration target, Windows.UI.Xaml.Duration duration, Windows.UI.Xaml.Duration* return_returnValue);
	HRESULT abi_Equals(Windows.UI.Xaml.Duration target, Windows.UI.Xaml.Duration value, bool* return_returnValue);
	HRESULT abi_Subtract(Windows.UI.Xaml.Duration target, Windows.UI.Xaml.Duration duration, Windows.UI.Xaml.Duration* return_returnValue);
}

@uuid("387773a5-f036-460c-9b81-f3d6ea43f6f2")
@WinrtFactory("Windows.UI.Xaml.ElementSoundPlayer")
interface IElementSoundPlayer : IInspectable
{
}

@uuid("217a9004-981d-41c9-b152-ada911a4b13a")
@WinrtFactory("Windows.UI.Xaml.ElementSoundPlayer")
interface IElementSoundPlayerStatics : IInspectable
{
extern(Windows):
	HRESULT get_Volume(double* return_value);
	HRESULT set_Volume(double value);
	HRESULT get_State(Windows.UI.Xaml.ElementSoundPlayerState* return_value);
	HRESULT set_State(Windows.UI.Xaml.ElementSoundPlayerState value);
	HRESULT abi_Play(Windows.UI.Xaml.ElementSoundKind sound);
}

@uuid("def8f855-0b49-4087-b1a9-b8b38488f786")
@WinrtFactory("Windows.UI.Xaml.EventTrigger")
interface IEventTrigger : IInspectable
{
extern(Windows):
	HRESULT get_RoutedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT set_RoutedEvent(Windows.UI.Xaml.RoutedEvent value);
	HRESULT get_Actions(Windows.UI.Xaml.TriggerActionCollection* return_value);
}

@uuid("dd9ff16a-4b62-4a6c-a49d-0671ef6136be")
@WinrtFactory("Windows.UI.Xaml.ExceptionRoutedEventArgs")
interface IExceptionRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ErrorMessage(HSTRING* return_value);
}

@uuid("bba9826d-5d7a-44e7-b893-b2ae0dd24273")
@WinrtFactory("Windows.UI.Xaml.ExceptionRoutedEventArgs")
interface IExceptionRoutedEventArgsFactory : IInspectable
{
}

@uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElement : IInspectable
{
extern(Windows):
	HRESULT get_Triggers(Windows.UI.Xaml.TriggerCollection* return_value);
	HRESULT get_Resources(Windows.UI.Xaml.ResourceDictionary* return_value);
	HRESULT set_Resources(Windows.UI.Xaml.ResourceDictionary value);
	HRESULT get_Tag(IInspectable* return_value);
	HRESULT set_Tag(IInspectable value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT set_Language(HSTRING value);
	HRESULT get_ActualWidth(double* return_value);
	HRESULT get_ActualHeight(double* return_value);
	HRESULT get_Width(double* return_value);
	HRESULT set_Width(double value);
	HRESULT get_Height(double* return_value);
	HRESULT set_Height(double value);
	HRESULT get_MinWidth(double* return_value);
	HRESULT set_MinWidth(double value);
	HRESULT get_MaxWidth(double* return_value);
	HRESULT set_MaxWidth(double value);
	HRESULT get_MinHeight(double* return_value);
	HRESULT set_MinHeight(double value);
	HRESULT get_MaxHeight(double* return_value);
	HRESULT set_MaxHeight(double value);
	HRESULT get_HorizontalAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value);
	HRESULT set_HorizontalAlignment(Windows.UI.Xaml.HorizontalAlignment value);
	HRESULT get_VerticalAlignment(Windows.UI.Xaml.VerticalAlignment* return_value);
	HRESULT set_VerticalAlignment(Windows.UI.Xaml.VerticalAlignment value);
	HRESULT get_Margin(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_Margin(Windows.UI.Xaml.Thickness value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_BaseUri(Windows.Foundation.Uri* return_value);
	HRESULT get_DataContext(IInspectable* return_value);
	HRESULT set_DataContext(IInspectable value);
	HRESULT get_Style(Windows.UI.Xaml.Style* return_value);
	HRESULT set_Style(Windows.UI.Xaml.Style value);
	HRESULT get_Parent(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT get_FlowDirection(Windows.UI.Xaml.FlowDirection* return_value);
	HRESULT set_FlowDirection(Windows.UI.Xaml.FlowDirection value);
	HRESULT add_Loaded(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Loaded(EventRegistrationToken token);
	HRESULT add_Unloaded(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Unloaded(EventRegistrationToken token);
	HRESULT add_SizeChanged(Windows.UI.Xaml.SizeChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SizeChanged(EventRegistrationToken token);
	HRESULT add_LayoutUpdated(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_LayoutUpdated(EventRegistrationToken token);
	HRESULT abi_FindName(HSTRING name, IInspectable* return_returnValue);
	HRESULT abi_SetBinding(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingBase binding);
}

@uuid("f19104be-422a-4904-a52f-ee72010429e5")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElement2 : IInspectable
{
extern(Windows):
	HRESULT get_RequestedTheme(Windows.UI.Xaml.ElementTheme* return_value);
	HRESULT set_RequestedTheme(Windows.UI.Xaml.ElementTheme value);
	HRESULT add_DataContextChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.DataContextChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_DataContextChanged(EventRegistrationToken token);
	HRESULT abi_GetBindingExpression(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingExpression* return_returnValue);
}

@uuid("c81c2720-5c52-4bbe-a199-2b1e34f00f70")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElement3 : IInspectable
{
extern(Windows):
	HRESULT add_Loading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.FrameworkElement, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Loading(EventRegistrationToken token);
}

@uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElement4 : IInspectable
{
extern(Windows):
	HRESULT get_AllowFocusOnInteraction(bool* return_value);
	HRESULT set_AllowFocusOnInteraction(bool value);
	HRESULT get_FocusVisualMargin(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_FocusVisualMargin(Windows.UI.Xaml.Thickness value);
	HRESULT get_FocusVisualSecondaryThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_FocusVisualSecondaryThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_FocusVisualPrimaryThickness(Windows.UI.Xaml.Thickness* return_value);
	HRESULT set_FocusVisualPrimaryThickness(Windows.UI.Xaml.Thickness value);
	HRESULT get_FocusVisualSecondaryBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_FocusVisualSecondaryBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_FocusVisualPrimaryBrush(Windows.UI.Xaml.Media.Brush* return_value);
	HRESULT set_FocusVisualPrimaryBrush(Windows.UI.Xaml.Media.Brush value);
	HRESULT get_AllowFocusWhenDisabled(bool* return_value);
	HRESULT set_AllowFocusWhenDisabled(bool value);
}

@uuid("deaee126-03ca-4966-b576-604cce93b5e8")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElementFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.FrameworkElement* return_instance);
}

@uuid("da007e54-b3c2-4b9a-aa8e-d3f071262b97")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElementOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_MeasureOverride(Windows.Foundation.Size availableSize, Windows.Foundation.Size* return_returnValue);
	HRESULT abi_ArrangeOverride(Windows.Foundation.Size finalSize, Windows.Foundation.Size* return_returnValue);
	HRESULT abi_OnApplyTemplate();
}

@uuid("cb5cd2b9-e3b4-458c-b64e-1434fd1bd88a")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElementOverrides2 : IInspectable
{
extern(Windows):
	HRESULT abi_GoToElementStateCore(HSTRING stateName, bool useTransitions, bool* return_returnValue);
}

@uuid("48383032-fbeb-4f8a-aed2-ee21fb27a57b")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElementStatics : IInspectable
{
extern(Windows):
	HRESULT get_TagProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_LanguageProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ActualWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ActualHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_WidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxWidthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MinHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MaxHeightProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HorizontalAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalAlignmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_MarginProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_NameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DataContextProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_StyleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FlowDirectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9695db02-c0d8-4fa2-b100-3fa2df8b9538")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElementStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_RequestedThemeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9c41b155-c5d8-4663-bff2-d8d54fb5dbb3")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElementStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_AllowFocusOnInteractionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusVisualMarginProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusVisualSecondaryThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusVisualPrimaryThicknessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusVisualSecondaryBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FocusVisualPrimaryBrushProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AllowFocusWhenDisabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("525d3941-0b3c-4be6-9978-19a8025c09d8")
@WinrtFactory("Windows.UI.Xaml.FrameworkElement")
interface IFrameworkElementStatics5 : IInspectable
{
extern(Windows):
	HRESULT abi_DeferTree(Windows.UI.Xaml.DependencyObject element);
}

@uuid("a1e254d8-a446-4a27-9a9d-a0f59e1258a5")
@WinrtFactory("Windows.UI.Xaml.FrameworkTemplate")
interface IFrameworkTemplate : IInspectable
{
}

@uuid("1a78a0a5-937d-46d4-832b-94ff14dab061")
@WinrtFactory("Windows.UI.Xaml.FrameworkTemplate")
interface IFrameworkTemplateFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.FrameworkTemplate* return_instance);
}

@uuid("ddba664b-b603-47aa-942d-3833174f0d80")
@WinrtFactory("Windows.UI.Xaml.FrameworkView")
interface IFrameworkView : IInspectable
{
}

@uuid("e3b077da-35ad-4b09-b5b2-27420041ba9f")
@WinrtFactory("Windows.UI.Xaml.FrameworkViewSource")
interface IFrameworkViewSource : IInspectable
{
}

@uuid("7a826ce1-07a0-4083-b6d1-b1d917b976ac")
@WinrtFactory("Windows.UI.Xaml.GridLengthHelper")
interface IGridLengthHelper : IInspectable
{
}

@uuid("9d457b9b-019f-4266-8872-215f198f6a9d")
@WinrtFactory("Windows.UI.Xaml.GridLengthHelper")
interface IGridLengthHelperStatics : IInspectable
{
extern(Windows):
	HRESULT get_Auto(Windows.UI.Xaml.GridLength* return_value);
	HRESULT abi_FromPixels(double pixels, Windows.UI.Xaml.GridLength* return_returnValue);
	HRESULT abi_FromValueAndType(double value, Windows.UI.Xaml.GridUnitType type, Windows.UI.Xaml.GridLength* return_returnValue);
	HRESULT abi_GetIsAbsolute(Windows.UI.Xaml.GridLength target, bool* return_value);
	HRESULT abi_GetIsAuto(Windows.UI.Xaml.GridLength target, bool* return_value);
	HRESULT abi_GetIsStar(Windows.UI.Xaml.GridLength target, bool* return_value);
	HRESULT abi_Equals(Windows.UI.Xaml.GridLength target, Windows.UI.Xaml.GridLength value, bool* return_returnValue);
}

@uuid("46d1fa8d-5149-4153-ba3c-b03e64ee531e")
@WinrtFactory("Windows.UI.Xaml.MediaFailedRoutedEventArgs")
interface IMediaFailedRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ErrorTrace(HSTRING* return_value);
}

@uuid("727bdd92-64b0-49cf-a321-a9793e73e2e7")
@WinrtFactory("Windows.UI.Xaml.PointHelper")
interface IPointHelper : IInspectable
{
}

@uuid("015aca75-76d8-4b7e-8a33-7d79204691ee")
@WinrtFactory("Windows.UI.Xaml.PointHelper")
interface IPointHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromCoordinates(float x, float y, Windows.Foundation.Point* return_returnValue);
}

@uuid("814ef30d-8d18-448a-8644-f2cb51e70380")
@WinrtFactory("Windows.UI.Xaml.PropertyMetadata")
interface IPropertyMetadata : IInspectable
{
extern(Windows):
	HRESULT get_DefaultValue(IInspectable* return_value);
	HRESULT get_CreateDefaultValueCallback(Windows.UI.Xaml.CreateDefaultValueCallback* return_value);
}

@uuid("c1b81cc0-57cd-4f2f-b0a9-e1801b28f76b")
@WinrtFactory("Windows.UI.Xaml.PropertyMetadata")
interface IPropertyMetadataFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceWithDefaultValue(IInspectable defaultValue, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.PropertyMetadata* return_instance);
	HRESULT abi_CreateInstanceWithDefaultValueAndCallback(IInspectable defaultValue, Windows.UI.Xaml.PropertyChangedCallback propertyChangedCallback, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.PropertyMetadata* return_instance);
}

@uuid("3b01077a-6e06-45e9-8b5c-af243458c062")
@WinrtFactory("Windows.UI.Xaml.PropertyMetadata")
interface IPropertyMetadataStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithDefaultValue(IInspectable defaultValue, Windows.UI.Xaml.PropertyMetadata* return_returnValue);
	HRESULT abi_CreateWithDefaultValueAndCallback(IInspectable defaultValue, Windows.UI.Xaml.PropertyChangedCallback propertyChangedCallback, Windows.UI.Xaml.PropertyMetadata* return_returnValue);
	HRESULT abi_CreateWithFactory(Windows.UI.Xaml.CreateDefaultValueCallback createDefaultValueCallback, Windows.UI.Xaml.PropertyMetadata* return_returnValue);
	HRESULT abi_CreateWithFactoryAndCallback(Windows.UI.Xaml.CreateDefaultValueCallback createDefaultValueCallback, Windows.UI.Xaml.PropertyChangedCallback propertyChangedCallback, Windows.UI.Xaml.PropertyMetadata* return_returnValue);
}

@uuid("300e5d8a-1ff3-4d2c-95ec-27f81debacb8")
@WinrtFactory("Windows.UI.Xaml.PropertyPath")
interface IPropertyPath : IInspectable
{
extern(Windows):
	HRESULT get_Path(HSTRING* return_value);
}

@uuid("4e4cdf99-9826-4e56-847c-ca055f162905")
@WinrtFactory("Windows.UI.Xaml.PropertyPath")
interface IPropertyPathFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(HSTRING path, Windows.UI.Xaml.PropertyPath* return_instance);
}

@uuid("a38781e2-4bfb-4ee2-afe5-89f31b37478d")
@WinrtFactory("Windows.UI.Xaml.RectHelper")
interface IRectHelper : IInspectable
{
}

@uuid("5ee163e4-c17e-494f-b580-2f0574fc3a15")
@WinrtFactory("Windows.UI.Xaml.RectHelper")
interface IRectHelperStatics : IInspectable
{
extern(Windows):
	HRESULT get_Empty(Windows.Foundation.Rect* return_value);
	HRESULT abi_FromCoordinatesAndDimensions(float x, float y, float width, float height, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_FromPoints(Windows.Foundation.Point point1, Windows.Foundation.Point point2, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_FromLocationAndSize(Windows.Foundation.Point location, Windows.Foundation.Size size, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_GetIsEmpty(Windows.Foundation.Rect target, bool* return_value);
	HRESULT abi_GetBottom(Windows.Foundation.Rect target, float* return_value);
	HRESULT abi_GetLeft(Windows.Foundation.Rect target, float* return_value);
	HRESULT abi_GetRight(Windows.Foundation.Rect target, float* return_value);
	HRESULT abi_GetTop(Windows.Foundation.Rect target, float* return_value);
	HRESULT abi_Contains(Windows.Foundation.Rect target, Windows.Foundation.Point point, bool* return_returnValue);
	HRESULT abi_Equals(Windows.Foundation.Rect target, Windows.Foundation.Rect value, bool* return_returnValue);
	HRESULT abi_Intersect(Windows.Foundation.Rect target, Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_UnionWithPoint(Windows.Foundation.Rect target, Windows.Foundation.Point point, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_UnionWithRect(Windows.Foundation.Rect target, Windows.Foundation.Rect rect, Windows.Foundation.Rect* return_returnValue);
}

@uuid("c1ea4f24-d6de-4191-8e3a-f48601f7489c")
@WinrtFactory("Windows.UI.Xaml.ResourceDictionary")
interface IResourceDictionary : IInspectable
{
extern(Windows):
	HRESULT get_Source(Windows.Foundation.Uri* return_value);
	HRESULT set_Source(Windows.Foundation.Uri value);
	HRESULT get_MergedDictionaries(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.ResourceDictionary)* return_value);
	HRESULT get_ThemeDictionaries(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable)* return_value);
}

@uuid("ea3639b5-31b7-4271-92c9-7c9584a91c22")
@WinrtFactory("Windows.UI.Xaml.ResourceDictionary")
interface IResourceDictionaryFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.ResourceDictionary* return_instance);
}

@uuid("a6b25818-43c1-4c70-865c-7bdd5a32e327")
@WinrtFactory("Windows.UI.Xaml.RoutedEvent")
interface IRoutedEvent : IInspectable
{
}

@uuid("5c985ac6-d802-4b38-a223-bf070c43fedf")
@WinrtFactory("Windows.UI.Xaml.RoutedEventArgs")
interface IRoutedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OriginalSource(IInspectable* return_value);
}

@uuid("b61c4d87-70e5-412e-b520-1a41ee76bbf4")
@WinrtFactory("Windows.UI.Xaml.RoutedEventArgs")
interface IRoutedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.RoutedEventArgs* return_instance);
}

@uuid("a73ded29-b4ae-4a81-be85-e690ba0d3b6e")
@WinrtFactory("Windows.UI.Xaml.Setter")
interface ISetter : IInspectable
{
extern(Windows):
	HRESULT get_Property(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT set_Property(Windows.UI.Xaml.DependencyProperty value);
	HRESULT get_Value(IInspectable* return_value);
	HRESULT set_Value(IInspectable value);
}

@uuid("70169561-05b1-4fa3-9d53-8e0c8c747afc")
@WinrtFactory("Windows.UI.Xaml.Setter")
interface ISetter2 : IInspectable
{
extern(Windows):
	HRESULT get_Target(Windows.UI.Xaml.TargetPropertyPath* return_value);
	HRESULT set_Target(Windows.UI.Xaml.TargetPropertyPath value);
}

@uuid("418be27c-2ac4-4f22-8097-dea3aeeb2fb3")
@WinrtFactory("Windows.UI.Xaml.SetterBase")
interface ISetterBase : IInspectable
{
extern(Windows):
	HRESULT get_IsSealed(bool* return_value);
}

@uuid("03c40ca8-909e-4117-811c-a4529496bdf1")
@WinrtFactory("Windows.UI.Xaml.SetterBaseCollection")
interface ISetterBaseCollection_Base : IInspectable
{
extern(Windows):
	HRESULT get_IsSealed(bool* return_value);
}
@uuid("03c40ca8-909e-4117-811c-a4529496bdf1")
@WinrtFactory("Windows.UI.Xaml.SetterBaseCollection")
interface ISetterBaseCollection : ISetterBaseCollection_Base, Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.SetterBase) {}

@uuid("81f8ad60-1ce8-469d-a667-16e37cef8ba9")
@WinrtFactory("Windows.UI.Xaml.SetterBase")
interface ISetterBaseFactory : IInspectable
{
}

@uuid("d3ca3d42-09b1-49d5-8891-e7b5648e02a2")
@WinrtFactory("Windows.UI.Xaml.Setter")
interface ISetterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Xaml.DependencyProperty targetProperty, IInspectable value, Windows.UI.Xaml.Setter* return_instance);
}

@uuid("d5312e60-5cc1-42a1-920c-1af46be2f986")
@WinrtFactory("Windows.UI.Xaml.SizeChangedEventArgs")
interface ISizeChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PreviousSize(Windows.Foundation.Size* return_value);
	HRESULT get_NewSize(Windows.Foundation.Size* return_value);
}

@uuid("e7225a94-5d03-4a03-ba94-967fc68fcefe")
@WinrtFactory("Windows.UI.Xaml.SizeHelper")
interface ISizeHelper : IInspectable
{
}

@uuid("6286c5b2-cf78-4915-aa40-76004a165f5e")
@WinrtFactory("Windows.UI.Xaml.SizeHelper")
interface ISizeHelperStatics : IInspectable
{
extern(Windows):
	HRESULT get_Empty(Windows.Foundation.Size* return_value);
	HRESULT abi_FromDimensions(float width, float height, Windows.Foundation.Size* return_returnValue);
	HRESULT abi_GetIsEmpty(Windows.Foundation.Size target, bool* return_value);
	HRESULT abi_Equals(Windows.Foundation.Size target, Windows.Foundation.Size value, bool* return_returnValue);
}

@uuid("67adef2e-d8d9-49f7-a1fd-2e35eedd23cd")
@WinrtFactory("Windows.UI.Xaml.StateTrigger")
interface IStateTrigger : IInspectable
{
extern(Windows):
	HRESULT get_IsActive(bool* return_value);
	HRESULT set_IsActive(bool value);
}

@uuid("48b20698-af06-466c-8052-93666dde0e49")
@WinrtFactory("Windows.UI.Xaml.StateTriggerBase")
interface IStateTriggerBase : IInspectable
{
}

@uuid("970e2c4b-bfaf-47b0-be42-c1d711bb2e9f")
@WinrtFactory("Windows.UI.Xaml.StateTriggerBase")
interface IStateTriggerBaseFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.StateTriggerBase* return_instance);
}

@uuid("3c41e253-8d14-4216-994c-f9930429f6e5")
@WinrtFactory("Windows.UI.Xaml.StateTriggerBase")
interface IStateTriggerBaseProtected : IInspectable
{
extern(Windows):
	HRESULT abi_SetActive(bool IsActive);
}

@uuid("71e95c90-b3fe-4dd3-a8a8-44a2ce25e0b8")
@WinrtFactory("Windows.UI.Xaml.StateTrigger")
interface IStateTriggerStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsActiveProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c4a9f225-9db7-4a7d-b6d1-f74edb9293c2")
@WinrtFactory("Windows.UI.Xaml.Style")
interface IStyle : IInspectable
{
extern(Windows):
	HRESULT get_IsSealed(bool* return_value);
	HRESULT get_Setters(Windows.UI.Xaml.SetterBaseCollection* return_value);
	HRESULT get_TargetType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT set_TargetType(Windows.UI.Xaml.Interop.TypeName value);
	HRESULT get_BasedOn(Windows.UI.Xaml.Style* return_value);
	HRESULT set_BasedOn(Windows.UI.Xaml.Style value);
	HRESULT abi_Seal();
}

@uuid("a36824e3-3d81-4ce5-aa51-8b410f602fcd")
@WinrtFactory("Windows.UI.Xaml.Style")
interface IStyleFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Xaml.Interop.TypeName targetType, Windows.UI.Xaml.Style* return_instance);
}

@uuid("40740f8e-085f-4ced-be70-6f47acf15ad0")
@WinrtFactory("Windows.UI.Xaml.TargetPropertyPath")
interface ITargetPropertyPath : IInspectable
{
extern(Windows):
	HRESULT get_Path(Windows.UI.Xaml.PropertyPath* return_value);
	HRESULT set_Path(Windows.UI.Xaml.PropertyPath value);
	HRESULT get_Target(IInspectable* return_value);
	HRESULT set_Target(IInspectable value);
}

@uuid("88eeccc8-99e2-4a44-9907-b44bc86e2bbe")
@WinrtFactory("Windows.UI.Xaml.TargetPropertyPath")
interface ITargetPropertyPathFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Xaml.DependencyProperty targetProperty, Windows.UI.Xaml.TargetPropertyPath* return_instance);
}

@uuid("a86bae4b-1e8f-4eeb-9013-0b2838a97b34")
@WinrtFactory("Windows.UI.Xaml.ThicknessHelper")
interface IThicknessHelper : IInspectable
{
}

@uuid("c0991a7c-070c-4da6-8784-01ca800eb73a")
@WinrtFactory("Windows.UI.Xaml.ThicknessHelper")
interface IThicknessHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromLengths(double left, double top, double right, double bottom, Windows.UI.Xaml.Thickness* return_returnValue);
	HRESULT abi_FromUniformLength(double uniformLength, Windows.UI.Xaml.Thickness* return_returnValue);
}

@uuid("a2c0df02-63d5-4b46-9b83-0868d3079621")
@WinrtFactory("Windows.UI.Xaml.TriggerAction")
interface ITriggerAction : IInspectable
{
}

@uuid("68d2c0b9-3289-414f-8f6e-c6b97aedda03")
@WinrtFactory("Windows.UI.Xaml.TriggerAction")
interface ITriggerActionFactory : IInspectable
{
}

@uuid("e7ea222f-dee6-4393-a8b2-8923d641f395")
@WinrtFactory("Windows.UI.Xaml.TriggerBase")
interface ITriggerBase : IInspectable
{
}

@uuid("6a3b9e57-fc5d-42d0-8cb9-ca50667af746")
@WinrtFactory("Windows.UI.Xaml.TriggerBase")
interface ITriggerBaseFactory : IInspectable
{
}

@uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElement : IInspectable
{
extern(Windows):
	HRESULT get_DesiredSize(Windows.Foundation.Size* return_value);
	HRESULT get_AllowDrop(bool* return_value);
	HRESULT set_AllowDrop(bool value);
	HRESULT get_Opacity(double* return_value);
	HRESULT set_Opacity(double value);
	HRESULT get_Clip(Windows.UI.Xaml.Media.RectangleGeometry* return_value);
	HRESULT set_Clip(Windows.UI.Xaml.Media.RectangleGeometry value);
	HRESULT get_RenderTransform(Windows.UI.Xaml.Media.Transform* return_value);
	HRESULT set_RenderTransform(Windows.UI.Xaml.Media.Transform value);
	HRESULT get_Projection(Windows.UI.Xaml.Media.Projection* return_value);
	HRESULT set_Projection(Windows.UI.Xaml.Media.Projection value);
	HRESULT get_RenderTransformOrigin(Windows.Foundation.Point* return_value);
	HRESULT set_RenderTransformOrigin(Windows.Foundation.Point value);
	HRESULT get_IsHitTestVisible(bool* return_value);
	HRESULT set_IsHitTestVisible(bool value);
	HRESULT get_Visibility(Windows.UI.Xaml.Visibility* return_value);
	HRESULT set_Visibility(Windows.UI.Xaml.Visibility value);
	HRESULT get_RenderSize(Windows.Foundation.Size* return_value);
	HRESULT get_UseLayoutRounding(bool* return_value);
	HRESULT set_UseLayoutRounding(bool value);
	HRESULT get_Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value);
	HRESULT set_Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value);
	HRESULT get_CacheMode(Windows.UI.Xaml.Media.CacheMode* return_value);
	HRESULT set_CacheMode(Windows.UI.Xaml.Media.CacheMode value);
	HRESULT get_IsTapEnabled(bool* return_value);
	HRESULT set_IsTapEnabled(bool value);
	HRESULT get_IsDoubleTapEnabled(bool* return_value);
	HRESULT set_IsDoubleTapEnabled(bool value);
	HRESULT get_IsRightTapEnabled(bool* return_value);
	HRESULT set_IsRightTapEnabled(bool value);
	HRESULT get_IsHoldingEnabled(bool* return_value);
	HRESULT set_IsHoldingEnabled(bool value);
	HRESULT get_ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes* return_value);
	HRESULT set_ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes value);
	HRESULT get_PointerCaptures(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Input.Pointer)* return_value);
	HRESULT add_KeyUp(Windows.UI.Xaml.Input.KeyEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_KeyUp(EventRegistrationToken token);
	HRESULT add_KeyDown(Windows.UI.Xaml.Input.KeyEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_KeyDown(EventRegistrationToken token);
	HRESULT add_GotFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_GotFocus(EventRegistrationToken token);
	HRESULT add_LostFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_LostFocus(EventRegistrationToken token);
	HRESULT add_DragEnter(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_DragEnter(EventRegistrationToken token);
	HRESULT add_DragLeave(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_DragLeave(EventRegistrationToken token);
	HRESULT add_DragOver(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_DragOver(EventRegistrationToken token);
	HRESULT add_Drop(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Drop(EventRegistrationToken token);
	HRESULT add_PointerPressed(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_PointerPressed(EventRegistrationToken token);
	HRESULT add_PointerMoved(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_PointerMoved(EventRegistrationToken token);
	HRESULT add_PointerReleased(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_PointerReleased(EventRegistrationToken token);
	HRESULT add_PointerEntered(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_PointerEntered(EventRegistrationToken token);
	HRESULT add_PointerExited(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_PointerExited(EventRegistrationToken token);
	HRESULT add_PointerCaptureLost(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_PointerCaptureLost(EventRegistrationToken token);
	HRESULT add_PointerCanceled(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_PointerCanceled(EventRegistrationToken token);
	HRESULT add_PointerWheelChanged(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_PointerWheelChanged(EventRegistrationToken token);
	HRESULT add_Tapped(Windows.UI.Xaml.Input.TappedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Tapped(EventRegistrationToken token);
	HRESULT add_DoubleTapped(Windows.UI.Xaml.Input.DoubleTappedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_DoubleTapped(EventRegistrationToken token);
	HRESULT add_Holding(Windows.UI.Xaml.Input.HoldingEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Holding(EventRegistrationToken token);
	HRESULT add_RightTapped(Windows.UI.Xaml.Input.RightTappedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_RightTapped(EventRegistrationToken token);
	HRESULT add_ManipulationStarting(Windows.UI.Xaml.Input.ManipulationStartingEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ManipulationStarting(EventRegistrationToken token);
	HRESULT add_ManipulationInertiaStarting(Windows.UI.Xaml.Input.ManipulationInertiaStartingEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ManipulationInertiaStarting(EventRegistrationToken token);
	HRESULT add_ManipulationStarted(Windows.UI.Xaml.Input.ManipulationStartedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ManipulationStarted(EventRegistrationToken token);
	HRESULT add_ManipulationDelta(Windows.UI.Xaml.Input.ManipulationDeltaEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ManipulationDelta(EventRegistrationToken token);
	HRESULT add_ManipulationCompleted(Windows.UI.Xaml.Input.ManipulationCompletedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_ManipulationCompleted(EventRegistrationToken token);
	HRESULT abi_Measure(Windows.Foundation.Size availableSize);
	HRESULT abi_Arrange(Windows.Foundation.Rect finalRect);
	HRESULT abi_CapturePointer(Windows.UI.Xaml.Input.Pointer value, bool* return_returnValue);
	HRESULT abi_ReleasePointerCapture(Windows.UI.Xaml.Input.Pointer value);
	HRESULT abi_ReleasePointerCaptures();
	HRESULT abi_AddHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler, bool handledEventsToo);
	HRESULT abi_RemoveHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler);
	HRESULT abi_TransformToVisual(Windows.UI.Xaml.UIElement visual, Windows.UI.Xaml.Media.GeneralTransform* return_returnValue);
	HRESULT abi_InvalidateMeasure();
	HRESULT abi_InvalidateArrange();
	HRESULT abi_UpdateLayout();
}

@uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElement2 : IInspectable
{
extern(Windows):
	HRESULT get_CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode* return_value);
	HRESULT set_CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode value);
	HRESULT abi_CancelDirectManipulations(bool* return_returnValue);
}

@uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElement3 : IInspectable
{
extern(Windows):
	HRESULT get_Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D* return_value);
	HRESULT set_Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D value);
	HRESULT get_CanDrag(bool* return_value);
	HRESULT set_CanDrag(bool value);
	HRESULT add_DragStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DragStartingEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_DragStarting(EventRegistrationToken token);
	HRESULT add_DropCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DropCompletedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_DropCompleted(EventRegistrationToken token);
	HRESULT abi_StartDragAsync(Windows.UI.Input.PointerPoint pointerPoint, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue);
}

@uuid("69145cd4-199a-4657-9e57-e99e8f136712")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElement4 : IInspectable
{
extern(Windows):
	HRESULT get_ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase* return_value);
	HRESULT set_ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase value);
	HRESULT get_ExitDisplayModeOnAccessKeyInvoked(bool* return_value);
	HRESULT set_ExitDisplayModeOnAccessKeyInvoked(bool value);
	HRESULT get_IsAccessKeyScope(bool* return_value);
	HRESULT set_IsAccessKeyScope(bool value);
	HRESULT get_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_AccessKey(HSTRING* return_value);
	HRESULT set_AccessKey(HSTRING value);
	HRESULT add_ContextRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.ContextRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ContextRequested(EventRegistrationToken token);
	HRESULT add_ContextCanceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.RoutedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ContextCanceled(EventRegistrationToken token);
	HRESULT add_AccessKeyDisplayRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_AccessKeyDisplayRequested(EventRegistrationToken token);
	HRESULT add_AccessKeyDisplayDismissed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_AccessKeyDisplayDismissed(EventRegistrationToken token);
	HRESULT add_AccessKeyInvoked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_AccessKeyInvoked(EventRegistrationToken token);
}

@uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElement5 : IInspectable
{
extern(Windows):
	HRESULT get_Lights(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.XamlLight)* return_value);
	HRESULT get_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode* return_value);
	HRESULT set_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode value);
	HRESULT get_KeyTipHorizontalOffset(double* return_value);
	HRESULT set_KeyTipHorizontalOffset(double value);
	HRESULT get_KeyTipVerticalOffset(double* return_value);
	HRESULT set_KeyTipVerticalOffset(double value);
	HRESULT get_XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode* return_value);
	HRESULT set_XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode value);
	HRESULT get_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value);
	HRESULT set_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value);
	HRESULT get_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value);
	HRESULT set_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value);
	HRESULT get_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value);
	HRESULT set_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value);
	HRESULT get_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value);
	HRESULT set_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value);
	HRESULT get_HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment* return_value);
	HRESULT set_HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment value);
	HRESULT get_TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode* return_value);
	HRESULT set_TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode value);
	HRESULT add_GettingFocus(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.GettingFocusEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_GettingFocus(EventRegistrationToken token);
	HRESULT add_LosingFocus(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.LosingFocusEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_LosingFocus(EventRegistrationToken token);
	HRESULT add_NoFocusCandidateFound(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.NoFocusCandidateFoundEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_NoFocusCandidateFound(EventRegistrationToken token);
	HRESULT abi_StartBringIntoView();
	HRESULT abi_StartBringIntoViewWithOptions(Windows.UI.Xaml.BringIntoViewOptions options);
}

@uuid("b9ee93fe-a338-419f-ac32-91dcaadf5d08")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElementFactory : IInspectable
{
}

@uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElementOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_OnCreateAutomationPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue);
	HRESULT abi_OnDisconnectVisualChildren();
	HRESULT abi_FindSubElementsForTouchTargeting(Windows.Foundation.Point point, Windows.Foundation.Rect boundingRect, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point))* return_returnValue);
}

@uuid("58d3573b-f52c-45be-988b-a5869564873c")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElementStatics : IInspectable
{
extern(Windows):
	HRESULT get_KeyDownEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_KeyUpEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_PointerEnteredEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_PointerPressedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_PointerMovedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_PointerReleasedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_PointerExitedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_PointerCaptureLostEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_PointerCanceledEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_PointerWheelChangedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_TappedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_DoubleTappedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_HoldingEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_RightTappedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_ManipulationStartingEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_ManipulationInertiaStartingEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_ManipulationStartedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_ManipulationDeltaEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_ManipulationCompletedEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_DragEnterEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_DragLeaveEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_DragOverEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_DropEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_AllowDropProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OpacityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ClipProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RenderTransformProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ProjectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RenderTransformOriginProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsHitTestVisibleProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VisibilityProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_UseLayoutRoundingProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TransitionsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CacheModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsTapEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsDoubleTapEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsRightTapEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsHoldingEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ManipulationModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_PointerCapturesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("58d3574b-f53c-45be-989b-a5869564874c")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElementStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_CompositeModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d1f87ade-eca1-4561-a32b-64601b4e0597")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElementStatics3 : IInspectable
{
extern(Windows):
	HRESULT get_Transform3DProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_CanDragProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_TryStartDirectManipulation(Windows.UI.Xaml.Input.Pointer value, bool* return_returnValue);
}

@uuid("1d157d61-16af-411f-b774-272375a4ac2c")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElementStatics4 : IInspectable
{
extern(Windows):
	HRESULT get_ContextFlyoutProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ExitDisplayModeOnAccessKeyInvokedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsAccessKeyScopeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AccessKeyScopeOwnerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_AccessKeyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("59bd7d91-8fa3-4c65-ba1b-40df38556cbb")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElementStatics5 : IInspectable
{
extern(Windows):
	HRESULT get_LightsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTipPlacementModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTipHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTipVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusKeyboardNavigationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusUpNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusDownNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusLeftNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_XYFocusRightNavigationStrategyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_HighContrastAdjustmentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_TabFocusNavigationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("647e03b7-036a-4dea-9540-1dd7fd1266f1")
@WinrtFactory("Windows.UI.Xaml.UIElement")
interface IUIElementStatics6 : IInspectable
{
extern(Windows):
	HRESULT get_GettingFocusEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_LosingFocusEvent(Windows.UI.Xaml.RoutedEvent* return_value);
	HRESULT get_NoFocusCandidateFoundEvent(Windows.UI.Xaml.RoutedEvent* return_value);
}

@uuid("7230269c-054e-4cf3-86c5-be90eb6863d5")
@WinrtFactory("Windows.UI.Xaml.UnhandledExceptionEventArgs")
interface IUnhandledExceptionEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Exception(HRESULT* return_value);
	HRESULT get_Message(HSTRING* return_value);
	HRESULT get_Handled(bool* return_value);
	HRESULT set_Handled(bool value);
}

@uuid("6320affc-c31a-4450-afde-f6ea7bd1f586")
@WinrtFactory("Windows.UI.Xaml.VisualState")
interface IVisualState : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard* return_value);
	HRESULT set_Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard value);
}

@uuid("0fa0f896-64c0-45fb-8d24-fb83298c0d93")
@WinrtFactory("Windows.UI.Xaml.VisualState")
interface IVisualState2 : IInspectable
{
extern(Windows):
	HRESULT get_Setters(Windows.UI.Xaml.SetterBaseCollection* return_value);
	HRESULT get_StateTriggers(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.StateTriggerBase)* return_value);
}

@uuid("fe216ab1-f31f-4791-8989-c70e1d9b59ff")
@WinrtFactory("Windows.UI.Xaml.VisualStateChangedEventArgs")
interface IVisualStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldState(Windows.UI.Xaml.VisualState* return_value);
	HRESULT set_OldState(Windows.UI.Xaml.VisualState value);
	HRESULT get_NewState(Windows.UI.Xaml.VisualState* return_value);
	HRESULT set_NewState(Windows.UI.Xaml.VisualState value);
	HRESULT get_Control(Windows.UI.Xaml.Controls.Control* return_value);
	HRESULT set_Control(Windows.UI.Xaml.Controls.Control value);
}

@uuid("e4f9d9a4-e028-44de-9b15-4929ae0a26c2")
@WinrtFactory("Windows.UI.Xaml.VisualStateGroup")
interface IVisualStateGroup : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Transitions(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualTransition)* return_value);
	HRESULT get_States(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualState)* return_value);
	HRESULT get_CurrentState(Windows.UI.Xaml.VisualState* return_value);
	HRESULT add_CurrentStateChanged(Windows.UI.Xaml.VisualStateChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_CurrentStateChanged(EventRegistrationToken token);
	HRESULT add_CurrentStateChanging(Windows.UI.Xaml.VisualStateChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_CurrentStateChanging(EventRegistrationToken token);
}

@uuid("6fda9f9a-6fab-4112-9258-1006a3c3476e")
@WinrtFactory("Windows.UI.Xaml.VisualStateManager")
interface IVisualStateManager : IInspectable
{
}

@uuid("85e598fd-a575-47b6-9e30-383cd08585f2")
@WinrtFactory("Windows.UI.Xaml.VisualStateManager")
interface IVisualStateManagerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.VisualStateManager* return_instance);
}

@uuid("4a66910e-7979-43c8-8ff4-ec6122750006")
@WinrtFactory("Windows.UI.Xaml.VisualStateManager")
interface IVisualStateManagerOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_GoToStateCore(Windows.UI.Xaml.Controls.Control control, Windows.UI.Xaml.FrameworkElement templateRoot, HSTRING stateName, Windows.UI.Xaml.VisualStateGroup group, Windows.UI.Xaml.VisualState state, bool useTransitions, bool* return_returnValue);
}

@uuid("4b3b8640-b0b7-404c-9ef4-d949640e245d")
@WinrtFactory("Windows.UI.Xaml.VisualStateManager")
interface IVisualStateManagerProtected : IInspectable
{
extern(Windows):
	HRESULT abi_RaiseCurrentStateChanging(Windows.UI.Xaml.VisualStateGroup stateGroup, Windows.UI.Xaml.VisualState oldState, Windows.UI.Xaml.VisualState newState, Windows.UI.Xaml.Controls.Control control);
	HRESULT abi_RaiseCurrentStateChanged(Windows.UI.Xaml.VisualStateGroup stateGroup, Windows.UI.Xaml.VisualState oldState, Windows.UI.Xaml.VisualState newState, Windows.UI.Xaml.Controls.Control control);
}

@uuid("01d0e9e0-d713-414e-a74e-e63ec7ac8c3d")
@WinrtFactory("Windows.UI.Xaml.VisualStateManager")
interface IVisualStateManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetVisualStateGroups(Windows.UI.Xaml.FrameworkElement obj, Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualStateGroup)* return_value);
	HRESULT get_CustomVisualStateManagerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetCustomVisualStateManager(Windows.UI.Xaml.FrameworkElement obj, Windows.UI.Xaml.VisualStateManager* return_value);
	HRESULT abi_SetCustomVisualStateManager(Windows.UI.Xaml.FrameworkElement obj, Windows.UI.Xaml.VisualStateManager value);
	HRESULT abi_GoToState(Windows.UI.Xaml.Controls.Control control, HSTRING stateName, bool useTransitions, bool* return_returnValue);
}

@uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0")
@WinrtFactory("Windows.UI.Xaml.VisualTransition")
interface IVisualTransition : IInspectable
{
extern(Windows):
	HRESULT get_GeneratedDuration(Windows.UI.Xaml.Duration* return_value);
	HRESULT set_GeneratedDuration(Windows.UI.Xaml.Duration value);
	HRESULT get_GeneratedEasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value);
	HRESULT set_GeneratedEasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value);
	HRESULT get_To(HSTRING* return_value);
	HRESULT set_To(HSTRING value);
	HRESULT get_From(HSTRING* return_value);
	HRESULT set_From(HSTRING value);
	HRESULT get_Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard* return_value);
	HRESULT set_Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard value);
}

@uuid("ea75864f-d1e0-4dae-b429-89fc322724f4")
@WinrtFactory("Windows.UI.Xaml.VisualTransition")
interface IVisualTransitionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.VisualTransition* return_instance);
}

@uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5")
@WinrtFactory("Windows.UI.Xaml.Window")
interface IWindow : IInspectable
{
extern(Windows):
	HRESULT get_Bounds(Windows.Foundation.Rect* return_value);
	HRESULT get_Visible(bool* return_value);
	HRESULT get_Content(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_Content(Windows.UI.Xaml.UIElement value);
	HRESULT get_CoreWindow(Windows.UI.Core.CoreWindow* return_value);
	HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value);
	HRESULT add_Activated(Windows.UI.Xaml.WindowActivatedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Activated(EventRegistrationToken token);
	HRESULT add_Closed(Windows.UI.Xaml.WindowClosedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Closed(EventRegistrationToken token);
	HRESULT add_SizeChanged(Windows.UI.Xaml.WindowSizeChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_SizeChanged(EventRegistrationToken token);
	HRESULT add_VisibilityChanged(Windows.UI.Xaml.WindowVisibilityChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_VisibilityChanged(EventRegistrationToken token);
	HRESULT abi_Activate();
	HRESULT abi_Close();
}

@uuid("d384759f-34f6-4482-8435-f552f9b24cc8")
@WinrtFactory("Windows.UI.Xaml.Window")
interface IWindow2 : IInspectable
{
extern(Windows):
	HRESULT abi_SetTitleBar(Windows.UI.Xaml.UIElement value);
}

@uuid("b70bdc9d-1c35-462a-9b97-808d5af9f28e")
@WinrtFactory("Windows.UI.Xaml.Window")
interface IWindow3 : IInspectable
{
extern(Windows):
	HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value);
}

@uuid("31b71470-feff-4654-af48-9b398ab5772b")
@WinrtFactory("Windows.UI.Xaml.WindowCreatedEventArgs")
interface IWindowCreatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Window(Windows.UI.Xaml.Window* return_value);
}

@uuid("93328409-4ea1-4afa-83dc-0c4e73e88bb1")
@WinrtFactory("Windows.UI.Xaml.Window")
interface IWindowStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.UI.Xaml.Window* return_value);
}

interface AdaptiveTrigger : Windows.UI.Xaml.StateTriggerBase, Windows.UI.Xaml.IAdaptiveTrigger
{
extern(Windows):
	final double MinWindowWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IAdaptiveTrigger)this.asInterface(uuid("a5f04119-0cd9-49f1-a23f-44e547ab9f1a"))).get_MinWindowWidth(&_ret));
		return _ret;
	}
	final void MinWindowWidth(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IAdaptiveTrigger)this.asInterface(uuid("a5f04119-0cd9-49f1-a23f-44e547ab9f1a"))).set_MinWindowWidth(value));
	}
	final double MinWindowHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IAdaptiveTrigger)this.asInterface(uuid("a5f04119-0cd9-49f1-a23f-44e547ab9f1a"))).get_MinWindowHeight(&_ret));
		return _ret;
	}
	final void MinWindowHeight(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IAdaptiveTrigger)this.asInterface(uuid("a5f04119-0cd9-49f1-a23f-44e547ab9f1a"))).set_MinWindowHeight(value));
	}

	private static Windows.UI.Xaml.IAdaptiveTriggerStatics _staticInstance;
	public static Windows.UI.Xaml.IAdaptiveTriggerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IAdaptiveTriggerStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty MinWindowWidthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MinWindowWidthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty MinWindowHeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MinWindowHeightProperty(&_ret));
		return _ret;
	}
	static AdaptiveTrigger New()
	{
		IInspectable outer, inner;
		AdaptiveTrigger ret;
		Debug.OK(activationFactory!(AdaptiveTrigger, Windows.UI.Xaml.IAdaptiveTriggerFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(AdaptiveTrigger, AdaptiveTrigger, Windows.UI.Xaml.IAdaptiveTriggerFactory)
class AdaptiveTriggerT(Base) : AgileObject!Base, AdaptiveTrigger
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_MinWindowWidth(double* return_value) { return (cast(Windows.UI.Xaml.IAdaptiveTrigger)m_inner.asInterface(uuid("a5f04119-0cd9-49f1-a23f-44e547ab9f1a"))).get_MinWindowWidth(return_value); }
	override HRESULT set_MinWindowWidth(double value) { return (cast(Windows.UI.Xaml.IAdaptiveTrigger)m_inner.asInterface(uuid("a5f04119-0cd9-49f1-a23f-44e547ab9f1a"))).set_MinWindowWidth(value); }
	override HRESULT get_MinWindowHeight(double* return_value) { return (cast(Windows.UI.Xaml.IAdaptiveTrigger)m_inner.asInterface(uuid("a5f04119-0cd9-49f1-a23f-44e547ab9f1a"))).get_MinWindowHeight(return_value); }
	override HRESULT set_MinWindowHeight(double value) { return (cast(Windows.UI.Xaml.IAdaptiveTrigger)m_inner.asInterface(uuid("a5f04119-0cd9-49f1-a23f-44e547ab9f1a"))).set_MinWindowHeight(value); }

	override HRESULT abi_SetActive(bool IsActive) { return (cast(Windows.UI.Xaml.IStateTriggerBaseProtected)m_inner.asInterface(uuid("3c41e253-8d14-4216-994c-f9930429f6e5"))).abi_SetActive(IsActive); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface Application : Windows.UI.Xaml.IApplication, Windows.UI.Xaml.IApplicationOverrides, Windows.UI.Xaml.IApplication2, Windows.UI.Xaml.IApplicationOverrides2, Windows.UI.Xaml.IApplication3
{
extern(Windows):
	final Windows.UI.Xaml.ResourceDictionary Resources()
	{
		Windows.UI.Xaml.ResourceDictionary _ret;
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).get_Resources(&_ret));
		return _ret;
	}
	final void Resources(Windows.UI.Xaml.ResourceDictionary value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).set_Resources(value));
	}
	final Windows.UI.Xaml.DebugSettings DebugSettings()
	{
		Windows.UI.Xaml.DebugSettings _ret;
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).get_DebugSettings(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.ApplicationTheme RequestedTheme()
	{
		Windows.UI.Xaml.ApplicationTheme _ret;
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).get_RequestedTheme(&_ret));
		return _ret;
	}
	final void RequestedTheme(Windows.UI.Xaml.ApplicationTheme value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).set_RequestedTheme(value));
	}
	final EventRegistrationToken OnUnhandledException(void delegate(IInspectable, Windows.UI.Xaml.UnhandledExceptionEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).add_UnhandledException(event!(Windows.UI.Xaml.UnhandledExceptionEventHandler, IInspectable, Windows.UI.Xaml.UnhandledExceptionEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUnhandledException(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).remove_UnhandledException(token));
	}
	final EventRegistrationToken OnSuspending(void delegate(IInspectable, Windows.ApplicationModel.SuspendingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).add_Suspending(event!(Windows.UI.Xaml.SuspendingEventHandler, IInspectable, Windows.ApplicationModel.SuspendingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSuspending(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).remove_Suspending(token));
	}
	final EventRegistrationToken OnResuming(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).add_Resuming(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeResuming(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).remove_Resuming(token));
	}
	final void Exit()
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication)this.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).abi_Exit());
	}
	final Windows.UI.Xaml.FocusVisualKind FocusVisualKind()
	{
		Windows.UI.Xaml.FocusVisualKind _ret;
		Debug.OK((cast(Windows.UI.Xaml.IApplication2)this.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).get_FocusVisualKind(&_ret));
		return _ret;
	}
	final void FocusVisualKind(Windows.UI.Xaml.FocusVisualKind value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication2)this.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).set_FocusVisualKind(value));
	}
	final Windows.UI.Xaml.ApplicationRequiresPointerMode RequiresPointerMode()
	{
		Windows.UI.Xaml.ApplicationRequiresPointerMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.IApplication2)this.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).get_RequiresPointerMode(&_ret));
		return _ret;
	}
	final void RequiresPointerMode(Windows.UI.Xaml.ApplicationRequiresPointerMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication2)this.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).set_RequiresPointerMode(value));
	}
	final EventRegistrationToken OnLeavingBackground(void delegate(IInspectable, Windows.ApplicationModel.LeavingBackgroundEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IApplication2)this.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).add_LeavingBackground(event!(Windows.UI.Xaml.LeavingBackgroundEventHandler, IInspectable, Windows.ApplicationModel.LeavingBackgroundEventArgs)(fn), &tok));
		return tok;
	}
	final void removeLeavingBackground(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication2)this.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).remove_LeavingBackground(token));
	}
	final EventRegistrationToken OnEnteredBackground(void delegate(IInspectable, Windows.ApplicationModel.EnteredBackgroundEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IApplication2)this.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).add_EnteredBackground(event!(Windows.UI.Xaml.EnteredBackgroundEventHandler, IInspectable, Windows.ApplicationModel.EnteredBackgroundEventArgs)(fn), &tok));
		return tok;
	}
	final void removeEnteredBackground(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication2)this.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).remove_EnteredBackground(token));
	}
	final Windows.UI.Xaml.ApplicationHighContrastAdjustment HighContrastAdjustment()
	{
		Windows.UI.Xaml.ApplicationHighContrastAdjustment _ret;
		Debug.OK((cast(Windows.UI.Xaml.IApplication3)this.asInterface(uuid("b775ad7c-18b8-45ca-a1b0-dc483e4b1028"))).get_HighContrastAdjustment(&_ret));
		return _ret;
	}
	final void HighContrastAdjustment(Windows.UI.Xaml.ApplicationHighContrastAdjustment value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IApplication3)this.asInterface(uuid("b775ad7c-18b8-45ca-a1b0-dc483e4b1028"))).set_HighContrastAdjustment(value));
	}

	private static Windows.UI.Xaml.IApplicationStatics _staticInstance;
	public static Windows.UI.Xaml.IApplicationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IApplicationStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Application Current()
	{
		Windows.UI.Xaml.Application _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
	static void Start(Windows.UI.Xaml.ApplicationInitializationCallback callback)
	{
		Debug.OK(staticInstance.abi_Start(callback));
	}
	static void LoadComponent(IInspectable component, Windows.Foundation.Uri resourceLocator)
	{
		Debug.OK(staticInstance.abi_LoadComponent(component, resourceLocator));
	}
	static void LoadComponentWithResourceLocation(IInspectable component, Windows.Foundation.Uri resourceLocator, Windows.UI.Xaml.Controls.Primitives.ComponentResourceLocation componentResourceLocation)
	{
		Debug.OK(staticInstance.abi_LoadComponentWithResourceLocation(component, resourceLocator, componentResourceLocation));
	}
	alias LoadComponent = LoadComponentWithResourceLocation;
	static Application New()
	{
		IInspectable outer, inner;
		Application ret;
		Debug.OK(activationFactory!(Application, Windows.UI.Xaml.IApplicationFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(Application, Application, Windows.UI.Xaml.IApplicationFactory)
class ApplicationT(Base) : AgileObject!Base, Application
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Resources(Windows.UI.Xaml.ResourceDictionary* return_value) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).get_Resources(return_value); }
	override HRESULT set_Resources(Windows.UI.Xaml.ResourceDictionary value) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).set_Resources(value); }
	override HRESULT get_DebugSettings(Windows.UI.Xaml.DebugSettings* return_value) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).get_DebugSettings(return_value); }
	override HRESULT get_RequestedTheme(Windows.UI.Xaml.ApplicationTheme* return_value) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).get_RequestedTheme(return_value); }
	override HRESULT set_RequestedTheme(Windows.UI.Xaml.ApplicationTheme value) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).set_RequestedTheme(value); }
	override HRESULT add_UnhandledException(Windows.UI.Xaml.UnhandledExceptionEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).add_UnhandledException(value, return_token); }
	override HRESULT remove_UnhandledException(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).remove_UnhandledException(token); }
	override HRESULT add_Suspending(Windows.UI.Xaml.SuspendingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).add_Suspending(value, return_token); }
	override HRESULT remove_Suspending(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).remove_Suspending(token); }
	override HRESULT add_Resuming(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).add_Resuming(value, return_token); }
	override HRESULT remove_Resuming(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).remove_Resuming(token); }
	override HRESULT abi_Exit() { return (cast(Windows.UI.Xaml.IApplication)m_inner.asInterface(uuid("74b861a1-7487-46a9-9a6e-c78b512726c5"))).abi_Exit(); }

	override HRESULT abi_OnActivated(Windows.ApplicationModel.Activation.IActivatedEventArgs args) { this.OnActivated(args); return S_OK; }
	void OnActivated(Windows.ApplicationModel.Activation.IActivatedEventArgs args) { Debug.OK((cast(Windows.UI.Xaml.IApplicationOverrides)m_inner.asInterface(uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f"))).abi_OnActivated(args)); }
	override HRESULT abi_OnLaunched(Windows.ApplicationModel.Activation.LaunchActivatedEventArgs args) { this.OnLaunched(args); return S_OK; }
	void OnLaunched(Windows.ApplicationModel.Activation.LaunchActivatedEventArgs args) { Debug.OK((cast(Windows.UI.Xaml.IApplicationOverrides)m_inner.asInterface(uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f"))).abi_OnLaunched(args)); }
	override HRESULT abi_OnFileActivated(Windows.ApplicationModel.Activation.FileActivatedEventArgs args) { this.OnFileActivated(args); return S_OK; }
	void OnFileActivated(Windows.ApplicationModel.Activation.FileActivatedEventArgs args) { Debug.OK((cast(Windows.UI.Xaml.IApplicationOverrides)m_inner.asInterface(uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f"))).abi_OnFileActivated(args)); }
	override HRESULT abi_OnSearchActivated(Windows.ApplicationModel.Activation.SearchActivatedEventArgs args) { this.OnSearchActivated(args); return S_OK; }
	void OnSearchActivated(Windows.ApplicationModel.Activation.SearchActivatedEventArgs args) { Debug.OK((cast(Windows.UI.Xaml.IApplicationOverrides)m_inner.asInterface(uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f"))).abi_OnSearchActivated(args)); }
	override HRESULT abi_OnShareTargetActivated(Windows.ApplicationModel.Activation.ShareTargetActivatedEventArgs args) { this.OnShareTargetActivated(args); return S_OK; }
	void OnShareTargetActivated(Windows.ApplicationModel.Activation.ShareTargetActivatedEventArgs args) { Debug.OK((cast(Windows.UI.Xaml.IApplicationOverrides)m_inner.asInterface(uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f"))).abi_OnShareTargetActivated(args)); }
	override HRESULT abi_OnFileOpenPickerActivated(Windows.ApplicationModel.Activation.FileOpenPickerActivatedEventArgs args) { this.OnFileOpenPickerActivated(args); return S_OK; }
	void OnFileOpenPickerActivated(Windows.ApplicationModel.Activation.FileOpenPickerActivatedEventArgs args) { Debug.OK((cast(Windows.UI.Xaml.IApplicationOverrides)m_inner.asInterface(uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f"))).abi_OnFileOpenPickerActivated(args)); }
	override HRESULT abi_OnFileSavePickerActivated(Windows.ApplicationModel.Activation.FileSavePickerActivatedEventArgs args) { this.OnFileSavePickerActivated(args); return S_OK; }
	void OnFileSavePickerActivated(Windows.ApplicationModel.Activation.FileSavePickerActivatedEventArgs args) { Debug.OK((cast(Windows.UI.Xaml.IApplicationOverrides)m_inner.asInterface(uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f"))).abi_OnFileSavePickerActivated(args)); }
	override HRESULT abi_OnCachedFileUpdaterActivated(Windows.ApplicationModel.Activation.CachedFileUpdaterActivatedEventArgs args) { this.OnCachedFileUpdaterActivated(args); return S_OK; }
	void OnCachedFileUpdaterActivated(Windows.ApplicationModel.Activation.CachedFileUpdaterActivatedEventArgs args) { Debug.OK((cast(Windows.UI.Xaml.IApplicationOverrides)m_inner.asInterface(uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f"))).abi_OnCachedFileUpdaterActivated(args)); }
	override HRESULT abi_OnWindowCreated(Windows.UI.Xaml.WindowCreatedEventArgs args) { this.OnWindowCreated(args); return S_OK; }
	void OnWindowCreated(Windows.UI.Xaml.WindowCreatedEventArgs args) { Debug.OK((cast(Windows.UI.Xaml.IApplicationOverrides)m_inner.asInterface(uuid("25f99ff7-9347-459a-9fac-b2d0e11c1a0f"))).abi_OnWindowCreated(args)); }

	override HRESULT get_FocusVisualKind(Windows.UI.Xaml.FocusVisualKind* return_value) { return (cast(Windows.UI.Xaml.IApplication2)m_inner.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).get_FocusVisualKind(return_value); }
	override HRESULT set_FocusVisualKind(Windows.UI.Xaml.FocusVisualKind value) { return (cast(Windows.UI.Xaml.IApplication2)m_inner.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).set_FocusVisualKind(value); }
	override HRESULT get_RequiresPointerMode(Windows.UI.Xaml.ApplicationRequiresPointerMode* return_value) { return (cast(Windows.UI.Xaml.IApplication2)m_inner.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).get_RequiresPointerMode(return_value); }
	override HRESULT set_RequiresPointerMode(Windows.UI.Xaml.ApplicationRequiresPointerMode value) { return (cast(Windows.UI.Xaml.IApplication2)m_inner.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).set_RequiresPointerMode(value); }
	override HRESULT add_LeavingBackground(Windows.UI.Xaml.LeavingBackgroundEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IApplication2)m_inner.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).add_LeavingBackground(value, return_token); }
	override HRESULT remove_LeavingBackground(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IApplication2)m_inner.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).remove_LeavingBackground(token); }
	override HRESULT add_EnteredBackground(Windows.UI.Xaml.EnteredBackgroundEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IApplication2)m_inner.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).add_EnteredBackground(value, return_token); }
	override HRESULT remove_EnteredBackground(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IApplication2)m_inner.asInterface(uuid("019104be-522a-5904-f52f-de72010429e0"))).remove_EnteredBackground(token); }

	override HRESULT abi_OnBackgroundActivated(Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs args) { this.OnBackgroundActivated(args); return S_OK; }
	void OnBackgroundActivated(Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs args) { Debug.OK((cast(Windows.UI.Xaml.IApplicationOverrides2)m_inner.asInterface(uuid("db5cd2b9-d3b4-558c-c64e-0434fd1bd889"))).abi_OnBackgroundActivated(args)); }

	override HRESULT get_HighContrastAdjustment(Windows.UI.Xaml.ApplicationHighContrastAdjustment* return_value) { return (cast(Windows.UI.Xaml.IApplication3)m_inner.asInterface(uuid("b775ad7c-18b8-45ca-a1b0-dc483e4b1028"))).get_HighContrastAdjustment(return_value); }
	override HRESULT set_HighContrastAdjustment(Windows.UI.Xaml.ApplicationHighContrastAdjustment value) { return (cast(Windows.UI.Xaml.IApplication3)m_inner.asInterface(uuid("b775ad7c-18b8-45ca-a1b0-dc483e4b1028"))).set_HighContrastAdjustment(value); }

	this() {}
	IInspectable m_inner;
}

interface ApplicationInitializationCallbackParams : Windows.UI.Xaml.IApplicationInitializationCallbackParams
{
}

interface BindingFailedEventArgs : Windows.UI.Xaml.IBindingFailedEventArgs
{
extern(Windows):
	final HSTRING Message()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IBindingFailedEventArgs)this.asInterface(uuid("32c1d013-4dbd-446d-bbb8-0de35048a449"))).get_Message(&_ret));
		return _ret;
	}
}

interface BringIntoViewOptions : Windows.UI.Xaml.IBringIntoViewOptions
{
extern(Windows):
	final bool AnimationDesired()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IBringIntoViewOptions)this.asInterface(uuid("19bdd1b5-c7cb-46d9-a4dd-a1bbe83ef2fb"))).get_AnimationDesired(&_ret));
		return _ret;
	}
	final void AnimationDesired(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IBringIntoViewOptions)this.asInterface(uuid("19bdd1b5-c7cb-46d9-a4dd-a1bbe83ef2fb"))).set_AnimationDesired(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.Rect) TargetRect()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Rect) _ret;
		Debug.OK((cast(Windows.UI.Xaml.IBringIntoViewOptions)this.asInterface(uuid("19bdd1b5-c7cb-46d9-a4dd-a1bbe83ef2fb"))).get_TargetRect(&_ret));
		return _ret;
	}
	final void TargetRect(Windows.Foundation.IReference!(Windows.Foundation.Rect) value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IBringIntoViewOptions)this.asInterface(uuid("19bdd1b5-c7cb-46d9-a4dd-a1bbe83ef2fb"))).set_TargetRect(value));
	}
	static BringIntoViewOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BringIntoViewOptions).abi_ActivateInstance(&ret));
		return cast(BringIntoViewOptions) ret;
	}
}

interface CornerRadiusHelper : Windows.UI.Xaml.ICornerRadiusHelper
{
	private static Windows.UI.Xaml.ICornerRadiusHelperStatics _staticInstance;
	public static Windows.UI.Xaml.ICornerRadiusHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.ICornerRadiusHelperStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.CornerRadius FromRadii(double topLeft, double topRight, double bottomRight, double bottomLeft)
	{
		Windows.UI.Xaml.CornerRadius _ret;
		Debug.OK(staticInstance.abi_FromRadii(topLeft, topRight, bottomRight, bottomLeft, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.CornerRadius FromUniformRadius(double uniformRadius)
	{
		Windows.UI.Xaml.CornerRadius _ret;
		Debug.OK(staticInstance.abi_FromUniformRadius(uniformRadius, &_ret));
		return _ret;
	}
}

interface DataContextChangedEventArgs : Windows.UI.Xaml.IDataContextChangedEventArgs
{
extern(Windows):
	final IInspectable NewValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDataContextChangedEventArgs)this.asInterface(uuid("7da68e21-0b8f-4f9f-a143-f8e7780136a2"))).get_NewValue(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDataContextChangedEventArgs)this.asInterface(uuid("7da68e21-0b8f-4f9f-a143-f8e7780136a2"))).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDataContextChangedEventArgs)this.asInterface(uuid("7da68e21-0b8f-4f9f-a143-f8e7780136a2"))).set_Handled(value));
	}
}

interface DataTemplate : Windows.UI.Xaml.FrameworkTemplate, Windows.UI.Xaml.IDataTemplate
{
extern(Windows):
	final Windows.UI.Xaml.DependencyObject LoadContent()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDataTemplate)this.asInterface(uuid("9910aec7-8ab5-4118-9bc6-09f45a35073d"))).abi_LoadContent(&_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.IDataTemplateStatics2 _staticInstance;
	public static Windows.UI.Xaml.IDataTemplateStatics2 staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IDataTemplateStatics2);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty ExtensionInstanceProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ExtensionInstanceProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.IDataTemplateExtension GetExtensionInstance(Windows.UI.Xaml.FrameworkElement element)
	{
		Windows.UI.Xaml.IDataTemplateExtension _ret;
		Debug.OK(staticInstance.abi_GetExtensionInstance(element, &_ret));
		return _ret;
	}
	static void SetExtensionInstance(Windows.UI.Xaml.FrameworkElement element, Windows.UI.Xaml.IDataTemplateExtension value)
	{
		Debug.OK(staticInstance.abi_SetExtensionInstance(element, value));
	}
	static DataTemplate New()
	{
		IInspectable outer, inner;
		DataTemplate ret;
		Debug.OK(activationFactory!(DataTemplate, Windows.UI.Xaml.IDataTemplateFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(DataTemplate, DataTemplate, Windows.UI.Xaml.IDataTemplateFactory)
class DataTemplateT(Base) : AgileObject!Base, DataTemplate
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_LoadContent(Windows.UI.Xaml.DependencyObject* return_returnValue) { return (cast(Windows.UI.Xaml.IDataTemplate)m_inner.asInterface(uuid("9910aec7-8ab5-4118-9bc6-09f45a35073d"))).abi_LoadContent(return_returnValue); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface DataTemplateKey : Windows.UI.Xaml.IDataTemplateKey
{
extern(Windows):
	final IInspectable DataType()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDataTemplateKey)this.asInterface(uuid("873b6c28-cceb-4b61-86fa-b2cec39cc2fa"))).get_DataType(&_ret));
		return _ret;
	}
	final void DataType(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDataTemplateKey)this.asInterface(uuid("873b6c28-cceb-4b61-86fa-b2cec39cc2fa"))).set_DataType(value));
	}
	static DataTemplateKey New()
	{
		IInspectable outer, inner;
		DataTemplateKey ret;
		Debug.OK(activationFactory!(DataTemplateKey, Windows.UI.Xaml.IDataTemplateKeyFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(DataTemplateKey, DataTemplateKey, Windows.UI.Xaml.IDataTemplateKeyFactory)
class DataTemplateKeyT(Base) : AgileObject!Base, DataTemplateKey
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_DataType(IInspectable* return_value) { return (cast(Windows.UI.Xaml.IDataTemplateKey)m_inner.asInterface(uuid("873b6c28-cceb-4b61-86fa-b2cec39cc2fa"))).get_DataType(return_value); }
	override HRESULT set_DataType(IInspectable value) { return (cast(Windows.UI.Xaml.IDataTemplateKey)m_inner.asInterface(uuid("873b6c28-cceb-4b61-86fa-b2cec39cc2fa"))).set_DataType(value); }

	this() {}
	IInspectable m_inner;
}

interface DebugSettings : Windows.UI.Xaml.IDebugSettings, Windows.UI.Xaml.IDebugSettings2, Windows.UI.Xaml.IDebugSettings3
{
extern(Windows):
	final bool EnableFrameRateCounter()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings)this.asInterface(uuid("3d451f98-c6a7-4d17-8398-d83a067183d8"))).get_EnableFrameRateCounter(&_ret));
		return _ret;
	}
	final void EnableFrameRateCounter(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings)this.asInterface(uuid("3d451f98-c6a7-4d17-8398-d83a067183d8"))).set_EnableFrameRateCounter(value));
	}
	final bool IsBindingTracingEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings)this.asInterface(uuid("3d451f98-c6a7-4d17-8398-d83a067183d8"))).get_IsBindingTracingEnabled(&_ret));
		return _ret;
	}
	final void IsBindingTracingEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings)this.asInterface(uuid("3d451f98-c6a7-4d17-8398-d83a067183d8"))).set_IsBindingTracingEnabled(value));
	}
	final bool IsOverdrawHeatMapEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings)this.asInterface(uuid("3d451f98-c6a7-4d17-8398-d83a067183d8"))).get_IsOverdrawHeatMapEnabled(&_ret));
		return _ret;
	}
	final void IsOverdrawHeatMapEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings)this.asInterface(uuid("3d451f98-c6a7-4d17-8398-d83a067183d8"))).set_IsOverdrawHeatMapEnabled(value));
	}
	final EventRegistrationToken OnBindingFailed(void delegate(IInspectable, Windows.UI.Xaml.BindingFailedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings)this.asInterface(uuid("3d451f98-c6a7-4d17-8398-d83a067183d8"))).add_BindingFailed(event!(Windows.UI.Xaml.BindingFailedEventHandler, IInspectable, Windows.UI.Xaml.BindingFailedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBindingFailed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings)this.asInterface(uuid("3d451f98-c6a7-4d17-8398-d83a067183d8"))).remove_BindingFailed(token));
	}
	final bool EnableRedrawRegions()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings2)this.asInterface(uuid("48d37585-e1a6-469b-83c8-30825037119e"))).get_EnableRedrawRegions(&_ret));
		return _ret;
	}
	final void EnableRedrawRegions(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings2)this.asInterface(uuid("48d37585-e1a6-469b-83c8-30825037119e"))).set_EnableRedrawRegions(value));
	}
	final bool IsTextPerformanceVisualizationEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings3)this.asInterface(uuid("e6bb5022-0625-479f-8e32-4b583d73b7ac"))).get_IsTextPerformanceVisualizationEnabled(&_ret));
		return _ret;
	}
	final void IsTextPerformanceVisualizationEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDebugSettings3)this.asInterface(uuid("e6bb5022-0625-479f-8e32-4b583d73b7ac"))).set_IsTextPerformanceVisualizationEnabled(value));
	}
}

interface DependencyObject : Windows.UI.Xaml.IDependencyObject, Windows.UI.Xaml.IDependencyObject2
{
extern(Windows):
	final IInspectable GetValue(Windows.UI.Xaml.DependencyProperty dp)
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDependencyObject)this.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, &_ret));
		return _ret;
	}
	final void SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDependencyObject)this.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value));
	}
	final void ClearValue(Windows.UI.Xaml.DependencyProperty dp)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDependencyObject)this.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp));
	}
	final IInspectable ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp)
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDependencyObject)this.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, &_ret));
		return _ret;
	}
	final IInspectable GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp)
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDependencyObject)this.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, &_ret));
		return _ret;
	}
	final Windows.UI.Core.CoreDispatcher Dispatcher()
	{
		Windows.UI.Core.CoreDispatcher _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDependencyObject)this.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(&_ret));
		return _ret;
	}
	final INT64 RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback)
	{
		INT64 _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDependencyObject2)this.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, &_ret));
		return _ret;
	}
	final void UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDependencyObject2)this.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token));
	}
	static DependencyObject New()
	{
		IInspectable outer, inner;
		DependencyObject ret;
		Debug.OK(activationFactory!(DependencyObject, Windows.UI.Xaml.IDependencyObjectFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(DependencyObject, DependencyObject, Windows.UI.Xaml.IDependencyObjectFactory)
class DependencyObjectT(Base) : AgileObject!Base, DependencyObject
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface DependencyObjectCollection : Windows.UI.Xaml.DependencyObject, Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.DependencyObject), Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.DependencyObject)
{
extern(Windows):
	final void removeVectorChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.DependencyObject))this).remove_VectorChanged(token));
	}
	final Windows.UI.Xaml.DependencyObject GetAt(uint index)
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.DependencyObject)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.DependencyObject value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.DependencyObject item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.DependencyObject item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.DependencyObject item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.DependencyObject* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.DependencyObject* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.DependencyObject)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.DependencyObject))this).abi_First(out_first));
	}
	static DependencyObjectCollection New()
	{
		IInspectable outer, inner;
		DependencyObjectCollection ret;
		Debug.OK(activationFactory!(DependencyObjectCollection, Windows.UI.Xaml.IDependencyObjectCollectionFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(DependencyObjectCollection, DependencyObjectCollection, Windows.UI.Xaml.IDependencyObjectCollectionFactory)
class DependencyObjectCollectionT(Base) : AgileObject!Base, DependencyObjectCollection
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT add_VectorChanged(Windows.Foundation.Collections.VectorChangedEventHandler!(Windows.UI.Xaml.DependencyObject) handler, EventRegistrationToken* return_token) { return (cast(Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.DependencyObject))m_inner).add_VectorChanged(handler, return_token); }
	override HRESULT remove_VectorChanged(EventRegistrationToken token) { return (cast(Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.DependencyObject))m_inner).remove_VectorChanged(token); }

	override HRESULT get_GetAt(uint index, Windows.UI.Xaml.DependencyObject* return_item) { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).get_GetAt(index, return_item); }
	override HRESULT get_Size(uint* return_size) { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).get_Size(return_size); }
	override HRESULT abi_GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.DependencyObject)* out_view) { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).abi_GetView(out_view); }
	override HRESULT get_IndexOf(Windows.UI.Xaml.DependencyObject value, uint* return_index, bool* out_found) { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).get_IndexOf(value, return_index, out_found); }
	override HRESULT abi_SetAt(uint index, Windows.UI.Xaml.DependencyObject item) { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).abi_SetAt(index, item); }
	override HRESULT abi_InsertAt(uint index, Windows.UI.Xaml.DependencyObject item) { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).abi_InsertAt(index, item); }
	override HRESULT abi_RemoveAt(uint index) { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).abi_RemoveAt(index); }
	override HRESULT abi_Append(Windows.UI.Xaml.DependencyObject item) { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).abi_Append(item); }
	override HRESULT abi_RemoveAtEnd() { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).abi_RemoveAtEnd(); }
	override HRESULT abi_Clear() { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).abi_Clear(); }
	override HRESULT abi_GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.DependencyObject* out_value, uint* out_actual) { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).abi_GetMany(startIndex, capacity, out_value, out_actual); }
	override HRESULT abi_ReplaceAll(uint count, Windows.UI.Xaml.DependencyObject* out_value) { return (cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject))m_inner).abi_ReplaceAll(count, out_value); }

	override HRESULT abi_First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.DependencyObject)* out_first) { return (cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.DependencyObject))m_inner).abi_First(out_first); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface DependencyProperty : Windows.UI.Xaml.IDependencyProperty
{
extern(Windows):
	final Windows.UI.Xaml.PropertyMetadata GetMetadata(Windows.UI.Xaml.Interop.TypeName forType)
	{
		Windows.UI.Xaml.PropertyMetadata _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDependencyProperty)this.asInterface(uuid("85b13970-9bc4-4e96-acf1-30c8fd3d55c8"))).abi_GetMetadata(forType, &_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.IDependencyPropertyStatics _staticInstance;
	public static Windows.UI.Xaml.IDependencyPropertyStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IDependencyPropertyStatics);
		return _staticInstance;
	}
	static IInspectable UnsetValue()
	{
		IInspectable _ret;
		Debug.OK(staticInstance.get_UnsetValue(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty Register(HSTRING name, Windows.UI.Xaml.Interop.TypeName propertyType, Windows.UI.Xaml.Interop.TypeName ownerType, Windows.UI.Xaml.PropertyMetadata typeMetadata)
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.abi_Register(name, propertyType, ownerType, typeMetadata, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RegisterAttached(HSTRING name, Windows.UI.Xaml.Interop.TypeName propertyType, Windows.UI.Xaml.Interop.TypeName ownerType, Windows.UI.Xaml.PropertyMetadata defaultMetadata)
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.abi_RegisterAttached(name, propertyType, ownerType, defaultMetadata, &_ret));
		return _ret;
	}
}

interface DependencyPropertyChangedEventArgs : Windows.UI.Xaml.IDependencyPropertyChangedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.DependencyProperty Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDependencyPropertyChangedEventArgs)this.asInterface(uuid("81212c2b-24d0-4957-abc3-224470a93a4e"))).get_Property(&_ret));
		return _ret;
	}
	final IInspectable OldValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDependencyPropertyChangedEventArgs)this.asInterface(uuid("81212c2b-24d0-4957-abc3-224470a93a4e"))).get_OldValue(&_ret));
		return _ret;
	}
	final IInspectable NewValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDependencyPropertyChangedEventArgs)this.asInterface(uuid("81212c2b-24d0-4957-abc3-224470a93a4e"))).get_NewValue(&_ret));
		return _ret;
	}
}

interface DispatcherTimer : Windows.UI.Xaml.IDispatcherTimer
{
extern(Windows):
	final Windows.Foundation.TimeSpan Interval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDispatcherTimer)this.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).get_Interval(&_ret));
		return _ret;
	}
	final void Interval(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDispatcherTimer)this.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).set_Interval(value));
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDispatcherTimer)this.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).get_IsEnabled(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnTick(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IDispatcherTimer)this.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).add_Tick(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeTick(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDispatcherTimer)this.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).remove_Tick(token));
	}
	final void Start()
	{
		Debug.OK((cast(Windows.UI.Xaml.IDispatcherTimer)this.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).abi_Start());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.UI.Xaml.IDispatcherTimer)this.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).abi_Stop());
	}
	static DispatcherTimer New()
	{
		IInspectable outer, inner;
		DispatcherTimer ret;
		Debug.OK(activationFactory!(DispatcherTimer, Windows.UI.Xaml.IDispatcherTimerFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(DispatcherTimer, DispatcherTimer, Windows.UI.Xaml.IDispatcherTimerFactory)
class DispatcherTimerT(Base) : AgileObject!Base, DispatcherTimer
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Interval(Windows.Foundation.TimeSpan* return_value) { return (cast(Windows.UI.Xaml.IDispatcherTimer)m_inner.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).get_Interval(return_value); }
	override HRESULT set_Interval(Windows.Foundation.TimeSpan value) { return (cast(Windows.UI.Xaml.IDispatcherTimer)m_inner.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).set_Interval(value); }
	override HRESULT get_IsEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IDispatcherTimer)m_inner.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).get_IsEnabled(return_value); }
	override HRESULT add_Tick(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IDispatcherTimer)m_inner.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).add_Tick(value, return_token); }
	override HRESULT remove_Tick(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IDispatcherTimer)m_inner.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).remove_Tick(token); }
	override HRESULT abi_Start() { return (cast(Windows.UI.Xaml.IDispatcherTimer)m_inner.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).abi_Start(); }
	override HRESULT abi_Stop() { return (cast(Windows.UI.Xaml.IDispatcherTimer)m_inner.asInterface(uuid("d160ce46-cd22-4f5f-8c97-40e61da3e2dc"))).abi_Stop(); }

	this() {}
	IInspectable m_inner;
}

interface DragEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.IDragEventArgs, Windows.UI.Xaml.IDragEventArgs2, Windows.UI.Xaml.IDragEventArgs3
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs)this.asInterface(uuid("b440c7c3-02b4-4980-9342-25dae1c0f188"))).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs)this.asInterface(uuid("b440c7c3-02b4-4980-9342-25dae1c0f188"))).set_Handled(value));
	}
	final Windows.ApplicationModel.DataTransfer.DataPackage Data()
	{
		Windows.ApplicationModel.DataTransfer.DataPackage _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs)this.asInterface(uuid("b440c7c3-02b4-4980-9342-25dae1c0f188"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.ApplicationModel.DataTransfer.DataPackage value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs)this.asInterface(uuid("b440c7c3-02b4-4980-9342-25dae1c0f188"))).set_Data(value));
	}
	final Windows.Foundation.Point GetPosition(Windows.UI.Xaml.UIElement relativeTo)
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs)this.asInterface(uuid("b440c7c3-02b4-4980-9342-25dae1c0f188"))).abi_GetPosition(relativeTo, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageView DataView()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageView _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs2)this.asInterface(uuid("26336658-2917-411d-bfc3-2f22471cbbe7"))).get_DataView(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DragUIOverride DragUIOverride()
	{
		Windows.UI.Xaml.DragUIOverride _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs2)this.asInterface(uuid("26336658-2917-411d-bfc3-2f22471cbbe7"))).get_DragUIOverride(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers Modifiers()
	{
		Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs2)this.asInterface(uuid("26336658-2917-411d-bfc3-2f22471cbbe7"))).get_Modifiers(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation AcceptedOperation()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs2)this.asInterface(uuid("26336658-2917-411d-bfc3-2f22471cbbe7"))).get_AcceptedOperation(&_ret));
		return _ret;
	}
	final void AcceptedOperation(Windows.ApplicationModel.DataTransfer.DataPackageOperation value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs2)this.asInterface(uuid("26336658-2917-411d-bfc3-2f22471cbbe7"))).set_AcceptedOperation(value));
	}
	final Windows.UI.Xaml.DragOperationDeferral GetDeferral()
	{
		Windows.UI.Xaml.DragOperationDeferral _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs2)this.asInterface(uuid("26336658-2917-411d-bfc3-2f22471cbbe7"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation AllowedOperations()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragEventArgs3)this.asInterface(uuid("d04fc3c6-8119-427a-8152-5f9550cc0416"))).get_AllowedOperations(&_ret));
		return _ret;
	}
}

interface DragOperationDeferral : Windows.UI.Xaml.IDragOperationDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragOperationDeferral)this.asInterface(uuid("ba73ecba-1b73-4086-b3d3-c223beea1633"))).abi_Complete());
	}
}

interface DragStartingEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.IDragStartingEventArgs, Windows.UI.Xaml.IDragStartingEventArgs2
{
extern(Windows):
	final bool Cancel()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragStartingEventArgs)this.asInterface(uuid("6800d3fa-90b8-46f9-8e30-5ac25f73f0f9"))).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragStartingEventArgs)this.asInterface(uuid("6800d3fa-90b8-46f9-8e30-5ac25f73f0f9"))).set_Cancel(value));
	}
	final Windows.ApplicationModel.DataTransfer.DataPackage Data()
	{
		Windows.ApplicationModel.DataTransfer.DataPackage _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragStartingEventArgs)this.asInterface(uuid("6800d3fa-90b8-46f9-8e30-5ac25f73f0f9"))).get_Data(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DragUI DragUI()
	{
		Windows.UI.Xaml.DragUI _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragStartingEventArgs)this.asInterface(uuid("6800d3fa-90b8-46f9-8e30-5ac25f73f0f9"))).get_DragUI(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DragOperationDeferral GetDeferral()
	{
		Windows.UI.Xaml.DragOperationDeferral _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragStartingEventArgs)this.asInterface(uuid("6800d3fa-90b8-46f9-8e30-5ac25f73f0f9"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point GetPosition(Windows.UI.Xaml.UIElement relativeTo)
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragStartingEventArgs)this.asInterface(uuid("6800d3fa-90b8-46f9-8e30-5ac25f73f0f9"))).abi_GetPosition(relativeTo, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation AllowedOperations()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragStartingEventArgs2)this.asInterface(uuid("d855e08e-44b6-4211-bd0b-7fddbb6e8231"))).get_AllowedOperations(&_ret));
		return _ret;
	}
	final void AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragStartingEventArgs2)this.asInterface(uuid("d855e08e-44b6-4211-bd0b-7fddbb6e8231"))).set_AllowedOperations(value));
	}
}

interface DragUI : Windows.UI.Xaml.IDragUI
{
extern(Windows):
	final void SetContentFromBitmapImage(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUI)this.asInterface(uuid("2d9bd838-7c60-4842-9170-346fe10a226a"))).abi_SetContentFromBitmapImage(bitmapImage));
	}
	final void SetContentFromBitmapImageWithAnchorPoint(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage, Windows.Foundation.Point anchorPoint)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUI)this.asInterface(uuid("2d9bd838-7c60-4842-9170-346fe10a226a"))).abi_SetContentFromBitmapImageWithAnchorPoint(bitmapImage, anchorPoint));
	}
	alias SetContentFromBitmapImage = SetContentFromBitmapImageWithAnchorPoint;
	final void SetContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUI)this.asInterface(uuid("2d9bd838-7c60-4842-9170-346fe10a226a"))).abi_SetContentFromSoftwareBitmap(softwareBitmap));
	}
	final void SetContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUI)this.asInterface(uuid("2d9bd838-7c60-4842-9170-346fe10a226a"))).abi_SetContentFromSoftwareBitmapWithAnchorPoint(softwareBitmap, anchorPoint));
	}
	alias SetContentFromSoftwareBitmap = SetContentFromSoftwareBitmapWithAnchorPoint;
	final void SetContentFromDataPackage()
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUI)this.asInterface(uuid("2d9bd838-7c60-4842-9170-346fe10a226a"))).abi_SetContentFromDataPackage());
	}
}

interface DragUIOverride : Windows.UI.Xaml.IDragUIOverride
{
extern(Windows):
	final HSTRING Caption()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).get_Caption(&_ret));
		return _ret;
	}
	final void Caption(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).set_Caption(value));
	}
	final bool IsContentVisible()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).get_IsContentVisible(&_ret));
		return _ret;
	}
	final void IsContentVisible(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).set_IsContentVisible(value));
	}
	final bool IsCaptionVisible()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).get_IsCaptionVisible(&_ret));
		return _ret;
	}
	final void IsCaptionVisible(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).set_IsCaptionVisible(value));
	}
	final bool IsGlyphVisible()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).get_IsGlyphVisible(&_ret));
		return _ret;
	}
	final void IsGlyphVisible(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).set_IsGlyphVisible(value));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).abi_Clear());
	}
	final void SetContentFromBitmapImage(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).abi_SetContentFromBitmapImage(bitmapImage));
	}
	final void SetContentFromBitmapImageWithAnchorPoint(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage, Windows.Foundation.Point anchorPoint)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).abi_SetContentFromBitmapImageWithAnchorPoint(bitmapImage, anchorPoint));
	}
	alias SetContentFromBitmapImage = SetContentFromBitmapImageWithAnchorPoint;
	final void SetContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).abi_SetContentFromSoftwareBitmap(softwareBitmap));
	}
	final void SetContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint)
	{
		Debug.OK((cast(Windows.UI.Xaml.IDragUIOverride)this.asInterface(uuid("bd6c9dfa-c961-4861-b7a5-bf4fe4a8a6ef"))).abi_SetContentFromSoftwareBitmapWithAnchorPoint(softwareBitmap, anchorPoint));
	}
	alias SetContentFromSoftwareBitmap = SetContentFromSoftwareBitmapWithAnchorPoint;
}

interface DropCompletedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.IDropCompletedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation DropResult()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK((cast(Windows.UI.Xaml.IDropCompletedEventArgs)this.asInterface(uuid("6c4fc188-95bc-4261-9ec5-21cab677b734"))).get_DropResult(&_ret));
		return _ret;
	}
}

interface DurationHelper : Windows.UI.Xaml.IDurationHelper
{
	private static Windows.UI.Xaml.IDurationHelperStatics _staticInstance;
	public static Windows.UI.Xaml.IDurationHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IDurationHelperStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Duration Automatic()
	{
		Windows.UI.Xaml.Duration _ret;
		Debug.OK(staticInstance.get_Automatic(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Duration Forever()
	{
		Windows.UI.Xaml.Duration _ret;
		Debug.OK(staticInstance.get_Forever(&_ret));
		return _ret;
	}
	static INT32 Compare(Windows.UI.Xaml.Duration duration1, Windows.UI.Xaml.Duration duration2)
	{
		INT32 _ret;
		Debug.OK(staticInstance.abi_Compare(duration1, duration2, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Duration FromTimeSpan(Windows.Foundation.TimeSpan timeSpan)
	{
		Windows.UI.Xaml.Duration _ret;
		Debug.OK(staticInstance.abi_FromTimeSpan(timeSpan, &_ret));
		return _ret;
	}
	static bool GetHasTimeSpan(Windows.UI.Xaml.Duration target)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GetHasTimeSpan(target, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Duration Add(Windows.UI.Xaml.Duration target, Windows.UI.Xaml.Duration duration)
	{
		Windows.UI.Xaml.Duration _ret;
		Debug.OK(staticInstance.abi_Add(target, duration, &_ret));
		return _ret;
	}
	static bool Equals(Windows.UI.Xaml.Duration target, Windows.UI.Xaml.Duration value)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_Equals(target, value, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Duration Subtract(Windows.UI.Xaml.Duration target, Windows.UI.Xaml.Duration duration)
	{
		Windows.UI.Xaml.Duration _ret;
		Debug.OK(staticInstance.abi_Subtract(target, duration, &_ret));
		return _ret;
	}
}

interface ElementSoundPlayer : Windows.UI.Xaml.IElementSoundPlayer
{
	private static Windows.UI.Xaml.IElementSoundPlayerStatics _staticInstance;
	public static Windows.UI.Xaml.IElementSoundPlayerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IElementSoundPlayerStatics);
		return _staticInstance;
	}
	static double Volume()
	{
		double _ret;
		Debug.OK(staticInstance.get_Volume(&_ret));
		return _ret;
	}
	static void Volume(double value)
	{
		Debug.OK(staticInstance.set_Volume(value));
	}
	static Windows.UI.Xaml.ElementSoundPlayerState State()
	{
		Windows.UI.Xaml.ElementSoundPlayerState _ret;
		Debug.OK(staticInstance.get_State(&_ret));
		return _ret;
	}
	static void State(Windows.UI.Xaml.ElementSoundPlayerState value)
	{
		Debug.OK(staticInstance.set_State(value));
	}
	static void Play(Windows.UI.Xaml.ElementSoundKind sound)
	{
		Debug.OK(staticInstance.abi_Play(sound));
	}
}

interface EventTrigger : Windows.UI.Xaml.TriggerBase, Windows.UI.Xaml.IEventTrigger
{
extern(Windows):
	final Windows.UI.Xaml.RoutedEvent RoutedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK((cast(Windows.UI.Xaml.IEventTrigger)this.asInterface(uuid("def8f855-0b49-4087-b1a9-b8b38488f786"))).get_RoutedEvent(&_ret));
		return _ret;
	}
	final void RoutedEvent(Windows.UI.Xaml.RoutedEvent value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IEventTrigger)this.asInterface(uuid("def8f855-0b49-4087-b1a9-b8b38488f786"))).set_RoutedEvent(value));
	}
	final Windows.UI.Xaml.TriggerActionCollection Actions()
	{
		Windows.UI.Xaml.TriggerActionCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.IEventTrigger)this.asInterface(uuid("def8f855-0b49-4087-b1a9-b8b38488f786"))).get_Actions(&_ret));
		return _ret;
	}
	static EventTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EventTrigger).abi_ActivateInstance(&ret));
		return cast(EventTrigger) ret;
	}
}

interface ExceptionRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.IExceptionRoutedEventArgs
{
extern(Windows):
	final HSTRING ErrorMessage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IExceptionRoutedEventArgs)this.asInterface(uuid("dd9ff16a-4b62-4a6c-a49d-0671ef6136be"))).get_ErrorMessage(&_ret));
		return _ret;
	}
}
@makable!(ExceptionRoutedEventArgs, ExceptionRoutedEventArgs, Windows.UI.Xaml.IExceptionRoutedEventArgsFactory)
class ExceptionRoutedEventArgsT(Base) : AgileObject!Base, ExceptionRoutedEventArgs
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_ErrorMessage(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IExceptionRoutedEventArgs)m_inner.asInterface(uuid("dd9ff16a-4b62-4a6c-a49d-0671ef6136be"))).get_ErrorMessage(return_value); }

	override HRESULT get_OriginalSource(IInspectable* return_value) { return (cast(Windows.UI.Xaml.IRoutedEventArgs)m_inner.asInterface(uuid("5c985ac6-d802-4b38-a223-bf070c43fedf"))).get_OriginalSource(return_value); }

	this() {}
	IInspectable m_inner;
}

interface FrameworkElement : Windows.UI.Xaml.UIElement, Windows.UI.Xaml.IFrameworkElement, Windows.UI.Xaml.IFrameworkElementOverrides, Windows.UI.Xaml.IFrameworkElement2, Windows.UI.Xaml.IFrameworkElementOverrides2, Windows.UI.Xaml.IFrameworkElement3, Windows.UI.Xaml.IFrameworkElement4
{
extern(Windows):
	final Windows.UI.Xaml.TriggerCollection Triggers()
	{
		Windows.UI.Xaml.TriggerCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Triggers(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.ResourceDictionary Resources()
	{
		Windows.UI.Xaml.ResourceDictionary _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Resources(&_ret));
		return _ret;
	}
	final void Resources(Windows.UI.Xaml.ResourceDictionary value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Resources(value));
	}
	final IInspectable Tag()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Tag(&_ret));
		return _ret;
	}
	final void Tag(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Tag(value));
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Language(&_ret));
		return _ret;
	}
	final void Language(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Language(value));
	}
	final double ActualWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_ActualWidth(&_ret));
		return _ret;
	}
	final double ActualHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_ActualHeight(&_ret));
		return _ret;
	}
	final double Width()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Width(&_ret));
		return _ret;
	}
	final void Width(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Width(value));
	}
	final double Height()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Height(&_ret));
		return _ret;
	}
	final void Height(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Height(value));
	}
	final double MinWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MinWidth(&_ret));
		return _ret;
	}
	final void MinWidth(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MinWidth(value));
	}
	final double MaxWidth()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MaxWidth(&_ret));
		return _ret;
	}
	final void MaxWidth(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MaxWidth(value));
	}
	final double MinHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MinHeight(&_ret));
		return _ret;
	}
	final void MinHeight(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MinHeight(value));
	}
	final double MaxHeight()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MaxHeight(&_ret));
		return _ret;
	}
	final void MaxHeight(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MaxHeight(value));
	}
	final Windows.UI.Xaml.HorizontalAlignment HorizontalAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_HorizontalAlignment(&_ret));
		return _ret;
	}
	final void HorizontalAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_HorizontalAlignment(value));
	}
	final Windows.UI.Xaml.VerticalAlignment VerticalAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_VerticalAlignment(&_ret));
		return _ret;
	}
	final void VerticalAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_VerticalAlignment(value));
	}
	final Windows.UI.Xaml.Thickness Margin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Margin(&_ret));
		return _ret;
	}
	final void Margin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Margin(value));
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Name(value));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_BaseUri(&_ret));
		return _ret;
	}
	final IInspectable DataContext()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_DataContext(&_ret));
		return _ret;
	}
	final void DataContext(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_DataContext(value));
	}
	final Windows.UI.Xaml.Style Style()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Style(&_ret));
		return _ret;
	}
	final void Style(Windows.UI.Xaml.Style value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Style(value));
	}
	final Windows.UI.Xaml.DependencyObject Parent()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Parent(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.FlowDirection FlowDirection()
	{
		Windows.UI.Xaml.FlowDirection _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_FlowDirection(&_ret));
		return _ret;
	}
	final void FlowDirection(Windows.UI.Xaml.FlowDirection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_FlowDirection(value));
	}
	final EventRegistrationToken OnLoaded(void delegate(IInspectable, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_Loaded(event!(Windows.UI.Xaml.RoutedEventHandler, IInspectable, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeLoaded(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_Loaded(token));
	}
	final EventRegistrationToken OnUnloaded(void delegate(IInspectable, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_Unloaded(event!(Windows.UI.Xaml.RoutedEventHandler, IInspectable, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUnloaded(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_Unloaded(token));
	}
	final EventRegistrationToken OnSizeChanged(void delegate(IInspectable, Windows.UI.Xaml.SizeChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_SizeChanged(event!(Windows.UI.Xaml.SizeChangedEventHandler, IInspectable, Windows.UI.Xaml.SizeChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSizeChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_SizeChanged(token));
	}
	final EventRegistrationToken OnLayoutUpdated(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_LayoutUpdated(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeLayoutUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_LayoutUpdated(token));
	}
	final IInspectable FindName(HSTRING name)
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).abi_FindName(name, &_ret));
		return _ret;
	}
	final void SetBinding(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingBase binding)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement)this.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).abi_SetBinding(dp, binding));
	}
	final Windows.UI.Xaml.ElementTheme RequestedTheme()
	{
		Windows.UI.Xaml.ElementTheme _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement2)this.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).get_RequestedTheme(&_ret));
		return _ret;
	}
	final void RequestedTheme(Windows.UI.Xaml.ElementTheme value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement2)this.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).set_RequestedTheme(value));
	}
	final EventRegistrationToken OnDataContextChanged(void delegate(Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.DataContextChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement2)this.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).add_DataContextChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.DataContextChangedEventArgs), Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.DataContextChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDataContextChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement2)this.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).remove_DataContextChanged(token));
	}
	final Windows.UI.Xaml.Data.BindingExpression GetBindingExpression(Windows.UI.Xaml.DependencyProperty dp)
	{
		Windows.UI.Xaml.Data.BindingExpression _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement2)this.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).abi_GetBindingExpression(dp, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnLoading(void delegate(Windows.UI.Xaml.FrameworkElement, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement3)this.asInterface(uuid("c81c2720-5c52-4bbe-a199-2b1e34f00f70"))).add_Loading(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.FrameworkElement, IInspectable), Windows.UI.Xaml.FrameworkElement, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeLoading(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement3)this.asInterface(uuid("c81c2720-5c52-4bbe-a199-2b1e34f00f70"))).remove_Loading(token));
	}
	final bool AllowFocusOnInteraction()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_AllowFocusOnInteraction(&_ret));
		return _ret;
	}
	final void AllowFocusOnInteraction(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_AllowFocusOnInteraction(value));
	}
	final Windows.UI.Xaml.Thickness FocusVisualMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualMargin(&_ret));
		return _ret;
	}
	final void FocusVisualMargin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualMargin(value));
	}
	final Windows.UI.Xaml.Thickness FocusVisualSecondaryThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualSecondaryThickness(&_ret));
		return _ret;
	}
	final void FocusVisualSecondaryThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualSecondaryThickness(value));
	}
	final Windows.UI.Xaml.Thickness FocusVisualPrimaryThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualPrimaryThickness(&_ret));
		return _ret;
	}
	final void FocusVisualPrimaryThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualPrimaryThickness(value));
	}
	final Windows.UI.Xaml.Media.Brush FocusVisualSecondaryBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualSecondaryBrush(&_ret));
		return _ret;
	}
	final void FocusVisualSecondaryBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualSecondaryBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush FocusVisualPrimaryBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualPrimaryBrush(&_ret));
		return _ret;
	}
	final void FocusVisualPrimaryBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualPrimaryBrush(value));
	}
	final bool AllowFocusWhenDisabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_AllowFocusWhenDisabled(&_ret));
		return _ret;
	}
	final void AllowFocusWhenDisabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IFrameworkElement4)this.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_AllowFocusWhenDisabled(value));
	}

	private static Windows.UI.Xaml.IFrameworkElementStatics _staticInstance;
	public static Windows.UI.Xaml.IFrameworkElementStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IFrameworkElementStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty TagProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TagProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty LanguageProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_LanguageProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ActualWidthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ActualWidthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ActualHeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ActualHeightProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty WidthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_WidthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty HeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_HeightProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty MinWidthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MinWidthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty MaxWidthProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MaxWidthProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty MinHeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MinHeightProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty MaxHeightProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MaxHeightProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty HorizontalAlignmentProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_HorizontalAlignmentProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty VerticalAlignmentProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_VerticalAlignmentProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty MarginProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_MarginProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty NameProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_NameProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty DataContextProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DataContextProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty StyleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_StyleProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty FlowDirectionProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_FlowDirectionProperty(&_ret));
		return _ret;
	}
	static FrameworkElement New()
	{
		IInspectable outer, inner;
		FrameworkElement ret;
		Debug.OK(activationFactory!(FrameworkElement, Windows.UI.Xaml.IFrameworkElementFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(FrameworkElement, FrameworkElement, Windows.UI.Xaml.IFrameworkElementFactory)
class FrameworkElementT(Base) : AgileObject!Base, FrameworkElement
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Triggers(Windows.UI.Xaml.TriggerCollection* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Triggers(return_value); }
	override HRESULT get_Resources(Windows.UI.Xaml.ResourceDictionary* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Resources(return_value); }
	override HRESULT set_Resources(Windows.UI.Xaml.ResourceDictionary value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Resources(value); }
	override HRESULT get_Tag(IInspectable* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Tag(return_value); }
	override HRESULT set_Tag(IInspectable value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Tag(value); }
	override HRESULT get_Language(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Language(return_value); }
	override HRESULT set_Language(HSTRING value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Language(value); }
	override HRESULT get_ActualWidth(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_ActualWidth(return_value); }
	override HRESULT get_ActualHeight(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_ActualHeight(return_value); }
	override HRESULT get_Width(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Width(return_value); }
	override HRESULT set_Width(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Width(value); }
	override HRESULT get_Height(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Height(return_value); }
	override HRESULT set_Height(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Height(value); }
	override HRESULT get_MinWidth(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MinWidth(return_value); }
	override HRESULT set_MinWidth(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MinWidth(value); }
	override HRESULT get_MaxWidth(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MaxWidth(return_value); }
	override HRESULT set_MaxWidth(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MaxWidth(value); }
	override HRESULT get_MinHeight(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MinHeight(return_value); }
	override HRESULT set_MinHeight(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MinHeight(value); }
	override HRESULT get_MaxHeight(double* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_MaxHeight(return_value); }
	override HRESULT set_MaxHeight(double value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_MaxHeight(value); }
	override HRESULT get_HorizontalAlignment(Windows.UI.Xaml.HorizontalAlignment* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_HorizontalAlignment(return_value); }
	override HRESULT set_HorizontalAlignment(Windows.UI.Xaml.HorizontalAlignment value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_HorizontalAlignment(value); }
	override HRESULT get_VerticalAlignment(Windows.UI.Xaml.VerticalAlignment* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_VerticalAlignment(return_value); }
	override HRESULT set_VerticalAlignment(Windows.UI.Xaml.VerticalAlignment value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_VerticalAlignment(value); }
	override HRESULT get_Margin(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Margin(return_value); }
	override HRESULT set_Margin(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Margin(value); }
	override HRESULT get_Name(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Name(return_value); }
	override HRESULT set_Name(HSTRING value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Name(value); }
	override HRESULT get_BaseUri(Windows.Foundation.Uri* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_BaseUri(return_value); }
	override HRESULT get_DataContext(IInspectable* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_DataContext(return_value); }
	override HRESULT set_DataContext(IInspectable value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_DataContext(value); }
	override HRESULT get_Style(Windows.UI.Xaml.Style* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Style(return_value); }
	override HRESULT set_Style(Windows.UI.Xaml.Style value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_Style(value); }
	override HRESULT get_Parent(Windows.UI.Xaml.DependencyObject* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_Parent(return_value); }
	override HRESULT get_FlowDirection(Windows.UI.Xaml.FlowDirection* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).get_FlowDirection(return_value); }
	override HRESULT set_FlowDirection(Windows.UI.Xaml.FlowDirection value) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).set_FlowDirection(value); }
	override HRESULT add_Loaded(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_Loaded(value, return_token); }
	override HRESULT remove_Loaded(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_Loaded(token); }
	override HRESULT add_Unloaded(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_Unloaded(value, return_token); }
	override HRESULT remove_Unloaded(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_Unloaded(token); }
	override HRESULT add_SizeChanged(Windows.UI.Xaml.SizeChangedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_SizeChanged(value, return_token); }
	override HRESULT remove_SizeChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_SizeChanged(token); }
	override HRESULT add_LayoutUpdated(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).add_LayoutUpdated(value, return_token); }
	override HRESULT remove_LayoutUpdated(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).remove_LayoutUpdated(token); }
	override HRESULT abi_FindName(HSTRING name, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).abi_FindName(name, return_returnValue); }
	override HRESULT abi_SetBinding(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingBase binding) { return (cast(Windows.UI.Xaml.IFrameworkElement)m_inner.asInterface(uuid("a391d09b-4a99-4b7c-9d8d-6fa5d01f6fbf"))).abi_SetBinding(dp, binding); }

	override HRESULT abi_MeasureOverride(Windows.Foundation.Size availableSize, Windows.Foundation.Size* return_returnValue) { this.MeasureOverride(availableSize, return_returnValue); return S_OK; }
	void MeasureOverride(Windows.Foundation.Size availableSize, Windows.Foundation.Size* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides)m_inner.asInterface(uuid("da007e54-b3c2-4b9a-aa8e-d3f071262b97"))).abi_MeasureOverride(availableSize, return_returnValue)); }
	override HRESULT abi_ArrangeOverride(Windows.Foundation.Size finalSize, Windows.Foundation.Size* return_returnValue) { this.ArrangeOverride(finalSize, return_returnValue); return S_OK; }
	void ArrangeOverride(Windows.Foundation.Size finalSize, Windows.Foundation.Size* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides)m_inner.asInterface(uuid("da007e54-b3c2-4b9a-aa8e-d3f071262b97"))).abi_ArrangeOverride(finalSize, return_returnValue)); }
	override HRESULT abi_OnApplyTemplate() { this.OnApplyTemplate(); return S_OK; }
	void OnApplyTemplate() { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides)m_inner.asInterface(uuid("da007e54-b3c2-4b9a-aa8e-d3f071262b97"))).abi_OnApplyTemplate()); }

	override HRESULT get_RequestedTheme(Windows.UI.Xaml.ElementTheme* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).get_RequestedTheme(return_value); }
	override HRESULT set_RequestedTheme(Windows.UI.Xaml.ElementTheme value) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).set_RequestedTheme(value); }
	override HRESULT add_DataContextChanged(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.FrameworkElement, Windows.UI.Xaml.DataContextChangedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).add_DataContextChanged(value, return_token); }
	override HRESULT remove_DataContextChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).remove_DataContextChanged(token); }
	override HRESULT abi_GetBindingExpression(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingExpression* return_returnValue) { return (cast(Windows.UI.Xaml.IFrameworkElement2)m_inner.asInterface(uuid("f19104be-422a-4904-a52f-ee72010429e5"))).abi_GetBindingExpression(dp, return_returnValue); }

	override HRESULT abi_GoToElementStateCore(HSTRING stateName, bool useTransitions, bool* return_returnValue) { this.GoToElementStateCore(stateName, useTransitions, return_returnValue); return S_OK; }
	void GoToElementStateCore(HSTRING stateName, bool useTransitions, bool* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IFrameworkElementOverrides2)m_inner.asInterface(uuid("cb5cd2b9-e3b4-458c-b64e-1434fd1bd88a"))).abi_GoToElementStateCore(stateName, useTransitions, return_returnValue)); }

	override HRESULT add_Loading(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.FrameworkElement, IInspectable) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IFrameworkElement3)m_inner.asInterface(uuid("c81c2720-5c52-4bbe-a199-2b1e34f00f70"))).add_Loading(value, return_token); }
	override HRESULT remove_Loading(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IFrameworkElement3)m_inner.asInterface(uuid("c81c2720-5c52-4bbe-a199-2b1e34f00f70"))).remove_Loading(token); }

	override HRESULT get_AllowFocusOnInteraction(bool* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_AllowFocusOnInteraction(return_value); }
	override HRESULT set_AllowFocusOnInteraction(bool value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_AllowFocusOnInteraction(value); }
	override HRESULT get_FocusVisualMargin(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualMargin(return_value); }
	override HRESULT set_FocusVisualMargin(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualMargin(value); }
	override HRESULT get_FocusVisualSecondaryThickness(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualSecondaryThickness(return_value); }
	override HRESULT set_FocusVisualSecondaryThickness(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualSecondaryThickness(value); }
	override HRESULT get_FocusVisualPrimaryThickness(Windows.UI.Xaml.Thickness* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualPrimaryThickness(return_value); }
	override HRESULT set_FocusVisualPrimaryThickness(Windows.UI.Xaml.Thickness value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualPrimaryThickness(value); }
	override HRESULT get_FocusVisualSecondaryBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualSecondaryBrush(return_value); }
	override HRESULT set_FocusVisualSecondaryBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualSecondaryBrush(value); }
	override HRESULT get_FocusVisualPrimaryBrush(Windows.UI.Xaml.Media.Brush* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_FocusVisualPrimaryBrush(return_value); }
	override HRESULT set_FocusVisualPrimaryBrush(Windows.UI.Xaml.Media.Brush value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_FocusVisualPrimaryBrush(value); }
	override HRESULT get_AllowFocusWhenDisabled(bool* return_value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).get_AllowFocusWhenDisabled(return_value); }
	override HRESULT set_AllowFocusWhenDisabled(bool value) { return (cast(Windows.UI.Xaml.IFrameworkElement4)m_inner.asInterface(uuid("6b765bb3-fba3-4404-bdee-1a45d1ca5f21"))).set_AllowFocusWhenDisabled(value); }

	override HRESULT get_DesiredSize(Windows.Foundation.Size* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_DesiredSize(return_value); }
	override HRESULT get_AllowDrop(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_AllowDrop(return_value); }
	override HRESULT set_AllowDrop(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_AllowDrop(value); }
	override HRESULT get_Opacity(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Opacity(return_value); }
	override HRESULT set_Opacity(double value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Opacity(value); }
	override HRESULT get_Clip(Windows.UI.Xaml.Media.RectangleGeometry* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Clip(return_value); }
	override HRESULT set_Clip(Windows.UI.Xaml.Media.RectangleGeometry value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Clip(value); }
	override HRESULT get_RenderTransform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderTransform(return_value); }
	override HRESULT set_RenderTransform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_RenderTransform(value); }
	override HRESULT get_Projection(Windows.UI.Xaml.Media.Projection* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Projection(return_value); }
	override HRESULT set_Projection(Windows.UI.Xaml.Media.Projection value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Projection(value); }
	override HRESULT get_RenderTransformOrigin(Windows.Foundation.Point* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderTransformOrigin(return_value); }
	override HRESULT set_RenderTransformOrigin(Windows.Foundation.Point value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_RenderTransformOrigin(value); }
	override HRESULT get_IsHitTestVisible(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsHitTestVisible(return_value); }
	override HRESULT set_IsHitTestVisible(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsHitTestVisible(value); }
	override HRESULT get_Visibility(Windows.UI.Xaml.Visibility* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Visibility(return_value); }
	override HRESULT set_Visibility(Windows.UI.Xaml.Visibility value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Visibility(value); }
	override HRESULT get_RenderSize(Windows.Foundation.Size* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderSize(return_value); }
	override HRESULT get_UseLayoutRounding(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_UseLayoutRounding(return_value); }
	override HRESULT set_UseLayoutRounding(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_UseLayoutRounding(value); }
	override HRESULT get_Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Transitions(return_value); }
	override HRESULT set_Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Transitions(value); }
	override HRESULT get_CacheMode(Windows.UI.Xaml.Media.CacheMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_CacheMode(return_value); }
	override HRESULT set_CacheMode(Windows.UI.Xaml.Media.CacheMode value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_CacheMode(value); }
	override HRESULT get_IsTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsTapEnabled(return_value); }
	override HRESULT set_IsTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsTapEnabled(value); }
	override HRESULT get_IsDoubleTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsDoubleTapEnabled(return_value); }
	override HRESULT set_IsDoubleTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsDoubleTapEnabled(value); }
	override HRESULT get_IsRightTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsRightTapEnabled(return_value); }
	override HRESULT set_IsRightTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsRightTapEnabled(value); }
	override HRESULT get_IsHoldingEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsHoldingEnabled(return_value); }
	override HRESULT set_IsHoldingEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsHoldingEnabled(value); }
	override HRESULT get_ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_ManipulationMode(return_value); }
	override HRESULT set_ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_ManipulationMode(value); }
	override HRESULT get_PointerCaptures(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Input.Pointer)* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_PointerCaptures(return_value); }
	override HRESULT add_KeyUp(Windows.UI.Xaml.Input.KeyEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_KeyUp(value, return_token); }
	override HRESULT remove_KeyUp(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_KeyUp(token); }
	override HRESULT add_KeyDown(Windows.UI.Xaml.Input.KeyEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_KeyDown(value, return_token); }
	override HRESULT remove_KeyDown(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_KeyDown(token); }
	override HRESULT add_GotFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_GotFocus(value, return_token); }
	override HRESULT remove_GotFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_GotFocus(token); }
	override HRESULT add_LostFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_LostFocus(value, return_token); }
	override HRESULT remove_LostFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_LostFocus(token); }
	override HRESULT add_DragEnter(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragEnter(value, return_token); }
	override HRESULT remove_DragEnter(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragEnter(token); }
	override HRESULT add_DragLeave(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragLeave(value, return_token); }
	override HRESULT remove_DragLeave(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragLeave(token); }
	override HRESULT add_DragOver(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragOver(value, return_token); }
	override HRESULT remove_DragOver(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragOver(token); }
	override HRESULT add_Drop(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Drop(value, return_token); }
	override HRESULT remove_Drop(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Drop(token); }
	override HRESULT add_PointerPressed(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerPressed(value, return_token); }
	override HRESULT remove_PointerPressed(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerPressed(token); }
	override HRESULT add_PointerMoved(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerMoved(value, return_token); }
	override HRESULT remove_PointerMoved(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerMoved(token); }
	override HRESULT add_PointerReleased(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerReleased(value, return_token); }
	override HRESULT remove_PointerReleased(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerReleased(token); }
	override HRESULT add_PointerEntered(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerEntered(value, return_token); }
	override HRESULT remove_PointerEntered(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerEntered(token); }
	override HRESULT add_PointerExited(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerExited(value, return_token); }
	override HRESULT remove_PointerExited(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerExited(token); }
	override HRESULT add_PointerCaptureLost(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerCaptureLost(value, return_token); }
	override HRESULT remove_PointerCaptureLost(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerCaptureLost(token); }
	override HRESULT add_PointerCanceled(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerCanceled(value, return_token); }
	override HRESULT remove_PointerCanceled(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerCanceled(token); }
	override HRESULT add_PointerWheelChanged(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerWheelChanged(value, return_token); }
	override HRESULT remove_PointerWheelChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerWheelChanged(token); }
	override HRESULT add_Tapped(Windows.UI.Xaml.Input.TappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Tapped(value, return_token); }
	override HRESULT remove_Tapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Tapped(token); }
	override HRESULT add_DoubleTapped(Windows.UI.Xaml.Input.DoubleTappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DoubleTapped(value, return_token); }
	override HRESULT remove_DoubleTapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DoubleTapped(token); }
	override HRESULT add_Holding(Windows.UI.Xaml.Input.HoldingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Holding(value, return_token); }
	override HRESULT remove_Holding(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Holding(token); }
	override HRESULT add_RightTapped(Windows.UI.Xaml.Input.RightTappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_RightTapped(value, return_token); }
	override HRESULT remove_RightTapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_RightTapped(token); }
	override HRESULT add_ManipulationStarting(Windows.UI.Xaml.Input.ManipulationStartingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationStarting(value, return_token); }
	override HRESULT remove_ManipulationStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationStarting(token); }
	override HRESULT add_ManipulationInertiaStarting(Windows.UI.Xaml.Input.ManipulationInertiaStartingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationInertiaStarting(value, return_token); }
	override HRESULT remove_ManipulationInertiaStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationInertiaStarting(token); }
	override HRESULT add_ManipulationStarted(Windows.UI.Xaml.Input.ManipulationStartedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationStarted(value, return_token); }
	override HRESULT remove_ManipulationStarted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationStarted(token); }
	override HRESULT add_ManipulationDelta(Windows.UI.Xaml.Input.ManipulationDeltaEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationDelta(value, return_token); }
	override HRESULT remove_ManipulationDelta(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationDelta(token); }
	override HRESULT add_ManipulationCompleted(Windows.UI.Xaml.Input.ManipulationCompletedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationCompleted(value, return_token); }
	override HRESULT remove_ManipulationCompleted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationCompleted(token); }
	override HRESULT abi_Measure(Windows.Foundation.Size availableSize) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_Measure(availableSize); }
	override HRESULT abi_Arrange(Windows.Foundation.Rect finalRect) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_Arrange(finalRect); }
	override HRESULT abi_CapturePointer(Windows.UI.Xaml.Input.Pointer value, bool* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_CapturePointer(value, return_returnValue); }
	override HRESULT abi_ReleasePointerCapture(Windows.UI.Xaml.Input.Pointer value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_ReleasePointerCapture(value); }
	override HRESULT abi_ReleasePointerCaptures() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_ReleasePointerCaptures(); }
	override HRESULT abi_AddHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler, bool handledEventsToo) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_AddHandler(routedEvent, handler, handledEventsToo); }
	override HRESULT abi_RemoveHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_RemoveHandler(routedEvent, handler); }
	override HRESULT abi_TransformToVisual(Windows.UI.Xaml.UIElement visual, Windows.UI.Xaml.Media.GeneralTransform* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_TransformToVisual(visual, return_returnValue); }
	override HRESULT abi_InvalidateMeasure() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_InvalidateMeasure(); }
	override HRESULT abi_InvalidateArrange() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_InvalidateArrange(); }
	override HRESULT abi_UpdateLayout() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_UpdateLayout(); }

	override HRESULT abi_OnCreateAutomationPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue) { this.OnCreateAutomationPeer(return_returnValue); return S_OK; }
	void OnCreateAutomationPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_OnCreateAutomationPeer(return_returnValue)); }
	override HRESULT abi_OnDisconnectVisualChildren() { this.OnDisconnectVisualChildren(); return S_OK; }
	void OnDisconnectVisualChildren() { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_OnDisconnectVisualChildren()); }
	override HRESULT abi_FindSubElementsForTouchTargeting(Windows.Foundation.Point point, Windows.Foundation.Rect boundingRect, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point))* return_returnValue) { this.FindSubElementsForTouchTargeting(point, boundingRect, return_returnValue); return S_OK; }
	void FindSubElementsForTouchTargeting(Windows.Foundation.Point point, Windows.Foundation.Rect boundingRect, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point))* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_FindSubElementsForTouchTargeting(point, boundingRect, return_returnValue)); }

	override HRESULT get_CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).get_CompositeMode(return_value); }
	override HRESULT set_CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode value) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).set_CompositeMode(value); }
	override HRESULT abi_CancelDirectManipulations(bool* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).abi_CancelDirectManipulations(return_returnValue); }

	override HRESULT get_Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D* return_value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).get_Transform3D(return_value); }
	override HRESULT set_Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).set_Transform3D(value); }
	override HRESULT get_CanDrag(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).get_CanDrag(return_value); }
	override HRESULT set_CanDrag(bool value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).set_CanDrag(value); }
	override HRESULT add_DragStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DragStartingEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).add_DragStarting(value, return_token); }
	override HRESULT remove_DragStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).remove_DragStarting(token); }
	override HRESULT add_DropCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DropCompletedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).add_DropCompleted(value, return_token); }
	override HRESULT remove_DropCompleted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).remove_DropCompleted(token); }
	override HRESULT abi_StartDragAsync(Windows.UI.Input.PointerPoint pointerPoint, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).abi_StartDragAsync(pointerPoint, return_returnValue); }

	override HRESULT get_ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_ContextFlyout(return_value); }
	override HRESULT set_ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_ContextFlyout(value); }
	override HRESULT get_ExitDisplayModeOnAccessKeyInvoked(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_ExitDisplayModeOnAccessKeyInvoked(return_value); }
	override HRESULT set_ExitDisplayModeOnAccessKeyInvoked(bool value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_ExitDisplayModeOnAccessKeyInvoked(value); }
	override HRESULT get_IsAccessKeyScope(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_IsAccessKeyScope(return_value); }
	override HRESULT set_IsAccessKeyScope(bool value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_IsAccessKeyScope(value); }
	override HRESULT get_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_AccessKeyScopeOwner(return_value); }
	override HRESULT set_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_AccessKeyScopeOwner(value); }
	override HRESULT get_AccessKey(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_AccessKey(return_value); }
	override HRESULT set_AccessKey(HSTRING value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_AccessKey(value); }
	override HRESULT add_ContextRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.ContextRequestedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_ContextRequested(value, return_token); }
	override HRESULT remove_ContextRequested(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_ContextRequested(token); }
	override HRESULT add_ContextCanceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.RoutedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_ContextCanceled(value, return_token); }
	override HRESULT remove_ContextCanceled(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_ContextCanceled(token); }
	override HRESULT add_AccessKeyDisplayRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyDisplayRequested(value, return_token); }
	override HRESULT remove_AccessKeyDisplayRequested(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyDisplayRequested(token); }
	override HRESULT add_AccessKeyDisplayDismissed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyDisplayDismissed(value, return_token); }
	override HRESULT remove_AccessKeyDisplayDismissed(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyDisplayDismissed(token); }
	override HRESULT add_AccessKeyInvoked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyInvoked(value, return_token); }
	override HRESULT remove_AccessKeyInvoked(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyInvoked(token); }

	override HRESULT get_Lights(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.XamlLight)* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_Lights(return_value); }
	override HRESULT get_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipPlacementMode(return_value); }
	override HRESULT set_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipPlacementMode(value); }
	override HRESULT get_KeyTipHorizontalOffset(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipHorizontalOffset(return_value); }
	override HRESULT set_KeyTipHorizontalOffset(double value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipHorizontalOffset(value); }
	override HRESULT get_KeyTipVerticalOffset(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipVerticalOffset(return_value); }
	override HRESULT set_KeyTipVerticalOffset(double value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipVerticalOffset(value); }
	override HRESULT get_XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusKeyboardNavigation(return_value); }
	override HRESULT set_XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusKeyboardNavigation(value); }
	override HRESULT get_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusUpNavigationStrategy(return_value); }
	override HRESULT set_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusUpNavigationStrategy(value); }
	override HRESULT get_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusDownNavigationStrategy(return_value); }
	override HRESULT set_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusDownNavigationStrategy(value); }
	override HRESULT get_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusLeftNavigationStrategy(return_value); }
	override HRESULT set_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusLeftNavigationStrategy(value); }
	override HRESULT get_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusRightNavigationStrategy(return_value); }
	override HRESULT set_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusRightNavigationStrategy(value); }
	override HRESULT get_HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_HighContrastAdjustment(return_value); }
	override HRESULT set_HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_HighContrastAdjustment(value); }
	override HRESULT get_TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_TabFocusNavigation(return_value); }
	override HRESULT set_TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_TabFocusNavigation(value); }
	override HRESULT add_GettingFocus(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.GettingFocusEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_GettingFocus(value, return_token); }
	override HRESULT remove_GettingFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_GettingFocus(token); }
	override HRESULT add_LosingFocus(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.LosingFocusEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_LosingFocus(value, return_token); }
	override HRESULT remove_LosingFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_LosingFocus(token); }
	override HRESULT add_NoFocusCandidateFound(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.NoFocusCandidateFoundEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_NoFocusCandidateFound(value, return_token); }
	override HRESULT remove_NoFocusCandidateFound(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_NoFocusCandidateFound(token); }
	override HRESULT abi_StartBringIntoView() { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).abi_StartBringIntoView(); }
	override HRESULT abi_StartBringIntoViewWithOptions(Windows.UI.Xaml.BringIntoViewOptions options) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).abi_StartBringIntoViewWithOptions(options); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface FrameworkTemplate : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IFrameworkTemplate
{
	static FrameworkTemplate New()
	{
		IInspectable outer, inner;
		FrameworkTemplate ret;
		Debug.OK(activationFactory!(FrameworkTemplate, Windows.UI.Xaml.IFrameworkTemplateFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(FrameworkTemplate, FrameworkTemplate, Windows.UI.Xaml.IFrameworkTemplateFactory)
class FrameworkTemplateT(Base) : AgileObject!Base, FrameworkTemplate
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface FrameworkView : Windows.UI.Xaml.IFrameworkView, Windows.ApplicationModel.Core.IFrameworkView
{
extern(Windows):
	final void Initialize(Windows.ApplicationModel.Core.CoreApplicationView applicationView)
	{
		Debug.OK((cast(Windows.ApplicationModel.Core.IFrameworkView)this.asInterface(uuid("faab5cd0-8924-45ac-ad0f-a08fae5d0324"))).abi_Initialize(applicationView));
	}
	final void SetWindow(Windows.UI.Core.CoreWindow window)
	{
		Debug.OK((cast(Windows.ApplicationModel.Core.IFrameworkView)this.asInterface(uuid("faab5cd0-8924-45ac-ad0f-a08fae5d0324"))).abi_SetWindow(window));
	}
	final void Load(HSTRING entryPoint)
	{
		Debug.OK((cast(Windows.ApplicationModel.Core.IFrameworkView)this.asInterface(uuid("faab5cd0-8924-45ac-ad0f-a08fae5d0324"))).abi_Load(entryPoint));
	}
	final void Run()
	{
		Debug.OK((cast(Windows.ApplicationModel.Core.IFrameworkView)this.asInterface(uuid("faab5cd0-8924-45ac-ad0f-a08fae5d0324"))).abi_Run());
	}
	final void Uninitialize()
	{
		Debug.OK((cast(Windows.ApplicationModel.Core.IFrameworkView)this.asInterface(uuid("faab5cd0-8924-45ac-ad0f-a08fae5d0324"))).abi_Uninitialize());
	}
	static FrameworkView New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(FrameworkView).abi_ActivateInstance(&ret));
		return cast(FrameworkView) ret;
	}
}

interface FrameworkViewSource : Windows.UI.Xaml.IFrameworkViewSource, Windows.ApplicationModel.Core.IFrameworkViewSource
{
extern(Windows):
	final Windows.ApplicationModel.Core.IFrameworkView CreateView()
	{
		Windows.ApplicationModel.Core.IFrameworkView _ret;
		Debug.OK((cast(Windows.ApplicationModel.Core.IFrameworkViewSource)this.asInterface(uuid("cd770614-65c4-426c-9494-34fc43554862"))).abi_CreateView(&_ret));
		return _ret;
	}
	static FrameworkViewSource New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(FrameworkViewSource).abi_ActivateInstance(&ret));
		return cast(FrameworkViewSource) ret;
	}
}

interface GridLengthHelper : Windows.UI.Xaml.IGridLengthHelper
{
	private static Windows.UI.Xaml.IGridLengthHelperStatics _staticInstance;
	public static Windows.UI.Xaml.IGridLengthHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IGridLengthHelperStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.GridLength Auto()
	{
		Windows.UI.Xaml.GridLength _ret;
		Debug.OK(staticInstance.get_Auto(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.GridLength FromPixels(double pixels)
	{
		Windows.UI.Xaml.GridLength _ret;
		Debug.OK(staticInstance.abi_FromPixels(pixels, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.GridLength FromValueAndType(double value, Windows.UI.Xaml.GridUnitType type)
	{
		Windows.UI.Xaml.GridLength _ret;
		Debug.OK(staticInstance.abi_FromValueAndType(value, type, &_ret));
		return _ret;
	}
	static bool GetIsAbsolute(Windows.UI.Xaml.GridLength target)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GetIsAbsolute(target, &_ret));
		return _ret;
	}
	static bool GetIsAuto(Windows.UI.Xaml.GridLength target)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GetIsAuto(target, &_ret));
		return _ret;
	}
	static bool GetIsStar(Windows.UI.Xaml.GridLength target)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GetIsStar(target, &_ret));
		return _ret;
	}
	static bool Equals(Windows.UI.Xaml.GridLength target, Windows.UI.Xaml.GridLength value)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_Equals(target, value, &_ret));
		return _ret;
	}
}

interface MediaFailedRoutedEventArgs : Windows.UI.Xaml.ExceptionRoutedEventArgs, Windows.UI.Xaml.IMediaFailedRoutedEventArgs
{
extern(Windows):
	final HSTRING ErrorTrace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IMediaFailedRoutedEventArgs)this.asInterface(uuid("46d1fa8d-5149-4153-ba3c-b03e64ee531e"))).get_ErrorTrace(&_ret));
		return _ret;
	}
}

interface PointHelper : Windows.UI.Xaml.IPointHelper
{
	private static Windows.UI.Xaml.IPointHelperStatics _staticInstance;
	public static Windows.UI.Xaml.IPointHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IPointHelperStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Point FromCoordinates(float x, float y)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(staticInstance.abi_FromCoordinates(x, y, &_ret));
		return _ret;
	}
}

interface PropertyMetadata : Windows.UI.Xaml.IPropertyMetadata
{
extern(Windows):
	final IInspectable DefaultValue()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IPropertyMetadata)this.asInterface(uuid("814ef30d-8d18-448a-8644-f2cb51e70380"))).get_DefaultValue(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.CreateDefaultValueCallback CreateDefaultValueCallback()
	{
		Windows.UI.Xaml.CreateDefaultValueCallback _ret;
		Debug.OK((cast(Windows.UI.Xaml.IPropertyMetadata)this.asInterface(uuid("814ef30d-8d18-448a-8644-f2cb51e70380"))).get_CreateDefaultValueCallback(&_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.IPropertyMetadataStatics _staticInstance;
	public static Windows.UI.Xaml.IPropertyMetadataStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IPropertyMetadataStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.PropertyMetadata CreateWithDefaultValue(IInspectable defaultValue)
	{
		Windows.UI.Xaml.PropertyMetadata _ret;
		Debug.OK(staticInstance.abi_CreateWithDefaultValue(defaultValue, &_ret));
		return _ret;
	}
	alias Create = CreateWithDefaultValue;
	static Windows.UI.Xaml.PropertyMetadata CreateWithDefaultValueAndCallback(IInspectable defaultValue, Windows.UI.Xaml.PropertyChangedCallback propertyChangedCallback)
	{
		Windows.UI.Xaml.PropertyMetadata _ret;
		Debug.OK(staticInstance.abi_CreateWithDefaultValueAndCallback(defaultValue, propertyChangedCallback, &_ret));
		return _ret;
	}
	alias Create = CreateWithDefaultValueAndCallback;
	static Windows.UI.Xaml.PropertyMetadata CreateWithFactory(Windows.UI.Xaml.CreateDefaultValueCallback createDefaultValueCallback)
	{
		Windows.UI.Xaml.PropertyMetadata _ret;
		Debug.OK(staticInstance.abi_CreateWithFactory(createDefaultValueCallback, &_ret));
		return _ret;
	}
	alias Create = CreateWithFactory;
	static Windows.UI.Xaml.PropertyMetadata CreateWithFactoryAndCallback(Windows.UI.Xaml.CreateDefaultValueCallback createDefaultValueCallback, Windows.UI.Xaml.PropertyChangedCallback propertyChangedCallback)
	{
		Windows.UI.Xaml.PropertyMetadata _ret;
		Debug.OK(staticInstance.abi_CreateWithFactoryAndCallback(createDefaultValueCallback, propertyChangedCallback, &_ret));
		return _ret;
	}
	alias Create = CreateWithFactoryAndCallback;
}
@makable!(PropertyMetadata, PropertyMetadata, Windows.UI.Xaml.IPropertyMetadataFactory)
class PropertyMetadataT(Base) : AgileObject!Base, PropertyMetadata
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_DefaultValue(IInspectable* return_value) { return (cast(Windows.UI.Xaml.IPropertyMetadata)m_inner.asInterface(uuid("814ef30d-8d18-448a-8644-f2cb51e70380"))).get_DefaultValue(return_value); }
	override HRESULT get_CreateDefaultValueCallback(Windows.UI.Xaml.CreateDefaultValueCallback* return_value) { return (cast(Windows.UI.Xaml.IPropertyMetadata)m_inner.asInterface(uuid("814ef30d-8d18-448a-8644-f2cb51e70380"))).get_CreateDefaultValueCallback(return_value); }

	this() {}
	IInspectable m_inner;
}

interface PropertyPath : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IPropertyPath
{
extern(Windows):
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IPropertyPath)this.asInterface(uuid("300e5d8a-1ff3-4d2c-95ec-27f81debacb8"))).get_Path(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.PropertyPath New(HSTRING path)
	{
		auto factory = factory!(Windows.UI.Xaml.IPropertyPathFactory);
		Windows.UI.Xaml.PropertyPath _ret;
		Debug.OK((cast(Windows.UI.Xaml.IPropertyPathFactory)factory.asInterface(uuid("4e4cdf99-9826-4e56-847c-ca055f162905"))).abi_CreateInstance(path, &_ret));
		return _ret;
	}
}

interface RectHelper : Windows.UI.Xaml.IRectHelper
{
	private static Windows.UI.Xaml.IRectHelperStatics _staticInstance;
	public static Windows.UI.Xaml.IRectHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IRectHelperStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Rect Empty()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(staticInstance.get_Empty(&_ret));
		return _ret;
	}
	static Windows.Foundation.Rect FromCoordinatesAndDimensions(float x, float y, float width, float height)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(staticInstance.abi_FromCoordinatesAndDimensions(x, y, width, height, &_ret));
		return _ret;
	}
	static Windows.Foundation.Rect FromPoints(Windows.Foundation.Point point1, Windows.Foundation.Point point2)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(staticInstance.abi_FromPoints(point1, point2, &_ret));
		return _ret;
	}
	static Windows.Foundation.Rect FromLocationAndSize(Windows.Foundation.Point location, Windows.Foundation.Size size)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(staticInstance.abi_FromLocationAndSize(location, size, &_ret));
		return _ret;
	}
	static bool GetIsEmpty(Windows.Foundation.Rect target)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GetIsEmpty(target, &_ret));
		return _ret;
	}
	static float GetBottom(Windows.Foundation.Rect target)
	{
		float _ret;
		Debug.OK(staticInstance.abi_GetBottom(target, &_ret));
		return _ret;
	}
	static float GetLeft(Windows.Foundation.Rect target)
	{
		float _ret;
		Debug.OK(staticInstance.abi_GetLeft(target, &_ret));
		return _ret;
	}
	static float GetRight(Windows.Foundation.Rect target)
	{
		float _ret;
		Debug.OK(staticInstance.abi_GetRight(target, &_ret));
		return _ret;
	}
	static float GetTop(Windows.Foundation.Rect target)
	{
		float _ret;
		Debug.OK(staticInstance.abi_GetTop(target, &_ret));
		return _ret;
	}
	static bool Contains(Windows.Foundation.Rect target, Windows.Foundation.Point point)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_Contains(target, point, &_ret));
		return _ret;
	}
	static bool Equals(Windows.Foundation.Rect target, Windows.Foundation.Rect value)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_Equals(target, value, &_ret));
		return _ret;
	}
	static Windows.Foundation.Rect Intersect(Windows.Foundation.Rect target, Windows.Foundation.Rect rect)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(staticInstance.abi_Intersect(target, rect, &_ret));
		return _ret;
	}
	static Windows.Foundation.Rect UnionWithPoint(Windows.Foundation.Rect target, Windows.Foundation.Point point)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(staticInstance.abi_UnionWithPoint(target, point, &_ret));
		return _ret;
	}
	alias Union = UnionWithPoint;
	static Windows.Foundation.Rect UnionWithRect(Windows.Foundation.Rect target, Windows.Foundation.Rect rect)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(staticInstance.abi_UnionWithRect(target, rect, &_ret));
		return _ret;
	}
	alias Union = UnionWithRect;
}

interface ResourceDictionary : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IResourceDictionary, Windows.Foundation.Collections.IMap!(IInspectable, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(IInspectable, IInspectable))
{
extern(Windows):
	final Windows.Foundation.Uri Source()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.UI.Xaml.IResourceDictionary)this.asInterface(uuid("c1ea4f24-d6de-4191-8e3a-f48601f7489c"))).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IResourceDictionary)this.asInterface(uuid("c1ea4f24-d6de-4191-8e3a-f48601f7489c"))).set_Source(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.ResourceDictionary) MergedDictionaries()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.ResourceDictionary) _ret;
		Debug.OK((cast(Windows.UI.Xaml.IResourceDictionary)this.asInterface(uuid("c1ea4f24-d6de-4191-8e3a-f48601f7489c"))).get_MergedDictionaries(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(IInspectable, IInspectable) ThemeDictionaries()
	{
		Windows.Foundation.Collections.IMap!(IInspectable, IInspectable) _ret;
		Debug.OK((cast(Windows.UI.Xaml.IResourceDictionary)this.asInterface(uuid("c1ea4f24-d6de-4191-8e3a-f48601f7489c"))).get_ThemeDictionaries(&_ret));
		return _ret;
	}
	final  IInspectable Lookup(IInspectable key)
	{
		 IInspectable _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))this).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(IInspectable key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))this).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(IInspectable,  IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(IInspectable,	IInspectable) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(IInspectable key,	 IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))this).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(IInspectable key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))this).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(IInspectable, IInspectable))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(IInspectable, IInspectable)))this).abi_First(out_first));
	}
	static ResourceDictionary New()
	{
		IInspectable outer, inner;
		ResourceDictionary ret;
		Debug.OK(activationFactory!(ResourceDictionary, Windows.UI.Xaml.IResourceDictionaryFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(ResourceDictionary, ResourceDictionary, Windows.UI.Xaml.IResourceDictionaryFactory)
class ResourceDictionaryT(Base) : AgileObject!Base, ResourceDictionary
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Source(Windows.Foundation.Uri* return_value) { return (cast(Windows.UI.Xaml.IResourceDictionary)m_inner.asInterface(uuid("c1ea4f24-d6de-4191-8e3a-f48601f7489c"))).get_Source(return_value); }
	override HRESULT set_Source(Windows.Foundation.Uri value) { return (cast(Windows.UI.Xaml.IResourceDictionary)m_inner.asInterface(uuid("c1ea4f24-d6de-4191-8e3a-f48601f7489c"))).set_Source(value); }
	override HRESULT get_MergedDictionaries(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.ResourceDictionary)* return_value) { return (cast(Windows.UI.Xaml.IResourceDictionary)m_inner.asInterface(uuid("c1ea4f24-d6de-4191-8e3a-f48601f7489c"))).get_MergedDictionaries(return_value); }
	override HRESULT get_ThemeDictionaries(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable)* return_value) { return (cast(Windows.UI.Xaml.IResourceDictionary)m_inner.asInterface(uuid("c1ea4f24-d6de-4191-8e3a-f48601f7489c"))).get_ThemeDictionaries(return_value); }

	override HRESULT abi_Lookup(IInspectable key,  IInspectable* return_value) { return (cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))m_inner).abi_Lookup(key, return_value); }
	override HRESULT get_Size(uint* return_size) { return (cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))m_inner).get_Size(return_size); }
	override HRESULT abi_HasKey(IInspectable key, bool* return_found) { return (cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))m_inner).abi_HasKey(key, return_found); }
	override HRESULT abi_GetView(Windows.Foundation.Collections.IMapView!(IInspectable,	 IInspectable)* return_view) { return (cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))m_inner).abi_GetView(return_view); }
	override HRESULT abi_Insert(IInspectable key,  IInspectable value, bool* return_replaced) { return (cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))m_inner).abi_Insert(key, value, return_replaced); }
	override HRESULT abi_Remove(IInspectable key) { return (cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))m_inner).abi_Remove(key); }
	override HRESULT abi_Clear() { return (cast(Windows.Foundation.Collections.IMap!(IInspectable, IInspectable))m_inner).abi_Clear(); }

	override HRESULT abi_First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(IInspectable, IInspectable))* out_first) { return (cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(IInspectable, IInspectable)))m_inner).abi_First(out_first); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface RoutedEvent : Windows.UI.Xaml.IRoutedEvent
{
}

interface RoutedEventArgs : Windows.UI.Xaml.IRoutedEventArgs
{
extern(Windows):
	final IInspectable OriginalSource()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.IRoutedEventArgs)this.asInterface(uuid("5c985ac6-d802-4b38-a223-bf070c43fedf"))).get_OriginalSource(&_ret));
		return _ret;
	}
	static RoutedEventArgs New()
	{
		IInspectable outer, inner;
		RoutedEventArgs ret;
		Debug.OK(activationFactory!(RoutedEventArgs, Windows.UI.Xaml.IRoutedEventArgsFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(RoutedEventArgs, RoutedEventArgs, Windows.UI.Xaml.IRoutedEventArgsFactory)
class RoutedEventArgsT(Base) : AgileObject!Base, RoutedEventArgs
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_OriginalSource(IInspectable* return_value) { return (cast(Windows.UI.Xaml.IRoutedEventArgs)m_inner.asInterface(uuid("5c985ac6-d802-4b38-a223-bf070c43fedf"))).get_OriginalSource(return_value); }

	this() {}
	IInspectable m_inner;
}

interface Setter : Windows.UI.Xaml.SetterBase, Windows.UI.Xaml.ISetter, Windows.UI.Xaml.ISetter2
{
extern(Windows):
	final Windows.UI.Xaml.DependencyProperty Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK((cast(Windows.UI.Xaml.ISetter)this.asInterface(uuid("a73ded29-b4ae-4a81-be85-e690ba0d3b6e"))).get_Property(&_ret));
		return _ret;
	}
	final void Property(Windows.UI.Xaml.DependencyProperty value)
	{
		Debug.OK((cast(Windows.UI.Xaml.ISetter)this.asInterface(uuid("a73ded29-b4ae-4a81-be85-e690ba0d3b6e"))).set_Property(value));
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.ISetter)this.asInterface(uuid("a73ded29-b4ae-4a81-be85-e690ba0d3b6e"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.ISetter)this.asInterface(uuid("a73ded29-b4ae-4a81-be85-e690ba0d3b6e"))).set_Value(value));
	}
	final Windows.UI.Xaml.TargetPropertyPath Target()
	{
		Windows.UI.Xaml.TargetPropertyPath _ret;
		Debug.OK((cast(Windows.UI.Xaml.ISetter2)this.asInterface(uuid("70169561-05b1-4fa3-9d53-8e0c8c747afc"))).get_Target(&_ret));
		return _ret;
	}
	final void Target(Windows.UI.Xaml.TargetPropertyPath value)
	{
		Debug.OK((cast(Windows.UI.Xaml.ISetter2)this.asInterface(uuid("70169561-05b1-4fa3-9d53-8e0c8c747afc"))).set_Target(value));
	}
	static Setter New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Setter).abi_ActivateInstance(&ret));
		return cast(Setter) ret;
	}
	static Windows.UI.Xaml.Setter New(Windows.UI.Xaml.DependencyProperty targetProperty, IInspectable value)
	{
		auto factory = factory!(Windows.UI.Xaml.ISetterFactory);
		Windows.UI.Xaml.Setter _ret;
		Debug.OK((cast(Windows.UI.Xaml.ISetterFactory)factory.asInterface(uuid("d3ca3d42-09b1-49d5-8891-e7b5648e02a2"))).abi_CreateInstance(targetProperty, value, &_ret));
		return _ret;
	}
}

interface SetterBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.ISetterBase
{
extern(Windows):
	final bool IsSealed()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.ISetterBase)this.asInterface(uuid("418be27c-2ac4-4f22-8097-dea3aeeb2fb3"))).get_IsSealed(&_ret));
		return _ret;
	}
}
@makable!(SetterBase, SetterBase, Windows.UI.Xaml.ISetterBaseFactory)
class SetterBaseT(Base) : AgileObject!Base, SetterBase
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_IsSealed(bool* return_value) { return (cast(Windows.UI.Xaml.ISetterBase)m_inner.asInterface(uuid("418be27c-2ac4-4f22-8097-dea3aeeb2fb3"))).get_IsSealed(return_value); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface SetterBaseCollection : Windows.UI.Xaml.ISetterBaseCollection, Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.SetterBase)
{
extern(Windows):
	final bool IsSealed()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.ISetterBaseCollection)this.asInterface(uuid("03c40ca8-909e-4117-811c-a4529496bdf1"))).get_IsSealed(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.SetterBase GetAt(uint index)
	{
		Windows.UI.Xaml.SetterBase _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.SetterBase)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.SetterBase value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.SetterBase item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.SetterBase item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.SetterBase item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.SetterBase* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.SetterBase* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.SetterBase)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.SetterBase))this).abi_First(out_first));
	}
	static SetterBaseCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SetterBaseCollection).abi_ActivateInstance(&ret));
		return cast(SetterBaseCollection) ret;
	}
}

interface SizeChangedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.ISizeChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.Size PreviousSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.Xaml.ISizeChangedEventArgs)this.asInterface(uuid("d5312e60-5cc1-42a1-920c-1af46be2f986"))).get_PreviousSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size NewSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.Xaml.ISizeChangedEventArgs)this.asInterface(uuid("d5312e60-5cc1-42a1-920c-1af46be2f986"))).get_NewSize(&_ret));
		return _ret;
	}
}

interface SizeHelper : Windows.UI.Xaml.ISizeHelper
{
	private static Windows.UI.Xaml.ISizeHelperStatics _staticInstance;
	public static Windows.UI.Xaml.ISizeHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.ISizeHelperStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Size Empty()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(staticInstance.get_Empty(&_ret));
		return _ret;
	}
	static Windows.Foundation.Size FromDimensions(float width, float height)
	{
		Windows.Foundation.Size _ret;
		Debug.OK(staticInstance.abi_FromDimensions(width, height, &_ret));
		return _ret;
	}
	static bool GetIsEmpty(Windows.Foundation.Size target)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GetIsEmpty(target, &_ret));
		return _ret;
	}
	static bool Equals(Windows.Foundation.Size target, Windows.Foundation.Size value)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_Equals(target, value, &_ret));
		return _ret;
	}
}

interface StateTrigger : Windows.UI.Xaml.StateTriggerBase, Windows.UI.Xaml.IStateTrigger
{
extern(Windows):
	final bool IsActive()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IStateTrigger)this.asInterface(uuid("67adef2e-d8d9-49f7-a1fd-2e35eedd23cd"))).get_IsActive(&_ret));
		return _ret;
	}
	final void IsActive(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IStateTrigger)this.asInterface(uuid("67adef2e-d8d9-49f7-a1fd-2e35eedd23cd"))).set_IsActive(value));
	}

	private static Windows.UI.Xaml.IStateTriggerStatics _staticInstance;
	public static Windows.UI.Xaml.IStateTriggerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IStateTriggerStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty IsActiveProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsActiveProperty(&_ret));
		return _ret;
	}
	static StateTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(StateTrigger).abi_ActivateInstance(&ret));
		return cast(StateTrigger) ret;
	}
}

interface StateTriggerBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IStateTriggerBase, Windows.UI.Xaml.IStateTriggerBaseProtected
{
extern(Windows):
	final void SetActive(bool IsActive)
	{
		Debug.OK((cast(Windows.UI.Xaml.IStateTriggerBaseProtected)this.asInterface(uuid("3c41e253-8d14-4216-994c-f9930429f6e5"))).abi_SetActive(IsActive));
	}
	static StateTriggerBase New()
	{
		IInspectable outer, inner;
		StateTriggerBase ret;
		Debug.OK(activationFactory!(StateTriggerBase, Windows.UI.Xaml.IStateTriggerBaseFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(StateTriggerBase, StateTriggerBase, Windows.UI.Xaml.IStateTriggerBaseFactory)
class StateTriggerBaseT(Base) : AgileObject!Base, StateTriggerBase
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_SetActive(bool IsActive) { return (cast(Windows.UI.Xaml.IStateTriggerBaseProtected)m_inner.asInterface(uuid("3c41e253-8d14-4216-994c-f9930429f6e5"))).abi_SetActive(IsActive); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface Style : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IStyle
{
extern(Windows):
	final bool IsSealed()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IStyle)this.asInterface(uuid("c4a9f225-9db7-4a7d-b6d1-f74edb9293c2"))).get_IsSealed(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.SetterBaseCollection Setters()
	{
		Windows.UI.Xaml.SetterBaseCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.IStyle)this.asInterface(uuid("c4a9f225-9db7-4a7d-b6d1-f74edb9293c2"))).get_Setters(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Interop.TypeName TargetType()
	{
		Windows.UI.Xaml.Interop.TypeName _ret;
		Debug.OK((cast(Windows.UI.Xaml.IStyle)this.asInterface(uuid("c4a9f225-9db7-4a7d-b6d1-f74edb9293c2"))).get_TargetType(&_ret));
		return _ret;
	}
	final void TargetType(Windows.UI.Xaml.Interop.TypeName value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IStyle)this.asInterface(uuid("c4a9f225-9db7-4a7d-b6d1-f74edb9293c2"))).set_TargetType(value));
	}
	final Windows.UI.Xaml.Style BasedOn()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK((cast(Windows.UI.Xaml.IStyle)this.asInterface(uuid("c4a9f225-9db7-4a7d-b6d1-f74edb9293c2"))).get_BasedOn(&_ret));
		return _ret;
	}
	final void BasedOn(Windows.UI.Xaml.Style value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IStyle)this.asInterface(uuid("c4a9f225-9db7-4a7d-b6d1-f74edb9293c2"))).set_BasedOn(value));
	}
	final void Seal()
	{
		Debug.OK((cast(Windows.UI.Xaml.IStyle)this.asInterface(uuid("c4a9f225-9db7-4a7d-b6d1-f74edb9293c2"))).abi_Seal());
	}
	static Style New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Style).abi_ActivateInstance(&ret));
		return cast(Style) ret;
	}
	static Windows.UI.Xaml.Style New(Windows.UI.Xaml.Interop.TypeName targetType)
	{
		auto factory = factory!(Windows.UI.Xaml.IStyleFactory);
		Windows.UI.Xaml.Style _ret;
		Debug.OK((cast(Windows.UI.Xaml.IStyleFactory)factory.asInterface(uuid("a36824e3-3d81-4ce5-aa51-8b410f602fcd"))).abi_CreateInstance(targetType, &_ret));
		return _ret;
	}
}

interface TargetPropertyPath : Windows.UI.Xaml.ITargetPropertyPath
{
extern(Windows):
	final Windows.UI.Xaml.PropertyPath Path()
	{
		Windows.UI.Xaml.PropertyPath _ret;
		Debug.OK((cast(Windows.UI.Xaml.ITargetPropertyPath)this.asInterface(uuid("40740f8e-085f-4ced-be70-6f47acf15ad0"))).get_Path(&_ret));
		return _ret;
	}
	final void Path(Windows.UI.Xaml.PropertyPath value)
	{
		Debug.OK((cast(Windows.UI.Xaml.ITargetPropertyPath)this.asInterface(uuid("40740f8e-085f-4ced-be70-6f47acf15ad0"))).set_Path(value));
	}
	final IInspectable Target()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.UI.Xaml.ITargetPropertyPath)this.asInterface(uuid("40740f8e-085f-4ced-be70-6f47acf15ad0"))).get_Target(&_ret));
		return _ret;
	}
	final void Target(IInspectable value)
	{
		Debug.OK((cast(Windows.UI.Xaml.ITargetPropertyPath)this.asInterface(uuid("40740f8e-085f-4ced-be70-6f47acf15ad0"))).set_Target(value));
	}
	static TargetPropertyPath New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(TargetPropertyPath).abi_ActivateInstance(&ret));
		return cast(TargetPropertyPath) ret;
	}
	static Windows.UI.Xaml.TargetPropertyPath New(Windows.UI.Xaml.DependencyProperty targetProperty)
	{
		auto factory = factory!(Windows.UI.Xaml.ITargetPropertyPathFactory);
		Windows.UI.Xaml.TargetPropertyPath _ret;
		Debug.OK((cast(Windows.UI.Xaml.ITargetPropertyPathFactory)factory.asInterface(uuid("88eeccc8-99e2-4a44-9907-b44bc86e2bbe"))).abi_CreateInstance(targetProperty, &_ret));
		return _ret;
	}
}

interface ThicknessHelper : Windows.UI.Xaml.IThicknessHelper
{
	private static Windows.UI.Xaml.IThicknessHelperStatics _staticInstance;
	public static Windows.UI.Xaml.IThicknessHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IThicknessHelperStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Thickness FromLengths(double left, double top, double right, double bottom)
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(staticInstance.abi_FromLengths(left, top, right, bottom, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Thickness FromUniformLength(double uniformLength)
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(staticInstance.abi_FromUniformLength(uniformLength, &_ret));
		return _ret;
	}
}

interface TriggerAction : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.ITriggerAction
{
}
@makable!(TriggerAction, TriggerAction, Windows.UI.Xaml.ITriggerActionFactory)
class TriggerActionT(Base) : AgileObject!Base, TriggerAction
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface TriggerActionCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.TriggerAction)
{
extern(Windows):
	final Windows.UI.Xaml.TriggerAction GetAt(uint index)
	{
		Windows.UI.Xaml.TriggerAction _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.TriggerAction)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.TriggerAction value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.TriggerAction item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.TriggerAction item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.TriggerAction item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.TriggerAction* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.TriggerAction* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.TriggerAction)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.TriggerAction))this).abi_First(out_first));
	}
	static TriggerActionCollection New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(TriggerActionCollection).abi_ActivateInstance(&ret));
		return cast(TriggerActionCollection) ret;
	}
}

interface TriggerBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.ITriggerBase
{
}
@makable!(TriggerBase, TriggerBase, Windows.UI.Xaml.ITriggerBaseFactory)
class TriggerBaseT(Base) : AgileObject!Base, TriggerBase
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface TriggerCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.TriggerBase)
{
extern(Windows):
	final Windows.UI.Xaml.TriggerBase GetAt(uint index)
	{
		Windows.UI.Xaml.TriggerBase _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.TriggerBase)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.UI.Xaml.TriggerBase value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.UI.Xaml.TriggerBase item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.UI.Xaml.TriggerBase item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).abi_RemoveAt(index));
	}
	final void Append(Windows.UI.Xaml.TriggerBase item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.UI.Xaml.TriggerBase* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.UI.Xaml.TriggerBase* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Xaml.TriggerBase)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.TriggerBase))this).abi_First(out_first));
	}
}

interface UIElement : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IUIElement, Windows.UI.Xaml.IUIElementOverrides, Windows.UI.Xaml.IUIElement2, Windows.UI.Xaml.IUIElement3, Windows.UI.Xaml.IUIElement4, Windows.UI.Xaml.IUIElement5
{
extern(Windows):
	final Windows.Foundation.Size DesiredSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_DesiredSize(&_ret));
		return _ret;
	}
	final bool AllowDrop()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_AllowDrop(&_ret));
		return _ret;
	}
	final void AllowDrop(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_AllowDrop(value));
	}
	final double Opacity()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Opacity(&_ret));
		return _ret;
	}
	final void Opacity(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Opacity(value));
	}
	final Windows.UI.Xaml.Media.RectangleGeometry Clip()
	{
		Windows.UI.Xaml.Media.RectangleGeometry _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Clip(&_ret));
		return _ret;
	}
	final void Clip(Windows.UI.Xaml.Media.RectangleGeometry value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Clip(value));
	}
	final Windows.UI.Xaml.Media.Transform RenderTransform()
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderTransform(&_ret));
		return _ret;
	}
	final void RenderTransform(Windows.UI.Xaml.Media.Transform value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_RenderTransform(value));
	}
	final Windows.UI.Xaml.Media.Projection Projection()
	{
		Windows.UI.Xaml.Media.Projection _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Projection(&_ret));
		return _ret;
	}
	final void Projection(Windows.UI.Xaml.Media.Projection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Projection(value));
	}
	final Windows.Foundation.Point RenderTransformOrigin()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderTransformOrigin(&_ret));
		return _ret;
	}
	final void RenderTransformOrigin(Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_RenderTransformOrigin(value));
	}
	final bool IsHitTestVisible()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsHitTestVisible(&_ret));
		return _ret;
	}
	final void IsHitTestVisible(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsHitTestVisible(value));
	}
	final Windows.UI.Xaml.Visibility Visibility()
	{
		Windows.UI.Xaml.Visibility _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Visibility(&_ret));
		return _ret;
	}
	final void Visibility(Windows.UI.Xaml.Visibility value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Visibility(value));
	}
	final Windows.Foundation.Size RenderSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderSize(&_ret));
		return _ret;
	}
	final bool UseLayoutRounding()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_UseLayoutRounding(&_ret));
		return _ret;
	}
	final void UseLayoutRounding(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_UseLayoutRounding(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection Transitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Transitions(&_ret));
		return _ret;
	}
	final void Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Transitions(value));
	}
	final Windows.UI.Xaml.Media.CacheMode CacheMode()
	{
		Windows.UI.Xaml.Media.CacheMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_CacheMode(&_ret));
		return _ret;
	}
	final void CacheMode(Windows.UI.Xaml.Media.CacheMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_CacheMode(value));
	}
	final bool IsTapEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsTapEnabled(&_ret));
		return _ret;
	}
	final void IsTapEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsTapEnabled(value));
	}
	final bool IsDoubleTapEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsDoubleTapEnabled(&_ret));
		return _ret;
	}
	final void IsDoubleTapEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsDoubleTapEnabled(value));
	}
	final bool IsRightTapEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsRightTapEnabled(&_ret));
		return _ret;
	}
	final void IsRightTapEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsRightTapEnabled(value));
	}
	final bool IsHoldingEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsHoldingEnabled(&_ret));
		return _ret;
	}
	final void IsHoldingEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsHoldingEnabled(value));
	}
	final Windows.UI.Xaml.Input.ManipulationModes ManipulationMode()
	{
		Windows.UI.Xaml.Input.ManipulationModes _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_ManipulationMode(&_ret));
		return _ret;
	}
	final void ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_ManipulationMode(value));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Input.Pointer) PointerCaptures()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Input.Pointer) _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_PointerCaptures(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnKeyUp(void delegate(IInspectable, Windows.UI.Xaml.Input.KeyRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_KeyUp(event!(Windows.UI.Xaml.Input.KeyEventHandler, IInspectable, Windows.UI.Xaml.Input.KeyRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeKeyUp(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_KeyUp(token));
	}
	final EventRegistrationToken OnKeyDown(void delegate(IInspectable, Windows.UI.Xaml.Input.KeyRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_KeyDown(event!(Windows.UI.Xaml.Input.KeyEventHandler, IInspectable, Windows.UI.Xaml.Input.KeyRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeKeyDown(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_KeyDown(token));
	}
	final EventRegistrationToken OnGotFocus(void delegate(IInspectable, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_GotFocus(event!(Windows.UI.Xaml.RoutedEventHandler, IInspectable, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeGotFocus(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_GotFocus(token));
	}
	final EventRegistrationToken OnLostFocus(void delegate(IInspectable, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_LostFocus(event!(Windows.UI.Xaml.RoutedEventHandler, IInspectable, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeLostFocus(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_LostFocus(token));
	}
	final EventRegistrationToken OnDragEnter(void delegate(IInspectable, Windows.UI.Xaml.DragEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragEnter(event!(Windows.UI.Xaml.DragEventHandler, IInspectable, Windows.UI.Xaml.DragEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDragEnter(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragEnter(token));
	}
	final EventRegistrationToken OnDragLeave(void delegate(IInspectable, Windows.UI.Xaml.DragEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragLeave(event!(Windows.UI.Xaml.DragEventHandler, IInspectable, Windows.UI.Xaml.DragEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDragLeave(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragLeave(token));
	}
	final EventRegistrationToken OnDragOver(void delegate(IInspectable, Windows.UI.Xaml.DragEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragOver(event!(Windows.UI.Xaml.DragEventHandler, IInspectable, Windows.UI.Xaml.DragEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDragOver(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragOver(token));
	}
	final EventRegistrationToken OnDrop(void delegate(IInspectable, Windows.UI.Xaml.DragEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Drop(event!(Windows.UI.Xaml.DragEventHandler, IInspectable, Windows.UI.Xaml.DragEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDrop(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Drop(token));
	}
	final EventRegistrationToken OnPointerPressed(void delegate(IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerPressed(event!(Windows.UI.Xaml.Input.PointerEventHandler, IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerPressed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerPressed(token));
	}
	final EventRegistrationToken OnPointerMoved(void delegate(IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerMoved(event!(Windows.UI.Xaml.Input.PointerEventHandler, IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerMoved(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerMoved(token));
	}
	final EventRegistrationToken OnPointerReleased(void delegate(IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerReleased(event!(Windows.UI.Xaml.Input.PointerEventHandler, IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerReleased(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerReleased(token));
	}
	final EventRegistrationToken OnPointerEntered(void delegate(IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerEntered(event!(Windows.UI.Xaml.Input.PointerEventHandler, IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerEntered(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerEntered(token));
	}
	final EventRegistrationToken OnPointerExited(void delegate(IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerExited(event!(Windows.UI.Xaml.Input.PointerEventHandler, IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerExited(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerExited(token));
	}
	final EventRegistrationToken OnPointerCaptureLost(void delegate(IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerCaptureLost(event!(Windows.UI.Xaml.Input.PointerEventHandler, IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerCaptureLost(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerCaptureLost(token));
	}
	final EventRegistrationToken OnPointerCanceled(void delegate(IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerCanceled(event!(Windows.UI.Xaml.Input.PointerEventHandler, IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerCanceled(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerCanceled(token));
	}
	final EventRegistrationToken OnPointerWheelChanged(void delegate(IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerWheelChanged(event!(Windows.UI.Xaml.Input.PointerEventHandler, IInspectable, Windows.UI.Xaml.Input.PointerRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerWheelChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerWheelChanged(token));
	}
	final EventRegistrationToken OnTapped(void delegate(IInspectable, Windows.UI.Xaml.Input.TappedRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Tapped(event!(Windows.UI.Xaml.Input.TappedEventHandler, IInspectable, Windows.UI.Xaml.Input.TappedRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeTapped(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Tapped(token));
	}
	final EventRegistrationToken OnDoubleTapped(void delegate(IInspectable, Windows.UI.Xaml.Input.DoubleTappedRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DoubleTapped(event!(Windows.UI.Xaml.Input.DoubleTappedEventHandler, IInspectable, Windows.UI.Xaml.Input.DoubleTappedRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDoubleTapped(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DoubleTapped(token));
	}
	final EventRegistrationToken OnHolding(void delegate(IInspectable, Windows.UI.Xaml.Input.HoldingRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Holding(event!(Windows.UI.Xaml.Input.HoldingEventHandler, IInspectable, Windows.UI.Xaml.Input.HoldingRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeHolding(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Holding(token));
	}
	final EventRegistrationToken OnRightTapped(void delegate(IInspectable, Windows.UI.Xaml.Input.RightTappedRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_RightTapped(event!(Windows.UI.Xaml.Input.RightTappedEventHandler, IInspectable, Windows.UI.Xaml.Input.RightTappedRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRightTapped(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_RightTapped(token));
	}
	final EventRegistrationToken OnManipulationStarting(void delegate(IInspectable, Windows.UI.Xaml.Input.ManipulationStartingRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationStarting(event!(Windows.UI.Xaml.Input.ManipulationStartingEventHandler, IInspectable, Windows.UI.Xaml.Input.ManipulationStartingRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationStarting(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationStarting(token));
	}
	final EventRegistrationToken OnManipulationInertiaStarting(void delegate(IInspectable, Windows.UI.Xaml.Input.ManipulationInertiaStartingRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationInertiaStarting(event!(Windows.UI.Xaml.Input.ManipulationInertiaStartingEventHandler, IInspectable, Windows.UI.Xaml.Input.ManipulationInertiaStartingRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationInertiaStarting(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationInertiaStarting(token));
	}
	final EventRegistrationToken OnManipulationStarted(void delegate(IInspectable, Windows.UI.Xaml.Input.ManipulationStartedRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationStarted(event!(Windows.UI.Xaml.Input.ManipulationStartedEventHandler, IInspectable, Windows.UI.Xaml.Input.ManipulationStartedRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationStarted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationStarted(token));
	}
	final EventRegistrationToken OnManipulationDelta(void delegate(IInspectable, Windows.UI.Xaml.Input.ManipulationDeltaRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationDelta(event!(Windows.UI.Xaml.Input.ManipulationDeltaEventHandler, IInspectable, Windows.UI.Xaml.Input.ManipulationDeltaRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationDelta(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationDelta(token));
	}
	final EventRegistrationToken OnManipulationCompleted(void delegate(IInspectable, Windows.UI.Xaml.Input.ManipulationCompletedRoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationCompleted(event!(Windows.UI.Xaml.Input.ManipulationCompletedEventHandler, IInspectable, Windows.UI.Xaml.Input.ManipulationCompletedRoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeManipulationCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationCompleted(token));
	}
	final void Measure(Windows.Foundation.Size availableSize)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_Measure(availableSize));
	}
	final void Arrange(Windows.Foundation.Rect finalRect)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_Arrange(finalRect));
	}
	final bool CapturePointer(Windows.UI.Xaml.Input.Pointer value)
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_CapturePointer(value, &_ret));
		return _ret;
	}
	final void ReleasePointerCapture(Windows.UI.Xaml.Input.Pointer value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_ReleasePointerCapture(value));
	}
	final void ReleasePointerCaptures()
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_ReleasePointerCaptures());
	}
	final void AddHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler, bool handledEventsToo)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_AddHandler(routedEvent, handler, handledEventsToo));
	}
	final void RemoveHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_RemoveHandler(routedEvent, handler));
	}
	final Windows.UI.Xaml.Media.GeneralTransform TransformToVisual(Windows.UI.Xaml.UIElement visual)
	{
		Windows.UI.Xaml.Media.GeneralTransform _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_TransformToVisual(visual, &_ret));
		return _ret;
	}
	final void InvalidateMeasure()
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_InvalidateMeasure());
	}
	final void InvalidateArrange()
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_InvalidateArrange());
	}
	final void UpdateLayout()
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement)this.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_UpdateLayout());
	}
	final Windows.UI.Xaml.Media.ElementCompositeMode CompositeMode()
	{
		Windows.UI.Xaml.Media.ElementCompositeMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement2)this.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).get_CompositeMode(&_ret));
		return _ret;
	}
	final void CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement2)this.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).set_CompositeMode(value));
	}
	final bool CancelDirectManipulations()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement2)this.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).abi_CancelDirectManipulations(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Media3D.Transform3D Transform3D()
	{
		Windows.UI.Xaml.Media.Media3D.Transform3D _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement3)this.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).get_Transform3D(&_ret));
		return _ret;
	}
	final void Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement3)this.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).set_Transform3D(value));
	}
	final bool CanDrag()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement3)this.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).get_CanDrag(&_ret));
		return _ret;
	}
	final void CanDrag(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement3)this.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).set_CanDrag(value));
	}
	final EventRegistrationToken OnDragStarting(void delegate(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DragStartingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement3)this.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).add_DragStarting(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DragStartingEventArgs), Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DragStartingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDragStarting(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement3)this.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).remove_DragStarting(token));
	}
	final EventRegistrationToken OnDropCompleted(void delegate(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DropCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement3)this.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).add_DropCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DropCompletedEventArgs), Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DropCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDropCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement3)this.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).remove_DropCompleted(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation) StartDragAsync(Windows.UI.Input.PointerPoint pointerPoint)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation) _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement3)this.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).abi_StartDragAsync(pointerPoint, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.FlyoutBase ContextFlyout()
	{
		Windows.UI.Xaml.Controls.Primitives.FlyoutBase _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_ContextFlyout(&_ret));
		return _ret;
	}
	final void ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_ContextFlyout(value));
	}
	final bool ExitDisplayModeOnAccessKeyInvoked()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_ExitDisplayModeOnAccessKeyInvoked(&_ret));
		return _ret;
	}
	final void ExitDisplayModeOnAccessKeyInvoked(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_ExitDisplayModeOnAccessKeyInvoked(value));
	}
	final bool IsAccessKeyScope()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_IsAccessKeyScope(&_ret));
		return _ret;
	}
	final void IsAccessKeyScope(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_IsAccessKeyScope(value));
	}
	final Windows.UI.Xaml.DependencyObject AccessKeyScopeOwner()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_AccessKeyScopeOwner(&_ret));
		return _ret;
	}
	final void AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_AccessKeyScopeOwner(value));
	}
	final HSTRING AccessKey()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_AccessKey(&_ret));
		return _ret;
	}
	final void AccessKey(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_AccessKey(value));
	}
	final EventRegistrationToken OnContextRequested(void delegate(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.ContextRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_ContextRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.ContextRequestedEventArgs), Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.ContextRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeContextRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_ContextRequested(token));
	}
	final EventRegistrationToken OnContextCanceled(void delegate(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.RoutedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_ContextCanceled(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.RoutedEventArgs), Windows.UI.Xaml.UIElement, Windows.UI.Xaml.RoutedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeContextCanceled(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_ContextCanceled(token));
	}
	final EventRegistrationToken OnAccessKeyDisplayRequested(void delegate(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyDisplayRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs), Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccessKeyDisplayRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyDisplayRequested(token));
	}
	final EventRegistrationToken OnAccessKeyDisplayDismissed(void delegate(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyDisplayDismissed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs), Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccessKeyDisplayDismissed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyDisplayDismissed(token));
	}
	final EventRegistrationToken OnAccessKeyInvoked(void delegate(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyInvoked(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs), Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAccessKeyInvoked(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement4)this.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyInvoked(token));
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.XamlLight) Lights()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.XamlLight) _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_Lights(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Input.KeyTipPlacementMode KeyTipPlacementMode()
	{
		Windows.UI.Xaml.Input.KeyTipPlacementMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipPlacementMode(&_ret));
		return _ret;
	}
	final void KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipPlacementMode(value));
	}
	final double KeyTipHorizontalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipHorizontalOffset(&_ret));
		return _ret;
	}
	final void KeyTipHorizontalOffset(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipHorizontalOffset(value));
	}
	final double KeyTipVerticalOffset()
	{
		double _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipVerticalOffset(&_ret));
		return _ret;
	}
	final void KeyTipVerticalOffset(double value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipVerticalOffset(value));
	}
	final Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode XYFocusKeyboardNavigation()
	{
		Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusKeyboardNavigation(&_ret));
		return _ret;
	}
	final void XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusKeyboardNavigation(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusUpNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusUpNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusUpNavigationStrategy(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusDownNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusDownNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusDownNavigationStrategy(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusLeftNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusLeftNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusLeftNavigationStrategy(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusRightNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusRightNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusRightNavigationStrategy(value));
	}
	final Windows.UI.Xaml.ElementHighContrastAdjustment HighContrastAdjustment()
	{
		Windows.UI.Xaml.ElementHighContrastAdjustment _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_HighContrastAdjustment(&_ret));
		return _ret;
	}
	final void HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_HighContrastAdjustment(value));
	}
	final Windows.UI.Xaml.Input.KeyboardNavigationMode TabFocusNavigation()
	{
		Windows.UI.Xaml.Input.KeyboardNavigationMode _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_TabFocusNavigation(&_ret));
		return _ret;
	}
	final void TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_TabFocusNavigation(value));
	}
	final EventRegistrationToken OnGettingFocus(void delegate(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.GettingFocusEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_GettingFocus(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.GettingFocusEventArgs), Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.GettingFocusEventArgs)(fn), &tok));
		return tok;
	}
	final void removeGettingFocus(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_GettingFocus(token));
	}
	final EventRegistrationToken OnLosingFocus(void delegate(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.LosingFocusEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_LosingFocus(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.LosingFocusEventArgs), Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.LosingFocusEventArgs)(fn), &tok));
		return tok;
	}
	final void removeLosingFocus(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_LosingFocus(token));
	}
	final EventRegistrationToken OnNoFocusCandidateFound(void delegate(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.NoFocusCandidateFoundEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_NoFocusCandidateFound(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.NoFocusCandidateFoundEventArgs), Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.NoFocusCandidateFoundEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNoFocusCandidateFound(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_NoFocusCandidateFound(token));
	}
	final void StartBringIntoView()
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).abi_StartBringIntoView());
	}
	final void StartBringIntoViewWithOptions(Windows.UI.Xaml.BringIntoViewOptions options)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUIElement5)this.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).abi_StartBringIntoViewWithOptions(options));
	}
	alias StartBringIntoView = StartBringIntoViewWithOptions;

	private static Windows.UI.Xaml.IUIElementStatics _staticInstance;
	public static Windows.UI.Xaml.IUIElementStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IUIElementStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.RoutedEvent KeyDownEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_KeyDownEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent KeyUpEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_KeyUpEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent PointerEnteredEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_PointerEnteredEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent PointerPressedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_PointerPressedEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent PointerMovedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_PointerMovedEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent PointerReleasedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_PointerReleasedEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent PointerExitedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_PointerExitedEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent PointerCaptureLostEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_PointerCaptureLostEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent PointerCanceledEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_PointerCanceledEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent PointerWheelChangedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_PointerWheelChangedEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent TappedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_TappedEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent DoubleTappedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_DoubleTappedEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent HoldingEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_HoldingEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent RightTappedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_RightTappedEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent ManipulationStartingEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_ManipulationStartingEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent ManipulationInertiaStartingEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_ManipulationInertiaStartingEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent ManipulationStartedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_ManipulationStartedEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent ManipulationDeltaEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_ManipulationDeltaEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent ManipulationCompletedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_ManipulationCompletedEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent DragEnterEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_DragEnterEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent DragLeaveEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_DragLeaveEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent DragOverEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_DragOverEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.RoutedEvent DropEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(staticInstance.get_DropEvent(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty AllowDropProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_AllowDropProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty OpacityProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_OpacityProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ClipProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ClipProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RenderTransformProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RenderTransformProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ProjectionProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ProjectionProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty RenderTransformOriginProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_RenderTransformOriginProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsHitTestVisibleProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsHitTestVisibleProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty VisibilityProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_VisibilityProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty UseLayoutRoundingProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_UseLayoutRoundingProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty TransitionsProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_TransitionsProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CacheModeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CacheModeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsTapEnabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsTapEnabledProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsDoubleTapEnabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsDoubleTapEnabledProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsRightTapEnabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsRightTapEnabledProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty IsHoldingEnabledProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_IsHoldingEnabledProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty ManipulationModeProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_ManipulationModeProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty PointerCapturesProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_PointerCapturesProperty(&_ret));
		return _ret;
	}
}
@makable!(UIElement, UIElement, Windows.UI.Xaml.IUIElementFactory)
class UIElementT(Base) : AgileObject!Base, UIElement
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_DesiredSize(Windows.Foundation.Size* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_DesiredSize(return_value); }
	override HRESULT get_AllowDrop(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_AllowDrop(return_value); }
	override HRESULT set_AllowDrop(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_AllowDrop(value); }
	override HRESULT get_Opacity(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Opacity(return_value); }
	override HRESULT set_Opacity(double value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Opacity(value); }
	override HRESULT get_Clip(Windows.UI.Xaml.Media.RectangleGeometry* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Clip(return_value); }
	override HRESULT set_Clip(Windows.UI.Xaml.Media.RectangleGeometry value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Clip(value); }
	override HRESULT get_RenderTransform(Windows.UI.Xaml.Media.Transform* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderTransform(return_value); }
	override HRESULT set_RenderTransform(Windows.UI.Xaml.Media.Transform value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_RenderTransform(value); }
	override HRESULT get_Projection(Windows.UI.Xaml.Media.Projection* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Projection(return_value); }
	override HRESULT set_Projection(Windows.UI.Xaml.Media.Projection value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Projection(value); }
	override HRESULT get_RenderTransformOrigin(Windows.Foundation.Point* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderTransformOrigin(return_value); }
	override HRESULT set_RenderTransformOrigin(Windows.Foundation.Point value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_RenderTransformOrigin(value); }
	override HRESULT get_IsHitTestVisible(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsHitTestVisible(return_value); }
	override HRESULT set_IsHitTestVisible(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsHitTestVisible(value); }
	override HRESULT get_Visibility(Windows.UI.Xaml.Visibility* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Visibility(return_value); }
	override HRESULT set_Visibility(Windows.UI.Xaml.Visibility value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Visibility(value); }
	override HRESULT get_RenderSize(Windows.Foundation.Size* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_RenderSize(return_value); }
	override HRESULT get_UseLayoutRounding(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_UseLayoutRounding(return_value); }
	override HRESULT set_UseLayoutRounding(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_UseLayoutRounding(value); }
	override HRESULT get_Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_Transitions(return_value); }
	override HRESULT set_Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_Transitions(value); }
	override HRESULT get_CacheMode(Windows.UI.Xaml.Media.CacheMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_CacheMode(return_value); }
	override HRESULT set_CacheMode(Windows.UI.Xaml.Media.CacheMode value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_CacheMode(value); }
	override HRESULT get_IsTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsTapEnabled(return_value); }
	override HRESULT set_IsTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsTapEnabled(value); }
	override HRESULT get_IsDoubleTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsDoubleTapEnabled(return_value); }
	override HRESULT set_IsDoubleTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsDoubleTapEnabled(value); }
	override HRESULT get_IsRightTapEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsRightTapEnabled(return_value); }
	override HRESULT set_IsRightTapEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsRightTapEnabled(value); }
	override HRESULT get_IsHoldingEnabled(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_IsHoldingEnabled(return_value); }
	override HRESULT set_IsHoldingEnabled(bool value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_IsHoldingEnabled(value); }
	override HRESULT get_ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_ManipulationMode(return_value); }
	override HRESULT set_ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).set_ManipulationMode(value); }
	override HRESULT get_PointerCaptures(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Input.Pointer)* return_value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).get_PointerCaptures(return_value); }
	override HRESULT add_KeyUp(Windows.UI.Xaml.Input.KeyEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_KeyUp(value, return_token); }
	override HRESULT remove_KeyUp(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_KeyUp(token); }
	override HRESULT add_KeyDown(Windows.UI.Xaml.Input.KeyEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_KeyDown(value, return_token); }
	override HRESULT remove_KeyDown(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_KeyDown(token); }
	override HRESULT add_GotFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_GotFocus(value, return_token); }
	override HRESULT remove_GotFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_GotFocus(token); }
	override HRESULT add_LostFocus(Windows.UI.Xaml.RoutedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_LostFocus(value, return_token); }
	override HRESULT remove_LostFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_LostFocus(token); }
	override HRESULT add_DragEnter(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragEnter(value, return_token); }
	override HRESULT remove_DragEnter(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragEnter(token); }
	override HRESULT add_DragLeave(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragLeave(value, return_token); }
	override HRESULT remove_DragLeave(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragLeave(token); }
	override HRESULT add_DragOver(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DragOver(value, return_token); }
	override HRESULT remove_DragOver(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DragOver(token); }
	override HRESULT add_Drop(Windows.UI.Xaml.DragEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Drop(value, return_token); }
	override HRESULT remove_Drop(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Drop(token); }
	override HRESULT add_PointerPressed(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerPressed(value, return_token); }
	override HRESULT remove_PointerPressed(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerPressed(token); }
	override HRESULT add_PointerMoved(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerMoved(value, return_token); }
	override HRESULT remove_PointerMoved(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerMoved(token); }
	override HRESULT add_PointerReleased(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerReleased(value, return_token); }
	override HRESULT remove_PointerReleased(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerReleased(token); }
	override HRESULT add_PointerEntered(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerEntered(value, return_token); }
	override HRESULT remove_PointerEntered(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerEntered(token); }
	override HRESULT add_PointerExited(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerExited(value, return_token); }
	override HRESULT remove_PointerExited(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerExited(token); }
	override HRESULT add_PointerCaptureLost(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerCaptureLost(value, return_token); }
	override HRESULT remove_PointerCaptureLost(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerCaptureLost(token); }
	override HRESULT add_PointerCanceled(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerCanceled(value, return_token); }
	override HRESULT remove_PointerCanceled(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerCanceled(token); }
	override HRESULT add_PointerWheelChanged(Windows.UI.Xaml.Input.PointerEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_PointerWheelChanged(value, return_token); }
	override HRESULT remove_PointerWheelChanged(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_PointerWheelChanged(token); }
	override HRESULT add_Tapped(Windows.UI.Xaml.Input.TappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Tapped(value, return_token); }
	override HRESULT remove_Tapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Tapped(token); }
	override HRESULT add_DoubleTapped(Windows.UI.Xaml.Input.DoubleTappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_DoubleTapped(value, return_token); }
	override HRESULT remove_DoubleTapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_DoubleTapped(token); }
	override HRESULT add_Holding(Windows.UI.Xaml.Input.HoldingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_Holding(value, return_token); }
	override HRESULT remove_Holding(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_Holding(token); }
	override HRESULT add_RightTapped(Windows.UI.Xaml.Input.RightTappedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_RightTapped(value, return_token); }
	override HRESULT remove_RightTapped(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_RightTapped(token); }
	override HRESULT add_ManipulationStarting(Windows.UI.Xaml.Input.ManipulationStartingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationStarting(value, return_token); }
	override HRESULT remove_ManipulationStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationStarting(token); }
	override HRESULT add_ManipulationInertiaStarting(Windows.UI.Xaml.Input.ManipulationInertiaStartingEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationInertiaStarting(value, return_token); }
	override HRESULT remove_ManipulationInertiaStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationInertiaStarting(token); }
	override HRESULT add_ManipulationStarted(Windows.UI.Xaml.Input.ManipulationStartedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationStarted(value, return_token); }
	override HRESULT remove_ManipulationStarted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationStarted(token); }
	override HRESULT add_ManipulationDelta(Windows.UI.Xaml.Input.ManipulationDeltaEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationDelta(value, return_token); }
	override HRESULT remove_ManipulationDelta(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationDelta(token); }
	override HRESULT add_ManipulationCompleted(Windows.UI.Xaml.Input.ManipulationCompletedEventHandler value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).add_ManipulationCompleted(value, return_token); }
	override HRESULT remove_ManipulationCompleted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).remove_ManipulationCompleted(token); }
	override HRESULT abi_Measure(Windows.Foundation.Size availableSize) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_Measure(availableSize); }
	override HRESULT abi_Arrange(Windows.Foundation.Rect finalRect) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_Arrange(finalRect); }
	override HRESULT abi_CapturePointer(Windows.UI.Xaml.Input.Pointer value, bool* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_CapturePointer(value, return_returnValue); }
	override HRESULT abi_ReleasePointerCapture(Windows.UI.Xaml.Input.Pointer value) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_ReleasePointerCapture(value); }
	override HRESULT abi_ReleasePointerCaptures() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_ReleasePointerCaptures(); }
	override HRESULT abi_AddHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler, bool handledEventsToo) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_AddHandler(routedEvent, handler, handledEventsToo); }
	override HRESULT abi_RemoveHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_RemoveHandler(routedEvent, handler); }
	override HRESULT abi_TransformToVisual(Windows.UI.Xaml.UIElement visual, Windows.UI.Xaml.Media.GeneralTransform* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_TransformToVisual(visual, return_returnValue); }
	override HRESULT abi_InvalidateMeasure() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_InvalidateMeasure(); }
	override HRESULT abi_InvalidateArrange() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_InvalidateArrange(); }
	override HRESULT abi_UpdateLayout() { return (cast(Windows.UI.Xaml.IUIElement)m_inner.asInterface(uuid("676d0be9-b65c-41c6-ba40-58cf87f201c1"))).abi_UpdateLayout(); }

	override HRESULT abi_OnCreateAutomationPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue) { this.OnCreateAutomationPeer(return_returnValue); return S_OK; }
	void OnCreateAutomationPeer(Windows.UI.Xaml.Automation.Peers.AutomationPeer* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_OnCreateAutomationPeer(return_returnValue)); }
	override HRESULT abi_OnDisconnectVisualChildren() { this.OnDisconnectVisualChildren(); return S_OK; }
	void OnDisconnectVisualChildren() { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_OnDisconnectVisualChildren()); }
	override HRESULT abi_FindSubElementsForTouchTargeting(Windows.Foundation.Point point, Windows.Foundation.Rect boundingRect, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point))* return_returnValue) { this.FindSubElementsForTouchTargeting(point, boundingRect, return_returnValue); return S_OK; }
	void FindSubElementsForTouchTargeting(Windows.Foundation.Point point, Windows.Foundation.Rect boundingRect, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point))* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IUIElementOverrides)m_inner.asInterface(uuid("608d2f1d-7858-4aeb-89e4-b54e2c7ed3d3"))).abi_FindSubElementsForTouchTargeting(point, boundingRect, return_returnValue)); }

	override HRESULT get_CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).get_CompositeMode(return_value); }
	override HRESULT set_CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode value) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).set_CompositeMode(value); }
	override HRESULT abi_CancelDirectManipulations(bool* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement2)m_inner.asInterface(uuid("676d0bf9-b66c-41d6-ba50-58cf87f201d1"))).abi_CancelDirectManipulations(return_returnValue); }

	override HRESULT get_Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D* return_value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).get_Transform3D(return_value); }
	override HRESULT set_Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).set_Transform3D(value); }
	override HRESULT get_CanDrag(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).get_CanDrag(return_value); }
	override HRESULT set_CanDrag(bool value) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).set_CanDrag(value); }
	override HRESULT add_DragStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DragStartingEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).add_DragStarting(value, return_token); }
	override HRESULT remove_DragStarting(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).remove_DragStarting(token); }
	override HRESULT add_DropCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.DropCompletedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).add_DropCompleted(value, return_token); }
	override HRESULT remove_DropCompleted(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).remove_DropCompleted(token); }
	override HRESULT abi_StartDragAsync(Windows.UI.Input.PointerPoint pointerPoint, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue) { return (cast(Windows.UI.Xaml.IUIElement3)m_inner.asInterface(uuid("bc2b28f1-26f2-4aab-b256-3b5350881e37"))).abi_StartDragAsync(pointerPoint, return_returnValue); }

	override HRESULT get_ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_ContextFlyout(return_value); }
	override HRESULT set_ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_ContextFlyout(value); }
	override HRESULT get_ExitDisplayModeOnAccessKeyInvoked(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_ExitDisplayModeOnAccessKeyInvoked(return_value); }
	override HRESULT set_ExitDisplayModeOnAccessKeyInvoked(bool value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_ExitDisplayModeOnAccessKeyInvoked(value); }
	override HRESULT get_IsAccessKeyScope(bool* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_IsAccessKeyScope(return_value); }
	override HRESULT set_IsAccessKeyScope(bool value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_IsAccessKeyScope(value); }
	override HRESULT get_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_AccessKeyScopeOwner(return_value); }
	override HRESULT set_AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_AccessKeyScopeOwner(value); }
	override HRESULT get_AccessKey(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).get_AccessKey(return_value); }
	override HRESULT set_AccessKey(HSTRING value) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).set_AccessKey(value); }
	override HRESULT add_ContextRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.ContextRequestedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_ContextRequested(value, return_token); }
	override HRESULT remove_ContextRequested(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_ContextRequested(token); }
	override HRESULT add_ContextCanceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.RoutedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_ContextCanceled(value, return_token); }
	override HRESULT remove_ContextCanceled(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_ContextCanceled(token); }
	override HRESULT add_AccessKeyDisplayRequested(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyDisplayRequested(value, return_token); }
	override HRESULT remove_AccessKeyDisplayRequested(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyDisplayRequested(token); }
	override HRESULT add_AccessKeyDisplayDismissed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyDisplayDismissed(value, return_token); }
	override HRESULT remove_AccessKeyDisplayDismissed(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyDisplayDismissed(token); }
	override HRESULT add_AccessKeyInvoked(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).add_AccessKeyInvoked(value, return_token); }
	override HRESULT remove_AccessKeyInvoked(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement4)m_inner.asInterface(uuid("69145cd4-199a-4657-9e57-e99e8f136712"))).remove_AccessKeyInvoked(token); }

	override HRESULT get_Lights(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.XamlLight)* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_Lights(return_value); }
	override HRESULT get_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipPlacementMode(return_value); }
	override HRESULT set_KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipPlacementMode(value); }
	override HRESULT get_KeyTipHorizontalOffset(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipHorizontalOffset(return_value); }
	override HRESULT set_KeyTipHorizontalOffset(double value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipHorizontalOffset(value); }
	override HRESULT get_KeyTipVerticalOffset(double* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_KeyTipVerticalOffset(return_value); }
	override HRESULT set_KeyTipVerticalOffset(double value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_KeyTipVerticalOffset(value); }
	override HRESULT get_XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusKeyboardNavigation(return_value); }
	override HRESULT set_XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusKeyboardNavigation(value); }
	override HRESULT get_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusUpNavigationStrategy(return_value); }
	override HRESULT set_XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusUpNavigationStrategy(value); }
	override HRESULT get_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusDownNavigationStrategy(return_value); }
	override HRESULT set_XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusDownNavigationStrategy(value); }
	override HRESULT get_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusLeftNavigationStrategy(return_value); }
	override HRESULT set_XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusLeftNavigationStrategy(value); }
	override HRESULT get_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_XYFocusRightNavigationStrategy(return_value); }
	override HRESULT set_XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_XYFocusRightNavigationStrategy(value); }
	override HRESULT get_HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_HighContrastAdjustment(return_value); }
	override HRESULT set_HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_HighContrastAdjustment(value); }
	override HRESULT get_TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode* return_value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).get_TabFocusNavigation(return_value); }
	override HRESULT set_TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode value) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).set_TabFocusNavigation(value); }
	override HRESULT add_GettingFocus(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.GettingFocusEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_GettingFocus(value, return_token); }
	override HRESULT remove_GettingFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_GettingFocus(token); }
	override HRESULT add_LosingFocus(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.LosingFocusEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_LosingFocus(value, return_token); }
	override HRESULT remove_LosingFocus(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_LosingFocus(token); }
	override HRESULT add_NoFocusCandidateFound(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.UIElement, Windows.UI.Xaml.Input.NoFocusCandidateFoundEventArgs) value, EventRegistrationToken* return_token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).add_NoFocusCandidateFound(value, return_token); }
	override HRESULT remove_NoFocusCandidateFound(EventRegistrationToken token) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).remove_NoFocusCandidateFound(token); }
	override HRESULT abi_StartBringIntoView() { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).abi_StartBringIntoView(); }
	override HRESULT abi_StartBringIntoViewWithOptions(Windows.UI.Xaml.BringIntoViewOptions options) { return (cast(Windows.UI.Xaml.IUIElement5)m_inner.asInterface(uuid("8eed9bc2-a58c-4453-af0f-a92ee06d0317"))).abi_StartBringIntoViewWithOptions(options); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface UnhandledExceptionEventArgs : Windows.UI.Xaml.IUnhandledExceptionEventArgs
{
extern(Windows):
	final HRESULT Exception()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUnhandledExceptionEventArgs)this.asInterface(uuid("7230269c-054e-4cf3-86c5-be90eb6863d5"))).get_Exception(&_ret));
		return _ret;
	}
	final HSTRING Message()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUnhandledExceptionEventArgs)this.asInterface(uuid("7230269c-054e-4cf3-86c5-be90eb6863d5"))).get_Message(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IUnhandledExceptionEventArgs)this.asInterface(uuid("7230269c-054e-4cf3-86c5-be90eb6863d5"))).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IUnhandledExceptionEventArgs)this.asInterface(uuid("7230269c-054e-4cf3-86c5-be90eb6863d5"))).set_Handled(value));
	}
}

interface VisualState : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IVisualState, Windows.UI.Xaml.IVisualState2
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualState)this.asInterface(uuid("6320affc-c31a-4450-afde-f6ea7bd1f586"))).get_Name(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Animation.Storyboard Storyboard()
	{
		Windows.UI.Xaml.Media.Animation.Storyboard _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualState)this.asInterface(uuid("6320affc-c31a-4450-afde-f6ea7bd1f586"))).get_Storyboard(&_ret));
		return _ret;
	}
	final void Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualState)this.asInterface(uuid("6320affc-c31a-4450-afde-f6ea7bd1f586"))).set_Storyboard(value));
	}
	final Windows.UI.Xaml.SetterBaseCollection Setters()
	{
		Windows.UI.Xaml.SetterBaseCollection _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualState2)this.asInterface(uuid("0fa0f896-64c0-45fb-8d24-fb83298c0d93"))).get_Setters(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.StateTriggerBase) StateTriggers()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.StateTriggerBase) _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualState2)this.asInterface(uuid("0fa0f896-64c0-45fb-8d24-fb83298c0d93"))).get_StateTriggers(&_ret));
		return _ret;
	}
	static VisualState New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VisualState).abi_ActivateInstance(&ret));
		return cast(VisualState) ret;
	}
}

interface VisualStateChangedEventArgs : Windows.UI.Xaml.IVisualStateChangedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.VisualState OldState()
	{
		Windows.UI.Xaml.VisualState _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateChangedEventArgs)this.asInterface(uuid("fe216ab1-f31f-4791-8989-c70e1d9b59ff"))).get_OldState(&_ret));
		return _ret;
	}
	final void OldState(Windows.UI.Xaml.VisualState value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateChangedEventArgs)this.asInterface(uuid("fe216ab1-f31f-4791-8989-c70e1d9b59ff"))).set_OldState(value));
	}
	final Windows.UI.Xaml.VisualState NewState()
	{
		Windows.UI.Xaml.VisualState _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateChangedEventArgs)this.asInterface(uuid("fe216ab1-f31f-4791-8989-c70e1d9b59ff"))).get_NewState(&_ret));
		return _ret;
	}
	final void NewState(Windows.UI.Xaml.VisualState value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateChangedEventArgs)this.asInterface(uuid("fe216ab1-f31f-4791-8989-c70e1d9b59ff"))).set_NewState(value));
	}
	final Windows.UI.Xaml.Controls.Control Control()
	{
		Windows.UI.Xaml.Controls.Control _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateChangedEventArgs)this.asInterface(uuid("fe216ab1-f31f-4791-8989-c70e1d9b59ff"))).get_Control(&_ret));
		return _ret;
	}
	final void Control(Windows.UI.Xaml.Controls.Control value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateChangedEventArgs)this.asInterface(uuid("fe216ab1-f31f-4791-8989-c70e1d9b59ff"))).set_Control(value));
	}
	static VisualStateChangedEventArgs New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VisualStateChangedEventArgs).abi_ActivateInstance(&ret));
		return cast(VisualStateChangedEventArgs) ret;
	}
}

interface VisualStateGroup : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IVisualStateGroup
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateGroup)this.asInterface(uuid("e4f9d9a4-e028-44de-9b15-4929ae0a26c2"))).get_Name(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualTransition) Transitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualTransition) _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateGroup)this.asInterface(uuid("e4f9d9a4-e028-44de-9b15-4929ae0a26c2"))).get_Transitions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualState) States()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualState) _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateGroup)this.asInterface(uuid("e4f9d9a4-e028-44de-9b15-4929ae0a26c2"))).get_States(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.VisualState CurrentState()
	{
		Windows.UI.Xaml.VisualState _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateGroup)this.asInterface(uuid("e4f9d9a4-e028-44de-9b15-4929ae0a26c2"))).get_CurrentState(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCurrentStateChanged(void delegate(IInspectable, Windows.UI.Xaml.VisualStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateGroup)this.asInterface(uuid("e4f9d9a4-e028-44de-9b15-4929ae0a26c2"))).add_CurrentStateChanged(event!(Windows.UI.Xaml.VisualStateChangedEventHandler, IInspectable, Windows.UI.Xaml.VisualStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCurrentStateChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateGroup)this.asInterface(uuid("e4f9d9a4-e028-44de-9b15-4929ae0a26c2"))).remove_CurrentStateChanged(token));
	}
	final EventRegistrationToken OnCurrentStateChanging(void delegate(IInspectable, Windows.UI.Xaml.VisualStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateGroup)this.asInterface(uuid("e4f9d9a4-e028-44de-9b15-4929ae0a26c2"))).add_CurrentStateChanging(event!(Windows.UI.Xaml.VisualStateChangedEventHandler, IInspectable, Windows.UI.Xaml.VisualStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCurrentStateChanging(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateGroup)this.asInterface(uuid("e4f9d9a4-e028-44de-9b15-4929ae0a26c2"))).remove_CurrentStateChanging(token));
	}
	static VisualStateGroup New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VisualStateGroup).abi_ActivateInstance(&ret));
		return cast(VisualStateGroup) ret;
	}
}

interface VisualStateManager : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IVisualStateManager, Windows.UI.Xaml.IVisualStateManagerOverrides, Windows.UI.Xaml.IVisualStateManagerProtected
{
extern(Windows):
	final void RaiseCurrentStateChanging(Windows.UI.Xaml.VisualStateGroup stateGroup, Windows.UI.Xaml.VisualState oldState, Windows.UI.Xaml.VisualState newState, Windows.UI.Xaml.Controls.Control control)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateManagerProtected)this.asInterface(uuid("4b3b8640-b0b7-404c-9ef4-d949640e245d"))).abi_RaiseCurrentStateChanging(stateGroup, oldState, newState, control));
	}
	final void RaiseCurrentStateChanged(Windows.UI.Xaml.VisualStateGroup stateGroup, Windows.UI.Xaml.VisualState oldState, Windows.UI.Xaml.VisualState newState, Windows.UI.Xaml.Controls.Control control)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualStateManagerProtected)this.asInterface(uuid("4b3b8640-b0b7-404c-9ef4-d949640e245d"))).abi_RaiseCurrentStateChanged(stateGroup, oldState, newState, control));
	}

	private static Windows.UI.Xaml.IVisualStateManagerStatics _staticInstance;
	public static Windows.UI.Xaml.IVisualStateManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IVisualStateManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualStateGroup) GetVisualStateGroups(Windows.UI.Xaml.FrameworkElement obj)
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualStateGroup) _ret;
		Debug.OK(staticInstance.abi_GetVisualStateGroups(obj, &_ret));
		return _ret;
	}
	static Windows.UI.Xaml.DependencyProperty CustomVisualStateManagerProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_CustomVisualStateManagerProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.VisualStateManager GetCustomVisualStateManager(Windows.UI.Xaml.FrameworkElement obj)
	{
		Windows.UI.Xaml.VisualStateManager _ret;
		Debug.OK(staticInstance.abi_GetCustomVisualStateManager(obj, &_ret));
		return _ret;
	}
	static void SetCustomVisualStateManager(Windows.UI.Xaml.FrameworkElement obj, Windows.UI.Xaml.VisualStateManager value)
	{
		Debug.OK(staticInstance.abi_SetCustomVisualStateManager(obj, value));
	}
	static bool GoToState(Windows.UI.Xaml.Controls.Control control, HSTRING stateName, bool useTransitions)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_GoToState(control, stateName, useTransitions, &_ret));
		return _ret;
	}
	static VisualStateManager New()
	{
		IInspectable outer, inner;
		VisualStateManager ret;
		Debug.OK(activationFactory!(VisualStateManager, Windows.UI.Xaml.IVisualStateManagerFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(VisualStateManager, VisualStateManager, Windows.UI.Xaml.IVisualStateManagerFactory)
class VisualStateManagerT(Base) : AgileObject!Base, VisualStateManager
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_GoToStateCore(Windows.UI.Xaml.Controls.Control control, Windows.UI.Xaml.FrameworkElement templateRoot, HSTRING stateName, Windows.UI.Xaml.VisualStateGroup group, Windows.UI.Xaml.VisualState state, bool useTransitions, bool* return_returnValue) { this.GoToStateCore(control, templateRoot, stateName, group, state, useTransitions, return_returnValue); return S_OK; }
	void GoToStateCore(Windows.UI.Xaml.Controls.Control control, Windows.UI.Xaml.FrameworkElement templateRoot, HSTRING stateName, Windows.UI.Xaml.VisualStateGroup group, Windows.UI.Xaml.VisualState state, bool useTransitions, bool* return_returnValue) { Debug.OK((cast(Windows.UI.Xaml.IVisualStateManagerOverrides)m_inner.asInterface(uuid("4a66910e-7979-43c8-8ff4-ec6122750006"))).abi_GoToStateCore(control, templateRoot, stateName, group, state, useTransitions, return_returnValue)); }

	override HRESULT abi_RaiseCurrentStateChanging(Windows.UI.Xaml.VisualStateGroup stateGroup, Windows.UI.Xaml.VisualState oldState, Windows.UI.Xaml.VisualState newState, Windows.UI.Xaml.Controls.Control control) { return (cast(Windows.UI.Xaml.IVisualStateManagerProtected)m_inner.asInterface(uuid("4b3b8640-b0b7-404c-9ef4-d949640e245d"))).abi_RaiseCurrentStateChanging(stateGroup, oldState, newState, control); }
	override HRESULT abi_RaiseCurrentStateChanged(Windows.UI.Xaml.VisualStateGroup stateGroup, Windows.UI.Xaml.VisualState oldState, Windows.UI.Xaml.VisualState newState, Windows.UI.Xaml.Controls.Control control) { return (cast(Windows.UI.Xaml.IVisualStateManagerProtected)m_inner.asInterface(uuid("4b3b8640-b0b7-404c-9ef4-d949640e245d"))).abi_RaiseCurrentStateChanged(stateGroup, oldState, newState, control); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface VisualTransition : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IVisualTransition
{
extern(Windows):
	final Windows.UI.Xaml.Duration GeneratedDuration()
	{
		Windows.UI.Xaml.Duration _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualTransition)this.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).get_GeneratedDuration(&_ret));
		return _ret;
	}
	final void GeneratedDuration(Windows.UI.Xaml.Duration value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualTransition)this.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).set_GeneratedDuration(value));
	}
	final Windows.UI.Xaml.Media.Animation.EasingFunctionBase GeneratedEasingFunction()
	{
		Windows.UI.Xaml.Media.Animation.EasingFunctionBase _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualTransition)this.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).get_GeneratedEasingFunction(&_ret));
		return _ret;
	}
	final void GeneratedEasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualTransition)this.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).set_GeneratedEasingFunction(value));
	}
	final HSTRING To()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualTransition)this.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).get_To(&_ret));
		return _ret;
	}
	final void To(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualTransition)this.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).set_To(value));
	}
	final HSTRING From()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualTransition)this.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).get_From(&_ret));
		return _ret;
	}
	final void From(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualTransition)this.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).set_From(value));
	}
	final Windows.UI.Xaml.Media.Animation.Storyboard Storyboard()
	{
		Windows.UI.Xaml.Media.Animation.Storyboard _ret;
		Debug.OK((cast(Windows.UI.Xaml.IVisualTransition)this.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).get_Storyboard(&_ret));
		return _ret;
	}
	final void Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IVisualTransition)this.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).set_Storyboard(value));
	}
	static VisualTransition New()
	{
		IInspectable outer, inner;
		VisualTransition ret;
		Debug.OK(activationFactory!(VisualTransition, Windows.UI.Xaml.IVisualTransitionFactory).abi_CreateInstance(outer, &inner, &ret));
		return ret;
	}
}
@makable!(VisualTransition, VisualTransition, Windows.UI.Xaml.IVisualTransitionFactory)
class VisualTransitionT(Base) : AgileObject!Base, VisualTransition
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_GeneratedDuration(Windows.UI.Xaml.Duration* return_value) { return (cast(Windows.UI.Xaml.IVisualTransition)m_inner.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).get_GeneratedDuration(return_value); }
	override HRESULT set_GeneratedDuration(Windows.UI.Xaml.Duration value) { return (cast(Windows.UI.Xaml.IVisualTransition)m_inner.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).set_GeneratedDuration(value); }
	override HRESULT get_GeneratedEasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value) { return (cast(Windows.UI.Xaml.IVisualTransition)m_inner.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).get_GeneratedEasingFunction(return_value); }
	override HRESULT set_GeneratedEasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value) { return (cast(Windows.UI.Xaml.IVisualTransition)m_inner.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).set_GeneratedEasingFunction(value); }
	override HRESULT get_To(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IVisualTransition)m_inner.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).get_To(return_value); }
	override HRESULT set_To(HSTRING value) { return (cast(Windows.UI.Xaml.IVisualTransition)m_inner.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).set_To(value); }
	override HRESULT get_From(HSTRING* return_value) { return (cast(Windows.UI.Xaml.IVisualTransition)m_inner.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).get_From(return_value); }
	override HRESULT set_From(HSTRING value) { return (cast(Windows.UI.Xaml.IVisualTransition)m_inner.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).set_From(value); }
	override HRESULT get_Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard* return_value) { return (cast(Windows.UI.Xaml.IVisualTransition)m_inner.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).get_Storyboard(return_value); }
	override HRESULT set_Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard value) { return (cast(Windows.UI.Xaml.IVisualTransition)m_inner.asInterface(uuid("55c5905e-2bc7-400d-aaa4-1a2981491ee0"))).set_Storyboard(value); }

	override HRESULT abi_GetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetValue(dp, return_returnValue); }
	override HRESULT abi_SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_SetValue(dp, value); }
	override HRESULT abi_ClearValue(Windows.UI.Xaml.DependencyProperty dp) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ClearValue(dp); }
	override HRESULT abi_ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_ReadLocalValue(dp, return_returnValue); }
	override HRESULT abi_GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).abi_GetAnimationBaseValue(dp, return_returnValue); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Xaml.IDependencyObject)m_inner.asInterface(uuid("5c526665-f60e-4912-af59-5fe0680f089d"))).get_Dispatcher(return_value); }

	override HRESULT abi_RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback, INT64* return_returnValue) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_RegisterPropertyChangedCallback(dp, callback, return_returnValue); }
	override HRESULT abi_UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token) { return (cast(Windows.UI.Xaml.IDependencyObject2)m_inner.asInterface(uuid("29fed85d-3d22-43a1-add0-17027c08b212"))).abi_UnregisterPropertyChangedCallback(dp, token); }

	this() {}
	IInspectable m_inner;
}

interface Window : Windows.UI.Xaml.IWindow, Windows.UI.Xaml.IWindow2, Windows.UI.Xaml.IWindow3
{
extern(Windows):
	final Windows.Foundation.Rect Bounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).get_Bounds(&_ret));
		return _ret;
	}
	final bool Visible()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).get_Visible(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.UIElement Content()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).set_Content(value));
	}
	final Windows.UI.Core.CoreWindow CoreWindow()
	{
		Windows.UI.Core.CoreWindow _ret;
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).get_CoreWindow(&_ret));
		return _ret;
	}
	final Windows.UI.Core.CoreDispatcher Dispatcher()
	{
		Windows.UI.Core.CoreDispatcher _ret;
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).get_Dispatcher(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnActivated(void delegate(IInspectable, Windows.UI.Core.WindowActivatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).add_Activated(event!(Windows.UI.Xaml.WindowActivatedEventHandler, IInspectable, Windows.UI.Core.WindowActivatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeActivated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).remove_Activated(token));
	}
	final EventRegistrationToken OnClosed(void delegate(IInspectable, Windows.UI.Core.CoreWindowEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).add_Closed(event!(Windows.UI.Xaml.WindowClosedEventHandler, IInspectable, Windows.UI.Core.CoreWindowEventArgs)(fn), &tok));
		return tok;
	}
	final void removeClosed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).remove_Closed(token));
	}
	final EventRegistrationToken OnSizeChanged(void delegate(IInspectable, Windows.UI.Core.WindowSizeChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).add_SizeChanged(event!(Windows.UI.Xaml.WindowSizeChangedEventHandler, IInspectable, Windows.UI.Core.WindowSizeChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSizeChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).remove_SizeChanged(token));
	}
	final EventRegistrationToken OnVisibilityChanged(void delegate(IInspectable, Windows.UI.Core.VisibilityChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).add_VisibilityChanged(event!(Windows.UI.Xaml.WindowVisibilityChangedEventHandler, IInspectable, Windows.UI.Core.VisibilityChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeVisibilityChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).remove_VisibilityChanged(token));
	}
	final void Activate()
	{
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).abi_Activate());
	}
	final void Close()
	{
		Debug.OK((cast(Windows.UI.Xaml.IWindow)this.asInterface(uuid("3276167d-c9f6-462d-9de2-ae4c1fd8c2e5"))).abi_Close());
	}
	final void SetTitleBar(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK((cast(Windows.UI.Xaml.IWindow2)this.asInterface(uuid("d384759f-34f6-4482-8435-f552f9b24cc8"))).abi_SetTitleBar(value));
	}
	final Windows.UI.Composition.Compositor Compositor()
	{
		Windows.UI.Composition.Compositor _ret;
		Debug.OK((cast(Windows.UI.Xaml.IWindow3)this.asInterface(uuid("b70bdc9d-1c35-462a-9b97-808d5af9f28e"))).get_Compositor(&_ret));
		return _ret;
	}

	private static Windows.UI.Xaml.IWindowStatics _staticInstance;
	public static Windows.UI.Xaml.IWindowStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.IWindowStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Window Current()
	{
		Windows.UI.Xaml.Window _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
}

interface WindowCreatedEventArgs : Windows.UI.Xaml.IWindowCreatedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Window Window()
	{
		Windows.UI.Xaml.Window _ret;
		Debug.OK((cast(Windows.UI.Xaml.IWindowCreatedEventArgs)this.asInterface(uuid("31b71470-feff-4654-af48-9b398ab5772b"))).get_Window(&_ret));
		return _ret;
	}
}

@bitflags
enum ApplicationHighContrastAdjustment
{
	None = 0x0,
	Auto = 0xFFFFFFFF
}

enum ApplicationRequiresPointerMode
{
	Auto = 0,
	WhenRequested = 1
}

enum ApplicationTheme
{
	Light = 0,
	Dark = 1
}

enum AutomationTextAttributesEnum
{
	AnimationStyleAttribute = 40000,
	BackgroundColorAttribute = 40001,
	BulletStyleAttribute = 40002,
	CapStyleAttribute = 40003,
	CultureAttribute = 40004,
	FontNameAttribute = 40005,
	FontSizeAttribute = 40006,
	FontWeightAttribute = 40007,
	ForegroundColorAttribute = 40008,
	HorizontalTextAlignmentAttribute = 40009,
	IndentationFirstLineAttribute = 40010,
	IndentationLeadingAttribute = 40011,
	IndentationTrailingAttribute = 40012,
	IsHiddenAttribute = 40013,
	IsItalicAttribute = 40014,
	IsReadOnlyAttribute = 40015,
	IsSubscriptAttribute = 40016,
	IsSuperscriptAttribute = 40017,
	MarginBottomAttribute = 40018,
	MarginLeadingAttribute = 40019,
	MarginTopAttribute = 40020,
	MarginTrailingAttribute = 40021,
	OutlineStylesAttribute = 40022,
	OverlineColorAttribute = 40023,
	OverlineStyleAttribute = 40024,
	StrikethroughColorAttribute = 40025,
	StrikethroughStyleAttribute = 40026,
	TabsAttribute = 40027,
	TextFlowDirectionsAttribute = 40028,
	UnderlineColorAttribute = 40029,
	UnderlineStyleAttribute = 40030,
	AnnotationTypesAttribute = 40031,
	AnnotationObjectsAttribute = 40032,
	StyleNameAttribute = 40033,
	StyleIdAttribute = 40034,
	LinkAttribute = 40035,
	IsActiveAttribute = 40036,
	SelectionActiveEndAttribute = 40037,
	CaretPositionAttribute = 40038,
	CaretBidiModeAttribute = 40039
}

enum DurationType
{
	Automatic = 0,
	TimeSpan = 1,
	Forever = 2
}

@bitflags
enum ElementHighContrastAdjustment
{
	None = 0x0,
	Application = 0x80000000,
	Auto = 0xFFFFFFFF
}

enum ElementSoundKind
{
	Focus = 0,
	Invoke = 1,
	Show = 2,
	Hide = 3,
	MovePrevious = 4,
	MoveNext = 5,
	GoBack = 6
}

enum ElementSoundMode
{
	Default = 0,
	FocusOnly = 1,
	Off = 2
}

enum ElementSoundPlayerState
{
	Auto = 0,
	Off = 1,
	On = 2
}

enum ElementTheme
{
	Default = 0,
	Light = 1,
	Dark = 2
}

enum FlowDirection
{
	LeftToRight = 0,
	RightToLeft = 1
}

enum FocusState
{
	Unfocused = 0,
	Pointer = 1,
	Keyboard = 2,
	Programmatic = 3
}

enum FocusVisualKind
{
	DottedLine = 0,
	HighVisibility = 1
}

enum FontCapitals
{
	Normal = 0,
	AllSmallCaps = 1,
	SmallCaps = 2,
	AllPetiteCaps = 3,
	PetiteCaps = 4,
	Unicase = 5,
	Titling = 6
}

enum FontEastAsianLanguage
{
	Normal = 0,
	HojoKanji = 1,
	Jis04 = 2,
	Jis78 = 3,
	Jis83 = 4,
	Jis90 = 5,
	NlcKanji = 6,
	Simplified = 7,
	Traditional = 8,
	TraditionalNames = 9
}

enum FontEastAsianWidths
{
	Normal = 0,
	Full = 1,
	Half = 2,
	Proportional = 3,
	Quarter = 4,
	Third = 5
}

enum FontFraction
{
	Normal = 0,
	Stacked = 1,
	Slashed = 2
}

enum FontNumeralAlignment
{
	Normal = 0,
	Proportional = 1,
	Tabular = 2
}

enum FontNumeralStyle
{
	Normal = 0,
	Lining = 1,
	OldStyle = 2
}

enum FontVariants
{
	Normal = 0,
	Superscript = 1,
	Subscript = 2,
	Ordinal = 3,
	Inferior = 4,
	Ruby = 5
}

enum GridUnitType
{
	Auto = 0,
	Pixel = 1,
	Star = 2
}

enum HorizontalAlignment
{
	Left = 0,
	Center = 1,
	Right = 2,
	Stretch = 3
}

enum LineStackingStrategy
{
	MaxHeight = 0,
	BlockLineHeight = 1,
	BaselineToBaseline = 2
}

enum OpticalMarginAlignment
{
	None = 0,
	TrimSideBearings = 1
}

enum TextAlignment
{
	Center = 0,
	Left = 1,
	Right = 2,
	Justify = 3,
	DetectFromContent = 4
}

enum TextLineBounds
{
	Full = 0,
	TrimToCapHeight = 1,
	TrimToBaseline = 2,
	Tight = 3
}

enum TextReadingOrder
{
	Default = 0,
	UseFlowDirection = 0,
	DetectFromContent = 1
}

enum TextTrimming
{
	None = 0,
	CharacterEllipsis = 1,
	WordEllipsis = 2,
	Clip = 3
}

enum TextWrapping
{
	NoWrap = 1,
	Wrap = 2,
	WrapWholeWords = 3
}

enum VerticalAlignment
{
	Top = 0,
	Center = 1,
	Bottom = 2,
	Stretch = 3
}

enum Visibility
{
	Visible = 0,
	Collapsed = 1
}