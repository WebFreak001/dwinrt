module Windows.UI.Core.AnimationMetrics;

import dwinrt;

@uuid("7d11a549-be3d-41de-b081-05c149962f9b")
@WinrtFactory("Windows.UI.Core.AnimationMetrics.AnimationDescription")
interface IAnimationDescription : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Animations(Windows.Foundation.Collections.IVectorView!(Windows.UI.Core.AnimationMetrics.IPropertyAnimation)* return_value);
	HRESULT get_StaggerDelay(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_StaggerDelayFactor(FLOAT* return_value);
	HRESULT get_DelayLimit(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_ZOrder(INT32* return_value);
}

@uuid("c6e27abe-c1fb-48b5-9271-ecc70ac86ef0")
@WinrtFactory("Windows.UI.Core.AnimationMetrics.AnimationDescription")
interface IAnimationDescriptionFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(Windows.UI.Core.AnimationMetrics.AnimationEffect effect, Windows.UI.Core.AnimationMetrics.AnimationEffectTarget target, Windows.UI.Core.AnimationMetrics.AnimationDescription* return_animation);
}

@uuid("803aabe5-ee7e-455f-84e9-2506afb8d2b4")
@WinrtFactory("Windows.UI.Core.AnimationMetrics.OpacityAnimation")
interface IOpacityAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InitialOpacity(Windows.Foundation.IReference!(FLOAT)* return_value);
	HRESULT get_FinalOpacity(FLOAT* return_value);
}

@uuid("3a01b4da-4d8c-411e-b615-1ade683a9903")
interface IPropertyAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Type(Windows.UI.Core.AnimationMetrics.PropertyAnimationType* return_value);
	HRESULT get_Delay(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Control1(Windows.Foundation.Point* return_value);
	HRESULT get_Control2(Windows.Foundation.Point* return_value);
}

@uuid("023552c7-71ab-428c-9c9f-d31780964995")
@WinrtFactory("Windows.UI.Core.AnimationMetrics.ScaleAnimation")
interface IScaleAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InitialScaleX(Windows.Foundation.IReference!(FLOAT)* return_value);
	HRESULT get_InitialScaleY(Windows.Foundation.IReference!(FLOAT)* return_value);
	HRESULT get_FinalScaleX(FLOAT* return_value);
	HRESULT get_FinalScaleY(FLOAT* return_value);
	HRESULT get_NormalizedOrigin(Windows.Foundation.Point* return_value);
}

interface AnimationDescription
{
}

interface OpacityAnimation
{
}

interface PropertyAnimation
{
}

interface ScaleAnimation
{
}

interface TranslationAnimation
{
}

enum AnimationEffect
{
	Expand = 0,
	Collapse = 1,
	Reposition = 2,
	FadeIn = 3,
	FadeOut = 4,
	AddToList = 5,
	DeleteFromList = 6,
	AddToGrid = 7,
	DeleteFromGrid = 8,
	AddToSearchGrid = 9,
	DeleteFromSearchGrid = 10,
	AddToSearchList = 11,
	DeleteFromSearchList = 12,
	ShowEdgeUI = 13,
	ShowPanel = 14,
	HideEdgeUI = 15,
	HidePanel = 16,
	ShowPopup = 17,
	HidePopup = 18,
	PointerDown = 19,
	PointerUp = 20,
	DragSourceStart = 21,
	DragSourceEnd = 22,
	TransitionContent = 23,
	Reveal = 24,
	Hide = 25,
	DragBetweenEnter = 26,
	DragBetweenLeave = 27,
	SwipeSelect = 28,
	SwipeDeselect = 29,
	SwipeReveal = 30,
	EnterPage = 31,
	TransitionPage = 32,
	CrossFade = 33,
	Peek = 34,
	UpdateBadge = 35
}

enum AnimationEffectTarget
{
	Primary = 0,
	Added = 1,
	Affected = 2,
	Background = 3,
	Content = 4,
	Deleted = 5,
	Deselected = 6,
	DragSource = 7,
	Hidden = 8,
	Incoming = 9,
	Outgoing = 10,
	Outline = 11,
	Remaining = 12,
	Revealed = 13,
	RowIn = 14,
	RowOut = 15,
	Selected = 16,
	Selection = 17,
	Shown = 18,
	Tapped = 19
}

enum PropertyAnimationType
{
	Scale = 0,
	Translation = 1,
	Opacity = 2
}