module Windows.ApplicationModel.Payments.Provider;

import dwinrt;

@uuid("0e47aa53-8521-4969-a957-df2538a3a98f")
@WinrtFactory("Windows.ApplicationModel.Payments.Provider.PaymentAppManager")
interface IPaymentAppManager : IInspectable
{
extern(Windows):
	HRESULT abi_RegisterAsync(Windows.Foundation.Collections.IIterable!(HSTRING) supportedPaymentMethodIds, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_UnregisterAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("a341ac28-fc89-4406-b4d9-34e7fe79dfb6")
@WinrtFactory("Windows.ApplicationModel.Payments.Provider.PaymentAppManager")
interface IPaymentAppManagerStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.ApplicationModel.Payments.Provider.PaymentAppManager* return_value);
}

@uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3")
@WinrtFactory("Windows.ApplicationModel.Payments.Provider.PaymentTransaction")
interface IPaymentTransaction : IInspectable
{
extern(Windows):
	HRESULT get_PaymentRequest(Windows.ApplicationModel.Payments.PaymentRequest* return_value);
	HRESULT get_PayerEmail(HSTRING* return_value);
	HRESULT set_PayerEmail(HSTRING value);
	HRESULT get_PayerName(HSTRING* return_value);
	HRESULT set_PayerName(HSTRING value);
	HRESULT get_PayerPhoneNumber(HSTRING* return_value);
	HRESULT set_PayerPhoneNumber(HSTRING value);
	HRESULT abi_UpdateShippingAddressAsync(Windows.ApplicationModel.Payments.PaymentAddress shippingAddress, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestChangedResult)* return_result);
	HRESULT abi_UpdateSelectedShippingOptionAsync(Windows.ApplicationModel.Payments.PaymentShippingOption selectedShippingOption, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestChangedResult)* return_result);
	HRESULT abi_AcceptAsync(Windows.ApplicationModel.Payments.PaymentToken paymentToken, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.Provider.PaymentTransactionAcceptResult)* return_result);
	HRESULT abi_Reject();
}

@uuid("060e3276-d30c-4817-95a2-df7ae9273b56")
@WinrtFactory("Windows.ApplicationModel.Payments.Provider.PaymentTransactionAcceptResult")
interface IPaymentTransactionAcceptResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.Payments.PaymentRequestCompletionStatus* return_value);
}

@uuid("8d639750-ee0a-4df5-9b1e-1c0f9ec59881")
@WinrtFactory("Windows.ApplicationModel.Payments.Provider.PaymentTransaction")
interface IPaymentTransactionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.Provider.PaymentTransaction)* return_result);
}

interface PaymentAppManager : Windows.ApplicationModel.Payments.Provider.IPaymentAppManager
{
extern(Windows):
	final Windows.Foundation.IAsyncAction RegisterAsync(Windows.Foundation.Collections.IIterable!(HSTRING) supportedPaymentMethodIds)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentAppManager)this.asInterface(uuid("0e47aa53-8521-4969-a957-df2538a3a98f"))).abi_RegisterAsync(supportedPaymentMethodIds, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UnregisterAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentAppManager)this.asInterface(uuid("0e47aa53-8521-4969-a957-df2538a3a98f"))).abi_UnregisterAsync(&_ret));
		return _ret;
	}

	private static Windows.ApplicationModel.Payments.Provider.IPaymentAppManagerStatics _staticInstance;
	public static Windows.ApplicationModel.Payments.Provider.IPaymentAppManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Payments.Provider.IPaymentAppManagerStatics);
		return _staticInstance;
	}
	static Windows.ApplicationModel.Payments.Provider.PaymentAppManager Current()
	{
		Windows.ApplicationModel.Payments.Provider.PaymentAppManager _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
}

interface PaymentTransaction : Windows.ApplicationModel.Payments.Provider.IPaymentTransaction
{
extern(Windows):
	final Windows.ApplicationModel.Payments.PaymentRequest PaymentRequest()
	{
		Windows.ApplicationModel.Payments.PaymentRequest _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).get_PaymentRequest(&_ret));
		return _ret;
	}
	final wstring PayerEmail()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).get_PayerEmail(&_ret));
		return hstring(_ret).d_str;
	}
	final void PayerEmail(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).set_PayerEmail(hstring(value).handle));
	}
	final wstring PayerName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).get_PayerName(&_ret));
		return hstring(_ret).d_str;
	}
	final void PayerName(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).set_PayerName(hstring(value).handle));
	}
	final wstring PayerPhoneNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).get_PayerPhoneNumber(&_ret));
		return hstring(_ret).d_str;
	}
	final void PayerPhoneNumber(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).set_PayerPhoneNumber(hstring(value).handle));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestChangedResult) UpdateShippingAddressAsync(Windows.ApplicationModel.Payments.PaymentAddress shippingAddress)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestChangedResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).abi_UpdateShippingAddressAsync(shippingAddress, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestChangedResult) UpdateSelectedShippingOptionAsync(Windows.ApplicationModel.Payments.PaymentShippingOption selectedShippingOption)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestChangedResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).abi_UpdateSelectedShippingOptionAsync(selectedShippingOption, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.Provider.PaymentTransactionAcceptResult) AcceptAsync(Windows.ApplicationModel.Payments.PaymentToken paymentToken)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.Provider.PaymentTransactionAcceptResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).abi_AcceptAsync(paymentToken, &_ret));
		return _ret;
	}
	final void Reject()
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransaction)this.asInterface(uuid("62581da0-26a5-4e9b-a6eb-66606cf001d3"))).abi_Reject());
	}

	private static Windows.ApplicationModel.Payments.Provider.IPaymentTransactionStatics _staticInstance;
	public static Windows.ApplicationModel.Payments.Provider.IPaymentTransactionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Payments.Provider.IPaymentTransactionStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.Provider.PaymentTransaction) FromIdAsync(wstring id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.Provider.PaymentTransaction) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(hstring(id).handle, &_ret));
		return _ret;
	}
}

interface PaymentTransactionAcceptResult : Windows.ApplicationModel.Payments.Provider.IPaymentTransactionAcceptResult
{
extern(Windows):
	final Windows.ApplicationModel.Payments.PaymentRequestCompletionStatus Status()
	{
		Windows.ApplicationModel.Payments.PaymentRequestCompletionStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.Provider.IPaymentTransactionAcceptResult)this.asInterface(uuid("060e3276-d30c-4817-95a2-df7ae9273b56"))).get_Status(&_ret));
		return _ret;
	}
}