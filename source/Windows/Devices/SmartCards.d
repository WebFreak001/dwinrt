module Windows.Devices.SmartCards;

import dwinrt;

@uuid("138d5e40-f3bc-4a5c-b41d-4b4ef684e237")
interface SmartCardPinResetHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Devices.SmartCards.SmartCardProvisioning sender, Windows.Devices.SmartCards.SmartCardPinResetRequest request);
}

@uuid("18bbef98-f18b-4dd3-b118-dfb2c8e23cc6")
@WinrtFactory("Windows.Devices.SmartCards.CardAddedEventArgs")
interface ICardAddedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SmartCard(Windows.Devices.SmartCards.SmartCard* return_value);
}

@uuid("15331aaf-22d7-4945-afc9-03b46f42a6cd")
@WinrtFactory("Windows.Devices.SmartCards.CardRemovedEventArgs")
interface ICardRemovedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SmartCard(Windows.Devices.SmartCards.SmartCard* return_value);
}

@uuid("1b718871-6434-43f4-b55a-6a29623870aa")
@WinrtFactory("Windows.Devices.SmartCards.SmartCard")
interface ISmartCard : IInspectable
{
extern(Windows):
	HRESULT get_Reader(Windows.Devices.SmartCards.SmartCardReader* return_value);
	HRESULT abi_GetStatusAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardStatus)* return_result);
	HRESULT abi_GetAnswerToResetAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_result);
}

@uuid("192a5319-c9c4-4947-81cc-44794a61ef91")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardChallengeContext")
interface ISmartCardChallengeContext_Base : IInspectable
{
extern(Windows):
	HRESULT get_Challenge(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_VerifyResponseAsync(Windows.Storage.Streams.IBuffer response, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_ProvisionAsync(Windows.Storage.Streams.IBuffer response, bool formatCard, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ProvisionAsync(Windows.Storage.Streams.IBuffer response, bool formatCard, GUID newCardId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ChangeAdministrativeKeyAsync(Windows.Storage.Streams.IBuffer response, Windows.Storage.Streams.IBuffer newAdministrativeKey, Windows.Foundation.IAsyncAction* return_result);
}
@uuid("192a5319-c9c4-4947-81cc-44794a61ef91")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardChallengeContext")
interface ISmartCardChallengeContext : ISmartCardChallengeContext_Base, Windows.Foundation.IClosable {}

@uuid("2fdf87e5-028d-491e-a058-3382c3986f40")
@WinrtFactory("Windows.Devices.SmartCards.SmartCard")
interface ISmartCardConnect : IInspectable
{
extern(Windows):
	HRESULT abi_ConnectAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardConnection)* return_result);
}

@uuid("7edb991a-a81a-47bc-a649-156be6b7f231")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardConnection")
interface ISmartCardConnection_Base : IInspectable
{
extern(Windows):
	HRESULT abi_TransmitAsync(Windows.Storage.Streams.IBuffer command, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_result);
}
@uuid("7edb991a-a81a-47bc-a649-156be6b7f231")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardConnection")
interface ISmartCardConnection : ISmartCardConnection_Base, Windows.Foundation.IClosable {}

@uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardPinPolicy")
interface ISmartCardPinPolicy : IInspectable
{
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
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("12fe3c4d-5fb9-4e8e-9ff6-61f475124fef")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardPinResetRequest")
interface ISmartCardPinResetRequest : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetAuthorityKeyContainerNameAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
}

@uuid("13882848-0d13-4e70-9735-51daeca5254f")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardProvisioning")
interface ISmartCardProvisioningStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromSmartCardAsync(Windows.Devices.SmartCards.SmartCard card, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning)* return_result);
	HRESULT abi_RequestVirtualSmartCardCreationAsync(HSTRING friendlyName, Windows.Storage.Streams.IBuffer administrativeKey, Windows.Devices.SmartCards.SmartCardPinPolicy pinPolicy, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning)* return_result);
	HRESULT abi_RequestVirtualSmartCardCreationAsync(HSTRING friendlyName, Windows.Storage.Streams.IBuffer administrativeKey, Windows.Devices.SmartCards.SmartCardPinPolicy pinPolicy, GUID cardId, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning)* return_result);
	HRESULT abi_RequestVirtualSmartCardDeletionAsync(Windows.Devices.SmartCards.SmartCard card, Windows.Foundation.IAsyncOperation!(bool)* return_result);
}

@uuid("3447c6a8-c9a0-4bd6-b50d-251f4e8d3a62")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardProvisioning")
interface ISmartCardProvisioningStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAttestedVirtualSmartCardCreationAsync(HSTRING friendlyName, Windows.Storage.Streams.IBuffer administrativeKey, Windows.Devices.SmartCards.SmartCardPinPolicy pinPolicy, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning)* return_result);
	HRESULT abi_RequestAttestedVirtualSmartCardCreationAsync(HSTRING friendlyName, Windows.Storage.Streams.IBuffer administrativeKey, Windows.Devices.SmartCards.SmartCardPinPolicy pinPolicy, GUID cardId, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning)* return_result);
}

@uuid("1074b4e0-54c2-4df0-817a-14c14378f06c")
@WinrtFactory("Windows.Devices.SmartCards.SmartCardReader")
interface ISmartCardReader : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_selector);
	HRESULT abi_GetDeviceSelector(Windows.Devices.SmartCards.SmartCardReaderKind kind, HSTRING* return_selector);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardReader)* return_result);
}

interface CardAddedEventArgs : Windows.Devices.SmartCards.ICardAddedEventArgs
{
extern(Windows):
	final Windows.Devices.SmartCards.SmartCard SmartCard()
	{
		Windows.Devices.SmartCards.SmartCard _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ICardAddedEventArgs)this.asInterface(uuid("18bbef98-f18b-4dd3-b118-dfb2c8e23cc6"))).get_SmartCard(&_ret));
		return _ret;
	}
}

interface CardRemovedEventArgs : Windows.Devices.SmartCards.ICardRemovedEventArgs
{
extern(Windows):
	final Windows.Devices.SmartCards.SmartCard SmartCard()
	{
		Windows.Devices.SmartCards.SmartCard _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ICardRemovedEventArgs)this.asInterface(uuid("15331aaf-22d7-4945-afc9-03b46f42a6cd"))).get_SmartCard(&_ret));
		return _ret;
	}
}

interface SmartCard : Windows.Devices.SmartCards.ISmartCard, Windows.Devices.SmartCards.ISmartCardConnect
{
extern(Windows):
	final Windows.Devices.SmartCards.SmartCardReader Reader()
	{
		Windows.Devices.SmartCards.SmartCardReader _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCard)this.asInterface(uuid("1b718871-6434-43f4-b55a-6a29623870aa"))).get_Reader(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardStatus) GetStatusAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardStatus) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCard)this.asInterface(uuid("1b718871-6434-43f4-b55a-6a29623870aa"))).abi_GetStatusAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) GetAnswerToResetAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCard)this.asInterface(uuid("1b718871-6434-43f4-b55a-6a29623870aa"))).abi_GetAnswerToResetAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardConnection) ConnectAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardConnection) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardConnect)this.asInterface(uuid("2fdf87e5-028d-491e-a058-3382c3986f40"))).abi_ConnectAsync(&_ret));
		return _ret;
	}
}

interface SmartCardChallengeContext : Windows.Devices.SmartCards.ISmartCardChallengeContext, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Challenge()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardChallengeContext)this.asInterface(uuid("192a5319-c9c4-4947-81cc-44794a61ef91"))).get_Challenge(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) VerifyResponseAsync(Windows.Storage.Streams.IBuffer response)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardChallengeContext)this.asInterface(uuid("192a5319-c9c4-4947-81cc-44794a61ef91"))).abi_VerifyResponseAsync(response, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ProvisionAsync(Windows.Storage.Streams.IBuffer response, bool formatCard)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardChallengeContext)this.asInterface(uuid("192a5319-c9c4-4947-81cc-44794a61ef91"))).abi_ProvisionAsync(response, formatCard, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ProvisionAsync(Windows.Storage.Streams.IBuffer response, bool formatCard, GUID newCardId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardChallengeContext)this.asInterface(uuid("192a5319-c9c4-4947-81cc-44794a61ef91"))).abi_ProvisionAsync(response, formatCard, newCardId, &_ret));
		return _ret;
	}
	alias ProvisionAsync = ProvisionAsyncWithNewCardId;
	final Windows.Foundation.IAsyncAction ChangeAdministrativeKeyAsync(Windows.Storage.Streams.IBuffer response, Windows.Storage.Streams.IBuffer newAdministrativeKey)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardChallengeContext)this.asInterface(uuid("192a5319-c9c4-4947-81cc-44794a61ef91"))).abi_ChangeAdministrativeKeyAsync(response, newAdministrativeKey, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface SmartCardConnection : Windows.Devices.SmartCards.ISmartCardConnection, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) TransmitAsync(Windows.Storage.Streams.IBuffer command)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardConnection)this.asInterface(uuid("7edb991a-a81a-47bc-a649-156be6b7f231"))).abi_TransmitAsync(command, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface SmartCardPinPolicy : Windows.Devices.SmartCards.ISmartCardPinPolicy
{
extern(Windows):
	final UINT32 MinLength()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).get_MinLength(&_ret));
		return _ret;
	}
	final void MinLength(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).set_MinLength(value));
	}
	final UINT32 MaxLength()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).get_MaxLength(&_ret));
		return _ret;
	}
	final void MaxLength(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).set_MaxLength(value));
	}
	final Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption UppercaseLetters()
	{
		Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).get_UppercaseLetters(&_ret));
		return _ret;
	}
	final void UppercaseLetters(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption value)
	{
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).set_UppercaseLetters(value));
	}
	final Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption LowercaseLetters()
	{
		Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).get_LowercaseLetters(&_ret));
		return _ret;
	}
	final void LowercaseLetters(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption value)
	{
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).set_LowercaseLetters(value));
	}
	final Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption Digits()
	{
		Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).get_Digits(&_ret));
		return _ret;
	}
	final void Digits(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption value)
	{
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).set_Digits(value));
	}
	final Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption SpecialCharacters()
	{
		Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).get_SpecialCharacters(&_ret));
		return _ret;
	}
	final void SpecialCharacters(Windows.Devices.SmartCards.SmartCardPinCharacterPolicyOption value)
	{
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinPolicy)this.asInterface(uuid("183ce184-4db6-4841-ac9e-2ac1f39b7304"))).set_SpecialCharacters(value));
	}
	static SmartCardPinPolicy New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SmartCardPinPolicy).abi_ActivateInstance(&ret));
		return cast(SmartCardPinPolicy) ret;
	}
}

interface SmartCardPinResetDeferral : Windows.Devices.SmartCards.ISmartCardPinResetDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinResetDeferral)this.asInterface(uuid("18c94aac-7805-4004-85e4-bbefac8f6884"))).abi_Complete());
	}
}

interface SmartCardPinResetRequest : Windows.Devices.SmartCards.ISmartCardPinResetRequest
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Challenge()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinResetRequest)this.asInterface(uuid("12fe3c4d-5fb9-4e8e-9ff6-61f475124fef"))).get_Challenge(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Deadline()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinResetRequest)this.asInterface(uuid("12fe3c4d-5fb9-4e8e-9ff6-61f475124fef"))).get_Deadline(&_ret));
		return _ret;
	}
	final Windows.Devices.SmartCards.SmartCardPinResetDeferral GetDeferral()
	{
		Windows.Devices.SmartCards.SmartCardPinResetDeferral _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinResetRequest)this.asInterface(uuid("12fe3c4d-5fb9-4e8e-9ff6-61f475124fef"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final void SetResponse(Windows.Storage.Streams.IBuffer response)
	{
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardPinResetRequest)this.asInterface(uuid("12fe3c4d-5fb9-4e8e-9ff6-61f475124fef"))).abi_SetResponse(response));
	}
}

interface SmartCardProvisioning : Windows.Devices.SmartCards.ISmartCardProvisioning, Windows.Devices.SmartCards.ISmartCardProvisioning2
{
extern(Windows):
	final Windows.Devices.SmartCards.SmartCard SmartCard()
	{
		Windows.Devices.SmartCards.SmartCard _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardProvisioning)this.asInterface(uuid("19eeedbd-1fab-477c-b712-1a2c5af1fd6e"))).get_SmartCard(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(GUID) GetIdAsync()
	{
		Windows.Foundation.IAsyncOperation!(GUID) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardProvisioning)this.asInterface(uuid("19eeedbd-1fab-477c-b712-1a2c5af1fd6e"))).abi_GetIdAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) GetNameAsync()
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardProvisioning)this.asInterface(uuid("19eeedbd-1fab-477c-b712-1a2c5af1fd6e"))).abi_GetNameAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardChallengeContext) GetChallengeContextAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardChallengeContext) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardProvisioning)this.asInterface(uuid("19eeedbd-1fab-477c-b712-1a2c5af1fd6e"))).abi_GetChallengeContextAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestPinChangeAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardProvisioning)this.asInterface(uuid("19eeedbd-1fab-477c-b712-1a2c5af1fd6e"))).abi_RequestPinChangeAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestPinResetAsync(Windows.Devices.SmartCards.SmartCardPinResetHandler handler)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardProvisioning)this.asInterface(uuid("19eeedbd-1fab-477c-b712-1a2c5af1fd6e"))).abi_RequestPinResetAsync(handler, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) GetAuthorityKeyContainerNameAsync()
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardProvisioning2)this.asInterface(uuid("10fd28eb-3f79-4b66-9b7c-11c149b7d0bc"))).abi_GetAuthorityKeyContainerNameAsync(&_ret));
		return _ret;
	}

	private static Windows.Devices.SmartCards.ISmartCardProvisioningStatics _staticInstance;
	public static Windows.Devices.SmartCards.ISmartCardProvisioningStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.SmartCards.ISmartCardProvisioningStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning) FromSmartCardAsync(Windows.Devices.SmartCards.SmartCard card)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning) _ret;
		Debug.OK(staticInstance.abi_FromSmartCardAsync(card, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning) RequestVirtualSmartCardCreationAsync(HSTRING friendlyName, Windows.Storage.Streams.IBuffer administrativeKey, Windows.Devices.SmartCards.SmartCardPinPolicy pinPolicy)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning) _ret;
		Debug.OK(staticInstance.abi_RequestVirtualSmartCardCreationAsync(friendlyName, administrativeKey, pinPolicy, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning) RequestVirtualSmartCardCreationAsync(HSTRING friendlyName, Windows.Storage.Streams.IBuffer administrativeKey, Windows.Devices.SmartCards.SmartCardPinPolicy pinPolicy, GUID cardId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardProvisioning) _ret;
		Debug.OK(staticInstance.abi_RequestVirtualSmartCardCreationAsync(friendlyName, administrativeKey, pinPolicy, cardId, &_ret));
		return _ret;
	}
	alias RequestVirtualSmartCardCreationAsync = RequestVirtualSmartCardCreationAsyncWithCardId;
	static Windows.Foundation.IAsyncOperation!(bool) RequestVirtualSmartCardDeletionAsync(Windows.Devices.SmartCards.SmartCard card)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_RequestVirtualSmartCardDeletionAsync(card, &_ret));
		return _ret;
	}
}

interface SmartCardReader : Windows.Devices.SmartCards.ISmartCardReader
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardReader)this.asInterface(uuid("1074b4e0-54c2-4df0-817a-14c14378f06c"))).get_DeviceId(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardReader)this.asInterface(uuid("1074b4e0-54c2-4df0-817a-14c14378f06c"))).get_Name(&_ret));
		return _ret;
	}
	final Windows.Devices.SmartCards.SmartCardReaderKind Kind()
	{
		Windows.Devices.SmartCards.SmartCardReaderKind _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardReader)this.asInterface(uuid("1074b4e0-54c2-4df0-817a-14c14378f06c"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardReaderStatus) GetStatusAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardReaderStatus) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardReader)this.asInterface(uuid("1074b4e0-54c2-4df0-817a-14c14378f06c"))).abi_GetStatusAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.SmartCards.SmartCard)) FindAllCardsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.SmartCards.SmartCard)) _ret;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardReader)this.asInterface(uuid("1074b4e0-54c2-4df0-817a-14c14378f06c"))).abi_FindAllCardsAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCardAdded(void delegate(Windows.Devices.SmartCards.SmartCardReader, Windows.Devices.SmartCards.CardAddedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardReader)this.asInterface(uuid("1074b4e0-54c2-4df0-817a-14c14378f06c"))).add_CardAdded(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.SmartCards.SmartCardReader, Windows.Devices.SmartCards.CardAddedEventArgs), Windows.Devices.SmartCards.SmartCardReader, Windows.Devices.SmartCards.CardAddedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCardAdded(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardReader)this.asInterface(uuid("1074b4e0-54c2-4df0-817a-14c14378f06c"))).remove_CardAdded(token));
	}
	final EventRegistrationToken OnCardRemoved(void delegate(Windows.Devices.SmartCards.SmartCardReader, Windows.Devices.SmartCards.CardRemovedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardReader)this.asInterface(uuid("1074b4e0-54c2-4df0-817a-14c14378f06c"))).add_CardRemoved(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.SmartCards.SmartCardReader, Windows.Devices.SmartCards.CardRemovedEventArgs), Windows.Devices.SmartCards.SmartCardReader, Windows.Devices.SmartCards.CardRemovedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCardRemoved(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.SmartCards.ISmartCardReader)this.asInterface(uuid("1074b4e0-54c2-4df0-817a-14c14378f06c"))).remove_CardRemoved(token));
	}

	private static Windows.Devices.SmartCards.ISmartCardReaderStatics _staticInstance;
	public static Windows.Devices.SmartCards.ISmartCardReaderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.SmartCards.ISmartCardReaderStatics);
		return _staticInstance;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector(Windows.Devices.SmartCards.SmartCardReaderKind kind)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(kind, &_ret));
		return _ret;
	}
	alias GetDeviceSelector = GetDeviceSelectorWithKind;
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardReader) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.SmartCards.SmartCardReader) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
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