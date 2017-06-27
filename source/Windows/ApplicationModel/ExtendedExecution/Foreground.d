module Windows.ApplicationModel.ExtendedExecution.Foreground;

import dwinrt;

@uuid("b07cd940-9557-aea4-2c99-bdd56d9be461")
@WinrtFactory("Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedEventArgs")
interface IExtendedExecutionForegroundRevokedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedReason* return_value);
}

@uuid("fbf440e1-9d10-4201-b01e-c83275296f2e")
@WinrtFactory("Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundSession")
interface IExtendedExecutionForegroundSession_Base : IInspectable
{
extern(Windows):
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
	HRESULT add_Revoked(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Revoked(EventRegistrationToken token);
	HRESULT abi_RequestExtensionAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult)* return_operation);
	HRESULT get_Reason(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason* return_value);
	HRESULT set_Reason(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason value);
}
@uuid("fbf440e1-9d10-4201-b01e-c83275296f2e")
@WinrtFactory("Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundSession")
interface IExtendedExecutionForegroundSession : IExtendedExecutionForegroundSession_Base, Windows.Foundation.IClosable {}

interface ExtendedExecutionForegroundRevokedEventArgs : Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundRevokedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedReason Reason()
	{
		Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedReason _ret;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundRevokedEventArgs)this.asInterface(uuid("b07cd940-9557-aea4-2c99-bdd56d9be461"))).get_Reason(&_ret));
		return _ret;
	}
}

interface ExtendedExecutionForegroundSession : Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession)this.asInterface(uuid("fbf440e1-9d10-4201-b01e-c83275296f2e"))).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession)this.asInterface(uuid("fbf440e1-9d10-4201-b01e-c83275296f2e"))).set_Description(value));
	}
	final EventRegistrationToken OnRevoked(void delegate(IInspectable, Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession)this.asInterface(uuid("fbf440e1-9d10-4201-b01e-c83275296f2e"))).add_Revoked(event!(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedEventArgs), IInspectable, Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundRevokedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRevoked(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession)this.asInterface(uuid("fbf440e1-9d10-4201-b01e-c83275296f2e"))).remove_Revoked(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult) RequestExtensionAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession)this.asInterface(uuid("fbf440e1-9d10-4201-b01e-c83275296f2e"))).abi_RequestExtensionAsync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason Reason()
	{
		Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason _ret;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession)this.asInterface(uuid("fbf440e1-9d10-4201-b01e-c83275296f2e"))).get_Reason(&_ret));
		return _ret;
	}
	final void Reason(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundReason value)
	{
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.Foreground.IExtendedExecutionForegroundSession)this.asInterface(uuid("fbf440e1-9d10-4201-b01e-c83275296f2e"))).set_Reason(value));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static ExtendedExecutionForegroundSession New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ExtendedExecutionForegroundSession).abi_ActivateInstance(&ret));
		return cast(ExtendedExecutionForegroundSession) ret;
	}
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