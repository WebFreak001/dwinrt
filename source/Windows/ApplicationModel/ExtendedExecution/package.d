module Windows.ApplicationModel.ExtendedExecution;

import dwinrt;

@uuid("bfbc9f16-63b5-4c0b-aad6-828af5373ec3")
@WinrtFactory("Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedEventArgs")
interface IExtendedExecutionRevokedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedReason* return_value);
}

@uuid("af908a2d-118b-48f1-9308-0c4fc41e200f")
@WinrtFactory("Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionSession")
interface IExtendedExecutionSession_Base : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionReason* return_value);
	HRESULT set_Reason(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionReason value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
	HRESULT get_PercentProgress(UINT32* return_value);
	HRESULT set_PercentProgress(UINT32 value);
	HRESULT add_Revoked(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Revoked(EventRegistrationToken token);
	HRESULT abi_RequestExtensionAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionResult)* return_operation);
}
@uuid("af908a2d-118b-48f1-9308-0c4fc41e200f")
@WinrtFactory("Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionSession")
interface IExtendedExecutionSession : IExtendedExecutionSession_Base, Windows.Foundation.IClosable {}

interface ExtendedExecutionRevokedEventArgs : Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionRevokedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedReason Reason()
	{
		Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedReason _ret;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionRevokedEventArgs)this.asInterface(uuid("bfbc9f16-63b5-4c0b-aad6-828af5373ec3"))).get_Reason(&_ret));
		return _ret;
	}
}

interface ExtendedExecutionSession : Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionReason Reason()
	{
		Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionReason _ret;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession)this.asInterface(uuid("af908a2d-118b-48f1-9308-0c4fc41e200f"))).get_Reason(&_ret));
		return _ret;
	}
	final void Reason(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionReason value)
	{
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession)this.asInterface(uuid("af908a2d-118b-48f1-9308-0c4fc41e200f"))).set_Reason(value));
	}
	final wstring Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession)this.asInterface(uuid("af908a2d-118b-48f1-9308-0c4fc41e200f"))).get_Description(&_ret));
		return hstring(_ret).d_str;
	}
	final void Description(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession)this.asInterface(uuid("af908a2d-118b-48f1-9308-0c4fc41e200f"))).set_Description(hstring(value).handle));
	}
	final UINT32 PercentProgress()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession)this.asInterface(uuid("af908a2d-118b-48f1-9308-0c4fc41e200f"))).get_PercentProgress(&_ret));
		return _ret;
	}
	final void PercentProgress(UINT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession)this.asInterface(uuid("af908a2d-118b-48f1-9308-0c4fc41e200f"))).set_PercentProgress(value));
	}
	final EventRegistrationToken OnRevoked(void delegate(IInspectable, Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession)this.asInterface(uuid("af908a2d-118b-48f1-9308-0c4fc41e200f"))).add_Revoked(event!(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedEventArgs), IInspectable, Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionRevokedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRevoked(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession)this.asInterface(uuid("af908a2d-118b-48f1-9308-0c4fc41e200f"))).remove_Revoked(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionResult) RequestExtensionAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.ExtendedExecution.IExtendedExecutionSession)this.asInterface(uuid("af908a2d-118b-48f1-9308-0c4fc41e200f"))).abi_RequestExtensionAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static ExtendedExecutionSession New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ExtendedExecutionSession).abi_ActivateInstance(&ret));
		return cast(ExtendedExecutionSession) ret;
	}
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