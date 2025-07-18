module Windows.ApplicationModel.Payments;

import dwinrt;

@uuid("5078b9e1-f398-4f2c-a27e-94d371cf6c7d")
interface PaymentRequestChangedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.ApplicationModel.Payments.PaymentRequest paymentRequest, Windows.ApplicationModel.Payments.PaymentRequestChangedArgs args);
}

@uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentAddress")
interface IPaymentAddress : IInspectable
{
extern(Windows):
	HRESULT get_Country(HSTRING* return_value);
	HRESULT set_Country(HSTRING value);
	HRESULT get_AddressLines(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT set_AddressLines(Windows.Foundation.Collections.IVectorView!(HSTRING) value);
	HRESULT get_Region(HSTRING* return_value);
	HRESULT set_Region(HSTRING value);
	HRESULT get_City(HSTRING* return_value);
	HRESULT set_City(HSTRING value);
	HRESULT get_DependentLocality(HSTRING* return_value);
	HRESULT set_DependentLocality(HSTRING value);
	HRESULT get_PostalCode(HSTRING* return_value);
	HRESULT set_PostalCode(HSTRING value);
	HRESULT get_SortingCode(HSTRING* return_value);
	HRESULT set_SortingCode(HSTRING value);
	HRESULT get_LanguageCode(HSTRING* return_value);
	HRESULT set_LanguageCode(HSTRING value);
	HRESULT get_Organization(HSTRING* return_value);
	HRESULT set_Organization(HSTRING value);
	HRESULT get_Recipient(HSTRING* return_value);
	HRESULT set_Recipient(HSTRING value);
	HRESULT get_PhoneNumber(HSTRING* return_value);
	HRESULT set_PhoneNumber(HSTRING value);
	HRESULT get_Properties(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("e3a3e9e0-b41f-4987-bdcb-071331f2daa4")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentCurrencyAmount")
interface IPaymentCurrencyAmount : IInspectable
{
extern(Windows):
	HRESULT get_Currency(HSTRING* return_value);
	HRESULT set_Currency(HSTRING value);
	HRESULT get_CurrencySystem(HSTRING* return_value);
	HRESULT set_CurrencySystem(HSTRING value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT set_Value(HSTRING value);
}

@uuid("3257d338-140c-4575-8535-f773178c09a7")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentCurrencyAmount")
interface IPaymentCurrencyAmountFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING value, HSTRING currency, Windows.ApplicationModel.Payments.PaymentCurrencyAmount* return_result);
	HRESULT abi_CreateWithCurrencySystem(HSTRING value, HSTRING currency, HSTRING currencySystem, Windows.ApplicationModel.Payments.PaymentCurrencyAmount* return_result);
}

@uuid("53bb2d7d-e0eb-4053-8eae-ce7c48e02945")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentDetails")
interface IPaymentDetails : IInspectable
{
extern(Windows):
	HRESULT get_Total(Windows.ApplicationModel.Payments.PaymentItem* return_value);
	HRESULT set_Total(Windows.ApplicationModel.Payments.PaymentItem value);
	HRESULT get_DisplayItems(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentItem)* return_value);
	HRESULT set_DisplayItems(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentItem) value);
	HRESULT get_ShippingOptions(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentShippingOption)* return_value);
	HRESULT set_ShippingOptions(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentShippingOption) value);
	HRESULT get_Modifiers(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentDetailsModifier)* return_value);
	HRESULT set_Modifiers(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentDetailsModifier) value);
}

@uuid("cfe8afee-c0ea-4ca1-8bc7-6de67b1f3763")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentDetails")
interface IPaymentDetailsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.ApplicationModel.Payments.PaymentItem total, Windows.ApplicationModel.Payments.PaymentDetails* return_result);
	HRESULT abi_CreateWithDisplayItems(Windows.ApplicationModel.Payments.PaymentItem total, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentItem) displayItems, Windows.ApplicationModel.Payments.PaymentDetails* return_result);
}

@uuid("be1c7d65-4323-41d7-b305-dfcb765f69de")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentDetailsModifier")
interface IPaymentDetailsModifier : IInspectable
{
extern(Windows):
	HRESULT get_JsonData(HSTRING* return_value);
	HRESULT get_SupportedMethodIds(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Total(Windows.ApplicationModel.Payments.PaymentItem* return_value);
	HRESULT get_AdditionalDisplayItems(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentItem)* return_value);
}

@uuid("79005286-54de-429c-9e4f-5dce6e10ebce")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentDetailsModifier")
interface IPaymentDetailsModifierFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentItem total, Windows.ApplicationModel.Payments.PaymentDetailsModifier* return_result);
	HRESULT abi_CreateWithAdditionalDisplayItems(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentItem total, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentItem) additionalDisplayItems, Windows.ApplicationModel.Payments.PaymentDetailsModifier* return_result);
	HRESULT abi_CreateWithAdditionalDisplayItemsAndJsonData(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentItem total, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentItem) additionalDisplayItems, HSTRING jsonData, Windows.ApplicationModel.Payments.PaymentDetailsModifier* return_result);
}

@uuid("685ac88b-79b2-4b76-9e03-a876223dfe72")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentItem")
interface IPaymentItem : IInspectable
{
extern(Windows):
	HRESULT get_Label(HSTRING* return_value);
	HRESULT set_Label(HSTRING value);
	HRESULT get_Amount(Windows.ApplicationModel.Payments.PaymentCurrencyAmount* return_value);
	HRESULT set_Amount(Windows.ApplicationModel.Payments.PaymentCurrencyAmount value);
	HRESULT get_Pending(bool* return_value);
	HRESULT set_Pending(bool value);
}

@uuid("c6ab7ad8-2503-4d1d-a778-02b2e5927b2c")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentItem")
interface IPaymentItemFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount, Windows.ApplicationModel.Payments.PaymentItem* return_result);
}

@uuid("fb0ee829-ec0c-449a-83da-7ae3073365a2")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentMediator")
interface IPaymentMediator : IInspectable
{
extern(Windows):
	HRESULT abi_GetSupportedMethodIdsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_result);
	HRESULT abi_SubmitPaymentRequestAsync(Windows.ApplicationModel.Payments.PaymentRequest paymentRequest, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestSubmitResult)* return_result);
	HRESULT abi_SubmitPaymentRequestAsync(Windows.ApplicationModel.Payments.PaymentRequest paymentRequest, Windows.ApplicationModel.Payments.PaymentRequestChangedHandler changeHandler, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestSubmitResult)* return_result);
}

@uuid("63445050-0e94-4ed6-aacb-e6012bd327a7")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentMerchantInfo")
interface IPaymentMerchantInfo : IInspectable
{
extern(Windows):
	HRESULT get_PackageFullName(HSTRING* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
}

@uuid("9e89ced3-ccb7-4167-a8ec-e10ae96dbcd1")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentMerchantInfo")
interface IPaymentMerchantInfoFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Uri uri, Windows.ApplicationModel.Payments.PaymentMerchantInfo* return_result);
}

@uuid("d1d3caf4-de98-4129-b1b7-c3ad86237bf4")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentMethodData")
interface IPaymentMethodData : IInspectable
{
extern(Windows):
	HRESULT get_SupportedMethodIds(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_JsonData(HSTRING* return_value);
}

@uuid("8addd27f-9baa-4a82-8342-a8210992a36b")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentMethodData")
interface IPaymentMethodDataFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentMethodData* return_result);
	HRESULT abi_CreateWithJsonData(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, HSTRING jsonData, Windows.ApplicationModel.Payments.PaymentMethodData* return_result);
}

@uuid("aaa30854-1f2b-4365-8251-01b58915a5bc")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentOptions")
interface IPaymentOptions : IInspectable
{
extern(Windows):
	HRESULT get_RequestPayerEmail(Windows.ApplicationModel.Payments.PaymentOptionPresence* return_value);
	HRESULT set_RequestPayerEmail(Windows.ApplicationModel.Payments.PaymentOptionPresence value);
	HRESULT get_RequestPayerName(Windows.ApplicationModel.Payments.PaymentOptionPresence* return_value);
	HRESULT set_RequestPayerName(Windows.ApplicationModel.Payments.PaymentOptionPresence value);
	HRESULT get_RequestPayerPhoneNumber(Windows.ApplicationModel.Payments.PaymentOptionPresence* return_value);
	HRESULT set_RequestPayerPhoneNumber(Windows.ApplicationModel.Payments.PaymentOptionPresence value);
	HRESULT get_RequestShipping(bool* return_value);
	HRESULT set_RequestShipping(bool value);
	HRESULT get_ShippingType(Windows.ApplicationModel.Payments.PaymentShippingType* return_value);
	HRESULT set_ShippingType(Windows.ApplicationModel.Payments.PaymentShippingType value);
}

@uuid("b74942e1-ed7b-47eb-bc08-78cc5d6896b6")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentRequest")
interface IPaymentRequest : IInspectable
{
extern(Windows):
	HRESULT get_MerchantInfo(Windows.ApplicationModel.Payments.PaymentMerchantInfo* return_value);
	HRESULT get_Details(Windows.ApplicationModel.Payments.PaymentDetails* return_value);
	HRESULT get_MethodData(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentMethodData)* return_value);
	HRESULT get_Options(Windows.ApplicationModel.Payments.PaymentOptions* return_value);
}

@uuid("c6145e44-cd8b-4be4-b555-27c99194c0c5")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentRequestChangedArgs")
interface IPaymentRequestChangedArgs : IInspectable
{
extern(Windows):
	HRESULT get_ChangeKind(Windows.ApplicationModel.Payments.PaymentRequestChangeKind* return_value);
	HRESULT get_ShippingAddress(Windows.ApplicationModel.Payments.PaymentAddress* return_value);
	HRESULT get_SelectedShippingOption(Windows.ApplicationModel.Payments.PaymentShippingOption* return_value);
	HRESULT abi_Acknowledge(Windows.ApplicationModel.Payments.PaymentRequestChangedResult changeResult);
}

@uuid("df699e5c-16c4-47ad-9401-8440ec0757db")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentRequestChangedResult")
interface IPaymentRequestChangedResult : IInspectable
{
extern(Windows):
	HRESULT get_ChangeAcceptedByMerchant(bool* return_value);
	HRESULT set_ChangeAcceptedByMerchant(bool value);
	HRESULT get_Message(HSTRING* return_value);
	HRESULT set_Message(HSTRING value);
	HRESULT get_UpdatedPaymentDetails(Windows.ApplicationModel.Payments.PaymentDetails* return_value);
	HRESULT set_UpdatedPaymentDetails(Windows.ApplicationModel.Payments.PaymentDetails value);
}

@uuid("08740f56-1d33-4431-814b-67ea24bf21db")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentRequestChangedResult")
interface IPaymentRequestChangedResultFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(bool changeAcceptedByMerchant, Windows.ApplicationModel.Payments.PaymentRequestChangedResult* return_result);
	HRESULT abi_CreateWithPaymentDetails(bool changeAcceptedByMerchant, Windows.ApplicationModel.Payments.PaymentDetails updatedPaymentDetails, Windows.ApplicationModel.Payments.PaymentRequestChangedResult* return_result);
}

@uuid("3e8a79dc-6b74-42d3-b103-f0de35fb1848")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentRequest")
interface IPaymentRequestFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.ApplicationModel.Payments.PaymentDetails details, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentMethodData) methodData, Windows.ApplicationModel.Payments.PaymentRequest* return_result);
	HRESULT abi_CreateWithMerchantInfo(Windows.ApplicationModel.Payments.PaymentDetails details, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentMethodData) methodData, Windows.ApplicationModel.Payments.PaymentMerchantInfo merchantInfo, Windows.ApplicationModel.Payments.PaymentRequest* return_result);
	HRESULT abi_CreateWithMerchantInfoAndOptions(Windows.ApplicationModel.Payments.PaymentDetails details, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentMethodData) methodData, Windows.ApplicationModel.Payments.PaymentMerchantInfo merchantInfo, Windows.ApplicationModel.Payments.PaymentOptions options, Windows.ApplicationModel.Payments.PaymentRequest* return_result);
}

@uuid("7b9c3912-30f2-4e90-b249-8ce7d78ffe56")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentRequestSubmitResult")
interface IPaymentRequestSubmitResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.Payments.PaymentRequestStatus* return_value);
	HRESULT get_Response(Windows.ApplicationModel.Payments.PaymentResponse* return_value);
}

@uuid("e1389457-8bd2-4888-9fa8-97985545108e")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentResponse")
interface IPaymentResponse : IInspectable
{
extern(Windows):
	HRESULT get_PaymentToken(Windows.ApplicationModel.Payments.PaymentToken* return_value);
	HRESULT get_ShippingOption(Windows.ApplicationModel.Payments.PaymentShippingOption* return_value);
	HRESULT get_ShippingAddress(Windows.ApplicationModel.Payments.PaymentAddress* return_value);
	HRESULT get_PayerEmail(HSTRING* return_value);
	HRESULT get_PayerName(HSTRING* return_value);
	HRESULT get_PayerPhoneNumber(HSTRING* return_value);
	HRESULT abi_CompleteAsync(Windows.ApplicationModel.Payments.PaymentRequestCompletionStatus status, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("13372ada-9753-4574-8966-93145a76c7f9")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentShippingOption")
interface IPaymentShippingOption : IInspectable
{
extern(Windows):
	HRESULT get_Label(HSTRING* return_value);
	HRESULT set_Label(HSTRING value);
	HRESULT get_Amount(Windows.ApplicationModel.Payments.PaymentCurrencyAmount* return_value);
	HRESULT set_Amount(Windows.ApplicationModel.Payments.PaymentCurrencyAmount value);
	HRESULT get_Tag(HSTRING* return_value);
	HRESULT set_Tag(HSTRING value);
	HRESULT get_IsSelected(bool* return_value);
	HRESULT set_IsSelected(bool value);
}

@uuid("5de5f917-b2d7-446b-9d73-6123fbca3bc6")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentShippingOption")
interface IPaymentShippingOptionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount, Windows.ApplicationModel.Payments.PaymentShippingOption* return_result);
	HRESULT abi_CreateWithSelected(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount, bool selected, Windows.ApplicationModel.Payments.PaymentShippingOption* return_result);
	HRESULT abi_CreateWithSelectedAndTag(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount, bool selected, HSTRING tag, Windows.ApplicationModel.Payments.PaymentShippingOption* return_result);
}

@uuid("bbcac013-ccd0-41f2-b2a1-0a2e4b5dce25")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentToken")
interface IPaymentToken : IInspectable
{
extern(Windows):
	HRESULT get_PaymentMethodId(HSTRING* return_value);
	HRESULT get_JsonDetails(HSTRING* return_value);
}

@uuid("988cd7aa-4753-4904-8373-dd7b08b995c1")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentToken")
interface IPaymentTokenFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING paymentMethodId, Windows.ApplicationModel.Payments.PaymentToken* return_result);
	HRESULT abi_CreateWithJsonDetails(HSTRING paymentMethodId, HSTRING jsonDetails, Windows.ApplicationModel.Payments.PaymentToken* return_result);
}

interface PaymentAddress : Windows.ApplicationModel.Payments.IPaymentAddress
{
extern(Windows):
	final HSTRING Country()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_Country(&_ret));
		return _ret;
	}
	final void Country(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_Country(value));
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) AddressLines()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_AddressLines(&_ret));
		return _ret;
	}
	final void AddressLines(Windows.Foundation.Collections.IVectorView!(HSTRING) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_AddressLines(value));
	}
	final HSTRING Region()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_Region(&_ret));
		return _ret;
	}
	final void Region(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_Region(value));
	}
	final HSTRING City()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_City(&_ret));
		return _ret;
	}
	final void City(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_City(value));
	}
	final HSTRING DependentLocality()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_DependentLocality(&_ret));
		return _ret;
	}
	final void DependentLocality(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_DependentLocality(value));
	}
	final HSTRING PostalCode()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_PostalCode(&_ret));
		return _ret;
	}
	final void PostalCode(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_PostalCode(value));
	}
	final HSTRING SortingCode()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_SortingCode(&_ret));
		return _ret;
	}
	final void SortingCode(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_SortingCode(value));
	}
	final HSTRING LanguageCode()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_LanguageCode(&_ret));
		return _ret;
	}
	final void LanguageCode(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_LanguageCode(value));
	}
	final HSTRING Organization()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_Organization(&_ret));
		return _ret;
	}
	final void Organization(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_Organization(value));
	}
	final HSTRING Recipient()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_Recipient(&_ret));
		return _ret;
	}
	final void Recipient(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_Recipient(value));
	}
	final HSTRING PhoneNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_PhoneNumber(&_ret));
		return _ret;
	}
	final void PhoneNumber(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).set_PhoneNumber(value));
	}
	final Windows.Foundation.Collections.ValueSet Properties()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentAddress)this.asInterface(uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5"))).get_Properties(&_ret));
		return _ret;
	}
	static PaymentAddress New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PaymentAddress).abi_ActivateInstance(&ret));
		return cast(PaymentAddress) ret;
	}
}

interface PaymentCurrencyAmount : Windows.ApplicationModel.Payments.IPaymentCurrencyAmount
{
extern(Windows):
	final HSTRING Currency()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentCurrencyAmount)this.asInterface(uuid("e3a3e9e0-b41f-4987-bdcb-071331f2daa4"))).get_Currency(&_ret));
		return _ret;
	}
	final void Currency(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentCurrencyAmount)this.asInterface(uuid("e3a3e9e0-b41f-4987-bdcb-071331f2daa4"))).set_Currency(value));
	}
	final HSTRING CurrencySystem()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentCurrencyAmount)this.asInterface(uuid("e3a3e9e0-b41f-4987-bdcb-071331f2daa4"))).get_CurrencySystem(&_ret));
		return _ret;
	}
	final void CurrencySystem(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentCurrencyAmount)this.asInterface(uuid("e3a3e9e0-b41f-4987-bdcb-071331f2daa4"))).set_CurrencySystem(value));
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentCurrencyAmount)this.asInterface(uuid("e3a3e9e0-b41f-4987-bdcb-071331f2daa4"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentCurrencyAmount)this.asInterface(uuid("e3a3e9e0-b41f-4987-bdcb-071331f2daa4"))).set_Value(value));
	}
	static Windows.ApplicationModel.Payments.PaymentCurrencyAmount New(HSTRING value, HSTRING currency)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentCurrencyAmountFactory);
		Windows.ApplicationModel.Payments.PaymentCurrencyAmount _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentCurrencyAmountFactory)factory.asInterface(uuid("3257d338-140c-4575-8535-f773178c09a7"))).abi_Create(value, currency, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentCurrencyAmount New(HSTRING value, HSTRING currency, HSTRING currencySystem)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentCurrencyAmountFactory);
		Windows.ApplicationModel.Payments.PaymentCurrencyAmount _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentCurrencyAmountFactory)factory.asInterface(uuid("3257d338-140c-4575-8535-f773178c09a7"))).abi_CreateWithCurrencySystem(value, currency, currencySystem, &_ret));
		return _ret;
	}
}

interface PaymentDetails : Windows.ApplicationModel.Payments.IPaymentDetails
{
extern(Windows):
	final Windows.ApplicationModel.Payments.PaymentItem Total()
	{
		Windows.ApplicationModel.Payments.PaymentItem _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetails)this.asInterface(uuid("53bb2d7d-e0eb-4053-8eae-ce7c48e02945"))).get_Total(&_ret));
		return _ret;
	}
	final void Total(Windows.ApplicationModel.Payments.PaymentItem value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetails)this.asInterface(uuid("53bb2d7d-e0eb-4053-8eae-ce7c48e02945"))).set_Total(value));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentItem) DisplayItems()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentItem) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetails)this.asInterface(uuid("53bb2d7d-e0eb-4053-8eae-ce7c48e02945"))).get_DisplayItems(&_ret));
		return _ret;
	}
	final void DisplayItems(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentItem) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetails)this.asInterface(uuid("53bb2d7d-e0eb-4053-8eae-ce7c48e02945"))).set_DisplayItems(value));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentShippingOption) ShippingOptions()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentShippingOption) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetails)this.asInterface(uuid("53bb2d7d-e0eb-4053-8eae-ce7c48e02945"))).get_ShippingOptions(&_ret));
		return _ret;
	}
	final void ShippingOptions(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentShippingOption) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetails)this.asInterface(uuid("53bb2d7d-e0eb-4053-8eae-ce7c48e02945"))).set_ShippingOptions(value));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentDetailsModifier) Modifiers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentDetailsModifier) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetails)this.asInterface(uuid("53bb2d7d-e0eb-4053-8eae-ce7c48e02945"))).get_Modifiers(&_ret));
		return _ret;
	}
	final void Modifiers(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentDetailsModifier) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetails)this.asInterface(uuid("53bb2d7d-e0eb-4053-8eae-ce7c48e02945"))).set_Modifiers(value));
	}
	static PaymentDetails New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PaymentDetails).abi_ActivateInstance(&ret));
		return cast(PaymentDetails) ret;
	}
	static Windows.ApplicationModel.Payments.PaymentDetails New(Windows.ApplicationModel.Payments.PaymentItem total)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentDetailsFactory);
		Windows.ApplicationModel.Payments.PaymentDetails _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetailsFactory)factory.asInterface(uuid("cfe8afee-c0ea-4ca1-8bc7-6de67b1f3763"))).abi_Create(total, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentDetails New(Windows.ApplicationModel.Payments.PaymentItem total, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentItem) displayItems)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentDetailsFactory);
		Windows.ApplicationModel.Payments.PaymentDetails _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetailsFactory)factory.asInterface(uuid("cfe8afee-c0ea-4ca1-8bc7-6de67b1f3763"))).abi_CreateWithDisplayItems(total, displayItems, &_ret));
		return _ret;
	}
}

interface PaymentDetailsModifier : Windows.ApplicationModel.Payments.IPaymentDetailsModifier
{
extern(Windows):
	final HSTRING JsonData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetailsModifier)this.asInterface(uuid("be1c7d65-4323-41d7-b305-dfcb765f69de"))).get_JsonData(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) SupportedMethodIds()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetailsModifier)this.asInterface(uuid("be1c7d65-4323-41d7-b305-dfcb765f69de"))).get_SupportedMethodIds(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Payments.PaymentItem Total()
	{
		Windows.ApplicationModel.Payments.PaymentItem _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetailsModifier)this.asInterface(uuid("be1c7d65-4323-41d7-b305-dfcb765f69de"))).get_Total(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentItem) AdditionalDisplayItems()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentItem) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetailsModifier)this.asInterface(uuid("be1c7d65-4323-41d7-b305-dfcb765f69de"))).get_AdditionalDisplayItems(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentDetailsModifier New(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentItem total)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentDetailsModifierFactory);
		Windows.ApplicationModel.Payments.PaymentDetailsModifier _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetailsModifierFactory)factory.asInterface(uuid("79005286-54de-429c-9e4f-5dce6e10ebce"))).abi_Create(supportedMethodIds, total, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentDetailsModifier New(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentItem total, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentItem) additionalDisplayItems)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentDetailsModifierFactory);
		Windows.ApplicationModel.Payments.PaymentDetailsModifier _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetailsModifierFactory)factory.asInterface(uuid("79005286-54de-429c-9e4f-5dce6e10ebce"))).abi_CreateWithAdditionalDisplayItems(supportedMethodIds, total, additionalDisplayItems, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentDetailsModifier New(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentItem total, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentItem) additionalDisplayItems, HSTRING jsonData)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentDetailsModifierFactory);
		Windows.ApplicationModel.Payments.PaymentDetailsModifier _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentDetailsModifierFactory)factory.asInterface(uuid("79005286-54de-429c-9e4f-5dce6e10ebce"))).abi_CreateWithAdditionalDisplayItemsAndJsonData(supportedMethodIds, total, additionalDisplayItems, jsonData, &_ret));
		return _ret;
	}
}

interface PaymentItem : Windows.ApplicationModel.Payments.IPaymentItem
{
extern(Windows):
	final HSTRING Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentItem)this.asInterface(uuid("685ac88b-79b2-4b76-9e03-a876223dfe72"))).get_Label(&_ret));
		return _ret;
	}
	final void Label(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentItem)this.asInterface(uuid("685ac88b-79b2-4b76-9e03-a876223dfe72"))).set_Label(value));
	}
	final Windows.ApplicationModel.Payments.PaymentCurrencyAmount Amount()
	{
		Windows.ApplicationModel.Payments.PaymentCurrencyAmount _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentItem)this.asInterface(uuid("685ac88b-79b2-4b76-9e03-a876223dfe72"))).get_Amount(&_ret));
		return _ret;
	}
	final void Amount(Windows.ApplicationModel.Payments.PaymentCurrencyAmount value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentItem)this.asInterface(uuid("685ac88b-79b2-4b76-9e03-a876223dfe72"))).set_Amount(value));
	}
	final bool Pending()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentItem)this.asInterface(uuid("685ac88b-79b2-4b76-9e03-a876223dfe72"))).get_Pending(&_ret));
		return _ret;
	}
	final void Pending(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentItem)this.asInterface(uuid("685ac88b-79b2-4b76-9e03-a876223dfe72"))).set_Pending(value));
	}
	static Windows.ApplicationModel.Payments.PaymentItem New(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentItemFactory);
		Windows.ApplicationModel.Payments.PaymentItem _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentItemFactory)factory.asInterface(uuid("c6ab7ad8-2503-4d1d-a778-02b2e5927b2c"))).abi_Create(label, amount, &_ret));
		return _ret;
	}
}

interface PaymentMediator : Windows.ApplicationModel.Payments.IPaymentMediator
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) GetSupportedMethodIdsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentMediator)this.asInterface(uuid("fb0ee829-ec0c-449a-83da-7ae3073365a2"))).abi_GetSupportedMethodIdsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestSubmitResult) SubmitPaymentRequestAsync(Windows.ApplicationModel.Payments.PaymentRequest paymentRequest)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestSubmitResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentMediator)this.asInterface(uuid("fb0ee829-ec0c-449a-83da-7ae3073365a2"))).abi_SubmitPaymentRequestAsync(paymentRequest, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestSubmitResult) SubmitPaymentRequestAsync(Windows.ApplicationModel.Payments.PaymentRequest paymentRequest, Windows.ApplicationModel.Payments.PaymentRequestChangedHandler changeHandler)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestSubmitResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentMediator)this.asInterface(uuid("fb0ee829-ec0c-449a-83da-7ae3073365a2"))).abi_SubmitPaymentRequestAsync(paymentRequest, changeHandler, &_ret));
		return _ret;
	}
	static PaymentMediator New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PaymentMediator).abi_ActivateInstance(&ret));
		return cast(PaymentMediator) ret;
	}
}

interface PaymentMerchantInfo : Windows.ApplicationModel.Payments.IPaymentMerchantInfo
{
extern(Windows):
	final HSTRING PackageFullName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentMerchantInfo)this.asInterface(uuid("63445050-0e94-4ed6-aacb-e6012bd327a7"))).get_PackageFullName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentMerchantInfo)this.asInterface(uuid("63445050-0e94-4ed6-aacb-e6012bd327a7"))).get_Uri(&_ret));
		return _ret;
	}
	static PaymentMerchantInfo New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PaymentMerchantInfo).abi_ActivateInstance(&ret));
		return cast(PaymentMerchantInfo) ret;
	}
	static Windows.ApplicationModel.Payments.PaymentMerchantInfo New(Windows.Foundation.Uri uri)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentMerchantInfoFactory);
		Windows.ApplicationModel.Payments.PaymentMerchantInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentMerchantInfoFactory)factory.asInterface(uuid("9e89ced3-ccb7-4167-a8ec-e10ae96dbcd1"))).abi_Create(uri, &_ret));
		return _ret;
	}
}

interface PaymentMethodData : Windows.ApplicationModel.Payments.IPaymentMethodData
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) SupportedMethodIds()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentMethodData)this.asInterface(uuid("d1d3caf4-de98-4129-b1b7-c3ad86237bf4"))).get_SupportedMethodIds(&_ret));
		return _ret;
	}
	final HSTRING JsonData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentMethodData)this.asInterface(uuid("d1d3caf4-de98-4129-b1b7-c3ad86237bf4"))).get_JsonData(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentMethodData New(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentMethodDataFactory);
		Windows.ApplicationModel.Payments.PaymentMethodData _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentMethodDataFactory)factory.asInterface(uuid("8addd27f-9baa-4a82-8342-a8210992a36b"))).abi_Create(supportedMethodIds, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentMethodData New(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, HSTRING jsonData)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentMethodDataFactory);
		Windows.ApplicationModel.Payments.PaymentMethodData _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentMethodDataFactory)factory.asInterface(uuid("8addd27f-9baa-4a82-8342-a8210992a36b"))).abi_CreateWithJsonData(supportedMethodIds, jsonData, &_ret));
		return _ret;
	}
}

interface PaymentOptions : Windows.ApplicationModel.Payments.IPaymentOptions
{
extern(Windows):
	final Windows.ApplicationModel.Payments.PaymentOptionPresence RequestPayerEmail()
	{
		Windows.ApplicationModel.Payments.PaymentOptionPresence _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentOptions)this.asInterface(uuid("aaa30854-1f2b-4365-8251-01b58915a5bc"))).get_RequestPayerEmail(&_ret));
		return _ret;
	}
	final void RequestPayerEmail(Windows.ApplicationModel.Payments.PaymentOptionPresence value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentOptions)this.asInterface(uuid("aaa30854-1f2b-4365-8251-01b58915a5bc"))).set_RequestPayerEmail(value));
	}
	final Windows.ApplicationModel.Payments.PaymentOptionPresence RequestPayerName()
	{
		Windows.ApplicationModel.Payments.PaymentOptionPresence _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentOptions)this.asInterface(uuid("aaa30854-1f2b-4365-8251-01b58915a5bc"))).get_RequestPayerName(&_ret));
		return _ret;
	}
	final void RequestPayerName(Windows.ApplicationModel.Payments.PaymentOptionPresence value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentOptions)this.asInterface(uuid("aaa30854-1f2b-4365-8251-01b58915a5bc"))).set_RequestPayerName(value));
	}
	final Windows.ApplicationModel.Payments.PaymentOptionPresence RequestPayerPhoneNumber()
	{
		Windows.ApplicationModel.Payments.PaymentOptionPresence _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentOptions)this.asInterface(uuid("aaa30854-1f2b-4365-8251-01b58915a5bc"))).get_RequestPayerPhoneNumber(&_ret));
		return _ret;
	}
	final void RequestPayerPhoneNumber(Windows.ApplicationModel.Payments.PaymentOptionPresence value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentOptions)this.asInterface(uuid("aaa30854-1f2b-4365-8251-01b58915a5bc"))).set_RequestPayerPhoneNumber(value));
	}
	final bool RequestShipping()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentOptions)this.asInterface(uuid("aaa30854-1f2b-4365-8251-01b58915a5bc"))).get_RequestShipping(&_ret));
		return _ret;
	}
	final void RequestShipping(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentOptions)this.asInterface(uuid("aaa30854-1f2b-4365-8251-01b58915a5bc"))).set_RequestShipping(value));
	}
	final Windows.ApplicationModel.Payments.PaymentShippingType ShippingType()
	{
		Windows.ApplicationModel.Payments.PaymentShippingType _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentOptions)this.asInterface(uuid("aaa30854-1f2b-4365-8251-01b58915a5bc"))).get_ShippingType(&_ret));
		return _ret;
	}
	final void ShippingType(Windows.ApplicationModel.Payments.PaymentShippingType value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentOptions)this.asInterface(uuid("aaa30854-1f2b-4365-8251-01b58915a5bc"))).set_ShippingType(value));
	}
	static PaymentOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PaymentOptions).abi_ActivateInstance(&ret));
		return cast(PaymentOptions) ret;
	}
}

interface PaymentRequest : Windows.ApplicationModel.Payments.IPaymentRequest
{
extern(Windows):
	final Windows.ApplicationModel.Payments.PaymentMerchantInfo MerchantInfo()
	{
		Windows.ApplicationModel.Payments.PaymentMerchantInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequest)this.asInterface(uuid("b74942e1-ed7b-47eb-bc08-78cc5d6896b6"))).get_MerchantInfo(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Payments.PaymentDetails Details()
	{
		Windows.ApplicationModel.Payments.PaymentDetails _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequest)this.asInterface(uuid("b74942e1-ed7b-47eb-bc08-78cc5d6896b6"))).get_Details(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentMethodData) MethodData()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Payments.PaymentMethodData) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequest)this.asInterface(uuid("b74942e1-ed7b-47eb-bc08-78cc5d6896b6"))).get_MethodData(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Payments.PaymentOptions Options()
	{
		Windows.ApplicationModel.Payments.PaymentOptions _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequest)this.asInterface(uuid("b74942e1-ed7b-47eb-bc08-78cc5d6896b6"))).get_Options(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentRequest New(Windows.ApplicationModel.Payments.PaymentDetails details, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentMethodData) methodData)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentRequestFactory);
		Windows.ApplicationModel.Payments.PaymentRequest _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestFactory)factory.asInterface(uuid("3e8a79dc-6b74-42d3-b103-f0de35fb1848"))).abi_Create(details, methodData, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentRequest New(Windows.ApplicationModel.Payments.PaymentDetails details, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentMethodData) methodData, Windows.ApplicationModel.Payments.PaymentMerchantInfo merchantInfo)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentRequestFactory);
		Windows.ApplicationModel.Payments.PaymentRequest _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestFactory)factory.asInterface(uuid("3e8a79dc-6b74-42d3-b103-f0de35fb1848"))).abi_CreateWithMerchantInfo(details, methodData, merchantInfo, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentRequest New(Windows.ApplicationModel.Payments.PaymentDetails details, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentMethodData) methodData, Windows.ApplicationModel.Payments.PaymentMerchantInfo merchantInfo, Windows.ApplicationModel.Payments.PaymentOptions options)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentRequestFactory);
		Windows.ApplicationModel.Payments.PaymentRequest _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestFactory)factory.asInterface(uuid("3e8a79dc-6b74-42d3-b103-f0de35fb1848"))).abi_CreateWithMerchantInfoAndOptions(details, methodData, merchantInfo, options, &_ret));
		return _ret;
	}
}

interface PaymentRequestChangedArgs : Windows.ApplicationModel.Payments.IPaymentRequestChangedArgs
{
extern(Windows):
	final Windows.ApplicationModel.Payments.PaymentRequestChangeKind ChangeKind()
	{
		Windows.ApplicationModel.Payments.PaymentRequestChangeKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedArgs)this.asInterface(uuid("c6145e44-cd8b-4be4-b555-27c99194c0c5"))).get_ChangeKind(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Payments.PaymentAddress ShippingAddress()
	{
		Windows.ApplicationModel.Payments.PaymentAddress _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedArgs)this.asInterface(uuid("c6145e44-cd8b-4be4-b555-27c99194c0c5"))).get_ShippingAddress(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Payments.PaymentShippingOption SelectedShippingOption()
	{
		Windows.ApplicationModel.Payments.PaymentShippingOption _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedArgs)this.asInterface(uuid("c6145e44-cd8b-4be4-b555-27c99194c0c5"))).get_SelectedShippingOption(&_ret));
		return _ret;
	}
	final void Acknowledge(Windows.ApplicationModel.Payments.PaymentRequestChangedResult changeResult)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedArgs)this.asInterface(uuid("c6145e44-cd8b-4be4-b555-27c99194c0c5"))).abi_Acknowledge(changeResult));
	}
}

interface PaymentRequestChangedResult : Windows.ApplicationModel.Payments.IPaymentRequestChangedResult
{
extern(Windows):
	final bool ChangeAcceptedByMerchant()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedResult)this.asInterface(uuid("df699e5c-16c4-47ad-9401-8440ec0757db"))).get_ChangeAcceptedByMerchant(&_ret));
		return _ret;
	}
	final void ChangeAcceptedByMerchant(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedResult)this.asInterface(uuid("df699e5c-16c4-47ad-9401-8440ec0757db"))).set_ChangeAcceptedByMerchant(value));
	}
	final HSTRING Message()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedResult)this.asInterface(uuid("df699e5c-16c4-47ad-9401-8440ec0757db"))).get_Message(&_ret));
		return _ret;
	}
	final void Message(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedResult)this.asInterface(uuid("df699e5c-16c4-47ad-9401-8440ec0757db"))).set_Message(value));
	}
	final Windows.ApplicationModel.Payments.PaymentDetails UpdatedPaymentDetails()
	{
		Windows.ApplicationModel.Payments.PaymentDetails _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedResult)this.asInterface(uuid("df699e5c-16c4-47ad-9401-8440ec0757db"))).get_UpdatedPaymentDetails(&_ret));
		return _ret;
	}
	final void UpdatedPaymentDetails(Windows.ApplicationModel.Payments.PaymentDetails value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedResult)this.asInterface(uuid("df699e5c-16c4-47ad-9401-8440ec0757db"))).set_UpdatedPaymentDetails(value));
	}
	static Windows.ApplicationModel.Payments.PaymentRequestChangedResult New(bool changeAcceptedByMerchant)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentRequestChangedResultFactory);
		Windows.ApplicationModel.Payments.PaymentRequestChangedResult _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedResultFactory)factory.asInterface(uuid("08740f56-1d33-4431-814b-67ea24bf21db"))).abi_Create(changeAcceptedByMerchant, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentRequestChangedResult New(bool changeAcceptedByMerchant, Windows.ApplicationModel.Payments.PaymentDetails updatedPaymentDetails)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentRequestChangedResultFactory);
		Windows.ApplicationModel.Payments.PaymentRequestChangedResult _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestChangedResultFactory)factory.asInterface(uuid("08740f56-1d33-4431-814b-67ea24bf21db"))).abi_CreateWithPaymentDetails(changeAcceptedByMerchant, updatedPaymentDetails, &_ret));
		return _ret;
	}
}

interface PaymentRequestSubmitResult : Windows.ApplicationModel.Payments.IPaymentRequestSubmitResult
{
extern(Windows):
	final Windows.ApplicationModel.Payments.PaymentRequestStatus Status()
	{
		Windows.ApplicationModel.Payments.PaymentRequestStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestSubmitResult)this.asInterface(uuid("7b9c3912-30f2-4e90-b249-8ce7d78ffe56"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Payments.PaymentResponse Response()
	{
		Windows.ApplicationModel.Payments.PaymentResponse _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentRequestSubmitResult)this.asInterface(uuid("7b9c3912-30f2-4e90-b249-8ce7d78ffe56"))).get_Response(&_ret));
		return _ret;
	}
}

interface PaymentResponse : Windows.ApplicationModel.Payments.IPaymentResponse
{
extern(Windows):
	final Windows.ApplicationModel.Payments.PaymentToken PaymentToken()
	{
		Windows.ApplicationModel.Payments.PaymentToken _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentResponse)this.asInterface(uuid("e1389457-8bd2-4888-9fa8-97985545108e"))).get_PaymentToken(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Payments.PaymentShippingOption ShippingOption()
	{
		Windows.ApplicationModel.Payments.PaymentShippingOption _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentResponse)this.asInterface(uuid("e1389457-8bd2-4888-9fa8-97985545108e"))).get_ShippingOption(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Payments.PaymentAddress ShippingAddress()
	{
		Windows.ApplicationModel.Payments.PaymentAddress _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentResponse)this.asInterface(uuid("e1389457-8bd2-4888-9fa8-97985545108e"))).get_ShippingAddress(&_ret));
		return _ret;
	}
	final HSTRING PayerEmail()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentResponse)this.asInterface(uuid("e1389457-8bd2-4888-9fa8-97985545108e"))).get_PayerEmail(&_ret));
		return _ret;
	}
	final HSTRING PayerName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentResponse)this.asInterface(uuid("e1389457-8bd2-4888-9fa8-97985545108e"))).get_PayerName(&_ret));
		return _ret;
	}
	final HSTRING PayerPhoneNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentResponse)this.asInterface(uuid("e1389457-8bd2-4888-9fa8-97985545108e"))).get_PayerPhoneNumber(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction CompleteAsync(Windows.ApplicationModel.Payments.PaymentRequestCompletionStatus status)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentResponse)this.asInterface(uuid("e1389457-8bd2-4888-9fa8-97985545108e"))).abi_CompleteAsync(status, &_ret));
		return _ret;
	}
}

interface PaymentShippingOption : Windows.ApplicationModel.Payments.IPaymentShippingOption
{
extern(Windows):
	final HSTRING Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOption)this.asInterface(uuid("13372ada-9753-4574-8966-93145a76c7f9"))).get_Label(&_ret));
		return _ret;
	}
	final void Label(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOption)this.asInterface(uuid("13372ada-9753-4574-8966-93145a76c7f9"))).set_Label(value));
	}
	final Windows.ApplicationModel.Payments.PaymentCurrencyAmount Amount()
	{
		Windows.ApplicationModel.Payments.PaymentCurrencyAmount _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOption)this.asInterface(uuid("13372ada-9753-4574-8966-93145a76c7f9"))).get_Amount(&_ret));
		return _ret;
	}
	final void Amount(Windows.ApplicationModel.Payments.PaymentCurrencyAmount value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOption)this.asInterface(uuid("13372ada-9753-4574-8966-93145a76c7f9"))).set_Amount(value));
	}
	final HSTRING Tag()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOption)this.asInterface(uuid("13372ada-9753-4574-8966-93145a76c7f9"))).get_Tag(&_ret));
		return _ret;
	}
	final void Tag(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOption)this.asInterface(uuid("13372ada-9753-4574-8966-93145a76c7f9"))).set_Tag(value));
	}
	final bool IsSelected()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOption)this.asInterface(uuid("13372ada-9753-4574-8966-93145a76c7f9"))).get_IsSelected(&_ret));
		return _ret;
	}
	final void IsSelected(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOption)this.asInterface(uuid("13372ada-9753-4574-8966-93145a76c7f9"))).set_IsSelected(value));
	}
	static Windows.ApplicationModel.Payments.PaymentShippingOption New(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentShippingOptionFactory);
		Windows.ApplicationModel.Payments.PaymentShippingOption _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOptionFactory)factory.asInterface(uuid("5de5f917-b2d7-446b-9d73-6123fbca3bc6"))).abi_Create(label, amount, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentShippingOption New(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount, bool selected)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentShippingOptionFactory);
		Windows.ApplicationModel.Payments.PaymentShippingOption _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOptionFactory)factory.asInterface(uuid("5de5f917-b2d7-446b-9d73-6123fbca3bc6"))).abi_CreateWithSelected(label, amount, selected, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentShippingOption New(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount, bool selected, HSTRING tag)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentShippingOptionFactory);
		Windows.ApplicationModel.Payments.PaymentShippingOption _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentShippingOptionFactory)factory.asInterface(uuid("5de5f917-b2d7-446b-9d73-6123fbca3bc6"))).abi_CreateWithSelectedAndTag(label, amount, selected, tag, &_ret));
		return _ret;
	}
}

interface PaymentToken : Windows.ApplicationModel.Payments.IPaymentToken
{
extern(Windows):
	final HSTRING PaymentMethodId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentToken)this.asInterface(uuid("bbcac013-ccd0-41f2-b2a1-0a2e4b5dce25"))).get_PaymentMethodId(&_ret));
		return _ret;
	}
	final HSTRING JsonDetails()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentToken)this.asInterface(uuid("bbcac013-ccd0-41f2-b2a1-0a2e4b5dce25"))).get_JsonDetails(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentToken New(HSTRING paymentMethodId)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentTokenFactory);
		Windows.ApplicationModel.Payments.PaymentToken _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentTokenFactory)factory.asInterface(uuid("988cd7aa-4753-4904-8373-dd7b08b995c1"))).abi_Create(paymentMethodId, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Payments.PaymentToken New(HSTRING paymentMethodId, HSTRING jsonDetails)
	{
		auto factory = factory!(Windows.ApplicationModel.Payments.IPaymentTokenFactory);
		Windows.ApplicationModel.Payments.PaymentToken _ret;
		Debug.OK((cast(Windows.ApplicationModel.Payments.IPaymentTokenFactory)factory.asInterface(uuid("988cd7aa-4753-4904-8373-dd7b08b995c1"))).abi_CreateWithJsonDetails(paymentMethodId, jsonDetails, &_ret));
		return _ret;
	}
}

enum PaymentOptionPresence
{
	None = 0,
	Optional = 1,
	Required = 2
}

enum PaymentRequestChangeKind
{
	ShippingOption = 0,
	ShippingAddress = 1
}

enum PaymentRequestCompletionStatus
{
	Succeeded = 0,
	Failed = 1,
	Unknown = 2
}

enum PaymentRequestStatus
{
	Succeeded = 0,
	Failed = 1,
	Canceled = 2
}

enum PaymentShippingType
{
	Shipping = 0,
	Delivery = 1,
	Pickup = 2
}