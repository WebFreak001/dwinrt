module Windows.UI.Xaml.Media.Animation;

import dwinrt;

struct KeyTime
{
	Windows.Foundation.TimeSpan TimeSpan;
}

struct RepeatBehavior
{
	double Count;
	Windows.Foundation.TimeSpan Duration;
	Windows.UI.Xaml.Media.Animation.RepeatBehaviorType Type;
}

@uuid("e47796e7-f805-4a8f-81c9-38e6472caa94")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BackEase")
interface IBackEase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Amplitude(double* return_value);
	HRESULT set_Amplitude(double value);
}

@uuid("3c70a2ff-a0a0-4786-926c-22321f8f25b7")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BackEase")
interface IBackEaseStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AmplitudeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("64189fcd-49ec-4e52-a6f6-55324c921053")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BeginStoryboard")
interface IBeginStoryboard : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard* return_value);
	HRESULT set_Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard value);
}

@uuid("12cff18c-aa91-4c4a-b82f-df34fc57f94b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BeginStoryboard")
interface IBeginStoryboardStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StoryboardProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2bf1464e-fc71-47ed-85a1-3ba9577718b4")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BounceEase")
interface IBounceEase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Bounces(INT32* return_value);
	HRESULT set_Bounces(INT32 value);
	HRESULT get_Bounciness(double* return_value);
	HRESULT set_Bounciness(double value);
}

@uuid("c0701da2-4f73-41c9-b2cb-2ea3105107ff")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BounceEase")
interface IBounceEaseStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BouncesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BouncinessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b8ae8a15-0f63-4694-9467-bdafac1253ea")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorAnimation")
interface IColorAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_From(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_From(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_To(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_To(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_By(Windows.Foundation.IReference!(Windows.UI.Color)* return_value);
	HRESULT set_By(Windows.Foundation.IReference!(Windows.UI.Color) value);
	HRESULT get_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value);
	HRESULT set_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("55eaf6e2-87e3-4f48-958f-855b2f9ea9ec")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorAnimation")
interface IColorAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FromProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ToProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ByProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EasingFunctionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("f5c82640-13c3-42aa-9ae2-7e6b51c92f95")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorAnimationUsingKeyFrames")
interface IColorAnimationUsingKeyFrames : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeyFrames(Windows.UI.Xaml.Media.Animation.ColorKeyFrameCollection* return_value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("b4723cdc-96e9-48f9-8d92-9b648b2f1cc6")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorAnimationUsingKeyFrames")
interface IColorAnimationUsingKeyFramesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b51d82d9-0910-4589-a284-b0c9205858e9")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorKeyFrame")
interface IColorKeyFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(Windows.UI.Color* return_value);
	HRESULT set_Value(Windows.UI.Color value);
	HRESULT get_KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime* return_value);
	HRESULT set_KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime value);
}

@uuid("769bd88a-9cfb-4a7d-96c4-a1e7de6fdb4b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorKeyFrame")
interface IColorKeyFrameFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.ColorKeyFrame* return_instance);
}

@uuid("c043ae99-210c-430f-9da5-df1082692055")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorKeyFrame")
interface IColorKeyFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("50345692-a555-4624-a361-0a91c1706473")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.CommonNavigationTransitionInfo")
interface ICommonNavigationTransitionInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsStaggeringEnabled(bool* return_value);
	HRESULT set_IsStaggeringEnabled(bool value);
}

@uuid("1e3efe33-50be-4443-883c-e5627201c2e5")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.CommonNavigationTransitionInfo")
interface ICommonNavigationTransitionInfoStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsStaggeringEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsStaggerElementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsStaggerElement(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetIsStaggerElement(Windows.UI.Xaml.UIElement element, bool value);
}

@uuid("3518628c-f387-4c25-ac98-44e86c3cadf0")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ConnectedAnimation")
interface IConnectedAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_Completed(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Media.Animation.ConnectedAnimation, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Completed(EventRegistrationToken token);
	HRESULT abi_TryStart(Windows.UI.Xaml.UIElement destination, bool* return_returnValue);
	HRESULT abi_Cancel();
}

@uuid("5d2f8e5c-584b-4ddd-b668-973891431459")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ConnectedAnimation")
interface IConnectedAnimation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsScaleAnimationEnabled(bool* return_value);
	HRESULT set_IsScaleAnimationEnabled(bool value);
	HRESULT abi_TryStartWithCoordinatedElements(Windows.UI.Xaml.UIElement destination, Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement) coordinatedElements, bool* return_returnValue);
	HRESULT abi_SetAnimationComponent(Windows.UI.Xaml.Media.Animation.ConnectedAnimationComponent component, Windows.UI.Composition.ICompositionAnimationBase animation);
}

@uuid("1c6875c9-19bb-4d47-b9aa-66c802dcb9ff")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ConnectedAnimationService")
interface IConnectedAnimationService : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DefaultDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_DefaultDuration(Windows.Foundation.TimeSpan value);
	HRESULT get_DefaultEasingFunction(Windows.UI.Composition.CompositionEasingFunction* return_value);
	HRESULT set_DefaultEasingFunction(Windows.UI.Composition.CompositionEasingFunction value);
	HRESULT abi_PrepareToAnimate(HSTRING key, Windows.UI.Xaml.UIElement source, Windows.UI.Xaml.Media.Animation.ConnectedAnimation* return_returnValue);
	HRESULT abi_GetAnimation(HSTRING key, Windows.UI.Xaml.Media.Animation.ConnectedAnimation* return_returnValue);
}

@uuid("c7078ea5-d688-40e8-8f90-96a6279273d2")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ConnectedAnimationService")
interface IConnectedAnimationServiceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Xaml.Media.Animation.ConnectedAnimationService* return_returnValue);
}

@uuid("f66fc5c3-5915-437d-8e3b-adf8e7f0ab57")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ContentThemeTransition")
interface IContentThemeTransition : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HorizontalOffset(double* return_value);
	HRESULT set_HorizontalOffset(double value);
	HRESULT get_VerticalOffset(double* return_value);
	HRESULT set_VerticalOffset(double value);
}

@uuid("0e8ee385-9a42-4459-afa9-337dc41e1587")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ContentThemeTransition")
interface IContentThemeTransitionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4be1dbad-8ba6-4004-8438-8a9017978543")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ContinuumNavigationTransitionInfo")
interface IContinuumNavigationTransitionInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExitElement(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_ExitElement(Windows.UI.Xaml.UIElement value);
}

@uuid("3e25dd53-b18f-4bf1-b3bc-92f516f29903")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ContinuumNavigationTransitionInfo")
interface IContinuumNavigationTransitionInfoStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExitElementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsEntranceElementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsEntranceElement(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetIsEntranceElement(Windows.UI.Xaml.UIElement element, bool value);
	HRESULT get_IsExitElementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsExitElement(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetIsExitElement(Windows.UI.Xaml.UIElement element, bool value);
	HRESULT get_ExitElementContainerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetExitElementContainer(Windows.UI.Xaml.Controls.ListViewBase element, bool* return_value);
	HRESULT abi_SetExitElementContainer(Windows.UI.Xaml.Controls.ListViewBase element, bool value);
}

@uuid("7e9f3d59-0f07-4bc9-977d-03763ff8154f")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleAnimation")
interface IDoubleAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_From(Windows.Foundation.IReference!(double)* return_value);
	HRESULT set_From(Windows.Foundation.IReference!(double) value);
	HRESULT get_To(Windows.Foundation.IReference!(double)* return_value);
	HRESULT set_To(Windows.Foundation.IReference!(double) value);
	HRESULT get_By(Windows.Foundation.IReference!(double)* return_value);
	HRESULT set_By(Windows.Foundation.IReference!(double) value);
	HRESULT get_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value);
	HRESULT set_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("e27a935d-f111-43b7-b824-832b58d7786b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleAnimation")
interface IDoubleAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FromProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ToProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ByProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EasingFunctionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4fee628f-bfee-4f75-83c2-a93b39488473")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleAnimationUsingKeyFrames")
interface IDoubleAnimationUsingKeyFrames : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeyFrames(Windows.UI.Xaml.Media.Animation.DoubleKeyFrameCollection* return_value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("109bf2f6-c60f-49aa-abf6-f696d492116b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleAnimationUsingKeyFrames")
interface IDoubleAnimationUsingKeyFramesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("674456fd-e81e-4f4e-b4ad-0acfed9ecd68")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleKeyFrame")
interface IDoubleKeyFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(double* return_value);
	HRESULT set_Value(double value);
	HRESULT get_KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime* return_value);
	HRESULT set_KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime value);
}

@uuid("ac97dec3-7538-40b9-b152-696f7fbf4722")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleKeyFrame")
interface IDoubleKeyFrameFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.DoubleKeyFrame* return_instance);
}

@uuid("324641b0-7d37-427a-adeb-43f38bb61a4d")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleKeyFrame")
interface IDoubleKeyFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0c7d5db5-7ed6-4949-b4e6-a78c9f4f978d")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DragItemThemeAnimation")
interface IDragItemThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("6218b9f5-013a-4fb1-86fc-92bc4e8d0241")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DragItemThemeAnimation")
interface IDragItemThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("72f762f7-7e51-4a6b-b937-dc4b4c1c5458")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DragOverThemeAnimation")
interface IDragOverThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
	HRESULT get_ToOffset(double* return_value);
	HRESULT set_ToOffset(double value);
	HRESULT get_Direction(Windows.UI.Xaml.Controls.Primitives.AnimationDirection* return_value);
	HRESULT set_Direction(Windows.UI.Xaml.Controls.Primitives.AnimationDirection value);
}

@uuid("146ffe57-3c9d-41d9-a5ff-8d7239516810")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DragOverThemeAnimation")
interface IDragOverThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ToOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DirectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b090b824-f1d2-41b8-87ba-78034126594c")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DrillInThemeAnimation")
interface IDrillInThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EntranceTargetName(HSTRING* return_value);
	HRESULT set_EntranceTargetName(HSTRING value);
	HRESULT get_EntranceTarget(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_EntranceTarget(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_ExitTargetName(HSTRING* return_value);
	HRESULT set_ExitTargetName(HSTRING value);
	HRESULT get_ExitTarget(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_ExitTarget(Windows.UI.Xaml.DependencyObject value);
}

@uuid("c61fe488-a17a-4b11-b53b-a4f1a07d4ba9")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DrillInThemeAnimation")
interface IDrillInThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EntranceTargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EntranceTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ExitTargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ExitTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d890ccdf-06d3-4f7e-8e4a-4fb76e256139")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DrillOutThemeAnimation")
interface IDrillOutThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EntranceTargetName(HSTRING* return_value);
	HRESULT set_EntranceTargetName(HSTRING value);
	HRESULT get_EntranceTarget(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_EntranceTarget(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_ExitTargetName(HSTRING* return_value);
	HRESULT set_ExitTargetName(HSTRING value);
	HRESULT get_ExitTarget(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_ExitTarget(Windows.UI.Xaml.DependencyObject value);
}

@uuid("beb5db9b-2617-4888-80dd-72fa7bb6fac3")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DrillOutThemeAnimation")
interface IDrillOutThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EntranceTargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EntranceTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ExitTargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ExitTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("1881c968-1824-462b-87e8-c357212b977b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DropTargetItemThemeAnimation")
interface IDropTargetItemThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("ae80f486-2e56-4513-bf18-d77470164ae5")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DropTargetItemThemeAnimation")
interface IDropTargetItemThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c733d630-f4b9-4934-9bdd-27ac5ed1cfd8")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingColorKeyFrame")
interface IEasingColorKeyFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value);
	HRESULT set_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value);
}

@uuid("6f3837fc-8e3d-4522-9b0f-003db8609851")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingColorKeyFrame")
interface IEasingColorKeyFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EasingFunctionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("965adb8d-9a54-4108-b4ff-b5a5212cb338")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingDoubleKeyFrame")
interface IEasingDoubleKeyFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value);
	HRESULT set_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value);
}

@uuid("c8d3d845-dbae-4e5b-8b84-d9537398e5b1")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingDoubleKeyFrame")
interface IEasingDoubleKeyFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EasingFunctionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c108383f-2c02-4151-8ecd-68ddaa3f0d9b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingFunctionBase")
interface IEasingFunctionBase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EasingMode(Windows.UI.Xaml.Media.Animation.EasingMode* return_value);
	HRESULT set_EasingMode(Windows.UI.Xaml.Media.Animation.EasingMode value);
	HRESULT abi_Ease(double normalizedTime, double* return_returnValue);
}

@uuid("2a5031aa-2c50-4a1d-bb04-d75e07b71548")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingFunctionBase")
interface IEasingFunctionBaseStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EasingModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b3c91380-6868-4225-a70b-3981cc0b2947")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingPointKeyFrame")
interface IEasingPointKeyFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value);
	HRESULT set_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value);
}

@uuid("e22dbfc4-080c-402c-a6b5-f48d0a98116b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingPointKeyFrame")
interface IEasingPointKeyFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EasingFunctionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("5c86c19b-49d7-19ec-cf19-83a73c6de75e")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EdgeUIThemeTransition")
interface IEdgeUIThemeTransition : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Edge(Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation* return_value);
	HRESULT set_Edge(Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation value);
}

@uuid("16a2b13b-4705-302b-27c6-2aac92f645ac")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EdgeUIThemeTransition")
interface IEdgeUIThemeTransitionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EdgeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ef5ba58c-b0b6-4a6c-9ca8-fb4233f12459")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ElasticEase")
interface IElasticEase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Oscillations(INT32* return_value);
	HRESULT set_Oscillations(INT32 value);
	HRESULT get_Springiness(double* return_value);
	HRESULT set_Springiness(double value);
}

@uuid("a9f566ec-fe9c-4b2b-8e52-bb785d562185")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ElasticEase")
interface IElasticEaseStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OscillationsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SpringinessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("f948c27a-40c9-469f-8f33-bf45c8811f21")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EntranceNavigationTransitionInfo")
interface IEntranceNavigationTransitionInfoStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsTargetElementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsTargetElement(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetIsTargetElement(Windows.UI.Xaml.UIElement element, bool value);
}

@uuid("07698c09-a8e3-419a-a01d-7410a0ae8ec8")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EntranceThemeTransition")
interface IEntranceThemeTransition : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FromHorizontalOffset(double* return_value);
	HRESULT set_FromHorizontalOffset(double value);
	HRESULT get_FromVerticalOffset(double* return_value);
	HRESULT set_FromVerticalOffset(double value);
	HRESULT get_IsStaggeringEnabled(bool* return_value);
	HRESULT set_IsStaggeringEnabled(bool value);
}

@uuid("37cc0577-ff98-4aed-b86e-5ec23702f877")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EntranceThemeTransition")
interface IEntranceThemeTransitionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FromHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsStaggeringEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7cb9e41d-f0bb-4bca-9da5-9ba3a11734c4")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ExponentialEase")
interface IExponentialEase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Exponent(double* return_value);
	HRESULT set_Exponent(double value);
}

@uuid("f37ee7e3-a761-4352-9ad6-70794567581a")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ExponentialEase")
interface IExponentialEaseStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExponentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6d4bc8f5-a918-4477-8078-554c68812ab8")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.FadeInThemeAnimation")
interface IFadeInThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("7f0117e1-bea9-4923-b23a-0ddf4d7b8737")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.FadeInThemeAnimation")
interface IFadeInThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("89276ba9-ffd4-45b6-9b9a-ced48951e712")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.FadeOutThemeAnimation")
interface IFadeOutThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("fe17a81a-4168-4f68-a28c-e5dd98cf680f")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.FadeOutThemeAnimation")
interface IFadeOutThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("77a163bb-d5ca-4a32-ba0b-7dff988e58a0")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.KeySpline")
interface IKeySpline : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ControlPoint1(Windows.Foundation.Point* return_value);
	HRESULT set_ControlPoint1(Windows.Foundation.Point value);
	HRESULT get_ControlPoint2(Windows.Foundation.Point* return_value);
	HRESULT set_ControlPoint2(Windows.Foundation.Point value);
}

@uuid("7fa2612c-22a9-45e9-9af7-c7416efff7a5")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.KeyTimeHelper")
interface IKeyTimeHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromTimeSpan(Windows.Foundation.TimeSpan timeSpan, Windows.UI.Xaml.Media.Animation.KeyTime* return_returnValue);
}

@uuid("8833848c-4eb7-41f2-8799-9eef0a213b73")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.NavigationThemeTransition")
interface INavigationThemeTransition : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DefaultNavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo* return_value);
	HRESULT set_DefaultNavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo value);
}

@uuid("ea2f06e0-5e60-4f8e-bcaf-431487a294ab")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.NavigationThemeTransition")
interface INavigationThemeTransitionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DefaultNavigationTransitionInfoProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("edf4f8d5-af63-4fab-9d4a-87927f82dd6b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo")
interface INavigationTransitionInfoFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo* return_instance);
}

@uuid("d9517e6a-a9d0-4bf7-9db0-4633a69daff2")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo")
interface INavigationTransitionInfoOverrides : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetNavigationStateCore(HSTRING* return_returnValue);
	HRESULT abi_SetNavigationStateCore(HSTRING navigationState);
}

@uuid("334a2d92-b74a-4c64-b9a6-58bcfa314f22")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ObjectAnimationUsingKeyFrames")
interface IObjectAnimationUsingKeyFrames : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeyFrames(Windows.UI.Xaml.Media.Animation.ObjectKeyFrameCollection* return_value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("eb736182-6af1-49a3-97b6-783ed97400fe")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ObjectAnimationUsingKeyFrames")
interface IObjectAnimationUsingKeyFramesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9852a851-8593-48ee-a6a4-d5d4720f029a")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ObjectKeyFrame")
interface IObjectKeyFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(IInspectable* return_value);
	HRESULT set_Value(IInspectable value);
	HRESULT get_KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime* return_value);
	HRESULT set_KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime value);
}

@uuid("1626143e-3e6d-44d8-9b9a-04aea70f8492")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ObjectKeyFrame")
interface IObjectKeyFrameFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.ObjectKeyFrame* return_instance);
}

@uuid("2cd6ab00-5319-4286-8eed-4e755ea0cf9c")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ObjectKeyFrame")
interface IObjectKeyFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4708eb8e-4bfc-ee46-d4f9-708def3fbb2b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PaneThemeTransition")
interface IPaneThemeTransition : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Edge(Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation* return_value);
	HRESULT set_Edge(Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation value);
}

@uuid("316b382f-4be4-1797-b45c-cd900bbe0caa")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PaneThemeTransition")
interface IPaneThemeTransitionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EdgeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("30f04312-7726-4f88-b8e2-2fa54518963b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointAnimation")
interface IPointAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_From(Windows.Foundation.IReference!(Windows.Foundation.Point)* return_value);
	HRESULT set_From(Windows.Foundation.IReference!(Windows.Foundation.Point) value);
	HRESULT get_To(Windows.Foundation.IReference!(Windows.Foundation.Point)* return_value);
	HRESULT set_To(Windows.Foundation.IReference!(Windows.Foundation.Point) value);
	HRESULT get_By(Windows.Foundation.IReference!(Windows.Foundation.Point)* return_value);
	HRESULT set_By(Windows.Foundation.IReference!(Windows.Foundation.Point) value);
	HRESULT get_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value);
	HRESULT set_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("2f99b356-e737-408b-a0fd-327826d32255")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointAnimation")
interface IPointAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FromProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ToProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ByProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EasingFunctionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9b944f72-446a-41d0-a129-41a620f4595d")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointAnimationUsingKeyFrames")
interface IPointAnimationUsingKeyFrames : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeyFrames(Windows.UI.Xaml.Media.Animation.PointKeyFrameCollection* return_value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("5f454c87-2390-46ea-baa7-762f4bc30d04")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointAnimationUsingKeyFrames")
interface IPointAnimationUsingKeyFramesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fcc88d01-7f82-4dae-8026-7b7e086878b3")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointKeyFrame")
interface IPointKeyFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Value(Windows.Foundation.Point* return_value);
	HRESULT set_Value(Windows.Foundation.Point value);
	HRESULT get_KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime* return_value);
	HRESULT set_KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime value);
}

@uuid("cb214bdf-426a-4392-8355-c2ae52852623")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointKeyFrame")
interface IPointKeyFrameFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.PointKeyFrame* return_instance);
}

@uuid("95cf1b27-7965-4bec-b9fb-fbe94b65518e")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointKeyFrame")
interface IPointKeyFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b58e714e-c49d-4788-a233-0ae85d99dd5a")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointerDownThemeAnimation")
interface IPointerDownThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("63a7cb7b-6d46-4494-b94a-e72f3b492a61")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointerDownThemeAnimation")
interface IPointerDownThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e9e9d07d-6340-4828-ad12-690694b9910b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointerUpThemeAnimation")
interface IPointerUpThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("7c618f9c-7992-4139-8bfc-0883b9727a7e")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointerUpThemeAnimation")
interface IPointerUpThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("196938c1-1c07-4c28-8847-f9f055b32855")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PopInThemeAnimation")
interface IPopInThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
	HRESULT get_FromHorizontalOffset(double* return_value);
	HRESULT set_FromHorizontalOffset(double value);
	HRESULT get_FromVerticalOffset(double* return_value);
	HRESULT set_FromVerticalOffset(double value);
}

@uuid("efaa99d3-218a-4701-977f-f1bfae8ba649")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PopInThemeAnimation")
interface IPopInThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4786ab49-0e48-4e81-a2e5-cc5aa19e48d3")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PopOutThemeAnimation")
interface IPopOutThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("1d492c09-03c1-4490-99dc-909feab357fb")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PopOutThemeAnimation")
interface IPopOutThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("47843552-4283-545e-c791-268dca22ce4b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PopupThemeTransition")
interface IPopupThemeTransition : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FromHorizontalOffset(double* return_value);
	HRESULT set_FromHorizontalOffset(double value);
	HRESULT get_FromVerticalOffset(double* return_value);
	HRESULT set_FromVerticalOffset(double value);
}

@uuid("e5a1640e-490d-1505-9f6b-8fafc044dec5")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PopupThemeTransition")
interface IPopupThemeTransitionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FromHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("69c80579-eedf-405b-8680-d9606880c937")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PowerEase")
interface IPowerEase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Power(double* return_value);
	HRESULT set_Power(double value);
}

@uuid("a5955103-91a2-460c-9c41-d28f6a939bda")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PowerEase")
interface IPowerEaseStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PowerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7a795033-79f3-4dd9-b267-9cf50fb51f84")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.RepeatBehaviorHelper")
interface IRepeatBehaviorHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Forever(Windows.UI.Xaml.Media.Animation.RepeatBehavior* return_value);
	HRESULT abi_FromCount(double count, Windows.UI.Xaml.Media.Animation.RepeatBehavior* return_returnValue);
	HRESULT abi_FromDuration(Windows.Foundation.TimeSpan duration, Windows.UI.Xaml.Media.Animation.RepeatBehavior* return_returnValue);
	HRESULT abi_GetHasCount(Windows.UI.Xaml.Media.Animation.RepeatBehavior target, bool* return_value);
	HRESULT abi_GetHasDuration(Windows.UI.Xaml.Media.Animation.RepeatBehavior target, bool* return_value);
	HRESULT abi_Equals(Windows.UI.Xaml.Media.Animation.RepeatBehavior target, Windows.UI.Xaml.Media.Animation.RepeatBehavior value, bool* return_returnValue);
}

@uuid("ecda24e8-8945-4949-a1bf-62109965a7e9")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.RepositionThemeAnimation")
interface IRepositionThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
	HRESULT get_FromHorizontalOffset(double* return_value);
	HRESULT set_FromHorizontalOffset(double value);
	HRESULT get_FromVerticalOffset(double* return_value);
	HRESULT set_FromVerticalOffset(double value);
}

@uuid("4d92b1b1-860b-4bf9-a59d-1eb1ccbe8fe0")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.RepositionThemeAnimation")
interface IRepositionThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cebfe864-dbea-4404-8e6e-de55ada75239")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.RepositionThemeTransition")
interface IRepositionThemeTransition2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsStaggeringEnabled(bool* return_value);
	HRESULT set_IsStaggeringEnabled(bool value);
}

@uuid("9240e930-0a19-468b-8c2a-68fab4500027")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.RepositionThemeTransition")
interface IRepositionThemeTransitionStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsStaggeringEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("1a4a5941-1fe0-473a-8efe-4316d8c86229")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplineColorKeyFrame")
interface ISplineColorKeyFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline* return_value);
	HRESULT set_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline value);
}

@uuid("61d1d997-8589-4f2f-8fbb-7d03edc98dd3")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplineColorKeyFrame")
interface ISplineColorKeyFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeySplineProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("00d72d38-6b2b-4843-838e-c8b115eec801")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplineDoubleKeyFrame")
interface ISplineDoubleKeyFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline* return_value);
	HRESULT set_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline value);
}

@uuid("060a8ffc-975f-4e4e-9ec7-13c5aee02062")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplineDoubleKeyFrame")
interface ISplineDoubleKeyFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeySplineProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0f19f306-7036-494f-bc3c-780df0cc524a")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplinePointKeyFrame")
interface ISplinePointKeyFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline* return_value);
	HRESULT set_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline value);
}

@uuid("e97a32c2-0a7a-4766-95cb-0d692611cb4c")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplinePointKeyFrame")
interface ISplinePointKeyFrameStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeySplineProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4f799518-ff39-4e90-bb74-2abd56027402")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplitCloseThemeAnimation")
interface ISplitCloseThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OpenedTargetName(HSTRING* return_value);
	HRESULT set_OpenedTargetName(HSTRING value);
	HRESULT get_OpenedTarget(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_OpenedTarget(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_ClosedTargetName(HSTRING* return_value);
	HRESULT set_ClosedTargetName(HSTRING value);
	HRESULT get_ClosedTarget(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_ClosedTarget(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_ContentTargetName(HSTRING* return_value);
	HRESULT set_ContentTargetName(HSTRING value);
	HRESULT get_ContentTarget(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_ContentTarget(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_OpenedLength(double* return_value);
	HRESULT set_OpenedLength(double value);
	HRESULT get_ClosedLength(double* return_value);
	HRESULT set_ClosedLength(double value);
	HRESULT get_OffsetFromCenter(double* return_value);
	HRESULT set_OffsetFromCenter(double value);
	HRESULT get_ContentTranslationDirection(Windows.UI.Xaml.Controls.Primitives.AnimationDirection* return_value);
	HRESULT set_ContentTranslationDirection(Windows.UI.Xaml.Controls.Primitives.AnimationDirection value);
	HRESULT get_ContentTranslationOffset(double* return_value);
	HRESULT set_ContentTranslationOffset(double value);
}

@uuid("7aa94de9-cc9b-4e90-a11a-0050a2216a9e")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplitCloseThemeAnimation")
interface ISplitCloseThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OpenedTargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OpenedTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ClosedTargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ClosedTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OpenedLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ClosedLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OffsetFromCenterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTranslationDirectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTranslationOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("785fd7aa-5456-4639-8fd2-26bae6a5ffe4")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplitOpenThemeAnimation")
interface ISplitOpenThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OpenedTargetName(HSTRING* return_value);
	HRESULT set_OpenedTargetName(HSTRING value);
	HRESULT get_OpenedTarget(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_OpenedTarget(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_ClosedTargetName(HSTRING* return_value);
	HRESULT set_ClosedTargetName(HSTRING value);
	HRESULT get_ClosedTarget(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_ClosedTarget(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_ContentTargetName(HSTRING* return_value);
	HRESULT set_ContentTargetName(HSTRING value);
	HRESULT get_ContentTarget(Windows.UI.Xaml.DependencyObject* return_value);
	HRESULT set_ContentTarget(Windows.UI.Xaml.DependencyObject value);
	HRESULT get_OpenedLength(double* return_value);
	HRESULT set_OpenedLength(double value);
	HRESULT get_ClosedLength(double* return_value);
	HRESULT set_ClosedLength(double value);
	HRESULT get_OffsetFromCenter(double* return_value);
	HRESULT set_OffsetFromCenter(double value);
	HRESULT get_ContentTranslationDirection(Windows.UI.Xaml.Controls.Primitives.AnimationDirection* return_value);
	HRESULT set_ContentTranslationDirection(Windows.UI.Xaml.Controls.Primitives.AnimationDirection value);
	HRESULT get_ContentTranslationOffset(double* return_value);
	HRESULT set_ContentTranslationOffset(double value);
}

@uuid("8d4cfa89-3a91-458d-b0fb-4cad625cbf8d")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplitOpenThemeAnimation")
interface ISplitOpenThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OpenedTargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OpenedTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ClosedTargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ClosedTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTargetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OpenedLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ClosedLengthProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_OffsetFromCenterProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTranslationDirectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ContentTranslationOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("d45c1e6e-3594-460e-981a-32271bd3aa06")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.Storyboard")
interface IStoryboard : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Children(Windows.UI.Xaml.Media.Animation.TimelineCollection* return_value);
	HRESULT abi_Seek(Windows.Foundation.TimeSpan offset);
	HRESULT abi_Stop();
	HRESULT abi_Begin();
	HRESULT abi_Pause();
	HRESULT abi_Resume();
	HRESULT abi_GetCurrentState(Windows.UI.Xaml.Media.Animation.ClockState* return_returnValue);
	HRESULT abi_GetCurrentTime(Windows.Foundation.TimeSpan* return_returnValue);
	HRESULT abi_SeekAlignedToLastTick(Windows.Foundation.TimeSpan offset);
	HRESULT abi_SkipToFill();
}

@uuid("d82f07d8-73d5-4379-bd48-7e05184a8bad")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.Storyboard")
interface IStoryboardStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetPropertyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetTargetProperty(Windows.UI.Xaml.Media.Animation.Timeline element, HSTRING* return_path);
	HRESULT abi_SetTargetProperty(Windows.UI.Xaml.Media.Animation.Timeline element, HSTRING path);
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetTargetName(Windows.UI.Xaml.Media.Animation.Timeline element, HSTRING* return_name);
	HRESULT abi_SetTargetName(Windows.UI.Xaml.Media.Animation.Timeline element, HSTRING name);
	HRESULT abi_SetTarget(Windows.UI.Xaml.Media.Animation.Timeline timeline, Windows.UI.Xaml.DependencyObject target);
}

@uuid("a38a4214-0bca-4d2d-95f7-ceba57fbaf60")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SwipeBackThemeAnimation")
interface ISwipeBackThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
	HRESULT get_FromHorizontalOffset(double* return_value);
	HRESULT set_FromHorizontalOffset(double value);
	HRESULT get_FromVerticalOffset(double* return_value);
	HRESULT set_FromVerticalOffset(double value);
}

@uuid("693f31bf-4da6-468a-8ce0-996c9aad42e0")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SwipeBackThemeAnimation")
interface ISwipeBackThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cdd067c0-580e-4e40-be98-f202d3d84365")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SwipeHintThemeAnimation")
interface ISwipeHintThemeAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
	HRESULT get_ToHorizontalOffset(double* return_value);
	HRESULT set_ToHorizontalOffset(double value);
	HRESULT get_ToVerticalOffset(double* return_value);
	HRESULT set_ToVerticalOffset(double value);
}

@uuid("23d61a57-9115-4d63-b04a-b89f1c744dc0")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SwipeHintThemeAnimation")
interface ISwipeHintThemeAnimationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ToHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ToVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0bc465dc-be4d-4d0d-9549-2208b715f40d")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.Timeline")
interface ITimeline : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AutoReverse(bool* return_value);
	HRESULT set_AutoReverse(bool value);
	HRESULT get_BeginTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_BeginTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_Duration(Windows.UI.Xaml.Duration* return_value);
	HRESULT set_Duration(Windows.UI.Xaml.Duration value);
	HRESULT get_SpeedRatio(double* return_value);
	HRESULT set_SpeedRatio(double value);
	HRESULT get_FillBehavior(Windows.UI.Xaml.Media.Animation.FillBehavior* return_value);
	HRESULT set_FillBehavior(Windows.UI.Xaml.Media.Animation.FillBehavior value);
	HRESULT get_RepeatBehavior(Windows.UI.Xaml.Media.Animation.RepeatBehavior* return_value);
	HRESULT set_RepeatBehavior(Windows.UI.Xaml.Media.Animation.RepeatBehavior value);
	HRESULT add_Completed(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_Completed(EventRegistrationToken token);
}

@uuid("1d56bb07-bda4-478b-8ada-eb04d580cd5e")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.Timeline")
interface ITimelineFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.Timeline* return_instance);
}

@uuid("a902ed4e-ef10-4d6f-9a40-93cb8895f4e5")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.Timeline")
interface ITimelineStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllowDependentAnimations(bool* return_value);
	HRESULT set_AllowDependentAnimations(bool value);
	HRESULT get_AutoReverseProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BeginTimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DurationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SpeedRatioProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FillBehaviorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_RepeatBehaviorProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

interface AddDeleteThemeTransition : Windows.UI.Xaml.Media.Animation.Transition
{
}

interface BackEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface BeginStoryboard : Windows.UI.Xaml.TriggerAction
{
}

interface BounceEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface CircleEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface ColorAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface ColorAnimationUsingKeyFrames : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface ColorKeyFrame : Windows.UI.Xaml.DependencyObject
{
}

interface ColorKeyFrameCollection
{
}

interface CommonNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo
{
}

interface ConnectedAnimation
{
}

interface ConnectedAnimationService
{
}

interface ContentThemeTransition : Windows.UI.Xaml.Media.Animation.Transition
{
}

interface ContinuumNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo
{
}

interface CubicEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface DiscreteColorKeyFrame : Windows.UI.Xaml.Media.Animation.ColorKeyFrame
{
}

interface DiscreteDoubleKeyFrame : Windows.UI.Xaml.Media.Animation.DoubleKeyFrame
{
}

interface DiscreteObjectKeyFrame : Windows.UI.Xaml.Media.Animation.ObjectKeyFrame
{
}

interface DiscretePointKeyFrame : Windows.UI.Xaml.Media.Animation.PointKeyFrame
{
}

interface DoubleAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface DoubleAnimationUsingKeyFrames : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface DoubleKeyFrame : Windows.UI.Xaml.DependencyObject
{
}

interface DoubleKeyFrameCollection
{
}

interface DragItemThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface DragOverThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface DrillInNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo
{
}

interface DrillInThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface DrillOutThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface DropTargetItemThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface EasingColorKeyFrame : Windows.UI.Xaml.Media.Animation.ColorKeyFrame
{
}

interface EasingDoubleKeyFrame : Windows.UI.Xaml.Media.Animation.DoubleKeyFrame
{
}

interface EasingFunctionBase : Windows.UI.Xaml.DependencyObject
{
}

interface EasingPointKeyFrame : Windows.UI.Xaml.Media.Animation.PointKeyFrame
{
}

interface EdgeUIThemeTransition : Windows.UI.Xaml.Media.Animation.Transition
{
}

interface ElasticEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface EntranceNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo
{
}

interface EntranceThemeTransition : Windows.UI.Xaml.Media.Animation.Transition
{
}

interface ExponentialEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface FadeInThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface FadeOutThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface KeySpline : Windows.UI.Xaml.DependencyObject
{
}

interface KeyTimeHelper
{
}

interface LinearColorKeyFrame : Windows.UI.Xaml.Media.Animation.ColorKeyFrame
{
}

interface LinearDoubleKeyFrame : Windows.UI.Xaml.Media.Animation.DoubleKeyFrame
{
}

interface LinearPointKeyFrame : Windows.UI.Xaml.Media.Animation.PointKeyFrame
{
}

interface NavigationThemeTransition : Windows.UI.Xaml.Media.Animation.Transition
{
}

interface NavigationTransitionInfo : Windows.UI.Xaml.DependencyObject
{
}

interface ObjectAnimationUsingKeyFrames : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface ObjectKeyFrame : Windows.UI.Xaml.DependencyObject
{
}

interface ObjectKeyFrameCollection
{
}

interface PaneThemeTransition : Windows.UI.Xaml.Media.Animation.Transition
{
}

interface PointAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface PointAnimationUsingKeyFrames : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface PointKeyFrame : Windows.UI.Xaml.DependencyObject
{
}

interface PointKeyFrameCollection
{
}

interface PointerDownThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface PointerUpThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface PopInThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface PopOutThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface PopupThemeTransition : Windows.UI.Xaml.Media.Animation.Transition
{
}

interface PowerEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface QuadraticEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface QuarticEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface QuinticEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface ReorderThemeTransition : Windows.UI.Xaml.Media.Animation.Transition
{
}

interface RepeatBehaviorHelper
{
}

interface RepositionThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface RepositionThemeTransition : Windows.UI.Xaml.Media.Animation.Transition
{
}

interface SineEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase
{
}

interface SlideNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo
{
}

interface SplineColorKeyFrame : Windows.UI.Xaml.Media.Animation.ColorKeyFrame
{
}

interface SplineDoubleKeyFrame : Windows.UI.Xaml.Media.Animation.DoubleKeyFrame
{
}

interface SplinePointKeyFrame : Windows.UI.Xaml.Media.Animation.PointKeyFrame
{
}

interface SplitCloseThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface SplitOpenThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface Storyboard : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface SuppressNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo
{
}

interface SwipeBackThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface SwipeHintThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline
{
}

interface Timeline : Windows.UI.Xaml.DependencyObject
{
}

interface TimelineCollection
{
}

interface Transition : Windows.UI.Xaml.DependencyObject
{
}

interface TransitionCollection
{
}

enum ClockState
{
	Active = 0,
	Filling = 1,
	Stopped = 2
}

enum ConnectedAnimationComponent
{
	OffsetX = 0,
	OffsetY = 1,
	CrossFade = 2,
	Scale = 3
}

enum EasingMode
{
	EaseOut = 0,
	EaseIn = 1,
	EaseInOut = 2
}

enum FillBehavior
{
	HoldEnd = 0,
	Stop = 1
}

enum RepeatBehaviorType
{
	Count = 0,
	Duration = 1,
	Forever = 2
}