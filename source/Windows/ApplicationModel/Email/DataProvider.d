module Windows.ApplicationModel.Email.DataProvider;

import dwinrt;

@uuid("3b9c9dc7-37b2-4bf0-ae30-7b644a1c96e1")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection")
interface IEmailDataProviderConnection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_MailboxSyncRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_MailboxSyncRequested(EventRegistrationToken token);
	HRESULT add_DownloadMessageRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DownloadMessageRequested(EventRegistrationToken token);
	HRESULT add_DownloadAttachmentRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DownloadAttachmentRequested(EventRegistrationToken token);
	HRESULT add_CreateFolderRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CreateFolderRequested(EventRegistrationToken token);
	HRESULT add_DeleteFolderRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DeleteFolderRequested(EventRegistrationToken token);
	HRESULT add_EmptyFolderRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_EmptyFolderRequested(EventRegistrationToken token);
	HRESULT add_MoveFolderRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_MoveFolderRequested(EventRegistrationToken token);
	HRESULT add_UpdateMeetingResponseRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_UpdateMeetingResponseRequested(EventRegistrationToken token);
	HRESULT add_ForwardMeetingRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ForwardMeetingRequested(EventRegistrationToken token);
	HRESULT add_ProposeNewTimeForMeetingRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ProposeNewTimeForMeetingRequested(EventRegistrationToken token);
	HRESULT add_SetAutoReplySettingsRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SetAutoReplySettingsRequested(EventRegistrationToken token);
	HRESULT add_GetAutoReplySettingsRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_GetAutoReplySettingsRequested(EventRegistrationToken token);
	HRESULT add_ResolveRecipientsRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ResolveRecipientsRequested(EventRegistrationToken token);
	HRESULT add_ValidateCertificatesRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ValidateCertificatesRequested(EventRegistrationToken token);
	HRESULT add_ServerSearchReadBatchRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequestEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ServerSearchReadBatchRequested(EventRegistrationToken token);
	HRESULT abi_Start();
}

@uuid("8f3e4e50-341e-45f3-bba0-84a005e1319a")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailDataProviderTriggerDetails")
interface IEmailDataProviderTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Connection(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection* return_value);
}

@uuid("184d3775-c921-4c39-a309-e16c9f22b04b")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequest")
interface IEmailMailboxCreateFolderRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_ParentFolderId(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.ApplicationModel.Email.EmailFolder folder, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.ApplicationModel.Email.EmailMailboxCreateFolderStatus status, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("03e4c02c-241c-4ea9-a68f-ff20bc5afc85")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequestEventArgs")
interface IEmailMailboxCreateFolderRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("9469e88a-a931-4779-923d-09a3ea292e29")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequest")
interface IEmailMailboxDeleteFolderRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_EmailFolderId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.ApplicationModel.Email.EmailMailboxDeleteFolderStatus status, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("b4d32d06-2332-4678-8378-28b579336846")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequestEventArgs")
interface IEmailMailboxDeleteFolderRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("0b1dbbb4-750c-48e1-bce4-8d589684ffbc")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequest")
interface IEmailMailboxDownloadAttachmentRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_EmailMessageId(HSTRING* return_value);
	HRESULT get_EmailAttachmentId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("ccddc46d-ffa8-4877-9f9d-fed7bcaf4104")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequestEventArgs")
interface IEmailMailboxDownloadAttachmentRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("497b4187-5b4d-4b23-816c-f3842beb753e")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequest")
interface IEmailMailboxDownloadMessageRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_EmailMessageId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("470409ad-d0a0-4a5b-bb2a-37621039c53e")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequestEventArgs")
interface IEmailMailboxDownloadMessageRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("fe4b03ab-f86d-46d9-b4ce-bc8a6d9e9268")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequest")
interface IEmailMailboxEmptyFolderRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_EmailFolderId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.ApplicationModel.Email.EmailMailboxEmptyFolderStatus status, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("7183f484-985a-4ac0-b33f-ee0e2627a3c0")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequestEventArgs")
interface IEmailMailboxEmptyFolderRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("616d6af1-70d4-4832-b869-b80542ae9be8")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequest")
interface IEmailMailboxForwardMeetingRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_EmailMessageId(HSTRING* return_value);
	HRESULT get_Recipients(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailRecipient)* return_value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_ForwardHeaderType(Windows.ApplicationModel.Email.EmailMessageBodyKind* return_value);
	HRESULT get_ForwardHeader(HSTRING* return_value);
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("2bd8f33a-2974-4759-a5a5-58f44d3c0275")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequestEventArgs")
interface IEmailMailboxForwardMeetingRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("9b380789-1e88-4e01-84cc-1386ad9a2c2f")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequest")
interface IEmailMailboxGetAutoReplySettingsRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_RequestedFormat(Windows.ApplicationModel.Email.EmailMailboxAutoReplyMessageResponseKind* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings autoReplySettings, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("d79f55c2-fd45-4004-8a91-9bacf38b7022")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequestEventArgs")
interface IEmailMailboxGetAutoReplySettingsRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("10ba2856-4a95-4068-91cc-67cc7acf454f")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequest")
interface IEmailMailboxMoveFolderRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_EmailFolderId(HSTRING* return_value);
	HRESULT get_NewParentFolderId(HSTRING* return_value);
	HRESULT get_NewFolderName(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("38623020-14ba-4c88-8698-7239e3c8aaa7")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequestEventArgs")
interface IEmailMailboxMoveFolderRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("5aeff152-9799-4f9f-a399-ff07f3eef04e")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequest")
interface IEmailMailboxProposeNewTimeForMeetingRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_EmailMessageId(HSTRING* return_value);
	HRESULT get_NewStartTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_NewDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("fb480b98-33ad-4a67-8251-0f9c249b6a20")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequestEventArgs")
interface IEmailMailboxProposeNewTimeForMeetingRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("efa4cf70-7b39-4c9b-811e-41eaf43a332d")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequest")
interface IEmailMailboxResolveRecipientsRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_Recipients(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Email.EmailRecipientResolutionResult) resolutionResults, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("260f9e02-b2cf-40f8-8c28-e3ed43b1e89a")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequestEventArgs")
interface IEmailMailboxResolveRecipientsRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("090eebdf-5a96-41d3-8ad8-34912f9aa60e")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequest")
interface IEmailMailboxServerSearchReadBatchRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SessionId(HSTRING* return_value);
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_EmailFolderId(HSTRING* return_value);
	HRESULT get_Options(Windows.ApplicationModel.Email.EmailQueryOptions* return_value);
	HRESULT get_SuggestedBatchSize(UINT32* return_value);
	HRESULT abi_SaveMessageAsync(Windows.ApplicationModel.Email.EmailMessage message, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.ApplicationModel.Email.EmailBatchStatus batchStatus, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("14101b4e-ed9e-45d1-ad7a-cc9b7f643ae2")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequestEventArgs")
interface IEmailMailboxServerSearchReadBatchRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("75a422d0-a88e-4e54-8dc7-c243186b774e")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequest")
interface IEmailMailboxSetAutoReplySettingsRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_AutoReplySettings(Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("09da11ad-d7ca-4087-ac86-53fa67f76246")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequestEventArgs")
interface IEmailMailboxSetAutoReplySettingsRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("4e10e8e4-7e67-405a-b673-dc60c91090fc")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequest")
interface IEmailMailboxSyncManagerSyncRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("439a031a-8fcc-4ae5-b9b5-d434e0a65aa8")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequestEventArgs")
interface IEmailMailboxSyncManagerSyncRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("5b99ac93-b2cf-4888-ba4f-306b6b66df30")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequest")
interface IEmailMailboxUpdateMeetingResponseRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_EmailMessageId(HSTRING* return_value);
	HRESULT get_Response(Windows.ApplicationModel.Email.EmailMeetingResponseType* return_response);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT get_SendUpdate(bool* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("6898d761-56c9-4f17-be31-66fda94ba159")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequestEventArgs")
interface IEmailMailboxUpdateMeetingResponseRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("a94d3931-e11a-4f97-b81a-187a70a8f41a")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequest")
interface IEmailMailboxValidateCertificatesRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT get_Certificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus) validationStatuses, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("2583bf17-02ff-49fe-a73c-03f37566c691")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequestEventArgs")
interface IEmailMailboxValidateCertificatesRequestEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

interface EmailDataProviderConnection : Windows.ApplicationModel.Email.DataProvider.IEmailDataProviderConnection
{
}

interface EmailDataProviderTriggerDetails : Windows.ApplicationModel.Email.DataProvider.IEmailDataProviderTriggerDetails
{
}

interface EmailMailboxCreateFolderRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequest
{
}

interface EmailMailboxCreateFolderRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequestEventArgs
{
}

interface EmailMailboxDeleteFolderRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequest
{
}

interface EmailMailboxDeleteFolderRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequestEventArgs
{
}

interface EmailMailboxDownloadAttachmentRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequest
{
}

interface EmailMailboxDownloadAttachmentRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequestEventArgs
{
}

interface EmailMailboxDownloadMessageRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequest
{
}

interface EmailMailboxDownloadMessageRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequestEventArgs
{
}

interface EmailMailboxEmptyFolderRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequest
{
}

interface EmailMailboxEmptyFolderRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequestEventArgs
{
}

interface EmailMailboxForwardMeetingRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest
{
}

interface EmailMailboxForwardMeetingRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequestEventArgs
{
}

interface EmailMailboxGetAutoReplySettingsRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequest
{
}

interface EmailMailboxGetAutoReplySettingsRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequestEventArgs
{
}

interface EmailMailboxMoveFolderRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequest
{
}

interface EmailMailboxMoveFolderRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequestEventArgs
{
}

interface EmailMailboxProposeNewTimeForMeetingRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest
{
}

interface EmailMailboxProposeNewTimeForMeetingRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequestEventArgs
{
}

interface EmailMailboxResolveRecipientsRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequest
{
}

interface EmailMailboxResolveRecipientsRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequestEventArgs
{
}

interface EmailMailboxServerSearchReadBatchRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest
{
}

interface EmailMailboxServerSearchReadBatchRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequestEventArgs
{
}

interface EmailMailboxSetAutoReplySettingsRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequest
{
}

interface EmailMailboxSetAutoReplySettingsRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequestEventArgs
{
}

interface EmailMailboxSyncManagerSyncRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequest
{
}

interface EmailMailboxSyncManagerSyncRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequestEventArgs
{
}

interface EmailMailboxUpdateMeetingResponseRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest
{
}

interface EmailMailboxUpdateMeetingResponseRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequestEventArgs
{
}

interface EmailMailboxValidateCertificatesRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequest
{
}

interface EmailMailboxValidateCertificatesRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequestEventArgs
{
}