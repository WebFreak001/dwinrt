module Windows.UI.Input.Inking.Core;

import dwinrt;

@uuid("39b38da9-7639-4499-a5b5-191d00e35b16")
@WinrtFactory("Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource")
interface ICoreInkIndependentInputSource : IInspectable
{
extern(Windows):
	HRESULT add_PointerEntering(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerEntering(EventRegistrationToken cookie);
	HRESULT add_PointerHovering(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerHovering(EventRegistrationToken cookie);
	HRESULT add_PointerExiting(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerExiting(EventRegistrationToken cookie);
	HRESULT add_PointerPressing(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerPressing(EventRegistrationToken cookie);
	HRESULT add_PointerMoving(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerMoving(EventRegistrationToken cookie);
	HRESULT add_PointerReleasing(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerReleasing(EventRegistrationToken cookie);
	HRESULT add_PointerLost(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerLost(EventRegistrationToken cookie);
	HRESULT get_InkPresenter(Windows.UI.Input.Inking.InkPresenter* return_value);
}

@uuid("73e6011b-80c0-4dfb-9b66-10ba7f3f9c84")
@WinrtFactory("Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource")
interface ICoreInkIndependentInputSourceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Input.Inking.InkPresenter inkPresenter, Windows.UI.Input.Inking.Core.CoreInkIndependentInputSource* return_inkIndependentInputSource);
}

@uuid("fb07d14c-3380-457a-a987-991357896c1b")
@WinrtFactory("Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateEventArgs")
interface ICoreWetStrokeUpdateEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_NewInkPoints(Windows.Foundation.Collections.IVector!(Windows.UI.Input.Inking.InkPoint)* return_value);
	HRESULT get_PointerId(UINT32* return_value);
	HRESULT get_Disposition(Windows.UI.Input.Inking.Core.CoreWetStrokeDisposition* return_value);
	HRESULT set_Disposition(Windows.UI.Input.Inking.Core.CoreWetStrokeDisposition value);
}

@uuid("1f718e22-ee52-4e00-8209-4c3e5b21a3cc")
@WinrtFactory("Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateSource")
interface ICoreWetStrokeUpdateSource : IInspectable
{
extern(Windows):
	HRESULT add_WetStrokeStarting(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateSource, Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_WetStrokeStarting(EventRegistrationToken cookie);
	HRESULT add_WetStrokeContinuing(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateSource, Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_WetStrokeContinuing(EventRegistrationToken cookie);
	HRESULT add_WetStrokeStopping(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateSource, Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_WetStrokeStopping(EventRegistrationToken cookie);
	HRESULT add_WetStrokeCompleted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateSource, Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_WetStrokeCompleted(EventRegistrationToken cookie);
	HRESULT add_WetStrokeCanceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateSource, Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_WetStrokeCanceled(EventRegistrationToken cookie);
	HRESULT get_InkPresenter(Windows.UI.Input.Inking.InkPresenter* return_value);
}

@uuid("3dad9cba-1d3d-46ae-ab9d-8647486c6f90")
@WinrtFactory("Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateSource")
interface ICoreWetStrokeUpdateSourceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Input.Inking.InkPresenter inkPresenter, Windows.UI.Input.Inking.Core.CoreWetStrokeUpdateSource* return_WetStrokeUpdateSource);
}

interface CoreInkIndependentInputSource : Windows.UI.Input.Inking.Core.ICoreInkIndependentInputSource
{
extern(Windows):
	final void removePointerEntering(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerEntering(cookie));
	}
	final void removePointerHovering(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerHovering(cookie));
	}
	final void removePointerExiting(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerExiting(cookie));
	}
	final void removePointerPressing(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerPressing(cookie));
	}
	final void removePointerMoving(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerMoving(cookie));
	}
	final void removePointerReleasing(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerReleasing(cookie));
	}
	final void removePointerLost(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerLost(cookie));
	}
	final Windows.UI.Input.Inking.InkPresenter InkPresenter()
	{
		Windows.UI.Input.Inking.InkPresenter _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.Core.ICoreInkIndependentInputSource).get_InkPresenter(&_ret));
		return _ret;
	}
}

interface CoreWetStrokeUpdateEventArgs : Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.UI.Input.Inking.InkPoint) NewInkPoints()
	{
		Windows.Foundation.Collections.IVector!(Windows.UI.Input.Inking.InkPoint) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateEventArgs).get_NewInkPoints(&_ret));
		return _ret;
	}
	final UINT32 PointerId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateEventArgs).get_PointerId(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Core.CoreWetStrokeDisposition Disposition()
	{
		Windows.UI.Input.Inking.Core.CoreWetStrokeDisposition _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateEventArgs).get_Disposition(&_ret));
		return _ret;
	}
	final void Disposition(Windows.UI.Input.Inking.Core.CoreWetStrokeDisposition value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateEventArgs).set_Disposition(value));
	}
}

interface CoreWetStrokeUpdateSource : Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateSource
{
extern(Windows):
	final void removeWetStrokeStarting(EventRegistrationToken cookie)
	{
		Debug.OK(remove_WetStrokeStarting(cookie));
	}
	final void removeWetStrokeContinuing(EventRegistrationToken cookie)
	{
		Debug.OK(remove_WetStrokeContinuing(cookie));
	}
	final void removeWetStrokeStopping(EventRegistrationToken cookie)
	{
		Debug.OK(remove_WetStrokeStopping(cookie));
	}
	final void removeWetStrokeCompleted(EventRegistrationToken cookie)
	{
		Debug.OK(remove_WetStrokeCompleted(cookie));
	}
	final void removeWetStrokeCanceled(EventRegistrationToken cookie)
	{
		Debug.OK(remove_WetStrokeCanceled(cookie));
	}
	final Windows.UI.Input.Inking.InkPresenter InkPresenter()
	{
		Windows.UI.Input.Inking.InkPresenter _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.Core.ICoreWetStrokeUpdateSource).get_InkPresenter(&_ret));
		return _ret;
	}
}

enum CoreWetStrokeDisposition
{
	Inking = 0,
	Completed = 1,
	Canceled = 2
}