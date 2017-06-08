module Windows.ApplicationModel.Payments;

import dwinrt;

@uuid("5f2264e9-6f3a-4166-a018-0a0b06bb32b5")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentAddress")
interface IPaymentAddress : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING value, HSTRING currency, Windows.ApplicationModel.Payments.PaymentCurrencyAmount* return_result);
	HRESULT abi_CreateWithCurrencySystem(HSTRING value, HSTRING currency, HSTRING currencySystem, Windows.ApplicationModel.Payments.PaymentCurrencyAmount* return_result);
}

@uuid("53bb2d7d-e0eb-4053-8eae-ce7c48e02945")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentDetails")
interface IPaymentDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.ApplicationModel.Payments.PaymentItem total, Windows.ApplicationModel.Payments.PaymentDetails* return_result);
	HRESULT abi_CreateWithDisplayItems(Windows.ApplicationModel.Payments.PaymentItem total, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentItem) displayItems, Windows.ApplicationModel.Payments.PaymentDetails* return_result);
}

@uuid("be1c7d65-4323-41d7-b305-dfcb765f69de")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentDetailsModifier")
interface IPaymentDetailsModifier : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentItem total, Windows.ApplicationModel.Payments.PaymentDetailsModifier* return_result);
	HRESULT abi_CreateWithAdditionalDisplayItems(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentItem total, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentItem) additionalDisplayItems, Windows.ApplicationModel.Payments.PaymentDetailsModifier* return_result);
	HRESULT abi_CreateWithAdditionalDisplayItemsAndJsonData(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentItem total, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentItem) additionalDisplayItems, HSTRING jsonData, Windows.ApplicationModel.Payments.PaymentDetailsModifier* return_result);
}

@uuid("685ac88b-79b2-4b76-9e03-a876223dfe72")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentItem")
interface IPaymentItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount, Windows.ApplicationModel.Payments.PaymentItem* return_result);
}

@uuid("fb0ee829-ec0c-449a-83da-7ae3073365a2")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentMediator")
interface IPaymentMediator : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetSupportedMethodIdsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(HSTRING))* return_result);
	HRESULT abi_SubmitPaymentRequestAsync(Windows.ApplicationModel.Payments.PaymentRequest paymentRequest, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestSubmitResult)* return_result);
	HRESULT abi_SubmitPaymentRequestWithChangeHandlerAsync(Windows.ApplicationModel.Payments.PaymentRequest paymentRequest, Windows.ApplicationModel.Payments.PaymentRequestChangedHandler* changeHandler, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Payments.PaymentRequestSubmitResult)* return_result);
}

@uuid("63445050-0e94-4ed6-aacb-e6012bd327a7")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentMerchantInfo")
interface IPaymentMerchantInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PackageFullName(HSTRING* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
}

@uuid("9e89ced3-ccb7-4167-a8ec-e10ae96dbcd1")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentMerchantInfo")
interface IPaymentMerchantInfoFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Uri uri, Windows.ApplicationModel.Payments.PaymentMerchantInfo* return_result);
}

@uuid("d1d3caf4-de98-4129-b1b7-c3ad86237bf4")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentMethodData")
interface IPaymentMethodData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SupportedMethodIds(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_JsonData(HSTRING* return_value);
}

@uuid("8addd27f-9baa-4a82-8342-a8210992a36b")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentMethodData")
interface IPaymentMethodDataFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, Windows.ApplicationModel.Payments.PaymentMethodData* return_result);
	HRESULT abi_CreateWithJsonData(Windows.Foundation.Collections.IIterable!(HSTRING) supportedMethodIds, HSTRING jsonData, Windows.ApplicationModel.Payments.PaymentMethodData* return_result);
}

@uuid("aaa30854-1f2b-4365-8251-01b58915a5bc")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentOptions")
interface IPaymentOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(bool changeAcceptedByMerchant, Windows.ApplicationModel.Payments.PaymentRequestChangedResult* return_result);
	HRESULT abi_CreateWithPaymentDetails(bool changeAcceptedByMerchant, Windows.ApplicationModel.Payments.PaymentDetails updatedPaymentDetails, Windows.ApplicationModel.Payments.PaymentRequestChangedResult* return_result);
}

@uuid("3e8a79dc-6b74-42d3-b103-f0de35fb1848")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentRequest")
interface IPaymentRequestFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.ApplicationModel.Payments.PaymentDetails details, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentMethodData) methodData, Windows.ApplicationModel.Payments.PaymentRequest* return_result);
	HRESULT abi_CreateWithMerchantInfo(Windows.ApplicationModel.Payments.PaymentDetails details, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentMethodData) methodData, Windows.ApplicationModel.Payments.PaymentMerchantInfo merchantInfo, Windows.ApplicationModel.Payments.PaymentRequest* return_result);
	HRESULT abi_CreateWithMerchantInfoAndOptions(Windows.ApplicationModel.Payments.PaymentDetails details, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Payments.PaymentMethodData) methodData, Windows.ApplicationModel.Payments.PaymentMerchantInfo merchantInfo, Windows.ApplicationModel.Payments.PaymentOptions options, Windows.ApplicationModel.Payments.PaymentRequest* return_result);
}

@uuid("7b9c3912-30f2-4e90-b249-8ce7d78ffe56")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentRequestSubmitResult")
interface IPaymentRequestSubmitResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.Payments.PaymentRequestStatus* return_value);
	HRESULT get_Response(Windows.ApplicationModel.Payments.PaymentResponse* return_value);
}

@uuid("e1389457-8bd2-4888-9fa8-97985545108e")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentResponse")
interface IPaymentResponse : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount, Windows.ApplicationModel.Payments.PaymentShippingOption* return_result);
	HRESULT abi_CreateWithSelected(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount, bool selected, Windows.ApplicationModel.Payments.PaymentShippingOption* return_result);
	HRESULT abi_CreateWithSelectedAndTag(HSTRING label, Windows.ApplicationModel.Payments.PaymentCurrencyAmount amount, bool selected, HSTRING tag, Windows.ApplicationModel.Payments.PaymentShippingOption* return_result);
}

@uuid("bbcac013-ccd0-41f2-b2a1-0a2e4b5dce25")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentToken")
interface IPaymentToken : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PaymentMethodId(HSTRING* return_value);
	HRESULT get_JsonDetails(HSTRING* return_value);
}

@uuid("988cd7aa-4753-4904-8373-dd7b08b995c1")
@WinrtFactory("Windows.ApplicationModel.Payments.PaymentToken")
interface IPaymentTokenFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING paymentMethodId, Windows.ApplicationModel.Payments.PaymentToken* return_result);
	HRESULT abi_CreateWithJsonDetails(HSTRING paymentMethodId, HSTRING jsonDetails, Windows.ApplicationModel.Payments.PaymentToken* return_result);
}

interface PaymentAddress
{
}

interface PaymentCurrencyAmount
{
}

interface PaymentDetails
{
}

interface PaymentDetailsModifier
{
}

interface PaymentItem
{
}

interface PaymentMediator
{
}

interface PaymentMerchantInfo
{
}

interface PaymentMethodData
{
}

interface PaymentOptions
{
}

interface PaymentRequest
{
}

interface PaymentRequestChangedArgs
{
}

interface PaymentRequestChangedResult
{
}

interface PaymentRequestSubmitResult
{
}

interface PaymentResponse
{
}

interface PaymentShippingOption
{
}

interface PaymentToken
{
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