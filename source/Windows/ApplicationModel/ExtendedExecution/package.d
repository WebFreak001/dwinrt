module Windows.ApplicationModel.ExtendedExecution;

import dwinrt;

@uuid("bfbc9f16-63b5-4c0b-aad6-828af5373ec3")
@WinrtFactory("Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedEventArgs")
interface IExtendedExecutionRevokedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedReason* return_value);
}

@uuid("af908a2d-118b-48f1-9308-0c4fc41e200f")
@WinrtFactory("Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionSession")
interface IExtendedExecutionSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionReason* return_value);
	HRESULT set_Reason(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionReason value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
	HRESULT get_PercentProgress(UINT32* return_value);
	HRESULT set_PercentProgress(UINT32 value);
	HRESULT add_Revoked(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_Revoked(EventRegistrationToken token);
	HRESULT abi_RequestExtensionAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionResult)* return_operation);
}

interface ExtendedExecutionRevokedEventArgs
{
}

interface ExtendedExecutionSession
{
}

enum ExtendedExecutionReason
{
	Unspecified = 0,
	LocationTracking = 1,
	SavingData = 2
}

enum ExtendedExecutionResult
{
	Allowed = 0,
	Denied = 1
}

enum ExtendedExecutionRevokedReason
{
	Resumed = 0,
	SystemPolicy = 1
}