module Windows.Devices.Sms;

import dwinrt;

struct SmsEncodedLength
{
	UINT32 SegmentCount;
	UINT32 CharacterCountLastSegment;
	UINT32 CharactersPerSegment;
	UINT32 ByteCountLastSegment;
	UINT32 BytesPerSegment;
}

@uuid("982b1162-3dd7-4618-af89-0c272d5d06d8")
interface SmsDeviceStatusChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Devices.Sms.SmsDevice sender);
}

@uuid("0b7ad409-ec2d-47ce-a253-732beeebcacd")
interface SmsMessageReceivedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Devices.Sms.SmsDevice sender, Windows.Devices.Sms.SmsMessageReceivedEventArgs e);
}

@uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54")
@WinrtFactory("Windows.Devices.Sms.SmsAppMessage")
interface ISmsAppMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_To(HSTRING* return_value);
	HRESULT set_To(HSTRING value);
	HRESULT get_From(HSTRING* return_value);
	HRESULT get_Body(HSTRING* return_value);
	HRESULT set_Body(HSTRING value);
	HRESULT get_CallbackNumber(HSTRING* return_value);
	HRESULT set_CallbackNumber(HSTRING value);
	HRESULT get_IsDeliveryNotificationEnabled(bool* return_value);
	HRESULT set_IsDeliveryNotificationEnabled(bool value);
	HRESULT get_RetryAttemptCount(INT32* return_value);
	HRESULT set_RetryAttemptCount(INT32 value);
	HRESULT get_Encoding(Windows.Devices.Sms.SmsEncoding* return_value);
	HRESULT set_Encoding(Windows.Devices.Sms.SmsEncoding value);
	HRESULT get_PortNumber(INT32* return_value);
	HRESULT set_PortNumber(INT32 value);
	HRESULT get_TeleserviceId(INT32* return_value);
	HRESULT set_TeleserviceId(INT32 value);
	HRESULT get_ProtocolId(INT32* return_value);
	HRESULT set_ProtocolId(INT32 value);
	HRESULT get_BinaryBody(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_BinaryBody(Windows.Storage.Streams.IBuffer value);
}

@uuid("5bf4e813-3b53-4c6e-b61a-d86a63755650")
interface ISmsBinaryMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	HRESULT get_Format(Windows.Devices.Sms.SmsDataFormat* return_value);
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	HRESULT set_Format(Windows.Devices.Sms.SmsDataFormat value);
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	HRESULT abi_GetData(UINT32* out___valueSize, BYTE** return_value);
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	HRESULT abi_SetData(UINT32 __valueSize, BYTE* value);
}

@uuid("75aebbf1-e4b7-4874-a09c-2956e592f957")
@WinrtFactory("Windows.Devices.Sms.SmsBroadcastMessage")
interface ISmsBroadcastMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_To(HSTRING* return_value);
	HRESULT get_Body(HSTRING* return_value);
	HRESULT get_Channel(INT32* return_value);
	HRESULT get_GeographicalScope(Windows.Devices.Sms.SmsGeographicalScope* return_value);
	HRESULT get_MessageCode(INT32* return_value);
	HRESULT get_UpdateNumber(INT32* return_value);
	HRESULT get_BroadcastType(Windows.Devices.Sms.SmsBroadcastType* return_value);
	HRESULT get_IsEmergencyAlert(bool* return_value);
	HRESULT get_IsUserPopupRequested(bool* return_value);
}

@uuid("091791ed-872b-4eec-9c72-ab11627b34ec")
interface ISmsDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	HRESULT abi_SendMessageAsync(Windows.Devices.Sms.ISmsMessage message, Windows.Devices.Sms.SendSmsMessageOperation* return_asyncInfo);
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	HRESULT abi_CalculateLength(Windows.Devices.Sms.SmsTextMessage message, Windows.Devices.Sms.SmsEncodedLength* return_encodedLength);
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	HRESULT get_AccountPhoneNumber(HSTRING* return_value);
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	HRESULT get_CellularClass(Windows.Devices.Sms.CellularClass* return_value);
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	HRESULT get_MessageStore(Windows.Devices.Sms.SmsDeviceMessageStore* return_value);
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	HRESULT get_DeviceStatus(Windows.Devices.Sms.SmsDeviceStatus* return_value);
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	HRESULT add_SmsMessageReceived(Windows.Devices.Sms.SmsMessageReceivedEventHandler eventHandler, EventRegistrationToken* return_eventCookie);
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	HRESULT remove_SmsMessageReceived(EventRegistrationToken eventCookie);
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	HRESULT add_SmsDeviceStatusChanged(Windows.Devices.Sms.SmsDeviceStatusChangedEventHandler eventHandler, EventRegistrationToken* return_eventCookie);
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	HRESULT remove_SmsDeviceStatusChanged(EventRegistrationToken eventCookie);
}

@uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47")
@WinrtFactory("Windows.Devices.Sms.SmsDevice2")
interface ISmsDevice2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SmscAddress(HSTRING* return_value);
	HRESULT set_SmscAddress(HSTRING value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_ParentDeviceId(HSTRING* return_value);
	HRESULT get_AccountPhoneNumber(HSTRING* return_value);
	HRESULT get_CellularClass(Windows.Devices.Sms.CellularClass* return_value);
	HRESULT get_DeviceStatus(Windows.Devices.Sms.SmsDeviceStatus* return_value);
	HRESULT abi_CalculateLength(Windows.Devices.Sms.ISmsMessageBase message, Windows.Devices.Sms.SmsEncodedLength* return_value);
	HRESULT abi_SendMessageAndGetResultAsync(Windows.Devices.Sms.ISmsMessageBase message, Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsSendMessageResult)* return_asyncInfo);
	HRESULT add_DeviceStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sms.SmsDevice2, IInspectable) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_DeviceStatusChanged(EventRegistrationToken eventCookie);
}

@uuid("65c78325-1031-491e-8fb6-ef9991afe363")
@WinrtFactory("Windows.Devices.Sms.SmsDevice2")
interface ISmsDevice2Statics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
	HRESULT abi_FromId(HSTRING deviceId, Windows.Devices.Sms.SmsDevice2* return_value);
	HRESULT abi_GetDefault(Windows.Devices.Sms.SmsDevice2* return_value);
	HRESULT abi_FromParentId(HSTRING parentDeviceId, Windows.Devices.Sms.SmsDevice2* return_value);
}

@uuid("9889f253-f188-4427-8d54-ce0c2423c5c1")
@WinrtFactory("Windows.Devices.Sms.SmsDeviceMessageStore")
interface ISmsDeviceMessageStore : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SmsDeviceMessageStore may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_DeleteMessageAsync(UINT32 messageId, Windows.Foundation.IAsyncAction* return_asyncInfo);
	deprecated("SmsDeviceMessageStore may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_DeleteMessagesAsync(Windows.Devices.Sms.SmsMessageFilter messageFilter, Windows.Foundation.IAsyncAction* return_asyncInfo);
	deprecated("SmsDeviceMessageStore may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_GetMessageAsync(UINT32 messageId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.ISmsMessage)* return_asyncInfo);
	deprecated("SmsDeviceMessageStore may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_GetMessagesAsync(Windows.Devices.Sms.SmsMessageFilter messageFilter, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage), INT32)* return_asyncInfo);
	deprecated("SmsDeviceMessageStore may be altered or unavailable for releases after Windows 10.")
	HRESULT get_MaxMessages(UINT32* return_value);
}

@uuid("f88d07ea-d815-4dd1-a234-4520ce4604a4")
@WinrtFactory("Windows.Devices.Sms.SmsDevice")
interface ISmsDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISmsDeviceStatics may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_GetDeviceSelector(HSTRING* return_phstrDeviceClassSelector);
	deprecated("ISmsDeviceStatics may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice)* return_asyncInfo);
	deprecated("ISmsDeviceStatics may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice)* return_asyncInfo);
}

@uuid("2ca11c87-0873-4caf-8a7d-bd471e8586d1")
@WinrtFactory("Windows.Devices.Sms.SmsDevice")
interface ISmsDeviceStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISmsDeviceStatics2 may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_FromNetworkAccountIdAsync(HSTRING networkAccountId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice)* return_asyncInfo);
}

@uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c")
@WinrtFactory("Windows.Devices.Sms.SmsFilterRule")
interface ISmsFilterRule : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MessageType(Windows.Devices.Sms.SmsMessageType* return_value);
	HRESULT get_ImsiPrefixes(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_DeviceIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_SenderNumbers(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_TextMessagePrefixes(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_PortNumbers(Windows.Foundation.Collections.IVector!(INT32)* return_value);
	HRESULT get_CellularClass(Windows.Devices.Sms.CellularClass* return_value);
	HRESULT set_CellularClass(Windows.Devices.Sms.CellularClass value);
	HRESULT get_ProtocolIds(Windows.Foundation.Collections.IVector!(INT32)* return_value);
	HRESULT get_TeleserviceIds(Windows.Foundation.Collections.IVector!(INT32)* return_value);
	HRESULT get_WapApplicationIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_WapContentTypes(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_BroadcastTypes(Windows.Foundation.Collections.IVector!(Windows.Devices.Sms.SmsBroadcastType)* return_value);
	HRESULT get_BroadcastChannels(Windows.Foundation.Collections.IVector!(INT32)* return_value);
}

@uuid("00c36508-6296-4f29-9aad-8920ceba3ce8")
@WinrtFactory("Windows.Devices.Sms.SmsFilterRule")
interface ISmsFilterRuleFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFilterRule(Windows.Devices.Sms.SmsMessageType messageType, Windows.Devices.Sms.SmsFilterRule* return_value);
}

@uuid("4e47eafb-79cd-4881-9894-55a4135b23fa")
@WinrtFactory("Windows.Devices.Sms.SmsFilterRules")
interface ISmsFilterRules : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ActionType(Windows.Devices.Sms.SmsFilterActionType* return_value);
	HRESULT get_Rules(Windows.Foundation.Collections.IVector!(Windows.Devices.Sms.SmsFilterRule)* return_value);
}

@uuid("a09924ed-6e2e-4530-9fde-465d02eed00e")
@WinrtFactory("Windows.Devices.Sms.SmsFilterRules")
interface ISmsFilterRulesFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFilterRules(Windows.Devices.Sms.SmsFilterActionType actionType, Windows.Devices.Sms.SmsFilterRules* return_value);
}

@uuid("ed3c5e28-6984-4b07-811d-8d5906ed3cea")
interface ISmsMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_MessageClass(Windows.Devices.Sms.SmsMessageClass* return_value);
}

@uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea")
interface ISmsMessageBase : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MessageType(Windows.Devices.Sms.SmsMessageType* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_CellularClass(Windows.Devices.Sms.CellularClass* return_value);
	HRESULT get_MessageClass(Windows.Devices.Sms.SmsMessageClass* return_value);
	HRESULT get_SimIccId(HSTRING* return_value);
}

@uuid("08e80a98-b8e5-41c1-a3d8-d3abfae22675")
@WinrtFactory("Windows.Devices.Sms.SmsMessageReceivedEventArgs")
interface ISmsMessageReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SmsMessageReceivedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_TextMessage(Windows.Devices.Sms.SmsTextMessage* return_value);
	deprecated("SmsMessageReceivedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_BinaryMessage(Windows.Devices.Sms.SmsBinaryMessage* return_value);
}

@uuid("2bcfcbd4-2657-4128-ad5f-e3877132bdb1")
@WinrtFactory("Windows.Devices.Sms.SmsMessageReceivedTriggerDetails")
interface ISmsMessageReceivedTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MessageType(Windows.Devices.Sms.SmsMessageType* return_value);
	HRESULT get_TextMessage(Windows.Devices.Sms.SmsTextMessage2* return_value);
	HRESULT get_WapMessage(Windows.Devices.Sms.SmsWapMessage* return_value);
	HRESULT get_AppMessage(Windows.Devices.Sms.SmsAppMessage* return_value);
	HRESULT get_BroadcastMessage(Windows.Devices.Sms.SmsBroadcastMessage* return_value);
	HRESULT get_VoicemailMessage(Windows.Devices.Sms.SmsVoicemailMessage* return_value);
	HRESULT get_StatusMessage(Windows.Devices.Sms.SmsStatusMessage* return_value);
	HRESULT abi_Drop();
	HRESULT abi_Accept();
}

@uuid("1720503e-f34f-446b-83b3-0ff19923b409")
@WinrtFactory("Windows.Devices.Sms.SmsMessageRegistration")
interface ISmsMessageRegistration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT abi_Unregister();
	HRESULT add_MessageReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sms.SmsMessageRegistration, Windows.Devices.Sms.SmsMessageReceivedTriggerDetails) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_MessageReceived(EventRegistrationToken eventCookie);
}

@uuid("63a05464-2898-4778-a03c-6f994907d63a")
@WinrtFactory("Windows.Devices.Sms.SmsMessageRegistration")
interface ISmsMessageRegistrationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllRegistrations(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.SmsMessageRegistration)* return_value);
	HRESULT abi_Register(HSTRING id, Windows.Devices.Sms.SmsFilterRules filterRules, Windows.Devices.Sms.SmsMessageRegistration* return_value);
}

@uuid("5bb50f15-e46d-4c82-847d-5a0304c1d53d")
@WinrtFactory("Windows.Devices.Sms.SmsReceivedEventDetails")
interface ISmsReceivedEventDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SmsReceivedEventDetails may be altered or unavailable for releases after Windows 10. Instead, use SmsMessageReceivedTriggerDetails.")
	HRESULT get_DeviceId(HSTRING* return_value);
	deprecated("SmsReceivedEventDetails may be altered or unavailable for releases after Windows 10. Instead, use SmsMessageReceivedTriggerDetails.")
	HRESULT get_MessageIndex(UINT32* return_value);
}

@uuid("40e05c86-a7b4-4771-9ae7-0b5ffb12c03a")
@WinrtFactory("Windows.Devices.Sms.SmsReceivedEventDetails")
interface ISmsReceivedEventDetails2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SmsReceivedEventDetails may be altered or unavailable for releases after Windows 10. Instead, use SmsMessageReceivedTriggerDetails.")
	HRESULT get_MessageClass(Windows.Devices.Sms.SmsMessageClass* return_value);
	deprecated("SmsReceivedEventDetails may be altered or unavailable for releases after Windows 10. Instead, use SmsMessageReceivedTriggerDetails.")
	HRESULT get_BinaryMessage(Windows.Devices.Sms.SmsBinaryMessage* return_value);
}

@uuid("db139af2-78c9-4feb-9622-452328088d62")
@WinrtFactory("Windows.Devices.Sms.SmsSendMessageResult")
interface ISmsSendMessageResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsSuccessful(bool* return_value);
	HRESULT get_MessageReferenceNumbers(Windows.Foundation.Collections.IVectorView!(INT32)* return_value);
	HRESULT get_CellularClass(Windows.Devices.Sms.CellularClass* return_value);
	HRESULT get_ModemErrorCode(Windows.Devices.Sms.SmsModemErrorCode* return_value);
	HRESULT get_IsErrorTransient(bool* return_value);
	HRESULT get_NetworkCauseCode(INT32* return_value);
	HRESULT get_TransportFailureCause(INT32* return_value);
}

@uuid("e6d28342-b70b-4677-9379-c9783fdff8f4")
@WinrtFactory("Windows.Devices.Sms.SmsStatusMessage")
interface ISmsStatusMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_To(HSTRING* return_value);
	HRESULT get_From(HSTRING* return_value);
	HRESULT get_Body(HSTRING* return_value);
	HRESULT get_Status(INT32* return_value);
	HRESULT get_MessageReferenceNumber(INT32* return_value);
	HRESULT get_ServiceCenterTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_DischargeTime(Windows.Foundation.DateTime* return_value);
}

@uuid("d61c904c-a495-487f-9a6f-971548c5bc9f")
interface ISmsTextMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT get_PartReferenceId(UINT32* return_value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT get_PartNumber(UINT32* return_value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT get_PartCount(UINT32* return_value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT get_To(HSTRING* return_value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT set_To(HSTRING value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT get_From(HSTRING* return_value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT set_From(HSTRING value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT get_Body(HSTRING* return_value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT set_Body(HSTRING value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT get_Encoding(Windows.Devices.Sms.SmsEncoding* return_value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT set_Encoding(Windows.Devices.Sms.SmsEncoding value);
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	HRESULT abi_ToBinaryMessages(Windows.Devices.Sms.SmsDataFormat format, Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsBinaryMessage)* return_messages);
}

@uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d")
@WinrtFactory("Windows.Devices.Sms.SmsTextMessage2")
interface ISmsTextMessage2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_To(HSTRING* return_value);
	HRESULT set_To(HSTRING value);
	HRESULT get_From(HSTRING* return_value);
	HRESULT get_Body(HSTRING* return_value);
	HRESULT set_Body(HSTRING value);
	HRESULT get_Encoding(Windows.Devices.Sms.SmsEncoding* return_value);
	HRESULT set_Encoding(Windows.Devices.Sms.SmsEncoding value);
	HRESULT get_CallbackNumber(HSTRING* return_value);
	HRESULT set_CallbackNumber(HSTRING value);
	HRESULT get_IsDeliveryNotificationEnabled(bool* return_value);
	HRESULT set_IsDeliveryNotificationEnabled(bool value);
	HRESULT get_RetryAttemptCount(INT32* return_value);
	HRESULT set_RetryAttemptCount(INT32 value);
	HRESULT get_TeleserviceId(INT32* return_value);
	HRESULT get_ProtocolId(INT32* return_value);
}

@uuid("7f68c5ed-3ccc-47a3-8c55-380d3b010892")
@WinrtFactory("Windows.Devices.Sms.SmsTextMessage")
interface ISmsTextMessageStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISmsTextMessageStatics may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_FromBinaryMessage(Windows.Devices.Sms.SmsBinaryMessage binaryMessage, Windows.Devices.Sms.SmsTextMessage* return_textMessage);
	deprecated("ISmsTextMessageStatics may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_FromBinaryData(Windows.Devices.Sms.SmsDataFormat format, UINT32 __valueSize, BYTE* value, Windows.Devices.Sms.SmsTextMessage* return_textMessage);
}

@uuid("271aa0a6-95b1-44ff-bcb8-b8fdd7e08bc3")
@WinrtFactory("Windows.Devices.Sms.SmsVoicemailMessage")
interface ISmsVoicemailMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_To(HSTRING* return_value);
	HRESULT get_Body(HSTRING* return_value);
	HRESULT get_MessageCount(Windows.Foundation.IReference!(INT32)* return_value);
}

@uuid("cd937743-7a55-4d3b-9021-f22e022d09c5")
@WinrtFactory("Windows.Devices.Sms.SmsWapMessage")
interface ISmsWapMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_To(HSTRING* return_value);
	HRESULT get_From(HSTRING* return_value);
	HRESULT get_ApplicationId(HSTRING* return_value);
	HRESULT get_ContentType(HSTRING* return_value);
	HRESULT get_BinaryBody(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Headers(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
}

interface DeleteSmsMessageOperation : Windows.Foundation.IAsyncAction
{
}

interface DeleteSmsMessagesOperation : Windows.Foundation.IAsyncAction
{
}

interface GetSmsDeviceOperation : Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice)
{
}

interface GetSmsMessageOperation : Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.ISmsMessage)
{
}

interface GetSmsMessagesOperation : Windows.Foundation.IAsyncOperationWithProgress!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage), INT32)
{
}

interface SendSmsMessageOperation : Windows.Foundation.IAsyncAction
{
}

interface SmsAppMessage : Windows.Devices.Sms.ISmsAppMessage, Windows.Devices.Sms.ISmsMessageBase
{
}

interface SmsBinaryMessage : Windows.Devices.Sms.ISmsBinaryMessage, Windows.Devices.Sms.ISmsMessage
{
}

interface SmsBroadcastMessage : Windows.Devices.Sms.ISmsBroadcastMessage, Windows.Devices.Sms.ISmsMessageBase
{
}

interface SmsDevice : Windows.Devices.Sms.ISmsDevice
{
}

interface SmsDevice2 : Windows.Devices.Sms.ISmsDevice2
{
}

interface SmsDeviceMessageStore : Windows.Devices.Sms.ISmsDeviceMessageStore
{
}

interface SmsFilterRule : Windows.Devices.Sms.ISmsFilterRule
{
}

interface SmsFilterRules : Windows.Devices.Sms.ISmsFilterRules
{
}

interface SmsMessageReceivedEventArgs : Windows.Devices.Sms.ISmsMessageReceivedEventArgs
{
}

interface SmsMessageReceivedTriggerDetails : Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails
{
}

interface SmsMessageRegistration : Windows.Devices.Sms.ISmsMessageRegistration
{
}

interface SmsReceivedEventDetails : Windows.Devices.Sms.ISmsReceivedEventDetails, Windows.Devices.Sms.ISmsReceivedEventDetails2
{
}

interface SmsSendMessageResult : Windows.Devices.Sms.ISmsSendMessageResult
{
}

interface SmsStatusMessage : Windows.Devices.Sms.ISmsStatusMessage, Windows.Devices.Sms.ISmsMessageBase
{
}

interface SmsTextMessage : Windows.Devices.Sms.ISmsTextMessage, Windows.Devices.Sms.ISmsMessage
{
}

interface SmsTextMessage2 : Windows.Devices.Sms.ISmsTextMessage2, Windows.Devices.Sms.ISmsMessageBase
{
}

interface SmsVoicemailMessage : Windows.Devices.Sms.ISmsVoicemailMessage, Windows.Devices.Sms.ISmsMessageBase
{
}

interface SmsWapMessage : Windows.Devices.Sms.ISmsWapMessage, Windows.Devices.Sms.ISmsMessageBase
{
}

enum CellularClass
{
	None = 0,
	Gsm = 1,
	Cdma = 2
}

enum SmsBroadcastType
{
	Other = 0,
	CmasPresidential = 1,
	CmasExtreme = 2,
	CmasSevere = 3,
	CmasAmber = 4,
	CmasTest = 5,
	EUAlert1 = 6,
	EUAlert2 = 7,
	EUAlert3 = 8,
	EUAlertAmber = 9,
	EUAlertInfo = 10,
	EtwsEarthquake = 11,
	EtwsTsunami = 12,
	EtwsTsunamiAndEarthquake = 13,
	LatAlertLocal = 14
}

enum SmsDataFormat
{
	Unknown = 0,
	CdmaSubmit = 1,
	GsmSubmit = 2,
	CdmaDeliver = 3,
	GsmDeliver = 4
}

enum SmsDeviceStatus
{
	Off = 0,
	Ready = 1,
	SimNotInserted = 2,
	BadSim = 3,
	DeviceFailure = 4,
	SubscriptionNotActivated = 5,
	DeviceLocked = 6,
	DeviceBlocked = 7
}

enum SmsEncoding
{
	Unknown = 0,
	Optimal = 1,
	SevenBitAscii = 2,
	Unicode = 3,
	GsmSevenBit = 4,
	EightBit = 5,
	Latin = 6,
	Korean = 7,
	IA5 = 8,
	ShiftJis = 9,
	LatinHebrew = 10
}

enum SmsFilterActionType
{
	AcceptImmediately = 0,
	Drop = 1,
	Peek = 2,
	Accept = 3
}

enum SmsGeographicalScope
{
	None = 0,
	CellWithImmediateDisplay = 1,
	LocationArea = 2,
	Plmn = 3,
	Cell = 4
}

enum SmsMessageClass
{
	None = 0,
	Class0 = 1,
	Class1 = 2,
	Class2 = 3,
	Class3 = 4
}

enum SmsMessageFilter
{
	All = 0,
	Unread = 1,
	Read = 2,
	Sent = 3,
	Draft = 4
}

enum SmsMessageType
{
	Binary = 0,
	Text = 1,
	Wap = 2,
	App = 3,
	Broadcast = 4,
	Voicemail = 5,
	Status = 6
}

enum SmsModemErrorCode
{
	Other = 0,
	MessagingNetworkError = 1,
	SmsOperationNotSupportedByDevice = 2,
	SmsServiceNotSupportedByNetwork = 3,
	DeviceFailure = 4,
	MessageNotEncodedProperly = 5,
	MessageTooLarge = 6,
	DeviceNotReady = 7,
	NetworkNotReady = 8,
	InvalidSmscAddress = 9,
	NetworkFailure = 10,
	FixedDialingNumberRestricted = 11
}