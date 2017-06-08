module Windows.Devices.SmartCards;

import dwinrt;

@uuid("138d5e40-f3bc-4a5c-b41d-4b4ef684e237")
interface SmartCardPinResetHandler
{
	HRESULT abi_Invoke(Windows.Devices.SmartCards.SmartCardProvisioning sender, Windows.Devices.SmartCards.SmartCardPinResetRequest request);
}

@uuid("18bbef98-f18b-4dd3-b118-dfb2c8e23cc6")
@WinrtFactory("Windows.Devices.SmartCards.CardAddedEventArgs")
interface ICardAddedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SmartCard(Windows.Devices.SmartCards.SmartCard* return_value);
}

@uuid("15331aaf-22d7-4945-afc9-03b46f42a6cd")
@WinrtFactory("Windows.Devices.SmartCards.CardRemovedEventArgs")
interface ICardRemovedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SmartCard(Windows.Devices.SmartCards.SmartCard* return_value);
}

@uuid("1b718871-6434-43f4-b55a-6a29623870aa")
@WinrtFactory("Windows.Devices.SmartCards.SmartCard")
interface ISmartCard : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reader(Windows.Devices.SmartCards.SmartCardReader* return_value);
	HRESULT abi_GetStatusAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardStatus)* return_result);
	HRESULT abi_GetAnswerToResetAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_result);
}

@uuid("192a5319-c9c4-4947-81cc-44794a61ef91")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardChallengeContext")
interface ISmartCardChallengeContext : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Challenge(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_VerifyResponseAsync(Windows.Storage.Streams.IBuffer response, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_ProvisionAsync(Windows.Storage.Streams.IBuffer response, bool formatCard, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ProvisionAsyncWithNewCardId(Windows.Storage.Streams.IBuffer response, bool formatCard, GUID newCardId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ChangeAdministrativeKeyAsync(Windows.Storage.Streams.IBuffer response, Windows.Storage.Streams.IBuffer newAdministrativeKey, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("2fdf87e5-028d-491e-a058-3382c3986f40")
@WinrtFactory("Windows.Devices.SmartCards.SmartCard")
interface ISmartCardConnect : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ConnectAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardConnection)* return_result);
}

@uuid("7edb991a-a81a-47bc-a649-156be6b7f231")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardConnection")
interface ISmartCardConnection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TransmitAsync(Windows.Storage.Streams.IBuffer command, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_result);
}

@uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardPinPolicy")
interface ISmartCardPinPolicy : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MinLength(UINT32* return_value);
	HRESULT set_MinLength(UINT32 value);
	HRESULT get_MaxLength(UINT32* return_value);
	HRESULT set_MaxLength(UINT32 value);
	HRESULT get_UppercaseLetters(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption* return_value);
	HRESULT set_UppercaseLetters(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption value);
	HRESULT get_LowercaseLetters(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption* return_value);
	HRESULT set_LowercaseLetters(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption value);
	HRESULT get_Digits(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption* return_value);
	HRESULT set_Digits(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption value);
	HRESULT get_SpecialCharacters(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption* return_value);
	HRESULT set_SpecialCharacters(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption value);
}

@uuid("18c94aac-7805-4004-85e4-bbefac8f6884")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardPinResetDeferral")
interface ISmartCardPinResetDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("12fe3c4d-5fb9-4e8e-9ff6-61f475124fef")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardPinResetRequest")
interface ISmartCardPinResetRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Challenge(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Deadline(Windows.Foundation.DateTime* return_value);
	HRESULT abi_GetDeferral(Windows.Devices.SmartCards.SmartCardPinResetDeferral* return_result);
	HRESULT abi_SetResponse(Windows.Storage.Streams.IBuffer response);
}

@uuid("19eeedbd-1fab-477c-b712-1a2c5af1fd6e")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardProvisioning")
interface ISmartCardProvisioning : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SmartCard(Windows.Devices.SmartCards.SmartCard* return_value);
	HRESULT abi_GetIdAsync(Windows.Foundation.IAsyncOperation!(GUID)* return_result);
	HRESULT abi_GetNameAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_GetChallengeContextAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardChallengeContext)* return_result);
	HRESULT abi_RequestPinChangeAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_RequestPinResetAsync(Windows.Devices.SmartCards.SmartCardPinResetHandler handler, Windows.Foundation.IAsyncOperation!(bool)* return_result);
}

@uuid("10fd28eb-3f79-4b66-9b7c-11c149b7d0bc")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardProvisioning")
interface ISmartCardProvisioning2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAuthorityKeyContainerNameAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
}

@uuid("13882848-0d13-4e70-9735-51daeca5254f")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardProvisioning")
interface ISmartCardProvisioningStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromSmartCardAsync(Windows.Devices.SmartCards.SmartCard card, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning)* return_result);
	HRESULT abi_RequestVirtualSmartCardCreationAsync(HSTRING friendlyName, Windows.Storage.Streams.IBuffer administrativeKey, Windows.Devices.SmartCards.SmartCardPinPolicy pinPolicy, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning)* return_result);
	HRESULT abi_RequestVirtualSmartCardCreationAsyncWithCardId(HSTRING friendlyName, Windows.Storage.Streams.IBuffer administrativeKey, Windows.Devices.SmartCards.SmartCardPinPolicy pinPolicy, GUID cardId, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning)* return_result);
	HRESULT abi_RequestVirtualSmartCardDeletionAsync(Windows.Devices.SmartCards.SmartCard card, Windows.Foundation.IAsyncOperation!(bool)* return_result);
}

@uuid("3447c6a8-c9a0-4bd6-b50d-251f4e8d3a62")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardProvisioning")
interface ISmartCardProvisioningStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestAttestedVirtualSmartCardCreationAsync(HSTRING friendlyName, Windows.Storage.Streams.IBuffer administrativeKey, Windows.Devices.SmartCards.SmartCardPinPolicy pinPolicy, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning)* return_result);
	HRESULT abi_RequestAttestedVirtualSmartCardCreationAsyncWithCardId(HSTRING friendlyName, Windows.Storage.Streams.IBuffer administrativeKey, Windows.Devices.SmartCards.SmartCardPinPolicy pinPolicy, GUID cardId, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning)* return_result);
}

@uuid("1074b4e0-54c2-4df0-817a-14c14378f06c")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardReader")
interface ISmartCardReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Kind(Windows.Devices.SmartCards.SmartCardReaderKind* return_value);
	HRESULT abi_GetStatusAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardReaderStatus)* return_result);
	HRESULT abi_FindAllCardsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.SmartCards.SmartCard))* return_result);
	HRESULT add_CardAdded(Windows.Foundation.TypedEventHandler!(Windows.Devices.SmartCards.SmartCardReader, Windows.Devices.SmartCards.CardAddedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CardAdded(EventRegistrationToken token);
	HRESULT add_CardRemoved(Windows.Foundation.TypedEventHandler!(Windows.Devices.SmartCards.SmartCardReader, Windows.Devices.SmartCards.CardRemovedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CardRemoved(EventRegistrationToken token);
}

@uuid("103c04e1-a1ca-48f2-a281-5b6f669af107")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardReader")
interface ISmartCardReaderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_selector);
	HRESULT abi_GetDeviceSelectorWithKind(Windows.Devices.SmartCards.SmartCardReaderKind kind, HSTRING* return_selector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardReader)* return_result);
}

interface CardAddedEventArgs
{
}

interface CardRemovedEventArgs
{
}

interface SmartCard
{
}

interface SmartCardChallengeContext
{
}

interface SmartCardConnection
{
}

interface SmartCardPinPolicy
{
}

interface SmartCardPinResetDeferral
{
}

interface SmartCardPinResetRequest
{
}

interface SmartCardProvisioning
{
}

interface SmartCardReader
{
}

enum SmartCardPinCharacterPolicyOption
{
	Allow = 0,
	RequireAtLeastOne = 1,
	Disallow = 2
}

enum SmartCardReaderKind
{
	Any = 0,
	Generic = 1,
	Tpm = 2,
	Nfc = 3,
	Uicc = 4,
	EmbeddedSE = 5
}

enum SmartCardReaderStatus
{
	Disconnected = 0,
	Ready = 1,
	Exclusive = 2
}

enum SmartCardStatus
{
	Disconnected = 0,
	Ready = 1,
	Shared = 2,
	Exclusive = 3,
	Unresponsive = 4
}