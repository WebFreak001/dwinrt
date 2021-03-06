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
	HRESULT get_MaxScale(float* return_value);
	HRESULT set_MaxScale(float value);
	HRESULT get_MinPosition(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_MinPosition(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_MinScale(float* return_value);
	HRESULT set_MinScale(float value);
	HRESULT get_NaturalRestingPosition(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_NaturalRestingScale(float* return_value);
	HRESULT get_Owner(Windows.UI.Composition.Interactions.IInteractionTrackerOwner* return_value);
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_PositionInertiaDecayRate(Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3)* return_value);
	HRESULT set_PositionInertiaDecayRate(Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) value);
	HRESULT get_PositionVelocityInPixelsPerSecond(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_Scale(float* return_value);
	HRESULT get_ScaleInertiaDecayRate(Windows.Foundation.IReference!(float)* return_value);
	HRESULT set_ScaleInertiaDecayRate(Windows.Foundation.IReference!(float) value);
	HRESULT get_ScaleVelocityInPercentPerSecond(float* return_value);
	HRESULT abi_AdjustPositionXIfGreaterThanThreshold(float adjustment, float positionThreshold);
	HRESULT abi_AdjustPositionYIfGreaterThanThreshold(float adjustment, float positionThreshold);
	HRESULT abi_ConfigurePositionXInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers);
	HRESULT abi_ConfigurePositionYInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers);
	HRESULT abi_ConfigureScaleInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers);
	HRESULT abi_TryUpdatePosition(Windows.Foundation.Numerics.Vector3 value, INT32* return_requestId);
	HRESULT abi_TryUpdatePositionBy(Windows.Foundation.Numerics.Vector3 amount, INT32* return_requestId);
	HRESULT abi_TryUpdatePositionWithAnimation(Windows.UI.Composition.CompositionAnimation animation, INT32* return_requestId);
	HRESULT abi_TryUpdatePositionWithAdditionalVelocity(Windows.Foundation.Numerics.Vector3 velocityInPixelsPerSecond, INT32* return_requestId);
	HRESULT abi_TryUpdateScale(float value, Windows.Foundation.Numerics.Vector3 centerPoint, INT32* return_requestId);
	HRESULT abi_TryUpdateScaleWithAnimation(Windows.UI.Composition.CompositionAnimation animation, Windows.Foundation.Numerics.Vector3 centerPoint, INT32* return_requestId);
	HRESULT abi_TryUpdateScaleWithAdditionalVelocity(float velocityInPercentPerSecond, Windows.Foundation.Numerics.Vector3 centerPoint, INT32* return_requestId);
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
	HRESULT get_ModifiedRestingScale(Windows.Foundation.IReference!(float)* return_value);
	HRESULT get_NaturalRestingPosition(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_NaturalRestingScale(float* return_value);
	HRESULT get_PositionVelocityInPixelsPerSecond(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_RequestId(INT32* return_value);
	HRESULT get_ScaleVelocityInPercentPerSecond(float* return_value);
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
	HRESULT get_Scale(float* return_value);
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
	HRESULT get_DeltaScale(float* return_value);
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_PositionVelocity(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_Scale(float* return_value);
	HRESULT get_ScaleVelocity(float* return_value);
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
		Debug.OK((cast(Windows.UI.Composition.Interactions.ICompositionConditionalValue)this.asInterface(uuid("43250538-eb73-4561-a71d-1a43eaeb7a9b"))).get_Condition(&_ret));
		return _ret;
	}
	final void Condition(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.ICompositionConditionalValue)this.asInterface(uuid("43250538-eb73-4561-a71d-1a43eaeb7a9b"))).set_Condition(value));
	}
	final Windows.UI.Composition.ExpressionAnimation Value()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.ICompositionConditionalValue)this.asInterface(uuid("43250538-eb73-4561-a71d-1a43eaeb7a9b"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.ICompositionConditionalValue)this.asInterface(uuid("43250538-eb73-4561-a71d-1a43eaeb7a9b"))).set_Value(value));
	}

	private static Windows.UI.Composition.Interactions.ICompositionConditionalValueStatics _staticInstance;
	public static Windows.UI.Composition.Interactions.ICompositionConditionalValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Composition.Interactions.ICompositionConditionalValueStatics);
		return _staticInstance;
	}
	static Windows.UI.Composition.Interactions.CompositionConditionalValue Create(Windows.UI.Composition.Compositor compositor)
	{
		Windows.UI.Composition.Interactions.CompositionConditionalValue _ret;
		Debug.OK(staticInstance.abi_Create(compositor, &_ret));
		return _ret;
	}
}

interface CompositionInteractionSourceCollection : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.ICompositionInteractionSource)
{
extern(Windows):
	final INT32 Count()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection)this.asInterface(uuid("1b468e4b-a5bf-47d8-a547-3894155a158c"))).get_Count(&_ret));
		return _ret;
	}
	final void Add(Windows.UI.Composition.Interactions.ICompositionInteractionSource value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection)this.asInterface(uuid("1b468e4b-a5bf-47d8-a547-3894155a158c"))).abi_Add(value));
	}
	final void Remove(Windows.UI.Composition.Interactions.ICompositionInteractionSource value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection)this.asInterface(uuid("1b468e4b-a5bf-47d8-a547-3894155a158c"))).abi_Remove(value));
	}
	final void RemoveAll()
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.ICompositionInteractionSourceCollection)this.asInterface(uuid("1b468e4b-a5bf-47d8-a547-3894155a158c"))).abi_RemoveAll());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Composition.Interactions.ICompositionInteractionSource)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.ICompositionInteractionSource))this).abi_First(out_first));
	}
}

interface InteractionTracker : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.Interactions.IInteractionTracker, Windows.UI.Composition.Interactions.IInteractionTracker2
{
extern(Windows):
	final Windows.UI.Composition.Interactions.CompositionInteractionSourceCollection InteractionSources()
	{
		Windows.UI.Composition.Interactions.CompositionInteractionSourceCollection _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_InteractionSources(&_ret));
		return _ret;
	}
	final bool IsPositionRoundingSuggested()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_IsPositionRoundingSuggested(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 MaxPosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_MaxPosition(&_ret));
		return _ret;
	}
	final void MaxPosition(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).set_MaxPosition(value));
	}
	final float MaxScale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_MaxScale(&_ret));
		return _ret;
	}
	final void MaxScale(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).set_MaxScale(value));
	}
	final Windows.Foundation.Numerics.Vector3 MinPosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_MinPosition(&_ret));
		return _ret;
	}
	final void MinPosition(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).set_MinPosition(value));
	}
	final float MinScale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_MinScale(&_ret));
		return _ret;
	}
	final void MinScale(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).set_MinScale(value));
	}
	final Windows.Foundation.Numerics.Vector3 NaturalRestingPosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_NaturalRestingPosition(&_ret));
		return _ret;
	}
	final float NaturalRestingScale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_NaturalRestingScale(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.Interactions.IInteractionTrackerOwner Owner()
	{
		Windows.UI.Composition.Interactions.IInteractionTrackerOwner _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_Owner(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) PositionInertiaDecayRate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_PositionInertiaDecayRate(&_ret));
		return _ret;
	}
	final void PositionInertiaDecayRate(Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).set_PositionInertiaDecayRate(value));
	}
	final Windows.Foundation.Numerics.Vector3 PositionVelocityInPixelsPerSecond()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_PositionVelocityInPixelsPerSecond(&_ret));
		return _ret;
	}
	final float Scale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_Scale(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(float) ScaleInertiaDecayRate()
	{
		Windows.Foundation.IReference!(float) _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_ScaleInertiaDecayRate(&_ret));
		return _ret;
	}
	final void ScaleInertiaDecayRate(Windows.Foundation.IReference!(float) value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).set_ScaleInertiaDecayRate(value));
	}
	final float ScaleVelocityInPercentPerSecond()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).get_ScaleVelocityInPercentPerSecond(&_ret));
		return _ret;
	}
	final void AdjustPositionXIfGreaterThanThreshold(float adjustment, float positionThreshold)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_AdjustPositionXIfGreaterThanThreshold(adjustment, positionThreshold));
	}
	final void AdjustPositionYIfGreaterThanThreshold(float adjustment, float positionThreshold)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_AdjustPositionYIfGreaterThanThreshold(adjustment, positionThreshold));
	}
	final void ConfigurePositionXInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_ConfigurePositionXInertiaModifiers(modifiers));
	}
	final void ConfigurePositionYInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_ConfigurePositionYInertiaModifiers(modifiers));
	}
	final void ConfigureScaleInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier) modifiers)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_ConfigureScaleInertiaModifiers(modifiers));
	}
	final INT32 TryUpdatePosition(Windows.Foundation.Numerics.Vector3 value)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_TryUpdatePosition(value, &_ret));
		return _ret;
	}
	final INT32 TryUpdatePositionBy(Windows.Foundation.Numerics.Vector3 amount)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_TryUpdatePositionBy(amount, &_ret));
		return _ret;
	}
	final INT32 TryUpdatePositionWithAnimation(Windows.UI.Composition.CompositionAnimation animation)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_TryUpdatePositionWithAnimation(animation, &_ret));
		return _ret;
	}
	final INT32 TryUpdatePositionWithAdditionalVelocity(Windows.Foundation.Numerics.Vector3 velocityInPixelsPerSecond)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_TryUpdatePositionWithAdditionalVelocity(velocityInPixelsPerSecond, &_ret));
		return _ret;
	}
	final INT32 TryUpdateScale(float value, Windows.Foundation.Numerics.Vector3 centerPoint)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_TryUpdateScale(value, centerPoint, &_ret));
		return _ret;
	}
	final INT32 TryUpdateScaleWithAnimation(Windows.UI.Composition.CompositionAnimation animation, Windows.Foundation.Numerics.Vector3 centerPoint)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_TryUpdateScaleWithAnimation(animation, centerPoint, &_ret));
		return _ret;
	}
	final INT32 TryUpdateScaleWithAdditionalVelocity(float velocityInPercentPerSecond, Windows.Foundation.Numerics.Vector3 centerPoint)
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker)this.asInterface(uuid("2a8e8cb1-1000-4416-8363-cc27fb877308"))).abi_TryUpdateScaleWithAdditionalVelocity(velocityInPercentPerSecond, centerPoint, &_ret));
		return _ret;
	}
	final void ConfigureCenterPointXInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker2)this.asInterface(uuid("25769a3e-ce6d-448c-8386-92620d240756"))).abi_ConfigureCenterPointXInertiaModifiers(conditionalValues));
	}
	final void ConfigureCenterPointYInertiaModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTracker2)this.asInterface(uuid("25769a3e-ce6d-448c-8386-92620d240756"))).abi_ConfigureCenterPointYInertiaModifiers(conditionalValues));
	}

	private static Windows.UI.Composition.Interactions.IInteractionTrackerStatics _staticInstance;
	public static Windows.UI.Composition.Interactions.IInteractionTrackerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Composition.Interactions.IInteractionTrackerStatics);
		return _staticInstance;
	}
	static Windows.UI.Composition.Interactions.InteractionTracker Create(Windows.UI.Composition.Compositor compositor)
	{
		Windows.UI.Composition.Interactions.InteractionTracker _ret;
		Debug.OK(staticInstance.abi_Create(compositor, &_ret));
		return _ret;
	}
	static Windows.UI.Composition.Interactions.InteractionTracker CreateWithOwner(Windows.UI.Composition.Compositor compositor, Windows.UI.Composition.Interactions.IInteractionTrackerOwner owner)
	{
		Windows.UI.Composition.Interactions.InteractionTracker _ret;
		Debug.OK(staticInstance.abi_CreateWithOwner(compositor, owner, &_ret));
		return _ret;
	}
}

interface InteractionTrackerCustomAnimationStateEnteredArgs : Windows.UI.Composition.Interactions.IInteractionTrackerCustomAnimationStateEnteredArgs
{
extern(Windows):
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerCustomAnimationStateEnteredArgs)this.asInterface(uuid("8d1c8cf1-d7b0-434c-a5d2-2d7611864834"))).get_RequestId(&_ret));
		return _ret;
	}
}

interface InteractionTrackerIdleStateEnteredArgs : Windows.UI.Composition.Interactions.IInteractionTrackerIdleStateEnteredArgs
{
extern(Windows):
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerIdleStateEnteredArgs)this.asInterface(uuid("50012faa-1510-4142-a1a5-019b09f8857b"))).get_RequestId(&_ret));
		return _ret;
	}
}

interface InteractionTrackerInertiaModifier : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.Interactions.IInteractionTrackerInertiaModifier
{
}
@makable!(InteractionTrackerInertiaModifier, InteractionTrackerInertiaModifier, Windows.UI.Composition.Interactions.IInteractionTrackerInertiaModifierFactory)
class InteractionTrackerInertiaModifierT(Base) : AgileObject!Base, InteractionTrackerInertiaModifier
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface InteractionTrackerInertiaMotion : Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier, Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion
{
extern(Windows):
	final Windows.UI.Composition.ExpressionAnimation Condition()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion)this.asInterface(uuid("04922fdc-f154-4cb8-bf33-cc1ba611e6db"))).get_Condition(&_ret));
		return _ret;
	}
	final void Condition(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion)this.asInterface(uuid("04922fdc-f154-4cb8-bf33-cc1ba611e6db"))).set_Condition(value));
	}
	final Windows.UI.Composition.ExpressionAnimation Motion()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion)this.asInterface(uuid("04922fdc-f154-4cb8-bf33-cc1ba611e6db"))).get_Motion(&_ret));
		return _ret;
	}
	final void Motion(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotion)this.asInterface(uuid("04922fdc-f154-4cb8-bf33-cc1ba611e6db"))).set_Motion(value));
	}

	private static Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotionStatics _staticInstance;
	public static Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaMotionStatics);
		return _staticInstance;
	}
	static Windows.UI.Composition.Interactions.InteractionTrackerInertiaMotion Create(Windows.UI.Composition.Compositor compositor)
	{
		Windows.UI.Composition.Interactions.InteractionTrackerInertiaMotion _ret;
		Debug.OK(staticInstance.abi_Create(compositor, &_ret));
		return _ret;
	}
}

interface InteractionTrackerInertiaRestingValue : Windows.UI.Composition.Interactions.InteractionTrackerInertiaModifier, Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue
{
extern(Windows):
	final Windows.UI.Composition.ExpressionAnimation Condition()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue)this.asInterface(uuid("86f7ec09-5096-4170-9cc8-df2fe101bb93"))).get_Condition(&_ret));
		return _ret;
	}
	final void Condition(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue)this.asInterface(uuid("86f7ec09-5096-4170-9cc8-df2fe101bb93"))).set_Condition(value));
	}
	final Windows.UI.Composition.ExpressionAnimation RestingValue()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue)this.asInterface(uuid("86f7ec09-5096-4170-9cc8-df2fe101bb93"))).get_RestingValue(&_ret));
		return _ret;
	}
	final void RestingValue(Windows.UI.Composition.ExpressionAnimation value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValue)this.asInterface(uuid("86f7ec09-5096-4170-9cc8-df2fe101bb93"))).set_RestingValue(value));
	}

	private static Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValueStatics _staticInstance;
	public static Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaRestingValueStatics);
		return _staticInstance;
	}
	static Windows.UI.Composition.Interactions.InteractionTrackerInertiaRestingValue Create(Windows.UI.Composition.Compositor compositor)
	{
		Windows.UI.Composition.Interactions.InteractionTrackerInertiaRestingValue _ret;
		Debug.OK(staticInstance.abi_Create(compositor, &_ret));
		return _ret;
	}
}

interface InteractionTrackerInertiaStateEnteredArgs : Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) ModifiedRestingPosition()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Numerics.Vector3) _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs)this.asInterface(uuid("87108cf2-e7ff-4f7d-9ffd-d72f1e409b63"))).get_ModifiedRestingPosition(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(float) ModifiedRestingScale()
	{
		Windows.Foundation.IReference!(float) _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs)this.asInterface(uuid("87108cf2-e7ff-4f7d-9ffd-d72f1e409b63"))).get_ModifiedRestingScale(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 NaturalRestingPosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs)this.asInterface(uuid("87108cf2-e7ff-4f7d-9ffd-d72f1e409b63"))).get_NaturalRestingPosition(&_ret));
		return _ret;
	}
	final float NaturalRestingScale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs)this.asInterface(uuid("87108cf2-e7ff-4f7d-9ffd-d72f1e409b63"))).get_NaturalRestingScale(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 PositionVelocityInPixelsPerSecond()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs)this.asInterface(uuid("87108cf2-e7ff-4f7d-9ffd-d72f1e409b63"))).get_PositionVelocityInPixelsPerSecond(&_ret));
		return _ret;
	}
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs)this.asInterface(uuid("87108cf2-e7ff-4f7d-9ffd-d72f1e409b63"))).get_RequestId(&_ret));
		return _ret;
	}
	final float ScaleVelocityInPercentPerSecond()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInertiaStateEnteredArgs)this.asInterface(uuid("87108cf2-e7ff-4f7d-9ffd-d72f1e409b63"))).get_ScaleVelocityInPercentPerSecond(&_ret));
		return _ret;
	}
}

interface InteractionTrackerInteractingStateEnteredArgs : Windows.UI.Composition.Interactions.IInteractionTrackerInteractingStateEnteredArgs
{
extern(Windows):
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerInteractingStateEnteredArgs)this.asInterface(uuid("a7263939-a17b-4011-99fd-b5c24f143748"))).get_RequestId(&_ret));
		return _ret;
	}
}

interface InteractionTrackerRequestIgnoredArgs : Windows.UI.Composition.Interactions.IInteractionTrackerRequestIgnoredArgs
{
extern(Windows):
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerRequestIgnoredArgs)this.asInterface(uuid("80dd82f1-ce25-488f-91dd-cb6455ccff2e"))).get_RequestId(&_ret));
		return _ret;
	}
}

interface InteractionTrackerValuesChangedArgs : Windows.UI.Composition.Interactions.IInteractionTrackerValuesChangedArgs
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerValuesChangedArgs)this.asInterface(uuid("cf1578ef-d3df-4501-b9e6-f02fb22f73d0"))).get_Position(&_ret));
		return _ret;
	}
	final INT32 RequestId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerValuesChangedArgs)this.asInterface(uuid("cf1578ef-d3df-4501-b9e6-f02fb22f73d0"))).get_RequestId(&_ret));
		return _ret;
	}
	final float Scale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IInteractionTrackerValuesChangedArgs)this.asInterface(uuid("cf1578ef-d3df-4501-b9e6-f02fb22f73d0"))).get_Scale(&_ret));
		return _ret;
	}
}

interface VisualInteractionSource : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.Interactions.IVisualInteractionSource, Windows.UI.Composition.Interactions.ICompositionInteractionSource, Windows.UI.Composition.Interactions.IVisualInteractionSource2
{
extern(Windows):
	final bool IsPositionXRailsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_IsPositionXRailsEnabled(&_ret));
		return _ret;
	}
	final void IsPositionXRailsEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_IsPositionXRailsEnabled(value));
	}
	final bool IsPositionYRailsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_IsPositionYRailsEnabled(&_ret));
		return _ret;
	}
	final void IsPositionYRailsEnabled(bool value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_IsPositionYRailsEnabled(value));
	}
	final Windows.UI.Composition.Interactions.VisualInteractionSourceRedirectionMode ManipulationRedirectionMode()
	{
		Windows.UI.Composition.Interactions.VisualInteractionSourceRedirectionMode _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_ManipulationRedirectionMode(&_ret));
		return _ret;
	}
	final void ManipulationRedirectionMode(Windows.UI.Composition.Interactions.VisualInteractionSourceRedirectionMode value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_ManipulationRedirectionMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionChainingMode PositionXChainingMode()
	{
		Windows.UI.Composition.Interactions.InteractionChainingMode _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_PositionXChainingMode(&_ret));
		return _ret;
	}
	final void PositionXChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_PositionXChainingMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionSourceMode PositionXSourceMode()
	{
		Windows.UI.Composition.Interactions.InteractionSourceMode _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_PositionXSourceMode(&_ret));
		return _ret;
	}
	final void PositionXSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_PositionXSourceMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionChainingMode PositionYChainingMode()
	{
		Windows.UI.Composition.Interactions.InteractionChainingMode _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_PositionYChainingMode(&_ret));
		return _ret;
	}
	final void PositionYChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_PositionYChainingMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionSourceMode PositionYSourceMode()
	{
		Windows.UI.Composition.Interactions.InteractionSourceMode _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_PositionYSourceMode(&_ret));
		return _ret;
	}
	final void PositionYSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_PositionYSourceMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionChainingMode ScaleChainingMode()
	{
		Windows.UI.Composition.Interactions.InteractionChainingMode _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_ScaleChainingMode(&_ret));
		return _ret;
	}
	final void ScaleChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_ScaleChainingMode(value));
	}
	final Windows.UI.Composition.Interactions.InteractionSourceMode ScaleSourceMode()
	{
		Windows.UI.Composition.Interactions.InteractionSourceMode _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_ScaleSourceMode(&_ret));
		return _ret;
	}
	final void ScaleSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_ScaleSourceMode(value));
	}
	final Windows.UI.Composition.Visual Source()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_Source(&_ret));
		return _ret;
	}
	final void TryRedirectForManipulation(Windows.UI.Input.PointerPoint pointerPoint)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)this.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).abi_TryRedirectForManipulation(pointerPoint));
	}
	final Windows.Foundation.Numerics.Vector3 DeltaPosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_DeltaPosition(&_ret));
		return _ret;
	}
	final float DeltaScale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_DeltaScale(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 PositionVelocity()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_PositionVelocity(&_ret));
		return _ret;
	}
	final float Scale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_Scale(&_ret));
		return _ret;
	}
	final float ScaleVelocity()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_ScaleVelocity(&_ret));
		return _ret;
	}
	final void ConfigureCenterPointXModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).abi_ConfigureCenterPointXModifiers(conditionalValues));
	}
	final void ConfigureCenterPointYModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).abi_ConfigureCenterPointYModifiers(conditionalValues));
	}
	final void ConfigureDeltaPositionXModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).abi_ConfigureDeltaPositionXModifiers(conditionalValues));
	}
	final void ConfigureDeltaPositionYModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).abi_ConfigureDeltaPositionYModifiers(conditionalValues));
	}
	final void ConfigureDeltaScaleModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues)
	{
		Debug.OK((cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)this.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).abi_ConfigureDeltaScaleModifiers(conditionalValues));
	}

	private static Windows.UI.Composition.Interactions.IVisualInteractionSourceStatics _staticInstance;
	public static Windows.UI.Composition.Interactions.IVisualInteractionSourceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Composition.Interactions.IVisualInteractionSourceStatics);
		return _staticInstance;
	}
	static Windows.UI.Composition.Interactions.VisualInteractionSource Create(Windows.UI.Composition.Visual source)
	{
		Windows.UI.Composition.Interactions.VisualInteractionSource _ret;
		Debug.OK(staticInstance.abi_Create(source, &_ret));
		return _ret;
	}
}
@makable!(VisualInteractionSource, VisualInteractionSource, Windows.UI.Composition.Interactions.IVisualInteractionSourceObjectFactory)
class VisualInteractionSourceT(Base) : AgileObject!Base, VisualInteractionSource
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_IsPositionXRailsEnabled(bool* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_IsPositionXRailsEnabled(return_value); }
	override HRESULT set_IsPositionXRailsEnabled(bool value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_IsPositionXRailsEnabled(value); }
	override HRESULT get_IsPositionYRailsEnabled(bool* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_IsPositionYRailsEnabled(return_value); }
	override HRESULT set_IsPositionYRailsEnabled(bool value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_IsPositionYRailsEnabled(value); }
	override HRESULT get_ManipulationRedirectionMode(Windows.UI.Composition.Interactions.VisualInteractionSourceRedirectionMode* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_ManipulationRedirectionMode(return_value); }
	override HRESULT set_ManipulationRedirectionMode(Windows.UI.Composition.Interactions.VisualInteractionSourceRedirectionMode value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_ManipulationRedirectionMode(value); }
	override HRESULT get_PositionXChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_PositionXChainingMode(return_value); }
	override HRESULT set_PositionXChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_PositionXChainingMode(value); }
	override HRESULT get_PositionXSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_PositionXSourceMode(return_value); }
	override HRESULT set_PositionXSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_PositionXSourceMode(value); }
	override HRESULT get_PositionYChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_PositionYChainingMode(return_value); }
	override HRESULT set_PositionYChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_PositionYChainingMode(value); }
	override HRESULT get_PositionYSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_PositionYSourceMode(return_value); }
	override HRESULT set_PositionYSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_PositionYSourceMode(value); }
	override HRESULT get_ScaleChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_ScaleChainingMode(return_value); }
	override HRESULT set_ScaleChainingMode(Windows.UI.Composition.Interactions.InteractionChainingMode value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_ScaleChainingMode(value); }
	override HRESULT get_ScaleSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_ScaleSourceMode(return_value); }
	override HRESULT set_ScaleSourceMode(Windows.UI.Composition.Interactions.InteractionSourceMode value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).set_ScaleSourceMode(value); }
	override HRESULT get_Source(Windows.UI.Composition.Visual* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).get_Source(return_value); }
	override HRESULT abi_TryRedirectForManipulation(Windows.UI.Input.PointerPoint pointerPoint) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource)m_inner.asInterface(uuid("ca0e8a86-d8d6-4111-b088-70347bd2b0ed"))).abi_TryRedirectForManipulation(pointerPoint); }

	override HRESULT get_DeltaPosition(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_DeltaPosition(return_value); }
	override HRESULT get_DeltaScale(float* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_DeltaScale(return_value); }
	override HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_Position(return_value); }
	override HRESULT get_PositionVelocity(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_PositionVelocity(return_value); }
	override HRESULT get_Scale(float* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_Scale(return_value); }
	override HRESULT get_ScaleVelocity(float* return_value) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).get_ScaleVelocity(return_value); }
	override HRESULT abi_ConfigureCenterPointXModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).abi_ConfigureCenterPointXModifiers(conditionalValues); }
	override HRESULT abi_ConfigureCenterPointYModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).abi_ConfigureCenterPointYModifiers(conditionalValues); }
	override HRESULT abi_ConfigureDeltaPositionXModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).abi_ConfigureDeltaPositionXModifiers(conditionalValues); }
	override HRESULT abi_ConfigureDeltaPositionYModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).abi_ConfigureDeltaPositionYModifiers(conditionalValues); }
	override HRESULT abi_ConfigureDeltaScaleModifiers(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Interactions.CompositionConditionalValue) conditionalValues) { return (cast(Windows.UI.Composition.Interactions.IVisualInteractionSource2)m_inner.asInterface(uuid("aa914893-a73c-414d-80d0-249bad2fbd93"))).abi_ConfigureDeltaScaleModifiers(conditionalValues); }

	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
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