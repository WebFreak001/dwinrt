module Windows.Media.Capture.Core;

import dwinrt;

@uuid("d1eb4c5c-1b53-4e4a-8b5c-db7887ac949b")
@WinrtFactory("Windows.Media.Capture.Core.VariablePhotoCapturedEventArgs")
interface IVariablePhotoCapturedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_CaptureTimeOffset(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_UsedFrameControllerIndex(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_CapturedFrameControlValues(Windows.Media.Capture.CapturedFrameControlValues* return_value);
}

@uuid("d0112d1d-031e-4041-a6d6-bd742476a8ee")
@WinrtFactory("Windows.Media.Capture.Core.VariablePhotoSequenceCapture")
interface IVariablePhotoSequenceCapture : IInspectable
{
extern(Windows):
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_FinishAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT add_PhotoCaptured(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.Core.VariablePhotoSequenceCapture, Windows.Media.Capture.Core.VariablePhotoCapturedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PhotoCaptured(EventRegistrationToken token);
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.Core.VariablePhotoSequenceCapture, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Stopped(EventRegistrationToken token);
}

@uuid("fe2c62bc-50b0-43e3-917c-e3b92798942f")
@WinrtFactory("Windows.Media.Capture.Core.VariablePhotoSequenceCapture")
interface IVariablePhotoSequenceCapture2 : IInspectable
{
extern(Windows):
	HRESULT abi_UpdateSettingsAsync(Windows.Foundation.IAsyncAction* return_operation);
}

interface VariablePhotoCapturedEventArgs : Windows.Media.Capture.Core.IVariablePhotoCapturedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.CapturedFrame Frame()
	{
		Windows.Media.Capture.CapturedFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Core.IVariablePhotoCapturedEventArgs).get_Frame(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan CaptureTimeOffset()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Core.IVariablePhotoCapturedEventArgs).get_CaptureTimeOffset(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) UsedFrameControllerIndex()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Core.IVariablePhotoCapturedEventArgs).get_UsedFrameControllerIndex(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.CapturedFrameControlValues CapturedFrameControlValues()
	{
		Windows.Media.Capture.CapturedFrameControlValues _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Core.IVariablePhotoCapturedEventArgs).get_CapturedFrameControlValues(&_ret));
		return _ret;
	}
}

interface VariablePhotoSequenceCapture : Windows.Media.Capture.Core.IVariablePhotoSequenceCapture, Windows.Media.Capture.Core.IVariablePhotoSequenceCapture2
{
extern(Windows):
	final Windows.Foundation.IAsyncAction StartAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Core.IVariablePhotoSequenceCapture).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Core.IVariablePhotoSequenceCapture).abi_StopAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction FinishAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Core.IVariablePhotoSequenceCapture).abi_FinishAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnPhotoCaptured(void delegate(Windows.Media.Capture.Core.VariablePhotoSequenceCapture, Windows.Media.Capture.Core.VariablePhotoCapturedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PhotoCaptured(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.Core.VariablePhotoSequenceCapture, Windows.Media.Capture.Core.VariablePhotoCapturedEventArgs), Windows.Media.Capture.Core.VariablePhotoSequenceCapture, Windows.Media.Capture.Core.VariablePhotoCapturedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePhotoCaptured(EventRegistrationToken token)
	{
		Debug.OK(remove_PhotoCaptured(token));
	}
	final EventRegistrationToken OnStopped(void delegate(Windows.Media.Capture.Core.VariablePhotoSequenceCapture, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Stopped(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.Core.VariablePhotoSequenceCapture, IInspectable), Windows.Media.Capture.Core.VariablePhotoSequenceCapture, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStopped(EventRegistrationToken token)
	{
		Debug.OK(remove_Stopped(token));
	}
	final Windows.Foundation.IAsyncAction UpdateSettingsAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.Core.IVariablePhotoSequenceCapture2).abi_UpdateSettingsAsync(&_ret));
		return _ret;
	}
}