module Windows.ApplicationModel.Chat;

import dwinrt;

@uuid("3aff77bc-39c9-4dd1-ad2d-3964dd9d403f")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatCapabilities")
interface IChatCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCachedCapabilitiesAsync(HSTRING address, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatCapabilities)* return_result);
	HRESULT abi_GetCapabilitiesFromNetworkAsync(HSTRING address, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatCapabilities)* return_result);
}

@uuid("a58c080d-1a6f-46dc-8f3d-f5028660b6ee")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatConversation")
interface IChatConversation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanModifyParticipants(bool* return_result);
	HRESULT set_CanModifyParticipants(bool value);
}

@uuid("055136d2-de32-4a47-a93a-b3dc0833852b")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatConversationReader")
interface IChatConversationReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatConversation))* return_result);
	HRESULT abi_ReadBatchWithCountAsync(INT32 count, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatConversation))* return_result);
}

@uuid("331c21dc-7a07-4422-a32c-24be7c6dab24")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatConversationThreadingInfo")
interface IChatConversationThreadingInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemKind(Windows.ApplicationModel.Chat.ChatItemKind* return_result);
}

@uuid("4b39052a-1142-5089-76da-f2db3d17cd05")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessage")
interface IChatMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IChatMessage2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EstimatedDownloadSize(UINT64* return_result);
	HRESULT set_EstimatedDownloadSize(UINT64 value);
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

@uuid("74eb2fb0-3ba7-459f-8e0b-e8af0febd9ad")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessage")
interface IChatMessage3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RemoteId(HSTRING* return_value);
}

@uuid("2d144b0f-d2bf-460c-aa68-6d3f8483c9bf")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessage")
interface IChatMessage4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SyncId(HSTRING* return_result);
	HRESULT set_SyncId(HSTRING value);
}

@uuid("c7c4fd74-bf63-58eb-508c-8b863ff16b67")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageAttachment")
interface IChatMessageAttachment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IChatMessageAttachment2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_result);
	HRESULT set_Thumbnail(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_TransferProgress(double* return_result);
	HRESULT set_TransferProgress(double value);
	HRESULT get_OriginalFileName(HSTRING* return_result);
	HRESULT set_OriginalFileName(HSTRING value);
}

@uuid("205852a2-a356-5b71-6ca9-66c985b7d0d5")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageAttachment")
interface IChatMessageAttachmentFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateChatMessageAttachment(HSTRING mimeType, Windows.Storage.Streams.IRandomAccessStreamReference dataStreamReference, Windows.ApplicationModel.Chat.ChatMessageAttachment* return_value);
}

@uuid("f6b9a380-cdea-11e4-8830-0800200c9a66")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageBlocking")
interface IChatMessageBlockingStatic : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_MarkMessageAsBlockedAsync(HSTRING localChatMessageId, bool blocked, Windows.Foundation.IAsyncAction* return_value);
}

@uuid("1c18c355-421e-54b8-6d38-6b3a6c82fccc")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageChange")
interface IChatMessageChange : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ChangeType(Windows.ApplicationModel.Chat.ChatMessageChangeType* return_value);
	HRESULT get_Message(Windows.ApplicationModel.Chat.ChatMessage* return_value);
}

@uuid("14267020-28ce-5f26-7b05-9a5c7cce87ca")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageChangeReader")
interface IChatMessageChangeReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AcceptChanges();
	HRESULT abi_AcceptChangesThrough(Windows.ApplicationModel.Chat.ChatMessageChange lastChangeToAcknowledge);
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessageChange))* return_value);
}

@uuid("60b7f066-70a0-5224-508c-242ef7c1d06f")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageChangeTracker")
interface IChatMessageChangeTracker : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Enable();
	HRESULT abi_GetChangeReader(Windows.ApplicationModel.Chat.ChatMessageChangeReader* return_value);
	HRESULT abi_Reset();
}

@uuid("fbc6b30c-788c-4dcc-ace7-6282382968cf")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageChangedDeferral")
interface IChatMessageChangedDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

@uuid("b6b73e2d-691c-4edf-8660-6eb9896892e3")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageChangedEventArgs")
interface IChatMessageChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Chat.ChatMessageChangedDeferral* return_result);
}

@uuid("1d45390f-9f4f-4e35-964e-1b9ca61ac044")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageManager")
interface IChatMessageManager2Statics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RegisterTransportAsync(Windows.Foundation.IAsyncOperation!(HSTRING)* return_result);
	HRESULT abi_GetTransportAsync(HSTRING transportId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessageTransport)* return_result);
}

@uuid("f15c60f7-d5e8-5e92-556d-e03b60253104")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageManager")
interface IChatMessageManagerStatic : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetTransportsAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessageTransport))* return_value);
	HRESULT abi_RequestStoreAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessageStore)* return_value);
	HRESULT abi_ShowComposeSmsMessageAsync(Windows.ApplicationModel.Chat.ChatMessage message, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_ShowSmsSettings();
}

@uuid("208b830d-6755-48cc-9ab3-fd03c463fc92")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageManager")
interface IChatMessageManagerStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RequestSyncManagerAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatSyncManager)* return_result);
}

@uuid("fd344dfb-3063-4e17-8586-c6c08262e6c0")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageNotificationTriggerDetails")
interface IChatMessageNotificationTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ChatMessage(Windows.ApplicationModel.Chat.ChatMessage* return_value);
}

@uuid("6bb522e0-aa07-4fd1-9471-77934fb75ee6")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageNotificationTriggerDetails")
interface IChatMessageNotificationTriggerDetails2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ShouldDisplayToast(bool* return_result);
	HRESULT get_ShouldUpdateDetailText(bool* return_result);
	HRESULT get_ShouldUpdateBadge(bool* return_result);
	HRESULT get_ShouldUpdateActionCenter(bool* return_result);
}

@uuid("b6ea78ce-4489-56f9-76aa-e204682514cf")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageReader")
interface IChatMessageReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessage))* return_value);
}

@uuid("89643683-64bb-470d-9df4-0de8be1a05bf")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageReader")
interface IChatMessageReader2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReadBatchWithCountAsync(INT32 count, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.ChatMessage))* return_result);
}

@uuid("31f2fd01-ccf6-580b-4976-0a07dd5d3b47")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageStore")
interface IChatMessageStore : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IChatMessageStore2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("9adbbb09-4345-4ec1-8b74-b7338243719c")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageStore")
interface IChatMessageStore3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetMessageBySyncIdAsync(HSTRING syncId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Chat.ChatMessage)* return_result);
}

@uuid("65c66fac-fe8c-46d4-9119-57b8410311d5")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageStoreChangedEventArgs")
interface IChatMessageStoreChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_result);
	HRESULT get_Kind(Windows.ApplicationModel.Chat.ChatStoreChangedEventKind* return_result);
}

@uuid("63a9dbf8-e6b3-5c9a-5f85-d47925b9bd18")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageTransport")
interface IChatMessageTransport : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsAppSetAsNotificationProvider(bool* return_value);
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_TransportFriendlyName(HSTRING* return_value);
	HRESULT get_TransportId(HSTRING* return_value);
	HRESULT abi_RequestSetAsNotificationProviderAsync(Windows.Foundation.IAsyncAction* return_value);
}

@uuid("90a75622-d84a-4c22-a94d-544444edc8a1")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageTransport")
interface IChatMessageTransport2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Configuration(Windows.ApplicationModel.Chat.ChatMessageTransportConfiguration* return_result);
	HRESULT get_TransportKind(Windows.ApplicationModel.Chat.ChatMessageTransportKind* return_result);
}

@uuid("879ff725-1a08-4aca-a075-3355126312e6")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatMessageTransportConfiguration")
interface IChatMessageTransportConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SearchString(HSTRING* return_result);
	HRESULT set_SearchString(HSTRING value);
}

@uuid("ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatRecipientDeliveryInfo")
interface IChatRecipientDeliveryInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.IChatItem))* return_result);
	HRESULT abi_ReadBatchWithCountAsync(INT32 count, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Chat.IChatItem))* return_result);
}

@uuid("09f869b2-69f4-4aff-82b6-06992ff402d2")
@WinrtFactory("Windows.ApplicationModel.Chat.ChatSyncConfiguration")
interface IChatSyncConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Label(HSTRING* return_result);
}

@uuid("2d45ae01-3f89-41ea-9702-9e9ed411aa98")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableEventArgs")
interface IRcsEndUserMessageAvailableEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsMessageAvailable(bool* return_result);
	HRESULT get_Message(Windows.ApplicationModel.Chat.RcsEndUserMessage* return_result);
}

@uuid("5b97742d-351f-4692-b41e-1b035dc18986")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableTriggerDetails")
interface IRcsEndUserMessageAvailableTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("3054ae5a-4d1f-4b59-9433-126c734e86a6")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsEndUserMessageManager")
interface IRcsEndUserMessageManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_MessageAvailableChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Chat.RcsEndUserMessageManager, Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_MessageAvailableChanged(EventRegistrationToken token);
}

@uuid("7d270ac5-0abd-4f31-9b99-a59e71a7b731")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsManager")
interface IRcsManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServiceKind(Windows.ApplicationModel.Chat.RcsServiceKind* return_result);
}

@uuid("fea34759-f37c-4319-8546-ec84d21d30ff")
@WinrtFactory("Windows.ApplicationModel.Chat.RcsTransport")
interface IRcsTransport : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TransportId(HSTRING* return_result);
	HRESULT get_ParticipantAddress(HSTRING* return_result);
	HRESULT get_IsComposing(bool* return_result);
}

interface ChatCapabilities : Windows.ApplicationModel.Chat.IChatCapabilities
{
}

interface ChatCapabilitiesManager
{
}

interface ChatConversation : Windows.ApplicationModel.Chat.IChatConversation, Windows.ApplicationModel.Chat.IChatConversation2, Windows.ApplicationModel.Chat.IChatItem
{
}

interface ChatConversationReader : Windows.ApplicationModel.Chat.IChatConversationReader
{
}

interface ChatConversationThreadingInfo : Windows.ApplicationModel.Chat.IChatConversationThreadingInfo
{
}

interface ChatMessage : Windows.ApplicationModel.Chat.IChatMessage, Windows.ApplicationModel.Chat.IChatMessage2, Windows.ApplicationModel.Chat.IChatMessage3, Windows.ApplicationModel.Chat.IChatMessage4, Windows.ApplicationModel.Chat.IChatItem
{
}

interface ChatMessageAttachment : Windows.ApplicationModel.Chat.IChatMessageAttachment, Windows.ApplicationModel.Chat.IChatMessageAttachment2
{
}

interface ChatMessageBlocking
{
}

interface ChatMessageChange : Windows.ApplicationModel.Chat.IChatMessageChange
{
}

interface ChatMessageChangeReader : Windows.ApplicationModel.Chat.IChatMessageChangeReader
{
}

interface ChatMessageChangeTracker : Windows.ApplicationModel.Chat.IChatMessageChangeTracker
{
}

interface ChatMessageChangedDeferral : Windows.ApplicationModel.Chat.IChatMessageChangedDeferral
{
}

interface ChatMessageChangedEventArgs : Windows.ApplicationModel.Chat.IChatMessageChangedEventArgs
{
}

interface ChatMessageManager
{
}

interface ChatMessageNotificationTriggerDetails : Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails, Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails2
{
}

interface ChatMessageReader : Windows.ApplicationModel.Chat.IChatMessageReader, Windows.ApplicationModel.Chat.IChatMessageReader2
{
}

interface ChatMessageStore : Windows.ApplicationModel.Chat.IChatMessageStore, Windows.ApplicationModel.Chat.IChatMessageStore2, Windows.ApplicationModel.Chat.IChatMessageStore3
{
}

interface ChatMessageStoreChangedEventArgs : Windows.ApplicationModel.Chat.IChatMessageStoreChangedEventArgs
{
}

interface ChatMessageTransport : Windows.ApplicationModel.Chat.IChatMessageTransport, Windows.ApplicationModel.Chat.IChatMessageTransport2
{
}

interface ChatMessageTransportConfiguration : Windows.ApplicationModel.Chat.IChatMessageTransportConfiguration
{
}

interface ChatMessageValidationResult : Windows.ApplicationModel.Chat.IChatMessageValidationResult
{
}

interface ChatQueryOptions : Windows.ApplicationModel.Chat.IChatQueryOptions
{
}

interface ChatRecipientDeliveryInfo : Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo
{
}

interface ChatSearchReader : Windows.ApplicationModel.Chat.IChatSearchReader
{
}

interface ChatSyncConfiguration : Windows.ApplicationModel.Chat.IChatSyncConfiguration
{
}

interface ChatSyncManager : Windows.ApplicationModel.Chat.IChatSyncManager
{
}

interface RcsEndUserMessage : Windows.ApplicationModel.Chat.IRcsEndUserMessage
{
}

interface RcsEndUserMessageAction : Windows.ApplicationModel.Chat.IRcsEndUserMessageAction
{
}

interface RcsEndUserMessageAvailableEventArgs : Windows.ApplicationModel.Chat.IRcsEndUserMessageAvailableEventArgs
{
}

interface RcsEndUserMessageAvailableTriggerDetails : Windows.ApplicationModel.Chat.IRcsEndUserMessageAvailableTriggerDetails
{
}

interface RcsEndUserMessageManager : Windows.ApplicationModel.Chat.IRcsEndUserMessageManager
{
}

interface RcsManager
{
}

interface RcsServiceKindSupportedChangedEventArgs : Windows.ApplicationModel.Chat.IRcsServiceKindSupportedChangedEventArgs
{
}

interface RcsTransport : Windows.ApplicationModel.Chat.IRcsTransport
{
}

interface RcsTransportConfiguration : Windows.ApplicationModel.Chat.IRcsTransportConfiguration
{
}

interface RemoteParticipantComposingChangedEventArgs : Windows.ApplicationModel.Chat.IRemoteParticipantComposingChangedEventArgs
{
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