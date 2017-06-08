module Windows.ApplicationModel.Email;

import dwinrt;

@uuid("f353caf9-57c8-4adb-b992-60fceb584f54")
@WinrtFactory("Windows.ApplicationModel.Email.EmailAttachment")
interface IEmailAttachment : IInspectable
{
extern(Windows):
	HRESULT get_FileName(HSTRING* return_value);
	HRESULT set_FileName(HSTRING value);
	HRESULT get_Data(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Data(Windows.Storage.Streams.IRandomAccessStreamReference value);
}

@uuid("225f1070-b0ff-4571-9d54-a706c48d55c6")
@WinrtFactory("Windows.ApplicationModel.Email.EmailAttachment")
interface IEmailAttachment2 : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_ContentId(HSTRING* return_value);
	HRESULT set_ContentId(HSTRING value);
	HRESULT get_ContentLocation(HSTRING* return_value);
	HRESULT set_ContentLocation(HSTRING value);
	HRESULT get_DownloadState(Windows.ApplicationModel.Email.EmailAttachmentDownloadState* return_value);
	HRESULT set_DownloadState(Windows.ApplicationModel.Email.EmailAttachmentDownloadState value);
	HRESULT get_EstimatedDownloadSizeInBytes(UINT64* return_value);
	HRESULT set_EstimatedDownloadSizeInBytes(UINT64 value);
	HRESULT get_IsFromBaseMessage(bool* return_value);
	HRESULT get_IsInline(bool* return_value);
	HRESULT set_IsInline(bool value);
	HRESULT get_MimeType(HSTRING* return_value);
	HRESULT set_MimeType(HSTRING value);
}

@uuid("796eac46-ed56-4979-8708-abb8bc854b7d")
@WinrtFactory("Windows.ApplicationModel.Email.EmailAttachment")
interface IEmailAttachmentFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING fileName, Windows.Storage.Streams.IRandomAccessStreamReference data, Windows.ApplicationModel.Email.EmailAttachment* return_result);
}

@uuid("23259435-51f9-427d-adcd-241023c8cfb7")
@WinrtFactory("Windows.ApplicationModel.Email.EmailAttachment")
interface IEmailAttachmentFactory2 : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING fileName, Windows.Storage.Streams.IRandomAccessStreamReference data, HSTRING mimeType, Windows.ApplicationModel.Email.EmailAttachment* return_result);
}

@uuid("da18c248-a0bc-4349-902d-90f66389f51b")
@WinrtFactory("Windows.ApplicationModel.Email.EmailConversation")
interface IEmailConversation : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_MailboxId(HSTRING* return_value);
	HRESULT get_FlagState(Windows.ApplicationModel.Email.EmailFlagState* return_value);
	HRESULT get_HasAttachment(bool* return_value);
	HRESULT get_Importance(Windows.ApplicationModel.Email.EmailImportance* return_value);
	HRESULT get_LastEmailResponseKind(Windows.ApplicationModel.Email.EmailMessageResponseKind* return_value);
	HRESULT get_MessageCount(UINT32* return_value);
	HRESULT get_MostRecentMessageId(HSTRING* return_value);
	HRESULT get_MostRecentMessageTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_Preview(HSTRING* return_value);
	HRESULT get_LatestSender(Windows.ApplicationModel.Email.EmailRecipient* return_value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_UnreadMessageCount(UINT32* return_value);
	HRESULT abi_FindMessagesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMessage))* return_result);
	HRESULT abi_FindMessagesWithCountAsync(UINT32 count, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMessage))* return_result);
}

@uuid("b8c1ab81-01c5-432a-9df1-fe85d98a279a")
@WinrtFactory("Windows.ApplicationModel.Email.EmailConversationBatch")
interface IEmailConversationBatch : IInspectable
{
extern(Windows):
	HRESULT get_Conversations(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailConversation)* return_value);
	HRESULT get_Status(Windows.ApplicationModel.Email.EmailBatchStatus* return_value);
}

@uuid("b4630f82-2875-44c8-9b8c-85beb3a3c653")
@WinrtFactory("Windows.ApplicationModel.Email.EmailConversationReader")
interface IEmailConversationReader : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailConversationBatch)* return_result);
}

@uuid("a24f7771-996c-4864-b1ba-ed1240e57d11")
@WinrtFactory("Windows.ApplicationModel.Email.EmailFolder")
interface IEmailFolder : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_RemoteId(HSTRING* return_value);
	HRESULT set_RemoteId(HSTRING value);
	HRESULT get_MailboxId(HSTRING* return_value);
	HRESULT get_ParentFolderId(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_IsSyncEnabled(bool* return_value);
	HRESULT set_IsSyncEnabled(bool value);
	HRESULT get_LastSuccessfulSyncTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_LastSuccessfulSyncTime(Windows.Foundation.DateTime value);
	HRESULT get_Kind(Windows.ApplicationModel.Email.EmailSpecialFolderKind* return_value);
	HRESULT abi_CreateFolderAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder)* return_result);
	HRESULT abi_DeleteAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_FindChildFoldersAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailFolder))* return_result);
	HRESULT abi_GetConversationReader(Windows.ApplicationModel.Email.EmailConversationReader* return_result);
	HRESULT abi_GetConversationReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options, Windows.ApplicationModel.Email.EmailConversationReader* return_result);
	HRESULT abi_GetMessageAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage)* return_result);
	HRESULT abi_GetMessageReader(Windows.ApplicationModel.Email.EmailMessageReader* return_result);
	HRESULT abi_GetMessageReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options, Windows.ApplicationModel.Email.EmailMessageReader* return_result);
	HRESULT abi_GetMessageCountsAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailItemCounts)* return_result);
	HRESULT abi_TryMoveAsync(Windows.ApplicationModel.Email.EmailFolder newParentFolder, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryMoveWithNewNameAsync(Windows.ApplicationModel.Email.EmailFolder newParentFolder, HSTRING newFolderName, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TrySaveAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_SaveMessageAsync(Windows.ApplicationModel.Email.EmailMessage message, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e")
@WinrtFactory("Windows.ApplicationModel.Email.EmailIrmInfo")
interface IEmailIrmInfo : IInspectable
{
extern(Windows):
	HRESULT get_CanEdit(bool* return_value);
	HRESULT set_CanEdit(bool value);
	HRESULT get_CanExtractData(bool* return_value);
	HRESULT set_CanExtractData(bool value);
	HRESULT get_CanForward(bool* return_value);
	HRESULT set_CanForward(bool value);
	HRESULT get_CanModifyRecipientsOnResponse(bool* return_value);
	HRESULT set_CanModifyRecipientsOnResponse(bool value);
	HRESULT get_CanPrintData(bool* return_value);
	HRESULT set_CanPrintData(bool value);
	HRESULT get_CanRemoveIrmOnResponse(bool* return_value);
	HRESULT set_CanRemoveIrmOnResponse(bool value);
	HRESULT get_CanReply(bool* return_value);
	HRESULT set_CanReply(bool value);
	HRESULT get_CanReplyAll(bool* return_value);
	HRESULT set_CanReplyAll(bool value);
	HRESULT get_ExpirationDate(Windows.Foundation.DateTime* return_value);
	HRESULT set_ExpirationDate(Windows.Foundation.DateTime value);
	HRESULT get_IsIrmOriginator(bool* return_value);
	HRESULT set_IsIrmOriginator(bool value);
	HRESULT get_IsProgramaticAccessAllowed(bool* return_value);
	HRESULT set_IsProgramaticAccessAllowed(bool value);
	HRESULT get_Template(Windows.ApplicationModel.Email.EmailIrmTemplate* return_value);
	HRESULT set_Template(Windows.ApplicationModel.Email.EmailIrmTemplate value);
}

@uuid("314bb18c-e3e6-4d7b-be8d-91a96311b01b")
@WinrtFactory("Windows.ApplicationModel.Email.EmailIrmInfo")
interface IEmailIrmInfoFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.DateTime expiration, Windows.ApplicationModel.Email.EmailIrmTemplate irmTemplate, Windows.ApplicationModel.Email.EmailIrmInfo* return_result);
}

@uuid("f327758d-546d-4bea-a963-54a38b2cc016")
@WinrtFactory("Windows.ApplicationModel.Email.EmailIrmTemplate")
interface IEmailIrmTemplate : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT set_Description(HSTRING value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
}

@uuid("3da31876-8738-4418-b9cb-471b936fe71e")
@WinrtFactory("Windows.ApplicationModel.Email.EmailIrmTemplate")
interface IEmailIrmTemplateFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING id, HSTRING name, HSTRING description, Windows.ApplicationModel.Email.EmailIrmTemplate* return_result);
}

@uuid("5bd13321-fec8-4bab-83ba-0baf3c1f6cbd")
@WinrtFactory("Windows.ApplicationModel.Email.EmailItemCounts")
interface IEmailItemCounts : IInspectable
{
extern(Windows):
	HRESULT get_Flagged(UINT32* return_value);
	HRESULT get_Important(UINT32* return_value);
	HRESULT get_Total(UINT32* return_value);
	HRESULT get_Unread(UINT32* return_value);
}

@uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailbox")
interface IEmailMailbox : IInspectable
{
extern(Windows):
	HRESULT get_Capabilities(Windows.ApplicationModel.Email.EmailMailboxCapabilities* return_value);
	HRESULT get_ChangeTracker(Windows.ApplicationModel.Email.EmailMailboxChangeTracker* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_IsOwnedByCurrentApp(bool* return_value);
	HRESULT get_IsDataEncryptedUnderLock(bool* return_value);
	HRESULT get_MailAddress(HSTRING* return_value);
	HRESULT set_MailAddress(HSTRING value);
	HRESULT get_MailAddressAliases(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_OtherAppReadAccess(Windows.ApplicationModel.Email.EmailMailboxOtherAppReadAccess* return_value);
	HRESULT set_OtherAppReadAccess(Windows.ApplicationModel.Email.EmailMailboxOtherAppReadAccess value);
	HRESULT get_OtherAppWriteAccess(Windows.ApplicationModel.Email.EmailMailboxOtherAppWriteAccess* return_value);
	HRESULT set_OtherAppWriteAccess(Windows.ApplicationModel.Email.EmailMailboxOtherAppWriteAccess value);
	HRESULT get_Policies(Windows.ApplicationModel.Email.EmailMailboxPolicies* return_value);
	HRESULT get_SourceDisplayName(HSTRING* return_value);
	HRESULT get_SyncManager(Windows.ApplicationModel.Email.EmailMailboxSyncManager* return_value);
	HRESULT get_UserDataAccountId(HSTRING* return_value);
	HRESULT abi_GetConversationReader(Windows.ApplicationModel.Email.EmailConversationReader* return_result);
	HRESULT abi_GetConversationReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options, Windows.ApplicationModel.Email.EmailConversationReader* return_result);
	HRESULT abi_GetMessageReader(Windows.ApplicationModel.Email.EmailMessageReader* return_result);
	HRESULT abi_GetMessageReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options, Windows.ApplicationModel.Email.EmailMessageReader* return_result);
	HRESULT abi_DeleteAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_GetConversationAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailConversation)* return_result);
	HRESULT abi_GetFolderAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder)* return_result);
	HRESULT abi_GetMessageAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage)* return_result);
	HRESULT abi_GetSpecialFolderAsync(Windows.ApplicationModel.Email.EmailSpecialFolderKind folderType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder)* return_result);
	HRESULT abi_SaveAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_MarkMessageAsSeenAsync(HSTRING messageId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_MarkFolderAsSeenAsync(HSTRING folderId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_MarkMessageReadAsync(HSTRING messageId, bool isRead, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ChangeMessageFlagStateAsync(HSTRING messageId, Windows.ApplicationModel.Email.EmailFlagState flagState, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_TryMoveMessageAsync(HSTRING messageId, HSTRING newParentFolderId, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryMoveFolderAsync(HSTRING folderId, HSTRING newParentFolderId, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryMoveFolderWithNewNameAsync(HSTRING folderId, HSTRING newParentFolderId, HSTRING newFolderName, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_DeleteMessageAsync(HSTRING messageId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_MarkFolderSyncEnabledAsync(HSTRING folderId, bool isSyncEnabled, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_SendMessageAsync(Windows.ApplicationModel.Email.EmailMessage message, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_SaveDraftAsync(Windows.ApplicationModel.Email.EmailMessage message, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_DownloadMessageAsync(HSTRING messageId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_DownloadAttachmentAsync(HSTRING attachmentId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_CreateResponseMessageAsync(HSTRING messageId, Windows.ApplicationModel.Email.EmailMessageResponseKind responseType, HSTRING subject, Windows.ApplicationModel.Email.EmailMessageBodyKind responseHeaderType, HSTRING responseHeader, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage)* return_result);
	HRESULT abi_TryUpdateMeetingResponseAsync(Windows.ApplicationModel.Email.EmailMessage meeting, Windows.ApplicationModel.Email.EmailMeetingResponseType response, HSTRING subject, HSTRING comment, bool sendUpdate, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryForwardMeetingAsync(Windows.ApplicationModel.Email.EmailMessage meeting, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Email.EmailRecipient) recipients, HSTRING subject, Windows.ApplicationModel.Email.EmailMessageBodyKind forwardHeaderType, HSTRING forwardHeader, HSTRING comment, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryProposeNewTimeForMeetingAsync(Windows.ApplicationModel.Email.EmailMessage meeting, Windows.Foundation.DateTime newStartTime, Windows.Foundation.TimeSpan newDuration, HSTRING subject, HSTRING comment, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT add_MailboxChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.EmailMailbox, Windows.ApplicationModel.Email.EmailMailboxChangedEventArgs) pHandler, EventRegistrationToken* return_pToken);
	HRESULT remove_MailboxChanged(EventRegistrationToken token);
	HRESULT abi_SmartSendMessageAsync(Windows.ApplicationModel.Email.EmailMessage message, bool smartSend, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_TrySetAutoReplySettingsAsync(Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings autoReplySettings, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_TryGetAutoReplySettingsAsync(Windows.ApplicationModel.Email.EmailMailboxAutoReplyMessageResponseKind requestedFormat, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings)* return_autoReplySettings);
}

@uuid("14f8e404-6ca2-4ab2-9241-79cd7bf46346")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailbox")
interface IEmailMailbox2 : IInspectable
{
extern(Windows):
	HRESULT get_LinkedMailboxId(HSTRING* return_value);
	HRESULT get_NetworkAccountId(HSTRING* return_value);
	HRESULT get_NetworkId(HSTRING* return_value);
}

@uuid("3da5897b-458b-408a-8e37-ac8b05d8af56")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailbox")
interface IEmailMailbox3 : IInspectable
{
extern(Windows):
	HRESULT abi_ResolveRecipientsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) recipients, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailRecipientResolutionResult))* return_result);
	HRESULT abi_ValidateCertificatesAsync(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus))* return_result);
	HRESULT abi_TryEmptyFolderAsync(HSTRING folderId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxEmptyFolderStatus)* return_result);
	HRESULT abi_TryCreateFolderAsync(HSTRING parentFolderId, HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxCreateFolderResult)* return_result);
	HRESULT abi_TryDeleteFolderAsync(HSTRING folderId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxDeleteFolderStatus)* return_result);
}

@uuid("5d1f301b-f222-48a7-b7b6-716356cd26a1")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailbox")
interface IEmailMailbox4 : IInspectable
{
extern(Windows):
	HRESULT abi_RegisterSyncManagerAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("ac9889fa-21fa-4927-9210-d410582fdf3e")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxAction")
interface IEmailMailboxAction : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.ApplicationModel.Email.EmailMailboxActionKind* return_value);
	HRESULT get_ChangeNumber(UINT64* return_value);
}

@uuid("e223254c-8ab4-485b-b31f-04d15476bd59")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxAutoReply")
interface IEmailMailboxAutoReply : IInspectable
{
extern(Windows):
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_Response(HSTRING* return_value);
	HRESULT set_Response(HSTRING value);
}

@uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings")
interface IEmailMailboxAutoReplySettings : IInspectable
{
extern(Windows):
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_ResponseKind(Windows.ApplicationModel.Email.EmailMailboxAutoReplyMessageResponseKind* return_value);
	HRESULT set_ResponseKind(Windows.ApplicationModel.Email.EmailMailboxAutoReplyMessageResponseKind value);
	HRESULT get_StartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_StartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_EndTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_EndTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_InternalReply(Windows.ApplicationModel.Email.EmailMailboxAutoReply* return_value);
	HRESULT get_KnownExternalReply(Windows.ApplicationModel.Email.EmailMailboxAutoReply* return_value);
	HRESULT get_UnknownExternalReply(Windows.ApplicationModel.Email.EmailMailboxAutoReply* return_value);
}

@uuid("eedec3a6-89db-4305-82c4-439e0a33da11")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxCapabilities")
interface IEmailMailboxCapabilities : IInspectable
{
extern(Windows):
	HRESULT get_CanForwardMeetings(bool* return_value);
	HRESULT get_CanGetAndSetExternalAutoReplies(bool* return_value);
	HRESULT get_CanGetAndSetInternalAutoReplies(bool* return_value);
	HRESULT get_CanUpdateMeetingResponses(bool* return_value);
	HRESULT get_CanServerSearchFolders(bool* return_value);
	HRESULT get_CanServerSearchMailbox(bool* return_value);
	HRESULT get_CanProposeNewTimeForMeetings(bool* return_value);
	HRESULT get_CanSmartSend(bool* return_value);
}

@uuid("69723ee4-2f21-4cbc-88ab-2e7602a4806b")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxCapabilities")
interface IEmailMailboxCapabilities2 : IInspectable
{
extern(Windows):
	HRESULT get_CanResolveRecipients(bool* return_value);
	HRESULT get_CanValidateCertificates(bool* return_value);
	HRESULT get_CanEmptyFolder(bool* return_value);
	HRESULT get_CanCreateFolder(bool* return_value);
	HRESULT get_CanDeleteFolder(bool* return_value);
	HRESULT get_CanMoveFolder(bool* return_value);
}

@uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxCapabilities")
interface IEmailMailboxCapabilities3 : IInspectable
{
extern(Windows):
	HRESULT set_CanForwardMeetings(bool value);
	HRESULT set_CanGetAndSetExternalAutoReplies(bool value);
	HRESULT set_CanGetAndSetInternalAutoReplies(bool value);
	HRESULT set_CanUpdateMeetingResponses(bool value);
	HRESULT set_CanServerSearchFolders(bool value);
	HRESULT set_CanServerSearchMailbox(bool value);
	HRESULT set_CanProposeNewTimeForMeetings(bool value);
	HRESULT set_CanSmartSend(bool value);
	HRESULT set_CanResolveRecipients(bool value);
	HRESULT set_CanValidateCertificates(bool value);
	HRESULT set_CanEmptyFolder(bool value);
	HRESULT set_CanCreateFolder(bool value);
	HRESULT set_CanDeleteFolder(bool value);
	HRESULT set_CanMoveFolder(bool value);
}

@uuid("61edf54b-11ef-400c-adde-8cde65c85e66")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxChange")
interface IEmailMailboxChange : IInspectable
{
extern(Windows):
	HRESULT get_ChangeType(Windows.ApplicationModel.Email.EmailMailboxChangeType* return_value);
	HRESULT get_MailboxActions(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailMailboxAction)* return_value);
	HRESULT get_Message(Windows.ApplicationModel.Email.EmailMessage* return_value);
	HRESULT get_Folder(Windows.ApplicationModel.Email.EmailFolder* return_value);
}

@uuid("bdbd0ebb-c53d-4331-97be-be75a2146a75")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxChangeReader")
interface IEmailMailboxChangeReader : IInspectable
{
extern(Windows):
	HRESULT abi_AcceptChanges();
	HRESULT abi_AcceptChangesThrough(Windows.ApplicationModel.Email.EmailMailboxChange lastChangeToAcknowledge);
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMailboxChange))* return_value);
}

@uuid("7ae48638-5166-42b7-8882-fd21c92bdd4b")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxChangeTracker")
interface IEmailMailboxChangeTracker : IInspectable
{
extern(Windows):
	HRESULT get_IsTracking(bool* return_value);
	HRESULT abi_Enable();
	HRESULT abi_GetChangeReader(Windows.ApplicationModel.Email.EmailMailboxChangeReader* return_value);
	HRESULT abi_Reset();
}

@uuid("779a74c1-97c5-4b54-b30d-306232623e6d")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxChangedDeferral")
interface IEmailMailboxChangedDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("3cfd5f6e-01d4-4e4a-a44c-b22dd42ec207")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxChangedEventArgs")
interface IEmailMailboxChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Email.EmailMailboxChangedDeferral* return_result);
}

@uuid("b228557f-2885-4998-b595-8a2d374ce950")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxCreateFolderResult")
interface IEmailMailboxCreateFolderResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.Email.EmailMailboxCreateFolderStatus* return_value);
	HRESULT get_Folder(Windows.ApplicationModel.Email.EmailFolder* return_value);
}

@uuid("1f3345c5-1c3b-4dc7-b410-6373783e545d")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxPolicies")
interface IEmailMailboxPolicies : IInspectable
{
extern(Windows):
	HRESULT get_AllowedSmimeEncryptionAlgorithmNegotiation(Windows.ApplicationModel.Email.EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation* return_value);
	HRESULT get_AllowSmimeSoftCertificates(bool* return_value);
	HRESULT get_RequiredSmimeEncryptionAlgorithm(Windows.Foundation.IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeEncryptionAlgorithm)* return_value);
	HRESULT get_RequiredSmimeSigningAlgorithm(Windows.Foundation.IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeSigningAlgorithm)* return_value);
}

@uuid("bab58afb-a14b-497c-a8e2-55eac29cc4b5")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxPolicies")
interface IEmailMailboxPolicies2 : IInspectable
{
extern(Windows):
	HRESULT get_MustEncryptSmimeMessages(bool* return_value);
	HRESULT get_MustSignSmimeMessages(bool* return_value);
}

@uuid("bdd4a01f-4867-414a-81a2-803919c44191")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxPolicies")
interface IEmailMailboxPolicies3 : IInspectable
{
extern(Windows):
	HRESULT set_AllowedSmimeEncryptionAlgorithmNegotiation(Windows.ApplicationModel.Email.EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation value);
	HRESULT set_AllowSmimeSoftCertificates(bool value);
	HRESULT set_RequiredSmimeEncryptionAlgorithm(Windows.Foundation.IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeEncryptionAlgorithm) value);
	HRESULT set_RequiredSmimeSigningAlgorithm(Windows.Foundation.IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeSigningAlgorithm) value);
	HRESULT set_MustEncryptSmimeMessages(bool value);
	HRESULT set_MustSignSmimeMessages(bool value);
}

@uuid("517ac55a-3591-4b5d-85bc-c71dde862263")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxSyncManager")
interface IEmailMailboxSyncManager : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.Email.EmailMailboxSyncStatus* return_value);
	HRESULT get_LastSuccessfulSyncTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_LastAttemptedSyncTime(Windows.Foundation.DateTime* return_value);
	HRESULT abi_SyncAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT add_SyncStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.EmailMailboxSyncManager, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SyncStatusChanged(EventRegistrationToken token);
}

@uuid("cd8dc97e-95c1-4f89-81b7-e6aecb6695fc")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailboxSyncManager")
interface IEmailMailboxSyncManager2 : IInspectable
{
extern(Windows):
	HRESULT set_Status(Windows.ApplicationModel.Email.EmailMailboxSyncStatus value);
	HRESULT set_LastSuccessfulSyncTime(Windows.Foundation.DateTime value);
	HRESULT set_LastAttemptedSyncTime(Windows.Foundation.DateTime value);
}

@uuid("f773de9f-3ca5-4b0f-90c1-156e40174ce5")
@WinrtFactory("Windows.ApplicationModel.Email.EmailManagerForUser")
interface IEmailManagerForUser : IInspectable
{
extern(Windows):
	HRESULT abi_ShowComposeNewEmailAsync(Windows.ApplicationModel.Email.EmailMessage message, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.Email.EmailStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailStore)* return_result);
	HRESULT get_User(Windows.System.User* return_value);
}

@uuid("f5128654-55c5-4890-a824-216c2618ce7f")
@WinrtFactory("Windows.ApplicationModel.Email.EmailManager")
interface IEmailManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ShowComposeNewEmailAsync(Windows.ApplicationModel.Email.EmailMessage message, Windows.Foundation.IAsyncAction* return_asyncAction);
}

@uuid("ac052da3-b194-425d-b6d9-d0f04135eda2")
@WinrtFactory("Windows.ApplicationModel.Email.EmailManager")
interface IEmailManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.ApplicationModel.Email.EmailStoreAccessType accessType, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailStore)* return_result);
}

@uuid("4a722395-843e-4945-b3aa-349e07a362c5")
@WinrtFactory("Windows.ApplicationModel.Email.EmailManager")
interface IEmailManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetForUser(Windows.System.User user, Windows.ApplicationModel.Email.EmailManagerForUser* return_result);
}

@uuid("31c03fa9-7933-415f-a275-d165ba07026b")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMeetingInfo")
interface IEmailMeetingInfo : IInspectable
{
extern(Windows):
	HRESULT get_AllowNewTimeProposal(bool* return_value);
	HRESULT set_AllowNewTimeProposal(bool value);
	HRESULT get_AppointmentRoamingId(HSTRING* return_value);
	HRESULT set_AppointmentRoamingId(HSTRING value);
	HRESULT get_AppointmentOriginalStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_AppointmentOriginalStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Duration(Windows.Foundation.TimeSpan value);
	HRESULT get_IsAllDay(bool* return_value);
	HRESULT set_IsAllDay(bool value);
	HRESULT get_IsResponseRequested(bool* return_value);
	HRESULT set_IsResponseRequested(bool value);
	HRESULT get_Location(HSTRING* return_value);
	HRESULT set_Location(HSTRING value);
	HRESULT get_ProposedStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_proposedStartTime);
	HRESULT set_ProposedStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) proposedStartTime);
	HRESULT get_ProposedDuration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_duration);
	HRESULT set_ProposedDuration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) duration);
	HRESULT get_RecurrenceStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_RecurrenceStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_Recurrence(Windows.ApplicationModel.Appointments.AppointmentRecurrence* return_value);
	HRESULT set_Recurrence(Windows.ApplicationModel.Appointments.AppointmentRecurrence value);
	HRESULT get_RemoteChangeNumber(UINT64* return_value);
	HRESULT set_RemoteChangeNumber(UINT64 value);
	HRESULT get_StartTime(Windows.Foundation.DateTime* return_value);
	HRESULT set_StartTime(Windows.Foundation.DateTime value);
}

@uuid("7e59386d-b0d9-4fe5-867c-e31ed2b588b8")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMeetingInfo")
interface IEmailMeetingInfo2 : IInspectable
{
extern(Windows):
	HRESULT get_IsReportedOutOfDateByServer(bool* return_value);
}

@uuid("6c6d948d-80b5-48f8-b0b1-e04e430f44e5")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMessage")
interface IEmailMessage : IInspectable
{
extern(Windows):
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT set_Subject(HSTRING value);
	HRESULT get_Body(HSTRING* return_value);
	HRESULT set_Body(HSTRING value);
	HRESULT get_To(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient)* return_value);
	HRESULT get_CC(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient)* return_value);
	HRESULT get_Bcc(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient)* return_value);
	HRESULT get_Attachments(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailAttachment)* return_value);
}

@uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMessage")
interface IEmailMessage2 : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_RemoteId(HSTRING* return_value);
	HRESULT set_RemoteId(HSTRING value);
	HRESULT get_MailboxId(HSTRING* return_value);
	HRESULT get_ConversationId(HSTRING* return_value);
	HRESULT get_FolderId(HSTRING* return_value);
	HRESULT get_AllowInternetImages(bool* return_value);
	HRESULT set_AllowInternetImages(bool value);
	HRESULT get_ChangeNumber(UINT64* return_value);
	HRESULT get_DownloadState(Windows.ApplicationModel.Email.EmailMessageDownloadState* return_value);
	HRESULT set_DownloadState(Windows.ApplicationModel.Email.EmailMessageDownloadState value);
	HRESULT get_EstimatedDownloadSizeInBytes(UINT32* return_value);
	HRESULT set_EstimatedDownloadSizeInBytes(UINT32 value);
	HRESULT get_FlagState(Windows.ApplicationModel.Email.EmailFlagState* return_value);
	HRESULT set_FlagState(Windows.ApplicationModel.Email.EmailFlagState value);
	HRESULT get_HasPartialBodies(bool* return_value);
	HRESULT get_Importance(Windows.ApplicationModel.Email.EmailImportance* return_value);
	HRESULT set_Importance(Windows.ApplicationModel.Email.EmailImportance value);
	HRESULT get_InResponseToMessageId(HSTRING* return_value);
	HRESULT get_IrmInfo(Windows.ApplicationModel.Email.EmailIrmInfo* return_value);
	HRESULT set_IrmInfo(Windows.ApplicationModel.Email.EmailIrmInfo value);
	HRESULT get_IsDraftMessage(bool* return_value);
	HRESULT get_IsRead(bool* return_value);
	HRESULT set_IsRead(bool value);
	HRESULT get_IsSeen(bool* return_value);
	HRESULT set_IsSeen(bool value);
	HRESULT get_IsServerSearchMessage(bool* return_value);
	HRESULT get_IsSmartSendable(bool* return_value);
	HRESULT get_MessageClass(HSTRING* return_value);
	HRESULT set_MessageClass(HSTRING value);
	HRESULT get_NormalizedSubject(HSTRING* return_value);
	HRESULT get_OriginalCodePage(INT32* return_value);
	HRESULT set_OriginalCodePage(INT32 value);
	HRESULT get_Preview(HSTRING* return_value);
	HRESULT set_Preview(HSTRING value);
	HRESULT get_LastResponseKind(Windows.ApplicationModel.Email.EmailMessageResponseKind* return_value);
	HRESULT set_LastResponseKind(Windows.ApplicationModel.Email.EmailMessageResponseKind value);
	HRESULT get_Sender(Windows.ApplicationModel.Email.EmailRecipient* return_value);
	HRESULT set_Sender(Windows.ApplicationModel.Email.EmailRecipient value);
	HRESULT get_SentTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_SentTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_MeetingInfo(Windows.ApplicationModel.Email.EmailMeetingInfo* return_value);
	HRESULT set_MeetingInfo(Windows.ApplicationModel.Email.EmailMeetingInfo value);
	HRESULT abi_GetBodyStream(Windows.ApplicationModel.Email.EmailMessageBodyKind type, Windows.Storage.Streams.IRandomAccessStreamReference* return_result);
	HRESULT abi_SetBodyStream(Windows.ApplicationModel.Email.EmailMessageBodyKind type, Windows.Storage.Streams.IRandomAccessStreamReference stream);
}

@uuid("a1ea675c-e598-4d29-a018-fc7b7eece0a1")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMessage")
interface IEmailMessage3 : IInspectable
{
extern(Windows):
	HRESULT get_SmimeData(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_SmimeData(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_SmimeKind(Windows.ApplicationModel.Email.EmailMessageSmimeKind* return_value);
	HRESULT set_SmimeKind(Windows.ApplicationModel.Email.EmailMessageSmimeKind value);
}

@uuid("317cf181-3e7f-4a05-8394-3e10336dd435")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMessage")
interface IEmailMessage4 : IInspectable
{
extern(Windows):
	HRESULT get_ReplyTo(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient)* return_value);
	HRESULT get_SentRepresenting(Windows.ApplicationModel.Email.EmailRecipient* return_value);
	HRESULT set_SentRepresenting(Windows.ApplicationModel.Email.EmailRecipient value);
}

@uuid("605cd08f-25d9-4f1b-9e51-0514c0149653")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMessageBatch")
interface IEmailMessageBatch : IInspectable
{
extern(Windows):
	HRESULT get_Messages(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMessage)* return_value);
	HRESULT get_Status(Windows.ApplicationModel.Email.EmailBatchStatus* return_value);
}

@uuid("2f4abe9f-6213-4a85-a3b0-f92d1a839d19")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMessageReader")
interface IEmailMessageReader : IInspectable
{
extern(Windows):
	HRESULT abi_ReadBatchAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessageBatch)* return_result);
}

@uuid("45504b9b-3e7f-4d52-b6dd-d6fd4e1fbd9a")
@WinrtFactory("Windows.ApplicationModel.Email.EmailQueryOptions")
interface IEmailQueryOptions : IInspectable
{
extern(Windows):
	HRESULT get_TextSearch(Windows.ApplicationModel.Email.EmailQueryTextSearch* return_value);
	HRESULT get_SortDirection(Windows.ApplicationModel.Email.EmailQuerySortDirection* return_value);
	HRESULT set_SortDirection(Windows.ApplicationModel.Email.EmailQuerySortDirection value);
	HRESULT get_SortProperty(Windows.ApplicationModel.Email.EmailQuerySortProperty* return_value);
	HRESULT set_SortProperty(Windows.ApplicationModel.Email.EmailQuerySortProperty value);
	HRESULT get_Kind(Windows.ApplicationModel.Email.EmailQueryKind* return_value);
	HRESULT set_Kind(Windows.ApplicationModel.Email.EmailQueryKind value);
	HRESULT get_FolderIds(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("88f1a1b8-78ab-4ee8-b4e3-046d6e2fe5e2")
@WinrtFactory("Windows.ApplicationModel.Email.EmailQueryOptions")
interface IEmailQueryOptionsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithText(HSTRING text, Windows.ApplicationModel.Email.EmailQueryOptions* return_result);
	HRESULT abi_CreateWithTextAndFields(HSTRING text, Windows.ApplicationModel.Email.EmailQuerySearchFields fields, Windows.ApplicationModel.Email.EmailQueryOptions* return_result);
}

@uuid("9fa0a288-3c5d-46a5-a6e2-31d6fd17e540")
@WinrtFactory("Windows.ApplicationModel.Email.EmailQueryTextSearch")
interface IEmailQueryTextSearch : IInspectable
{
extern(Windows):
	HRESULT get_Fields(Windows.ApplicationModel.Email.EmailQuerySearchFields* return_value);
	HRESULT set_Fields(Windows.ApplicationModel.Email.EmailQuerySearchFields value);
	HRESULT get_SearchScope(Windows.ApplicationModel.Email.EmailQuerySearchScope* return_value);
	HRESULT set_SearchScope(Windows.ApplicationModel.Email.EmailQuerySearchScope value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT set_Text(HSTRING value);
}

@uuid("cae825b3-4478-4814-b900-c902b5e19b53")
@WinrtFactory("Windows.ApplicationModel.Email.EmailRecipient")
interface IEmailRecipient : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Address(HSTRING* return_value);
	HRESULT set_Address(HSTRING value);
}

@uuid("5500b84d-c79a-4ef8-b909-722e18e3935d")
@WinrtFactory("Windows.ApplicationModel.Email.EmailRecipient")
interface IEmailRecipientFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING address, Windows.ApplicationModel.Email.EmailRecipient* return_result);
	HRESULT abi_CreateWithName(HSTRING address, HSTRING name, Windows.ApplicationModel.Email.EmailRecipient* return_result);
}

@uuid("918338fa-8d8d-4573-80d1-07172a34b98d")
@WinrtFactory("Windows.ApplicationModel.Email.EmailRecipientResolutionResult")
interface IEmailRecipientResolutionResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.ApplicationModel.Email.EmailRecipientResolutionStatus* return_value);
	HRESULT get_PublicKeys(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
}

@uuid("5e420bb6-ce5b-4bde-b9d4-e16da0b09fca")
@WinrtFactory("Windows.ApplicationModel.Email.EmailRecipientResolutionResult")
interface IEmailRecipientResolutionResult2 : IInspectable
{
extern(Windows):
	HRESULT set_Status(Windows.ApplicationModel.Email.EmailRecipientResolutionStatus value);
	HRESULT abi_SetPublicKeys(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) value);
}

@uuid("f803226e-9137-4f8b-a470-279ac3058eb6")
@WinrtFactory("Windows.ApplicationModel.Email.EmailStore")
interface IEmailStore : IInspectable
{
extern(Windows):
	HRESULT abi_FindMailboxesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMailbox))* return_result);
	HRESULT abi_GetConversationReader(Windows.ApplicationModel.Email.EmailConversationReader* return_result);
	HRESULT abi_GetConversationReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options, Windows.ApplicationModel.Email.EmailConversationReader* return_result);
	HRESULT abi_GetMessageReader(Windows.ApplicationModel.Email.EmailMessageReader* return_result);
	HRESULT abi_GetMessageReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options, Windows.ApplicationModel.Email.EmailMessageReader* return_result);
	HRESULT abi_GetMailboxAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailbox)* return_result);
	HRESULT abi_GetConversationAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailConversation)* return_result);
	HRESULT abi_GetFolderAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder)* return_result);
	HRESULT abi_GetMessageAsync(HSTRING id, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage)* return_result);
	HRESULT abi_CreateMailboxAsync(HSTRING accountName, HSTRING accountAddress, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailbox)* return_result);
	HRESULT abi_CreateMailboxInAccountAsync(HSTRING accountName, HSTRING accountAddress, HSTRING userDataAccountId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailbox)* return_result);
}

@uuid("ce17563c-46e6-43c9-96f7-facf7dd710cb")
@WinrtFactory("Windows.ApplicationModel.Email.EmailStoreNotificationTriggerDetails")
interface IEmailStoreNotificationTriggerDetails : IInspectable
{
}

interface EmailAttachment : Windows.ApplicationModel.Email.IEmailAttachment, Windows.ApplicationModel.Email.IEmailAttachment2
{
}

interface EmailConversation : Windows.ApplicationModel.Email.IEmailConversation
{
}

interface EmailConversationBatch : Windows.ApplicationModel.Email.IEmailConversationBatch
{
}

interface EmailConversationReader : Windows.ApplicationModel.Email.IEmailConversationReader
{
}

interface EmailFolder : Windows.ApplicationModel.Email.IEmailFolder
{
}

interface EmailIrmInfo : Windows.ApplicationModel.Email.IEmailIrmInfo
{
}

interface EmailIrmTemplate : Windows.ApplicationModel.Email.IEmailIrmTemplate
{
}

interface EmailItemCounts : Windows.ApplicationModel.Email.IEmailItemCounts
{
}

interface EmailMailbox : Windows.ApplicationModel.Email.IEmailMailbox, Windows.ApplicationModel.Email.IEmailMailbox2, Windows.ApplicationModel.Email.IEmailMailbox3, Windows.ApplicationModel.Email.IEmailMailbox4
{
}

interface EmailMailboxAction : Windows.ApplicationModel.Email.IEmailMailboxAction
{
}

interface EmailMailboxAutoReply : Windows.ApplicationModel.Email.IEmailMailboxAutoReply
{
}

interface EmailMailboxAutoReplySettings : Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings
{
}

interface EmailMailboxCapabilities : Windows.ApplicationModel.Email.IEmailMailboxCapabilities, Windows.ApplicationModel.Email.IEmailMailboxCapabilities2, Windows.ApplicationModel.Email.IEmailMailboxCapabilities3
{
}

interface EmailMailboxChange : Windows.ApplicationModel.Email.IEmailMailboxChange
{
}

interface EmailMailboxChangeReader : Windows.ApplicationModel.Email.IEmailMailboxChangeReader
{
}

interface EmailMailboxChangeTracker : Windows.ApplicationModel.Email.IEmailMailboxChangeTracker
{
}

interface EmailMailboxChangedDeferral : Windows.ApplicationModel.Email.IEmailMailboxChangedDeferral
{
}

interface EmailMailboxChangedEventArgs : Windows.ApplicationModel.Email.IEmailMailboxChangedEventArgs
{
}

interface EmailMailboxCreateFolderResult : Windows.ApplicationModel.Email.IEmailMailboxCreateFolderResult
{
}

interface EmailMailboxPolicies : Windows.ApplicationModel.Email.IEmailMailboxPolicies, Windows.ApplicationModel.Email.IEmailMailboxPolicies2, Windows.ApplicationModel.Email.IEmailMailboxPolicies3
{
}

interface EmailMailboxSyncManager : Windows.ApplicationModel.Email.IEmailMailboxSyncManager, Windows.ApplicationModel.Email.IEmailMailboxSyncManager2
{
}

interface EmailManager
{
}

interface EmailManagerForUser : Windows.ApplicationModel.Email.IEmailManagerForUser
{
}

interface EmailMeetingInfo : Windows.ApplicationModel.Email.IEmailMeetingInfo, Windows.ApplicationModel.Email.IEmailMeetingInfo2
{
}

interface EmailMessage : Windows.ApplicationModel.Email.IEmailMessage, Windows.ApplicationModel.Email.IEmailMessage2, Windows.ApplicationModel.Email.IEmailMessage3, Windows.ApplicationModel.Email.IEmailMessage4
{
}

interface EmailMessageBatch : Windows.ApplicationModel.Email.IEmailMessageBatch
{
}

interface EmailMessageReader : Windows.ApplicationModel.Email.IEmailMessageReader
{
}

interface EmailQueryOptions : Windows.ApplicationModel.Email.IEmailQueryOptions
{
}

interface EmailQueryTextSearch : Windows.ApplicationModel.Email.IEmailQueryTextSearch
{
}

interface EmailRecipient : Windows.ApplicationModel.Email.IEmailRecipient
{
}

interface EmailRecipientResolutionResult : Windows.ApplicationModel.Email.IEmailRecipientResolutionResult, Windows.ApplicationModel.Email.IEmailRecipientResolutionResult2
{
}

interface EmailStore : Windows.ApplicationModel.Email.IEmailStore
{
}

interface EmailStoreNotificationTriggerDetails : Windows.ApplicationModel.Email.IEmailStoreNotificationTriggerDetails
{
}

enum EmailAttachmentDownloadState
{
	NotDownloaded = 0,
	Downloading = 1,
	Downloaded = 2,
	Failed = 3
}

enum EmailBatchStatus
{
	Success = 0,
	ServerSearchSyncManagerError = 1,
	ServerSearchUnknownError = 2
}

enum EmailCertificateValidationStatus
{
	Success = 0,
	NoMatch = 1,
	InvalidUsage = 2,
	InvalidCertificate = 3,
	Revoked = 4,
	ChainRevoked = 5,
	RevocationServerFailure = 6,
	Expired = 7,
	Untrusted = 8,
	ServerError = 9,
	UnknownFailure = 10
}

enum EmailFlagState
{
	Unflagged = 0,
	Flagged = 1,
	Completed = 2,
	Cleared = 3
}

enum EmailImportance
{
	Normal = 0,
	High = 1,
	Low = 2
}

enum EmailMailboxActionKind
{
	MarkMessageAsSeen = 0,
	MarkMessageRead = 1,
	ChangeMessageFlagState = 2,
	MoveMessage = 3,
	SaveDraft = 4,
	SendMessage = 5,
	CreateResponseReplyMessage = 6,
	CreateResponseReplyAllMessage = 7,
	CreateResponseForwardMessage = 8,
	MoveFolder = 9,
	MarkFolderForSyncEnabled = 10
}

enum EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation
{
	None = 0,
	StrongAlgorithm = 1,
	AnyAlgorithm = 2
}

enum EmailMailboxAutoReplyMessageResponseKind
{
	Html = 0,
	PlainText = 1
}

enum EmailMailboxChangeType
{
	MessageCreated = 0,
	MessageModified = 1,
	MessageDeleted = 2,
	FolderCreated = 3,
	FolderModified = 4,
	FolderDeleted = 5,
	ChangeTrackingLost = 6
}

enum EmailMailboxCreateFolderStatus
{
	Success = 0,
	NetworkError = 1,
	PermissionsError = 2,
	ServerError = 3,
	UnknownFailure = 4,
	NameCollision = 5,
	ServerRejected = 6
}

enum EmailMailboxDeleteFolderStatus
{
	Success = 0,
	NetworkError = 1,
	PermissionsError = 2,
	ServerError = 3,
	UnknownFailure = 4,
	CouldNotDeleteEverything = 5
}

enum EmailMailboxEmptyFolderStatus
{
	Success = 0,
	NetworkError = 1,
	PermissionsError = 2,
	ServerError = 3,
	UnknownFailure = 4,
	CouldNotDeleteEverything = 5
}

enum EmailMailboxOtherAppReadAccess
{
	SystemOnly = 0,
	Full = 1,
	None = 2
}

enum EmailMailboxOtherAppWriteAccess
{
	None = 0,
	Limited = 1
}

enum EmailMailboxSmimeEncryptionAlgorithm
{
	Any = 0,
	TripleDes = 1,
	Des = 2,
	RC2128Bit = 3,
	RC264Bit = 4,
	RC240Bit = 5
}

enum EmailMailboxSmimeSigningAlgorithm
{
	Any = 0,
	Sha1 = 1,
	MD5 = 2
}

enum EmailMailboxSyncStatus
{
	Idle = 0,
	Syncing = 1,
	UpToDate = 2,
	AuthenticationError = 3,
	PolicyError = 4,
	UnknownError = 5,
	ManualAccountRemovalRequired = 6
}

enum EmailMeetingResponseType
{
	Accept = 0,
	Decline = 1,
	Tentative = 2
}

enum EmailMessageBodyKind
{
	Html = 0,
	PlainText = 1
}

enum EmailMessageDownloadState
{
	PartiallyDownloaded = 0,
	Downloading = 1,
	Downloaded = 2,
	Failed = 3
}

enum EmailMessageResponseKind
{
	None = 0,
	Reply = 1,
	ReplyAll = 2,
	Forward = 3
}

enum EmailMessageSmimeKind
{
	None = 0,
	ClearSigned = 1,
	OpaqueSigned = 2,
	Encrypted = 3
}

enum EmailQueryKind
{
	All = 0,
	Important = 1,
	Flagged = 2,
	Unread = 3,
	Read = 4,
	Unseen = 5
}

@bitflags
enum EmailQuerySearchFields
{
	None = 0x0,
	Subject = 0x1,
	Sender = 0x2,
	Preview = 0x4,
	Recipients = 0x8,
	All = 0xFFFFFFFF
}

enum EmailQuerySearchScope
{
	Local = 0,
	Server = 1
}

enum EmailQuerySortDirection
{
	Descending = 0,
	Ascending = 1
}

enum EmailQuerySortProperty
{
	Date = 0
}

enum EmailRecipientResolutionStatus
{
	Success = 0,
	RecipientNotFound = 1,
	AmbiguousRecipient = 2,
	NoCertificate = 3,
	CertificateRequestLimitReached = 4,
	CannotResolveDistributionList = 5,
	ServerError = 6,
	UnknownFailure = 7
}

enum EmailSpecialFolderKind
{
	None = 0,
	Root = 1,
	Inbox = 2,
	Outbox = 3,
	Drafts = 4,
	DeletedItems = 5,
	Sent = 6
}

enum EmailStoreAccessType
{
	AppMailboxesReadWrite = 0,
	AllMailboxesLimitedReadWrite = 1
}