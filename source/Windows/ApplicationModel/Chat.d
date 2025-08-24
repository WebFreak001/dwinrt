module Windows.ApplicationModel.Chat;

import dwinrt;

@uuid("3aff77bc-39c9-4dd1-ad2d-3964dd9d403f")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatCapabilities")
interface IChatCapabilities : IInspectable
{
extern(Windows):
	HRESULT get_IsOnline(bool* return_result);
	HRESULT get_IsChatCapable(bool* return_result);
	HRESULT get_IsFileTransferCapable(bool* return_result);
	HRESULT get_IsGeoLocationPushCapable(bool* return_result);
	HRESULT get_IsIntegratedMessagingCapable(bool* return_result);
}

@uuid("b57a2f30-7041-458e-b0cf-7c0d9fea333a")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatCapabilitiesManager")
interface IChatCapabilitiesManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetCachedCapabilitiesAsync(HSTRING address, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatCapabilities)* return_result);
	HRESULT abi_GetCapabilitiesFromNetworkAsync(HSTRING address, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatCapabilities)* return_result);
}

@uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatConversation")
interface IChatConversation : IInspectable
{
extern(Windows):
	HRESULT get_HasUnreadMessages(bool* return_result);
	HRESULT get_Id(HSTRING* return_result);
	HRESULT get_Subject(HSTRING* return_result);
	HRESULT set_Subject(HSTRING value);
	HRESULT get_IsConversationMuted(bool* return_result);
	HRESULT set_IsConversationMuted(bool value);
	HRESULT get_MostRecentMessageId(HSTRING* return_result);
	HRESULT get_Participants(Windows.Foundation.Collections.IVector!(HSTRING)* return_result);
	HRESULT get_ThreadingInfo(Windows.ApplicationModel.Chat.ChatConversationThreadingInfo* return_result);
	HRESULT abi_DeleteAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_GetMessageReader(Windows.ApplicationModel.Chat.ChatMessageReader* return_result);
	HRESULT abi_MarkAllMessagesAsReadAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_MarkMessagesAsReadAsync(Windows.Foundation.DateTime value, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_SaveAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_NotifyLocalParticipantComposing(HSTRING transportId, HSTRING participantAddress, bool isComposing);
	HRESULT abi_NotifyRemoteParticipantComposing(HSTRING transportId, HSTRING participantAddress, bool isComposing);
	HRESULT add_RemoteParticipantComposingChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.ChatConversation, Windows.ApplicationModel.Chat.RemoteParticipantComposingChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RemoteParticipantComposingChanged(EventRegistrationToken token);
}

@uuid("0a030cd1-983a-47aa-9a90-ee48ee997b59")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatConversation")
interface IChatConversation2 : IInspectable
{
extern(Windows):
	HRESULT get_CanModifyParticipants(bool* return_result);
	HRESULT set_CanModifyParticipants(bool value);
}

@uuid("055136d2-de32-4a47-a93a-b3dc0833852b")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatConversationReader")
interface IChatConversationReader : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatConversation))* return_result);
	HRESULT abi_ReadBatchWithCountAsync(INT32 count, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatConversation))* return_result);
}

@uuid("331c21dc-7a07-4422-a32c-24be7c6dab24")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatConversationThreadingInfo")
interface IChatConversationThreadingInfo : IInspectable
{
extern(Windows):
	HRESULT get_ContactId(HSTRING* return_result);
	HRESULT set_ContactId(HSTRING value);
	HRESULT get_Custom(HSTRING* return_result);
	HRESULT set_Custom(HSTRING value);
	HRESULT get_ConversationId(HSTRING* return_result);
	HRESULT set_ConversationId(HSTRING value);
	HRESULT get_Participants(Windows.Foundation.Collections.IVector!(HSTRING)* return_result);
	HRESULT get_Kind(Windows.ApplicationModel.Chat.ChatConversationThreadingKind* return_result);
	HRESULT set_Kind(Windows.ApplicationModel.Chat.ChatConversationThreadingKind value);
}

@uuid("8751d000-ceb1-4243-b803-15d45a1dd428")
interface IChatItem : IInspectable
{
extern(Windows):
	HRESULT get_ItemKind(Windows.ApplicationModel.Chat.ChatItemKind* return_result);
}

@uuid("4b39052a-1142-5089-76da-f2db3d17cd05")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessage")
interface IChatMessage : IInspectable
{
extern(Windows):
	HRESULT get_Attachments(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Chat.ChatMessageAttachment)* return_value);
	HRESULT get_Body(HSTRING* return_value);
	HRESULT set_Body(HSTRING value);
	HRESULT get_From(HSTRING* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_IsForwardingDisabled(bool* return_value);
	HRESULT get_IsIncoming(bool* return_value);
	HRESULT get_IsRead(bool* return_value);
	HRESULT get_LocalTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_NetworkTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_Recipients(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_RecipientSendStatuses(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Chat.ChatMessageStatus)* return_value);
	HRESULT get_Status(Windows.ApplicationModel.Chat.ChatMessageStatus* return_value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_TransportFriendlyName(HSTRING* return_value);
	HRESULT get_TransportId(HSTRING* return_value);
	HRESULT set_TransportId(HSTRING value);
}

@uuid("86668332-543f-49f5-ac71-6c2afc6565fd")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessage")
interface IChatMessage2_Base : IInspectable
{
extern(Windows):
	HRESULT get_EstimatedDownloadSize(ulong* return_result);
	HRESULT set_EstimatedDownloadSize(ulong value);
	HRESULT set_From(HSTRING value);
	HRESULT get_IsAutoReply(bool* return_result);
	HRESULT set_IsAutoReply(bool value);
	HRESULT set_IsForwardingDisabled(bool value);
	HRESULT get_IsReplyDisabled(bool* return_result);
	HRESULT set_IsIncoming(bool value);
	HRESULT set_IsRead(bool value);
	HRESULT get_IsSeen(bool* return_result);
	HRESULT set_IsSeen(bool value);
	HRESULT get_IsSimMessage(bool* return_result);
	HRESULT set_LocalTimestamp(Windows.Foundation.DateTime value);
	HRESULT get_MessageKind(Windows.ApplicationModel.Chat.ChatMessageKind* return_result);
	HRESULT set_MessageKind(Windows.ApplicationModel.Chat.ChatMessageKind value);
	HRESULT get_MessageOperatorKind(Windows.ApplicationModel.Chat.ChatMessageOperatorKind* return_result);
	HRESULT set_MessageOperatorKind(Windows.ApplicationModel.Chat.ChatMessageOperatorKind value);
	HRESULT set_NetworkTimestamp(Windows.Foundation.DateTime value);
	HRESULT get_IsReceivedDuringQuietHours(bool* return_result);
	HRESULT set_IsReceivedDuringQuietHours(bool value);
	HRESULT set_RemoteId(HSTRING value);
	HRESULT set_Status(Windows.ApplicationModel.Chat.ChatMessageStatus value);
	HRESULT set_Subject(HSTRING value);
	HRESULT get_ShouldSuppressNotification(bool* return_result);
	HRESULT set_ShouldSuppressNotification(bool value);
	HRESULT get_ThreadingInfo(Windows.ApplicationModel.Chat.ChatConversationThreadingInfo* return_result);
	HRESULT set_ThreadingInfo(Windows.ApplicationModel.Chat.ChatConversationThreadingInfo value);
	HRESULT get_RecipientsDeliveryInfos(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Chat.ChatRecipientDeliveryInfo)* return_result);
}
@uuid("86668332-543f-49f5-ac71-6c2afc6565fd")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessage")
interface IChatMessage2 : IChatMessage2_Base, Windows.ApplicationModel.Chat.IChatMessage3, Windows.ApplicationModel.Chat.IChatMessage {}

@uuid("74eb2fb0-3ba7-459f-8e0b-e8af0febd9ad")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessage")
interface IChatMessage3_Base : IInspectable
{
extern(Windows):
	HRESULT get_RemoteId(HSTRING* return_value);
}
@uuid("74eb2fb0-3ba7-459f-8e0b-e8af0febd9ad")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessage")
interface IChatMessage3 : IChatMessage3_Base, Windows.ApplicationModel.Chat.IChatMessage {}

@uuid("2d144b0f-d2bf-460c-aa68-6d3f8483c9bf")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessage")
interface IChatMessage4_Base : IInspectable
{
extern(Windows):
	HRESULT get_SyncId(HSTRING* return_result);
	HRESULT set_SyncId(HSTRING value);
}
@uuid("2d144b0f-d2bf-460c-aa68-6d3f8483c9bf")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessage")
interface IChatMessage4 : IChatMessage4_Base, Windows.ApplicationModel.Chat.IChatMessage {}

@uuid("c7c4fd74-bf63-58eb-508c-8b863ff16b67")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageAttachment")
interface IChatMessageAttachment : IInspectable
{
extern(Windows):
	HRESULT get_DataStreamReference(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_DataStreamReference(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_GroupId(UINT32* return_value);
	HRESULT set_GroupId(UINT32 value);
	HRESULT get_MimeType(HSTRING* return_value);
	HRESULT set_MimeType(HSTRING value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
}

@uuid("5ed99270-7dd1-4a87-a8ce-acdd87d80dc8")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageAttachment")
interface IChatMessageAttachment2_Base : IInspectable
{
extern(Windows):
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_result);
	HRESULT set_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_TransferProgress(double* return_result);
	HRESULT set_TransferProgress(double value);
	HRESULT get_OriginalFileName(HSTRING* return_result);
	HRESULT set_OriginalFileName(HSTRING value);
}
@uuid("5ed99270-7dd1-4a87-a8ce-acdd87d80dc8")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageAttachment")
interface IChatMessageAttachment2 : IChatMessageAttachment2_Base, Windows.ApplicationModel.Chat.IChatMessageAttachment {}

@uuid("205852a2-a356-5b71-6ca9-66c985b7d0d5")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageAttachment")
interface IChatMessageAttachmentFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateChatMessageAttachment(HSTRING mimeType, Windows.Storage.Streams.IRandomAccessStreamReference dataStreamReference, Windows.ApplicationModel.Chat.ChatMessageAttachment* return_value);
}

@uuid("f6b9a380-cdea-11e4-8830-0800200c9a66")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageBlocking")
interface IChatMessageBlockingStatic : IInspectable
{
extern(Windows):
	HRESULT abi_MarkMessageAsBlockedAsync(HSTRING localChatMessageId, bool blocked, Windows.Foundation.IAsyncAction* return_value);
}

@uuid("1c18c355-421e-54b8-6d38-6b3a6c82fccc")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageChange")
interface IChatMessageChange : IInspectable
{
extern(Windows):
	HRESULT get_ChangeType(Windows.ApplicationModel.Chat.ChatMessageChangeType* return_value);
	HRESULT get_Message(Windows.ApplicationModel.Chat.ChatMessage* return_value);
}

@uuid("14267020-28ce-5f26-7b05-9a5c7cce87ca")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageChangeReader")
interface IChatMessageChangeReader : IInspectable
{
extern(Windows):
	HRESULT abi_AcceptChanges();
	HRESULT abi_AcceptChangesThrough(Windows.ApplicationModel.Chat.ChatMessageChange lastChangeToAcknowledge);
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessageChange))* return_value);
}

@uuid("60b7f066-70a0-5224-508c-242ef7c1d06f")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageChangeTracker")
interface IChatMessageChangeTracker : IInspectable
{
extern(Windows):
	HRESULT abi_Enable();
	HRESULT abi_GetChangeReader(Windows.ApplicationModel.Chat.ChatMessageChangeReader* return_value);
	HRESULT abi_Reset();
}

@uuid("fbc6b30c-788c-4dcc-ace7-6282382968cf")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageChangedDeferral")
interface IChatMessageChangedDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("b6b73e2d-691c-4edf-8660-6eb9896892e3")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageChangedEventArgs")
interface IChatMessageChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Chat.ChatMessageChangedDeferral* return_result);
}

@uuid("1d45390f-9f4f-4e35-964e-1b9ca61ac044")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageManager")
interface IChatMessageManager2Statics_Base : IInspectable
{
extern(Windows):
	HRESULT abi_RegisterTransportAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_GetTransportAsync(HSTRING transportId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessageTransport)* return_result);
}
@uuid("1d45390f-9f4f-4e35-964e-1b9ca61ac044")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageManager")
interface IChatMessageManager2Statics : IChatMessageManager2Statics_Base, Windows.ApplicationModel.Chat.IChatMessageManagerStatic {}

@uuid("f15c60f7-d5e8-5e92-556d-e03b60253104")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageManager")
interface IChatMessageManagerStatic : IInspectable
{
extern(Windows):
	HRESULT abi_GetTransportsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessageTransport))* return_value);
	HRESULT abi_RequestStoreAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessageStore)* return_value);
	HRESULT abi_ShowComposeSmsMessageAsync(Windows.ApplicationModel.Chat.ChatMessage message, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_ShowSmsSettings();
}

@uuid("208b830d-6755-48cc-9ab3-fd03c463fc92")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageManager")
interface IChatMessageManagerStatics3_Base : IInspectable
{
extern(Windows):
	HRESULT abi_RequestSyncManagerAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatSyncManager)* return_result);
}
@uuid("208b830d-6755-48cc-9ab3-fd03c463fc92")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageManager")
interface IChatMessageManagerStatics3 : IChatMessageManagerStatics3_Base, Windows.ApplicationModel.Chat.IChatMessageManagerStatic {}

@uuid("fd344dfb-3063-4e17-8586-c6c08262e6c0")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageNotificationTriggerDetails")
interface IChatMessageNotificationTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_ChatMessage(Windows.ApplicationModel.Chat.ChatMessage* return_value);
}

@uuid("6bb522e0-aa07-4fd1-9471-77934fb75ee6")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageNotificationTriggerDetails")
interface IChatMessageNotificationTriggerDetails2_Base : IInspectable
{
extern(Windows):
	HRESULT get_ShouldDisplayToast(bool* return_result);
	HRESULT get_ShouldUpdateDetailText(bool* return_result);
	HRESULT get_ShouldUpdateBadge(bool* return_result);
	HRESULT get_ShouldUpdateActionCenter(bool* return_result);
}
@uuid("6bb522e0-aa07-4fd1-9471-77934fb75ee6")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageNotificationTriggerDetails")
interface IChatMessageNotificationTriggerDetails2 : IChatMessageNotificationTriggerDetails2_Base, Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails {}

@uuid("b6ea78ce-4489-56f9-76aa-e204682514cf")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageReader")
interface IChatMessageReader : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessage))* return_value);
}

@uuid("89643683-64bb-470d-9df4-0de8be1a05bf")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageReader")
interface IChatMessageReader2 : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchWithCountAsync(INT32 count, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessage))* return_result);
}

@uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageStore")
interface IChatMessageStore : IInspectable
{
extern(Windows):
	HRESULT get_ChangeTracker(Windows.ApplicationModel.Chat.ChatMessageChangeTracker* return_value);
	HRESULT abi_DeleteMessageAsync(HSTRING localMessageId, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_DownloadMessageAsync(HSTRING localChatMessageId, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_GetMessageAsync(HSTRING localChatMessageId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage)* return_value);
	HRESULT abi_GetMessageReader1(Windows.ApplicationModel.Chat.ChatMessageReader* return_value);
	HRESULT abi_GetMessageReader2(Windows.Foundation.TimeSpan recentTimeLimit, Windows.ApplicationModel.Chat.ChatMessageReader* return_value);
	HRESULT abi_MarkMessageReadAsync(HSTRING localChatMessageId, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_RetrySendMessageAsync(HSTRING localChatMessageId, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_SendMessageAsync(Windows.ApplicationModel.Chat.ChatMessage chatMessage, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_ValidateMessage(Windows.ApplicationModel.Chat.ChatMessage chatMessage, Windows.ApplicationModel.Chat.ChatMessageValidationResult* return_value);
	HRESULT add_MessageChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.ChatMessageStore, Windows.ApplicationModel.Chat.ChatMessageChangedEventArgs) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_MessageChanged(EventRegistrationToken value);
}

@uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageStore")
interface IChatMessageStore2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ForwardMessageAsync(HSTRING localChatMessageId, Windows.Foundation.Collections.IIterable!(HSTRING) addresses, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage)* return_result);
	HRESULT abi_GetConversationAsync(HSTRING conversationId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatConversation)* return_result);
	HRESULT abi_GetConversationForTransportsAsync(HSTRING conversationId, Windows.Foundation.Collections.IIterable!(HSTRING) transportIds, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatConversation)* return_result);
	HRESULT abi_GetConversationFromThreadingInfoAsync(Windows.ApplicationModel.Chat.ChatConversationThreadingInfo threadingInfo, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatConversation)* return_result);
	HRESULT abi_GetConversationReader(Windows.ApplicationModel.Chat.ChatConversationReader* return_result);
	HRESULT abi_GetConversationForTransportsReader(Windows.Foundation.Collections.IIterable!(HSTRING) transportIds, Windows.ApplicationModel.Chat.ChatConversationReader* return_result);
	HRESULT abi_GetMessageByRemoteIdAsync(HSTRING transportId, HSTRING remoteId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage)* return_result);
	HRESULT abi_GetUnseenCountAsync(Windows.Foundation.IAsyncOperation!(INT32)* return_result);
	HRESULT abi_GetUnseenCountForTransportsReaderAsync(Windows.Foundation.Collections.IIterable!(HSTRING) transportIds, Windows.Foundation.IAsyncOperation!(INT32)* return_result);
	HRESULT abi_MarkAsSeenAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_MarkAsSeenForTransportsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) transportIds, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_GetSearchReader(Windows.ApplicationModel.Chat.ChatQueryOptions value, Windows.ApplicationModel.Chat.ChatSearchReader* return_result);
	HRESULT abi_SaveMessageAsync(Windows.ApplicationModel.Chat.ChatMessage chatMessage, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_TryCancelDownloadMessageAsync(HSTRING localChatMessageId, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryCancelSendMessageAsync(HSTRING localChatMessageId, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT add_StoreChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.ChatMessageStore, Windows.ApplicationModel.Chat.ChatMessageStoreChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StoreChanged(EventRegistrationToken token);
}
@uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageStore")
interface IChatMessageStore2 : IChatMessageStore2_Base, Windows.ApplicationModel.Chat.IChatMessageStore {}

@uuid("9adbbb09-4345-4ec1-8b74-b7338243719c")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageStore")
interface IChatMessageStore3_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetMessageBySyncIdAsync(HSTRING syncId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage)* return_result);
}
@uuid("9adbbb09-4345-4ec1-8b74-b7338243719c")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageStore")
interface IChatMessageStore3 : IChatMessageStore3_Base, Windows.ApplicationModel.Chat.IChatMessageStore {}

@uuid("65c66fac-fe8c-46d4-9119-57b8410311d5")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageStoreChangedEventArgs")
interface IChatMessageStoreChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_result);
	HRESULT get_Kind(Windows.ApplicationModel.Chat.ChatStoreChangedEventKind* return_result);
}

@uuid("63a9dbf8-e6b3-5c9a-5f85-d47925b9bd18")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageTransport")
interface IChatMessageTransport : IInspectable
{
extern(Windows):
	HRESULT get_IsAppSetAsNotificationProvider(bool* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_TransportFriendlyName(HSTRING* return_value);
	HRESULT get_TransportId(HSTRING* return_value);
	HRESULT abi_RequestSetAsNotificationProviderAsync(Windows.Foundation.IAsyncAction* return_value);
}

@uuid("90a75622-d84a-4c22-a94d-544444edc8a1")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageTransport")
interface IChatMessageTransport2_Base : IInspectable
{
extern(Windows):
	HRESULT get_Configuration(Windows.ApplicationModel.Chat.ChatMessageTransportConfiguration* return_result);
	HRESULT get_TransportKind(Windows.ApplicationModel.Chat.ChatMessageTransportKind* return_result);
}
@uuid("90a75622-d84a-4c22-a94d-544444edc8a1")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageTransport")
interface IChatMessageTransport2 : IChatMessageTransport2_Base, Windows.ApplicationModel.Chat.IChatMessageTransport {}

@uuid("879ff725-1a08-4aca-a075-3355126312e6")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageTransportConfiguration")
interface IChatMessageTransportConfiguration : IInspectable
{
extern(Windows):
	HRESULT get_MaxAttachmentCount(INT32* return_result);
	HRESULT get_MaxMessageSizeInKilobytes(INT32* return_result);
	HRESULT get_MaxRecipientCount(INT32* return_result);
	HRESULT get_SupportedVideoFormat(Windows.Media.MediaProperties.MediaEncodingProfile* return_result);
	HRESULT get_ExtendedProperties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_result);
}

@uuid("25e93a03-28ec-5889-569b-7e486b126f18")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageValidationResult")
interface IChatMessageValidationResult : IInspectable
{
extern(Windows):
	HRESULT get_MaxPartCount(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_PartCount(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_RemainingCharacterCountInPart(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_Status(Windows.ApplicationModel.Chat.ChatMessageValidationStatus* return_value);
}

@uuid("2fd364a6-bf36-42f7-b7e7-923c0aabfe16")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatQueryOptions")
interface IChatQueryOptions : IInspectable
{
extern(Windows):
	HRESULT get_SearchString(HSTRING* return_result);
	HRESULT set_SearchString(HSTRING value);
}

@uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatRecipientDeliveryInfo")
interface IChatRecipientDeliveryInfo : IInspectable
{
extern(Windows):
	HRESULT get_TransportAddress(HSTRING* return_result);
	HRESULT set_TransportAddress(HSTRING value);
	HRESULT get_DeliveryTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_result);
	HRESULT set_DeliveryTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_ReadTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_result);
	HRESULT set_ReadTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_TransportErrorCodeCategory(Windows.ApplicationModel.Chat.ChatTransportErrorCodeCategory* return_result);
	HRESULT get_TransportInterpretedErrorCode(Windows.ApplicationModel.Chat.ChatTransportInterpretedErrorCode* return_result);
	HRESULT get_TransportErrorCode(INT32* return_result);
	HRESULT get_IsErrorPermanent(bool* return_result);
	HRESULT get_Status(Windows.ApplicationModel.Chat.ChatMessageStatus* return_result);
}

@uuid("4665fe49-9020-4752-980d-39612325f589")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatSearchReader")
interface IChatSearchReader : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.IChatItem))* return_result);
	HRESULT abi_ReadBatchWithCountAsync(INT32 count, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.IChatItem))* return_result);
}

@uuid("09f869b2-69f4-4aff-82b6-06992ff402d2")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatSyncConfiguration")
interface IChatSyncConfiguration : IInspectable
{
extern(Windows):
	HRESULT get_IsSyncEnabled(bool* return_result);
	HRESULT set_IsSyncEnabled(bool value);
	HRESULT get_RestoreHistorySpan(Windows.ApplicationModel.Chat.ChatRestoreHistorySpan* return_result);
	HRESULT set_RestoreHistorySpan(Windows.ApplicationModel.Chat.ChatRestoreHistorySpan value);
}

@uuid("7ba52c63-2650-486f-b4b4-6bd9d3d63c84")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatSyncManager")
interface IChatSyncManager : IInspectable
{
extern(Windows):
	HRESULT get_Configuration(Windows.ApplicationModel.Chat.ChatSyncConfiguration* return_result);
	HRESULT abi_AssociateAccountAsync(Windows.Security.Credentials.WebAccount webAccount, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_UnassociateAccountAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_IsAccountAssociated(Windows.Security.Credentials.WebAccount webAccount, bool* return_result);
	HRESULT abi_StartSync();
	HRESULT abi_SetConfigurationAsync(Windows.ApplicationModel.Chat.ChatSyncConfiguration configuration, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("d7cda5eb-cbd7-4f3b-8526-b506dec35c53")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsEndUserMessage")
interface IRcsEndUserMessage : IInspectable
{
extern(Windows):
	HRESULT get_TransportId(HSTRING* return_result);
	HRESULT get_Title(HSTRING* return_result);
	HRESULT get_Text(HSTRING* return_result);
	HRESULT get_IsPinRequired(bool* return_result);
	HRESULT get_Actions(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.RcsEndUserMessageAction)* return_result);
	HRESULT abi_SendResponseAsync(Windows.ApplicationModel.Chat.RcsEndUserMessageAction action, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_SendResponseWithPinAsync(Windows.ApplicationModel.Chat.RcsEndUserMessageAction action, HSTRING pin, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("92378737-9b42-46d3-9d5e-3c1b2dae7cb8")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsEndUserMessageAction")
interface IRcsEndUserMessageAction : IInspectable
{
extern(Windows):
	HRESULT get_Label(HSTRING* return_result);
}

@uuid("2d45ae01-3f89-41ea-9702-9e9ed411aa98")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableEventArgs")
interface IRcsEndUserMessageAvailableEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_IsMessageAvailable(bool* return_result);
	HRESULT get_Message(Windows.ApplicationModel.Chat.RcsEndUserMessage* return_result);
}

@uuid("5b97742d-351f-4692-b41e-1b035dc18986")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableTriggerDetails")
interface IRcsEndUserMessageAvailableTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("3054ae5a-4d1f-4b59-9433-126c734e86a6")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsEndUserMessageManager")
interface IRcsEndUserMessageManager : IInspectable
{
extern(Windows):
	HRESULT add_MessageAvailableChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.RcsEndUserMessageManager, Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_MessageAvailableChanged(EventRegistrationToken token);
}

@uuid("7d270ac5-0abd-4f31-9b99-a59e71a7b731")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsManager")
interface IRcsManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetEndUserMessageManager(Windows.ApplicationModel.Chat.RcsEndUserMessageManager* return_result);
	HRESULT abi_GetTransportsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.RcsTransport))* return_value);
	HRESULT abi_GetTransportAsync(HSTRING transportId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.RcsTransport)* return_result);
	HRESULT abi_LeaveConversationAsync(Windows.ApplicationModel.Chat.ChatConversation conversation, Windows.Foundation.IAsyncAction* return_value);
}

@uuid("f47ea244-e783-4866-b3a7-4e5ccf023070")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsServiceKindSupportedChangedEventArgs")
interface IRcsServiceKindSupportedChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ServiceKind(Windows.ApplicationModel.Chat.RcsServiceKind* return_result);
}

@uuid("fea34759-f37c-4319-8546-ec84d21d30ff")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsTransport")
interface IRcsTransport : IInspectable
{
extern(Windows):
	HRESULT get_ExtendedProperties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_TransportFriendlyName(HSTRING* return_value);
	HRESULT get_TransportId(HSTRING* return_value);
	HRESULT get_Configuration(Windows.ApplicationModel.Chat.RcsTransportConfiguration* return_result);
	HRESULT abi_IsStoreAndForwardEnabled(Windows.ApplicationModel.Chat.RcsServiceKind serviceKind, bool* return_result);
	HRESULT abi_IsServiceKindSupported(Windows.ApplicationModel.Chat.RcsServiceKind serviceKind, bool* return_result);
	HRESULT add_ServiceKindSupportedChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.RcsTransport, Windows.ApplicationModel.Chat.RcsServiceKindSupportedChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ServiceKindSupportedChanged(EventRegistrationToken token);
}

@uuid("1fccb102-2472-4bb9-9988-c1211c83e8a9")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsTransportConfiguration")
interface IRcsTransportConfiguration : IInspectable
{
extern(Windows):
	HRESULT get_MaxAttachmentCount(INT32* return_result);
	HRESULT get_MaxMessageSizeInKilobytes(INT32* return_result);
	HRESULT get_MaxGroupMessageSizeInKilobytes(INT32* return_result);
	HRESULT get_MaxRecipientCount(INT32* return_result);
	HRESULT get_MaxFileSizeInKilobytes(INT32* return_result);
	HRESULT get_WarningFileSizeInKilobytes(INT32* return_result);
}

@uuid("1ec045a7-cfc9-45c9-9876-449f2bc180f5")
@WinrtFactory("Windows.ApplicationModel.Chat.RemoteParticipantComposingChangedEventArgs")
interface IRemoteParticipantComposingChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_TransportId(HSTRING* return_result);
	HRESULT get_ParticipantAddress(HSTRING* return_result);
	HRESULT get_IsComposing(bool* return_result);
}

interface ChatCapabilities : Windows.ApplicationModel.Chat.IChatCapabilities
{
extern(Windows):
	final bool IsOnline()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatCapabilities)this.asInterface(uuid("3aff77bc-39c9-4dd1-ad2d-3964dd9d403f"))).get_IsOnline(&_ret));
		return _ret;
	}
	final bool IsChatCapable()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatCapabilities)this.asInterface(uuid("3aff77bc-39c9-4dd1-ad2d-3964dd9d403f"))).get_IsChatCapable(&_ret));
		return _ret;
	}
	final bool IsFileTransferCapable()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatCapabilities)this.asInterface(uuid("3aff77bc-39c9-4dd1-ad2d-3964dd9d403f"))).get_IsFileTransferCapable(&_ret));
		return _ret;
	}
	final bool IsGeoLocationPushCapable()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatCapabilities)this.asInterface(uuid("3aff77bc-39c9-4dd1-ad2d-3964dd9d403f"))).get_IsGeoLocationPushCapable(&_ret));
		return _ret;
	}
	final bool IsIntegratedMessagingCapable()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatCapabilities)this.asInterface(uuid("3aff77bc-39c9-4dd1-ad2d-3964dd9d403f"))).get_IsIntegratedMessagingCapable(&_ret));
		return _ret;
	}
}

interface ChatCapabilitiesManager
{
	private static Windows.ApplicationModel.Chat.IChatCapabilitiesManagerStatics _staticInstance;
	public static Windows.ApplicationModel.Chat.IChatCapabilitiesManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Chat.IChatCapabilitiesManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatCapabilities) GetCachedCapabilitiesAsync(wstring address)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatCapabilities) _ret;
		Debug.OK(staticInstance.abi_GetCachedCapabilitiesAsync(hstring(address).handle, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatCapabilities) GetCapabilitiesFromNetworkAsync(wstring address)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatCapabilities) _ret;
		Debug.OK(staticInstance.abi_GetCapabilitiesFromNetworkAsync(hstring(address).handle, &_ret));
		return _ret;
	}
}

interface ChatConversation : Windows.ApplicationModel.Chat.IChatConversation, Windows.ApplicationModel.Chat.IChatConversation2, Windows.ApplicationModel.Chat.IChatItem
{
extern(Windows):
	final bool HasUnreadMessages()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).get_HasUnreadMessages(&_ret));
		return _ret;
	}
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Subject()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).get_Subject(&_ret));
		return hstring(_ret).d_str;
	}
	final void Subject(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).set_Subject(hstring(value).handle));
	}
	final bool IsConversationMuted()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).get_IsConversationMuted(&_ret));
		return _ret;
	}
	final void IsConversationMuted(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).set_IsConversationMuted(value));
	}
	final wstring MostRecentMessageId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).get_MostRecentMessageId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Participants()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).get_Participants(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatConversationThreadingInfo ThreadingInfo()
	{
		Windows.ApplicationModel.Chat.ChatConversationThreadingInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).get_ThreadingInfo(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).abi_DeleteAsync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatMessageReader GetMessageReader()
	{
		Windows.ApplicationModel.Chat.ChatMessageReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).abi_GetMessageReader(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MarkAllMessagesAsReadAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).abi_MarkAllMessagesAsReadAsync(&_ret));
		return _ret;
	}
	alias MarkMessagesAsReadAsync = MarkAllMessagesAsReadAsync;
	final Windows.Foundation.IAsyncAction MarkMessagesAsReadAsync(Windows.Foundation.DateTime value)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).abi_MarkMessagesAsReadAsync(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).abi_SaveAsync(&_ret));
		return _ret;
	}
	final void NotifyLocalParticipantComposing(wstring transportId, wstring participantAddress, bool isComposing)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).abi_NotifyLocalParticipantComposing(hstring(transportId).handle, hstring(participantAddress).handle, isComposing));
	}
	final void NotifyRemoteParticipantComposing(wstring transportId, wstring participantAddress, bool isComposing)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).abi_NotifyRemoteParticipantComposing(hstring(transportId).handle, hstring(participantAddress).handle, isComposing));
	}
	final EventRegistrationToken OnRemoteParticipantComposingChanged(void delegate(Windows.ApplicationModel.Chat.ChatConversation, Windows.ApplicationModel.Chat.RemoteParticipantComposingChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).add_RemoteParticipantComposingChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.ChatConversation, Windows.ApplicationModel.Chat.RemoteParticipantComposingChangedEventArgs), Windows.ApplicationModel.Chat.ChatConversation, Windows.ApplicationModel.Chat.RemoteParticipantComposingChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRemoteParticipantComposingChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation)this.asInterface(uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee"))).remove_RemoteParticipantComposingChanged(token));
	}
	final bool CanModifyParticipants()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation2)this.asInterface(uuid("0a030cd1-983a-47aa-9a90-ee48ee997b59"))).get_CanModifyParticipants(&_ret));
		return _ret;
	}
	final void CanModifyParticipants(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversation2)this.asInterface(uuid("0a030cd1-983a-47aa-9a90-ee48ee997b59"))).set_CanModifyParticipants(value));
	}
	final Windows.ApplicationModel.Chat.ChatItemKind ItemKind()
	{
		Windows.ApplicationModel.Chat.ChatItemKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatItem)this.asInterface(uuid("8751d000-ceb1-4243-b803-15d45a1dd428"))).get_ItemKind(&_ret));
		return _ret;
	}
}

interface ChatConversationReader : Windows.ApplicationModel.Chat.IChatConversationReader
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatConversation)) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatConversation)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationReader)this.asInterface(uuid("055136d2-de32-4a47-a93a-b3dc0833852b"))).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatConversation)) ReadBatchWithCountAsync(INT32 count)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatConversation)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationReader)this.asInterface(uuid("055136d2-de32-4a47-a93a-b3dc0833852b"))).abi_ReadBatchWithCountAsync(count, &_ret));
		return _ret;
	}
	alias ReadBatchAsync = ReadBatchWithCountAsync;
}

interface ChatConversationThreadingInfo : Windows.ApplicationModel.Chat.IChatConversationThreadingInfo
{
extern(Windows):
	final wstring ContactId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationThreadingInfo)this.asInterface(uuid("331c21dc-7a07-4422-a32c-24be7c6dab24"))).get_ContactId(&_ret));
		return hstring(_ret).d_str;
	}
	final void ContactId(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationThreadingInfo)this.asInterface(uuid("331c21dc-7a07-4422-a32c-24be7c6dab24"))).set_ContactId(hstring(value).handle));
	}
	final wstring Custom()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationThreadingInfo)this.asInterface(uuid("331c21dc-7a07-4422-a32c-24be7c6dab24"))).get_Custom(&_ret));
		return hstring(_ret).d_str;
	}
	final void Custom(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationThreadingInfo)this.asInterface(uuid("331c21dc-7a07-4422-a32c-24be7c6dab24"))).set_Custom(hstring(value).handle));
	}
	final wstring ConversationId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationThreadingInfo)this.asInterface(uuid("331c21dc-7a07-4422-a32c-24be7c6dab24"))).get_ConversationId(&_ret));
		return hstring(_ret).d_str;
	}
	final void ConversationId(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationThreadingInfo)this.asInterface(uuid("331c21dc-7a07-4422-a32c-24be7c6dab24"))).set_ConversationId(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Participants()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationThreadingInfo)this.asInterface(uuid("331c21dc-7a07-4422-a32c-24be7c6dab24"))).get_Participants(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatConversationThreadingKind Kind()
	{
		Windows.ApplicationModel.Chat.ChatConversationThreadingKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationThreadingInfo)this.asInterface(uuid("331c21dc-7a07-4422-a32c-24be7c6dab24"))).get_Kind(&_ret));
		return _ret;
	}
	final void Kind(Windows.ApplicationModel.Chat.ChatConversationThreadingKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatConversationThreadingInfo)this.asInterface(uuid("331c21dc-7a07-4422-a32c-24be7c6dab24"))).set_Kind(value));
	}
	static ChatConversationThreadingInfo New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ChatConversationThreadingInfo).abi_ActivateInstance(&ret));
		return cast(ChatConversationThreadingInfo) ret;
	}
}

interface ChatMessage : Windows.ApplicationModel.Chat.IChatMessage, Windows.ApplicationModel.Chat.IChatMessage2, Windows.ApplicationModel.Chat.IChatMessage3, Windows.ApplicationModel.Chat.IChatMessage4, Windows.ApplicationModel.Chat.IChatItem
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Chat.ChatMessageAttachment) Attachments()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Chat.ChatMessageAttachment) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_Attachments(&_ret));
		return _ret;
	}
	final wstring Body()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_Body(&_ret));
		return hstring(_ret).d_str;
	}
	final void Body(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).set_Body(hstring(value).handle));
	}
	final wstring From()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_From(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final bool IsForwardingDisabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_IsForwardingDisabled(&_ret));
		return _ret;
	}
	final bool IsIncoming()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_IsIncoming(&_ret));
		return _ret;
	}
	final bool IsRead()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_IsRead(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime LocalTimestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_LocalTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime NetworkTimestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_NetworkTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Recipients()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_Recipients(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Chat.ChatMessageStatus) RecipientSendStatuses()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Chat.ChatMessageStatus) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_RecipientSendStatuses(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatMessageStatus Status()
	{
		Windows.ApplicationModel.Chat.ChatMessageStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_Status(&_ret));
		return _ret;
	}
	final wstring Subject()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_Subject(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring TransportFriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_TransportFriendlyName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring TransportId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).get_TransportId(&_ret));
		return hstring(_ret).d_str;
	}
	final void TransportId(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage)this.asInterface(uuid("4b39052a-1142-5089-76da-f2db3d17cd05"))).set_TransportId(hstring(value).handle));
	}
	final ulong EstimatedDownloadSize()
	{
		ulong _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_EstimatedDownloadSize(&_ret));
		return _ret;
	}
	final void EstimatedDownloadSize(ulong value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_EstimatedDownloadSize(value));
	}
	final void From(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_From(hstring(value).handle));
	}
	final bool IsAutoReply()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_IsAutoReply(&_ret));
		return _ret;
	}
	final void IsAutoReply(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_IsAutoReply(value));
	}
	final void IsForwardingDisabled(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_IsForwardingDisabled(value));
	}
	final bool IsReplyDisabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_IsReplyDisabled(&_ret));
		return _ret;
	}
	final void IsIncoming(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_IsIncoming(value));
	}
	final void IsRead(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_IsRead(value));
	}
	final bool IsSeen()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_IsSeen(&_ret));
		return _ret;
	}
	final void IsSeen(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_IsSeen(value));
	}
	final bool IsSimMessage()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_IsSimMessage(&_ret));
		return _ret;
	}
	final void LocalTimestamp(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_LocalTimestamp(value));
	}
	final Windows.ApplicationModel.Chat.ChatMessageKind MessageKind()
	{
		Windows.ApplicationModel.Chat.ChatMessageKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_MessageKind(&_ret));
		return _ret;
	}
	final void MessageKind(Windows.ApplicationModel.Chat.ChatMessageKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_MessageKind(value));
	}
	final Windows.ApplicationModel.Chat.ChatMessageOperatorKind MessageOperatorKind()
	{
		Windows.ApplicationModel.Chat.ChatMessageOperatorKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_MessageOperatorKind(&_ret));
		return _ret;
	}
	final void MessageOperatorKind(Windows.ApplicationModel.Chat.ChatMessageOperatorKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_MessageOperatorKind(value));
	}
	final void NetworkTimestamp(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_NetworkTimestamp(value));
	}
	final bool IsReceivedDuringQuietHours()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_IsReceivedDuringQuietHours(&_ret));
		return _ret;
	}
	final void IsReceivedDuringQuietHours(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_IsReceivedDuringQuietHours(value));
	}
	final void RemoteId(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_RemoteId(hstring(value).handle));
	}
	final void Status(Windows.ApplicationModel.Chat.ChatMessageStatus value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_Status(value));
	}
	final void Subject(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_Subject(hstring(value).handle));
	}
	final bool ShouldSuppressNotification()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_ShouldSuppressNotification(&_ret));
		return _ret;
	}
	final void ShouldSuppressNotification(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_ShouldSuppressNotification(value));
	}
	final Windows.ApplicationModel.Chat.ChatConversationThreadingInfo ThreadingInfo()
	{
		Windows.ApplicationModel.Chat.ChatConversationThreadingInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_ThreadingInfo(&_ret));
		return _ret;
	}
	final void ThreadingInfo(Windows.ApplicationModel.Chat.ChatConversationThreadingInfo value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).set_ThreadingInfo(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Chat.ChatRecipientDeliveryInfo) RecipientsDeliveryInfos()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Chat.ChatRecipientDeliveryInfo) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage2)this.asInterface(uuid("86668332-543f-49f5-ac71-6c2afc6565fd"))).get_RecipientsDeliveryInfos(&_ret));
		return _ret;
	}
	final wstring RemoteId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage3)this.asInterface(uuid("74eb2fb0-3ba7-459f-8e0b-e8af0febd9ad"))).get_RemoteId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring SyncId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage4)this.asInterface(uuid("2d144b0f-d2bf-460c-aa68-6d3f8483c9bf"))).get_SyncId(&_ret));
		return hstring(_ret).d_str;
	}
	final void SyncId(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessage4)this.asInterface(uuid("2d144b0f-d2bf-460c-aa68-6d3f8483c9bf"))).set_SyncId(hstring(value).handle));
	}
	final Windows.ApplicationModel.Chat.ChatItemKind ItemKind()
	{
		Windows.ApplicationModel.Chat.ChatItemKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatItem)this.asInterface(uuid("8751d000-ceb1-4243-b803-15d45a1dd428"))).get_ItemKind(&_ret));
		return _ret;
	}
	static ChatMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ChatMessage).abi_ActivateInstance(&ret));
		return cast(ChatMessage) ret;
	}
}

interface ChatMessageAttachment : Windows.ApplicationModel.Chat.IChatMessageAttachment, Windows.ApplicationModel.Chat.IChatMessageAttachment2
{
extern(Windows):
	final Windows.Storage.Streams.IRandomAccessStreamReference DataStreamReference()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment)this.asInterface(uuid("c7c4fd74-bf63-58eb-508c-8b863ff16b67"))).get_DataStreamReference(&_ret));
		return _ret;
	}
	final void DataStreamReference(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment)this.asInterface(uuid("c7c4fd74-bf63-58eb-508c-8b863ff16b67"))).set_DataStreamReference(value));
	}
	final UINT32 GroupId()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment)this.asInterface(uuid("c7c4fd74-bf63-58eb-508c-8b863ff16b67"))).get_GroupId(&_ret));
		return _ret;
	}
	final void GroupId(UINT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment)this.asInterface(uuid("c7c4fd74-bf63-58eb-508c-8b863ff16b67"))).set_GroupId(value));
	}
	final wstring MimeType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment)this.asInterface(uuid("c7c4fd74-bf63-58eb-508c-8b863ff16b67"))).get_MimeType(&_ret));
		return hstring(_ret).d_str;
	}
	final void MimeType(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment)this.asInterface(uuid("c7c4fd74-bf63-58eb-508c-8b863ff16b67"))).set_MimeType(hstring(value).handle));
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment)this.asInterface(uuid("c7c4fd74-bf63-58eb-508c-8b863ff16b67"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final void Text(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment)this.asInterface(uuid("c7c4fd74-bf63-58eb-508c-8b863ff16b67"))).set_Text(hstring(value).handle));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Thumbnail()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment2)this.asInterface(uuid("5ed99270-7dd1-4a87-a8ce-acdd87d80dc8"))).get_Thumbnail(&_ret));
		return _ret;
	}
	final void Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment2)this.asInterface(uuid("5ed99270-7dd1-4a87-a8ce-acdd87d80dc8"))).set_Thumbnail(value));
	}
	final double TransferProgress()
	{
		double _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment2)this.asInterface(uuid("5ed99270-7dd1-4a87-a8ce-acdd87d80dc8"))).get_TransferProgress(&_ret));
		return _ret;
	}
	final void TransferProgress(double value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment2)this.asInterface(uuid("5ed99270-7dd1-4a87-a8ce-acdd87d80dc8"))).set_TransferProgress(value));
	}
	final wstring OriginalFileName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment2)this.asInterface(uuid("5ed99270-7dd1-4a87-a8ce-acdd87d80dc8"))).get_OriginalFileName(&_ret));
		return hstring(_ret).d_str;
	}
	final void OriginalFileName(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachment2)this.asInterface(uuid("5ed99270-7dd1-4a87-a8ce-acdd87d80dc8"))).set_OriginalFileName(hstring(value).handle));
	}
	static Windows.ApplicationModel.Chat.ChatMessageAttachment New(wstring mimeType, Windows.Storage.Streams.IRandomAccessStreamReference dataStreamReference)
	{
		auto factory = factory!(Windows.ApplicationModel.Chat.IChatMessageAttachmentFactory);
		Windows.ApplicationModel.Chat.ChatMessageAttachment _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageAttachmentFactory)factory.asInterface(uuid("205852a2-a356-5b71-6ca9-66c985b7d0d5"))).abi_CreateChatMessageAttachment(hstring(mimeType).handle, dataStreamReference, &_ret));
		return _ret;
	}
}

interface ChatMessageBlocking
{
	private static Windows.ApplicationModel.Chat.IChatMessageBlockingStatic _staticInstance;
	public static Windows.ApplicationModel.Chat.IChatMessageBlockingStatic staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Chat.IChatMessageBlockingStatic);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncAction MarkMessageAsBlockedAsync(wstring localChatMessageId, bool blocked)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_MarkMessageAsBlockedAsync(hstring(localChatMessageId).handle, blocked, &_ret));
		return _ret;
	}
}

interface ChatMessageChange : Windows.ApplicationModel.Chat.IChatMessageChange
{
extern(Windows):
	final Windows.ApplicationModel.Chat.ChatMessageChangeType ChangeType()
	{
		Windows.ApplicationModel.Chat.ChatMessageChangeType _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageChange)this.asInterface(uuid("1c18c355-421e-54b8-6d38-6b3a6c82fccc"))).get_ChangeType(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatMessage Message()
	{
		Windows.ApplicationModel.Chat.ChatMessage _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageChange)this.asInterface(uuid("1c18c355-421e-54b8-6d38-6b3a6c82fccc"))).get_Message(&_ret));
		return _ret;
	}
}

interface ChatMessageChangeReader : Windows.ApplicationModel.Chat.IChatMessageChangeReader
{
extern(Windows):
	final void AcceptChanges()
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageChangeReader)this.asInterface(uuid("14267020-28ce-5f26-7b05-9a5c7cce87ca"))).abi_AcceptChanges());
	}
	final void AcceptChangesThrough(Windows.ApplicationModel.Chat.ChatMessageChange lastChangeToAcknowledge)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageChangeReader)this.asInterface(uuid("14267020-28ce-5f26-7b05-9a5c7cce87ca"))).abi_AcceptChangesThrough(lastChangeToAcknowledge));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessageChange)) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessageChange)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageChangeReader)this.asInterface(uuid("14267020-28ce-5f26-7b05-9a5c7cce87ca"))).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
}

interface ChatMessageChangeTracker : Windows.ApplicationModel.Chat.IChatMessageChangeTracker
{
extern(Windows):
	final void Enable()
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageChangeTracker)this.asInterface(uuid("60b7f066-70a0-5224-508c-242ef7c1d06f"))).abi_Enable());
	}
	final Windows.ApplicationModel.Chat.ChatMessageChangeReader GetChangeReader()
	{
		Windows.ApplicationModel.Chat.ChatMessageChangeReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageChangeTracker)this.asInterface(uuid("60b7f066-70a0-5224-508c-242ef7c1d06f"))).abi_GetChangeReader(&_ret));
		return _ret;
	}
	final void Reset()
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageChangeTracker)this.asInterface(uuid("60b7f066-70a0-5224-508c-242ef7c1d06f"))).abi_Reset());
	}
}

interface ChatMessageChangedDeferral : Windows.ApplicationModel.Chat.IChatMessageChangedDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageChangedDeferral)this.asInterface(uuid("fbc6b30c-788c-4dcc-ace7-6282382968cf"))).abi_Complete());
	}
}

interface ChatMessageChangedEventArgs : Windows.ApplicationModel.Chat.IChatMessageChangedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Chat.ChatMessageChangedDeferral GetDeferral()
	{
		Windows.ApplicationModel.Chat.ChatMessageChangedDeferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageChangedEventArgs)this.asInterface(uuid("b6b73e2d-691c-4edf-8660-6eb9896892e3"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface ChatMessageManager
{
	private static Windows.ApplicationModel.Chat.IChatMessageManager2Statics _staticInstance;
	public static Windows.ApplicationModel.Chat.IChatMessageManager2Statics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Chat.IChatMessageManager2Statics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) RegisterTransportAsync()
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.abi_RegisterTransportAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessageTransport) GetTransportAsync(wstring transportId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessageTransport) _ret;
		Debug.OK(staticInstance.abi_GetTransportAsync(hstring(transportId).handle, &_ret));
		return _ret;
	}
}

interface ChatMessageNotificationTriggerDetails : Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails, Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails2
{
extern(Windows):
	final Windows.ApplicationModel.Chat.ChatMessage ChatMessage()
	{
		Windows.ApplicationModel.Chat.ChatMessage _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails)this.asInterface(uuid("fd344dfb-3063-4e17-8586-c6c08262e6c0"))).get_ChatMessage(&_ret));
		return _ret;
	}
	final bool ShouldDisplayToast()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails2)this.asInterface(uuid("6bb522e0-aa07-4fd1-9471-77934fb75ee6"))).get_ShouldDisplayToast(&_ret));
		return _ret;
	}
	final bool ShouldUpdateDetailText()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails2)this.asInterface(uuid("6bb522e0-aa07-4fd1-9471-77934fb75ee6"))).get_ShouldUpdateDetailText(&_ret));
		return _ret;
	}
	final bool ShouldUpdateBadge()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails2)this.asInterface(uuid("6bb522e0-aa07-4fd1-9471-77934fb75ee6"))).get_ShouldUpdateBadge(&_ret));
		return _ret;
	}
	final bool ShouldUpdateActionCenter()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails2)this.asInterface(uuid("6bb522e0-aa07-4fd1-9471-77934fb75ee6"))).get_ShouldUpdateActionCenter(&_ret));
		return _ret;
	}
}

interface ChatMessageReader : Windows.ApplicationModel.Chat.IChatMessageReader, Windows.ApplicationModel.Chat.IChatMessageReader2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessage)) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessage)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageReader)this.asInterface(uuid("b6ea78ce-4489-56f9-76aa-e204682514cf"))).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessage)) ReadBatchWithCountAsync(INT32 count)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessage)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageReader2)this.asInterface(uuid("89643683-64bb-470d-9df4-0de8be1a05bf"))).abi_ReadBatchWithCountAsync(count, &_ret));
		return _ret;
	}
	alias ReadBatchAsync = ReadBatchWithCountAsync;
}

interface ChatMessageStore : Windows.ApplicationModel.Chat.IChatMessageStore, Windows.ApplicationModel.Chat.IChatMessageStore2, Windows.ApplicationModel.Chat.IChatMessageStore3
{
extern(Windows):
	final Windows.ApplicationModel.Chat.ChatMessageChangeTracker ChangeTracker()
	{
		Windows.ApplicationModel.Chat.ChatMessageChangeTracker _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).get_ChangeTracker(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteMessageAsync(wstring localMessageId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).abi_DeleteMessageAsync(hstring(localMessageId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DownloadMessageAsync(wstring localChatMessageId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).abi_DownloadMessageAsync(hstring(localChatMessageId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage) GetMessageAsync(wstring localChatMessageId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).abi_GetMessageAsync(hstring(localChatMessageId).handle, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatMessageReader GetMessageReader1()
	{
		Windows.ApplicationModel.Chat.ChatMessageReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).abi_GetMessageReader1(&_ret));
		return _ret;
	}
	alias GetMessageReader = GetMessageReader1;
	final Windows.ApplicationModel.Chat.ChatMessageReader GetMessageReader2(Windows.Foundation.TimeSpan recentTimeLimit)
	{
		Windows.ApplicationModel.Chat.ChatMessageReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).abi_GetMessageReader2(recentTimeLimit, &_ret));
		return _ret;
	}
	alias GetMessageReader = GetMessageReader2;
	final Windows.Foundation.IAsyncAction MarkMessageReadAsync(wstring localChatMessageId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).abi_MarkMessageReadAsync(hstring(localChatMessageId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RetrySendMessageAsync(wstring localChatMessageId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).abi_RetrySendMessageAsync(hstring(localChatMessageId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SendMessageAsync(Windows.ApplicationModel.Chat.ChatMessage chatMessage)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).abi_SendMessageAsync(chatMessage, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatMessageValidationResult ValidateMessage(Windows.ApplicationModel.Chat.ChatMessage chatMessage)
	{
		Windows.ApplicationModel.Chat.ChatMessageValidationResult _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).abi_ValidateMessage(chatMessage, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnMessageChanged(void delegate(Windows.ApplicationModel.Chat.ChatMessageStore, Windows.ApplicationModel.Chat.ChatMessageChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).add_MessageChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.ChatMessageStore, Windows.ApplicationModel.Chat.ChatMessageChangedEventArgs), Windows.ApplicationModel.Chat.ChatMessageStore, Windows.ApplicationModel.Chat.ChatMessageChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMessageChanged(EventRegistrationToken value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore)this.asInterface(uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47"))).remove_MessageChanged(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage) ForwardMessageAsync(wstring localChatMessageId, Windows.Foundation.Collections.IIterable!(HSTRING) addresses)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_ForwardMessageAsync(hstring(localChatMessageId).handle, addresses, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatConversation) GetConversationAsync(wstring conversationId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatConversation) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_GetConversationAsync(hstring(conversationId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatConversation) GetConversationForTransportsAsync(wstring conversationId, Windows.Foundation.Collections.IIterable!(HSTRING) transportIds)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatConversation) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_GetConversationForTransportsAsync(hstring(conversationId).handle, transportIds, &_ret));
		return _ret;
	}
	alias GetConversationAsync = GetConversationForTransportsAsync;
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatConversation) GetConversationFromThreadingInfoAsync(Windows.ApplicationModel.Chat.ChatConversationThreadingInfo threadingInfo)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatConversation) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_GetConversationFromThreadingInfoAsync(threadingInfo, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatConversationReader GetConversationReader()
	{
		Windows.ApplicationModel.Chat.ChatConversationReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_GetConversationReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatConversationReader GetConversationForTransportsReader(Windows.Foundation.Collections.IIterable!(HSTRING) transportIds)
	{
		Windows.ApplicationModel.Chat.ChatConversationReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_GetConversationForTransportsReader(transportIds, &_ret));
		return _ret;
	}
	alias GetConversationReader = GetConversationForTransportsReader;
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage) GetMessageByRemoteIdAsync(wstring transportId, wstring remoteId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_GetMessageByRemoteIdAsync(hstring(transportId).handle, hstring(remoteId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(INT32) GetUnseenCountAsync()
	{
		Windows.Foundation.IAsyncOperation!(INT32) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_GetUnseenCountAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(INT32) GetUnseenCountForTransportsReaderAsync(Windows.Foundation.Collections.IIterable!(HSTRING) transportIds)
	{
		Windows.Foundation.IAsyncOperation!(INT32) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_GetUnseenCountForTransportsReaderAsync(transportIds, &_ret));
		return _ret;
	}
	alias GetUnseenCountAsync = GetUnseenCountForTransportsReaderAsync;
	final Windows.Foundation.IAsyncAction MarkAsSeenAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_MarkAsSeenAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MarkAsSeenForTransportsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) transportIds)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_MarkAsSeenForTransportsAsync(transportIds, &_ret));
		return _ret;
	}
	alias MarkAsSeenAsync = MarkAsSeenForTransportsAsync;
	final Windows.ApplicationModel.Chat.ChatSearchReader GetSearchReader(Windows.ApplicationModel.Chat.ChatQueryOptions value)
	{
		Windows.ApplicationModel.Chat.ChatSearchReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_GetSearchReader(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveMessageAsync(Windows.ApplicationModel.Chat.ChatMessage chatMessage)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_SaveMessageAsync(chatMessage, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryCancelDownloadMessageAsync(wstring localChatMessageId)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_TryCancelDownloadMessageAsync(hstring(localChatMessageId).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryCancelSendMessageAsync(wstring localChatMessageId)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).abi_TryCancelSendMessageAsync(hstring(localChatMessageId).handle, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnStoreChanged(void delegate(Windows.ApplicationModel.Chat.ChatMessageStore, Windows.ApplicationModel.Chat.ChatMessageStoreChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).add_StoreChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.ChatMessageStore, Windows.ApplicationModel.Chat.ChatMessageStoreChangedEventArgs), Windows.ApplicationModel.Chat.ChatMessageStore, Windows.ApplicationModel.Chat.ChatMessageStoreChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStoreChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore2)this.asInterface(uuid("ad4dc4ee-3ad4-491b-b311-abdf9bb22768"))).remove_StoreChanged(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage) GetMessageBySyncIdAsync(wstring syncId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStore3)this.asInterface(uuid("9adbbb09-4345-4ec1-8b74-b7338243719c"))).abi_GetMessageBySyncIdAsync(hstring(syncId).handle, &_ret));
		return _ret;
	}
}

interface ChatMessageStoreChangedEventArgs : Windows.ApplicationModel.Chat.IChatMessageStoreChangedEventArgs
{
extern(Windows):
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStoreChangedEventArgs)this.asInterface(uuid("65c66fac-fe8c-46d4-9119-57b8410311d5"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.ApplicationModel.Chat.ChatStoreChangedEventKind Kind()
	{
		Windows.ApplicationModel.Chat.ChatStoreChangedEventKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageStoreChangedEventArgs)this.asInterface(uuid("65c66fac-fe8c-46d4-9119-57b8410311d5"))).get_Kind(&_ret));
		return _ret;
	}
}

interface ChatMessageTransport : Windows.ApplicationModel.Chat.IChatMessageTransport, Windows.ApplicationModel.Chat.IChatMessageTransport2
{
extern(Windows):
	final bool IsAppSetAsNotificationProvider()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransport)this.asInterface(uuid("63a9dbf8-e6b3-5c9a-5f85-d47925b9bd18"))).get_IsAppSetAsNotificationProvider(&_ret));
		return _ret;
	}
	final bool IsActive()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransport)this.asInterface(uuid("63a9dbf8-e6b3-5c9a-5f85-d47925b9bd18"))).get_IsActive(&_ret));
		return _ret;
	}
	final wstring TransportFriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransport)this.asInterface(uuid("63a9dbf8-e6b3-5c9a-5f85-d47925b9bd18"))).get_TransportFriendlyName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring TransportId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransport)this.asInterface(uuid("63a9dbf8-e6b3-5c9a-5f85-d47925b9bd18"))).get_TransportId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.IAsyncAction RequestSetAsNotificationProviderAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransport)this.asInterface(uuid("63a9dbf8-e6b3-5c9a-5f85-d47925b9bd18"))).abi_RequestSetAsNotificationProviderAsync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatMessageTransportConfiguration Configuration()
	{
		Windows.ApplicationModel.Chat.ChatMessageTransportConfiguration _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransport2)this.asInterface(uuid("90a75622-d84a-4c22-a94d-544444edc8a1"))).get_Configuration(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatMessageTransportKind TransportKind()
	{
		Windows.ApplicationModel.Chat.ChatMessageTransportKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransport2)this.asInterface(uuid("90a75622-d84a-4c22-a94d-544444edc8a1"))).get_TransportKind(&_ret));
		return _ret;
	}
}

interface ChatMessageTransportConfiguration : Windows.ApplicationModel.Chat.IChatMessageTransportConfiguration
{
extern(Windows):
	final INT32 MaxAttachmentCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransportConfiguration)this.asInterface(uuid("879ff725-1a08-4aca-a075-3355126312e6"))).get_MaxAttachmentCount(&_ret));
		return _ret;
	}
	final INT32 MaxMessageSizeInKilobytes()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransportConfiguration)this.asInterface(uuid("879ff725-1a08-4aca-a075-3355126312e6"))).get_MaxMessageSizeInKilobytes(&_ret));
		return _ret;
	}
	final INT32 MaxRecipientCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransportConfiguration)this.asInterface(uuid("879ff725-1a08-4aca-a075-3355126312e6"))).get_MaxRecipientCount(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaEncodingProfile SupportedVideoFormat()
	{
		Windows.Media.MediaProperties.MediaEncodingProfile _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransportConfiguration)this.asInterface(uuid("879ff725-1a08-4aca-a075-3355126312e6"))).get_SupportedVideoFormat(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) ExtendedProperties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageTransportConfiguration)this.asInterface(uuid("879ff725-1a08-4aca-a075-3355126312e6"))).get_ExtendedProperties(&_ret));
		return _ret;
	}
}

interface ChatMessageValidationResult : Windows.ApplicationModel.Chat.IChatMessageValidationResult
{
extern(Windows):
	final Windows.Foundation.IReference!(UINT32) MaxPartCount()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageValidationResult)this.asInterface(uuid("25e93a03-28ec-5889-569b-7e486b126f18"))).get_MaxPartCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) PartCount()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageValidationResult)this.asInterface(uuid("25e93a03-28ec-5889-569b-7e486b126f18"))).get_PartCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) RemainingCharacterCountInPart()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageValidationResult)this.asInterface(uuid("25e93a03-28ec-5889-569b-7e486b126f18"))).get_RemainingCharacterCountInPart(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatMessageValidationStatus Status()
	{
		Windows.ApplicationModel.Chat.ChatMessageValidationStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatMessageValidationResult)this.asInterface(uuid("25e93a03-28ec-5889-569b-7e486b126f18"))).get_Status(&_ret));
		return _ret;
	}
}

interface ChatQueryOptions : Windows.ApplicationModel.Chat.IChatQueryOptions
{
extern(Windows):
	final wstring SearchString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatQueryOptions)this.asInterface(uuid("2fd364a6-bf36-42f7-b7e7-923c0aabfe16"))).get_SearchString(&_ret));
		return hstring(_ret).d_str;
	}
	final void SearchString(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatQueryOptions)this.asInterface(uuid("2fd364a6-bf36-42f7-b7e7-923c0aabfe16"))).set_SearchString(hstring(value).handle));
	}
	static ChatQueryOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ChatQueryOptions).abi_ActivateInstance(&ret));
		return cast(ChatQueryOptions) ret;
	}
}

interface ChatRecipientDeliveryInfo : Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo
{
extern(Windows):
	final wstring TransportAddress()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).get_TransportAddress(&_ret));
		return hstring(_ret).d_str;
	}
	final void TransportAddress(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).set_TransportAddress(hstring(value).handle));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) DeliveryTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).get_DeliveryTime(&_ret));
		return _ret;
	}
	final void DeliveryTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).set_DeliveryTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ReadTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).get_ReadTime(&_ret));
		return _ret;
	}
	final void ReadTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).set_ReadTime(value));
	}
	final Windows.ApplicationModel.Chat.ChatTransportErrorCodeCategory TransportErrorCodeCategory()
	{
		Windows.ApplicationModel.Chat.ChatTransportErrorCodeCategory _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).get_TransportErrorCodeCategory(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatTransportInterpretedErrorCode TransportInterpretedErrorCode()
	{
		Windows.ApplicationModel.Chat.ChatTransportInterpretedErrorCode _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).get_TransportInterpretedErrorCode(&_ret));
		return _ret;
	}
	final INT32 TransportErrorCode()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).get_TransportErrorCode(&_ret));
		return _ret;
	}
	final bool IsErrorPermanent()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).get_IsErrorPermanent(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.ChatMessageStatus Status()
	{
		Windows.ApplicationModel.Chat.ChatMessageStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo)this.asInterface(uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545"))).get_Status(&_ret));
		return _ret;
	}
	static ChatRecipientDeliveryInfo New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ChatRecipientDeliveryInfo).abi_ActivateInstance(&ret));
		return cast(ChatRecipientDeliveryInfo) ret;
	}
}

interface ChatSearchReader : Windows.ApplicationModel.Chat.IChatSearchReader
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.IChatItem)) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.IChatItem)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSearchReader)this.asInterface(uuid("4665fe49-9020-4752-980d-39612325f589"))).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.IChatItem)) ReadBatchWithCountAsync(INT32 count)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.IChatItem)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSearchReader)this.asInterface(uuid("4665fe49-9020-4752-980d-39612325f589"))).abi_ReadBatchWithCountAsync(count, &_ret));
		return _ret;
	}
	alias ReadBatchAsync = ReadBatchWithCountAsync;
}

interface ChatSyncConfiguration : Windows.ApplicationModel.Chat.IChatSyncConfiguration
{
extern(Windows):
	final bool IsSyncEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSyncConfiguration)this.asInterface(uuid("09f869b2-69f4-4aff-82b6-06992ff402d2"))).get_IsSyncEnabled(&_ret));
		return _ret;
	}
	final void IsSyncEnabled(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSyncConfiguration)this.asInterface(uuid("09f869b2-69f4-4aff-82b6-06992ff402d2"))).set_IsSyncEnabled(value));
	}
	final Windows.ApplicationModel.Chat.ChatRestoreHistorySpan RestoreHistorySpan()
	{
		Windows.ApplicationModel.Chat.ChatRestoreHistorySpan _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSyncConfiguration)this.asInterface(uuid("09f869b2-69f4-4aff-82b6-06992ff402d2"))).get_RestoreHistorySpan(&_ret));
		return _ret;
	}
	final void RestoreHistorySpan(Windows.ApplicationModel.Chat.ChatRestoreHistorySpan value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSyncConfiguration)this.asInterface(uuid("09f869b2-69f4-4aff-82b6-06992ff402d2"))).set_RestoreHistorySpan(value));
	}
}

interface ChatSyncManager : Windows.ApplicationModel.Chat.IChatSyncManager
{
extern(Windows):
	final Windows.ApplicationModel.Chat.ChatSyncConfiguration Configuration()
	{
		Windows.ApplicationModel.Chat.ChatSyncConfiguration _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSyncManager)this.asInterface(uuid("7ba52c63-2650-486f-b4b4-6bd9d3d63c84"))).get_Configuration(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction AssociateAccountAsync(Windows.Security.Credentials.WebAccount webAccount)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSyncManager)this.asInterface(uuid("7ba52c63-2650-486f-b4b4-6bd9d3d63c84"))).abi_AssociateAccountAsync(webAccount, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UnassociateAccountAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSyncManager)this.asInterface(uuid("7ba52c63-2650-486f-b4b4-6bd9d3d63c84"))).abi_UnassociateAccountAsync(&_ret));
		return _ret;
	}
	final bool IsAccountAssociated(Windows.Security.Credentials.WebAccount webAccount)
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSyncManager)this.asInterface(uuid("7ba52c63-2650-486f-b4b4-6bd9d3d63c84"))).abi_IsAccountAssociated(webAccount, &_ret));
		return _ret;
	}
	final void StartSync()
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSyncManager)this.asInterface(uuid("7ba52c63-2650-486f-b4b4-6bd9d3d63c84"))).abi_StartSync());
	}
	final Windows.Foundation.IAsyncAction SetConfigurationAsync(Windows.ApplicationModel.Chat.ChatSyncConfiguration configuration)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IChatSyncManager)this.asInterface(uuid("7ba52c63-2650-486f-b4b4-6bd9d3d63c84"))).abi_SetConfigurationAsync(configuration, &_ret));
		return _ret;
	}
}

interface RcsEndUserMessage : Windows.ApplicationModel.Chat.IRcsEndUserMessage
{
extern(Windows):
	final wstring TransportId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessage)this.asInterface(uuid("d7cda5eb-cbd7-4f3b-8526-b506dec35c53"))).get_TransportId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessage)this.asInterface(uuid("d7cda5eb-cbd7-4f3b-8526-b506dec35c53"))).get_Title(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessage)this.asInterface(uuid("d7cda5eb-cbd7-4f3b-8526-b506dec35c53"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final bool IsPinRequired()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessage)this.asInterface(uuid("d7cda5eb-cbd7-4f3b-8526-b506dec35c53"))).get_IsPinRequired(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.RcsEndUserMessageAction) Actions()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.RcsEndUserMessageAction) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessage)this.asInterface(uuid("d7cda5eb-cbd7-4f3b-8526-b506dec35c53"))).get_Actions(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SendResponseAsync(Windows.ApplicationModel.Chat.RcsEndUserMessageAction action)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessage)this.asInterface(uuid("d7cda5eb-cbd7-4f3b-8526-b506dec35c53"))).abi_SendResponseAsync(action, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SendResponseWithPinAsync(Windows.ApplicationModel.Chat.RcsEndUserMessageAction action, wstring pin)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessage)this.asInterface(uuid("d7cda5eb-cbd7-4f3b-8526-b506dec35c53"))).abi_SendResponseWithPinAsync(action, hstring(pin).handle, &_ret));
		return _ret;
	}
}

interface RcsEndUserMessageAction : Windows.ApplicationModel.Chat.IRcsEndUserMessageAction
{
extern(Windows):
	final wstring Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessageAction)this.asInterface(uuid("92378737-9b42-46d3-9d5e-3c1b2dae7cb8"))).get_Label(&_ret));
		return hstring(_ret).d_str;
	}
}

interface RcsEndUserMessageAvailableEventArgs : Windows.ApplicationModel.Chat.IRcsEndUserMessageAvailableEventArgs
{
extern(Windows):
	final bool IsMessageAvailable()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessageAvailableEventArgs)this.asInterface(uuid("2d45ae01-3f89-41ea-9702-9e9ed411aa98"))).get_IsMessageAvailable(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Chat.RcsEndUserMessage Message()
	{
		Windows.ApplicationModel.Chat.RcsEndUserMessage _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessageAvailableEventArgs)this.asInterface(uuid("2d45ae01-3f89-41ea-9702-9e9ed411aa98"))).get_Message(&_ret));
		return _ret;
	}
}

interface RcsEndUserMessageAvailableTriggerDetails : Windows.ApplicationModel.Chat.IRcsEndUserMessageAvailableTriggerDetails
{
extern(Windows):
	final wstring Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessageAvailableTriggerDetails)this.asInterface(uuid("5b97742d-351f-4692-b41e-1b035dc18986"))).get_Title(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessageAvailableTriggerDetails)this.asInterface(uuid("5b97742d-351f-4692-b41e-1b035dc18986"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
}

interface RcsEndUserMessageManager : Windows.ApplicationModel.Chat.IRcsEndUserMessageManager
{
extern(Windows):
	final EventRegistrationToken OnMessageAvailableChanged(void delegate(Windows.ApplicationModel.Chat.RcsEndUserMessageManager, Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessageManager)this.asInterface(uuid("3054ae5a-4d1f-4b59-9433-126c734e86a6"))).add_MessageAvailableChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.RcsEndUserMessageManager, Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableEventArgs), Windows.ApplicationModel.Chat.RcsEndUserMessageManager, Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMessageAvailableChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsEndUserMessageManager)this.asInterface(uuid("3054ae5a-4d1f-4b59-9433-126c734e86a6"))).remove_MessageAvailableChanged(token));
	}
}

interface RcsManager
{
	private static Windows.ApplicationModel.Chat.IRcsManagerStatics _staticInstance;
	public static Windows.ApplicationModel.Chat.IRcsManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Chat.IRcsManagerStatics);
		return _staticInstance;
	}
	static Windows.ApplicationModel.Chat.RcsEndUserMessageManager GetEndUserMessageManager()
	{
		Windows.ApplicationModel.Chat.RcsEndUserMessageManager _ret;
		Debug.OK(staticInstance.abi_GetEndUserMessageManager(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.RcsTransport)) GetTransportsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.RcsTransport)) _ret;
		Debug.OK(staticInstance.abi_GetTransportsAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.RcsTransport) GetTransportAsync(wstring transportId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.RcsTransport) _ret;
		Debug.OK(staticInstance.abi_GetTransportAsync(hstring(transportId).handle, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction LeaveConversationAsync(Windows.ApplicationModel.Chat.ChatConversation conversation)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_LeaveConversationAsync(conversation, &_ret));
		return _ret;
	}
}

interface RcsServiceKindSupportedChangedEventArgs : Windows.ApplicationModel.Chat.IRcsServiceKindSupportedChangedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Chat.RcsServiceKind ServiceKind()
	{
		Windows.ApplicationModel.Chat.RcsServiceKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsServiceKindSupportedChangedEventArgs)this.asInterface(uuid("f47ea244-e783-4866-b3a7-4e5ccf023070"))).get_ServiceKind(&_ret));
		return _ret;
	}
}

interface RcsTransport : Windows.ApplicationModel.Chat.IRcsTransport
{
extern(Windows):
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) ExtendedProperties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransport)this.asInterface(uuid("fea34759-f37c-4319-8546-ec84d21d30ff"))).get_ExtendedProperties(&_ret));
		return _ret;
	}
	final bool IsActive()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransport)this.asInterface(uuid("fea34759-f37c-4319-8546-ec84d21d30ff"))).get_IsActive(&_ret));
		return _ret;
	}
	final wstring TransportFriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransport)this.asInterface(uuid("fea34759-f37c-4319-8546-ec84d21d30ff"))).get_TransportFriendlyName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring TransportId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransport)this.asInterface(uuid("fea34759-f37c-4319-8546-ec84d21d30ff"))).get_TransportId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.ApplicationModel.Chat.RcsTransportConfiguration Configuration()
	{
		Windows.ApplicationModel.Chat.RcsTransportConfiguration _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransport)this.asInterface(uuid("fea34759-f37c-4319-8546-ec84d21d30ff"))).get_Configuration(&_ret));
		return _ret;
	}
	final bool IsStoreAndForwardEnabled(Windows.ApplicationModel.Chat.RcsServiceKind serviceKind)
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransport)this.asInterface(uuid("fea34759-f37c-4319-8546-ec84d21d30ff"))).abi_IsStoreAndForwardEnabled(serviceKind, &_ret));
		return _ret;
	}
	final bool IsServiceKindSupported(Windows.ApplicationModel.Chat.RcsServiceKind serviceKind)
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransport)this.asInterface(uuid("fea34759-f37c-4319-8546-ec84d21d30ff"))).abi_IsServiceKindSupported(serviceKind, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnServiceKindSupportedChanged(void delegate(Windows.ApplicationModel.Chat.RcsTransport, Windows.ApplicationModel.Chat.RcsServiceKindSupportedChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransport)this.asInterface(uuid("fea34759-f37c-4319-8546-ec84d21d30ff"))).add_ServiceKindSupportedChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.RcsTransport, Windows.ApplicationModel.Chat.RcsServiceKindSupportedChangedEventArgs), Windows.ApplicationModel.Chat.RcsTransport, Windows.ApplicationModel.Chat.RcsServiceKindSupportedChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeServiceKindSupportedChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransport)this.asInterface(uuid("fea34759-f37c-4319-8546-ec84d21d30ff"))).remove_ServiceKindSupportedChanged(token));
	}
}

interface RcsTransportConfiguration : Windows.ApplicationModel.Chat.IRcsTransportConfiguration
{
extern(Windows):
	final INT32 MaxAttachmentCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransportConfiguration)this.asInterface(uuid("1fccb102-2472-4bb9-9988-c1211c83e8a9"))).get_MaxAttachmentCount(&_ret));
		return _ret;
	}
	final INT32 MaxMessageSizeInKilobytes()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransportConfiguration)this.asInterface(uuid("1fccb102-2472-4bb9-9988-c1211c83e8a9"))).get_MaxMessageSizeInKilobytes(&_ret));
		return _ret;
	}
	final INT32 MaxGroupMessageSizeInKilobytes()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransportConfiguration)this.asInterface(uuid("1fccb102-2472-4bb9-9988-c1211c83e8a9"))).get_MaxGroupMessageSizeInKilobytes(&_ret));
		return _ret;
	}
	final INT32 MaxRecipientCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransportConfiguration)this.asInterface(uuid("1fccb102-2472-4bb9-9988-c1211c83e8a9"))).get_MaxRecipientCount(&_ret));
		return _ret;
	}
	final INT32 MaxFileSizeInKilobytes()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransportConfiguration)this.asInterface(uuid("1fccb102-2472-4bb9-9988-c1211c83e8a9"))).get_MaxFileSizeInKilobytes(&_ret));
		return _ret;
	}
	final INT32 WarningFileSizeInKilobytes()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRcsTransportConfiguration)this.asInterface(uuid("1fccb102-2472-4bb9-9988-c1211c83e8a9"))).get_WarningFileSizeInKilobytes(&_ret));
		return _ret;
	}
}

interface RemoteParticipantComposingChangedEventArgs : Windows.ApplicationModel.Chat.IRemoteParticipantComposingChangedEventArgs
{
extern(Windows):
	final wstring TransportId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRemoteParticipantComposingChangedEventArgs)this.asInterface(uuid("1ec045a7-cfc9-45c9-9876-449f2bc180f5"))).get_TransportId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring ParticipantAddress()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRemoteParticipantComposingChangedEventArgs)this.asInterface(uuid("1ec045a7-cfc9-45c9-9876-449f2bc180f5"))).get_ParticipantAddress(&_ret));
		return hstring(_ret).d_str;
	}
	final bool IsComposing()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Chat.IRemoteParticipantComposingChangedEventArgs)this.asInterface(uuid("1ec045a7-cfc9-45c9-9876-449f2bc180f5"))).get_IsComposing(&_ret));
		return _ret;
	}
}

enum ChatConversationThreadingKind
{
	Participants = 0,
	ContactId = 1,
	ConversationId = 2,
	Custom = 3
}

enum ChatItemKind
{
	Message = 0,
	Conversation = 1
}

enum ChatMessageChangeType
{
	MessageCreated = 0,
	MessageModified = 1,
	MessageDeleted = 2,
	ChangeTrackingLost = 3
}

enum ChatMessageKind
{
	Standard = 0,
	FileTransferRequest = 1,
	TransportCustom = 2,
	JoinedConversation = 3,
	LeftConversation = 4,
	OtherParticipantJoinedConversation = 5,
	OtherParticipantLeftConversation = 6
}

enum ChatMessageOperatorKind
{
	Unspecified = 0,
	Sms = 1,
	Mms = 2,
	Rcs = 3
}

enum ChatMessageStatus
{
	Draft = 0,
	Sending = 1,
	Sent = 2,
	SendRetryNeeded = 3,
	SendFailed = 4,
	Received = 5,
	ReceiveDownloadNeeded = 6,
	ReceiveDownloadFailed = 7,
	ReceiveDownloading = 8,
	Deleted = 9,
	Declined = 10,
	Cancelled = 11,
	Recalled = 12,
	ReceiveRetryNeeded = 13
}

enum ChatMessageTransportKind
{
	Text = 0,
	Untriaged = 1,
	Blocked = 2,
	Custom = 3
}

enum ChatMessageValidationStatus
{
	Valid = 0,
	NoRecipients = 1,
	InvalidData = 2,
	MessageTooLarge = 3,
	TooManyRecipients = 4,
	TransportInactive = 5,
	TransportNotFound = 6,
	TooManyAttachments = 7,
	InvalidRecipients = 8,
	InvalidBody = 9,
	InvalidOther = 10,
	ValidWithLargeMessage = 11,
	VoiceRoamingRestriction = 12,
	DataRoamingRestriction = 13
}

enum ChatRestoreHistorySpan
{
	LastMonth = 0,
	LastYear = 1,
	AnyTime = 2
}

enum ChatStoreChangedEventKind
{
	NotificationsMissed = 0,
	StoreModified = 1,
	MessageCreated = 2,
	MessageModified = 3,
	MessageDeleted = 4,
	ConversationModified = 5,
	ConversationDeleted = 6,
	ConversationTransportDeleted = 7
}

enum ChatTransportErrorCodeCategory
{
	None = 0,
	Http = 1,
	Network = 2,
	MmsServer = 3
}

enum ChatTransportInterpretedErrorCode
{
	None = 0,
	Unknown = 1,
	InvalidRecipientAddress = 2,
	NetworkConnectivity = 3,
	ServiceDenied = 4,
	Timeout = 5
}

enum RcsServiceKind
{
	Chat = 0,
	GroupChat = 1,
	FileTransfer = 2,
	Capability = 3
}