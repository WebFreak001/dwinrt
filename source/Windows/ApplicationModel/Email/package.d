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
	HRESULT get_EstimatedDownloadSizeInBytes(ulong* return_value);
	HRESULT set_EstimatedDownloadSizeInBytes(ulong value);
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
interface IEmailMailbox2_Base : IInspectable
{
extern(Windows):
	HRESULT get_LinkedMailboxId(HSTRING* return_value);
	HRESULT get_NetworkAccountId(HSTRING* return_value);
	HRESULT get_NetworkId(HSTRING* return_value);
}
@uuid("14f8e404-6ca2-4ab2-9241-79cd7bf46346")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailbox")
interface IEmailMailbox2 : IEmailMailbox2_Base, Windows.ApplicationModel.Email.IEmailMailbox {}

@uuid("3da5897b-458b-408a-8e37-ac8b05d8af56")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailbox")
interface IEmailMailbox3_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ResolveRecipientsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) recipients, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailRecipientResolutionResult))* return_result);
	HRESULT abi_ValidateCertificatesAsync(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus))* return_result);
	HRESULT abi_TryEmptyFolderAsync(HSTRING folderId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxEmptyFolderStatus)* return_result);
	HRESULT abi_TryCreateFolderAsync(HSTRING parentFolderId, HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxCreateFolderResult)* return_result);
	HRESULT abi_TryDeleteFolderAsync(HSTRING folderId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxDeleteFolderStatus)* return_result);
}
@uuid("3da5897b-458b-408a-8e37-ac8b05d8af56")
@WinrtFactory("Windows.ApplicationModel.Email.EmailMailbox")
interface IEmailMailbox3 : IEmailMailbox3_Base, Windows.ApplicationModel.Email.IEmailMailbox2, Windows.ApplicationModel.Email.IEmailMailbox {}

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
	HRESULT get_ChangeNumber(ulong* return_value);
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
	HRESULT get_RemoteChangeNumber(ulong* return_value);
	HRESULT set_RemoteChangeNumber(ulong value);
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
	HRESULT get_ChangeNumber(ulong* return_value);
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
extern(Windows):
	final HSTRING FileName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment)this.asInterface(uuid("f353caf9-57c8-4adb-b992-60fceb584f54"))).get_FileName(&_ret));
		return _ret;
	}
	final void FileName(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment)this.asInterface(uuid("f353caf9-57c8-4adb-b992-60fceb584f54"))).set_FileName(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Data()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment)this.asInterface(uuid("f353caf9-57c8-4adb-b992-60fceb584f54"))).get_Data(&_ret));
		return _ret;
	}
	final void Data(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment)this.asInterface(uuid("f353caf9-57c8-4adb-b992-60fceb584f54"))).set_Data(value));
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).get_Id(&_ret));
		return _ret;
	}
	final HSTRING ContentId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).get_ContentId(&_ret));
		return _ret;
	}
	final void ContentId(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).set_ContentId(value));
	}
	final HSTRING ContentLocation()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).get_ContentLocation(&_ret));
		return _ret;
	}
	final void ContentLocation(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).set_ContentLocation(value));
	}
	final Windows.ApplicationModel.Email.EmailAttachmentDownloadState DownloadState()
	{
		Windows.ApplicationModel.Email.EmailAttachmentDownloadState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).get_DownloadState(&_ret));
		return _ret;
	}
	final void DownloadState(Windows.ApplicationModel.Email.EmailAttachmentDownloadState value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).set_DownloadState(value));
	}
	final ulong EstimatedDownloadSizeInBytes()
	{
		ulong _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).get_EstimatedDownloadSizeInBytes(&_ret));
		return _ret;
	}
	final void EstimatedDownloadSizeInBytes(ulong value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).set_EstimatedDownloadSizeInBytes(value));
	}
	final bool IsFromBaseMessage()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).get_IsFromBaseMessage(&_ret));
		return _ret;
	}
	final bool IsInline()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).get_IsInline(&_ret));
		return _ret;
	}
	final void IsInline(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).set_IsInline(value));
	}
	final HSTRING MimeType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).get_MimeType(&_ret));
		return _ret;
	}
	final void MimeType(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachment2)this.asInterface(uuid("225f1070-b0ff-4571-9d54-a706c48d55c6"))).set_MimeType(value));
	}
	static EmailAttachment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EmailAttachment).abi_ActivateInstance(&ret));
		return cast(EmailAttachment) ret;
	}
	static Windows.ApplicationModel.Email.EmailAttachment New(HSTRING fileName, Windows.Storage.Streams.IRandomAccessStreamReference data)
	{
		auto factory = factory!(Windows.ApplicationModel.Email.IEmailAttachmentFactory);
		Windows.ApplicationModel.Email.EmailAttachment _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailAttachmentFactory)factory.asInterface(uuid("796eac46-ed56-4979-8708-abb8bc854b7d"))).abi_Create(fileName, data, &_ret));
		return _ret;
	}
}

interface EmailConversation : Windows.ApplicationModel.Email.IEmailConversation
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_Id(&_ret));
		return _ret;
	}
	final HSTRING MailboxId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_MailboxId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailFlagState FlagState()
	{
		Windows.ApplicationModel.Email.EmailFlagState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_FlagState(&_ret));
		return _ret;
	}
	final bool HasAttachment()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_HasAttachment(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailImportance Importance()
	{
		Windows.ApplicationModel.Email.EmailImportance _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_Importance(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMessageResponseKind LastEmailResponseKind()
	{
		Windows.ApplicationModel.Email.EmailMessageResponseKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_LastEmailResponseKind(&_ret));
		return _ret;
	}
	final UINT32 MessageCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_MessageCount(&_ret));
		return _ret;
	}
	final HSTRING MostRecentMessageId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_MostRecentMessageId(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime MostRecentMessageTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_MostRecentMessageTime(&_ret));
		return _ret;
	}
	final HSTRING Preview()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_Preview(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailRecipient LatestSender()
	{
		Windows.ApplicationModel.Email.EmailRecipient _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_LatestSender(&_ret));
		return _ret;
	}
	final HSTRING Subject()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_Subject(&_ret));
		return _ret;
	}
	final UINT32 UnreadMessageCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).get_UnreadMessageCount(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMessage)) FindMessagesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMessage)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).abi_FindMessagesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMessage)) FindMessagesWithCountAsync(UINT32 count)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMessage)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversation)this.asInterface(uuid("da18c248-a0bc-4349-902d-90f66389f51b"))).abi_FindMessagesWithCountAsync(count, &_ret));
		return _ret;
	}
	alias FindMessagesAsync = FindMessagesWithCountAsync;
}

interface EmailConversationBatch : Windows.ApplicationModel.Email.IEmailConversationBatch
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailConversation) Conversations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailConversation) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversationBatch)this.asInterface(uuid("b8c1ab81-01c5-432a-9df1-fe85d98a279a"))).get_Conversations(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailBatchStatus Status()
	{
		Windows.ApplicationModel.Email.EmailBatchStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversationBatch)this.asInterface(uuid("b8c1ab81-01c5-432a-9df1-fe85d98a279a"))).get_Status(&_ret));
		return _ret;
	}
}

interface EmailConversationReader : Windows.ApplicationModel.Email.IEmailConversationReader
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailConversationBatch) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailConversationBatch) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailConversationReader)this.asInterface(uuid("b4630f82-2875-44c8-9b8c-85beb3a3c653"))).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
}

interface EmailFolder : Windows.ApplicationModel.Email.IEmailFolder
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).get_Id(&_ret));
		return _ret;
	}
	final HSTRING RemoteId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).get_RemoteId(&_ret));
		return _ret;
	}
	final void RemoteId(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).set_RemoteId(value));
	}
	final HSTRING MailboxId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).get_MailboxId(&_ret));
		return _ret;
	}
	final HSTRING ParentFolderId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).get_ParentFolderId(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).set_DisplayName(value));
	}
	final bool IsSyncEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).get_IsSyncEnabled(&_ret));
		return _ret;
	}
	final void IsSyncEnabled(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).set_IsSyncEnabled(value));
	}
	final Windows.Foundation.DateTime LastSuccessfulSyncTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).get_LastSuccessfulSyncTime(&_ret));
		return _ret;
	}
	final void LastSuccessfulSyncTime(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).set_LastSuccessfulSyncTime(value));
	}
	final Windows.ApplicationModel.Email.EmailSpecialFolderKind Kind()
	{
		Windows.ApplicationModel.Email.EmailSpecialFolderKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder) CreateFolderAsync(HSTRING name)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_CreateFolderAsync(name, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeleteAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_DeleteAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailFolder)) FindChildFoldersAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailFolder)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_FindChildFoldersAsync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailConversationReader GetConversationReader()
	{
		Windows.ApplicationModel.Email.EmailConversationReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_GetConversationReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailConversationReader GetConversationReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options)
	{
		Windows.ApplicationModel.Email.EmailConversationReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_GetConversationReaderWithOptions(options, &_ret));
		return _ret;
	}
	alias GetConversationReader = GetConversationReaderWithOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage) GetMessageAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_GetMessageAsync(id, &_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMessageReader GetMessageReader()
	{
		Windows.ApplicationModel.Email.EmailMessageReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_GetMessageReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMessageReader GetMessageReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options)
	{
		Windows.ApplicationModel.Email.EmailMessageReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_GetMessageReaderWithOptions(options, &_ret));
		return _ret;
	}
	alias GetMessageReader = GetMessageReaderWithOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailItemCounts) GetMessageCountsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailItemCounts) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_GetMessageCountsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryMoveAsync(Windows.ApplicationModel.Email.EmailFolder newParentFolder)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_TryMoveAsync(newParentFolder, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryMoveWithNewNameAsync(Windows.ApplicationModel.Email.EmailFolder newParentFolder, HSTRING newFolderName)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_TryMoveWithNewNameAsync(newParentFolder, newFolderName, &_ret));
		return _ret;
	}
	alias TryMoveAsync = TryMoveWithNewNameAsync;
	final Windows.Foundation.IAsyncOperation!(bool) TrySaveAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_TrySaveAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveMessageAsync(Windows.ApplicationModel.Email.EmailMessage message)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailFolder)this.asInterface(uuid("a24f7771-996c-4864-b1ba-ed1240e57d11"))).abi_SaveMessageAsync(message, &_ret));
		return _ret;
	}
}

interface EmailIrmInfo : Windows.ApplicationModel.Email.IEmailIrmInfo
{
extern(Windows):
	final bool CanEdit()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_CanEdit(&_ret));
		return _ret;
	}
	final void CanEdit(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_CanEdit(value));
	}
	final bool CanExtractData()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_CanExtractData(&_ret));
		return _ret;
	}
	final void CanExtractData(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_CanExtractData(value));
	}
	final bool CanForward()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_CanForward(&_ret));
		return _ret;
	}
	final void CanForward(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_CanForward(value));
	}
	final bool CanModifyRecipientsOnResponse()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_CanModifyRecipientsOnResponse(&_ret));
		return _ret;
	}
	final void CanModifyRecipientsOnResponse(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_CanModifyRecipientsOnResponse(value));
	}
	final bool CanPrintData()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_CanPrintData(&_ret));
		return _ret;
	}
	final void CanPrintData(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_CanPrintData(value));
	}
	final bool CanRemoveIrmOnResponse()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_CanRemoveIrmOnResponse(&_ret));
		return _ret;
	}
	final void CanRemoveIrmOnResponse(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_CanRemoveIrmOnResponse(value));
	}
	final bool CanReply()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_CanReply(&_ret));
		return _ret;
	}
	final void CanReply(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_CanReply(value));
	}
	final bool CanReplyAll()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_CanReplyAll(&_ret));
		return _ret;
	}
	final void CanReplyAll(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_CanReplyAll(value));
	}
	final Windows.Foundation.DateTime ExpirationDate()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_ExpirationDate(&_ret));
		return _ret;
	}
	final void ExpirationDate(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_ExpirationDate(value));
	}
	final bool IsIrmOriginator()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_IsIrmOriginator(&_ret));
		return _ret;
	}
	final void IsIrmOriginator(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_IsIrmOriginator(value));
	}
	final bool IsProgramaticAccessAllowed()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_IsProgramaticAccessAllowed(&_ret));
		return _ret;
	}
	final void IsProgramaticAccessAllowed(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_IsProgramaticAccessAllowed(value));
	}
	final Windows.ApplicationModel.Email.EmailIrmTemplate Template()
	{
		Windows.ApplicationModel.Email.EmailIrmTemplate _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).get_Template(&_ret));
		return _ret;
	}
	final void Template(Windows.ApplicationModel.Email.EmailIrmTemplate value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfo)this.asInterface(uuid("90f52193-b1a0-4ebd-a6b6-ddca55606e0e"))).set_Template(value));
	}
	static EmailIrmInfo New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EmailIrmInfo).abi_ActivateInstance(&ret));
		return cast(EmailIrmInfo) ret;
	}
	static Windows.ApplicationModel.Email.EmailIrmInfo New(Windows.Foundation.DateTime expiration, Windows.ApplicationModel.Email.EmailIrmTemplate irmTemplate)
	{
		auto factory = factory!(Windows.ApplicationModel.Email.IEmailIrmInfoFactory);
		Windows.ApplicationModel.Email.EmailIrmInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmInfoFactory)factory.asInterface(uuid("314bb18c-e3e6-4d7b-be8d-91a96311b01b"))).abi_Create(expiration, irmTemplate, &_ret));
		return _ret;
	}
}

interface EmailIrmTemplate : Windows.ApplicationModel.Email.IEmailIrmTemplate
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmTemplate)this.asInterface(uuid("f327758d-546d-4bea-a963-54a38b2cc016"))).get_Id(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmTemplate)this.asInterface(uuid("f327758d-546d-4bea-a963-54a38b2cc016"))).set_Id(value));
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmTemplate)this.asInterface(uuid("f327758d-546d-4bea-a963-54a38b2cc016"))).get_Description(&_ret));
		return _ret;
	}
	final void Description(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmTemplate)this.asInterface(uuid("f327758d-546d-4bea-a963-54a38b2cc016"))).set_Description(value));
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmTemplate)this.asInterface(uuid("f327758d-546d-4bea-a963-54a38b2cc016"))).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmTemplate)this.asInterface(uuid("f327758d-546d-4bea-a963-54a38b2cc016"))).set_Name(value));
	}
	static EmailIrmTemplate New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EmailIrmTemplate).abi_ActivateInstance(&ret));
		return cast(EmailIrmTemplate) ret;
	}
	static Windows.ApplicationModel.Email.EmailIrmTemplate New(HSTRING id, HSTRING name, HSTRING description)
	{
		auto factory = factory!(Windows.ApplicationModel.Email.IEmailIrmTemplateFactory);
		Windows.ApplicationModel.Email.EmailIrmTemplate _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailIrmTemplateFactory)factory.asInterface(uuid("3da31876-8738-4418-b9cb-471b936fe71e"))).abi_Create(id, name, description, &_ret));
		return _ret;
	}
}

interface EmailItemCounts : Windows.ApplicationModel.Email.IEmailItemCounts
{
extern(Windows):
	final UINT32 Flagged()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailItemCounts)this.asInterface(uuid("5bd13321-fec8-4bab-83ba-0baf3c1f6cbd"))).get_Flagged(&_ret));
		return _ret;
	}
	final UINT32 Important()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailItemCounts)this.asInterface(uuid("5bd13321-fec8-4bab-83ba-0baf3c1f6cbd"))).get_Important(&_ret));
		return _ret;
	}
	final UINT32 Total()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailItemCounts)this.asInterface(uuid("5bd13321-fec8-4bab-83ba-0baf3c1f6cbd"))).get_Total(&_ret));
		return _ret;
	}
	final UINT32 Unread()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailItemCounts)this.asInterface(uuid("5bd13321-fec8-4bab-83ba-0baf3c1f6cbd"))).get_Unread(&_ret));
		return _ret;
	}
}

interface EmailMailbox : Windows.ApplicationModel.Email.IEmailMailbox, Windows.ApplicationModel.Email.IEmailMailbox2, Windows.ApplicationModel.Email.IEmailMailbox3, Windows.ApplicationModel.Email.IEmailMailbox4
{
extern(Windows):
	final Windows.ApplicationModel.Email.EmailMailboxCapabilities Capabilities()
	{
		Windows.ApplicationModel.Email.EmailMailboxCapabilities _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_Capabilities(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMailboxChangeTracker ChangeTracker()
	{
		Windows.ApplicationModel.Email.EmailMailboxChangeTracker _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_ChangeTracker(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_DisplayName(&_ret));
		return _ret;
	}
	final void DisplayName(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).set_DisplayName(value));
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_Id(&_ret));
		return _ret;
	}
	final bool IsOwnedByCurrentApp()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_IsOwnedByCurrentApp(&_ret));
		return _ret;
	}
	final bool IsDataEncryptedUnderLock()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_IsDataEncryptedUnderLock(&_ret));
		return _ret;
	}
	final HSTRING MailAddress()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_MailAddress(&_ret));
		return _ret;
	}
	final void MailAddress(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).set_MailAddress(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) MailAddressAliases()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_MailAddressAliases(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMailboxOtherAppReadAccess OtherAppReadAccess()
	{
		Windows.ApplicationModel.Email.EmailMailboxOtherAppReadAccess _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_OtherAppReadAccess(&_ret));
		return _ret;
	}
	final void OtherAppReadAccess(Windows.ApplicationModel.Email.EmailMailboxOtherAppReadAccess value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).set_OtherAppReadAccess(value));
	}
	final Windows.ApplicationModel.Email.EmailMailboxOtherAppWriteAccess OtherAppWriteAccess()
	{
		Windows.ApplicationModel.Email.EmailMailboxOtherAppWriteAccess _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_OtherAppWriteAccess(&_ret));
		return _ret;
	}
	final void OtherAppWriteAccess(Windows.ApplicationModel.Email.EmailMailboxOtherAppWriteAccess value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).set_OtherAppWriteAccess(value));
	}
	final Windows.ApplicationModel.Email.EmailMailboxPolicies Policies()
	{
		Windows.ApplicationModel.Email.EmailMailboxPolicies _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_Policies(&_ret));
		return _ret;
	}
	final HSTRING SourceDisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_SourceDisplayName(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMailboxSyncManager SyncManager()
	{
		Windows.ApplicationModel.Email.EmailMailboxSyncManager _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_SyncManager(&_ret));
		return _ret;
	}
	final HSTRING UserDataAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).get_UserDataAccountId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailConversationReader GetConversationReader()
	{
		Windows.ApplicationModel.Email.EmailConversationReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_GetConversationReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailConversationReader GetConversationReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options)
	{
		Windows.ApplicationModel.Email.EmailConversationReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_GetConversationReaderWithOptions(options, &_ret));
		return _ret;
	}
	alias GetConversationReader = GetConversationReaderWithOptions;
	final Windows.ApplicationModel.Email.EmailMessageReader GetMessageReader()
	{
		Windows.ApplicationModel.Email.EmailMessageReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_GetMessageReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMessageReader GetMessageReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options)
	{
		Windows.ApplicationModel.Email.EmailMessageReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_GetMessageReaderWithOptions(options, &_ret));
		return _ret;
	}
	alias GetMessageReader = GetMessageReaderWithOptions;
	final Windows.Foundation.IAsyncAction DeleteAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_DeleteAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailConversation) GetConversationAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailConversation) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_GetConversationAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder) GetFolderAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_GetFolderAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage) GetMessageAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_GetMessageAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder) GetSpecialFolderAsync(Windows.ApplicationModel.Email.EmailSpecialFolderKind folderType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_GetSpecialFolderAsync(folderType, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_SaveAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MarkMessageAsSeenAsync(HSTRING messageId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_MarkMessageAsSeenAsync(messageId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MarkFolderAsSeenAsync(HSTRING folderId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_MarkFolderAsSeenAsync(folderId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MarkMessageReadAsync(HSTRING messageId, bool isRead)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_MarkMessageReadAsync(messageId, isRead, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ChangeMessageFlagStateAsync(HSTRING messageId, Windows.ApplicationModel.Email.EmailFlagState flagState)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_ChangeMessageFlagStateAsync(messageId, flagState, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryMoveMessageAsync(HSTRING messageId, HSTRING newParentFolderId)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_TryMoveMessageAsync(messageId, newParentFolderId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryMoveFolderAsync(HSTRING folderId, HSTRING newParentFolderId)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_TryMoveFolderAsync(folderId, newParentFolderId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryMoveFolderWithNewNameAsync(HSTRING folderId, HSTRING newParentFolderId, HSTRING newFolderName)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_TryMoveFolderWithNewNameAsync(folderId, newParentFolderId, newFolderName, &_ret));
		return _ret;
	}
	alias TryMoveFolderAsync = TryMoveFolderWithNewNameAsync;
	final Windows.Foundation.IAsyncAction DeleteMessageAsync(HSTRING messageId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_DeleteMessageAsync(messageId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction MarkFolderSyncEnabledAsync(HSTRING folderId, bool isSyncEnabled)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_MarkFolderSyncEnabledAsync(folderId, isSyncEnabled, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SendMessageAsync(Windows.ApplicationModel.Email.EmailMessage message)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_SendMessageAsync(message, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveDraftAsync(Windows.ApplicationModel.Email.EmailMessage message)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_SaveDraftAsync(message, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DownloadMessageAsync(HSTRING messageId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_DownloadMessageAsync(messageId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DownloadAttachmentAsync(HSTRING attachmentId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_DownloadAttachmentAsync(attachmentId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage) CreateResponseMessageAsync(HSTRING messageId, Windows.ApplicationModel.Email.EmailMessageResponseKind responseType, HSTRING subject, Windows.ApplicationModel.Email.EmailMessageBodyKind responseHeaderType, HSTRING responseHeader)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_CreateResponseMessageAsync(messageId, responseType, subject, responseHeaderType, responseHeader, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryUpdateMeetingResponseAsync(Windows.ApplicationModel.Email.EmailMessage meeting, Windows.ApplicationModel.Email.EmailMeetingResponseType response, HSTRING subject, HSTRING comment, bool sendUpdate)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_TryUpdateMeetingResponseAsync(meeting, response, subject, comment, sendUpdate, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryForwardMeetingAsync(Windows.ApplicationModel.Email.EmailMessage meeting, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Email.EmailRecipient) recipients, HSTRING subject, Windows.ApplicationModel.Email.EmailMessageBodyKind forwardHeaderType, HSTRING forwardHeader, HSTRING comment)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_TryForwardMeetingAsync(meeting, recipients, subject, forwardHeaderType, forwardHeader, comment, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryProposeNewTimeForMeetingAsync(Windows.ApplicationModel.Email.EmailMessage meeting, Windows.Foundation.DateTime newStartTime, Windows.Foundation.TimeSpan newDuration, HSTRING subject, HSTRING comment)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_TryProposeNewTimeForMeetingAsync(meeting, newStartTime, newDuration, subject, comment, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnMailboxChanged(void delegate(Windows.ApplicationModel.Email.EmailMailbox, Windows.ApplicationModel.Email.EmailMailboxChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).add_MailboxChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.EmailMailbox, Windows.ApplicationModel.Email.EmailMailboxChangedEventArgs), Windows.ApplicationModel.Email.EmailMailbox, Windows.ApplicationModel.Email.EmailMailboxChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMailboxChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).remove_MailboxChanged(token));
	}
	final Windows.Foundation.IAsyncAction SmartSendMessageAsync(Windows.ApplicationModel.Email.EmailMessage message, bool smartSend)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_SmartSendMessageAsync(message, smartSend, &_ret));
		return _ret;
	}
	alias SendMessageAsync = SmartSendMessageAsync;
	final Windows.Foundation.IAsyncOperation!(bool) TrySetAutoReplySettingsAsync(Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings autoReplySettings)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_TrySetAutoReplySettingsAsync(autoReplySettings, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings) TryGetAutoReplySettingsAsync(Windows.ApplicationModel.Email.EmailMailboxAutoReplyMessageResponseKind requestedFormat)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox)this.asInterface(uuid("a8790649-cf5b-411b-80b1-4a6a1484ce25"))).abi_TryGetAutoReplySettingsAsync(requestedFormat, &_ret));
		return _ret;
	}
	final HSTRING LinkedMailboxId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox2)this.asInterface(uuid("14f8e404-6ca2-4ab2-9241-79cd7bf46346"))).get_LinkedMailboxId(&_ret));
		return _ret;
	}
	final HSTRING NetworkAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox2)this.asInterface(uuid("14f8e404-6ca2-4ab2-9241-79cd7bf46346"))).get_NetworkAccountId(&_ret));
		return _ret;
	}
	final HSTRING NetworkId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox2)this.asInterface(uuid("14f8e404-6ca2-4ab2-9241-79cd7bf46346"))).get_NetworkId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailRecipientResolutionResult)) ResolveRecipientsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) recipients)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailRecipientResolutionResult)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox3)this.asInterface(uuid("3da5897b-458b-408a-8e37-ac8b05d8af56"))).abi_ResolveRecipientsAsync(recipients, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus)) ValidateCertificatesAsync(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox3)this.asInterface(uuid("3da5897b-458b-408a-8e37-ac8b05d8af56"))).abi_ValidateCertificatesAsync(certificates, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxEmptyFolderStatus) TryEmptyFolderAsync(HSTRING folderId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxEmptyFolderStatus) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox3)this.asInterface(uuid("3da5897b-458b-408a-8e37-ac8b05d8af56"))).abi_TryEmptyFolderAsync(folderId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxCreateFolderResult) TryCreateFolderAsync(HSTRING parentFolderId, HSTRING name)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxCreateFolderResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox3)this.asInterface(uuid("3da5897b-458b-408a-8e37-ac8b05d8af56"))).abi_TryCreateFolderAsync(parentFolderId, name, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxDeleteFolderStatus) TryDeleteFolderAsync(HSTRING folderId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxDeleteFolderStatus) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox3)this.asInterface(uuid("3da5897b-458b-408a-8e37-ac8b05d8af56"))).abi_TryDeleteFolderAsync(folderId, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RegisterSyncManagerAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailbox4)this.asInterface(uuid("5d1f301b-f222-48a7-b7b6-716356cd26a1"))).abi_RegisterSyncManagerAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxAction : Windows.ApplicationModel.Email.IEmailMailboxAction
{
extern(Windows):
	final Windows.ApplicationModel.Email.EmailMailboxActionKind Kind()
	{
		Windows.ApplicationModel.Email.EmailMailboxActionKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAction)this.asInterface(uuid("ac9889fa-21fa-4927-9210-d410582fdf3e"))).get_Kind(&_ret));
		return _ret;
	}
	final ulong ChangeNumber()
	{
		ulong _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAction)this.asInterface(uuid("ac9889fa-21fa-4927-9210-d410582fdf3e"))).get_ChangeNumber(&_ret));
		return _ret;
	}
}

interface EmailMailboxAutoReply : Windows.ApplicationModel.Email.IEmailMailboxAutoReply
{
extern(Windows):
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReply)this.asInterface(uuid("e223254c-8ab4-485b-b31f-04d15476bd59"))).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReply)this.asInterface(uuid("e223254c-8ab4-485b-b31f-04d15476bd59"))).set_IsEnabled(value));
	}
	final HSTRING Response()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReply)this.asInterface(uuid("e223254c-8ab4-485b-b31f-04d15476bd59"))).get_Response(&_ret));
		return _ret;
	}
	final void Response(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReply)this.asInterface(uuid("e223254c-8ab4-485b-b31f-04d15476bd59"))).set_Response(value));
	}
}

interface EmailMailboxAutoReplySettings : Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings
{
extern(Windows):
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).set_IsEnabled(value));
	}
	final Windows.ApplicationModel.Email.EmailMailboxAutoReplyMessageResponseKind ResponseKind()
	{
		Windows.ApplicationModel.Email.EmailMailboxAutoReplyMessageResponseKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).get_ResponseKind(&_ret));
		return _ret;
	}
	final void ResponseKind(Windows.ApplicationModel.Email.EmailMailboxAutoReplyMessageResponseKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).set_ResponseKind(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) StartTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).get_StartTime(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).set_StartTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) EndTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).get_EndTime(&_ret));
		return _ret;
	}
	final void EndTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).set_EndTime(value));
	}
	final Windows.ApplicationModel.Email.EmailMailboxAutoReply InternalReply()
	{
		Windows.ApplicationModel.Email.EmailMailboxAutoReply _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).get_InternalReply(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMailboxAutoReply KnownExternalReply()
	{
		Windows.ApplicationModel.Email.EmailMailboxAutoReply _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).get_KnownExternalReply(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMailboxAutoReply UnknownExternalReply()
	{
		Windows.ApplicationModel.Email.EmailMailboxAutoReply _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings)this.asInterface(uuid("a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8"))).get_UnknownExternalReply(&_ret));
		return _ret;
	}
	static EmailMailboxAutoReplySettings New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EmailMailboxAutoReplySettings).abi_ActivateInstance(&ret));
		return cast(EmailMailboxAutoReplySettings) ret;
	}
}

interface EmailMailboxCapabilities : Windows.ApplicationModel.Email.IEmailMailboxCapabilities, Windows.ApplicationModel.Email.IEmailMailboxCapabilities2, Windows.ApplicationModel.Email.IEmailMailboxCapabilities3
{
extern(Windows):
	final bool CanForwardMeetings()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities)this.asInterface(uuid("eedec3a6-89db-4305-82c4-439e0a33da11"))).get_CanForwardMeetings(&_ret));
		return _ret;
	}
	final bool CanGetAndSetExternalAutoReplies()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities)this.asInterface(uuid("eedec3a6-89db-4305-82c4-439e0a33da11"))).get_CanGetAndSetExternalAutoReplies(&_ret));
		return _ret;
	}
	final bool CanGetAndSetInternalAutoReplies()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities)this.asInterface(uuid("eedec3a6-89db-4305-82c4-439e0a33da11"))).get_CanGetAndSetInternalAutoReplies(&_ret));
		return _ret;
	}
	final bool CanUpdateMeetingResponses()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities)this.asInterface(uuid("eedec3a6-89db-4305-82c4-439e0a33da11"))).get_CanUpdateMeetingResponses(&_ret));
		return _ret;
	}
	final bool CanServerSearchFolders()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities)this.asInterface(uuid("eedec3a6-89db-4305-82c4-439e0a33da11"))).get_CanServerSearchFolders(&_ret));
		return _ret;
	}
	final bool CanServerSearchMailbox()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities)this.asInterface(uuid("eedec3a6-89db-4305-82c4-439e0a33da11"))).get_CanServerSearchMailbox(&_ret));
		return _ret;
	}
	final bool CanProposeNewTimeForMeetings()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities)this.asInterface(uuid("eedec3a6-89db-4305-82c4-439e0a33da11"))).get_CanProposeNewTimeForMeetings(&_ret));
		return _ret;
	}
	final bool CanSmartSend()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities)this.asInterface(uuid("eedec3a6-89db-4305-82c4-439e0a33da11"))).get_CanSmartSend(&_ret));
		return _ret;
	}
	final bool CanResolveRecipients()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities2)this.asInterface(uuid("69723ee4-2f21-4cbc-88ab-2e7602a4806b"))).get_CanResolveRecipients(&_ret));
		return _ret;
	}
	final bool CanValidateCertificates()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities2)this.asInterface(uuid("69723ee4-2f21-4cbc-88ab-2e7602a4806b"))).get_CanValidateCertificates(&_ret));
		return _ret;
	}
	final bool CanEmptyFolder()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities2)this.asInterface(uuid("69723ee4-2f21-4cbc-88ab-2e7602a4806b"))).get_CanEmptyFolder(&_ret));
		return _ret;
	}
	final bool CanCreateFolder()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities2)this.asInterface(uuid("69723ee4-2f21-4cbc-88ab-2e7602a4806b"))).get_CanCreateFolder(&_ret));
		return _ret;
	}
	final bool CanDeleteFolder()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities2)this.asInterface(uuid("69723ee4-2f21-4cbc-88ab-2e7602a4806b"))).get_CanDeleteFolder(&_ret));
		return _ret;
	}
	final bool CanMoveFolder()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities2)this.asInterface(uuid("69723ee4-2f21-4cbc-88ab-2e7602a4806b"))).get_CanMoveFolder(&_ret));
		return _ret;
	}
	final void CanForwardMeetings(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanForwardMeetings(value));
	}
	final void CanGetAndSetExternalAutoReplies(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanGetAndSetExternalAutoReplies(value));
	}
	final void CanGetAndSetInternalAutoReplies(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanGetAndSetInternalAutoReplies(value));
	}
	final void CanUpdateMeetingResponses(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanUpdateMeetingResponses(value));
	}
	final void CanServerSearchFolders(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanServerSearchFolders(value));
	}
	final void CanServerSearchMailbox(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanServerSearchMailbox(value));
	}
	final void CanProposeNewTimeForMeetings(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanProposeNewTimeForMeetings(value));
	}
	final void CanSmartSend(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanSmartSend(value));
	}
	final void CanResolveRecipients(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanResolveRecipients(value));
	}
	final void CanValidateCertificates(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanValidateCertificates(value));
	}
	final void CanEmptyFolder(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanEmptyFolder(value));
	}
	final void CanCreateFolder(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanCreateFolder(value));
	}
	final void CanDeleteFolder(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanDeleteFolder(value));
	}
	final void CanMoveFolder(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCapabilities3)this.asInterface(uuid("f690e944-56f2-45aa-872c-0ce9f3db0b5c"))).set_CanMoveFolder(value));
	}
}

interface EmailMailboxChange : Windows.ApplicationModel.Email.IEmailMailboxChange
{
extern(Windows):
	final Windows.ApplicationModel.Email.EmailMailboxChangeType ChangeType()
	{
		Windows.ApplicationModel.Email.EmailMailboxChangeType _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChange)this.asInterface(uuid("61edf54b-11ef-400c-adde-8cde65c85e66"))).get_ChangeType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailMailboxAction) MailboxActions()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailMailboxAction) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChange)this.asInterface(uuid("61edf54b-11ef-400c-adde-8cde65c85e66"))).get_MailboxActions(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMessage Message()
	{
		Windows.ApplicationModel.Email.EmailMessage _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChange)this.asInterface(uuid("61edf54b-11ef-400c-adde-8cde65c85e66"))).get_Message(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailFolder Folder()
	{
		Windows.ApplicationModel.Email.EmailFolder _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChange)this.asInterface(uuid("61edf54b-11ef-400c-adde-8cde65c85e66"))).get_Folder(&_ret));
		return _ret;
	}
}

interface EmailMailboxChangeReader : Windows.ApplicationModel.Email.IEmailMailboxChangeReader
{
extern(Windows):
	final void AcceptChanges()
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChangeReader)this.asInterface(uuid("bdbd0ebb-c53d-4331-97be-be75a2146a75"))).abi_AcceptChanges());
	}
	final void AcceptChangesThrough(Windows.ApplicationModel.Email.EmailMailboxChange lastChangeToAcknowledge)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChangeReader)this.asInterface(uuid("bdbd0ebb-c53d-4331-97be-be75a2146a75"))).abi_AcceptChangesThrough(lastChangeToAcknowledge));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMailboxChange)) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMailboxChange)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChangeReader)this.asInterface(uuid("bdbd0ebb-c53d-4331-97be-be75a2146a75"))).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxChangeTracker : Windows.ApplicationModel.Email.IEmailMailboxChangeTracker
{
extern(Windows):
	final bool IsTracking()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChangeTracker)this.asInterface(uuid("7ae48638-5166-42b7-8882-fd21c92bdd4b"))).get_IsTracking(&_ret));
		return _ret;
	}
	final void Enable()
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChangeTracker)this.asInterface(uuid("7ae48638-5166-42b7-8882-fd21c92bdd4b"))).abi_Enable());
	}
	final Windows.ApplicationModel.Email.EmailMailboxChangeReader GetChangeReader()
	{
		Windows.ApplicationModel.Email.EmailMailboxChangeReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChangeTracker)this.asInterface(uuid("7ae48638-5166-42b7-8882-fd21c92bdd4b"))).abi_GetChangeReader(&_ret));
		return _ret;
	}
	final void Reset()
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChangeTracker)this.asInterface(uuid("7ae48638-5166-42b7-8882-fd21c92bdd4b"))).abi_Reset());
	}
}

interface EmailMailboxChangedDeferral : Windows.ApplicationModel.Email.IEmailMailboxChangedDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChangedDeferral)this.asInterface(uuid("779a74c1-97c5-4b54-b30d-306232623e6d"))).abi_Complete());
	}
}

interface EmailMailboxChangedEventArgs : Windows.ApplicationModel.Email.IEmailMailboxChangedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.EmailMailboxChangedDeferral GetDeferral()
	{
		Windows.ApplicationModel.Email.EmailMailboxChangedDeferral _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxChangedEventArgs)this.asInterface(uuid("3cfd5f6e-01d4-4e4a-a44c-b22dd42ec207"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxCreateFolderResult : Windows.ApplicationModel.Email.IEmailMailboxCreateFolderResult
{
extern(Windows):
	final Windows.ApplicationModel.Email.EmailMailboxCreateFolderStatus Status()
	{
		Windows.ApplicationModel.Email.EmailMailboxCreateFolderStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCreateFolderResult)this.asInterface(uuid("b228557f-2885-4998-b595-8a2d374ce950"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailFolder Folder()
	{
		Windows.ApplicationModel.Email.EmailFolder _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxCreateFolderResult)this.asInterface(uuid("b228557f-2885-4998-b595-8a2d374ce950"))).get_Folder(&_ret));
		return _ret;
	}
}

interface EmailMailboxPolicies : Windows.ApplicationModel.Email.IEmailMailboxPolicies, Windows.ApplicationModel.Email.IEmailMailboxPolicies2, Windows.ApplicationModel.Email.IEmailMailboxPolicies3
{
extern(Windows):
	final Windows.ApplicationModel.Email.EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation AllowedSmimeEncryptionAlgorithmNegotiation()
	{
		Windows.ApplicationModel.Email.EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies)this.asInterface(uuid("1f3345c5-1c3b-4dc7-b410-6373783e545d"))).get_AllowedSmimeEncryptionAlgorithmNegotiation(&_ret));
		return _ret;
	}
	final bool AllowSmimeSoftCertificates()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies)this.asInterface(uuid("1f3345c5-1c3b-4dc7-b410-6373783e545d"))).get_AllowSmimeSoftCertificates(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeEncryptionAlgorithm) RequiredSmimeEncryptionAlgorithm()
	{
		Windows.Foundation.IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeEncryptionAlgorithm) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies)this.asInterface(uuid("1f3345c5-1c3b-4dc7-b410-6373783e545d"))).get_RequiredSmimeEncryptionAlgorithm(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeSigningAlgorithm) RequiredSmimeSigningAlgorithm()
	{
		Windows.Foundation.IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeSigningAlgorithm) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies)this.asInterface(uuid("1f3345c5-1c3b-4dc7-b410-6373783e545d"))).get_RequiredSmimeSigningAlgorithm(&_ret));
		return _ret;
	}
	final bool MustEncryptSmimeMessages()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies2)this.asInterface(uuid("bab58afb-a14b-497c-a8e2-55eac29cc4b5"))).get_MustEncryptSmimeMessages(&_ret));
		return _ret;
	}
	final bool MustSignSmimeMessages()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies2)this.asInterface(uuid("bab58afb-a14b-497c-a8e2-55eac29cc4b5"))).get_MustSignSmimeMessages(&_ret));
		return _ret;
	}
	final void AllowedSmimeEncryptionAlgorithmNegotiation(Windows.ApplicationModel.Email.EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies3)this.asInterface(uuid("bdd4a01f-4867-414a-81a2-803919c44191"))).set_AllowedSmimeEncryptionAlgorithmNegotiation(value));
	}
	final void AllowSmimeSoftCertificates(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies3)this.asInterface(uuid("bdd4a01f-4867-414a-81a2-803919c44191"))).set_AllowSmimeSoftCertificates(value));
	}
	final void RequiredSmimeEncryptionAlgorithm(Windows.Foundation.IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeEncryptionAlgorithm) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies3)this.asInterface(uuid("bdd4a01f-4867-414a-81a2-803919c44191"))).set_RequiredSmimeEncryptionAlgorithm(value));
	}
	final void RequiredSmimeSigningAlgorithm(Windows.Foundation.IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeSigningAlgorithm) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies3)this.asInterface(uuid("bdd4a01f-4867-414a-81a2-803919c44191"))).set_RequiredSmimeSigningAlgorithm(value));
	}
	final void MustEncryptSmimeMessages(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies3)this.asInterface(uuid("bdd4a01f-4867-414a-81a2-803919c44191"))).set_MustEncryptSmimeMessages(value));
	}
	final void MustSignSmimeMessages(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxPolicies3)this.asInterface(uuid("bdd4a01f-4867-414a-81a2-803919c44191"))).set_MustSignSmimeMessages(value));
	}
}

interface EmailMailboxSyncManager : Windows.ApplicationModel.Email.IEmailMailboxSyncManager, Windows.ApplicationModel.Email.IEmailMailboxSyncManager2
{
extern(Windows):
	final Windows.ApplicationModel.Email.EmailMailboxSyncStatus Status()
	{
		Windows.ApplicationModel.Email.EmailMailboxSyncStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxSyncManager)this.asInterface(uuid("517ac55a-3591-4b5d-85bc-c71dde862263"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime LastSuccessfulSyncTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxSyncManager)this.asInterface(uuid("517ac55a-3591-4b5d-85bc-c71dde862263"))).get_LastSuccessfulSyncTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime LastAttemptedSyncTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxSyncManager)this.asInterface(uuid("517ac55a-3591-4b5d-85bc-c71dde862263"))).get_LastAttemptedSyncTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) SyncAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxSyncManager)this.asInterface(uuid("517ac55a-3591-4b5d-85bc-c71dde862263"))).abi_SyncAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnSyncStatusChanged(void delegate(Windows.ApplicationModel.Email.EmailMailboxSyncManager, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxSyncManager)this.asInterface(uuid("517ac55a-3591-4b5d-85bc-c71dde862263"))).add_SyncStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.EmailMailboxSyncManager, IInspectable), Windows.ApplicationModel.Email.EmailMailboxSyncManager, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSyncStatusChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxSyncManager)this.asInterface(uuid("517ac55a-3591-4b5d-85bc-c71dde862263"))).remove_SyncStatusChanged(token));
	}
	final void Status(Windows.ApplicationModel.Email.EmailMailboxSyncStatus value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxSyncManager2)this.asInterface(uuid("cd8dc97e-95c1-4f89-81b7-e6aecb6695fc"))).set_Status(value));
	}
	final void LastSuccessfulSyncTime(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxSyncManager2)this.asInterface(uuid("cd8dc97e-95c1-4f89-81b7-e6aecb6695fc"))).set_LastSuccessfulSyncTime(value));
	}
	final void LastAttemptedSyncTime(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMailboxSyncManager2)this.asInterface(uuid("cd8dc97e-95c1-4f89-81b7-e6aecb6695fc"))).set_LastAttemptedSyncTime(value));
	}
}

interface EmailManager
{
	private static Windows.ApplicationModel.Email.IEmailManagerStatics _staticInstance;
	public static Windows.ApplicationModel.Email.IEmailManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Email.IEmailManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncAction ShowComposeNewEmailAsync(Windows.ApplicationModel.Email.EmailMessage message)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_ShowComposeNewEmailAsync(message, &_ret));
		return _ret;
	}
}

interface EmailManagerForUser : Windows.ApplicationModel.Email.IEmailManagerForUser
{
extern(Windows):
	final Windows.Foundation.IAsyncAction ShowComposeNewEmailAsync(Windows.ApplicationModel.Email.EmailMessage message)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailManagerForUser)this.asInterface(uuid("f773de9f-3ca5-4b0f-90c1-156e40174ce5"))).abi_ShowComposeNewEmailAsync(message, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailStore) RequestStoreAsync(Windows.ApplicationModel.Email.EmailStoreAccessType accessType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailStore) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailManagerForUser)this.asInterface(uuid("f773de9f-3ca5-4b0f-90c1-156e40174ce5"))).abi_RequestStoreAsync(accessType, &_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailManagerForUser)this.asInterface(uuid("f773de9f-3ca5-4b0f-90c1-156e40174ce5"))).get_User(&_ret));
		return _ret;
	}
}

interface EmailMeetingInfo : Windows.ApplicationModel.Email.IEmailMeetingInfo, Windows.ApplicationModel.Email.IEmailMeetingInfo2
{
extern(Windows):
	final bool AllowNewTimeProposal()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_AllowNewTimeProposal(&_ret));
		return _ret;
	}
	final void AllowNewTimeProposal(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_AllowNewTimeProposal(value));
	}
	final HSTRING AppointmentRoamingId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_AppointmentRoamingId(&_ret));
		return _ret;
	}
	final void AppointmentRoamingId(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_AppointmentRoamingId(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) AppointmentOriginalStartTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_AppointmentOriginalStartTime(&_ret));
		return _ret;
	}
	final void AppointmentOriginalStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_AppointmentOriginalStartTime(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_Duration(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_Duration(value));
	}
	final bool IsAllDay()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_IsAllDay(&_ret));
		return _ret;
	}
	final void IsAllDay(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_IsAllDay(value));
	}
	final bool IsResponseRequested()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_IsResponseRequested(&_ret));
		return _ret;
	}
	final void IsResponseRequested(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_IsResponseRequested(value));
	}
	final HSTRING Location()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_Location(&_ret));
		return _ret;
	}
	final void Location(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_Location(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ProposedStartTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_ProposedStartTime(&_ret));
		return _ret;
	}
	final void ProposedStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) proposedStartTime)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_ProposedStartTime(proposedStartTime));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) ProposedDuration()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_ProposedDuration(&_ret));
		return _ret;
	}
	final void ProposedDuration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) duration)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_ProposedDuration(duration));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) RecurrenceStartTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_RecurrenceStartTime(&_ret));
		return _ret;
	}
	final void RecurrenceStartTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_RecurrenceStartTime(value));
	}
	final Windows.ApplicationModel.Appointments.AppointmentRecurrence Recurrence()
	{
		Windows.ApplicationModel.Appointments.AppointmentRecurrence _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_Recurrence(&_ret));
		return _ret;
	}
	final void Recurrence(Windows.ApplicationModel.Appointments.AppointmentRecurrence value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_Recurrence(value));
	}
	final ulong RemoteChangeNumber()
	{
		ulong _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_RemoteChangeNumber(&_ret));
		return _ret;
	}
	final void RemoteChangeNumber(ulong value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_RemoteChangeNumber(value));
	}
	final Windows.Foundation.DateTime StartTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).get_StartTime(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo)this.asInterface(uuid("31c03fa9-7933-415f-a275-d165ba07026b"))).set_StartTime(value));
	}
	final bool IsReportedOutOfDateByServer()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMeetingInfo2)this.asInterface(uuid("7e59386d-b0d9-4fe5-867c-e31ed2b588b8"))).get_IsReportedOutOfDateByServer(&_ret));
		return _ret;
	}
	static EmailMeetingInfo New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EmailMeetingInfo).abi_ActivateInstance(&ret));
		return cast(EmailMeetingInfo) ret;
	}
}

interface EmailMessage : Windows.ApplicationModel.Email.IEmailMessage, Windows.ApplicationModel.Email.IEmailMessage2, Windows.ApplicationModel.Email.IEmailMessage3, Windows.ApplicationModel.Email.IEmailMessage4
{
extern(Windows):
	final HSTRING Subject()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage)this.asInterface(uuid("6c6d948d-80b5-48f8-b0b1-e04e430f44e5"))).get_Subject(&_ret));
		return _ret;
	}
	final void Subject(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage)this.asInterface(uuid("6c6d948d-80b5-48f8-b0b1-e04e430f44e5"))).set_Subject(value));
	}
	final HSTRING Body()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage)this.asInterface(uuid("6c6d948d-80b5-48f8-b0b1-e04e430f44e5"))).get_Body(&_ret));
		return _ret;
	}
	final void Body(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage)this.asInterface(uuid("6c6d948d-80b5-48f8-b0b1-e04e430f44e5"))).set_Body(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient) To()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage)this.asInterface(uuid("6c6d948d-80b5-48f8-b0b1-e04e430f44e5"))).get_To(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient) CC()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage)this.asInterface(uuid("6c6d948d-80b5-48f8-b0b1-e04e430f44e5"))).get_CC(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient) Bcc()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage)this.asInterface(uuid("6c6d948d-80b5-48f8-b0b1-e04e430f44e5"))).get_Bcc(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailAttachment) Attachments()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailAttachment) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage)this.asInterface(uuid("6c6d948d-80b5-48f8-b0b1-e04e430f44e5"))).get_Attachments(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_Id(&_ret));
		return _ret;
	}
	final HSTRING RemoteId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_RemoteId(&_ret));
		return _ret;
	}
	final void RemoteId(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_RemoteId(value));
	}
	final HSTRING MailboxId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_MailboxId(&_ret));
		return _ret;
	}
	final HSTRING ConversationId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_ConversationId(&_ret));
		return _ret;
	}
	final HSTRING FolderId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_FolderId(&_ret));
		return _ret;
	}
	final bool AllowInternetImages()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_AllowInternetImages(&_ret));
		return _ret;
	}
	final void AllowInternetImages(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_AllowInternetImages(value));
	}
	final ulong ChangeNumber()
	{
		ulong _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_ChangeNumber(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMessageDownloadState DownloadState()
	{
		Windows.ApplicationModel.Email.EmailMessageDownloadState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_DownloadState(&_ret));
		return _ret;
	}
	final void DownloadState(Windows.ApplicationModel.Email.EmailMessageDownloadState value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_DownloadState(value));
	}
	final UINT32 EstimatedDownloadSizeInBytes()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_EstimatedDownloadSizeInBytes(&_ret));
		return _ret;
	}
	final void EstimatedDownloadSizeInBytes(UINT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_EstimatedDownloadSizeInBytes(value));
	}
	final Windows.ApplicationModel.Email.EmailFlagState FlagState()
	{
		Windows.ApplicationModel.Email.EmailFlagState _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_FlagState(&_ret));
		return _ret;
	}
	final void FlagState(Windows.ApplicationModel.Email.EmailFlagState value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_FlagState(value));
	}
	final bool HasPartialBodies()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_HasPartialBodies(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailImportance Importance()
	{
		Windows.ApplicationModel.Email.EmailImportance _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_Importance(&_ret));
		return _ret;
	}
	final void Importance(Windows.ApplicationModel.Email.EmailImportance value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_Importance(value));
	}
	final HSTRING InResponseToMessageId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_InResponseToMessageId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailIrmInfo IrmInfo()
	{
		Windows.ApplicationModel.Email.EmailIrmInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_IrmInfo(&_ret));
		return _ret;
	}
	final void IrmInfo(Windows.ApplicationModel.Email.EmailIrmInfo value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_IrmInfo(value));
	}
	final bool IsDraftMessage()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_IsDraftMessage(&_ret));
		return _ret;
	}
	final bool IsRead()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_IsRead(&_ret));
		return _ret;
	}
	final void IsRead(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_IsRead(value));
	}
	final bool IsSeen()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_IsSeen(&_ret));
		return _ret;
	}
	final void IsSeen(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_IsSeen(value));
	}
	final bool IsServerSearchMessage()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_IsServerSearchMessage(&_ret));
		return _ret;
	}
	final bool IsSmartSendable()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_IsSmartSendable(&_ret));
		return _ret;
	}
	final HSTRING MessageClass()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_MessageClass(&_ret));
		return _ret;
	}
	final void MessageClass(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_MessageClass(value));
	}
	final HSTRING NormalizedSubject()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_NormalizedSubject(&_ret));
		return _ret;
	}
	final INT32 OriginalCodePage()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_OriginalCodePage(&_ret));
		return _ret;
	}
	final void OriginalCodePage(INT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_OriginalCodePage(value));
	}
	final HSTRING Preview()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_Preview(&_ret));
		return _ret;
	}
	final void Preview(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_Preview(value));
	}
	final Windows.ApplicationModel.Email.EmailMessageResponseKind LastResponseKind()
	{
		Windows.ApplicationModel.Email.EmailMessageResponseKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_LastResponseKind(&_ret));
		return _ret;
	}
	final void LastResponseKind(Windows.ApplicationModel.Email.EmailMessageResponseKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_LastResponseKind(value));
	}
	final Windows.ApplicationModel.Email.EmailRecipient Sender()
	{
		Windows.ApplicationModel.Email.EmailRecipient _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_Sender(&_ret));
		return _ret;
	}
	final void Sender(Windows.ApplicationModel.Email.EmailRecipient value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_Sender(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) SentTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_SentTime(&_ret));
		return _ret;
	}
	final void SentTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_SentTime(value));
	}
	final Windows.ApplicationModel.Email.EmailMeetingInfo MeetingInfo()
	{
		Windows.ApplicationModel.Email.EmailMeetingInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).get_MeetingInfo(&_ret));
		return _ret;
	}
	final void MeetingInfo(Windows.ApplicationModel.Email.EmailMeetingInfo value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).set_MeetingInfo(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference GetBodyStream(Windows.ApplicationModel.Email.EmailMessageBodyKind type)
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).abi_GetBodyStream(type, &_ret));
		return _ret;
	}
	final void SetBodyStream(Windows.ApplicationModel.Email.EmailMessageBodyKind type, Windows.Storage.Streams.IRandomAccessStreamReference stream)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage2)this.asInterface(uuid("fdc8248b-9f1a-44db-bd3c-65c384770f86"))).abi_SetBodyStream(type, stream));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference SmimeData()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage3)this.asInterface(uuid("a1ea675c-e598-4d29-a018-fc7b7eece0a1"))).get_SmimeData(&_ret));
		return _ret;
	}
	final void SmimeData(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage3)this.asInterface(uuid("a1ea675c-e598-4d29-a018-fc7b7eece0a1"))).set_SmimeData(value));
	}
	final Windows.ApplicationModel.Email.EmailMessageSmimeKind SmimeKind()
	{
		Windows.ApplicationModel.Email.EmailMessageSmimeKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage3)this.asInterface(uuid("a1ea675c-e598-4d29-a018-fc7b7eece0a1"))).get_SmimeKind(&_ret));
		return _ret;
	}
	final void SmimeKind(Windows.ApplicationModel.Email.EmailMessageSmimeKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage3)this.asInterface(uuid("a1ea675c-e598-4d29-a018-fc7b7eece0a1"))).set_SmimeKind(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient) ReplyTo()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.Email.EmailRecipient) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage4)this.asInterface(uuid("317cf181-3e7f-4a05-8394-3e10336dd435"))).get_ReplyTo(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailRecipient SentRepresenting()
	{
		Windows.ApplicationModel.Email.EmailRecipient _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage4)this.asInterface(uuid("317cf181-3e7f-4a05-8394-3e10336dd435"))).get_SentRepresenting(&_ret));
		return _ret;
	}
	final void SentRepresenting(Windows.ApplicationModel.Email.EmailRecipient value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessage4)this.asInterface(uuid("317cf181-3e7f-4a05-8394-3e10336dd435"))).set_SentRepresenting(value));
	}
	static EmailMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EmailMessage).abi_ActivateInstance(&ret));
		return cast(EmailMessage) ret;
	}
}

interface EmailMessageBatch : Windows.ApplicationModel.Email.IEmailMessageBatch
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMessage) Messages()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMessage) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessageBatch)this.asInterface(uuid("605cd08f-25d9-4f1b-9e51-0514c0149653"))).get_Messages(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailBatchStatus Status()
	{
		Windows.ApplicationModel.Email.EmailBatchStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessageBatch)this.asInterface(uuid("605cd08f-25d9-4f1b-9e51-0514c0149653"))).get_Status(&_ret));
		return _ret;
	}
}

interface EmailMessageReader : Windows.ApplicationModel.Email.IEmailMessageReader
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessageBatch) ReadBatchAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessageBatch) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailMessageReader)this.asInterface(uuid("2f4abe9f-6213-4a85-a3b0-f92d1a839d19"))).abi_ReadBatchAsync(&_ret));
		return _ret;
	}
}

interface EmailQueryOptions : Windows.ApplicationModel.Email.IEmailQueryOptions
{
extern(Windows):
	final Windows.ApplicationModel.Email.EmailQueryTextSearch TextSearch()
	{
		Windows.ApplicationModel.Email.EmailQueryTextSearch _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryOptions)this.asInterface(uuid("45504b9b-3e7f-4d52-b6dd-d6fd4e1fbd9a"))).get_TextSearch(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailQuerySortDirection SortDirection()
	{
		Windows.ApplicationModel.Email.EmailQuerySortDirection _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryOptions)this.asInterface(uuid("45504b9b-3e7f-4d52-b6dd-d6fd4e1fbd9a"))).get_SortDirection(&_ret));
		return _ret;
	}
	final void SortDirection(Windows.ApplicationModel.Email.EmailQuerySortDirection value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryOptions)this.asInterface(uuid("45504b9b-3e7f-4d52-b6dd-d6fd4e1fbd9a"))).set_SortDirection(value));
	}
	final Windows.ApplicationModel.Email.EmailQuerySortProperty SortProperty()
	{
		Windows.ApplicationModel.Email.EmailQuerySortProperty _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryOptions)this.asInterface(uuid("45504b9b-3e7f-4d52-b6dd-d6fd4e1fbd9a"))).get_SortProperty(&_ret));
		return _ret;
	}
	final void SortProperty(Windows.ApplicationModel.Email.EmailQuerySortProperty value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryOptions)this.asInterface(uuid("45504b9b-3e7f-4d52-b6dd-d6fd4e1fbd9a"))).set_SortProperty(value));
	}
	final Windows.ApplicationModel.Email.EmailQueryKind Kind()
	{
		Windows.ApplicationModel.Email.EmailQueryKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryOptions)this.asInterface(uuid("45504b9b-3e7f-4d52-b6dd-d6fd4e1fbd9a"))).get_Kind(&_ret));
		return _ret;
	}
	final void Kind(Windows.ApplicationModel.Email.EmailQueryKind value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryOptions)this.asInterface(uuid("45504b9b-3e7f-4d52-b6dd-d6fd4e1fbd9a"))).set_Kind(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) FolderIds()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryOptions)this.asInterface(uuid("45504b9b-3e7f-4d52-b6dd-d6fd4e1fbd9a"))).get_FolderIds(&_ret));
		return _ret;
	}
	static EmailQueryOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EmailQueryOptions).abi_ActivateInstance(&ret));
		return cast(EmailQueryOptions) ret;
	}
	static Windows.ApplicationModel.Email.EmailQueryOptions New(HSTRING text)
	{
		auto factory = factory!(Windows.ApplicationModel.Email.IEmailQueryOptionsFactory);
		Windows.ApplicationModel.Email.EmailQueryOptions _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryOptionsFactory)factory.asInterface(uuid("88f1a1b8-78ab-4ee8-b4e3-046d6e2fe5e2"))).abi_CreateWithText(text, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Email.EmailQueryOptions New(HSTRING text, Windows.ApplicationModel.Email.EmailQuerySearchFields fields)
	{
		auto factory = factory!(Windows.ApplicationModel.Email.IEmailQueryOptionsFactory);
		Windows.ApplicationModel.Email.EmailQueryOptions _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryOptionsFactory)factory.asInterface(uuid("88f1a1b8-78ab-4ee8-b4e3-046d6e2fe5e2"))).abi_CreateWithTextAndFields(text, fields, &_ret));
		return _ret;
	}
}

interface EmailQueryTextSearch : Windows.ApplicationModel.Email.IEmailQueryTextSearch
{
extern(Windows):
	final Windows.ApplicationModel.Email.EmailQuerySearchFields Fields()
	{
		Windows.ApplicationModel.Email.EmailQuerySearchFields _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryTextSearch)this.asInterface(uuid("9fa0a288-3c5d-46a5-a6e2-31d6fd17e540"))).get_Fields(&_ret));
		return _ret;
	}
	final void Fields(Windows.ApplicationModel.Email.EmailQuerySearchFields value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryTextSearch)this.asInterface(uuid("9fa0a288-3c5d-46a5-a6e2-31d6fd17e540"))).set_Fields(value));
	}
	final Windows.ApplicationModel.Email.EmailQuerySearchScope SearchScope()
	{
		Windows.ApplicationModel.Email.EmailQuerySearchScope _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryTextSearch)this.asInterface(uuid("9fa0a288-3c5d-46a5-a6e2-31d6fd17e540"))).get_SearchScope(&_ret));
		return _ret;
	}
	final void SearchScope(Windows.ApplicationModel.Email.EmailQuerySearchScope value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryTextSearch)this.asInterface(uuid("9fa0a288-3c5d-46a5-a6e2-31d6fd17e540"))).set_SearchScope(value));
	}
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryTextSearch)this.asInterface(uuid("9fa0a288-3c5d-46a5-a6e2-31d6fd17e540"))).get_Text(&_ret));
		return _ret;
	}
	final void Text(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailQueryTextSearch)this.asInterface(uuid("9fa0a288-3c5d-46a5-a6e2-31d6fd17e540"))).set_Text(value));
	}
}

interface EmailRecipient : Windows.ApplicationModel.Email.IEmailRecipient
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailRecipient)this.asInterface(uuid("cae825b3-4478-4814-b900-c902b5e19b53"))).get_Name(&_ret));
		return _ret;
	}
	final void Name(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailRecipient)this.asInterface(uuid("cae825b3-4478-4814-b900-c902b5e19b53"))).set_Name(value));
	}
	final HSTRING Address()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailRecipient)this.asInterface(uuid("cae825b3-4478-4814-b900-c902b5e19b53"))).get_Address(&_ret));
		return _ret;
	}
	final void Address(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailRecipient)this.asInterface(uuid("cae825b3-4478-4814-b900-c902b5e19b53"))).set_Address(value));
	}
	static EmailRecipient New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EmailRecipient).abi_ActivateInstance(&ret));
		return cast(EmailRecipient) ret;
	}
	static Windows.ApplicationModel.Email.EmailRecipient New(HSTRING address)
	{
		auto factory = factory!(Windows.ApplicationModel.Email.IEmailRecipientFactory);
		Windows.ApplicationModel.Email.EmailRecipient _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailRecipientFactory)factory.asInterface(uuid("5500b84d-c79a-4ef8-b909-722e18e3935d"))).abi_Create(address, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Email.EmailRecipient New(HSTRING address, HSTRING name)
	{
		auto factory = factory!(Windows.ApplicationModel.Email.IEmailRecipientFactory);
		Windows.ApplicationModel.Email.EmailRecipient _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailRecipientFactory)factory.asInterface(uuid("5500b84d-c79a-4ef8-b909-722e18e3935d"))).abi_CreateWithName(address, name, &_ret));
		return _ret;
	}
}

interface EmailRecipientResolutionResult : Windows.ApplicationModel.Email.IEmailRecipientResolutionResult, Windows.ApplicationModel.Email.IEmailRecipientResolutionResult2
{
extern(Windows):
	final Windows.ApplicationModel.Email.EmailRecipientResolutionStatus Status()
	{
		Windows.ApplicationModel.Email.EmailRecipientResolutionStatus _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailRecipientResolutionResult)this.asInterface(uuid("918338fa-8d8d-4573-80d1-07172a34b98d"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) PublicKeys()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailRecipientResolutionResult)this.asInterface(uuid("918338fa-8d8d-4573-80d1-07172a34b98d"))).get_PublicKeys(&_ret));
		return _ret;
	}
	final void Status(Windows.ApplicationModel.Email.EmailRecipientResolutionStatus value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailRecipientResolutionResult2)this.asInterface(uuid("5e420bb6-ce5b-4bde-b9d4-e16da0b09fca"))).set_Status(value));
	}
	final void SetPublicKeys(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailRecipientResolutionResult2)this.asInterface(uuid("5e420bb6-ce5b-4bde-b9d4-e16da0b09fca"))).abi_SetPublicKeys(value));
	}
	static EmailRecipientResolutionResult New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EmailRecipientResolutionResult).abi_ActivateInstance(&ret));
		return cast(EmailRecipientResolutionResult) ret;
	}
}

interface EmailStore : Windows.ApplicationModel.Email.IEmailStore
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMailbox)) FindMailboxesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailMailbox)) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_FindMailboxesAsync(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailConversationReader GetConversationReader()
	{
		Windows.ApplicationModel.Email.EmailConversationReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_GetConversationReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailConversationReader GetConversationReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options)
	{
		Windows.ApplicationModel.Email.EmailConversationReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_GetConversationReaderWithOptions(options, &_ret));
		return _ret;
	}
	alias GetConversationReader = GetConversationReaderWithOptions;
	final Windows.ApplicationModel.Email.EmailMessageReader GetMessageReader()
	{
		Windows.ApplicationModel.Email.EmailMessageReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_GetMessageReader(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMessageReader GetMessageReaderWithOptions(Windows.ApplicationModel.Email.EmailQueryOptions options)
	{
		Windows.ApplicationModel.Email.EmailMessageReader _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_GetMessageReaderWithOptions(options, &_ret));
		return _ret;
	}
	alias GetMessageReader = GetMessageReaderWithOptions;
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailbox) GetMailboxAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailbox) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_GetMailboxAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailConversation) GetConversationAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailConversation) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_GetConversationAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder) GetFolderAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailFolder) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_GetFolderAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage) GetMessageAsync(HSTRING id)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMessage) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_GetMessageAsync(id, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailbox) CreateMailboxAsync(HSTRING accountName, HSTRING accountAddress)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailbox) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_CreateMailboxAsync(accountName, accountAddress, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailbox) CreateMailboxInAccountAsync(HSTRING accountName, HSTRING accountAddress, HSTRING userDataAccountId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailbox) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Email.IEmailStore)this.asInterface(uuid("f803226e-9137-4f8b-a470-279ac3058eb6"))).abi_CreateMailboxInAccountAsync(accountName, accountAddress, userDataAccountId, &_ret));
		return _ret;
	}
	alias CreateMailboxAsync = CreateMailboxInAccountAsync;
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