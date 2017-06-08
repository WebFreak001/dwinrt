module Windows.Media.Capture.Core;

import dwinrt;

@uuid("d1eb4c5c-1b53-4e4a-8b5c-db7887ac949b")
@WinrtFactory("Windows.Media.Capture.Core.VariablePhotoCapturedEventArgs")
interface IVariablePhotoCapturedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_UpdateSettingsAsync(Windows.Foundation.IAsyncAction* return_operation);
}

interface VariablePhotoCapturedEventArgs : Windows.Media.Capture.Core.IVariablePhotoCapturedEventArgs
{
}

interface VariablePhotoSequenceCapture : Windows.Media.Capture.Core.IVariablePhotoSequenceCapture, Windows.Media.Capture.Core.IVariablePhotoSequenceCapture2
{
}