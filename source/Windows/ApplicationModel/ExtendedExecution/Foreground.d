module Windows.ApplicationModel.ExtendedExecution.Foreground;

import dwinrt;

@uuid("b07cd940-9557-aea4-2c99-bdd56d9be461")
@WinrtFactory("Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedEventArgs")
interface IExtendedExecutionForegroundRevokedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedReason* return_value);
}

@uuid("fbf440e1-9d10-4201-b01e-c83275296f2e")
@WinrtFactory("Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundSession")
interface IExtendedExecutionForegroundSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
	HRESULT add_Revoked(Windows.Foundation.TypedEventHandler!(IInspectable*,Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_Revoked(EventRegistrationToken token);
	HRESULT abi_RequestExtensionAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult)* return_operation);
	HRESULT get_Reason(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason* return_value);
	HRESULT set_Reason(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason value);
}

interface ExtendedExecutionForegroundRevokedEventArgs
{
}

interface ExtendedExecutionForegroundSession
{
}

enum ExtendedExecutionForegroundReason
{
	Unspecified = 0,
	SavingData = 1,
	BackgroundAudio = 2,
	Unconstrained = 3
}

enum ExtendedExecutionForegroundResult
{
	Allowed = 0,
	Denied = 1
}

enum ExtendedExecutionForegroundRevokedReason
{
	Resumed = 0,
	SystemPolicy = 1
}