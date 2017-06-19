module Windows.UI.Composition.Interactions;

import dwinrt;

@uuid("43250538-eb73-4561-a71d-1a43eaeb7a9b")
@WinrtFactory("Windows.UI.Composition.Interactions.CompositionConditionalValue")
interface ICompositionConditionalValue : IInspectable
{
extern(Windows):
	HRESULT get_Condition(Windows.UI.Composition.ExpressionAnimation* return_value);
	HRESULT set_Condition(Windows.UI.Composition.ExpressionAnimation value);
	HRESULT get_Value(Windows.UI.Composition.ExpressionAnimation* return_value);
	HRESULT set_Value(Windows.UI.Composition.ExpressionAnimation value);
}

@uuid("090c4b72-8467-4d0a-9065-ac46b80a5522")
@WinrtFactory("Windows.UI.Composition.Interactions.CompositionConditionalValue")
interface ICompositionConditionalValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Composition.Compositor compositor, Windows.UI.Composition.Interactions.CompositionConditionalValue* return_result);
}

@uuid("043b2431-06e3-495a-ba54-409f0017fac0")
interface ICompositionInteractionSource : IInspectable
{
}

@uuid("1b468e4b-a5bf-47d8-a547-3894155a158c")
@WinrtFactory("Windows.UI.Composition.Interactions.CompositionInteractionSourceCollection")
interface ICompositionInteractionSourceCollection_Base : IInspectable
{
extern(Windows):
	HRESULT get_Count(INT32* return_value);
	HRESULT abi_Add(Windows.UI.Composition.Interactions.ICompositionInteractionSource value);
	HRESULT abi_Remove(Windows.UI.Composition.Interactions.ICompositionInteractionSource value);
	HRESULT abi_RemoveAll();
}
@uuid("1b468e4b-a5bf-47d8-a547-3894155a158c")
@WinrtFactory("Windows.UI.Composition.Interactions.CompositionInteractionSourceCollection")
interface ICompositionInteractionSourceCollection : ICompositionInteractionSourceCollection_Base, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.ICompositionInteractionSource) {}

@uuid("2a8e8cb1-1000-4416-8363-cc27fb877308")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTracker")
interface IInteractionTracker : IInspectable
{
extern(Windows):
	HRESULT get_InteractionSources(Windows.UI.Composition.Interactions.CompositionInteractionSourceCollection* return_value);
	HRESULT get_IsPositionRoundingSuggested(bool* return_value);
	HRESULT get_MaxPosition(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_MaxPosition(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_MaxScale(FLOAT* return_value);
	HRESULT set_MaxScale(FLOAT value);
	HRESULT get_MinPosition(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_MinPosition(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_MinScale(FLOAT* return_value);
	HRESULT set_MinScale(FLOAT value);
	HRESULT get_NaturalRestingPosition(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_NaturalRestingScale(FLOAT* return_value);
	HRESULT get_Owner(Windows.UI.Composition.Interactions.IInteractionTrackerOwner* return_value);
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_PositionInertiaDecayRate(Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3)* return_value);
	HRESULT set_PositionInertiaDecayRate(Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) value);
	HRESULT get_PositionVelocityInPixelsPerSecond(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_Scale(FLOAT* return_value);
	HRESULT get_ScaleInertiaDecayRate(Windows.Foundation.IReference!(FLOAT)* return_value);
	HRESULT set_ScaleInertiaDecayRate(Windows.Foundation.IReference!(FLOAT) value);
	HRESULT get_ScaleVelocityInPercentPerSecond(FLOAT* return_value);
	HRESULT abi_AdjustPositionXIfGreaterThanThreshold(FLOAT adjustment, FLOAT positionThreshold);
	HRESULT abi_AdjustPositionYIfGreaterThanThreshold(FLOAT adjustment, FLOAT positionThreshold);
	HRESULT abi_ConfigurePositionXInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers);
	HRESULT abi_ConfigurePositionYInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers);
	HRESULT abi_ConfigureScaleInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers);
	HRESULT abi_TryUpdatePosition(Windows.Foundation.Numerics.Vector3 value, INT32* return_requestId);
	HRESULT abi_TryUpdatePositionBy(Windows.Foundation.Numerics.Vector3 amount, INT32* return_requestId);
	HRESULT abi_TryUpdatePositionWithAnimation(Windows.UI.Composition.CompositionAnimation animation, INT32* return_requestId);
	HRESULT abi_TryUpdatePositionWithAdditionalVelocity(Windows.Foundation.Numerics.Vector3 velocityInPixelsPerSecond, INT32* return_requestId);
	HRESULT abi_TryUpdateScale(FLOAT value, Windows.Foundation.Numerics.Vector3 centerPoint, INT32* return_requestId);
	HRESULT abi_TryUpdateScaleWithAnimation(Windows.UI.Composition.CompositionAnimation animation, Windows.Foundation.Numerics.Vector3 centerPoint, INT32* return_requestId);
	HRESULT abi_TryUpdateScaleWithAdditionalVelocity(FLOAT velocityInPercentPerSecond, Windows.Foundation.Numerics.Vector3 centerPoint, INT32* return_requestId);
}

@uuid("25769a3e-ce6d-448c-8386-92620d240756")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTracker")
interface IInteractionTracker2 : IInspectable
{
extern(Windows):
	HRESULT abi_ConfigureCenterPointXInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues);
	HRESULT abi_ConfigureCenterPointYInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues);
}

@uuid("8d1c8cf1-d7b0-434c-a5d2-2d7611864834")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerCustomAnimationStateEnteredArgs")
interface IInteractionTrackerCustomAnimationStateEnteredArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequestId(INT32* return_value);
}

@uuid("50012faa-1510-4142-a1a5-019b09f8857b")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerIdleStateEnteredArgs")
interface IInteractionTrackerIdleStateEnteredArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequestId(INT32* return_value);
}

@uuid("a0e2c920-26b4-4da2-8b61-5e683979bbe2")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier")
interface IInteractionTrackerInertiaModifier : IInspectable
{
}

@uuid("993818fe-c94e-4b86-87f3-922665ba46b9")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier")
interface IInteractionTrackerInertiaModifierFactory : IInspectable
{
}

@uuid("04922fdc-f154-4cb8-bf33-cc1ba611e6db")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerInertiaMotion")
interface IInteractionTrackerInertiaMotion : IInspectable
{
extern(Windows):
	HRESULT get_Condition(Windows.UI.Composition.ExpressionAnimation* return_value);
	HRESULT set_Condition(Windows.UI.Composition.ExpressionAnimation value);
	HRESULT get_Motion(Windows.UI.Composition.ExpressionAnimation* return_value);
	HRESULT set_Motion(Windows.UI.Composition.ExpressionAnimation value);
}

@uuid("8cc83dd6-ba7b-431a-844b-6eac9130f99a")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerInertiaMotion")
interface IInteractionTrackerInertiaMotionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Composition.Compositor compositor, Windows.UI.Composition.Interactions.InteractionTrackerInertiaMotion* return_result);
}

@uuid("86f7ec09-5096-4170-9cc8-df2fe101bb93")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerInertiaRestingValue")
interface IInteractionTrackerInertiaRestingValue : IInspectable
{
extern(Windows):
	HRESULT get_Condition(Windows.UI.Composition.ExpressionAnimation* return_value);
	HRESULT set_Condition(Windows.UI.Composition.ExpressionAnimation value);
	HRESULT get_RestingValue(Windows.UI.Composition.ExpressionAnimation* return_value);
	HRESULT set_RestingValue(Windows.UI.Composition.ExpressionAnimation value);
}

@uuid("18ed4699-0745-4096-bcab-3a4e99569bcf")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerInertiaRestingValue")
interface IInteractionTrackerInertiaRestingValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Composition.Compositor compositor, Windows.UI.Composition.Interactions.InteractionTrackerInertiaRestingValue* return_result);
}

@uuid("87108cf2-e7ff-4f7d-9ffd-d72f1e409b63")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerInertiaStateEnteredArgs")
interface IInteractionTrackerInertiaStateEnteredArgs : IInspectable
{
extern(Windows):
	HRESULT get_ModifiedRestingPosition(Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3)* return_value);
	HRESULT get_ModifiedRestingScale(Windows.Foundation.IReference!(FLOAT)* return_value);
	HRESULT get_NaturalRestingPosition(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_NaturalRestingScale(FLOAT* return_value);
	HRESULT get_PositionVelocityInPixelsPerSecond(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_RequestId(INT32* return_value);
	HRESULT get_ScaleVelocityInPercentPerSecond(FLOAT* return_value);
}

@uuid("a7263939-a17b-4011-99fd-b5c24f143748")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerInteractingStateEnteredArgs")
interface IInteractionTrackerInteractingStateEnteredArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequestId(INT32* return_value);
}

@uuid("db2e8af3-4deb-4e53-b29c-b06c9f96d651")
interface IInteractionTrackerOwner : IInspectable
{
extern(Windows):
	HRESULT abi_CustomAnimationStateEntered(Windows.UI.Composition.Interactions.InteractionTracker sender, Windows.UI.Composition.Interactions.InteractionTrackerCustomAnimationStateEnteredArgs args);
	HRESULT abi_IdleStateEntered(Windows.UI.Composition.Interactions.InteractionTracker sender, Windows.UI.Composition.Interactions.InteractionTrackerIdleStateEnteredArgs args);
	HRESULT abi_InertiaStateEntered(Windows.UI.Composition.Interactions.InteractionTracker sender, Windows.UI.Composition.Interactions.InteractionTrackerInertiaStateEnteredArgs args);
	HRESULT abi_InteractingStateEntered(Windows.UI.Composition.Interactions.InteractionTracker sender, Windows.UI.Composition.Interactions.InteractionTrackerInteractingStateEnteredArgs args);
	HRESULT abi_RequestIgnored(Windows.UI.Composition.Interactions.InteractionTracker sender, Windows.UI.Composition.Interactions.InteractionTrackerRequestIgnoredArgs args);
	HRESULT abi_ValuesChanged(Windows.UI.Composition.Interactions.InteractionTracker sender, Windows.UI.Composition.Interactions.InteractionTrackerValuesChangedArgs args);
}

@uuid("80dd82f1-ce25-488f-91dd-cb6455ccff2e")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerRequestIgnoredArgs")
interface IInteractionTrackerRequestIgnoredArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequestId(INT32* return_value);
}

@uuid("bba5d7b7-6590-4498-8d6c-eb62b514c92a")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTracker")
interface IInteractionTrackerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Composition.Compositor compositor, Windows.UI.Composition.Interactions.InteractionTracker* return_result);
	HRESULT abi_CreateWithOwner(Windows.UI.Composition.Compositor compositor, Windows.UI.Composition.Interactions.IInteractionTrackerOwner owner, Windows.UI.Composition.Interactions.InteractionTracker* return_result);
}

@uuid("cf1578ef-d3df-4501-b9e6-f02fb22f73d0")
@WinrtFactory("Windows.UI.Composition.Interactions.InteractionTrackerValuesChangedArgs")
interface IInteractionTrackerValuesChangedArgs : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_RequestId(INT32* return_value);
	HRESULT get_Scale(FLOAT* return_value);
}

@uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed")
@WinrtFactory("Windows.UI.Composition.Interactions.VisualInteractionSource")
interface IVisualInteractionSource : IInspectable
{
extern(Windows):
	HRESULT get_IsPositionXRailsEnabled(bool* return_value);
	HRESULT set_IsPositionXRailsEnabled(bool value);
	HRESULT get_IsPositionYRailsEnabled(bool* return_value);
	HRESULT set_IsPositionYRailsEnabled(bool value);
	HRESULT get_ManipulationRedirectionMode(Windows.UI.Composition.Interactions.VisualInteractionSourceRedirectionMode* return_value);
	HRESULT set_ManipulationRedirectionMode(Windows.UI.Composition.Interactions.VisualInteractionSourceRedirectionMode value);
	HRESULT get_PositionXChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode* return_value);
	HRESULT set_PositionXChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value);
	HRESULT get_PositionXSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode* return_value);
	HRESULT set_PositionXSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value);
	HRESULT get_PositionYChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode* return_value);
	HRESULT set_PositionYChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value);
	HRESULT get_PositionYSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode* return_value);
	HRESULT set_PositionYSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value);
	HRESULT get_ScaleChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode* return_value);
	HRESULT set_ScaleChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value);
	HRESULT get_ScaleSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode* return_value);
	HRESULT set_ScaleSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value);
	HRESULT get_Source(Windows.UI.Composition.Visual* return_value);
	HRESULT abi_TryRedirectForManipulation(Windows.UI.Input.PointerPoint pointerPoint);
}

@uuid("aa914893-a73c-414d-80d0-249bad2fbd93")
@WinrtFactory("Windows.UI.Composition.Interactions.VisualInteractionSource")
interface IVisualInteractionSource2 : IInspectable
{
extern(Windows):
	HRESULT get_DeltaPosition(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_DeltaScale(FLOAT* return_value);
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_PositionVelocity(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_Scale(FLOAT* return_value);
	HRESULT get_ScaleVelocity(FLOAT* return_value);
	HRESULT abi_ConfigureCenterPointXModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues);
	HRESULT abi_ConfigureCenterPointYModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues);
	HRESULT abi_ConfigureDeltaPositionXModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues);
	HRESULT abi_ConfigureDeltaPositionYModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues);
	HRESULT abi_ConfigureDeltaScaleModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues);
}

@uuid("b2ca917c-e98a-41f2-b3c9-891c9266c8f6")
@WinrtFactory("Windows.UI.Composition.Interactions.VisualInteractionSource")
interface IVisualInteractionSourceObjectFactory : IInspectable
{
}

@uuid("369965e1-8645-4f75-ba00-6479cd10c8e6")
@WinrtFactory("Windows.UI.Composition.Interactions.VisualInteractionSource")
interface IVisualInteractionSourceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Composition.Visual source, Windows.UI.Composition.Interactions.VisualInteractionSource* return_result);
}

interface CompositionConditionalValue : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.Interactions.ICompositionConditionalValue
{
extern(Windows):
	final Windows.UI.Composition.ExpressionAnimation Condition()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.ICompositionConditionalValue).get_Condition(&_ret));
		return _ret;
	}
	final void Condition(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.ICompositionConditionalValue).set_Condition(value));
	}
	final Windows.UI.Composition.ExpressionAnimation Value()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.ICompositionConditionalValue).get_Value(&_ret));
		return _ret;
	}
	final void Value(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.ICompositionConditionalValue).set_Value(value));
	}
}

interface CompositionInteractionSourceCollection : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.ICompositionInteractionSource)
{
extern(Windows):
	final INT32 Count()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection).get_Count(&_ret));
		return _ret;
	}
	final void Add(Windows.UI.Composition.Interactions.ICompositionInteractionSource value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection).abi_Add(value));
	}
	final void Remove(Windows.UI.Composition.Interactions.ICompositionInteractionSource value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection).abi_Remove(value));
	}
	final void RemoveAll()
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection).abi_RemoveAll());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Composition.Interactions.ICompositionInteractionSource)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.ICompositionInteractionSource)).abi_First(out_first));
	}
}

interface InteractionTracker : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.Interactions.IInteractionTracker, Windows.UI.Composition.Interactions.IInteractionTracker2
{
extern(Windows):
	final Windows.UI.Composition.Interactions.CompositionInteractionSourceCollection InteractionSources()
	{
		Windows.UI.Composition.Interactions.CompositionInteractionSourceCollection _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_InteractionSources(&_ret));
		return _ret;
	}
	final bool IsPositionRoundingSuggested()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_IsPositionRoundingSuggested(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 MaxPosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_MaxPosition(&_ret));
		return _ret;
	}
	final void MaxPosition(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).set_MaxPosition(value));
	}
	final FLOAT MaxScale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_MaxScale(&_ret));
		return _ret;
	}
	final void MaxScale(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).set_MaxScale(value));
	}
	final Windows.Foundation.Numerics.Vector3 MinPosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_MinPosition(&_ret));
		return _ret;
	}
	final void MinPosition(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).set_MinPosition(value));
	}
	final FLOAT MinScale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_MinScale(&_ret));
		return _ret;
	}
	final void MinScale(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).set_MinScale(value));
	}
	final Windows.Foundation.Numerics.Vector3 NaturalRestingPosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_NaturalRestingPosition(&_ret));
		return _ret;
	}
	final FLOAT NaturalRestingScale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_NaturalRestingScale(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.Interactions.IInteractionTrackerOwner Owner()
	{
		Windows.UI.Composition.Interactions.IInteractionTrackerOwner _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_Owner(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) PositionInertiaDecayRate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_PositionInertiaDecayRate(&_ret));
		return _ret;
	}
	final void PositionInertiaDecayRate(Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).set_PositionInertiaDecayRate(value));
	}
	final Windows.Foundation.Numerics.Vector3 PositionVelocityInPixelsPerSecond()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_PositionVelocityInPixelsPerSecond(&_ret));
		return _ret;
	}
	final FLOAT Scale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_Scale(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(FLOAT) ScaleInertiaDecayRate()
	{
		Windows.Foundation.IReference!(FLOAT) _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_ScaleInertiaDecayRate(&_ret));
		return _ret;
	}
	final void ScaleInertiaDecayRate(Windows.Foundation.IReference!(FLOAT) value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).set_ScaleInertiaDecayRate(value));
	}
	final FLOAT ScaleVelocityInPercentPerSecond()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).get_ScaleVelocityInPercentPerSecond(&_ret));
		return _ret;
	}
	final void AdjustPositionXIfGreaterThanThreshold(FLOAT adjustment, FLOAT positionThreshold)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_AdjustPositionXIfGreaterThanThreshold(adjustment, positionThreshold));
	}
	final void AdjustPositionYIfGreaterThanThreshold(FLOAT adjustment, FLOAT positionThreshold)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_AdjustPositionYIfGreaterThanThreshold(adjustment, positionThreshold));
	}
	final void ConfigurePositionXInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_ConfigurePositionXInertiaModifiers(modifiers));
	}
	final void ConfigurePositionYInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_ConfigurePositionYInertiaModifiers(modifiers));
	}
	final void ConfigureScaleInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_ConfigureScaleInertiaModifiers(modifiers));
	}
	final INT32 TryUpdatePosition(Windows.Foundation.Numerics.Vector3 value)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_TryUpdatePosition(value, &_ret));
		return _ret;
	}
	final INT32 TryUpdatePositionBy(Windows.Foundation.Numerics.Vector3 amount)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_TryUpdatePositionBy(amount, &_ret));
		return _ret;
	}
	final INT32 TryUpdatePositionWithAnimation(Windows.UI.Composition.CompositionAnimation animation)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_TryUpdatePositionWithAnimation(animation, &_ret));
		return _ret;
	}
	final INT32 TryUpdatePositionWithAdditionalVelocity(Windows.Foundation.Numerics.Vector3 velocityInPixelsPerSecond)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_TryUpdatePositionWithAdditionalVelocity(velocityInPixelsPerSecond, &_ret));
		return _ret;
	}
	final INT32 TryUpdateScale(FLOAT value, Windows.Foundation.Numerics.Vector3 centerPoint)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_TryUpdateScale(value, centerPoint, &_ret));
		return _ret;
	}
	final INT32 TryUpdateScaleWithAnimation(Windows.UI.Composition.CompositionAnimation animation, Windows.Foundation.Numerics.Vector3 centerPoint)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_TryUpdateScaleWithAnimation(animation, centerPoint, &_ret));
		return _ret;
	}
	final INT32 TryUpdateScaleWithAdditionalVelocity(FLOAT velocityInPercentPerSecond, Windows.Foundation.Numerics.Vector3 centerPoint)
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker).abi_TryUpdateScaleWithAdditionalVelocity(velocityInPercentPerSecond, centerPoint, &_ret));
		return _ret;
	}
	final void ConfigureCenterPointXInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker2).abi_ConfigureCenterPointXInertiaModifiers(conditionalValues));
	}
	final void ConfigureCenterPointYInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTracker2).abi_ConfigureCenterPointYInertiaModifiers(conditionalValues));
	}
}

interface InteractionTrackerCustomAnimationStateEnteredArgs : Windows.UI.Composition.Interactions.IInteractionTrackerCustomAnimationStateEnteredArgs
{
extern(Windows):
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerCustomAnimationStateEnteredArgs).get_RequestId(&_ret));
		return _ret;
	}
}

interface InteractionTrackerIdleStateEnteredArgs : Windows.UI.Composition.Interactions.IInteractionTrackerIdleStateEnteredArgs
{
extern(Windows):
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerIdleStateEnteredArgs).get_RequestId(&_ret));
		return _ret;
	}
}

interface InteractionTrackerInertiaModifier : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.Interactions.IInteractionTrackerInertiaModifier
{
}

interface InteractionTrackerInertiaMotion : Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier, Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion
{
extern(Windows):
	final Windows.UI.Composition.ExpressionAnimation Condition()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion).get_Condition(&_ret));
		return _ret;
	}
	final void Condition(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion).set_Condition(value));
	}
	final Windows.UI.Composition.ExpressionAnimation Motion()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion).get_Motion(&_ret));
		return _ret;
	}
	final void Motion(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion).set_Motion(value));
	}
}

interface InteractionTrackerInertiaRestingValue : Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier, Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue
{
extern(Windows):
	final Windows.UI.Composition.ExpressionAnimation Condition()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue).get_Condition(&_ret));
		return _ret;
	}
	final void Condition(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue).set_Condition(value));
	}
	final Windows.UI.Composition.ExpressionAnimation RestingValue()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue).get_RestingValue(&_ret));
		return _ret;
	}
	final void RestingValue(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue).set_RestingValue(value));
	}
}

interface InteractionTrackerInertiaStateEnteredArgs : Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) ModifiedRestingPosition()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs).get_ModifiedRestingPosition(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(FLOAT) ModifiedRestingScale()
	{
		Windows.Foundation.IReference!(FLOAT) _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs).get_ModifiedRestingScale(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 NaturalRestingPosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs).get_NaturalRestingPosition(&_ret));
		return _ret;
	}
	final FLOAT NaturalRestingScale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs).get_NaturalRestingScale(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 PositionVelocityInPixelsPerSecond()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs).get_PositionVelocityInPixelsPerSecond(&_ret));
		return _ret;
	}
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs).get_RequestId(&_ret));
		return _ret;
	}
	final FLOAT ScaleVelocityInPercentPerSecond()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs).get_ScaleVelocityInPercentPerSecond(&_ret));
		return _ret;
	}
}

interface InteractionTrackerInteractingStateEnteredArgs : Windows.UI.Composition.Interactions.IInteractionTrackerInteractingStateEnteredArgs
{
extern(Windows):
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerInteractingStateEnteredArgs).get_RequestId(&_ret));
		return _ret;
	}
}

interface InteractionTrackerRequestIgnoredArgs : Windows.UI.Composition.Interactions.IInteractionTrackerRequestIgnoredArgs
{
extern(Windows):
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerRequestIgnoredArgs).get_RequestId(&_ret));
		return _ret;
	}
}

interface InteractionTrackerValuesChangedArgs : Windows.UI.Composition.Interactions.IInteractionTrackerValuesChangedArgs
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerValuesChangedArgs).get_Position(&_ret));
		return _ret;
	}
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerValuesChangedArgs).get_RequestId(&_ret));
		return _ret;
	}
	final FLOAT Scale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IInteractionTrackerValuesChangedArgs).get_Scale(&_ret));
		return _ret;
	}
}

interface VisualInteractionSource : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.Interactions.IVisualInteractionSource, Windows.UI.Composition.Interactions.ICompositionInteractionSource, Windows.UI.Composition.Interactions.IVisualInteractionSource2
{
extern(Windows):
	final bool IsPositionXRailsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).get_IsPositionXRailsEnabled(&_ret));
		return _ret;
	}
	final void IsPositionXRailsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).set_IsPositionXRailsEnabled(value));
	}
	final bool IsPositionYRailsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).get_IsPositionYRailsEnabled(&_ret));
		return _ret;
	}
	final void IsPositionYRailsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).set_IsPositionYRailsEnabled(value));
	}
	final Windows.UI.Composition.Interactions.VisualInteractionSourceRedirectionMode ManipulationRedirectionMode()
	{
		Windows.UI.Composition.Interactions.VisualInteractionSourceRedirectionMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).get_ManipulationRedirectionMode(&_ret));
		return _ret;
	}
	final void ManipulationRedirectionMode(Windows.UI.Composition.Interactions.VisualInteractionSourceRedirectionMode value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).set_ManipulationRedirectionMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionChainingMode PositionXChainingMode()
	{
		Windows.UI.Composition.Interactions.InteractionChainingMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).get_PositionXChainingMode(&_ret));
		return _ret;
	}
	final void PositionXChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).set_PositionXChainingMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionSourceMode PositionXSourceMode()
	{
		Windows.UI.Composition.Interactions.InteractionSourceMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).get_PositionXSourceMode(&_ret));
		return _ret;
	}
	final void PositionXSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).set_PositionXSourceMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionChainingMode PositionYChainingMode()
	{
		Windows.UI.Composition.Interactions.InteractionChainingMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).get_PositionYChainingMode(&_ret));
		return _ret;
	}
	final void PositionYChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).set_PositionYChainingMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionSourceMode PositionYSourceMode()
	{
		Windows.UI.Composition.Interactions.InteractionSourceMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).get_PositionYSourceMode(&_ret));
		return _ret;
	}
	final void PositionYSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).set_PositionYSourceMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionChainingMode ScaleChainingMode()
	{
		Windows.UI.Composition.Interactions.InteractionChainingMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).get_ScaleChainingMode(&_ret));
		return _ret;
	}
	final void ScaleChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).set_ScaleChainingMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionSourceMode ScaleSourceMode()
	{
		Windows.UI.Composition.Interactions.InteractionSourceMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).get_ScaleSourceMode(&_ret));
		return _ret;
	}
	final void ScaleSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).set_ScaleSourceMode(value));
	}
	final Windows.UI.Composition.Visual Source()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).get_Source(&_ret));
		return _ret;
	}
	final void TryRedirectForManipulation(Windows.UI.Input.PointerPoint pointerPoint)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource).abi_TryRedirectForManipulation(pointerPoint));
	}
	final Windows.Foundation.Numerics.Vector3 DeltaPosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).get_DeltaPosition(&_ret));
		return _ret;
	}
	final FLOAT DeltaScale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).get_DeltaScale(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 PositionVelocity()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).get_PositionVelocity(&_ret));
		return _ret;
	}
	final FLOAT Scale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).get_Scale(&_ret));
		return _ret;
	}
	final FLOAT ScaleVelocity()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).get_ScaleVelocity(&_ret));
		return _ret;
	}
	final void ConfigureCenterPointXModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).abi_ConfigureCenterPointXModifiers(conditionalValues));
	}
	final void ConfigureCenterPointYModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).abi_ConfigureCenterPointYModifiers(conditionalValues));
	}
	final void ConfigureDeltaPositionXModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).abi_ConfigureDeltaPositionXModifiers(conditionalValues));
	}
	final void ConfigureDeltaPositionYModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).abi_ConfigureDeltaPositionYModifiers(conditionalValues));
	}
	final void ConfigureDeltaScaleModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK(this.as!(Windows.UI.Composition.Interactions.IVisualInteractionSource2).abi_ConfigureDeltaScaleModifiers(conditionalValues));
	}
}

enum InteractionChainingMode
{
	Auto = 0,
	Always = 1,
	Never = 2
}

enum InteractionSourceMode
{
	Disabled = 0,
	EnabledWithInertia = 1,
	EnabledWithoutInertia = 2
}

enum VisualInteractionSourceRedirectionMode
{
	Off = 0,
	CapableTouchpadOnly = 1
}