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
	HRESULT abi_FromCoordinates(FLOAT x, FLOAT y, Windows.Foundation.Point* return_returnValue);
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
	HRESULT abi_FromCoordinatesAndDimensions(FLOAT x, FLOAT y, FLOAT width, FLOAT height, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_FromPoints(Windows.Foundation.Point point1, Windows.Foundation.Point point2, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_FromLocationAndSize(Windows.Foundation.Point location, Windows.Foundation.Size size, Windows.Foundation.Rect* return_returnValue);
	HRESULT abi_GetIsEmpty(Windows.Foundation.Rect target, bool* return_value);
	HRESULT abi_GetBottom(Windows.Foundation.Rect target, FLOAT* return_value);
	HRESULT abi_GetLeft(Windows.Foundation.Rect target, FLOAT* return_value);
	HRESULT abi_GetRight(Windows.Foundation.Rect target, FLOAT* return_value);
	HRESULT abi_GetTop(Windows.Foundation.Rect target, FLOAT* return_value);
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
interface ISetterBaseCollection : IInspectable
{
extern(Windows):
	HRESULT get_IsSealed(bool* return_value);
}

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
	HRESULT abi_FromDimensions(FLOAT width, FLOAT height, Windows.Foundation.Size* return_returnValue);
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
		Debug.OK(this.as!(Windows.UI.Xaml.IAdaptiveTrigger).get_MinWindowWidth(&_ret));
		return _ret;
	}
	final void MinWindowWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IAdaptiveTrigger).set_MinWindowWidth(value));
	}
	final double MinWindowHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IAdaptiveTrigger).get_MinWindowHeight(&_ret));
		return _ret;
	}
	final void MinWindowHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IAdaptiveTrigger).set_MinWindowHeight(value));
	}
}

interface Application : Windows.UI.Xaml.IApplication, Windows.UI.Xaml.IApplicationOverrides, Windows.UI.Xaml.IApplication2, Windows.UI.Xaml.IApplicationOverrides2, Windows.UI.Xaml.IApplication3
{
extern(Windows):
	final Windows.UI.Xaml.ResourceDictionary Resources()
	{
		Windows.UI.Xaml.ResourceDictionary _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication).get_Resources(&_ret));
		return _ret;
	}
	final void Resources(Windows.UI.Xaml.ResourceDictionary value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication).set_Resources(value));
	}
	final Windows.UI.Xaml.DebugSettings DebugSettings()
	{
		Windows.UI.Xaml.DebugSettings _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication).get_DebugSettings(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.ApplicationTheme RequestedTheme()
	{
		Windows.UI.Xaml.ApplicationTheme _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication).get_RequestedTheme(&_ret));
		return _ret;
	}
	final void RequestedTheme(Windows.UI.Xaml.ApplicationTheme value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication).set_RequestedTheme(value));
	}
	final void Exit()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication).abi_Exit());
	}
	final void OnActivated(Windows.ApplicationModel.Activation.IActivatedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplicationOverrides).abi_OnActivated(args));
	}
	final void OnLaunched(Windows.ApplicationModel.Activation.LaunchActivatedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplicationOverrides).abi_OnLaunched(args));
	}
	final void OnFileActivated(Windows.ApplicationModel.Activation.FileActivatedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplicationOverrides).abi_OnFileActivated(args));
	}
	final void OnSearchActivated(Windows.ApplicationModel.Activation.SearchActivatedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplicationOverrides).abi_OnSearchActivated(args));
	}
	final void OnShareTargetActivated(Windows.ApplicationModel.Activation.ShareTargetActivatedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplicationOverrides).abi_OnShareTargetActivated(args));
	}
	final void OnFileOpenPickerActivated(Windows.ApplicationModel.Activation.FileOpenPickerActivatedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplicationOverrides).abi_OnFileOpenPickerActivated(args));
	}
	final void OnFileSavePickerActivated(Windows.ApplicationModel.Activation.FileSavePickerActivatedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplicationOverrides).abi_OnFileSavePickerActivated(args));
	}
	final void OnCachedFileUpdaterActivated(Windows.ApplicationModel.Activation.CachedFileUpdaterActivatedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplicationOverrides).abi_OnCachedFileUpdaterActivated(args));
	}
	final void OnWindowCreated(Windows.UI.Xaml.WindowCreatedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplicationOverrides).abi_OnWindowCreated(args));
	}
	final Windows.UI.Xaml.FocusVisualKind FocusVisualKind()
	{
		Windows.UI.Xaml.FocusVisualKind _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication2).get_FocusVisualKind(&_ret));
		return _ret;
	}
	final void FocusVisualKind(Windows.UI.Xaml.FocusVisualKind value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication2).set_FocusVisualKind(value));
	}
	final Windows.UI.Xaml.ApplicationRequiresPointerMode RequiresPointerMode()
	{
		Windows.UI.Xaml.ApplicationRequiresPointerMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication2).get_RequiresPointerMode(&_ret));
		return _ret;
	}
	final void RequiresPointerMode(Windows.UI.Xaml.ApplicationRequiresPointerMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication2).set_RequiresPointerMode(value));
	}
	final void OnBackgroundActivated(Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs args)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplicationOverrides2).abi_OnBackgroundActivated(args));
	}
	final Windows.UI.Xaml.ApplicationHighContrastAdjustment HighContrastAdjustment()
	{
		Windows.UI.Xaml.ApplicationHighContrastAdjustment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication3).get_HighContrastAdjustment(&_ret));
		return _ret;
	}
	final void HighContrastAdjustment(Windows.UI.Xaml.ApplicationHighContrastAdjustment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IApplication3).set_HighContrastAdjustment(value));
	}
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
		Debug.OK(this.as!(Windows.UI.Xaml.IBindingFailedEventArgs).get_Message(&_ret));
		return _ret;
	}
}

interface BringIntoViewOptions : Windows.UI.Xaml.IBringIntoViewOptions
{
extern(Windows):
	final bool AnimationDesired()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IBringIntoViewOptions).get_AnimationDesired(&_ret));
		return _ret;
	}
	final void AnimationDesired(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IBringIntoViewOptions).set_AnimationDesired(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.Rect) TargetRect()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Rect) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IBringIntoViewOptions).get_TargetRect(&_ret));
		return _ret;
	}
	final void TargetRect(Windows.Foundation.IReference!(Windows.Foundation.Rect) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IBringIntoViewOptions).set_TargetRect(value));
	}
}

interface CornerRadiusHelper : Windows.UI.Xaml.ICornerRadiusHelper
{
}

interface DataContextChangedEventArgs : Windows.UI.Xaml.IDataContextChangedEventArgs
{
extern(Windows):
	final IInspectable NewValue()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDataContextChangedEventArgs).get_NewValue(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDataContextChangedEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDataContextChangedEventArgs).set_Handled(value));
	}
}

interface DataTemplate : Windows.UI.Xaml.FrameworkTemplate, Windows.UI.Xaml.IDataTemplate
{
extern(Windows):
	final Windows.UI.Xaml.DependencyObject LoadContent()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDataTemplate).abi_LoadContent(&_ret));
		return _ret;
	}
}

interface DataTemplateKey : Windows.UI.Xaml.IDataTemplateKey
{
extern(Windows):
	final IInspectable DataType()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDataTemplateKey).get_DataType(&_ret));
		return _ret;
	}
	final void DataType(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDataTemplateKey).set_DataType(value));
	}
}

interface DebugSettings : Windows.UI.Xaml.IDebugSettings, Windows.UI.Xaml.IDebugSettings2, Windows.UI.Xaml.IDebugSettings3
{
extern(Windows):
	final bool EnableFrameRateCounter()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDebugSettings).get_EnableFrameRateCounter(&_ret));
		return _ret;
	}
	final void EnableFrameRateCounter(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDebugSettings).set_EnableFrameRateCounter(value));
	}
	final bool IsBindingTracingEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDebugSettings).get_IsBindingTracingEnabled(&_ret));
		return _ret;
	}
	final void IsBindingTracingEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDebugSettings).set_IsBindingTracingEnabled(value));
	}
	final bool IsOverdrawHeatMapEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDebugSettings).get_IsOverdrawHeatMapEnabled(&_ret));
		return _ret;
	}
	final void IsOverdrawHeatMapEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDebugSettings).set_IsOverdrawHeatMapEnabled(value));
	}
	final bool EnableRedrawRegions()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDebugSettings2).get_EnableRedrawRegions(&_ret));
		return _ret;
	}
	final void EnableRedrawRegions(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDebugSettings2).set_EnableRedrawRegions(value));
	}
	final bool IsTextPerformanceVisualizationEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDebugSettings3).get_IsTextPerformanceVisualizationEnabled(&_ret));
		return _ret;
	}
	final void IsTextPerformanceVisualizationEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDebugSettings3).set_IsTextPerformanceVisualizationEnabled(value));
	}
}

interface DependencyObject : Windows.UI.Xaml.IDependencyObject, Windows.UI.Xaml.IDependencyObject2
{
extern(Windows):
	final IInspectable GetValue(Windows.UI.Xaml.DependencyProperty dp)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyObject).abi_GetValue(dp, &_ret));
		return _ret;
	}
	final void SetValue(Windows.UI.Xaml.DependencyProperty dp, IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyObject).abi_SetValue(dp, value));
	}
	final void ClearValue(Windows.UI.Xaml.DependencyProperty dp)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyObject).abi_ClearValue(dp));
	}
	final IInspectable ReadLocalValue(Windows.UI.Xaml.DependencyProperty dp)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyObject).abi_ReadLocalValue(dp, &_ret));
		return _ret;
	}
	final IInspectable GetAnimationBaseValue(Windows.UI.Xaml.DependencyProperty dp)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyObject).abi_GetAnimationBaseValue(dp, &_ret));
		return _ret;
	}
	final Windows.UI.Core.CoreDispatcher Dispatcher()
	{
		Windows.UI.Core.CoreDispatcher _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyObject).get_Dispatcher(&_ret));
		return _ret;
	}
	final INT64 RegisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.DependencyPropertyChangedCallback callback)
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyObject2).abi_RegisterPropertyChangedCallback(dp, callback, &_ret));
		return _ret;
	}
	final void UnregisterPropertyChangedCallback(Windows.UI.Xaml.DependencyProperty dp, INT64 token)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyObject2).abi_UnregisterPropertyChangedCallback(dp, token));
	}
}

interface DependencyObjectCollection : Windows.UI.Xaml.DependencyObject, Windows.Foundation.Collections.IObservableVector!(Windows.UI.Xaml.DependencyObject), Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.DependencyObject), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.DependencyObject)
{
}

interface DependencyProperty : Windows.UI.Xaml.IDependencyProperty
{
extern(Windows):
	final Windows.UI.Xaml.PropertyMetadata GetMetadata(Windows.UI.Xaml.Interop.TypeName forType)
	{
		Windows.UI.Xaml.PropertyMetadata _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyProperty).abi_GetMetadata(forType, &_ret));
		return _ret;
	}
}

interface DependencyPropertyChangedEventArgs : Windows.UI.Xaml.IDependencyPropertyChangedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.DependencyProperty Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyPropertyChangedEventArgs).get_Property(&_ret));
		return _ret;
	}
	final IInspectable OldValue()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyPropertyChangedEventArgs).get_OldValue(&_ret));
		return _ret;
	}
	final IInspectable NewValue()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDependencyPropertyChangedEventArgs).get_NewValue(&_ret));
		return _ret;
	}
}

interface DispatcherTimer : Windows.UI.Xaml.IDispatcherTimer
{
extern(Windows):
	final Windows.Foundation.TimeSpan Interval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDispatcherTimer).get_Interval(&_ret));
		return _ret;
	}
	final void Interval(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDispatcherTimer).set_Interval(value));
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDispatcherTimer).get_IsEnabled(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDispatcherTimer).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDispatcherTimer).abi_Stop());
	}
}

interface DragEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.IDragEventArgs, Windows.UI.Xaml.IDragEventArgs2, Windows.UI.Xaml.IDragEventArgs3
{
extern(Windows):
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs).set_Handled(value));
	}
	final Windows.ApplicationModel.DataTransfer.DataPackage Data()
	{
		Windows.ApplicationModel.DataTransfer.DataPackage _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.ApplicationModel.DataTransfer.DataPackage value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs).set_Data(value));
	}
	final Windows.Foundation.Point GetPosition(Windows.UI.Xaml.UIElement relativeTo)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs).abi_GetPosition(relativeTo, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageView DataView()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageView _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs2).get_DataView(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DragUIOverride DragUIOverride()
	{
		Windows.UI.Xaml.DragUIOverride _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs2).get_DragUIOverride(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers Modifiers()
	{
		Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs2).get_Modifiers(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation AcceptedOperation()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs2).get_AcceptedOperation(&_ret));
		return _ret;
	}
	final void AcceptedOperation(Windows.ApplicationModel.DataTransfer.DataPackageOperation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs2).set_AcceptedOperation(value));
	}
	final Windows.UI.Xaml.DragOperationDeferral GetDeferral()
	{
		Windows.UI.Xaml.DragOperationDeferral _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs2).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation AllowedOperations()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragEventArgs3).get_AllowedOperations(&_ret));
		return _ret;
	}
}

interface DragOperationDeferral : Windows.UI.Xaml.IDragOperationDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragOperationDeferral).abi_Complete());
	}
}

interface DragStartingEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.IDragStartingEventArgs, Windows.UI.Xaml.IDragStartingEventArgs2
{
extern(Windows):
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragStartingEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragStartingEventArgs).set_Cancel(value));
	}
	final Windows.ApplicationModel.DataTransfer.DataPackage Data()
	{
		Windows.ApplicationModel.DataTransfer.DataPackage _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragStartingEventArgs).get_Data(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DragUI DragUI()
	{
		Windows.UI.Xaml.DragUI _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragStartingEventArgs).get_DragUI(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.DragOperationDeferral GetDeferral()
	{
		Windows.UI.Xaml.DragOperationDeferral _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragStartingEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point GetPosition(Windows.UI.Xaml.UIElement relativeTo)
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragStartingEventArgs).abi_GetPosition(relativeTo, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation AllowedOperations()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragStartingEventArgs2).get_AllowedOperations(&_ret));
		return _ret;
	}
	final void AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragStartingEventArgs2).set_AllowedOperations(value));
	}
}

interface DragUI : Windows.UI.Xaml.IDragUI
{
extern(Windows):
	final void SetContentFromBitmapImage(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUI).abi_SetContentFromBitmapImage(bitmapImage));
	}
	final void SetContentFromBitmapImageWithAnchorPoint(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage, Windows.Foundation.Point anchorPoint)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUI).abi_SetContentFromBitmapImageWithAnchorPoint(bitmapImage, anchorPoint));
	}
	final void SetContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUI).abi_SetContentFromSoftwareBitmap(softwareBitmap));
	}
	final void SetContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUI).abi_SetContentFromSoftwareBitmapWithAnchorPoint(softwareBitmap, anchorPoint));
	}
	final void SetContentFromDataPackage()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUI).abi_SetContentFromDataPackage());
	}
}

interface DragUIOverride : Windows.UI.Xaml.IDragUIOverride
{
extern(Windows):
	final HSTRING Caption()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).get_Caption(&_ret));
		return _ret;
	}
	final void Caption(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).set_Caption(value));
	}
	final bool IsContentVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).get_IsContentVisible(&_ret));
		return _ret;
	}
	final void IsContentVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).set_IsContentVisible(value));
	}
	final bool IsCaptionVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).get_IsCaptionVisible(&_ret));
		return _ret;
	}
	final void IsCaptionVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).set_IsCaptionVisible(value));
	}
	final bool IsGlyphVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).get_IsGlyphVisible(&_ret));
		return _ret;
	}
	final void IsGlyphVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).set_IsGlyphVisible(value));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).abi_Clear());
	}
	final void SetContentFromBitmapImage(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).abi_SetContentFromBitmapImage(bitmapImage));
	}
	final void SetContentFromBitmapImageWithAnchorPoint(Windows.UI.Xaml.Media.Imaging.BitmapImage bitmapImage, Windows.Foundation.Point anchorPoint)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).abi_SetContentFromBitmapImageWithAnchorPoint(bitmapImage, anchorPoint));
	}
	final void SetContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).abi_SetContentFromSoftwareBitmap(softwareBitmap));
	}
	final void SetContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IDragUIOverride).abi_SetContentFromSoftwareBitmapWithAnchorPoint(softwareBitmap, anchorPoint));
	}
}

interface DropCompletedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.IDropCompletedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.DataTransfer.DataPackageOperation DropResult()
	{
		Windows.ApplicationModel.DataTransfer.DataPackageOperation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IDropCompletedEventArgs).get_DropResult(&_ret));
		return _ret;
	}
}

interface DurationHelper : Windows.UI.Xaml.IDurationHelper
{
}

interface ElementSoundPlayer : Windows.UI.Xaml.IElementSoundPlayer
{
}

interface EventTrigger : Windows.UI.Xaml.TriggerBase, Windows.UI.Xaml.IEventTrigger
{
extern(Windows):
	final Windows.UI.Xaml.RoutedEvent RoutedEvent()
	{
		Windows.UI.Xaml.RoutedEvent _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IEventTrigger).get_RoutedEvent(&_ret));
		return _ret;
	}
	final void RoutedEvent(Windows.UI.Xaml.RoutedEvent value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IEventTrigger).set_RoutedEvent(value));
	}
	final Windows.UI.Xaml.TriggerActionCollection Actions()
	{
		Windows.UI.Xaml.TriggerActionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IEventTrigger).get_Actions(&_ret));
		return _ret;
	}
}

interface ExceptionRoutedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.IExceptionRoutedEventArgs
{
extern(Windows):
	final HSTRING ErrorMessage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IExceptionRoutedEventArgs).get_ErrorMessage(&_ret));
		return _ret;
	}
}

interface FrameworkElement : Windows.UI.Xaml.UIElement, Windows.UI.Xaml.IFrameworkElement, Windows.UI.Xaml.IFrameworkElementOverrides, Windows.UI.Xaml.IFrameworkElement2, Windows.UI.Xaml.IFrameworkElementOverrides2, Windows.UI.Xaml.IFrameworkElement3, Windows.UI.Xaml.IFrameworkElement4
{
extern(Windows):
	final Windows.UI.Xaml.TriggerCollection Triggers()
	{
		Windows.UI.Xaml.TriggerCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_Triggers(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.ResourceDictionary Resources()
	{
		Windows.UI.Xaml.ResourceDictionary _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_Resources(&_ret));
		return _ret;
	}
	final void Resources(Windows.UI.Xaml.ResourceDictionary value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_Resources(value));
	}
	final IInspectable Tag()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_Tag(&_ret));
		return _ret;
	}
	final void Tag(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_Tag(value));
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_Language(&_ret));
		return _ret;
	}
	final void Language(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_Language(value));
	}
	final double ActualWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_ActualWidth(&_ret));
		return _ret;
	}
	final double ActualHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_ActualHeight(&_ret));
		return _ret;
	}
	final double Width()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_Width(&_ret));
		return _ret;
	}
	final void Width(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_Width(value));
	}
	final double Height()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_Height(&_ret));
		return _ret;
	}
	final void Height(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_Height(value));
	}
	final double MinWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_MinWidth(&_ret));
		return _ret;
	}
	final void MinWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_MinWidth(value));
	}
	final double MaxWidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_MaxWidth(&_ret));
		return _ret;
	}
	final void MaxWidth(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_MaxWidth(value));
	}
	final double MinHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_MinHeight(&_ret));
		return _ret;
	}
	final void MinHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_MinHeight(value));
	}
	final double MaxHeight()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_MaxHeight(&_ret));
		return _ret;
	}
	final void MaxHeight(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_MaxHeight(value));
	}
	final Windows.UI.Xaml.HorizontalAlignment HorizontalAlignment()
	{
		Windows.UI.Xaml.HorizontalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_HorizontalAlignment(&_ret));
		return _ret;
	}
	final void HorizontalAlignment(Windows.UI.Xaml.HorizontalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_HorizontalAlignment(value));
	}
	final Windows.UI.Xaml.VerticalAlignment VerticalAlignment()
	{
		Windows.UI.Xaml.VerticalAlignment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_VerticalAlignment(&_ret));
		return _ret;
	}
	final void VerticalAlignment(Windows.UI.Xaml.VerticalAlignment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_VerticalAlignment(value));
	}
	final Windows.UI.Xaml.Thickness Margin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_Margin(&_ret));
		return _ret;
	}
	final void Margin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_Margin(value));
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_Name(value));
	}
	final Windows.Foundation.Uri BaseUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_BaseUri(&_ret));
		return _ret;
	}
	final IInspectable DataContext()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_DataContext(&_ret));
		return _ret;
	}
	final void DataContext(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_DataContext(value));
	}
	final Windows.UI.Xaml.Style Style()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_Style(&_ret));
		return _ret;
	}
	final void Style(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_Style(value));
	}
	final Windows.UI.Xaml.DependencyObject Parent()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_Parent(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.FlowDirection FlowDirection()
	{
		Windows.UI.Xaml.FlowDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).get_FlowDirection(&_ret));
		return _ret;
	}
	final void FlowDirection(Windows.UI.Xaml.FlowDirection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).set_FlowDirection(value));
	}
	final IInspectable FindName(HSTRING name)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).abi_FindName(name, &_ret));
		return _ret;
	}
	final void SetBinding(Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingBase binding)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement).abi_SetBinding(dp, binding));
	}
	final Windows.Foundation.Size MeasureOverride(Windows.Foundation.Size availableSize)
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElementOverrides).abi_MeasureOverride(availableSize, &_ret));
		return _ret;
	}
	final Windows.Foundation.Size ArrangeOverride(Windows.Foundation.Size finalSize)
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElementOverrides).abi_ArrangeOverride(finalSize, &_ret));
		return _ret;
	}
	final void OnApplyTemplate()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElementOverrides).abi_OnApplyTemplate());
	}
	final Windows.UI.Xaml.ElementTheme RequestedTheme()
	{
		Windows.UI.Xaml.ElementTheme _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement2).get_RequestedTheme(&_ret));
		return _ret;
	}
	final void RequestedTheme(Windows.UI.Xaml.ElementTheme value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement2).set_RequestedTheme(value));
	}
	final Windows.UI.Xaml.Data.BindingExpression GetBindingExpression(Windows.UI.Xaml.DependencyProperty dp)
	{
		Windows.UI.Xaml.Data.BindingExpression _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement2).abi_GetBindingExpression(dp, &_ret));
		return _ret;
	}
	final bool GoToElementStateCore(HSTRING stateName, bool useTransitions)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElementOverrides2).abi_GoToElementStateCore(stateName, useTransitions, &_ret));
		return _ret;
	}
	final bool AllowFocusOnInteraction()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).get_AllowFocusOnInteraction(&_ret));
		return _ret;
	}
	final void AllowFocusOnInteraction(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).set_AllowFocusOnInteraction(value));
	}
	final Windows.UI.Xaml.Thickness FocusVisualMargin()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).get_FocusVisualMargin(&_ret));
		return _ret;
	}
	final void FocusVisualMargin(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).set_FocusVisualMargin(value));
	}
	final Windows.UI.Xaml.Thickness FocusVisualSecondaryThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).get_FocusVisualSecondaryThickness(&_ret));
		return _ret;
	}
	final void FocusVisualSecondaryThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).set_FocusVisualSecondaryThickness(value));
	}
	final Windows.UI.Xaml.Thickness FocusVisualPrimaryThickness()
	{
		Windows.UI.Xaml.Thickness _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).get_FocusVisualPrimaryThickness(&_ret));
		return _ret;
	}
	final void FocusVisualPrimaryThickness(Windows.UI.Xaml.Thickness value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).set_FocusVisualPrimaryThickness(value));
	}
	final Windows.UI.Xaml.Media.Brush FocusVisualSecondaryBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).get_FocusVisualSecondaryBrush(&_ret));
		return _ret;
	}
	final void FocusVisualSecondaryBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).set_FocusVisualSecondaryBrush(value));
	}
	final Windows.UI.Xaml.Media.Brush FocusVisualPrimaryBrush()
	{
		Windows.UI.Xaml.Media.Brush _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).get_FocusVisualPrimaryBrush(&_ret));
		return _ret;
	}
	final void FocusVisualPrimaryBrush(Windows.UI.Xaml.Media.Brush value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).set_FocusVisualPrimaryBrush(value));
	}
	final bool AllowFocusWhenDisabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).get_AllowFocusWhenDisabled(&_ret));
		return _ret;
	}
	final void AllowFocusWhenDisabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IFrameworkElement4).set_AllowFocusWhenDisabled(value));
	}
}

interface FrameworkTemplate : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IFrameworkTemplate
{
}

interface FrameworkView : Windows.UI.Xaml.IFrameworkView, Windows.ApplicationModel.Core.IFrameworkView
{
extern(Windows):
	final void Initialize(Windows.ApplicationModel.Core.CoreApplicationView applicationView)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Core.IFrameworkView).abi_Initialize(applicationView));
	}
	final void SetWindow(Windows.UI.Core.CoreWindow window)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Core.IFrameworkView).abi_SetWindow(window));
	}
	final void Load(HSTRING entryPoint)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Core.IFrameworkView).abi_Load(entryPoint));
	}
	final void Run()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Core.IFrameworkView).abi_Run());
	}
	final void Uninitialize()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Core.IFrameworkView).abi_Uninitialize());
	}
}

interface FrameworkViewSource : Windows.UI.Xaml.IFrameworkViewSource, Windows.ApplicationModel.Core.IFrameworkViewSource
{
extern(Windows):
	final Windows.ApplicationModel.Core.IFrameworkView CreateView()
	{
		Windows.ApplicationModel.Core.IFrameworkView _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Core.IFrameworkViewSource).abi_CreateView(&_ret));
		return _ret;
	}
}

interface GridLengthHelper : Windows.UI.Xaml.IGridLengthHelper
{
}

interface MediaFailedRoutedEventArgs : Windows.UI.Xaml.ExceptionRoutedEventArgs, Windows.UI.Xaml.IMediaFailedRoutedEventArgs
{
extern(Windows):
	final HSTRING ErrorTrace()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IMediaFailedRoutedEventArgs).get_ErrorTrace(&_ret));
		return _ret;
	}
}

interface PointHelper : Windows.UI.Xaml.IPointHelper
{
}

interface PropertyMetadata : Windows.UI.Xaml.IPropertyMetadata
{
extern(Windows):
	final IInspectable DefaultValue()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IPropertyMetadata).get_DefaultValue(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.CreateDefaultValueCallback CreateDefaultValueCallback()
	{
		Windows.UI.Xaml.CreateDefaultValueCallback _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IPropertyMetadata).get_CreateDefaultValueCallback(&_ret));
		return _ret;
	}
}

interface PropertyPath : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IPropertyPath
{
extern(Windows):
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IPropertyPath).get_Path(&_ret));
		return _ret;
	}
}

interface RectHelper : Windows.UI.Xaml.IRectHelper
{
}

interface ResourceDictionary : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IResourceDictionary, Windows.Foundation.Collections.IMap!(IInspectable, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(IInspectable, IInspectable))
{
extern(Windows):
	final Windows.Foundation.Uri Source()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IResourceDictionary).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IResourceDictionary).set_Source(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.ResourceDictionary) MergedDictionaries()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.ResourceDictionary) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IResourceDictionary).get_MergedDictionaries(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(IInspectable, IInspectable) ThemeDictionaries()
	{
		Windows.Foundation.Collections.IMap!(IInspectable, IInspectable) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IResourceDictionary).get_ThemeDictionaries(&_ret));
		return _ret;
	}
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
		Debug.OK(this.as!(Windows.UI.Xaml.IRoutedEventArgs).get_OriginalSource(&_ret));
		return _ret;
	}
}

interface Setter : Windows.UI.Xaml.SetterBase, Windows.UI.Xaml.ISetter, Windows.UI.Xaml.ISetter2
{
extern(Windows):
	final Windows.UI.Xaml.DependencyProperty Property()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.ISetter).get_Property(&_ret));
		return _ret;
	}
	final void Property(Windows.UI.Xaml.DependencyProperty value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.ISetter).set_Property(value));
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.ISetter).get_Value(&_ret));
		return _ret;
	}
	final void Value(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.ISetter).set_Value(value));
	}
	final Windows.UI.Xaml.TargetPropertyPath Target()
	{
		Windows.UI.Xaml.TargetPropertyPath _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.ISetter2).get_Target(&_ret));
		return _ret;
	}
	final void Target(Windows.UI.Xaml.TargetPropertyPath value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.ISetter2).set_Target(value));
	}
}

interface SetterBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.ISetterBase
{
extern(Windows):
	final bool IsSealed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.ISetterBase).get_IsSealed(&_ret));
		return _ret;
	}
}

interface SetterBaseCollection : Windows.UI.Xaml.ISetterBaseCollection, Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.SetterBase), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.SetterBase)
{
extern(Windows):
	final bool IsSealed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.ISetterBaseCollection).get_IsSealed(&_ret));
		return _ret;
	}
}

interface SizeChangedEventArgs : Windows.UI.Xaml.RoutedEventArgs, Windows.UI.Xaml.ISizeChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.Size PreviousSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.ISizeChangedEventArgs).get_PreviousSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size NewSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.ISizeChangedEventArgs).get_NewSize(&_ret));
		return _ret;
	}
}

interface SizeHelper : Windows.UI.Xaml.ISizeHelper
{
}

interface StateTrigger : Windows.UI.Xaml.StateTriggerBase, Windows.UI.Xaml.IStateTrigger
{
extern(Windows):
	final bool IsActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IStateTrigger).get_IsActive(&_ret));
		return _ret;
	}
	final void IsActive(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IStateTrigger).set_IsActive(value));
	}
}

interface StateTriggerBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IStateTriggerBase, Windows.UI.Xaml.IStateTriggerBaseProtected
{
extern(Windows):
	final void SetActive(bool IsActive)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IStateTriggerBaseProtected).abi_SetActive(IsActive));
	}
}

interface Style : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IStyle
{
extern(Windows):
	final bool IsSealed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IStyle).get_IsSealed(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.SetterBaseCollection Setters()
	{
		Windows.UI.Xaml.SetterBaseCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IStyle).get_Setters(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Interop.TypeName TargetType()
	{
		Windows.UI.Xaml.Interop.TypeName _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IStyle).get_TargetType(&_ret));
		return _ret;
	}
	final void TargetType(Windows.UI.Xaml.Interop.TypeName value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IStyle).set_TargetType(value));
	}
	final Windows.UI.Xaml.Style BasedOn()
	{
		Windows.UI.Xaml.Style _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IStyle).get_BasedOn(&_ret));
		return _ret;
	}
	final void BasedOn(Windows.UI.Xaml.Style value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IStyle).set_BasedOn(value));
	}
	final void Seal()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IStyle).abi_Seal());
	}
}

interface TargetPropertyPath : Windows.UI.Xaml.ITargetPropertyPath
{
extern(Windows):
	final Windows.UI.Xaml.PropertyPath Path()
	{
		Windows.UI.Xaml.PropertyPath _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.ITargetPropertyPath).get_Path(&_ret));
		return _ret;
	}
	final void Path(Windows.UI.Xaml.PropertyPath value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.ITargetPropertyPath).set_Path(value));
	}
	final IInspectable Target()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.ITargetPropertyPath).get_Target(&_ret));
		return _ret;
	}
	final void Target(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.ITargetPropertyPath).set_Target(value));
	}
}

interface ThicknessHelper : Windows.UI.Xaml.IThicknessHelper
{
}

interface TriggerAction : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.ITriggerAction
{
}

interface TriggerActionCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerAction), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.TriggerAction)
{
}

interface TriggerBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.ITriggerBase
{
}

interface TriggerCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.TriggerBase), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.TriggerBase)
{
}

interface UIElement : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IUIElement, Windows.UI.Xaml.IUIElementOverrides, Windows.UI.Xaml.IUIElement2, Windows.UI.Xaml.IUIElement3, Windows.UI.Xaml.IUIElement4, Windows.UI.Xaml.IUIElement5
{
extern(Windows):
	final Windows.Foundation.Size DesiredSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_DesiredSize(&_ret));
		return _ret;
	}
	final bool AllowDrop()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_AllowDrop(&_ret));
		return _ret;
	}
	final void AllowDrop(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_AllowDrop(value));
	}
	final double Opacity()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_Opacity(&_ret));
		return _ret;
	}
	final void Opacity(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_Opacity(value));
	}
	final Windows.UI.Xaml.Media.RectangleGeometry Clip()
	{
		Windows.UI.Xaml.Media.RectangleGeometry _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_Clip(&_ret));
		return _ret;
	}
	final void Clip(Windows.UI.Xaml.Media.RectangleGeometry value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_Clip(value));
	}
	final Windows.UI.Xaml.Media.Transform RenderTransform()
	{
		Windows.UI.Xaml.Media.Transform _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_RenderTransform(&_ret));
		return _ret;
	}
	final void RenderTransform(Windows.UI.Xaml.Media.Transform value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_RenderTransform(value));
	}
	final Windows.UI.Xaml.Media.Projection Projection()
	{
		Windows.UI.Xaml.Media.Projection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_Projection(&_ret));
		return _ret;
	}
	final void Projection(Windows.UI.Xaml.Media.Projection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_Projection(value));
	}
	final Windows.Foundation.Point RenderTransformOrigin()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_RenderTransformOrigin(&_ret));
		return _ret;
	}
	final void RenderTransformOrigin(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_RenderTransformOrigin(value));
	}
	final bool IsHitTestVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_IsHitTestVisible(&_ret));
		return _ret;
	}
	final void IsHitTestVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_IsHitTestVisible(value));
	}
	final Windows.UI.Xaml.Visibility Visibility()
	{
		Windows.UI.Xaml.Visibility _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_Visibility(&_ret));
		return _ret;
	}
	final void Visibility(Windows.UI.Xaml.Visibility value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_Visibility(value));
	}
	final Windows.Foundation.Size RenderSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_RenderSize(&_ret));
		return _ret;
	}
	final bool UseLayoutRounding()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_UseLayoutRounding(&_ret));
		return _ret;
	}
	final void UseLayoutRounding(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_UseLayoutRounding(value));
	}
	final Windows.UI.Xaml.Media.Animation.TransitionCollection Transitions()
	{
		Windows.UI.Xaml.Media.Animation.TransitionCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_Transitions(&_ret));
		return _ret;
	}
	final void Transitions(Windows.UI.Xaml.Media.Animation.TransitionCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_Transitions(value));
	}
	final Windows.UI.Xaml.Media.CacheMode CacheMode()
	{
		Windows.UI.Xaml.Media.CacheMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_CacheMode(&_ret));
		return _ret;
	}
	final void CacheMode(Windows.UI.Xaml.Media.CacheMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_CacheMode(value));
	}
	final bool IsTapEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_IsTapEnabled(&_ret));
		return _ret;
	}
	final void IsTapEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_IsTapEnabled(value));
	}
	final bool IsDoubleTapEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_IsDoubleTapEnabled(&_ret));
		return _ret;
	}
	final void IsDoubleTapEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_IsDoubleTapEnabled(value));
	}
	final bool IsRightTapEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_IsRightTapEnabled(&_ret));
		return _ret;
	}
	final void IsRightTapEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_IsRightTapEnabled(value));
	}
	final bool IsHoldingEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_IsHoldingEnabled(&_ret));
		return _ret;
	}
	final void IsHoldingEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_IsHoldingEnabled(value));
	}
	final Windows.UI.Xaml.Input.ManipulationModes ManipulationMode()
	{
		Windows.UI.Xaml.Input.ManipulationModes _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_ManipulationMode(&_ret));
		return _ret;
	}
	final void ManipulationMode(Windows.UI.Xaml.Input.ManipulationModes value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).set_ManipulationMode(value));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Input.Pointer) PointerCaptures()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Input.Pointer) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).get_PointerCaptures(&_ret));
		return _ret;
	}
	final void Measure(Windows.Foundation.Size availableSize)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_Measure(availableSize));
	}
	final void Arrange(Windows.Foundation.Rect finalRect)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_Arrange(finalRect));
	}
	final bool CapturePointer(Windows.UI.Xaml.Input.Pointer value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_CapturePointer(value, &_ret));
		return _ret;
	}
	final void ReleasePointerCapture(Windows.UI.Xaml.Input.Pointer value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_ReleasePointerCapture(value));
	}
	final void ReleasePointerCaptures()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_ReleasePointerCaptures());
	}
	final void AddHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler, bool handledEventsToo)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_AddHandler(routedEvent, handler, handledEventsToo));
	}
	final void RemoveHandler(Windows.UI.Xaml.RoutedEvent routedEvent, IInspectable handler)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_RemoveHandler(routedEvent, handler));
	}
	final Windows.UI.Xaml.Media.GeneralTransform TransformToVisual(Windows.UI.Xaml.UIElement visual)
	{
		Windows.UI.Xaml.Media.GeneralTransform _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_TransformToVisual(visual, &_ret));
		return _ret;
	}
	final void InvalidateMeasure()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_InvalidateMeasure());
	}
	final void InvalidateArrange()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_InvalidateArrange());
	}
	final void UpdateLayout()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement).abi_UpdateLayout());
	}
	final Windows.UI.Xaml.Automation.Peers.AutomationPeer OnCreateAutomationPeer()
	{
		Windows.UI.Xaml.Automation.Peers.AutomationPeer _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElementOverrides).abi_OnCreateAutomationPeer(&_ret));
		return _ret;
	}
	final void OnDisconnectVisualChildren()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElementOverrides).abi_OnDisconnectVisualChildren());
	}
	final Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point)) FindSubElementsForTouchTargeting(Windows.Foundation.Point point, Windows.Foundation.Rect boundingRect)
	{
		Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point)) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElementOverrides).abi_FindSubElementsForTouchTargeting(point, boundingRect, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.ElementCompositeMode CompositeMode()
	{
		Windows.UI.Xaml.Media.ElementCompositeMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement2).get_CompositeMode(&_ret));
		return _ret;
	}
	final void CompositeMode(Windows.UI.Xaml.Media.ElementCompositeMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement2).set_CompositeMode(value));
	}
	final bool CancelDirectManipulations()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement2).abi_CancelDirectManipulations(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Media3D.Transform3D Transform3D()
	{
		Windows.UI.Xaml.Media.Media3D.Transform3D _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement3).get_Transform3D(&_ret));
		return _ret;
	}
	final void Transform3D(Windows.UI.Xaml.Media.Media3D.Transform3D value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement3).set_Transform3D(value));
	}
	final bool CanDrag()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement3).get_CanDrag(&_ret));
		return _ret;
	}
	final void CanDrag(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement3).set_CanDrag(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation) StartDragAsync(Windows.UI.Input.PointerPoint pointerPoint)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement3).abi_StartDragAsync(pointerPoint, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Controls.Primitives.FlyoutBase ContextFlyout()
	{
		Windows.UI.Xaml.Controls.Primitives.FlyoutBase _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement4).get_ContextFlyout(&_ret));
		return _ret;
	}
	final void ContextFlyout(Windows.UI.Xaml.Controls.Primitives.FlyoutBase value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement4).set_ContextFlyout(value));
	}
	final bool ExitDisplayModeOnAccessKeyInvoked()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement4).get_ExitDisplayModeOnAccessKeyInvoked(&_ret));
		return _ret;
	}
	final void ExitDisplayModeOnAccessKeyInvoked(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement4).set_ExitDisplayModeOnAccessKeyInvoked(value));
	}
	final bool IsAccessKeyScope()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement4).get_IsAccessKeyScope(&_ret));
		return _ret;
	}
	final void IsAccessKeyScope(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement4).set_IsAccessKeyScope(value));
	}
	final Windows.UI.Xaml.DependencyObject AccessKeyScopeOwner()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement4).get_AccessKeyScopeOwner(&_ret));
		return _ret;
	}
	final void AccessKeyScopeOwner(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement4).set_AccessKeyScopeOwner(value));
	}
	final HSTRING AccessKey()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement4).get_AccessKey(&_ret));
		return _ret;
	}
	final void AccessKey(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement4).set_AccessKey(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.XamlLight) Lights()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.XamlLight) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_Lights(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Input.KeyTipPlacementMode KeyTipPlacementMode()
	{
		Windows.UI.Xaml.Input.KeyTipPlacementMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_KeyTipPlacementMode(&_ret));
		return _ret;
	}
	final void KeyTipPlacementMode(Windows.UI.Xaml.Input.KeyTipPlacementMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).set_KeyTipPlacementMode(value));
	}
	final double KeyTipHorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_KeyTipHorizontalOffset(&_ret));
		return _ret;
	}
	final void KeyTipHorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).set_KeyTipHorizontalOffset(value));
	}
	final double KeyTipVerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_KeyTipVerticalOffset(&_ret));
		return _ret;
	}
	final void KeyTipVerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).set_KeyTipVerticalOffset(value));
	}
	final Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode XYFocusKeyboardNavigation()
	{
		Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_XYFocusKeyboardNavigation(&_ret));
		return _ret;
	}
	final void XYFocusKeyboardNavigation(Windows.UI.Xaml.Input.XYFocusKeyboardNavigationMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).set_XYFocusKeyboardNavigation(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusUpNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_XYFocusUpNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusUpNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).set_XYFocusUpNavigationStrategy(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusDownNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_XYFocusDownNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusDownNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).set_XYFocusDownNavigationStrategy(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusLeftNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_XYFocusLeftNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusLeftNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).set_XYFocusLeftNavigationStrategy(value));
	}
	final Windows.UI.Xaml.Input.XYFocusNavigationStrategy XYFocusRightNavigationStrategy()
	{
		Windows.UI.Xaml.Input.XYFocusNavigationStrategy _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_XYFocusRightNavigationStrategy(&_ret));
		return _ret;
	}
	final void XYFocusRightNavigationStrategy(Windows.UI.Xaml.Input.XYFocusNavigationStrategy value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).set_XYFocusRightNavigationStrategy(value));
	}
	final Windows.UI.Xaml.ElementHighContrastAdjustment HighContrastAdjustment()
	{
		Windows.UI.Xaml.ElementHighContrastAdjustment _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_HighContrastAdjustment(&_ret));
		return _ret;
	}
	final void HighContrastAdjustment(Windows.UI.Xaml.ElementHighContrastAdjustment value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).set_HighContrastAdjustment(value));
	}
	final Windows.UI.Xaml.Input.KeyboardNavigationMode TabFocusNavigation()
	{
		Windows.UI.Xaml.Input.KeyboardNavigationMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).get_TabFocusNavigation(&_ret));
		return _ret;
	}
	final void TabFocusNavigation(Windows.UI.Xaml.Input.KeyboardNavigationMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).set_TabFocusNavigation(value));
	}
	final void StartBringIntoView()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).abi_StartBringIntoView());
	}
	final void StartBringIntoViewWithOptions(Windows.UI.Xaml.BringIntoViewOptions options)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUIElement5).abi_StartBringIntoViewWithOptions(options));
	}
}

interface UnhandledExceptionEventArgs : Windows.UI.Xaml.IUnhandledExceptionEventArgs
{
extern(Windows):
	final HRESULT Exception()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUnhandledExceptionEventArgs).get_Exception(&_ret));
		return _ret;
	}
	final HSTRING Message()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUnhandledExceptionEventArgs).get_Message(&_ret));
		return _ret;
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IUnhandledExceptionEventArgs).get_Handled(&_ret));
		return _ret;
	}
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IUnhandledExceptionEventArgs).set_Handled(value));
	}
}

interface VisualState : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IVisualState, Windows.UI.Xaml.IVisualState2
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualState).get_Name(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Animation.Storyboard Storyboard()
	{
		Windows.UI.Xaml.Media.Animation.Storyboard _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualState).get_Storyboard(&_ret));
		return _ret;
	}
	final void Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualState).set_Storyboard(value));
	}
	final Windows.UI.Xaml.SetterBaseCollection Setters()
	{
		Windows.UI.Xaml.SetterBaseCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualState2).get_Setters(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.StateTriggerBase) StateTriggers()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.StateTriggerBase) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualState2).get_StateTriggers(&_ret));
		return _ret;
	}
}

interface VisualStateChangedEventArgs : Windows.UI.Xaml.IVisualStateChangedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.VisualState OldState()
	{
		Windows.UI.Xaml.VisualState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateChangedEventArgs).get_OldState(&_ret));
		return _ret;
	}
	final void OldState(Windows.UI.Xaml.VisualState value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateChangedEventArgs).set_OldState(value));
	}
	final Windows.UI.Xaml.VisualState NewState()
	{
		Windows.UI.Xaml.VisualState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateChangedEventArgs).get_NewState(&_ret));
		return _ret;
	}
	final void NewState(Windows.UI.Xaml.VisualState value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateChangedEventArgs).set_NewState(value));
	}
	final Windows.UI.Xaml.Controls.Control Control()
	{
		Windows.UI.Xaml.Controls.Control _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateChangedEventArgs).get_Control(&_ret));
		return _ret;
	}
	final void Control(Windows.UI.Xaml.Controls.Control value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateChangedEventArgs).set_Control(value));
	}
}

interface VisualStateGroup : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IVisualStateGroup
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateGroup).get_Name(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualTransition) Transitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualTransition) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateGroup).get_Transitions(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualState) States()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.VisualState) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateGroup).get_States(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.VisualState CurrentState()
	{
		Windows.UI.Xaml.VisualState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateGroup).get_CurrentState(&_ret));
		return _ret;
	}
}

interface VisualStateManager : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IVisualStateManager, Windows.UI.Xaml.IVisualStateManagerOverrides, Windows.UI.Xaml.IVisualStateManagerProtected
{
extern(Windows):
	final bool GoToStateCore(Windows.UI.Xaml.Controls.Control control, Windows.UI.Xaml.FrameworkElement templateRoot, HSTRING stateName, Windows.UI.Xaml.VisualStateGroup group, Windows.UI.Xaml.VisualState state, bool useTransitions)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateManagerOverrides).abi_GoToStateCore(control, templateRoot, stateName, group, state, useTransitions, &_ret));
		return _ret;
	}
	final void RaiseCurrentStateChanging(Windows.UI.Xaml.VisualStateGroup stateGroup, Windows.UI.Xaml.VisualState oldState, Windows.UI.Xaml.VisualState newState, Windows.UI.Xaml.Controls.Control control)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateManagerProtected).abi_RaiseCurrentStateChanging(stateGroup, oldState, newState, control));
	}
	final void RaiseCurrentStateChanged(Windows.UI.Xaml.VisualStateGroup stateGroup, Windows.UI.Xaml.VisualState oldState, Windows.UI.Xaml.VisualState newState, Windows.UI.Xaml.Controls.Control control)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualStateManagerProtected).abi_RaiseCurrentStateChanged(stateGroup, oldState, newState, control));
	}
}

interface VisualTransition : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.IVisualTransition
{
extern(Windows):
	final Windows.UI.Xaml.Duration GeneratedDuration()
	{
		Windows.UI.Xaml.Duration _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualTransition).get_GeneratedDuration(&_ret));
		return _ret;
	}
	final void GeneratedDuration(Windows.UI.Xaml.Duration value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualTransition).set_GeneratedDuration(value));
	}
	final Windows.UI.Xaml.Media.Animation.EasingFunctionBase GeneratedEasingFunction()
	{
		Windows.UI.Xaml.Media.Animation.EasingFunctionBase _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualTransition).get_GeneratedEasingFunction(&_ret));
		return _ret;
	}
	final void GeneratedEasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualTransition).set_GeneratedEasingFunction(value));
	}
	final HSTRING To()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualTransition).get_To(&_ret));
		return _ret;
	}
	final void To(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualTransition).set_To(value));
	}
	final HSTRING From()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualTransition).get_From(&_ret));
		return _ret;
	}
	final void From(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualTransition).set_From(value));
	}
	final Windows.UI.Xaml.Media.Animation.Storyboard Storyboard()
	{
		Windows.UI.Xaml.Media.Animation.Storyboard _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualTransition).get_Storyboard(&_ret));
		return _ret;
	}
	final void Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IVisualTransition).set_Storyboard(value));
	}
}

interface Window : Windows.UI.Xaml.IWindow, Windows.UI.Xaml.IWindow2, Windows.UI.Xaml.IWindow3
{
extern(Windows):
	final Windows.Foundation.Rect Bounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IWindow).get_Bounds(&_ret));
		return _ret;
	}
	final bool Visible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IWindow).get_Visible(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.UIElement Content()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IWindow).get_Content(&_ret));
		return _ret;
	}
	final void Content(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IWindow).set_Content(value));
	}
	final Windows.UI.Core.CoreWindow CoreWindow()
	{
		Windows.UI.Core.CoreWindow _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IWindow).get_CoreWindow(&_ret));
		return _ret;
	}
	final Windows.UI.Core.CoreDispatcher Dispatcher()
	{
		Windows.UI.Core.CoreDispatcher _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IWindow).get_Dispatcher(&_ret));
		return _ret;
	}
	final void Activate()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IWindow).abi_Activate());
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IWindow).abi_Close());
	}
	final void SetTitleBar(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.IWindow2).abi_SetTitleBar(value));
	}
	final Windows.UI.Composition.Compositor Compositor()
	{
		Windows.UI.Composition.Compositor _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IWindow3).get_Compositor(&_ret));
		return _ret;
	}
}

interface WindowCreatedEventArgs : Windows.UI.Xaml.IWindowCreatedEventArgs
{
extern(Windows):
	final Windows.UI.Xaml.Window Window()
	{
		Windows.UI.Xaml.Window _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.IWindowCreatedEventArgs).get_Window(&_ret));
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