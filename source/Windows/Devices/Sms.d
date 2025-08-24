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
interface ISmsAppMessage_Base : IInspectable
{
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
@uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54")
@WinrtFactory("Windows.Devices.Sms.SmsAppMessage")
interface ISmsAppMessage : ISmsAppMessage_Base, Windows.Devices.Sms.ISmsMessageBase {}

@uuid("5bf4e813-3b53-4c6e-b61a-d86a63755650")
interface ISmsBinaryMessage_Base : IInspectable
{
extern(Windows):
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	HRESULT get_Format(Windows.Devices.Sms.SmsDataFormat* return_value);
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	HRESULT set_Format(Windows.Devices.Sms.SmsDataFormat value);
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	HRESULT abi_GetData(UINT32* out___valueSize, ubyte** return_value);
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	HRESULT abi_SetData(UINT32 __valueSize, ubyte* value);
}
@uuid("5bf4e813-3b53-4c6e-b61a-d86a63755650")
interface ISmsBinaryMessage : ISmsBinaryMessage_Base, Windows.Devices.Sms.ISmsMessage {}

@uuid("75aebbf1-e4b7-4874-a09c-2956e592f957")
@WinrtFactory("Windows.Devices.Sms.SmsBroadcastMessage")
interface ISmsBroadcastMessage_Base : IInspectable
{
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
@uuid("75aebbf1-e4b7-4874-a09c-2956e592f957")
@WinrtFactory("Windows.Devices.Sms.SmsBroadcastMessage")
interface ISmsBroadcastMessage : ISmsBroadcastMessage_Base, Windows.Devices.Sms.ISmsMessageBase {}

@uuid("091791ed-872b-4eec-9c72-ab11627b34ec")
interface ISmsDevice : IInspectable
{
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
extern(Windows):
	deprecated("ISmsDeviceStatics2 may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_FromNetworkAccountIdAsync(HSTRING networkAccountId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice)* return_asyncInfo);
}

@uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c")
@WinrtFactory("Windows.Devices.Sms.SmsFilterRule")
interface ISmsFilterRule : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateFilterRule(Windows.Devices.Sms.SmsMessageType messageType, Windows.Devices.Sms.SmsFilterRule* return_value);
}

@uuid("4e47eafb-79cd-4881-9894-55a4135b23fa")
@WinrtFactory("Windows.Devices.Sms.SmsFilterRules")
interface ISmsFilterRules : IInspectable
{
extern(Windows):
	HRESULT get_ActionType(Windows.Devices.Sms.SmsFilterActionType* return_value);
	HRESULT get_Rules(Windows.Foundation.Collections.IVector!(Windows.Devices.Sms.SmsFilterRule)* return_value);
}

@uuid("a09924ed-6e2e-4530-9fde-465d02eed00e")
@WinrtFactory("Windows.Devices.Sms.SmsFilterRules")
interface ISmsFilterRulesFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFilterRules(Windows.Devices.Sms.SmsFilterActionType actionType, Windows.Devices.Sms.SmsFilterRules* return_value);
}

@uuid("ed3c5e28-6984-4b07-811d-8d5906ed3cea")
interface ISmsMessage : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_MessageClass(Windows.Devices.Sms.SmsMessageClass* return_value);
}

@uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea")
interface ISmsMessageBase : IInspectable
{
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
extern(Windows):
	HRESULT get_AllRegistrations(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.SmsMessageRegistration)* return_value);
	HRESULT abi_Register(HSTRING id, Windows.Devices.Sms.SmsFilterRules filterRules, Windows.Devices.Sms.SmsMessageRegistration* return_value);
}

@uuid("5bb50f15-e46d-4c82-847d-5a0304c1d53d")
@WinrtFactory("Windows.Devices.Sms.SmsReceivedEventDetails")
interface ISmsReceivedEventDetails : IInspectable
{
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
interface ISmsStatusMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_To(HSTRING* return_value);
	HRESULT get_From(HSTRING* return_value);
	HRESULT get_Body(HSTRING* return_value);
	HRESULT get_Status(INT32* return_value);
	HRESULT get_MessageReferenceNumber(INT32* return_value);
	HRESULT get_ServiceCenterTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_DischargeTime(Windows.Foundation.DateTime* return_value);
}
@uuid("e6d28342-b70b-4677-9379-c9783fdff8f4")
@WinrtFactory("Windows.Devices.Sms.SmsStatusMessage")
interface ISmsStatusMessage : ISmsStatusMessage_Base, Windows.Devices.Sms.ISmsMessageBase {}

@uuid("d61c904c-a495-487f-9a6f-971548c5bc9f")
interface ISmsTextMessage_Base : IInspectable
{
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
@uuid("d61c904c-a495-487f-9a6f-971548c5bc9f")
interface ISmsTextMessage : ISmsTextMessage_Base, Windows.Devices.Sms.ISmsMessage {}

@uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d")
@WinrtFactory("Windows.Devices.Sms.SmsTextMessage2")
interface ISmsTextMessage2_Base : IInspectable
{
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
@uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d")
@WinrtFactory("Windows.Devices.Sms.SmsTextMessage2")
interface ISmsTextMessage2 : ISmsTextMessage2_Base, Windows.Devices.Sms.ISmsMessageBase {}

@uuid("7f68c5ed-3ccc-47a3-8c55-380d3b010892")
@WinrtFactory("Windows.Devices.Sms.SmsTextMessage")
interface ISmsTextMessageStatics : IInspectable
{
extern(Windows):
	deprecated("ISmsTextMessageStatics may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_FromBinaryMessage(Windows.Devices.Sms.SmsBinaryMessage binaryMessage, Windows.Devices.Sms.SmsTextMessage* return_textMessage);
	deprecated("ISmsTextMessageStatics may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_FromBinaryData(Windows.Devices.Sms.SmsDataFormat format, UINT32 __valueSize, ubyte* value, Windows.Devices.Sms.SmsTextMessage* return_textMessage);
}

@uuid("271aa0a6-95b1-44ff-bcb8-b8fdd7e08bc3")
@WinrtFactory("Windows.Devices.Sms.SmsVoicemailMessage")
interface ISmsVoicemailMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_To(HSTRING* return_value);
	HRESULT get_Body(HSTRING* return_value);
	HRESULT get_MessageCount(Windows.Foundation.IReference!(INT32)* return_value);
}
@uuid("271aa0a6-95b1-44ff-bcb8-b8fdd7e08bc3")
@WinrtFactory("Windows.Devices.Sms.SmsVoicemailMessage")
interface ISmsVoicemailMessage : ISmsVoicemailMessage_Base, Windows.Devices.Sms.ISmsMessageBase {}

@uuid("cd937743-7a55-4d3b-9021-f22e022d09c5")
@WinrtFactory("Windows.Devices.Sms.SmsWapMessage")
interface ISmsWapMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_To(HSTRING* return_value);
	HRESULT get_From(HSTRING* return_value);
	HRESULT get_ApplicationId(HSTRING* return_value);
	HRESULT get_ContentType(HSTRING* return_value);
	HRESULT get_BinaryBody(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Headers(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
}
@uuid("cd937743-7a55-4d3b-9021-f22e022d09c5")
@WinrtFactory("Windows.Devices.Sms.SmsWapMessage")
interface ISmsWapMessage : ISmsWapMessage_Base, Windows.Devices.Sms.ISmsMessageBase {}

interface DeleteSmsMessageOperation : Windows.Foundation.IAsyncAction
{
extern(Windows):
	final void Completed(Windows.Foundation.AsyncActionCompletedHandler handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).set_Completed(handler));
	}
	final Windows.Foundation.AsyncActionCompletedHandler Completed()
	{
		Windows.Foundation.AsyncActionCompletedHandler _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).get_Completed(&_ret));
		return _ret;
	}
	final void GetResults()
	{
		Debug.OK((cast(Windows.Foundation.IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).abi_GetResults());
	}
}

interface DeleteSmsMessagesOperation : Windows.Foundation.IAsyncAction
{
extern(Windows):
	final void Completed(Windows.Foundation.AsyncActionCompletedHandler handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).set_Completed(handler));
	}
	final Windows.Foundation.AsyncActionCompletedHandler Completed()
	{
		Windows.Foundation.AsyncActionCompletedHandler _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).get_Completed(&_ret));
		return _ret;
	}
	final void GetResults()
	{
		Debug.OK((cast(Windows.Foundation.IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).abi_GetResults());
	}
}

interface GetSmsDeviceOperation : Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice)
{
extern(Windows):
	final void Completed(Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Devices.Sms.SmsDevice) handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice))this).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Devices.Sms.SmsDevice) Completed()
	{
		Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Devices.Sms.SmsDevice) _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice))this).get_Completed(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsDevice Results()
	{
		Windows.Devices.Sms.SmsDevice _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice))this).get_Results(&_ret));
		return _ret;
	}
}

interface GetSmsMessageOperation : Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.ISmsMessage)
{
extern(Windows):
	final void Completed(Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Devices.Sms.ISmsMessage) handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.ISmsMessage))this).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Devices.Sms.ISmsMessage) Completed()
	{
		Windows.Foundation.AsyncOperationCompletedHandler!(Windows.Devices.Sms.ISmsMessage) _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.ISmsMessage))this).get_Completed(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.ISmsMessage Results()
	{
		Windows.Devices.Sms.ISmsMessage _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.ISmsMessage))this).get_Results(&_ret));
		return _ret;
	}
}

interface GetSmsMessagesOperation : Windows.Foundation.IAsyncOperationWithProgress!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage), INT32)
{
extern(Windows):
	final void Progress(Windows.Foundation.AsyncOperationProgressHandler!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage),	 INT32) handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage), INT32))this).set_Progress(handler));
	}
	final Windows.Foundation.AsyncOperationProgressHandler!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage),  INT32) Progress()
	{
		Windows.Foundation.AsyncOperationProgressHandler!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage),	 INT32) _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage), INT32))this).get_Progress(&_ret));
		return _ret;
	}
	final void Completed(Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage),  INT32) handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage), INT32))this).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage),	INT32) Completed()
	{
		Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage),  INT32) _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage), INT32))this).get_Completed(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage) Results()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage) _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperationWithProgress!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage), INT32))this).get_Results(&_ret));
		return _ret;
	}
}

interface SendSmsMessageOperation : Windows.Foundation.IAsyncAction
{
extern(Windows):
	final void Completed(Windows.Foundation.AsyncActionCompletedHandler handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).set_Completed(handler));
	}
	final Windows.Foundation.AsyncActionCompletedHandler Completed()
	{
		Windows.Foundation.AsyncActionCompletedHandler _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).get_Completed(&_ret));
		return _ret;
	}
	final void GetResults()
	{
		Debug.OK((cast(Windows.Foundation.IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).abi_GetResults());
	}
}

interface SmsAppMessage : Windows.Devices.Sms.ISmsAppMessage, Windows.Devices.Sms.ISmsMessageBase
{
extern(Windows):
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_Timestamp(&_ret));
		return _ret;
	}
	final wstring To()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_To(&_ret));
		return hstring(_ret).d_str;
	}
	final void To(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).set_To(hstring(value).handle));
	}
	final wstring From()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_From(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Body()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_Body(&_ret));
		return hstring(_ret).d_str;
	}
	final void Body(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).set_Body(hstring(value).handle));
	}
	final wstring CallbackNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_CallbackNumber(&_ret));
		return hstring(_ret).d_str;
	}
	final void CallbackNumber(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).set_CallbackNumber(hstring(value).handle));
	}
	final bool IsDeliveryNotificationEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_IsDeliveryNotificationEnabled(&_ret));
		return _ret;
	}
	final void IsDeliveryNotificationEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).set_IsDeliveryNotificationEnabled(value));
	}
	final INT32 RetryAttemptCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_RetryAttemptCount(&_ret));
		return _ret;
	}
	final void RetryAttemptCount(INT32 value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).set_RetryAttemptCount(value));
	}
	final Windows.Devices.Sms.SmsEncoding Encoding()
	{
		Windows.Devices.Sms.SmsEncoding _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_Encoding(&_ret));
		return _ret;
	}
	final void Encoding(Windows.Devices.Sms.SmsEncoding value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).set_Encoding(value));
	}
	final INT32 PortNumber()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_PortNumber(&_ret));
		return _ret;
	}
	final void PortNumber(INT32 value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).set_PortNumber(value));
	}
	final INT32 TeleserviceId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_TeleserviceId(&_ret));
		return _ret;
	}
	final void TeleserviceId(INT32 value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).set_TeleserviceId(value));
	}
	final INT32 ProtocolId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_ProtocolId(&_ret));
		return _ret;
	}
	final void ProtocolId(INT32 value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).set_ProtocolId(value));
	}
	final Windows.Storage.Streams.IBuffer BinaryBody()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).get_BinaryBody(&_ret));
		return _ret;
	}
	final void BinaryBody(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsAppMessage)this.asInterface(uuid("e8bb8494-d3a0-4a0a-86d7-291033a8cf54"))).set_BinaryBody(value));
	}
	final Windows.Devices.Sms.SmsMessageType MessageType()
	{
		Windows.Devices.Sms.SmsMessageType _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageType(&_ret));
		return _ret;
	}
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_CellularClass(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageClass MessageClass()
	{
		Windows.Devices.Sms.SmsMessageClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageClass(&_ret));
		return _ret;
	}
	final wstring SimIccId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_SimIccId(&_ret));
		return hstring(_ret).d_str;
	}
	static SmsAppMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SmsAppMessage).abi_ActivateInstance(&ret));
		return cast(SmsAppMessage) ret;
	}
}

interface SmsBinaryMessage : Windows.Devices.Sms.ISmsBinaryMessage, Windows.Devices.Sms.ISmsMessage
{
extern(Windows):
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	final Windows.Devices.Sms.SmsDataFormat Format()
	{
		Windows.Devices.Sms.SmsDataFormat _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBinaryMessage)this.asInterface(uuid("5bf4e813-3b53-4c6e-b61a-d86a63755650"))).get_Format(&_ret));
		return _ret;
	}
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	final void Format(Windows.Devices.Sms.SmsDataFormat value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsBinaryMessage)this.asInterface(uuid("5bf4e813-3b53-4c6e-b61a-d86a63755650"))).set_Format(value));
	}
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	final ubyte* GetData(UINT32* out___valueSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBinaryMessage)this.asInterface(uuid("5bf4e813-3b53-4c6e-b61a-d86a63755650"))).abi_GetData(out___valueSize, &_ret));
		return _ret;
	}
	deprecated("SmsBinaryMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsAppMessage.")
	final void SetData(UINT32 __valueSize, ubyte* value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsBinaryMessage)this.asInterface(uuid("5bf4e813-3b53-4c6e-b61a-d86a63755650"))).abi_SetData(__valueSize, value));
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessage)this.asInterface(uuid("ed3c5e28-6984-4b07-811d-8d5906ed3cea"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageClass MessageClass()
	{
		Windows.Devices.Sms.SmsMessageClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessage)this.asInterface(uuid("ed3c5e28-6984-4b07-811d-8d5906ed3cea"))).get_MessageClass(&_ret));
		return _ret;
	}
	static SmsBinaryMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SmsBinaryMessage).abi_ActivateInstance(&ret));
		return cast(SmsBinaryMessage) ret;
	}
}

interface SmsBroadcastMessage : Windows.Devices.Sms.ISmsBroadcastMessage, Windows.Devices.Sms.ISmsMessageBase
{
extern(Windows):
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBroadcastMessage)this.asInterface(uuid("75aebbf1-e4b7-4874-a09c-2956e592f957"))).get_Timestamp(&_ret));
		return _ret;
	}
	final wstring To()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBroadcastMessage)this.asInterface(uuid("75aebbf1-e4b7-4874-a09c-2956e592f957"))).get_To(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Body()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBroadcastMessage)this.asInterface(uuid("75aebbf1-e4b7-4874-a09c-2956e592f957"))).get_Body(&_ret));
		return hstring(_ret).d_str;
	}
	final INT32 Channel()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBroadcastMessage)this.asInterface(uuid("75aebbf1-e4b7-4874-a09c-2956e592f957"))).get_Channel(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsGeographicalScope GeographicalScope()
	{
		Windows.Devices.Sms.SmsGeographicalScope _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBroadcastMessage)this.asInterface(uuid("75aebbf1-e4b7-4874-a09c-2956e592f957"))).get_GeographicalScope(&_ret));
		return _ret;
	}
	final INT32 MessageCode()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBroadcastMessage)this.asInterface(uuid("75aebbf1-e4b7-4874-a09c-2956e592f957"))).get_MessageCode(&_ret));
		return _ret;
	}
	final INT32 UpdateNumber()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBroadcastMessage)this.asInterface(uuid("75aebbf1-e4b7-4874-a09c-2956e592f957"))).get_UpdateNumber(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsBroadcastType BroadcastType()
	{
		Windows.Devices.Sms.SmsBroadcastType _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBroadcastMessage)this.asInterface(uuid("75aebbf1-e4b7-4874-a09c-2956e592f957"))).get_BroadcastType(&_ret));
		return _ret;
	}
	final bool IsEmergencyAlert()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBroadcastMessage)this.asInterface(uuid("75aebbf1-e4b7-4874-a09c-2956e592f957"))).get_IsEmergencyAlert(&_ret));
		return _ret;
	}
	final bool IsUserPopupRequested()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsBroadcastMessage)this.asInterface(uuid("75aebbf1-e4b7-4874-a09c-2956e592f957"))).get_IsUserPopupRequested(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageType MessageType()
	{
		Windows.Devices.Sms.SmsMessageType _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageType(&_ret));
		return _ret;
	}
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_CellularClass(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageClass MessageClass()
	{
		Windows.Devices.Sms.SmsMessageClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageClass(&_ret));
		return _ret;
	}
	final wstring SimIccId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_SimIccId(&_ret));
		return hstring(_ret).d_str;
	}
}

interface SmsDevice : Windows.Devices.Sms.ISmsDevice
{
extern(Windows):
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	final Windows.Devices.Sms.SendSmsMessageOperation SendMessageAsync(Windows.Devices.Sms.ISmsMessage message)
	{
		Windows.Devices.Sms.SendSmsMessageOperation _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice)this.asInterface(uuid("091791ed-872b-4eec-9c72-ab11627b34ec"))).abi_SendMessageAsync(message, &_ret));
		return _ret;
	}
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	final Windows.Devices.Sms.SmsEncodedLength CalculateLength(Windows.Devices.Sms.SmsTextMessage message)
	{
		Windows.Devices.Sms.SmsEncodedLength _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice)this.asInterface(uuid("091791ed-872b-4eec-9c72-ab11627b34ec"))).abi_CalculateLength(message, &_ret));
		return _ret;
	}
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	final wstring AccountPhoneNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice)this.asInterface(uuid("091791ed-872b-4eec-9c72-ab11627b34ec"))).get_AccountPhoneNumber(&_ret));
		return hstring(_ret).d_str;
	}
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice)this.asInterface(uuid("091791ed-872b-4eec-9c72-ab11627b34ec"))).get_CellularClass(&_ret));
		return _ret;
	}
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	final Windows.Devices.Sms.SmsDeviceMessageStore MessageStore()
	{
		Windows.Devices.Sms.SmsDeviceMessageStore _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice)this.asInterface(uuid("091791ed-872b-4eec-9c72-ab11627b34ec"))).get_MessageStore(&_ret));
		return _ret;
	}
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	final Windows.Devices.Sms.SmsDeviceStatus DeviceStatus()
	{
		Windows.Devices.Sms.SmsDeviceStatus _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice)this.asInterface(uuid("091791ed-872b-4eec-9c72-ab11627b34ec"))).get_DeviceStatus(&_ret));
		return _ret;
	}
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	final EventRegistrationToken OnSmsMessageReceived(void delegate(Windows.Devices.Sms.SmsDevice, Windows.Devices.Sms.SmsMessageReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice)this.asInterface(uuid("091791ed-872b-4eec-9c72-ab11627b34ec"))).add_SmsMessageReceived(event!(Windows.Devices.Sms.SmsMessageReceivedEventHandler, Windows.Devices.Sms.SmsDevice, Windows.Devices.Sms.SmsMessageReceivedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	final void removeSmsMessageReceived(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice)this.asInterface(uuid("091791ed-872b-4eec-9c72-ab11627b34ec"))).remove_SmsMessageReceived(eventCookie));
	}
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	final EventRegistrationToken OnSmsDeviceStatusChanged(void delegate(Windows.Devices.Sms.SmsDevice) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice)this.asInterface(uuid("091791ed-872b-4eec-9c72-ab11627b34ec"))).add_SmsDeviceStatusChanged(event!(Windows.Devices.Sms.SmsDeviceStatusChangedEventHandler, Windows.Devices.Sms.SmsDevice)(fn), &tok));
		return tok;
	}
	deprecated("SmsDevice may be altered or unavailable for releases after Windows 10. Instead, use SmsDevice2.")
	final void removeSmsDeviceStatusChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice)this.asInterface(uuid("091791ed-872b-4eec-9c72-ab11627b34ec"))).remove_SmsDeviceStatusChanged(eventCookie));
	}

	private static Windows.Devices.Sms.ISmsDeviceStatics _staticInstance;
	public static Windows.Devices.Sms.ISmsDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Sms.ISmsDeviceStatics);
		return _staticInstance;
	}
	deprecated("ISmsDeviceStatics may be altered or unavailable for releases after Windows 10.")
	static wstring GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return hstring(_ret).d_str;
	}
	deprecated("ISmsDeviceStatics may be altered or unavailable for releases after Windows 10.")
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice) FromIdAsync(wstring deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(hstring(deviceId).handle, &_ret));
		return _ret;
	}
	deprecated("ISmsDeviceStatics may be altered or unavailable for releases after Windows 10.")
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsDevice) _ret;
		Debug.OK(staticInstance.abi_GetDefaultAsync(&_ret));
		return _ret;
	}
}

interface SmsDevice2 : Windows.Devices.Sms.ISmsDevice2
{
extern(Windows):
	final wstring SmscAddress()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).get_SmscAddress(&_ret));
		return hstring(_ret).d_str;
	}
	final void SmscAddress(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).set_SmscAddress(hstring(value).handle));
	}
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ParentDeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).get_ParentDeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring AccountPhoneNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).get_AccountPhoneNumber(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).get_CellularClass(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsDeviceStatus DeviceStatus()
	{
		Windows.Devices.Sms.SmsDeviceStatus _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).get_DeviceStatus(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsEncodedLength CalculateLength(Windows.Devices.Sms.ISmsMessageBase message)
	{
		Windows.Devices.Sms.SmsEncodedLength _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).abi_CalculateLength(message, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsSendMessageResult) SendMessageAndGetResultAsync(Windows.Devices.Sms.ISmsMessageBase message)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.SmsSendMessageResult) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).abi_SendMessageAndGetResultAsync(message, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnDeviceStatusChanged(void delegate(Windows.Devices.Sms.SmsDevice2, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).add_DeviceStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sms.SmsDevice2, IInspectable), Windows.Devices.Sms.SmsDevice2, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDeviceStatusChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsDevice2)this.asInterface(uuid("bd8a5c13-e522-46cb-b8d5-9ead30fb6c47"))).remove_DeviceStatusChanged(eventCookie));
	}

	private static Windows.Devices.Sms.ISmsDevice2Statics _staticInstance;
	public static Windows.Devices.Sms.ISmsDevice2Statics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Sms.ISmsDevice2Statics);
		return _staticInstance;
	}
	static wstring GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return hstring(_ret).d_str;
	}
	static Windows.Devices.Sms.SmsDevice2 FromId(wstring deviceId)
	{
		Windows.Devices.Sms.SmsDevice2 _ret;
		Debug.OK(staticInstance.abi_FromId(hstring(deviceId).handle, &_ret));
		return _ret;
	}
	static Windows.Devices.Sms.SmsDevice2 GetDefault()
	{
		Windows.Devices.Sms.SmsDevice2 _ret;
		Debug.OK(staticInstance.abi_GetDefault(&_ret));
		return _ret;
	}
	static Windows.Devices.Sms.SmsDevice2 FromParentId(wstring parentDeviceId)
	{
		Windows.Devices.Sms.SmsDevice2 _ret;
		Debug.OK(staticInstance.abi_FromParentId(hstring(parentDeviceId).handle, &_ret));
		return _ret;
	}
}

interface SmsDeviceMessageStore : Windows.Devices.Sms.ISmsDeviceMessageStore
{
extern(Windows):
	deprecated("SmsDeviceMessageStore may be altered or unavailable for releases after Windows 10.")
	final Windows.Foundation.IAsyncAction DeleteMessageAsync(UINT32 messageId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDeviceMessageStore)this.asInterface(uuid("9889f253-f188-4427-8d54-ce0c2423c5c1"))).abi_DeleteMessageAsync(messageId, &_ret));
		return _ret;
	}
	deprecated("SmsDeviceMessageStore may be altered or unavailable for releases after Windows 10.")
	final Windows.Foundation.IAsyncAction DeleteMessagesAsync(Windows.Devices.Sms.SmsMessageFilter messageFilter)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDeviceMessageStore)this.asInterface(uuid("9889f253-f188-4427-8d54-ce0c2423c5c1"))).abi_DeleteMessagesAsync(messageFilter, &_ret));
		return _ret;
	}
	deprecated("SmsDeviceMessageStore may be altered or unavailable for releases after Windows 10.")
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.ISmsMessage) GetMessageAsync(UINT32 messageId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Sms.ISmsMessage) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDeviceMessageStore)this.asInterface(uuid("9889f253-f188-4427-8d54-ce0c2423c5c1"))).abi_GetMessageAsync(messageId, &_ret));
		return _ret;
	}
	deprecated("SmsDeviceMessageStore may be altered or unavailable for releases after Windows 10.")
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage), INT32) GetMessagesAsync(Windows.Devices.Sms.SmsMessageFilter messageFilter)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsMessage), INT32) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDeviceMessageStore)this.asInterface(uuid("9889f253-f188-4427-8d54-ce0c2423c5c1"))).abi_GetMessagesAsync(messageFilter, &_ret));
		return _ret;
	}
	deprecated("SmsDeviceMessageStore may be altered or unavailable for releases after Windows 10.")
	final UINT32 MaxMessages()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsDeviceMessageStore)this.asInterface(uuid("9889f253-f188-4427-8d54-ce0c2423c5c1"))).get_MaxMessages(&_ret));
		return _ret;
	}
}

interface SmsFilterRule : Windows.Devices.Sms.ISmsFilterRule
{
extern(Windows):
	final Windows.Devices.Sms.SmsMessageType MessageType()
	{
		Windows.Devices.Sms.SmsMessageType _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_MessageType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) ImsiPrefixes()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_ImsiPrefixes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) DeviceIds()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_DeviceIds(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) SenderNumbers()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_SenderNumbers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) TextMessagePrefixes()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_TextMessagePrefixes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(INT32) PortNumbers()
	{
		Windows.Foundation.Collections.IVector!(INT32) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_PortNumbers(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_CellularClass(&_ret));
		return _ret;
	}
	final void CellularClass(Windows.Devices.Sms.CellularClass value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).set_CellularClass(value));
	}
	final Windows.Foundation.Collections.IVector!(INT32) ProtocolIds()
	{
		Windows.Foundation.Collections.IVector!(INT32) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_ProtocolIds(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(INT32) TeleserviceIds()
	{
		Windows.Foundation.Collections.IVector!(INT32) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_TeleserviceIds(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) WapApplicationIds()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_WapApplicationIds(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) WapContentTypes()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_WapContentTypes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Sms.SmsBroadcastType) BroadcastTypes()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Sms.SmsBroadcastType) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_BroadcastTypes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(INT32) BroadcastChannels()
	{
		Windows.Foundation.Collections.IVector!(INT32) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRule)this.asInterface(uuid("40e32fae-b049-4fbc-afe9-e2a610eff55c"))).get_BroadcastChannels(&_ret));
		return _ret;
	}
	static Windows.Devices.Sms.SmsFilterRule New(Windows.Devices.Sms.SmsMessageType messageType)
	{
		auto factory = factory!(Windows.Devices.Sms.ISmsFilterRuleFactory);
		Windows.Devices.Sms.SmsFilterRule _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRuleFactory)factory.asInterface(uuid("00c36508-6296-4f29-9aad-8920ceba3ce8"))).abi_CreateFilterRule(messageType, &_ret));
		return _ret;
	}
}

interface SmsFilterRules : Windows.Devices.Sms.ISmsFilterRules
{
extern(Windows):
	final Windows.Devices.Sms.SmsFilterActionType ActionType()
	{
		Windows.Devices.Sms.SmsFilterActionType _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRules)this.asInterface(uuid("4e47eafb-79cd-4881-9894-55a4135b23fa"))).get_ActionType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Sms.SmsFilterRule) Rules()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Sms.SmsFilterRule) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRules)this.asInterface(uuid("4e47eafb-79cd-4881-9894-55a4135b23fa"))).get_Rules(&_ret));
		return _ret;
	}
	static Windows.Devices.Sms.SmsFilterRules New(Windows.Devices.Sms.SmsFilterActionType actionType)
	{
		auto factory = factory!(Windows.Devices.Sms.ISmsFilterRulesFactory);
		Windows.Devices.Sms.SmsFilterRules _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsFilterRulesFactory)factory.asInterface(uuid("a09924ed-6e2e-4530-9fde-465d02eed00e"))).abi_CreateFilterRules(actionType, &_ret));
		return _ret;
	}
}

interface SmsMessageReceivedEventArgs : Windows.Devices.Sms.ISmsMessageReceivedEventArgs
{
extern(Windows):
	deprecated("SmsMessageReceivedEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.Devices.Sms.SmsTextMessage TextMessage()
	{
		Windows.Devices.Sms.SmsTextMessage _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedEventArgs)this.asInterface(uuid("08e80a98-b8e5-41c1-a3d8-d3abfae22675"))).get_TextMessage(&_ret));
		return _ret;
	}
	deprecated("SmsMessageReceivedEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.Devices.Sms.SmsBinaryMessage BinaryMessage()
	{
		Windows.Devices.Sms.SmsBinaryMessage _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedEventArgs)this.asInterface(uuid("08e80a98-b8e5-41c1-a3d8-d3abfae22675"))).get_BinaryMessage(&_ret));
		return _ret;
	}
}

interface SmsMessageReceivedTriggerDetails : Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails
{
extern(Windows):
	final Windows.Devices.Sms.SmsMessageType MessageType()
	{
		Windows.Devices.Sms.SmsMessageType _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails)this.asInterface(uuid("2bcfcbd4-2657-4128-ad5f-e3877132bdb1"))).get_MessageType(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsTextMessage2 TextMessage()
	{
		Windows.Devices.Sms.SmsTextMessage2 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails)this.asInterface(uuid("2bcfcbd4-2657-4128-ad5f-e3877132bdb1"))).get_TextMessage(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsWapMessage WapMessage()
	{
		Windows.Devices.Sms.SmsWapMessage _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails)this.asInterface(uuid("2bcfcbd4-2657-4128-ad5f-e3877132bdb1"))).get_WapMessage(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsAppMessage AppMessage()
	{
		Windows.Devices.Sms.SmsAppMessage _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails)this.asInterface(uuid("2bcfcbd4-2657-4128-ad5f-e3877132bdb1"))).get_AppMessage(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsBroadcastMessage BroadcastMessage()
	{
		Windows.Devices.Sms.SmsBroadcastMessage _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails)this.asInterface(uuid("2bcfcbd4-2657-4128-ad5f-e3877132bdb1"))).get_BroadcastMessage(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsVoicemailMessage VoicemailMessage()
	{
		Windows.Devices.Sms.SmsVoicemailMessage _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails)this.asInterface(uuid("2bcfcbd4-2657-4128-ad5f-e3877132bdb1"))).get_VoicemailMessage(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsStatusMessage StatusMessage()
	{
		Windows.Devices.Sms.SmsStatusMessage _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails)this.asInterface(uuid("2bcfcbd4-2657-4128-ad5f-e3877132bdb1"))).get_StatusMessage(&_ret));
		return _ret;
	}
	final void Drop()
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails)this.asInterface(uuid("2bcfcbd4-2657-4128-ad5f-e3877132bdb1"))).abi_Drop());
	}
	final void Accept()
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageReceivedTriggerDetails)this.asInterface(uuid("2bcfcbd4-2657-4128-ad5f-e3877132bdb1"))).abi_Accept());
	}
}

interface SmsMessageRegistration : Windows.Devices.Sms.ISmsMessageRegistration
{
extern(Windows):
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageRegistration)this.asInterface(uuid("1720503e-f34f-446b-83b3-0ff19923b409"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final void Unregister()
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageRegistration)this.asInterface(uuid("1720503e-f34f-446b-83b3-0ff19923b409"))).abi_Unregister());
	}
	final EventRegistrationToken OnMessageReceived(void delegate(Windows.Devices.Sms.SmsMessageRegistration, Windows.Devices.Sms.SmsMessageReceivedTriggerDetails) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageRegistration)this.asInterface(uuid("1720503e-f34f-446b-83b3-0ff19923b409"))).add_MessageReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Sms.SmsMessageRegistration, Windows.Devices.Sms.SmsMessageReceivedTriggerDetails), Windows.Devices.Sms.SmsMessageRegistration, Windows.Devices.Sms.SmsMessageReceivedTriggerDetails)(fn), &tok));
		return tok;
	}
	final void removeMessageReceived(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageRegistration)this.asInterface(uuid("1720503e-f34f-446b-83b3-0ff19923b409"))).remove_MessageReceived(eventCookie));
	}

	private static Windows.Devices.Sms.ISmsMessageRegistrationStatics _staticInstance;
	public static Windows.Devices.Sms.ISmsMessageRegistrationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Sms.ISmsMessageRegistrationStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.SmsMessageRegistration) AllRegistrations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.SmsMessageRegistration) _ret;
		Debug.OK(staticInstance.get_AllRegistrations(&_ret));
		return _ret;
	}
	static Windows.Devices.Sms.SmsMessageRegistration Register(wstring id, Windows.Devices.Sms.SmsFilterRules filterRules)
	{
		Windows.Devices.Sms.SmsMessageRegistration _ret;
		Debug.OK(staticInstance.abi_Register(hstring(id).handle, filterRules, &_ret));
		return _ret;
	}
}

interface SmsReceivedEventDetails : Windows.Devices.Sms.ISmsReceivedEventDetails, Windows.Devices.Sms.ISmsReceivedEventDetails2
{
extern(Windows):
	deprecated("SmsReceivedEventDetails may be altered or unavailable for releases after Windows 10. Instead, use SmsMessageReceivedTriggerDetails.")
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsReceivedEventDetails)this.asInterface(uuid("5bb50f15-e46d-4c82-847d-5a0304c1d53d"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	deprecated("SmsReceivedEventDetails may be altered or unavailable for releases after Windows 10. Instead, use SmsMessageReceivedTriggerDetails.")
	final UINT32 MessageIndex()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsReceivedEventDetails)this.asInterface(uuid("5bb50f15-e46d-4c82-847d-5a0304c1d53d"))).get_MessageIndex(&_ret));
		return _ret;
	}
	deprecated("SmsReceivedEventDetails may be altered or unavailable for releases after Windows 10. Instead, use SmsMessageReceivedTriggerDetails.")
	final Windows.Devices.Sms.SmsMessageClass MessageClass()
	{
		Windows.Devices.Sms.SmsMessageClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsReceivedEventDetails2)this.asInterface(uuid("40e05c86-a7b4-4771-9ae7-0b5ffb12c03a"))).get_MessageClass(&_ret));
		return _ret;
	}
	deprecated("SmsReceivedEventDetails may be altered or unavailable for releases after Windows 10. Instead, use SmsMessageReceivedTriggerDetails.")
	final Windows.Devices.Sms.SmsBinaryMessage BinaryMessage()
	{
		Windows.Devices.Sms.SmsBinaryMessage _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsReceivedEventDetails2)this.asInterface(uuid("40e05c86-a7b4-4771-9ae7-0b5ffb12c03a"))).get_BinaryMessage(&_ret));
		return _ret;
	}
}

interface SmsSendMessageResult : Windows.Devices.Sms.ISmsSendMessageResult
{
extern(Windows):
	final bool IsSuccessful()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsSendMessageResult)this.asInterface(uuid("db139af2-78c9-4feb-9622-452328088d62"))).get_IsSuccessful(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(INT32) MessageReferenceNumbers()
	{
		Windows.Foundation.Collections.IVectorView!(INT32) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsSendMessageResult)this.asInterface(uuid("db139af2-78c9-4feb-9622-452328088d62"))).get_MessageReferenceNumbers(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsSendMessageResult)this.asInterface(uuid("db139af2-78c9-4feb-9622-452328088d62"))).get_CellularClass(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsModemErrorCode ModemErrorCode()
	{
		Windows.Devices.Sms.SmsModemErrorCode _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsSendMessageResult)this.asInterface(uuid("db139af2-78c9-4feb-9622-452328088d62"))).get_ModemErrorCode(&_ret));
		return _ret;
	}
	final bool IsErrorTransient()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsSendMessageResult)this.asInterface(uuid("db139af2-78c9-4feb-9622-452328088d62"))).get_IsErrorTransient(&_ret));
		return _ret;
	}
	final INT32 NetworkCauseCode()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsSendMessageResult)this.asInterface(uuid("db139af2-78c9-4feb-9622-452328088d62"))).get_NetworkCauseCode(&_ret));
		return _ret;
	}
	final INT32 TransportFailureCause()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsSendMessageResult)this.asInterface(uuid("db139af2-78c9-4feb-9622-452328088d62"))).get_TransportFailureCause(&_ret));
		return _ret;
	}
}

interface SmsStatusMessage : Windows.Devices.Sms.ISmsStatusMessage, Windows.Devices.Sms.ISmsMessageBase
{
extern(Windows):
	final wstring To()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsStatusMessage)this.asInterface(uuid("e6d28342-b70b-4677-9379-c9783fdff8f4"))).get_To(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring From()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsStatusMessage)this.asInterface(uuid("e6d28342-b70b-4677-9379-c9783fdff8f4"))).get_From(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Body()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsStatusMessage)this.asInterface(uuid("e6d28342-b70b-4677-9379-c9783fdff8f4"))).get_Body(&_ret));
		return hstring(_ret).d_str;
	}
	final INT32 Status()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsStatusMessage)this.asInterface(uuid("e6d28342-b70b-4677-9379-c9783fdff8f4"))).get_Status(&_ret));
		return _ret;
	}
	final INT32 MessageReferenceNumber()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsStatusMessage)this.asInterface(uuid("e6d28342-b70b-4677-9379-c9783fdff8f4"))).get_MessageReferenceNumber(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ServiceCenterTimestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsStatusMessage)this.asInterface(uuid("e6d28342-b70b-4677-9379-c9783fdff8f4"))).get_ServiceCenterTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime DischargeTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsStatusMessage)this.asInterface(uuid("e6d28342-b70b-4677-9379-c9783fdff8f4"))).get_DischargeTime(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageType MessageType()
	{
		Windows.Devices.Sms.SmsMessageType _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageType(&_ret));
		return _ret;
	}
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_CellularClass(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageClass MessageClass()
	{
		Windows.Devices.Sms.SmsMessageClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageClass(&_ret));
		return _ret;
	}
	final wstring SimIccId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_SimIccId(&_ret));
		return hstring(_ret).d_str;
	}
}

interface SmsTextMessage : Windows.Devices.Sms.ISmsTextMessage, Windows.Devices.Sms.ISmsMessage
{
extern(Windows):
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).get_Timestamp(&_ret));
		return _ret;
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final UINT32 PartReferenceId()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).get_PartReferenceId(&_ret));
		return _ret;
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final UINT32 PartNumber()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).get_PartNumber(&_ret));
		return _ret;
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final UINT32 PartCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).get_PartCount(&_ret));
		return _ret;
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final wstring To()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).get_To(&_ret));
		return hstring(_ret).d_str;
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final void To(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).set_To(hstring(value).handle));
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final wstring From()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).get_From(&_ret));
		return hstring(_ret).d_str;
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final void From(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).set_From(hstring(value).handle));
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final wstring Body()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).get_Body(&_ret));
		return hstring(_ret).d_str;
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final void Body(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).set_Body(hstring(value).handle));
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final Windows.Devices.Sms.SmsEncoding Encoding()
	{
		Windows.Devices.Sms.SmsEncoding _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).get_Encoding(&_ret));
		return _ret;
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final void Encoding(Windows.Devices.Sms.SmsEncoding value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).set_Encoding(value));
	}
	deprecated("SmsTextMessage may be altered or unavailable for releases after Windows 10. Instead, use SmsTextMessage2.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsBinaryMessage) ToBinaryMessages(Windows.Devices.Sms.SmsDataFormat format)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sms.ISmsBinaryMessage) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage)this.asInterface(uuid("d61c904c-a495-487f-9a6f-971548c5bc9f"))).abi_ToBinaryMessages(format, &_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessage)this.asInterface(uuid("ed3c5e28-6984-4b07-811d-8d5906ed3cea"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageClass MessageClass()
	{
		Windows.Devices.Sms.SmsMessageClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessage)this.asInterface(uuid("ed3c5e28-6984-4b07-811d-8d5906ed3cea"))).get_MessageClass(&_ret));
		return _ret;
	}

	private static Windows.Devices.Sms.ISmsTextMessageStatics _staticInstance;
	public static Windows.Devices.Sms.ISmsTextMessageStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Sms.ISmsTextMessageStatics);
		return _staticInstance;
	}
	deprecated("ISmsTextMessageStatics may be altered or unavailable for releases after Windows 10.")
	static Windows.Devices.Sms.SmsTextMessage FromBinaryMessage(Windows.Devices.Sms.SmsBinaryMessage binaryMessage)
	{
		Windows.Devices.Sms.SmsTextMessage _ret;
		Debug.OK(staticInstance.abi_FromBinaryMessage(binaryMessage, &_ret));
		return _ret;
	}
	deprecated("ISmsTextMessageStatics may be altered or unavailable for releases after Windows 10.")
	static Windows.Devices.Sms.SmsTextMessage FromBinaryData(Windows.Devices.Sms.SmsDataFormat format, UINT32 __valueSize, ubyte* value)
	{
		Windows.Devices.Sms.SmsTextMessage _ret;
		Debug.OK(staticInstance.abi_FromBinaryData(format, __valueSize, value, &_ret));
		return _ret;
	}
	static SmsTextMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SmsTextMessage).abi_ActivateInstance(&ret));
		return cast(SmsTextMessage) ret;
	}
}

interface SmsTextMessage2 : Windows.Devices.Sms.ISmsTextMessage2, Windows.Devices.Sms.ISmsMessageBase
{
extern(Windows):
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).get_Timestamp(&_ret));
		return _ret;
	}
	final wstring To()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).get_To(&_ret));
		return hstring(_ret).d_str;
	}
	final void To(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).set_To(hstring(value).handle));
	}
	final wstring From()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).get_From(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Body()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).get_Body(&_ret));
		return hstring(_ret).d_str;
	}
	final void Body(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).set_Body(hstring(value).handle));
	}
	final Windows.Devices.Sms.SmsEncoding Encoding()
	{
		Windows.Devices.Sms.SmsEncoding _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).get_Encoding(&_ret));
		return _ret;
	}
	final void Encoding(Windows.Devices.Sms.SmsEncoding value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).set_Encoding(value));
	}
	final wstring CallbackNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).get_CallbackNumber(&_ret));
		return hstring(_ret).d_str;
	}
	final void CallbackNumber(wstring value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).set_CallbackNumber(hstring(value).handle));
	}
	final bool IsDeliveryNotificationEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).get_IsDeliveryNotificationEnabled(&_ret));
		return _ret;
	}
	final void IsDeliveryNotificationEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).set_IsDeliveryNotificationEnabled(value));
	}
	final INT32 RetryAttemptCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).get_RetryAttemptCount(&_ret));
		return _ret;
	}
	final void RetryAttemptCount(INT32 value)
	{
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).set_RetryAttemptCount(value));
	}
	final INT32 TeleserviceId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).get_TeleserviceId(&_ret));
		return _ret;
	}
	final INT32 ProtocolId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsTextMessage2)this.asInterface(uuid("22a0d893-4555-4755-b5a1-e7fd84955f8d"))).get_ProtocolId(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageType MessageType()
	{
		Windows.Devices.Sms.SmsMessageType _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageType(&_ret));
		return _ret;
	}
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_CellularClass(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageClass MessageClass()
	{
		Windows.Devices.Sms.SmsMessageClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageClass(&_ret));
		return _ret;
	}
	final wstring SimIccId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_SimIccId(&_ret));
		return hstring(_ret).d_str;
	}
	static SmsTextMessage2 New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SmsTextMessage2).abi_ActivateInstance(&ret));
		return cast(SmsTextMessage2) ret;
	}
}

interface SmsVoicemailMessage : Windows.Devices.Sms.ISmsVoicemailMessage, Windows.Devices.Sms.ISmsMessageBase
{
extern(Windows):
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsVoicemailMessage)this.asInterface(uuid("271aa0a6-95b1-44ff-bcb8-b8fdd7e08bc3"))).get_Timestamp(&_ret));
		return _ret;
	}
	final wstring To()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsVoicemailMessage)this.asInterface(uuid("271aa0a6-95b1-44ff-bcb8-b8fdd7e08bc3"))).get_To(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Body()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsVoicemailMessage)this.asInterface(uuid("271aa0a6-95b1-44ff-bcb8-b8fdd7e08bc3"))).get_Body(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.IReference!(INT32) MessageCount()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsVoicemailMessage)this.asInterface(uuid("271aa0a6-95b1-44ff-bcb8-b8fdd7e08bc3"))).get_MessageCount(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageType MessageType()
	{
		Windows.Devices.Sms.SmsMessageType _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageType(&_ret));
		return _ret;
	}
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_CellularClass(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageClass MessageClass()
	{
		Windows.Devices.Sms.SmsMessageClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageClass(&_ret));
		return _ret;
	}
	final wstring SimIccId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_SimIccId(&_ret));
		return hstring(_ret).d_str;
	}
}

interface SmsWapMessage : Windows.Devices.Sms.ISmsWapMessage, Windows.Devices.Sms.ISmsMessageBase
{
extern(Windows):
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsWapMessage)this.asInterface(uuid("cd937743-7a55-4d3b-9021-f22e022d09c5"))).get_Timestamp(&_ret));
		return _ret;
	}
	final wstring To()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsWapMessage)this.asInterface(uuid("cd937743-7a55-4d3b-9021-f22e022d09c5"))).get_To(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring From()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsWapMessage)this.asInterface(uuid("cd937743-7a55-4d3b-9021-f22e022d09c5"))).get_From(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ApplicationId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsWapMessage)this.asInterface(uuid("cd937743-7a55-4d3b-9021-f22e022d09c5"))).get_ApplicationId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ContentType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsWapMessage)this.asInterface(uuid("cd937743-7a55-4d3b-9021-f22e022d09c5"))).get_ContentType(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Storage.Streams.IBuffer BinaryBody()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsWapMessage)this.asInterface(uuid("cd937743-7a55-4d3b-9021-f22e022d09c5"))).get_BinaryBody(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) Headers()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsWapMessage)this.asInterface(uuid("cd937743-7a55-4d3b-9021-f22e022d09c5"))).get_Headers(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageType MessageType()
	{
		Windows.Devices.Sms.SmsMessageType _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageType(&_ret));
		return _ret;
	}
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Devices.Sms.CellularClass CellularClass()
	{
		Windows.Devices.Sms.CellularClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_CellularClass(&_ret));
		return _ret;
	}
	final Windows.Devices.Sms.SmsMessageClass MessageClass()
	{
		Windows.Devices.Sms.SmsMessageClass _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_MessageClass(&_ret));
		return _ret;
	}
	final wstring SimIccId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Sms.ISmsMessageBase)this.asInterface(uuid("2cf0fe30-fe50-4fc6-aa88-4ccfe27a29ea"))).get_SimIccId(&_ret));
		return hstring(_ret).d_str;
	}
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