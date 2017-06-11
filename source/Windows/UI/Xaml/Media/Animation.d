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

@uuid("adec852e-4424-4dab-99c1-3a04e36a3c48")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.AddDeleteThemeTransition")
interface IAddDeleteThemeTransition : IInspectable
{
}

@uuid("e47796e7-f805-4a8f-81c9-38e6472caa94")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BackEase")
interface IBackEase : IInspectable
{
extern(Windows):
	HRESULT get_Amplitude(double* return_value);
	HRESULT set_Amplitude(double value);
}

@uuid("3c70a2ff-a0a0-4786-926c-22321f8f25b7")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BackEase")
interface IBackEaseStatics : IInspectable
{
extern(Windows):
	HRESULT get_AmplitudeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("64189fcd-49ec-4e52-a6f6-55324c921053")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BeginStoryboard")
interface IBeginStoryboard : IInspectable
{
extern(Windows):
	HRESULT get_Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard* return_value);
	HRESULT set_Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard value);
}

@uuid("12cff18c-aa91-4c4a-b82f-df34fc57f94b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BeginStoryboard")
interface IBeginStoryboardStatics : IInspectable
{
extern(Windows):
	HRESULT get_StoryboardProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("2bf1464e-fc71-47ed-85a1-3ba9577718b4")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.BounceEase")
interface IBounceEase : IInspectable
{
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
extern(Windows):
	HRESULT get_BouncesProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_BouncinessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("53a3bdb2-9177-4e6e-a043-5082d889ab1f")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.CircleEase")
interface ICircleEase : IInspectable
{
}

@uuid("b8ae8a15-0f63-4694-9467-bdafac1253ea")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorAnimation")
interface IColorAnimation : IInspectable
{
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
extern(Windows):
	HRESULT get_KeyFrames(Windows.UI.Xaml.Media.Animation.ColorKeyFrameCollection* return_value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("b4723cdc-96e9-48f9-8d92-9b648b2f1cc6")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorAnimationUsingKeyFrames")
interface IColorAnimationUsingKeyFramesStatics : IInspectable
{
extern(Windows):
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b51d82d9-0910-4589-a284-b0c9205858e9")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorKeyFrame")
interface IColorKeyFrame : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.ColorKeyFrame* return_instance);
}

@uuid("c043ae99-210c-430f-9da5-df1082692055")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ColorKeyFrame")
interface IColorKeyFrameStatics : IInspectable
{
extern(Windows):
	HRESULT get_ValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("50345692-a555-4624-a361-0a91c1706473")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.CommonNavigationTransitionInfo")
interface ICommonNavigationTransitionInfo : IInspectable
{
extern(Windows):
	HRESULT get_IsStaggeringEnabled(bool* return_value);
	HRESULT set_IsStaggeringEnabled(bool value);
}

@uuid("1e3efe33-50be-4443-883c-e5627201c2e5")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.CommonNavigationTransitionInfo")
interface ICommonNavigationTransitionInfoStatics : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Xaml.Media.Animation.ConnectedAnimationService* return_returnValue);
}

@uuid("f66fc5c3-5915-437d-8e3b-adf8e7f0ab57")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ContentThemeTransition")
interface IContentThemeTransition : IInspectable
{
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
extern(Windows):
	HRESULT get_HorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_VerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4be1dbad-8ba6-4004-8438-8a9017978543")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ContinuumNavigationTransitionInfo")
interface IContinuumNavigationTransitionInfo : IInspectable
{
extern(Windows):
	HRESULT get_ExitElement(Windows.UI.Xaml.UIElement* return_value);
	HRESULT set_ExitElement(Windows.UI.Xaml.UIElement value);
}

@uuid("3e25dd53-b18f-4bf1-b3bc-92f516f29903")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ContinuumNavigationTransitionInfo")
interface IContinuumNavigationTransitionInfoStatics : IInspectable
{
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

@uuid("1b94fc76-dad7-4354-b1a2-7969fbf6a70d")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.CubicEase")
interface ICubicEase : IInspectable
{
}

@uuid("230c08f4-e062-4cb1-8e2a-14093d73ed8c")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DiscreteColorKeyFrame")
interface IDiscreteColorKeyFrame : IInspectable
{
}

@uuid("f5f51f3a-ad11-49ce-8e1c-08fdf1447446")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DiscreteDoubleKeyFrame")
interface IDiscreteDoubleKeyFrame : IInspectable
{
}

@uuid("c7dcde89-f12d-4a9c-8199-e7a9ece3a473")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DiscreteObjectKeyFrame")
interface IDiscreteObjectKeyFrame : IInspectable
{
}

@uuid("e0a9070d-4c42-4a90-983a-75f5a83a2fbe")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DiscretePointKeyFrame")
interface IDiscretePointKeyFrame : IInspectable
{
}

@uuid("7e9f3d59-0f07-4bc9-977d-03763ff8154f")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleAnimation")
interface IDoubleAnimation : IInspectable
{
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
extern(Windows):
	HRESULT get_KeyFrames(Windows.UI.Xaml.Media.Animation.DoubleKeyFrameCollection* return_value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("109bf2f6-c60f-49aa-abf6-f696d492116b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleAnimationUsingKeyFrames")
interface IDoubleAnimationUsingKeyFramesStatics : IInspectable
{
extern(Windows):
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("674456fd-e81e-4f4e-b4ad-0acfed9ecd68")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleKeyFrame")
interface IDoubleKeyFrame : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.DoubleKeyFrame* return_instance);
}

@uuid("324641b0-7d37-427a-adeb-43f38bb61a4d")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DoubleKeyFrame")
interface IDoubleKeyFrameStatics : IInspectable
{
extern(Windows):
	HRESULT get_ValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0c7d5db5-7ed6-4949-b4e6-a78c9f4f978d")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DragItemThemeAnimation")
interface IDragItemThemeAnimation : IInspectable
{
extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("6218b9f5-013a-4fb1-86fc-92bc4e8d0241")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DragItemThemeAnimation")
interface IDragItemThemeAnimationStatics : IInspectable
{
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("72f762f7-7e51-4a6b-b937-dc4b4c1c5458")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DragOverThemeAnimation")
interface IDragOverThemeAnimation : IInspectable
{
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
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ToOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_DirectionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("3b86201a-45d3-463b-939e-c8595f439bcc")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DrillInNavigationTransitionInfo")
interface IDrillInNavigationTransitionInfo : IInspectable
{
}

@uuid("b090b824-f1d2-41b8-87ba-78034126594c")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DrillInThemeAnimation")
interface IDrillInThemeAnimation : IInspectable
{
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
extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("ae80f486-2e56-4513-bf18-d77470164ae5")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.DropTargetItemThemeAnimation")
interface IDropTargetItemThemeAnimationStatics : IInspectable
{
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c733d630-f4b9-4934-9bdd-27ac5ed1cfd8")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingColorKeyFrame")
interface IEasingColorKeyFrame : IInspectable
{
extern(Windows):
	HRESULT get_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value);
	HRESULT set_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value);
}

@uuid("6f3837fc-8e3d-4522-9b0f-003db8609851")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingColorKeyFrame")
interface IEasingColorKeyFrameStatics : IInspectable
{
extern(Windows):
	HRESULT get_EasingFunctionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("965adb8d-9a54-4108-b4ff-b5a5212cb338")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingDoubleKeyFrame")
interface IEasingDoubleKeyFrame : IInspectable
{
extern(Windows):
	HRESULT get_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value);
	HRESULT set_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value);
}

@uuid("c8d3d845-dbae-4e5b-8b84-d9537398e5b1")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingDoubleKeyFrame")
interface IEasingDoubleKeyFrameStatics : IInspectable
{
extern(Windows):
	HRESULT get_EasingFunctionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("c108383f-2c02-4151-8ecd-68ddaa3f0d9b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingFunctionBase")
interface IEasingFunctionBase : IInspectable
{
extern(Windows):
	HRESULT get_EasingMode(Windows.UI.Xaml.Media.Animation.EasingMode* return_value);
	HRESULT set_EasingMode(Windows.UI.Xaml.Media.Animation.EasingMode value);
	HRESULT abi_Ease(double normalizedTime, double* return_returnValue);
}

@uuid("1830fe6a-f01b-43e0-b61f-b452a1c66fd2")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingFunctionBase")
interface IEasingFunctionBaseFactory : IInspectable
{
}

@uuid("2a5031aa-2c50-4a1d-bb04-d75e07b71548")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingFunctionBase")
interface IEasingFunctionBaseStatics : IInspectable
{
extern(Windows):
	HRESULT get_EasingModeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b3c91380-6868-4225-a70b-3981cc0b2947")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingPointKeyFrame")
interface IEasingPointKeyFrame : IInspectable
{
extern(Windows):
	HRESULT get_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase* return_value);
	HRESULT set_EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value);
}

@uuid("e22dbfc4-080c-402c-a6b5-f48d0a98116b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EasingPointKeyFrame")
interface IEasingPointKeyFrameStatics : IInspectable
{
extern(Windows):
	HRESULT get_EasingFunctionProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("5c86c19b-49d7-19ec-cf19-83a73c6de75e")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EdgeUIThemeTransition")
interface IEdgeUIThemeTransition : IInspectable
{
extern(Windows):
	HRESULT get_Edge(Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation* return_value);
	HRESULT set_Edge(Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation value);
}

@uuid("16a2b13b-4705-302b-27c6-2aac92f645ac")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EdgeUIThemeTransition")
interface IEdgeUIThemeTransitionStatics : IInspectable
{
extern(Windows):
	HRESULT get_EdgeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("ef5ba58c-b0b6-4a6c-9ca8-fb4233f12459")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ElasticEase")
interface IElasticEase : IInspectable
{
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
extern(Windows):
	HRESULT get_OscillationsProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_SpringinessProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("720a256b-1c8a-41ee-82ec-8a87c0cf47da")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EntranceNavigationTransitionInfo")
interface IEntranceNavigationTransitionInfo : IInspectable
{
}

@uuid("f948c27a-40c9-469f-8f33-bf45c8811f21")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EntranceNavigationTransitionInfo")
interface IEntranceNavigationTransitionInfoStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsTargetElementProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetIsTargetElement(Windows.UI.Xaml.UIElement element, bool* return_value);
	HRESULT abi_SetIsTargetElement(Windows.UI.Xaml.UIElement element, bool value);
}

@uuid("07698c09-a8e3-419a-a01d-7410a0ae8ec8")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.EntranceThemeTransition")
interface IEntranceThemeTransition : IInspectable
{
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
extern(Windows):
	HRESULT get_FromHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsStaggeringEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("7cb9e41d-f0bb-4bca-9da5-9ba3a11734c4")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ExponentialEase")
interface IExponentialEase : IInspectable
{
extern(Windows):
	HRESULT get_Exponent(double* return_value);
	HRESULT set_Exponent(double value);
}

@uuid("f37ee7e3-a761-4352-9ad6-70794567581a")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ExponentialEase")
interface IExponentialEaseStatics : IInspectable
{
extern(Windows):
	HRESULT get_ExponentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("6d4bc8f5-a918-4477-8078-554c68812ab8")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.FadeInThemeAnimation")
interface IFadeInThemeAnimation : IInspectable
{
extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("7f0117e1-bea9-4923-b23a-0ddf4d7b8737")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.FadeInThemeAnimation")
interface IFadeInThemeAnimationStatics : IInspectable
{
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("89276ba9-ffd4-45b6-9b9a-ced48951e712")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.FadeOutThemeAnimation")
interface IFadeOutThemeAnimation : IInspectable
{
extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("fe17a81a-4168-4f68-a28c-e5dd98cf680f")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.FadeOutThemeAnimation")
interface IFadeOutThemeAnimationStatics : IInspectable
{
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("77a163bb-d5ca-4a32-ba0b-7dff988e58a0")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.KeySpline")
interface IKeySpline : IInspectable
{
extern(Windows):
	HRESULT get_ControlPoint1(Windows.Foundation.Point* return_value);
	HRESULT set_ControlPoint1(Windows.Foundation.Point value);
	HRESULT get_ControlPoint2(Windows.Foundation.Point* return_value);
	HRESULT set_ControlPoint2(Windows.Foundation.Point value);
}

@uuid("3643e480-4823-466a-abe5-5e79c8ed77ed")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.KeyTimeHelper")
interface IKeyTimeHelper : IInspectable
{
}

@uuid("7fa2612c-22a9-45e9-9af7-c7416efff7a5")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.KeyTimeHelper")
interface IKeyTimeHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromTimeSpan(Windows.Foundation.TimeSpan timeSpan, Windows.UI.Xaml.Media.Animation.KeyTime* return_returnValue);
}

@uuid("66fdb6ef-ac81-4611-b1d2-61f545983f03")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.LinearColorKeyFrame")
interface ILinearColorKeyFrame : IInspectable
{
}

@uuid("8efdf265-9a7b-431d-8f0c-14c56b5ea4d9")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.LinearDoubleKeyFrame")
interface ILinearDoubleKeyFrame : IInspectable
{
}

@uuid("e7c9b8ef-af24-49ee-84f1-a86600a4e319")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.LinearPointKeyFrame")
interface ILinearPointKeyFrame : IInspectable
{
}

@uuid("8833848c-4eb7-41f2-8799-9eef0a213b73")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.NavigationThemeTransition")
interface INavigationThemeTransition : IInspectable
{
extern(Windows):
	HRESULT get_DefaultNavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo* return_value);
	HRESULT set_DefaultNavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo value);
}

@uuid("ea2f06e0-5e60-4f8e-bcaf-431487a294ab")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.NavigationThemeTransition")
interface INavigationThemeTransitionStatics : IInspectable
{
extern(Windows):
	HRESULT get_DefaultNavigationTransitionInfoProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a9b05091-ae4a-4372-8625-21b7a8b98ca4")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo")
interface INavigationTransitionInfo : IInspectable
{
}

@uuid("edf4f8d5-af63-4fab-9d4a-87927f82dd6b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo")
interface INavigationTransitionInfoFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo* return_instance);
}

@uuid("d9517e6a-a9d0-4bf7-9db0-4633a69daff2")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo")
interface INavigationTransitionInfoOverrides : IInspectable
{
extern(Windows):
	HRESULT abi_GetNavigationStateCore(HSTRING* return_returnValue);
	HRESULT abi_SetNavigationStateCore(HSTRING navigationState);
}

@uuid("334a2d92-b74a-4c64-b9a6-58bcfa314f22")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ObjectAnimationUsingKeyFrames")
interface IObjectAnimationUsingKeyFrames : IInspectable
{
extern(Windows):
	HRESULT get_KeyFrames(Windows.UI.Xaml.Media.Animation.ObjectKeyFrameCollection* return_value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("eb736182-6af1-49a3-97b6-783ed97400fe")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ObjectAnimationUsingKeyFrames")
interface IObjectAnimationUsingKeyFramesStatics : IInspectable
{
extern(Windows):
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("9852a851-8593-48ee-a6a4-d5d4720f029a")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ObjectKeyFrame")
interface IObjectKeyFrame : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.ObjectKeyFrame* return_instance);
}

@uuid("2cd6ab00-5319-4286-8eed-4e755ea0cf9c")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ObjectKeyFrame")
interface IObjectKeyFrameStatics : IInspectable
{
extern(Windows):
	HRESULT get_ValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4708eb8e-4bfc-ee46-d4f9-708def3fbb2b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PaneThemeTransition")
interface IPaneThemeTransition : IInspectable
{
extern(Windows):
	HRESULT get_Edge(Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation* return_value);
	HRESULT set_Edge(Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation value);
}

@uuid("316b382f-4be4-1797-b45c-cd900bbe0caa")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PaneThemeTransition")
interface IPaneThemeTransitionStatics : IInspectable
{
extern(Windows):
	HRESULT get_EdgeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("30f04312-7726-4f88-b8e2-2fa54518963b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointAnimation")
interface IPointAnimation : IInspectable
{
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
extern(Windows):
	HRESULT get_KeyFrames(Windows.UI.Xaml.Media.Animation.PointKeyFrameCollection* return_value);
	HRESULT get_EnableDependentAnimation(bool* return_value);
	HRESULT set_EnableDependentAnimation(bool value);
}

@uuid("5f454c87-2390-46ea-baa7-762f4bc30d04")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointAnimationUsingKeyFrames")
interface IPointAnimationUsingKeyFramesStatics : IInspectable
{
extern(Windows):
	HRESULT get_EnableDependentAnimationProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("fcc88d01-7f82-4dae-8026-7b7e086878b3")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointKeyFrame")
interface IPointKeyFrame : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.PointKeyFrame* return_instance);
}

@uuid("95cf1b27-7965-4bec-b9fb-fbe94b65518e")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointKeyFrame")
interface IPointKeyFrameStatics : IInspectable
{
extern(Windows):
	HRESULT get_ValueProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_KeyTimeProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("b58e714e-c49d-4788-a233-0ae85d99dd5a")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointerDownThemeAnimation")
interface IPointerDownThemeAnimation : IInspectable
{
extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("63a7cb7b-6d46-4494-b94a-e72f3b492a61")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointerDownThemeAnimation")
interface IPointerDownThemeAnimationStatics : IInspectable
{
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e9e9d07d-6340-4828-ad12-690694b9910b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointerUpThemeAnimation")
interface IPointerUpThemeAnimation : IInspectable
{
extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("7c618f9c-7992-4139-8bfc-0883b9727a7e")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PointerUpThemeAnimation")
interface IPointerUpThemeAnimationStatics : IInspectable
{
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("196938c1-1c07-4c28-8847-f9f055b32855")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PopInThemeAnimation")
interface IPopInThemeAnimation : IInspectable
{
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
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4786ab49-0e48-4e81-a2e5-cc5aa19e48d3")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PopOutThemeAnimation")
interface IPopOutThemeAnimation : IInspectable
{
extern(Windows):
	HRESULT get_TargetName(HSTRING* return_value);
	HRESULT set_TargetName(HSTRING value);
}

@uuid("1d492c09-03c1-4490-99dc-909feab357fb")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PopOutThemeAnimation")
interface IPopOutThemeAnimationStatics : IInspectable
{
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("47843552-4283-545e-c791-268dca22ce4b")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PopupThemeTransition")
interface IPopupThemeTransition : IInspectable
{
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
extern(Windows):
	HRESULT get_FromHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("69c80579-eedf-405b-8680-d9606880c937")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PowerEase")
interface IPowerEase : IInspectable
{
extern(Windows):
	HRESULT get_Power(double* return_value);
	HRESULT set_Power(double value);
}

@uuid("a5955103-91a2-460c-9c41-d28f6a939bda")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.PowerEase")
interface IPowerEaseStatics : IInspectable
{
extern(Windows):
	HRESULT get_PowerProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("e1510e91-ef6d-44f0-803d-68d16de0ddfc")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.QuadraticEase")
interface IQuadraticEase : IInspectable
{
}

@uuid("e8698814-fe42-4a05-b5b8-081f41157815")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.QuarticEase")
interface IQuarticEase : IInspectable
{
}

@uuid("92ee793b-3c49-4108-aa11-ab786603da21")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.QuinticEase")
interface IQuinticEase : IInspectable
{
}

@uuid("f2065c6c-d052-4ad1-8362-b71b36df7497")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.ReorderThemeTransition")
interface IReorderThemeTransition : IInspectable
{
}

@uuid("6863ab72-4997-47f9-87ad-37efb75993ea")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.RepeatBehaviorHelper")
interface IRepeatBehaviorHelper : IInspectable
{
}

@uuid("7a795033-79f3-4dd9-b267-9cf50fb51f84")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.RepeatBehaviorHelper")
interface IRepeatBehaviorHelperStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("88329b82-98f3-455a-ac53-2e7083b6e22c")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.RepositionThemeTransition")
interface IRepositionThemeTransition : IInspectable
{
}

@uuid("cebfe864-dbea-4404-8e6e-de55ada75239")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.RepositionThemeTransition")
interface IRepositionThemeTransition2 : IInspectable
{
extern(Windows):
	HRESULT get_IsStaggeringEnabled(bool* return_value);
	HRESULT set_IsStaggeringEnabled(bool value);
}

@uuid("9240e930-0a19-468b-8c2a-68fab4500027")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.RepositionThemeTransition")
interface IRepositionThemeTransitionStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_IsStaggeringEnabledProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("a9382962-230b-49da-9e0d-664987892343")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SineEase")
interface ISineEase : IInspectable
{
}

@uuid("d6ac9d77-2e03-405f-80ed-e62beef3668f")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SlideNavigationTransitionInfo")
interface ISlideNavigationTransitionInfo : IInspectable
{
}

@uuid("1a4a5941-1fe0-473a-8efe-4316d8c86229")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplineColorKeyFrame")
interface ISplineColorKeyFrame : IInspectable
{
extern(Windows):
	HRESULT get_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline* return_value);
	HRESULT set_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline value);
}

@uuid("61d1d997-8589-4f2f-8fbb-7d03edc98dd3")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplineColorKeyFrame")
interface ISplineColorKeyFrameStatics : IInspectable
{
extern(Windows):
	HRESULT get_KeySplineProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("00d72d38-6b2b-4843-838e-c8b115eec801")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplineDoubleKeyFrame")
interface ISplineDoubleKeyFrame : IInspectable
{
extern(Windows):
	HRESULT get_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline* return_value);
	HRESULT set_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline value);
}

@uuid("060a8ffc-975f-4e4e-9ec7-13c5aee02062")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplineDoubleKeyFrame")
interface ISplineDoubleKeyFrameStatics : IInspectable
{
extern(Windows):
	HRESULT get_KeySplineProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0f19f306-7036-494f-bc3c-780df0cc524a")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplinePointKeyFrame")
interface ISplinePointKeyFrame : IInspectable
{
extern(Windows):
	HRESULT get_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline* return_value);
	HRESULT set_KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline value);
}

@uuid("e97a32c2-0a7a-4766-95cb-0d692611cb4c")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplinePointKeyFrame")
interface ISplinePointKeyFrameStatics : IInspectable
{
extern(Windows):
	HRESULT get_KeySplineProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("4f799518-ff39-4e90-bb74-2abd56027402")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SplitCloseThemeAnimation")
interface ISplitCloseThemeAnimation : IInspectable
{
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
extern(Windows):
	HRESULT get_TargetPropertyProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetTargetProperty(Windows.UI.Xaml.Media.Animation.Timeline element, HSTRING* return_path);
	HRESULT abi_SetTargetProperty(Windows.UI.Xaml.Media.Animation.Timeline element, HSTRING path);
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetTargetName(Windows.UI.Xaml.Media.Animation.Timeline element, HSTRING* return_name);
	HRESULT abi_SetTargetName(Windows.UI.Xaml.Media.Animation.Timeline element, HSTRING name);
	HRESULT abi_SetTarget(Windows.UI.Xaml.Media.Animation.Timeline timeline, Windows.UI.Xaml.DependencyObject target);
}

@uuid("244d7b0c-b1b7-4871-9d3e-d56203a3a5b4")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SuppressNavigationTransitionInfo")
interface ISuppressNavigationTransitionInfo : IInspectable
{
}

@uuid("a38a4214-0bca-4d2d-95f7-ceba57fbaf60")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SwipeBackThemeAnimation")
interface ISwipeBackThemeAnimation : IInspectable
{
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
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_FromVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("cdd067c0-580e-4e40-be98-f202d3d84365")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.SwipeHintThemeAnimation")
interface ISwipeHintThemeAnimation : IInspectable
{
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
extern(Windows):
	HRESULT get_TargetNameProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ToHorizontalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ToVerticalOffsetProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("0bc465dc-be4d-4d0d-9549-2208b715f40d")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.Timeline")
interface ITimeline : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Media.Animation.Timeline* return_instance);
}

@uuid("a902ed4e-ef10-4d6f-9a40-93cb8895f4e5")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.Timeline")
interface ITimelineStatics : IInspectable
{
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

@uuid("3c677c7c-01d0-4dce-b333-976f93312b08")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.Transition")
interface ITransition : IInspectable
{
}

@uuid("dc9ab2cf-3bc9-44aa-b3fc-883a83233a2c")
@WinrtFactory("Windows.UI.Xaml.Media.Animation.Transition")
interface ITransitionFactory : IInspectable
{
}

interface AddDeleteThemeTransition : Windows.UI.Xaml.Media.Animation.Transition, Windows.UI.Xaml.Media.Animation.IAddDeleteThemeTransition
{
}

interface BackEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.IBackEase
{
extern(Windows):
	final double Amplitude()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IBackEase).get_Amplitude(&_ret));
		return _ret;
	}
	final void Amplitude(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IBackEase).set_Amplitude(value));
	}
}

interface BeginStoryboard : Windows.UI.Xaml.TriggerAction, Windows.UI.Xaml.Media.Animation.IBeginStoryboard
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.Storyboard Storyboard()
	{
		Windows.UI.Xaml.Media.Animation.Storyboard _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IBeginStoryboard).get_Storyboard(&_ret));
		return _ret;
	}
	final void Storyboard(Windows.UI.Xaml.Media.Animation.Storyboard value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IBeginStoryboard).set_Storyboard(value));
	}
}

interface BounceEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.IBounceEase
{
extern(Windows):
	final INT32 Bounces()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IBounceEase).get_Bounces(&_ret));
		return _ret;
	}
	final void Bounces(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IBounceEase).set_Bounces(value));
	}
	final double Bounciness()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IBounceEase).get_Bounciness(&_ret));
		return _ret;
	}
	final void Bounciness(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IBounceEase).set_Bounciness(value));
	}
}

interface CircleEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.ICircleEase
{
}

interface ColorAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IColorAnimation
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.UI.Color) From()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimation).get_From(&_ret));
		return _ret;
	}
	final void From(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimation).set_From(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) To()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimation).get_To(&_ret));
		return _ret;
	}
	final void To(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimation).set_To(value));
	}
	final Windows.Foundation.IReference!(Windows.UI.Color) By()
	{
		Windows.Foundation.IReference!(Windows.UI.Color) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimation).get_By(&_ret));
		return _ret;
	}
	final void By(Windows.Foundation.IReference!(Windows.UI.Color) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimation).set_By(value));
	}
	final Windows.UI.Xaml.Media.Animation.EasingFunctionBase EasingFunction()
	{
		Windows.UI.Xaml.Media.Animation.EasingFunctionBase _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimation).get_EasingFunction(&_ret));
		return _ret;
	}
	final void EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimation).set_EasingFunction(value));
	}
	final bool EnableDependentAnimation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimation).get_EnableDependentAnimation(&_ret));
		return _ret;
	}
	final void EnableDependentAnimation(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimation).set_EnableDependentAnimation(value));
	}
}

interface ColorAnimationUsingKeyFrames : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IColorAnimationUsingKeyFrames
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.ColorKeyFrameCollection KeyFrames()
	{
		Windows.UI.Xaml.Media.Animation.ColorKeyFrameCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimationUsingKeyFrames).get_KeyFrames(&_ret));
		return _ret;
	}
	final bool EnableDependentAnimation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimationUsingKeyFrames).get_EnableDependentAnimation(&_ret));
		return _ret;
	}
	final void EnableDependentAnimation(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorAnimationUsingKeyFrames).set_EnableDependentAnimation(value));
	}
}

interface ColorKeyFrame : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.Animation.IColorKeyFrame
{
extern(Windows):
	final Windows.UI.Color Value()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorKeyFrame).get_Value(&_ret));
		return _ret;
	}
	final void Value(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorKeyFrame).set_Value(value));
	}
	final Windows.UI.Xaml.Media.Animation.KeyTime KeyTime()
	{
		Windows.UI.Xaml.Media.Animation.KeyTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorKeyFrame).get_KeyTime(&_ret));
		return _ret;
	}
	final void KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IColorKeyFrame).set_KeyTime(value));
	}
}

interface ColorKeyFrameCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.ColorKeyFrame)).abi_First(out_first));
	}
}

interface CommonNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo, Windows.UI.Xaml.Media.Animation.ICommonNavigationTransitionInfo
{
extern(Windows):
	final bool IsStaggeringEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ICommonNavigationTransitionInfo).get_IsStaggeringEnabled(&_ret));
		return _ret;
	}
	final void IsStaggeringEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ICommonNavigationTransitionInfo).set_IsStaggeringEnabled(value));
	}
}

interface ConnectedAnimation : Windows.UI.Xaml.Media.Animation.IConnectedAnimation, Windows.UI.Xaml.Media.Animation.IConnectedAnimation2
{
extern(Windows):
	final EventRegistrationToken OnCompleted(void delegate(Windows.UI.Xaml.Media.Animation.ConnectedAnimation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Completed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Xaml.Media.Animation.ConnectedAnimation, IInspectable), Windows.UI.Xaml.Media.Animation.ConnectedAnimation, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_Completed(token));
	}
	final bool TryStart(Windows.UI.Xaml.UIElement destination)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimation).abi_TryStart(destination, &_ret));
		return _ret;
	}
	final void Cancel()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimation).abi_Cancel());
	}
	final bool IsScaleAnimationEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimation2).get_IsScaleAnimationEnabled(&_ret));
		return _ret;
	}
	final void IsScaleAnimationEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimation2).set_IsScaleAnimationEnabled(value));
	}
	final bool TryStartWithCoordinatedElements(Windows.UI.Xaml.UIElement destination, Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.UIElement) coordinatedElements)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimation2).abi_TryStartWithCoordinatedElements(destination, coordinatedElements, &_ret));
		return _ret;
	}
	final void SetAnimationComponent(Windows.UI.Xaml.Media.Animation.ConnectedAnimationComponent component, Windows.UI.Composition.ICompositionAnimationBase animation)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimation2).abi_SetAnimationComponent(component, animation));
	}
}

interface ConnectedAnimationService : Windows.UI.Xaml.Media.Animation.IConnectedAnimationService
{
extern(Windows):
	final Windows.Foundation.TimeSpan DefaultDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimationService).get_DefaultDuration(&_ret));
		return _ret;
	}
	final void DefaultDuration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimationService).set_DefaultDuration(value));
	}
	final Windows.UI.Composition.CompositionEasingFunction DefaultEasingFunction()
	{
		Windows.UI.Composition.CompositionEasingFunction _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimationService).get_DefaultEasingFunction(&_ret));
		return _ret;
	}
	final void DefaultEasingFunction(Windows.UI.Composition.CompositionEasingFunction value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimationService).set_DefaultEasingFunction(value));
	}
	final Windows.UI.Xaml.Media.Animation.ConnectedAnimation PrepareToAnimate(HSTRING key, Windows.UI.Xaml.UIElement source)
	{
		Windows.UI.Xaml.Media.Animation.ConnectedAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimationService).abi_PrepareToAnimate(key, source, &_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Media.Animation.ConnectedAnimation GetAnimation(HSTRING key)
	{
		Windows.UI.Xaml.Media.Animation.ConnectedAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IConnectedAnimationService).abi_GetAnimation(key, &_ret));
		return _ret;
	}
}

interface ContentThemeTransition : Windows.UI.Xaml.Media.Animation.Transition, Windows.UI.Xaml.Media.Animation.IContentThemeTransition
{
extern(Windows):
	final double HorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IContentThemeTransition).get_HorizontalOffset(&_ret));
		return _ret;
	}
	final void HorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IContentThemeTransition).set_HorizontalOffset(value));
	}
	final double VerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IContentThemeTransition).get_VerticalOffset(&_ret));
		return _ret;
	}
	final void VerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IContentThemeTransition).set_VerticalOffset(value));
	}
}

interface ContinuumNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo, Windows.UI.Xaml.Media.Animation.IContinuumNavigationTransitionInfo
{
extern(Windows):
	final Windows.UI.Xaml.UIElement ExitElement()
	{
		Windows.UI.Xaml.UIElement _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IContinuumNavigationTransitionInfo).get_ExitElement(&_ret));
		return _ret;
	}
	final void ExitElement(Windows.UI.Xaml.UIElement value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IContinuumNavigationTransitionInfo).set_ExitElement(value));
	}
}

interface CubicEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.ICubicEase
{
}

interface DiscreteColorKeyFrame : Windows.UI.Xaml.Media.Animation.ColorKeyFrame, Windows.UI.Xaml.Media.Animation.IDiscreteColorKeyFrame
{
}

interface DiscreteDoubleKeyFrame : Windows.UI.Xaml.Media.Animation.DoubleKeyFrame, Windows.UI.Xaml.Media.Animation.IDiscreteDoubleKeyFrame
{
}

interface DiscreteObjectKeyFrame : Windows.UI.Xaml.Media.Animation.ObjectKeyFrame, Windows.UI.Xaml.Media.Animation.IDiscreteObjectKeyFrame
{
}

interface DiscretePointKeyFrame : Windows.UI.Xaml.Media.Animation.PointKeyFrame, Windows.UI.Xaml.Media.Animation.IDiscretePointKeyFrame
{
}

interface DoubleAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IDoubleAnimation
{
extern(Windows):
	final Windows.Foundation.IReference!(double) From()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimation).get_From(&_ret));
		return _ret;
	}
	final void From(Windows.Foundation.IReference!(double) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimation).set_From(value));
	}
	final Windows.Foundation.IReference!(double) To()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimation).get_To(&_ret));
		return _ret;
	}
	final void To(Windows.Foundation.IReference!(double) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimation).set_To(value));
	}
	final Windows.Foundation.IReference!(double) By()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimation).get_By(&_ret));
		return _ret;
	}
	final void By(Windows.Foundation.IReference!(double) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimation).set_By(value));
	}
	final Windows.UI.Xaml.Media.Animation.EasingFunctionBase EasingFunction()
	{
		Windows.UI.Xaml.Media.Animation.EasingFunctionBase _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimation).get_EasingFunction(&_ret));
		return _ret;
	}
	final void EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimation).set_EasingFunction(value));
	}
	final bool EnableDependentAnimation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimation).get_EnableDependentAnimation(&_ret));
		return _ret;
	}
	final void EnableDependentAnimation(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimation).set_EnableDependentAnimation(value));
	}
}

interface DoubleAnimationUsingKeyFrames : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IDoubleAnimationUsingKeyFrames
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.DoubleKeyFrameCollection KeyFrames()
	{
		Windows.UI.Xaml.Media.Animation.DoubleKeyFrameCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimationUsingKeyFrames).get_KeyFrames(&_ret));
		return _ret;
	}
	final bool EnableDependentAnimation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimationUsingKeyFrames).get_EnableDependentAnimation(&_ret));
		return _ret;
	}
	final void EnableDependentAnimation(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleAnimationUsingKeyFrames).set_EnableDependentAnimation(value));
	}
}

interface DoubleKeyFrame : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.Animation.IDoubleKeyFrame
{
extern(Windows):
	final double Value()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleKeyFrame).get_Value(&_ret));
		return _ret;
	}
	final void Value(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleKeyFrame).set_Value(value));
	}
	final Windows.UI.Xaml.Media.Animation.KeyTime KeyTime()
	{
		Windows.UI.Xaml.Media.Animation.KeyTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleKeyFrame).get_KeyTime(&_ret));
		return _ret;
	}
	final void KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDoubleKeyFrame).set_KeyTime(value));
	}
}

interface DoubleKeyFrameCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.DoubleKeyFrame)).abi_First(out_first));
	}
}

interface DragItemThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IDragItemThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDragItemThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDragItemThemeAnimation).set_TargetName(value));
	}
}

interface DragOverThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IDragOverThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDragOverThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDragOverThemeAnimation).set_TargetName(value));
	}
	final double ToOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDragOverThemeAnimation).get_ToOffset(&_ret));
		return _ret;
	}
	final void ToOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDragOverThemeAnimation).set_ToOffset(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.AnimationDirection Direction()
	{
		Windows.UI.Xaml.Controls.Primitives.AnimationDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDragOverThemeAnimation).get_Direction(&_ret));
		return _ret;
	}
	final void Direction(Windows.UI.Xaml.Controls.Primitives.AnimationDirection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDragOverThemeAnimation).set_Direction(value));
	}
}

interface DrillInNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo, Windows.UI.Xaml.Media.Animation.IDrillInNavigationTransitionInfo
{
}

interface DrillInThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimation
{
extern(Windows):
	final HSTRING EntranceTargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimation).get_EntranceTargetName(&_ret));
		return _ret;
	}
	final void EntranceTargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimation).set_EntranceTargetName(value));
	}
	final Windows.UI.Xaml.DependencyObject EntranceTarget()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimation).get_EntranceTarget(&_ret));
		return _ret;
	}
	final void EntranceTarget(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimation).set_EntranceTarget(value));
	}
	final HSTRING ExitTargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimation).get_ExitTargetName(&_ret));
		return _ret;
	}
	final void ExitTargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimation).set_ExitTargetName(value));
	}
	final Windows.UI.Xaml.DependencyObject ExitTarget()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimation).get_ExitTarget(&_ret));
		return _ret;
	}
	final void ExitTarget(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimation).set_ExitTarget(value));
	}
}

interface DrillOutThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimation
{
extern(Windows):
	final HSTRING EntranceTargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimation).get_EntranceTargetName(&_ret));
		return _ret;
	}
	final void EntranceTargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimation).set_EntranceTargetName(value));
	}
	final Windows.UI.Xaml.DependencyObject EntranceTarget()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimation).get_EntranceTarget(&_ret));
		return _ret;
	}
	final void EntranceTarget(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimation).set_EntranceTarget(value));
	}
	final HSTRING ExitTargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimation).get_ExitTargetName(&_ret));
		return _ret;
	}
	final void ExitTargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimation).set_ExitTargetName(value));
	}
	final Windows.UI.Xaml.DependencyObject ExitTarget()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimation).get_ExitTarget(&_ret));
		return _ret;
	}
	final void ExitTarget(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimation).set_ExitTarget(value));
	}
}

interface DropTargetItemThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IDropTargetItemThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDropTargetItemThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IDropTargetItemThemeAnimation).set_TargetName(value));
	}
}

interface EasingColorKeyFrame : Windows.UI.Xaml.Media.Animation.ColorKeyFrame, Windows.UI.Xaml.Media.Animation.IEasingColorKeyFrame
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.EasingFunctionBase EasingFunction()
	{
		Windows.UI.Xaml.Media.Animation.EasingFunctionBase _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEasingColorKeyFrame).get_EasingFunction(&_ret));
		return _ret;
	}
	final void EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEasingColorKeyFrame).set_EasingFunction(value));
	}
}

interface EasingDoubleKeyFrame : Windows.UI.Xaml.Media.Animation.DoubleKeyFrame, Windows.UI.Xaml.Media.Animation.IEasingDoubleKeyFrame
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.EasingFunctionBase EasingFunction()
	{
		Windows.UI.Xaml.Media.Animation.EasingFunctionBase _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEasingDoubleKeyFrame).get_EasingFunction(&_ret));
		return _ret;
	}
	final void EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEasingDoubleKeyFrame).set_EasingFunction(value));
	}
}

interface EasingFunctionBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.Animation.IEasingFunctionBase
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.EasingMode EasingMode()
	{
		Windows.UI.Xaml.Media.Animation.EasingMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEasingFunctionBase).get_EasingMode(&_ret));
		return _ret;
	}
	final void EasingMode(Windows.UI.Xaml.Media.Animation.EasingMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEasingFunctionBase).set_EasingMode(value));
	}
	final double Ease(double normalizedTime)
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEasingFunctionBase).abi_Ease(normalizedTime, &_ret));
		return _ret;
	}
}

interface EasingPointKeyFrame : Windows.UI.Xaml.Media.Animation.PointKeyFrame, Windows.UI.Xaml.Media.Animation.IEasingPointKeyFrame
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.EasingFunctionBase EasingFunction()
	{
		Windows.UI.Xaml.Media.Animation.EasingFunctionBase _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEasingPointKeyFrame).get_EasingFunction(&_ret));
		return _ret;
	}
	final void EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEasingPointKeyFrame).set_EasingFunction(value));
	}
}

interface EdgeUIThemeTransition : Windows.UI.Xaml.Media.Animation.Transition, Windows.UI.Xaml.Media.Animation.IEdgeUIThemeTransition
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation Edge()
	{
		Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEdgeUIThemeTransition).get_Edge(&_ret));
		return _ret;
	}
	final void Edge(Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEdgeUIThemeTransition).set_Edge(value));
	}
}

interface ElasticEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.IElasticEase
{
extern(Windows):
	final INT32 Oscillations()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IElasticEase).get_Oscillations(&_ret));
		return _ret;
	}
	final void Oscillations(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IElasticEase).set_Oscillations(value));
	}
	final double Springiness()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IElasticEase).get_Springiness(&_ret));
		return _ret;
	}
	final void Springiness(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IElasticEase).set_Springiness(value));
	}
}

interface EntranceNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo, Windows.UI.Xaml.Media.Animation.IEntranceNavigationTransitionInfo
{
}

interface EntranceThemeTransition : Windows.UI.Xaml.Media.Animation.Transition, Windows.UI.Xaml.Media.Animation.IEntranceThemeTransition
{
extern(Windows):
	final double FromHorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEntranceThemeTransition).get_FromHorizontalOffset(&_ret));
		return _ret;
	}
	final void FromHorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEntranceThemeTransition).set_FromHorizontalOffset(value));
	}
	final double FromVerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEntranceThemeTransition).get_FromVerticalOffset(&_ret));
		return _ret;
	}
	final void FromVerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEntranceThemeTransition).set_FromVerticalOffset(value));
	}
	final bool IsStaggeringEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEntranceThemeTransition).get_IsStaggeringEnabled(&_ret));
		return _ret;
	}
	final void IsStaggeringEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IEntranceThemeTransition).set_IsStaggeringEnabled(value));
	}
}

interface ExponentialEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.IExponentialEase
{
extern(Windows):
	final double Exponent()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IExponentialEase).get_Exponent(&_ret));
		return _ret;
	}
	final void Exponent(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IExponentialEase).set_Exponent(value));
	}
}

interface FadeInThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IFadeInThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IFadeInThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IFadeInThemeAnimation).set_TargetName(value));
	}
}

interface FadeOutThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IFadeOutThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IFadeOutThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IFadeOutThemeAnimation).set_TargetName(value));
	}
}

interface KeySpline : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.Animation.IKeySpline
{
extern(Windows):
	final Windows.Foundation.Point ControlPoint1()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IKeySpline).get_ControlPoint1(&_ret));
		return _ret;
	}
	final void ControlPoint1(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IKeySpline).set_ControlPoint1(value));
	}
	final Windows.Foundation.Point ControlPoint2()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IKeySpline).get_ControlPoint2(&_ret));
		return _ret;
	}
	final void ControlPoint2(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IKeySpline).set_ControlPoint2(value));
	}
}

interface KeyTimeHelper : Windows.UI.Xaml.Media.Animation.IKeyTimeHelper
{
}

interface LinearColorKeyFrame : Windows.UI.Xaml.Media.Animation.ColorKeyFrame, Windows.UI.Xaml.Media.Animation.ILinearColorKeyFrame
{
}

interface LinearDoubleKeyFrame : Windows.UI.Xaml.Media.Animation.DoubleKeyFrame, Windows.UI.Xaml.Media.Animation.ILinearDoubleKeyFrame
{
}

interface LinearPointKeyFrame : Windows.UI.Xaml.Media.Animation.PointKeyFrame, Windows.UI.Xaml.Media.Animation.ILinearPointKeyFrame
{
}

interface NavigationThemeTransition : Windows.UI.Xaml.Media.Animation.Transition, Windows.UI.Xaml.Media.Animation.INavigationThemeTransition
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo DefaultNavigationTransitionInfo()
	{
		Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.INavigationThemeTransition).get_DefaultNavigationTransitionInfo(&_ret));
		return _ret;
	}
	final void DefaultNavigationTransitionInfo(Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.INavigationThemeTransition).set_DefaultNavigationTransitionInfo(value));
	}
}

interface NavigationTransitionInfo : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.Animation.INavigationTransitionInfo, Windows.UI.Xaml.Media.Animation.INavigationTransitionInfoOverrides
{
extern(Windows):
	final HSTRING GetNavigationStateCore()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.INavigationTransitionInfoOverrides).abi_GetNavigationStateCore(&_ret));
		return _ret;
	}
	final void SetNavigationStateCore(HSTRING navigationState)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.INavigationTransitionInfoOverrides).abi_SetNavigationStateCore(navigationState));
	}
}

interface ObjectAnimationUsingKeyFrames : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IObjectAnimationUsingKeyFrames
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.ObjectKeyFrameCollection KeyFrames()
	{
		Windows.UI.Xaml.Media.Animation.ObjectKeyFrameCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IObjectAnimationUsingKeyFrames).get_KeyFrames(&_ret));
		return _ret;
	}
	final bool EnableDependentAnimation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IObjectAnimationUsingKeyFrames).get_EnableDependentAnimation(&_ret));
		return _ret;
	}
	final void EnableDependentAnimation(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IObjectAnimationUsingKeyFrames).set_EnableDependentAnimation(value));
	}
}

interface ObjectKeyFrame : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.Animation.IObjectKeyFrame
{
extern(Windows):
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IObjectKeyFrame).get_Value(&_ret));
		return _ret;
	}
	final void Value(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IObjectKeyFrame).set_Value(value));
	}
	final Windows.UI.Xaml.Media.Animation.KeyTime KeyTime()
	{
		Windows.UI.Xaml.Media.Animation.KeyTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IObjectKeyFrame).get_KeyTime(&_ret));
		return _ret;
	}
	final void KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IObjectKeyFrame).set_KeyTime(value));
	}
}

interface ObjectKeyFrameCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.ObjectKeyFrame)).abi_First(out_first));
	}
}

interface PaneThemeTransition : Windows.UI.Xaml.Media.Animation.Transition, Windows.UI.Xaml.Media.Animation.IPaneThemeTransition
{
extern(Windows):
	final Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation Edge()
	{
		Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPaneThemeTransition).get_Edge(&_ret));
		return _ret;
	}
	final void Edge(Windows.UI.Xaml.Controls.Primitives.EdgeTransitionLocation value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPaneThemeTransition).set_Edge(value));
	}
}

interface PointAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IPointAnimation
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.Point) From()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Point) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimation).get_From(&_ret));
		return _ret;
	}
	final void From(Windows.Foundation.IReference!(Windows.Foundation.Point) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimation).set_From(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.Point) To()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Point) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimation).get_To(&_ret));
		return _ret;
	}
	final void To(Windows.Foundation.IReference!(Windows.Foundation.Point) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimation).set_To(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.Point) By()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Point) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimation).get_By(&_ret));
		return _ret;
	}
	final void By(Windows.Foundation.IReference!(Windows.Foundation.Point) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimation).set_By(value));
	}
	final Windows.UI.Xaml.Media.Animation.EasingFunctionBase EasingFunction()
	{
		Windows.UI.Xaml.Media.Animation.EasingFunctionBase _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimation).get_EasingFunction(&_ret));
		return _ret;
	}
	final void EasingFunction(Windows.UI.Xaml.Media.Animation.EasingFunctionBase value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimation).set_EasingFunction(value));
	}
	final bool EnableDependentAnimation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimation).get_EnableDependentAnimation(&_ret));
		return _ret;
	}
	final void EnableDependentAnimation(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimation).set_EnableDependentAnimation(value));
	}
}

interface PointAnimationUsingKeyFrames : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IPointAnimationUsingKeyFrames
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.PointKeyFrameCollection KeyFrames()
	{
		Windows.UI.Xaml.Media.Animation.PointKeyFrameCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimationUsingKeyFrames).get_KeyFrames(&_ret));
		return _ret;
	}
	final bool EnableDependentAnimation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimationUsingKeyFrames).get_EnableDependentAnimation(&_ret));
		return _ret;
	}
	final void EnableDependentAnimation(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointAnimationUsingKeyFrames).set_EnableDependentAnimation(value));
	}
}

interface PointKeyFrame : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.Animation.IPointKeyFrame
{
extern(Windows):
	final Windows.Foundation.Point Value()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointKeyFrame).get_Value(&_ret));
		return _ret;
	}
	final void Value(Windows.Foundation.Point value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointKeyFrame).set_Value(value));
	}
	final Windows.UI.Xaml.Media.Animation.KeyTime KeyTime()
	{
		Windows.UI.Xaml.Media.Animation.KeyTime _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointKeyFrame).get_KeyTime(&_ret));
		return _ret;
	}
	final void KeyTime(Windows.UI.Xaml.Media.Animation.KeyTime value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointKeyFrame).set_KeyTime(value));
	}
}

interface PointKeyFrameCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.PointKeyFrame)).abi_First(out_first));
	}
}

interface PointerDownThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IPointerDownThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointerDownThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointerDownThemeAnimation).set_TargetName(value));
	}
}

interface PointerUpThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IPointerUpThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointerUpThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPointerUpThemeAnimation).set_TargetName(value));
	}
}

interface PopInThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IPopInThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopInThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopInThemeAnimation).set_TargetName(value));
	}
	final double FromHorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopInThemeAnimation).get_FromHorizontalOffset(&_ret));
		return _ret;
	}
	final void FromHorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopInThemeAnimation).set_FromHorizontalOffset(value));
	}
	final double FromVerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopInThemeAnimation).get_FromVerticalOffset(&_ret));
		return _ret;
	}
	final void FromVerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopInThemeAnimation).set_FromVerticalOffset(value));
	}
}

interface PopOutThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IPopOutThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopOutThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopOutThemeAnimation).set_TargetName(value));
	}
}

interface PopupThemeTransition : Windows.UI.Xaml.Media.Animation.Transition, Windows.UI.Xaml.Media.Animation.IPopupThemeTransition
{
extern(Windows):
	final double FromHorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopupThemeTransition).get_FromHorizontalOffset(&_ret));
		return _ret;
	}
	final void FromHorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopupThemeTransition).set_FromHorizontalOffset(value));
	}
	final double FromVerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopupThemeTransition).get_FromVerticalOffset(&_ret));
		return _ret;
	}
	final void FromVerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPopupThemeTransition).set_FromVerticalOffset(value));
	}
}

interface PowerEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.IPowerEase
{
extern(Windows):
	final double Power()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPowerEase).get_Power(&_ret));
		return _ret;
	}
	final void Power(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IPowerEase).set_Power(value));
	}
}

interface QuadraticEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.IQuadraticEase
{
}

interface QuarticEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.IQuarticEase
{
}

interface QuinticEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.IQuinticEase
{
}

interface ReorderThemeTransition : Windows.UI.Xaml.Media.Animation.Transition, Windows.UI.Xaml.Media.Animation.IReorderThemeTransition
{
}

interface RepeatBehaviorHelper : Windows.UI.Xaml.Media.Animation.IRepeatBehaviorHelper
{
}

interface RepositionThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IRepositionThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IRepositionThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IRepositionThemeAnimation).set_TargetName(value));
	}
	final double FromHorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IRepositionThemeAnimation).get_FromHorizontalOffset(&_ret));
		return _ret;
	}
	final void FromHorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IRepositionThemeAnimation).set_FromHorizontalOffset(value));
	}
	final double FromVerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IRepositionThemeAnimation).get_FromVerticalOffset(&_ret));
		return _ret;
	}
	final void FromVerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IRepositionThemeAnimation).set_FromVerticalOffset(value));
	}
}

interface RepositionThemeTransition : Windows.UI.Xaml.Media.Animation.Transition, Windows.UI.Xaml.Media.Animation.IRepositionThemeTransition, Windows.UI.Xaml.Media.Animation.IRepositionThemeTransition2
{
extern(Windows):
	final bool IsStaggeringEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IRepositionThemeTransition2).get_IsStaggeringEnabled(&_ret));
		return _ret;
	}
	final void IsStaggeringEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IRepositionThemeTransition2).set_IsStaggeringEnabled(value));
	}
}

interface SineEase : Windows.UI.Xaml.Media.Animation.EasingFunctionBase, Windows.UI.Xaml.Media.Animation.ISineEase
{
}

interface SlideNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo, Windows.UI.Xaml.Media.Animation.ISlideNavigationTransitionInfo
{
}

interface SplineColorKeyFrame : Windows.UI.Xaml.Media.Animation.ColorKeyFrame, Windows.UI.Xaml.Media.Animation.ISplineColorKeyFrame
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.KeySpline KeySpline()
	{
		Windows.UI.Xaml.Media.Animation.KeySpline _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplineColorKeyFrame).get_KeySpline(&_ret));
		return _ret;
	}
	final void KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplineColorKeyFrame).set_KeySpline(value));
	}
}

interface SplineDoubleKeyFrame : Windows.UI.Xaml.Media.Animation.DoubleKeyFrame, Windows.UI.Xaml.Media.Animation.ISplineDoubleKeyFrame
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.KeySpline KeySpline()
	{
		Windows.UI.Xaml.Media.Animation.KeySpline _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplineDoubleKeyFrame).get_KeySpline(&_ret));
		return _ret;
	}
	final void KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplineDoubleKeyFrame).set_KeySpline(value));
	}
}

interface SplinePointKeyFrame : Windows.UI.Xaml.Media.Animation.PointKeyFrame, Windows.UI.Xaml.Media.Animation.ISplinePointKeyFrame
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.KeySpline KeySpline()
	{
		Windows.UI.Xaml.Media.Animation.KeySpline _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplinePointKeyFrame).get_KeySpline(&_ret));
		return _ret;
	}
	final void KeySpline(Windows.UI.Xaml.Media.Animation.KeySpline value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplinePointKeyFrame).set_KeySpline(value));
	}
}

interface SplitCloseThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation
{
extern(Windows):
	final HSTRING OpenedTargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_OpenedTargetName(&_ret));
		return _ret;
	}
	final void OpenedTargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_OpenedTargetName(value));
	}
	final Windows.UI.Xaml.DependencyObject OpenedTarget()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_OpenedTarget(&_ret));
		return _ret;
	}
	final void OpenedTarget(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_OpenedTarget(value));
	}
	final HSTRING ClosedTargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_ClosedTargetName(&_ret));
		return _ret;
	}
	final void ClosedTargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_ClosedTargetName(value));
	}
	final Windows.UI.Xaml.DependencyObject ClosedTarget()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_ClosedTarget(&_ret));
		return _ret;
	}
	final void ClosedTarget(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_ClosedTarget(value));
	}
	final HSTRING ContentTargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_ContentTargetName(&_ret));
		return _ret;
	}
	final void ContentTargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_ContentTargetName(value));
	}
	final Windows.UI.Xaml.DependencyObject ContentTarget()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_ContentTarget(&_ret));
		return _ret;
	}
	final void ContentTarget(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_ContentTarget(value));
	}
	final double OpenedLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_OpenedLength(&_ret));
		return _ret;
	}
	final void OpenedLength(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_OpenedLength(value));
	}
	final double ClosedLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_ClosedLength(&_ret));
		return _ret;
	}
	final void ClosedLength(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_ClosedLength(value));
	}
	final double OffsetFromCenter()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_OffsetFromCenter(&_ret));
		return _ret;
	}
	final void OffsetFromCenter(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_OffsetFromCenter(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.AnimationDirection ContentTranslationDirection()
	{
		Windows.UI.Xaml.Controls.Primitives.AnimationDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_ContentTranslationDirection(&_ret));
		return _ret;
	}
	final void ContentTranslationDirection(Windows.UI.Xaml.Controls.Primitives.AnimationDirection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_ContentTranslationDirection(value));
	}
	final double ContentTranslationOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).get_ContentTranslationOffset(&_ret));
		return _ret;
	}
	final void ContentTranslationOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation).set_ContentTranslationOffset(value));
	}
}

interface SplitOpenThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation
{
extern(Windows):
	final HSTRING OpenedTargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_OpenedTargetName(&_ret));
		return _ret;
	}
	final void OpenedTargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_OpenedTargetName(value));
	}
	final Windows.UI.Xaml.DependencyObject OpenedTarget()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_OpenedTarget(&_ret));
		return _ret;
	}
	final void OpenedTarget(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_OpenedTarget(value));
	}
	final HSTRING ClosedTargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_ClosedTargetName(&_ret));
		return _ret;
	}
	final void ClosedTargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_ClosedTargetName(value));
	}
	final Windows.UI.Xaml.DependencyObject ClosedTarget()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_ClosedTarget(&_ret));
		return _ret;
	}
	final void ClosedTarget(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_ClosedTarget(value));
	}
	final HSTRING ContentTargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_ContentTargetName(&_ret));
		return _ret;
	}
	final void ContentTargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_ContentTargetName(value));
	}
	final Windows.UI.Xaml.DependencyObject ContentTarget()
	{
		Windows.UI.Xaml.DependencyObject _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_ContentTarget(&_ret));
		return _ret;
	}
	final void ContentTarget(Windows.UI.Xaml.DependencyObject value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_ContentTarget(value));
	}
	final double OpenedLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_OpenedLength(&_ret));
		return _ret;
	}
	final void OpenedLength(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_OpenedLength(value));
	}
	final double ClosedLength()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_ClosedLength(&_ret));
		return _ret;
	}
	final void ClosedLength(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_ClosedLength(value));
	}
	final double OffsetFromCenter()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_OffsetFromCenter(&_ret));
		return _ret;
	}
	final void OffsetFromCenter(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_OffsetFromCenter(value));
	}
	final Windows.UI.Xaml.Controls.Primitives.AnimationDirection ContentTranslationDirection()
	{
		Windows.UI.Xaml.Controls.Primitives.AnimationDirection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_ContentTranslationDirection(&_ret));
		return _ret;
	}
	final void ContentTranslationDirection(Windows.UI.Xaml.Controls.Primitives.AnimationDirection value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_ContentTranslationDirection(value));
	}
	final double ContentTranslationOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).get_ContentTranslationOffset(&_ret));
		return _ret;
	}
	final void ContentTranslationOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation).set_ContentTranslationOffset(value));
	}
}

interface Storyboard : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.IStoryboard
{
extern(Windows):
	final Windows.UI.Xaml.Media.Animation.TimelineCollection Children()
	{
		Windows.UI.Xaml.Media.Animation.TimelineCollection _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IStoryboard).get_Children(&_ret));
		return _ret;
	}
	final void Seek(Windows.Foundation.TimeSpan offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IStoryboard).abi_Seek(offset));
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IStoryboard).abi_Stop());
	}
	final void Begin()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IStoryboard).abi_Begin());
	}
	final void Pause()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IStoryboard).abi_Pause());
	}
	final void Resume()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IStoryboard).abi_Resume());
	}
	final Windows.UI.Xaml.Media.Animation.ClockState GetCurrentState()
	{
		Windows.UI.Xaml.Media.Animation.ClockState _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IStoryboard).abi_GetCurrentState(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan GetCurrentTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IStoryboard).abi_GetCurrentTime(&_ret));
		return _ret;
	}
	final void SeekAlignedToLastTick(Windows.Foundation.TimeSpan offset)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IStoryboard).abi_SeekAlignedToLastTick(offset));
	}
	final void SkipToFill()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.IStoryboard).abi_SkipToFill());
	}
}

interface SuppressNavigationTransitionInfo : Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo, Windows.UI.Xaml.Media.Animation.ISuppressNavigationTransitionInfo
{
}

interface SwipeBackThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.ISwipeBackThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeBackThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeBackThemeAnimation).set_TargetName(value));
	}
	final double FromHorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeBackThemeAnimation).get_FromHorizontalOffset(&_ret));
		return _ret;
	}
	final void FromHorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeBackThemeAnimation).set_FromHorizontalOffset(value));
	}
	final double FromVerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeBackThemeAnimation).get_FromVerticalOffset(&_ret));
		return _ret;
	}
	final void FromVerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeBackThemeAnimation).set_FromVerticalOffset(value));
	}
}

interface SwipeHintThemeAnimation : Windows.UI.Xaml.Media.Animation.Timeline, Windows.UI.Xaml.Media.Animation.ISwipeHintThemeAnimation
{
extern(Windows):
	final HSTRING TargetName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeHintThemeAnimation).get_TargetName(&_ret));
		return _ret;
	}
	final void TargetName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeHintThemeAnimation).set_TargetName(value));
	}
	final double ToHorizontalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeHintThemeAnimation).get_ToHorizontalOffset(&_ret));
		return _ret;
	}
	final void ToHorizontalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeHintThemeAnimation).set_ToHorizontalOffset(value));
	}
	final double ToVerticalOffset()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeHintThemeAnimation).get_ToVerticalOffset(&_ret));
		return _ret;
	}
	final void ToVerticalOffset(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ISwipeHintThemeAnimation).set_ToVerticalOffset(value));
	}
}

interface Timeline : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.Animation.ITimeline
{
extern(Windows):
	final bool AutoReverse()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).get_AutoReverse(&_ret));
		return _ret;
	}
	final void AutoReverse(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).set_AutoReverse(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) BeginTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).get_BeginTime(&_ret));
		return _ret;
	}
	final void BeginTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).set_BeginTime(value));
	}
	final Windows.UI.Xaml.Duration Duration()
	{
		Windows.UI.Xaml.Duration _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).get_Duration(&_ret));
		return _ret;
	}
	final void Duration(Windows.UI.Xaml.Duration value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).set_Duration(value));
	}
	final double SpeedRatio()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).get_SpeedRatio(&_ret));
		return _ret;
	}
	final void SpeedRatio(double value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).set_SpeedRatio(value));
	}
	final Windows.UI.Xaml.Media.Animation.FillBehavior FillBehavior()
	{
		Windows.UI.Xaml.Media.Animation.FillBehavior _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).get_FillBehavior(&_ret));
		return _ret;
	}
	final void FillBehavior(Windows.UI.Xaml.Media.Animation.FillBehavior value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).set_FillBehavior(value));
	}
	final Windows.UI.Xaml.Media.Animation.RepeatBehavior RepeatBehavior()
	{
		Windows.UI.Xaml.Media.Animation.RepeatBehavior _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).get_RepeatBehavior(&_ret));
		return _ret;
	}
	final void RepeatBehavior(Windows.UI.Xaml.Media.Animation.RepeatBehavior value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Media.Animation.ITimeline).set_RepeatBehavior(value));
	}
	final void removeCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_Completed(token));
	}
}

interface TimelineCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.Timeline)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Timeline)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.Timeline)).abi_First(out_first));
	}
}

interface Transition : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Media.Animation.ITransition
{
}

interface TransitionCollection : Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition), Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.Transition)
{
extern(Windows):
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVector!(Windows.UI.Xaml.Media.Animation.Transition)).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Xaml.Media.Animation.Transition)).abi_First(out_first));
	}
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