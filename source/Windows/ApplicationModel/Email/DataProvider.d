module Windows.ApplicationModel.Email.DataProvider;

import dwinrt;

@uuid("3b9c9dc7-37b2-4bf0-ae30-7b644a1c96e1")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection")
interface IEmailDataProviderConnection : IInspectable
{
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
extern(Windows):
	HRESULT get_Connection(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection* return_value);
}

@uuid("184d3775-c921-4c39-a309-e16c9f22b04b")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequest")
interface IEmailMailboxCreateFolderRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("9469e88a-a931-4779-923d-09a3ea292e29")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequest")
interface IEmailMailboxDeleteFolderRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("0b1dbbb4-750c-48e1-bce4-8d589684ffbc")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequest")
interface IEmailMailboxDownloadAttachmentRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("497b4187-5b4d-4b23-816c-f3842beb753e")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequest")
interface IEmailMailboxDownloadMessageRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("fe4b03ab-f86d-46d9-b4ce-bc8a6d9e9268")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequest")
interface IEmailMailboxEmptyFolderRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("616d6af1-70d4-4832-b869-b80542ae9be8")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequest")
interface IEmailMailboxForwardMeetingRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("9b380789-1e88-4e01-84cc-1386ad9a2c2f")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequest")
interface IEmailMailboxGetAutoReplySettingsRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("10ba2856-4a95-4068-91cc-67cc7acf454f")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequest")
interface IEmailMailboxMoveFolderRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("5aeff152-9799-4f9f-a399-ff07f3eef04e")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequest")
interface IEmailMailboxProposeNewTimeForMeetingRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("efa4cf70-7b39-4c9b-811e-41eaf43a332d")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequest")
interface IEmailMailboxResolveRecipientsRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("090eebdf-5a96-41d3-8ad8-34912f9aa60e")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequest")
interface IEmailMailboxServerSearchReadBatchRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("75a422d0-a88e-4e54-8dc7-c243186b774e")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequest")
interface IEmailMailboxSetAutoReplySettingsRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("4e10e8e4-7e67-405a-b673-dc60c91090fc")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequest")
interface IEmailMailboxSyncManagerSyncRequest : IInspectable
{
extern(Windows):
	HRESULT get_EmailMailboxId(HSTRING* return_value);
	HRESULT abi_ReportCompletedAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ReportFailedAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("439a031a-8fcc-4ae5-b9b5-d434e0a65aa8")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequestEventArgs")
interface IEmailMailboxSyncManagerSyncRequestEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("5b99ac93-b2cf-4888-ba4f-306b6b66df30")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequest")
interface IEmailMailboxUpdateMeetingResponseRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("a94d3931-e11a-4f97-b81a-187a70a8f41a")
@WinrtFactory("Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequest")
interface IEmailMailboxValidateCertificatesRequest : IInspectable
{
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
extern(Windows):
	HRESULT get_Request(Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequest* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

interface EmailDataProviderConnection : Windows.ApplicationModel.Email.DataProvider.IEmailDataProviderConnection
{
extern(Windows):
	final EventRegistrationToken OnMailboxSyncRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MailboxSyncRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMailboxSyncRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_MailboxSyncRequested(token));
	}
	final EventRegistrationToken OnDownloadMessageRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DownloadMessageRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDownloadMessageRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_DownloadMessageRequested(token));
	}
	final EventRegistrationToken OnDownloadAttachmentRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DownloadAttachmentRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDownloadAttachmentRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_DownloadAttachmentRequested(token));
	}
	final EventRegistrationToken OnCreateFolderRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CreateFolderRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCreateFolderRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_CreateFolderRequested(token));
	}
	final EventRegistrationToken OnDeleteFolderRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DeleteFolderRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDeleteFolderRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_DeleteFolderRequested(token));
	}
	final EventRegistrationToken OnEmptyFolderRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_EmptyFolderRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeEmptyFolderRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_EmptyFolderRequested(token));
	}
	final EventRegistrationToken OnMoveFolderRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MoveFolderRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMoveFolderRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_MoveFolderRequested(token));
	}
	final EventRegistrationToken OnUpdateMeetingResponseRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_UpdateMeetingResponseRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUpdateMeetingResponseRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_UpdateMeetingResponseRequested(token));
	}
	final EventRegistrationToken OnForwardMeetingRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ForwardMeetingRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeForwardMeetingRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_ForwardMeetingRequested(token));
	}
	final EventRegistrationToken OnProposeNewTimeForMeetingRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ProposeNewTimeForMeetingRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeProposeNewTimeForMeetingRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_ProposeNewTimeForMeetingRequested(token));
	}
	final EventRegistrationToken OnSetAutoReplySettingsRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SetAutoReplySettingsRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSetAutoReplySettingsRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_SetAutoReplySettingsRequested(token));
	}
	final EventRegistrationToken OnGetAutoReplySettingsRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_GetAutoReplySettingsRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeGetAutoReplySettingsRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_GetAutoReplySettingsRequested(token));
	}
	final EventRegistrationToken OnResolveRecipientsRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ResolveRecipientsRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeResolveRecipientsRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_ResolveRecipientsRequested(token));
	}
	final EventRegistrationToken OnValidateCertificatesRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ValidateCertificatesRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeValidateCertificatesRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_ValidateCertificatesRequested(token));
	}
	final EventRegistrationToken OnServerSearchReadBatchRequested(void delegate(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequestEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ServerSearchReadBatchRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequestEventArgs), Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection, Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequestEventArgs)(fn), &tok));
		return tok;
	}
	final void removeServerSearchReadBatchRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_ServerSearchReadBatchRequested(token));
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailDataProviderConnection).abi_Start());
	}
}

interface EmailDataProviderTriggerDetails : Windows.ApplicationModel.Email.DataProvider.IEmailDataProviderTriggerDetails
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection Connection()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailDataProviderTriggerDetails).get_Connection(&_ret));
		return _ret;
	}
}

interface EmailMailboxCreateFolderRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final HSTRING ParentFolderId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequest).get_ParentFolderId(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequest).get_Name(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync(Windows.ApplicationModel.Email.EmailFolder folder)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequest).abi_ReportCompletedAsync(folder, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync(Windows.ApplicationModel.Email.EmailMailboxCreateFolderStatus status)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequest).abi_ReportFailedAsync(status, &_ret));
		return _ret;
	}
}

interface EmailMailboxCreateFolderRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxDeleteFolderRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final HSTRING EmailFolderId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequest).get_EmailFolderId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync(Windows.ApplicationModel.Email.EmailMailboxDeleteFolderStatus status)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequest).abi_ReportFailedAsync(status, &_ret));
		return _ret;
	}
}

interface EmailMailboxDeleteFolderRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxDownloadAttachmentRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final HSTRING EmailMessageId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequest).get_EmailMessageId(&_ret));
		return _ret;
	}
	final HSTRING EmailAttachmentId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequest).get_EmailAttachmentId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxDownloadAttachmentRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxDownloadMessageRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final HSTRING EmailMessageId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequest).get_EmailMessageId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxDownloadMessageRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxEmptyFolderRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final HSTRING EmailFolderId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequest).get_EmailFolderId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync(Windows.ApplicationModel.Email.EmailMailboxEmptyFolderStatus status)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequest).abi_ReportFailedAsync(status, &_ret));
		return _ret;
	}
}

interface EmailMailboxEmptyFolderRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxForwardMeetingRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final HSTRING EmailMessageId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest).get_EmailMessageId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailRecipient) Recipients()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Email.EmailRecipient) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest).get_Recipients(&_ret));
		return _ret;
	}
	final HSTRING Subject()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest).get_Subject(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMessageBodyKind ForwardHeaderType()
	{
		Windows.ApplicationModel.Email.EmailMessageBodyKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest).get_ForwardHeaderType(&_ret));
		return _ret;
	}
	final HSTRING ForwardHeader()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest).get_ForwardHeader(&_ret));
		return _ret;
	}
	final HSTRING Comment()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest).get_Comment(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxForwardMeetingRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxGetAutoReplySettingsRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMailboxAutoReplyMessageResponseKind RequestedFormat()
	{
		Windows.ApplicationModel.Email.EmailMailboxAutoReplyMessageResponseKind _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequest).get_RequestedFormat(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync(Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings autoReplySettings)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequest).abi_ReportCompletedAsync(autoReplySettings, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxGetAutoReplySettingsRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxMoveFolderRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final HSTRING EmailFolderId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequest).get_EmailFolderId(&_ret));
		return _ret;
	}
	final HSTRING NewParentFolderId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequest).get_NewParentFolderId(&_ret));
		return _ret;
	}
	final HSTRING NewFolderName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequest).get_NewFolderName(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxMoveFolderRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxProposeNewTimeForMeetingRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final HSTRING EmailMessageId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest).get_EmailMessageId(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime NewStartTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest).get_NewStartTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan NewDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest).get_NewDuration(&_ret));
		return _ret;
	}
	final HSTRING Subject()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest).get_Subject(&_ret));
		return _ret;
	}
	final HSTRING Comment()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest).get_Comment(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxProposeNewTimeForMeetingRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxResolveRecipientsRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Recipients()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequest).get_Recipients(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Email.EmailRecipientResolutionResult) resolutionResults)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequest).abi_ReportCompletedAsync(resolutionResults, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxResolveRecipientsRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxServerSearchReadBatchRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest
{
extern(Windows):
	final HSTRING SessionId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest).get_SessionId(&_ret));
		return _ret;
	}
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final HSTRING EmailFolderId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest).get_EmailFolderId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailQueryOptions Options()
	{
		Windows.ApplicationModel.Email.EmailQueryOptions _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest).get_Options(&_ret));
		return _ret;
	}
	final UINT32 SuggestedBatchSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest).get_SuggestedBatchSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SaveMessageAsync(Windows.ApplicationModel.Email.EmailMessage message)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest).abi_SaveMessageAsync(message, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync(Windows.ApplicationModel.Email.EmailBatchStatus batchStatus)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest).abi_ReportFailedAsync(batchStatus, &_ret));
		return _ret;
	}
}

interface EmailMailboxServerSearchReadBatchRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxSetAutoReplySettingsRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings AutoReplySettings()
	{
		Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequest).get_AutoReplySettings(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxSetAutoReplySettingsRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxSyncManagerSyncRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxSyncManagerSyncRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxUpdateMeetingResponseRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final HSTRING EmailMessageId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest).get_EmailMessageId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Email.EmailMeetingResponseType Response()
	{
		Windows.ApplicationModel.Email.EmailMeetingResponseType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest).get_Response(&_ret));
		return _ret;
	}
	final HSTRING Subject()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest).get_Subject(&_ret));
		return _ret;
	}
	final HSTRING Comment()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest).get_Comment(&_ret));
		return _ret;
	}
	final bool SendUpdate()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest).get_SendUpdate(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest).abi_ReportCompletedAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxUpdateMeetingResponseRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface EmailMailboxValidateCertificatesRequest : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequest
{
extern(Windows):
	final HSTRING EmailMailboxId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequest).get_EmailMailboxId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) Certificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequest).get_Certificates(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportCompletedAsync(Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus) validationStatuses)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequest).abi_ReportCompletedAsync(validationStatuses, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailedAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequest).abi_ReportFailedAsync(&_ret));
		return _ret;
	}
}

interface EmailMailboxValidateCertificatesRequestEventArgs : Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequestEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequest Request()
	{
		Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequestEventArgs).get_Request(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequestEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}