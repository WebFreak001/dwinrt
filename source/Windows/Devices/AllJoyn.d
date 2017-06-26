module Windows.Devices.AllJoyn;

import dwinrt;

@uuid("e5a9bf00-1fa2-4839-93ef-f9df404890f7")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynAboutData")
interface IAllJoynAboutData : IInspectable
{
extern(Windows):
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_DefaultAppName(HSTRING* return_value);
	HRESULT set_DefaultAppName(HSTRING value);
	HRESULT get_AppNames(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT get_DateOfManufacture(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_DateOfManufacture(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_DefaultDescription(HSTRING* return_value);
	HRESULT set_DefaultDescription(HSTRING value);
	HRESULT get_Descriptions(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT get_DefaultManufacturer(HSTRING* return_value);
	HRESULT set_DefaultManufacturer(HSTRING value);
	HRESULT get_Manufacturers(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT get_ModelNumber(HSTRING* return_value);
	HRESULT set_ModelNumber(HSTRING value);
	HRESULT get_SoftwareVersion(HSTRING* return_value);
	HRESULT set_SoftwareVersion(HSTRING value);
	HRESULT get_SupportUrl(Windows.Foundation.Uri* return_value);
	HRESULT set_SupportUrl(Windows.Foundation.Uri value);
	HRESULT get_AppId(GUID* return_value);
	HRESULT set_AppId(GUID value);
}

@uuid("6823111f-6212-4934-9c48-e19ca4984288")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynAboutDataView")
interface IAllJoynAboutDataView : IInspectable
{
extern(Windows):
	HRESULT get_Status(INT32* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
	HRESULT get_AJSoftwareVersion(HSTRING* return_value);
	HRESULT get_AppId(GUID* return_value);
	HRESULT get_DateOfManufacture(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_DefaultLanguage(Windows.Globalization.Language* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_HardwareVersion(HSTRING* return_value);
	HRESULT get_ModelNumber(HSTRING* return_value);
	HRESULT get_SoftwareVersion(HSTRING* return_value);
	HRESULT get_SupportedLanguages(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language)* return_value);
	HRESULT get_SupportUrl(Windows.Foundation.Uri* return_value);
	HRESULT get_AppName(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_DeviceName(HSTRING* return_value);
	HRESULT get_Manufacturer(HSTRING* return_value);
}

@uuid("57edb688-0c5e-416e-88b5-39b32d25c47d")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynAboutDataView")
interface IAllJoynAboutDataViewStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDataBySessionPortAsync(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment, UINT16 sessionPort, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView)* return_operation);
	HRESULT abi_GetDataBySessionPortWithLanguageAsync(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment, UINT16 sessionPort, Windows.Globalization.Language language, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView)* return_operation);
}

@uuid("4da817d2-cd1d-4023-a7c4-16def89c28df")
interface IAllJoynAcceptSessionJoiner : IInspectable
{
extern(Windows):
	HRESULT abi_Accept();
}

@uuid("4efb5365-3e8a-4257-8f10-539ce0d56c0f")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs")
interface IAllJoynAcceptSessionJoinerEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_UniqueName(HSTRING* return_value);
	HRESULT get_SessionPort(UINT16* return_value);
	HRESULT get_TrafficType(Windows.Devices.AllJoyn.AllJoynTrafficType* return_value);
	HRESULT get_SamePhysicalNode(bool* return_value);
	HRESULT get_SameNetwork(bool* return_value);
	HRESULT abi_Accept();
}

@uuid("b4435bc0-6145-429e-84db-d5bfe772b14f")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs")
interface IAllJoynAcceptSessionJoinerEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING uniqueName, UINT16 sessionPort, Windows.Devices.AllJoyn.AllJoynTrafficType trafficType, ubyte proximity, Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoiner acceptSessionJoiner, Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs* return_result);
}

@uuid("97b4701c-15dc-4b53-b6a4-7d134300d7bf")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynAuthenticationCompleteEventArgs")
interface IAllJoynAuthenticationCompleteEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AuthenticationMechanism(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism* return_value);
	HRESULT get_PeerUniqueName(HSTRING* return_value);
	HRESULT get_Succeeded(bool* return_value);
}

@uuid("f309f153-1eed-42c3-a20e-436d41fe62f6")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusAttachment")
interface IAllJoynBusAttachment : IInspectable
{
extern(Windows):
	HRESULT get_AboutData(Windows.Devices.AllJoyn.AllJoynAboutData* return_value);
	HRESULT get_ConnectionSpecification(HSTRING* return_value);
	HRESULT get_State(Windows.Devices.AllJoyn.AllJoynBusAttachmentState* return_value);
	HRESULT get_UniqueName(HSTRING* return_value);
	HRESULT abi_PingAsync(HSTRING uniqueName, Windows.Foundation.IAsyncOperation!(INT32)* return_operation);
	HRESULT abi_Connect();
	HRESULT abi_Disconnect();
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynBusAttachmentStateChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StateChanged(EventRegistrationToken token);
	HRESULT get_AuthenticationMechanisms(Windows.Foundation.Collections.IVector!(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism)* return_value);
	HRESULT add_CredentialsRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynCredentialsRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CredentialsRequested(EventRegistrationToken token);
	HRESULT add_CredentialsVerificationRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynCredentialsVerificationRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CredentialsVerificationRequested(EventRegistrationToken token);
	HRESULT add_AuthenticationComplete(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynAuthenticationCompleteEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AuthenticationComplete(EventRegistrationToken token);
}

@uuid("3474cb1e-2368-43b2-b43e-6a3ac1278d98")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusAttachment")
interface IAllJoynBusAttachment2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetAboutDataAsync(Windows.Devices.AllJoyn.AllJoynServiceInfo serviceInfo, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView)* return_operation);
	HRESULT abi_GetAboutDataWithLanguageAsync(Windows.Devices.AllJoyn.AllJoynServiceInfo serviceInfo, Windows.Globalization.Language language, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView)* return_operation);
	HRESULT add_AcceptSessionJoinerRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AcceptSessionJoinerRequested(EventRegistrationToken token);
	HRESULT add_SessionJoined(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SessionJoined(EventRegistrationToken token);
}

@uuid("642ef1a4-ad85-4ddf-90ae-604452b22288")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusAttachment")
interface IAllJoynBusAttachmentFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING connectionSpecification, Windows.Devices.AllJoyn.AllJoynBusAttachment* return_result);
}

@uuid("d82e75f4-c02a-41ec-a8d5-eab1558953aa")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusAttachmentStateChangedEventArgs")
interface IAllJoynBusAttachmentStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_State(Windows.Devices.AllJoyn.AllJoynBusAttachmentState* return_value);
	HRESULT get_Status(INT32* return_value);
}

@uuid("839d4d3d-1051-40d7-872a-8d0141115b1f")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusAttachment")
interface IAllJoynBusAttachmentStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.AllJoyn.AllJoynBusAttachment* return_defaultBusAttachment);
	HRESULT abi_GetWatcher(Windows.Foundation.Collections.IIterable!(HSTRING) requiredInterfaces, Windows.Devices.Enumeration.DeviceWatcher* return_deviceWatcher);
}

@uuid("e8fd825e-f73a-490c-8804-04e026643047")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusObject")
interface IAllJoynBusObject : IInspectable
{
extern(Windows):
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT abi_AddProducer(Windows.Devices.AllJoyn.IAllJoynProducer producer);
	HRESULT get_BusAttachment(Windows.Devices.AllJoyn.AllJoynBusAttachment* return_value);
	HRESULT get_Session(Windows.Devices.AllJoyn.AllJoynSession* return_value);
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusObject, Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Stopped(EventRegistrationToken token);
}

@uuid("2c2f9f0b-8e02-4f9c-ac27-ea6dad5d3b50")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusObject")
interface IAllJoynBusObjectFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING objectPath, Windows.Devices.AllJoyn.AllJoynBusObject* return_result);
	HRESULT abi_CreateWithBusAttachment(HSTRING objectPath, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment, Windows.Devices.AllJoyn.AllJoynBusObject* return_result);
}

@uuid("de102115-ef8e-4d42-b93b-a2ae74519766")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs")
interface IAllJoynBusObjectStoppedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(INT32* return_value);
}

@uuid("6b22fd48-d0a3-4255-953a-4772b4028073")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs")
interface IAllJoynBusObjectStoppedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(INT32 status, Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs* return_result);
}

@uuid("824650f2-a190-40b1-abab-349ec244dfaa")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynCredentials")
interface IAllJoynCredentials : IInspectable
{
extern(Windows):
	HRESULT get_AuthenticationMechanism(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism* return_value);
	HRESULT get_Certificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT set_Certificate(Windows.Security.Cryptography.Certificates.Certificate value);
	HRESULT get_PasswordCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT set_PasswordCredential(Windows.Security.Credentials.PasswordCredential value);
	HRESULT get_Timeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Timeout(Windows.Foundation.TimeSpan value);
}

@uuid("6a87e34e-b069-4b80-9e1a-41bc837c65d2")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynCredentialsRequestedEventArgs")
interface IAllJoynCredentialsRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AttemptCount(UINT16* return_value);
	HRESULT get_Credentials(Windows.Devices.AllJoyn.AllJoynCredentials* return_value);
	HRESULT get_PeerUniqueName(HSTRING* return_value);
	HRESULT get_RequestedUserName(HSTRING* return_value);
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

@uuid("800a7612-b805-44af-a2e1-792ab655a2d0")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynCredentialsVerificationRequestedEventArgs")
interface IAllJoynCredentialsVerificationRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_AuthenticationMechanism(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism* return_value);
	HRESULT get_PeerUniqueName(HSTRING* return_value);
	HRESULT get_PeerCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_PeerCertificateErrorSeverity(Windows.Networking.Sockets.SocketSslErrorSeverity* return_value);
	HRESULT get_PeerCertificateErrors(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)* return_value);
	HRESULT get_PeerIntermediateCertificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
	HRESULT abi_Accept();
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

@uuid("ff2b0127-2c12-4859-aa3a-c74461ee814c")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynMessageInfo")
interface IAllJoynMessageInfo : IInspectable
{
extern(Windows):
	HRESULT get_SenderUniqueName(HSTRING* return_value);
}

@uuid("34664c2a-8289-43d4-b4a8-3f4de359f043")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynMessageInfo")
interface IAllJoynMessageInfoFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING senderUniqueName, Windows.Devices.AllJoyn.AllJoynMessageInfo* return_result);
}

@uuid("9d084679-469b-495a-a710-ac50f123069f")
interface IAllJoynProducer : IInspectable
{
extern(Windows):
	HRESULT abi_SetBusObject(Windows.Devices.AllJoyn.AllJoynBusObject busObject);
}

@uuid("51309770-4937-492d-8080-236439987ceb")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynProducerStoppedEventArgs")
interface IAllJoynProducerStoppedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(INT32* return_value);
}

@uuid("56529961-b219-4d6e-9f78-fa3f99fa8fe5")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynProducerStoppedEventArgs")
interface IAllJoynProducerStoppedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(INT32 status, Windows.Devices.AllJoyn.AllJoynProducerStoppedEventArgs* return_result);
}

@uuid("4cbe8209-b93e-4182-999b-ddd000f9c575")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynServiceInfo")
interface IAllJoynServiceInfo : IInspectable
{
extern(Windows):
	HRESULT get_UniqueName(HSTRING* return_value);
	HRESULT get_ObjectPath(HSTRING* return_value);
	HRESULT get_SessionPort(UINT16* return_value);
}

@uuid("7581dabd-fe03-4f4b-94a4-f02fdcbd11b8")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynServiceInfo")
interface IAllJoynServiceInfoFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING uniqueName, HSTRING objectPath, UINT16 sessionPort, Windows.Devices.AllJoyn.AllJoynServiceInfo* return_result);
}

@uuid("3057a95f-1d3f-41f3-8969-e32792627396")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynServiceInfoRemovedEventArgs")
interface IAllJoynServiceInfoRemovedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_UniqueName(HSTRING* return_value);
}

@uuid("0dbf8627-9aff-4955-9227-6953baf41569")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynServiceInfoRemovedEventArgs")
interface IAllJoynServiceInfoRemovedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynServiceInfoRemovedEventArgs* return_result);
}

@uuid("5678570a-603a-49fc-b750-0ef13609213c")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynServiceInfo")
interface IAllJoynServiceInfoStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynServiceInfo)* return_operation);
}

@uuid("e8d11b0c-c0d4-406c-88a9-a93efa85d4b1")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSession")
interface IAllJoynSession : IInspectable
{
extern(Windows):
	HRESULT get_Id(INT32* return_value);
	HRESULT get_Status(INT32* return_value);
	HRESULT abi_RemoveMemberAsync(HSTRING uniqueName, Windows.Foundation.IAsyncOperation!(INT32)* return_operation);
	HRESULT add_MemberAdded(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_MemberAdded(EventRegistrationToken token);
	HRESULT add_MemberRemoved(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_MemberRemoved(EventRegistrationToken token);
	HRESULT add_Lost(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Lost(EventRegistrationToken token);
}

@uuid("9e9f5bd0-b5d7-47c5-8dab-b040cc192871")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs")
interface IAllJoynSessionJoinedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Session(Windows.Devices.AllJoyn.AllJoynSession* return_value);
}

@uuid("6824d689-d6cb-4d9e-a09e-35806870b17f")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs")
interface IAllJoynSessionJoinedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.AllJoyn.AllJoynSession session, Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs* return_result);
}

@uuid("e766a48a-8bb8-4954-ae67-d2fa43d1f96b")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs")
interface IAllJoynSessionLostEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.Devices.AllJoyn.AllJoynSessionLostReason* return_value);
}

@uuid("13bbfd32-d2f4-49c9-980e-2805e13586b1")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs")
interface IAllJoynSessionLostEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.AllJoyn.AllJoynSessionLostReason reason, Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs* return_result);
}

@uuid("49a2798a-0dd1-46c1-9cd6-27190e503a5e")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs")
interface IAllJoynSessionMemberAddedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_UniqueName(HSTRING* return_value);
}

@uuid("341de352-1d33-40a1-a1d3-e5777020e1f1")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs")
interface IAllJoynSessionMemberAddedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs* return_result);
}

@uuid("409a219f-aa4a-4893-b430-baa1b63c6219")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs")
interface IAllJoynSessionMemberRemovedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_UniqueName(HSTRING* return_value);
}

@uuid("c4d355e8-42b8-4b67-b757-d0cfcad59280")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs")
interface IAllJoynSessionMemberRemovedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs* return_result);
}

@uuid("9e05d604-a06c-46d4-b46c-0b0b54105b44")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSession")
interface IAllJoynSessionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetFromServiceInfoAsync(Windows.Devices.AllJoyn.AllJoynServiceInfo serviceInfo, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynSession)* return_operation);
	HRESULT abi_GetFromServiceInfoAndBusAttachmentAsync(Windows.Devices.AllJoyn.AllJoynServiceInfo serviceInfo, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynSession)* return_operation);
}

@uuid("d0b7a17e-0d29-4da9-8ac6-54c554bedbc5")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynStatus")
interface IAllJoynStatusStatics : IInspectable
{
extern(Windows):
	HRESULT get_Ok(INT32* return_value);
	HRESULT get_Fail(INT32* return_value);
	HRESULT get_OperationTimedOut(INT32* return_value);
	HRESULT get_OtherEndClosed(INT32* return_value);
	HRESULT get_ConnectionRefused(INT32* return_value);
	HRESULT get_AuthenticationFailed(INT32* return_value);
	HRESULT get_AuthenticationRejectedByUser(INT32* return_value);
	HRESULT get_SslConnectFailed(INT32* return_value);
	HRESULT get_SslIdentityVerificationFailed(INT32* return_value);
	HRESULT get_InsufficientSecurity(INT32* return_value);
	HRESULT get_InvalidArgument1(INT32* return_value);
	HRESULT get_InvalidArgument2(INT32* return_value);
	HRESULT get_InvalidArgument3(INT32* return_value);
	HRESULT get_InvalidArgument4(INT32* return_value);
	HRESULT get_InvalidArgument5(INT32* return_value);
	HRESULT get_InvalidArgument6(INT32* return_value);
	HRESULT get_InvalidArgument7(INT32* return_value);
	HRESULT get_InvalidArgument8(INT32* return_value);
}

@uuid("c9fca03b-701d-4aa8-97dd-a2bb0a8f5fa3")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynWatcherStoppedEventArgs")
interface IAllJoynWatcherStoppedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(INT32* return_value);
}

@uuid("878fa5a8-2d50-47e1-904a-20bf0d48c782")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynWatcherStoppedEventArgs")
interface IAllJoynWatcherStoppedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(INT32 status, Windows.Devices.AllJoyn.AllJoynWatcherStoppedEventArgs* return_result);
}

interface AllJoynAboutData : Windows.Devices.AllJoyn.IAllJoynAboutData
{
extern(Windows):
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).set_IsEnabled(value));
	}
	final HSTRING DefaultAppName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_DefaultAppName(&_ret));
		return _ret;
	}
	final void DefaultAppName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).set_DefaultAppName(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) AppNames()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_AppNames(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) DateOfManufacture()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_DateOfManufacture(&_ret));
		return _ret;
	}
	final void DateOfManufacture(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).set_DateOfManufacture(value));
	}
	final HSTRING DefaultDescription()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_DefaultDescription(&_ret));
		return _ret;
	}
	final void DefaultDescription(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).set_DefaultDescription(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) Descriptions()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_Descriptions(&_ret));
		return _ret;
	}
	final HSTRING DefaultManufacturer()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_DefaultManufacturer(&_ret));
		return _ret;
	}
	final void DefaultManufacturer(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).set_DefaultManufacturer(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) Manufacturers()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_Manufacturers(&_ret));
		return _ret;
	}
	final HSTRING ModelNumber()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_ModelNumber(&_ret));
		return _ret;
	}
	final void ModelNumber(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).set_ModelNumber(value));
	}
	final HSTRING SoftwareVersion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_SoftwareVersion(&_ret));
		return _ret;
	}
	final void SoftwareVersion(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).set_SoftwareVersion(value));
	}
	final Windows.Foundation.Uri SupportUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_SupportUrl(&_ret));
		return _ret;
	}
	final void SupportUrl(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).set_SupportUrl(value));
	}
	final GUID AppId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).get_AppId(&_ret));
		return _ret;
	}
	final void AppId(GUID value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutData).set_AppId(value));
	}
}

interface AllJoynAboutDataView : Windows.Devices.AllJoyn.IAllJoynAboutDataView
{
extern(Windows):
	final INT32 Status()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_Properties(&_ret));
		return _ret;
	}
	final HSTRING AJSoftwareVersion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_AJSoftwareVersion(&_ret));
		return _ret;
	}
	final GUID AppId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_AppId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) DateOfManufacture()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_DateOfManufacture(&_ret));
		return _ret;
	}
	final Windows.Globalization.Language DefaultLanguage()
	{
		Windows.Globalization.Language _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_DefaultLanguage(&_ret));
		return _ret;
	}
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_DeviceId(&_ret));
		return _ret;
	}
	final HSTRING HardwareVersion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_HardwareVersion(&_ret));
		return _ret;
	}
	final HSTRING ModelNumber()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_ModelNumber(&_ret));
		return _ret;
	}
	final HSTRING SoftwareVersion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_SoftwareVersion(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language) SupportedLanguages()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_SupportedLanguages(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri SupportUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_SupportUrl(&_ret));
		return _ret;
	}
	final HSTRING AppName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_AppName(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_Description(&_ret));
		return _ret;
	}
	final HSTRING DeviceName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_DeviceName(&_ret));
		return _ret;
	}
	final HSTRING Manufacturer()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataView).get_Manufacturer(&_ret));
		return _ret;
	}

	private static Windows.Devices.AllJoyn.IAllJoynAboutDataViewStatics _staticInstance;
	public static Windows.Devices.AllJoyn.IAllJoynAboutDataViewStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.AllJoyn.IAllJoynAboutDataViewStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView) GetDataBySessionPortAsync(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment, UINT16 sessionPort)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataViewStatics).abi_GetDataBySessionPortAsync(uniqueName, busAttachment, sessionPort, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView) GetDataBySessionPortWithLanguageAsync(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment, UINT16 sessionPort, Windows.Globalization.Language language)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynAboutDataViewStatics).abi_GetDataBySessionPortWithLanguageAsync(uniqueName, busAttachment, sessionPort, language, &_ret));
		return _ret;
	}
}

interface AllJoynAcceptSessionJoinerEventArgs : Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoinerEventArgs
{
extern(Windows):
	final HSTRING UniqueName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoinerEventArgs).get_UniqueName(&_ret));
		return _ret;
	}
	final UINT16 SessionPort()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoinerEventArgs).get_SessionPort(&_ret));
		return _ret;
	}
	final Windows.Devices.AllJoyn.AllJoynTrafficType TrafficType()
	{
		Windows.Devices.AllJoyn.AllJoynTrafficType _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoinerEventArgs).get_TrafficType(&_ret));
		return _ret;
	}
	final bool SamePhysicalNode()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoinerEventArgs).get_SamePhysicalNode(&_ret));
		return _ret;
	}
	final bool SameNetwork()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoinerEventArgs).get_SameNetwork(&_ret));
		return _ret;
	}
	final void Accept()
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoinerEventArgs).abi_Accept());
	}
	static Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs New(HSTRING uniqueName, UINT16 sessionPort, Windows.Devices.AllJoyn.AllJoynTrafficType trafficType, ubyte proximity, Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoiner acceptSessionJoiner)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoinerEventArgsFactory);
		Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoinerEventArgsFactory).abi_Create(uniqueName, sessionPort, trafficType, proximity, acceptSessionJoiner, &_ret));
		return _ret;
	}
}

interface AllJoynAuthenticationCompleteEventArgs : Windows.Devices.AllJoyn.IAllJoynAuthenticationCompleteEventArgs
{
extern(Windows):
	final Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism AuthenticationMechanism()
	{
		Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAuthenticationCompleteEventArgs).get_AuthenticationMechanism(&_ret));
		return _ret;
	}
	final HSTRING PeerUniqueName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAuthenticationCompleteEventArgs).get_PeerUniqueName(&_ret));
		return _ret;
	}
	final bool Succeeded()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynAuthenticationCompleteEventArgs).get_Succeeded(&_ret));
		return _ret;
	}
}

interface AllJoynBusAttachment : Windows.Devices.AllJoyn.IAllJoynBusAttachment, Windows.Devices.AllJoyn.IAllJoynBusAttachment2
{
extern(Windows):
	final Windows.Devices.AllJoyn.AllJoynAboutData AboutData()
	{
		Windows.Devices.AllJoyn.AllJoynAboutData _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).get_AboutData(&_ret));
		return _ret;
	}
	final HSTRING ConnectionSpecification()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).get_ConnectionSpecification(&_ret));
		return _ret;
	}
	final Windows.Devices.AllJoyn.AllJoynBusAttachmentState State()
	{
		Windows.Devices.AllJoyn.AllJoynBusAttachmentState _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).get_State(&_ret));
		return _ret;
	}
	final HSTRING UniqueName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).get_UniqueName(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(INT32) PingAsync(HSTRING uniqueName)
	{
		Windows.Foundation.IAsyncOperation!(INT32) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).abi_PingAsync(uniqueName, &_ret));
		return _ret;
	}
	final void Connect()
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).abi_Connect());
	}
	final void Disconnect()
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).abi_Disconnect());
	}
	final EventRegistrationToken OnStateChanged(void delegate(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynBusAttachmentStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).add_StateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynBusAttachmentStateChangedEventArgs), Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynBusAttachmentStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStateChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).remove_StateChanged(token));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism) AuthenticationMechanisms()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).get_AuthenticationMechanisms(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCredentialsRequested(void delegate(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynCredentialsRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).add_CredentialsRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynCredentialsRequestedEventArgs), Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynCredentialsRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCredentialsRequested(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).remove_CredentialsRequested(token));
	}
	final EventRegistrationToken OnCredentialsVerificationRequested(void delegate(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynCredentialsVerificationRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).add_CredentialsVerificationRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynCredentialsVerificationRequestedEventArgs), Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynCredentialsVerificationRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCredentialsVerificationRequested(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).remove_CredentialsVerificationRequested(token));
	}
	final EventRegistrationToken OnAuthenticationComplete(void delegate(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynAuthenticationCompleteEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).add_AuthenticationComplete(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynAuthenticationCompleteEventArgs), Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynAuthenticationCompleteEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAuthenticationComplete(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment).remove_AuthenticationComplete(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView) GetAboutDataAsync(Windows.Devices.AllJoyn.AllJoynServiceInfo serviceInfo)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment2).abi_GetAboutDataAsync(serviceInfo, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView) GetAboutDataWithLanguageAsync(Windows.Devices.AllJoyn.AllJoynServiceInfo serviceInfo, Windows.Globalization.Language language)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment2).abi_GetAboutDataWithLanguageAsync(serviceInfo, language, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnAcceptSessionJoinerRequested(void delegate(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment2).add_AcceptSessionJoinerRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs), Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAcceptSessionJoinerRequested(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment2).remove_AcceptSessionJoinerRequested(token));
	}
	final EventRegistrationToken OnSessionJoined(void delegate(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment2).add_SessionJoined(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs), Windows.Devices.AllJoyn.AllJoynBusAttachment, Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSessionJoined(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachment2).remove_SessionJoined(token));
	}

	private static Windows.Devices.AllJoyn.IAllJoynBusAttachmentStatics _staticInstance;
	public static Windows.Devices.AllJoyn.IAllJoynBusAttachmentStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.AllJoyn.IAllJoynBusAttachmentStatics);
		return _staticInstance;
	}
	static Windows.Devices.AllJoyn.AllJoynBusAttachment GetDefault()
	{
		Windows.Devices.AllJoyn.AllJoynBusAttachment _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachmentStatics).abi_GetDefault(&_ret));
		return _ret;
	}
	static Windows.Devices.Enumeration.DeviceWatcher GetWatcher(Windows.Foundation.Collections.IIterable!(HSTRING) requiredInterfaces)
	{
		Windows.Devices.Enumeration.DeviceWatcher _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachmentStatics).abi_GetWatcher(requiredInterfaces, &_ret));
		return _ret;
	}
	static AllJoynBusAttachment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(AllJoynBusAttachment).abi_ActivateInstance(&ret));
		return ret.as!(AllJoynBusAttachment);
	}
	static Windows.Devices.AllJoyn.AllJoynBusAttachment New(HSTRING connectionSpecification)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynBusAttachmentFactory);
		Windows.Devices.AllJoyn.AllJoynBusAttachment _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachmentFactory).abi_Create(connectionSpecification, &_ret));
		return _ret;
	}
}

interface AllJoynBusAttachmentStateChangedEventArgs : Windows.Devices.AllJoyn.IAllJoynBusAttachmentStateChangedEventArgs
{
extern(Windows):
	final Windows.Devices.AllJoyn.AllJoynBusAttachmentState State()
	{
		Windows.Devices.AllJoyn.AllJoynBusAttachmentState _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachmentStateChangedEventArgs).get_State(&_ret));
		return _ret;
	}
	final INT32 Status()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusAttachmentStateChangedEventArgs).get_Status(&_ret));
		return _ret;
	}
}

interface AllJoynBusObject : Windows.Devices.AllJoyn.IAllJoynBusObject
{
extern(Windows):
	final void Start()
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusObject).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusObject).abi_Stop());
	}
	final void AddProducer(Windows.Devices.AllJoyn.IAllJoynProducer producer)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusObject).abi_AddProducer(producer));
	}
	final Windows.Devices.AllJoyn.AllJoynBusAttachment BusAttachment()
	{
		Windows.Devices.AllJoyn.AllJoynBusAttachment _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusObject).get_BusAttachment(&_ret));
		return _ret;
	}
	final Windows.Devices.AllJoyn.AllJoynSession Session()
	{
		Windows.Devices.AllJoyn.AllJoynSession _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusObject).get_Session(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnStopped(void delegate(Windows.Devices.AllJoyn.AllJoynBusObject, Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusObject).add_Stopped(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynBusObject, Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs), Windows.Devices.AllJoyn.AllJoynBusObject, Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStopped(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusObject).remove_Stopped(token));
	}
	static AllJoynBusObject New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(AllJoynBusObject).abi_ActivateInstance(&ret));
		return ret.as!(AllJoynBusObject);
	}
	static Windows.Devices.AllJoyn.AllJoynBusObject New(HSTRING objectPath)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynBusObjectFactory);
		Windows.Devices.AllJoyn.AllJoynBusObject _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynBusObjectFactory).abi_Create(objectPath, &_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynBusObject New(HSTRING objectPath, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynBusObjectFactory);
		Windows.Devices.AllJoyn.AllJoynBusObject _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynBusObjectFactory).abi_CreateWithBusAttachment(objectPath, busAttachment, &_ret));
		return _ret;
	}
}

interface AllJoynBusObjectStoppedEventArgs : Windows.Devices.AllJoyn.IAllJoynBusObjectStoppedEventArgs
{
extern(Windows):
	final INT32 Status()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynBusObjectStoppedEventArgs).get_Status(&_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs New(INT32 status)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynBusObjectStoppedEventArgsFactory);
		Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynBusObjectStoppedEventArgsFactory).abi_Create(status, &_ret));
		return _ret;
	}
}

interface AllJoynCredentials : Windows.Devices.AllJoyn.IAllJoynCredentials
{
extern(Windows):
	final Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism AuthenticationMechanism()
	{
		Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentials).get_AuthenticationMechanism(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.Certificate Certificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentials).get_Certificate(&_ret));
		return _ret;
	}
	final void Certificate(Windows.Security.Cryptography.Certificates.Certificate value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentials).set_Certificate(value));
	}
	final Windows.Security.Credentials.PasswordCredential PasswordCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentials).get_PasswordCredential(&_ret));
		return _ret;
	}
	final void PasswordCredential(Windows.Security.Credentials.PasswordCredential value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentials).set_PasswordCredential(value));
	}
	final Windows.Foundation.TimeSpan Timeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentials).get_Timeout(&_ret));
		return _ret;
	}
	final void Timeout(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentials).set_Timeout(value));
	}
}

interface AllJoynCredentialsRequestedEventArgs : Windows.Devices.AllJoyn.IAllJoynCredentialsRequestedEventArgs
{
extern(Windows):
	final UINT16 AttemptCount()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsRequestedEventArgs).get_AttemptCount(&_ret));
		return _ret;
	}
	final Windows.Devices.AllJoyn.AllJoynCredentials Credentials()
	{
		Windows.Devices.AllJoyn.AllJoynCredentials _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsRequestedEventArgs).get_Credentials(&_ret));
		return _ret;
	}
	final HSTRING PeerUniqueName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsRequestedEventArgs).get_PeerUniqueName(&_ret));
		return _ret;
	}
	final HSTRING RequestedUserName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsRequestedEventArgs).get_RequestedUserName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsRequestedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface AllJoynCredentialsVerificationRequestedEventArgs : Windows.Devices.AllJoyn.IAllJoynCredentialsVerificationRequestedEventArgs
{
extern(Windows):
	final Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism AuthenticationMechanism()
	{
		Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsVerificationRequestedEventArgs).get_AuthenticationMechanism(&_ret));
		return _ret;
	}
	final HSTRING PeerUniqueName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsVerificationRequestedEventArgs).get_PeerUniqueName(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.Certificate PeerCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsVerificationRequestedEventArgs).get_PeerCertificate(&_ret));
		return _ret;
	}
	final Windows.Networking.Sockets.SocketSslErrorSeverity PeerCertificateErrorSeverity()
	{
		Windows.Networking.Sockets.SocketSslErrorSeverity _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsVerificationRequestedEventArgs).get_PeerCertificateErrorSeverity(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) PeerCertificateErrors()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsVerificationRequestedEventArgs).get_PeerCertificateErrors(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) PeerIntermediateCertificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsVerificationRequestedEventArgs).get_PeerIntermediateCertificates(&_ret));
		return _ret;
	}
	final void Accept()
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsVerificationRequestedEventArgs).abi_Accept());
	}
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynCredentialsVerificationRequestedEventArgs).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface AllJoynMessageInfo : Windows.Devices.AllJoyn.IAllJoynMessageInfo
{
extern(Windows):
	final HSTRING SenderUniqueName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynMessageInfo).get_SenderUniqueName(&_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynMessageInfo New(HSTRING senderUniqueName)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynMessageInfoFactory);
		Windows.Devices.AllJoyn.AllJoynMessageInfo _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynMessageInfoFactory).abi_Create(senderUniqueName, &_ret));
		return _ret;
	}
}

interface AllJoynProducerStoppedEventArgs : Windows.Devices.AllJoyn.IAllJoynProducerStoppedEventArgs
{
extern(Windows):
	final INT32 Status()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynProducerStoppedEventArgs).get_Status(&_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynProducerStoppedEventArgs New(INT32 status)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynProducerStoppedEventArgsFactory);
		Windows.Devices.AllJoyn.AllJoynProducerStoppedEventArgs _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynProducerStoppedEventArgsFactory).abi_Create(status, &_ret));
		return _ret;
	}
}

interface AllJoynServiceInfo : Windows.Devices.AllJoyn.IAllJoynServiceInfo
{
extern(Windows):
	final HSTRING UniqueName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynServiceInfo).get_UniqueName(&_ret));
		return _ret;
	}
	final HSTRING ObjectPath()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynServiceInfo).get_ObjectPath(&_ret));
		return _ret;
	}
	final UINT16 SessionPort()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynServiceInfo).get_SessionPort(&_ret));
		return _ret;
	}

	private static Windows.Devices.AllJoyn.IAllJoynServiceInfoStatics _staticInstance;
	public static Windows.Devices.AllJoyn.IAllJoynServiceInfoStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.AllJoyn.IAllJoynServiceInfoStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynServiceInfo) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynServiceInfo) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynServiceInfoStatics).abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynServiceInfo New(HSTRING uniqueName, HSTRING objectPath, UINT16 sessionPort)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynServiceInfoFactory);
		Windows.Devices.AllJoyn.AllJoynServiceInfo _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynServiceInfoFactory).abi_Create(uniqueName, objectPath, sessionPort, &_ret));
		return _ret;
	}
}

interface AllJoynServiceInfoRemovedEventArgs : Windows.Devices.AllJoyn.IAllJoynServiceInfoRemovedEventArgs
{
extern(Windows):
	final HSTRING UniqueName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynServiceInfoRemovedEventArgs).get_UniqueName(&_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynServiceInfoRemovedEventArgs New(HSTRING uniqueName)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynServiceInfoRemovedEventArgsFactory);
		Windows.Devices.AllJoyn.AllJoynServiceInfoRemovedEventArgs _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynServiceInfoRemovedEventArgsFactory).abi_Create(uniqueName, &_ret));
		return _ret;
	}
}

interface AllJoynSession : Windows.Devices.AllJoyn.IAllJoynSession
{
extern(Windows):
	final INT32 Id()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSession).get_Id(&_ret));
		return _ret;
	}
	final INT32 Status()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSession).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(INT32) RemoveMemberAsync(HSTRING uniqueName)
	{
		Windows.Foundation.IAsyncOperation!(INT32) _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSession).abi_RemoveMemberAsync(uniqueName, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnMemberAdded(void delegate(Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSession).add_MemberAdded(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs), Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMemberAdded(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSession).remove_MemberAdded(token));
	}
	final EventRegistrationToken OnMemberRemoved(void delegate(Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSession).add_MemberRemoved(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs), Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMemberRemoved(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSession).remove_MemberRemoved(token));
	}
	final EventRegistrationToken OnLost(void delegate(Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSession).add_Lost(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs), Windows.Devices.AllJoyn.AllJoynSession, Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs)(fn), &tok));
		return tok;
	}
	final void removeLost(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSession).remove_Lost(token));
	}

	private static Windows.Devices.AllJoyn.IAllJoynSessionStatics _staticInstance;
	public static Windows.Devices.AllJoyn.IAllJoynSessionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.AllJoyn.IAllJoynSessionStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynSession) GetFromServiceInfoAsync(Windows.Devices.AllJoyn.AllJoynServiceInfo serviceInfo)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynSession) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynSessionStatics).abi_GetFromServiceInfoAsync(serviceInfo, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynSession) GetFromServiceInfoAndBusAttachmentAsync(Windows.Devices.AllJoyn.AllJoynServiceInfo serviceInfo, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynSession) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynSessionStatics).abi_GetFromServiceInfoAndBusAttachmentAsync(serviceInfo, busAttachment, &_ret));
		return _ret;
	}
}

interface AllJoynSessionJoinedEventArgs : Windows.Devices.AllJoyn.IAllJoynSessionJoinedEventArgs
{
extern(Windows):
	final Windows.Devices.AllJoyn.AllJoynSession Session()
	{
		Windows.Devices.AllJoyn.AllJoynSession _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSessionJoinedEventArgs).get_Session(&_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs New(Windows.Devices.AllJoyn.AllJoynSession session)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynSessionJoinedEventArgsFactory);
		Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynSessionJoinedEventArgsFactory).abi_Create(session, &_ret));
		return _ret;
	}
}

interface AllJoynSessionLostEventArgs : Windows.Devices.AllJoyn.IAllJoynSessionLostEventArgs
{
extern(Windows):
	final Windows.Devices.AllJoyn.AllJoynSessionLostReason Reason()
	{
		Windows.Devices.AllJoyn.AllJoynSessionLostReason _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSessionLostEventArgs).get_Reason(&_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs New(Windows.Devices.AllJoyn.AllJoynSessionLostReason reason)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynSessionLostEventArgsFactory);
		Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynSessionLostEventArgsFactory).abi_Create(reason, &_ret));
		return _ret;
	}
}

interface AllJoynSessionMemberAddedEventArgs : Windows.Devices.AllJoyn.IAllJoynSessionMemberAddedEventArgs
{
extern(Windows):
	final HSTRING UniqueName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSessionMemberAddedEventArgs).get_UniqueName(&_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs New(HSTRING uniqueName)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynSessionMemberAddedEventArgsFactory);
		Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynSessionMemberAddedEventArgsFactory).abi_Create(uniqueName, &_ret));
		return _ret;
	}
}

interface AllJoynSessionMemberRemovedEventArgs : Windows.Devices.AllJoyn.IAllJoynSessionMemberRemovedEventArgs
{
extern(Windows):
	final HSTRING UniqueName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynSessionMemberRemovedEventArgs).get_UniqueName(&_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs New(HSTRING uniqueName)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynSessionMemberRemovedEventArgsFactory);
		Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynSessionMemberRemovedEventArgsFactory).abi_Create(uniqueName, &_ret));
		return _ret;
	}
}

interface AllJoynStatus
{
	private static Windows.Devices.AllJoyn.IAllJoynStatusStatics _staticInstance;
	public static Windows.Devices.AllJoyn.IAllJoynStatusStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.AllJoyn.IAllJoynStatusStatics);
		return _staticInstance;
	}
	static INT32 Ok()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_Ok(&_ret));
		return _ret;
	}
	static INT32 Fail()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_Fail(&_ret));
		return _ret;
	}
	static INT32 OperationTimedOut()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_OperationTimedOut(&_ret));
		return _ret;
	}
	static INT32 OtherEndClosed()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_OtherEndClosed(&_ret));
		return _ret;
	}
	static INT32 ConnectionRefused()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_ConnectionRefused(&_ret));
		return _ret;
	}
	static INT32 AuthenticationFailed()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_AuthenticationFailed(&_ret));
		return _ret;
	}
	static INT32 AuthenticationRejectedByUser()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_AuthenticationRejectedByUser(&_ret));
		return _ret;
	}
	static INT32 SslConnectFailed()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_SslConnectFailed(&_ret));
		return _ret;
	}
	static INT32 SslIdentityVerificationFailed()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_SslIdentityVerificationFailed(&_ret));
		return _ret;
	}
	static INT32 InsufficientSecurity()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_InsufficientSecurity(&_ret));
		return _ret;
	}
	static INT32 InvalidArgument1()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_InvalidArgument1(&_ret));
		return _ret;
	}
	static INT32 InvalidArgument2()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_InvalidArgument2(&_ret));
		return _ret;
	}
	static INT32 InvalidArgument3()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_InvalidArgument3(&_ret));
		return _ret;
	}
	static INT32 InvalidArgument4()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_InvalidArgument4(&_ret));
		return _ret;
	}
	static INT32 InvalidArgument5()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_InvalidArgument5(&_ret));
		return _ret;
	}
	static INT32 InvalidArgument6()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_InvalidArgument6(&_ret));
		return _ret;
	}
	static INT32 InvalidArgument7()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_InvalidArgument7(&_ret));
		return _ret;
	}
	static INT32 InvalidArgument8()
	{
		INT32 _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.AllJoyn.IAllJoynStatusStatics).get_InvalidArgument8(&_ret));
		return _ret;
	}
}

interface AllJoynWatcherStoppedEventArgs : Windows.Devices.AllJoyn.IAllJoynWatcherStoppedEventArgs
{
extern(Windows):
	final INT32 Status()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.AllJoyn.IAllJoynWatcherStoppedEventArgs).get_Status(&_ret));
		return _ret;
	}
	static Windows.Devices.AllJoyn.AllJoynWatcherStoppedEventArgs New(INT32 status)
	{
		auto factory = factory!(Windows.Devices.AllJoyn.IAllJoynWatcherStoppedEventArgsFactory);
		Windows.Devices.AllJoyn.AllJoynWatcherStoppedEventArgs _ret;
		Debug.OK(factory.as!(Windows.Devices.AllJoyn.IAllJoynWatcherStoppedEventArgsFactory).abi_Create(status, &_ret));
		return _ret;
	}
}

enum AllJoynAuthenticationMechanism
{
	None = 0,
	SrpAnonymous = 1,
	SrpLogon = 2,
	EcdheNull = 3,
	EcdhePsk = 4,
	EcdheEcdsa = 5,
	EcdheSpeke = 6
}

enum AllJoynBusAttachmentState
{
	Disconnected = 0,
	Connecting = 1,
	Connected = 2,
	Disconnecting = 3
}

enum AllJoynSessionLostReason
{
	None = 0,
	ProducerLeftSession = 1,
	ProducerClosedAbruptly = 2,
	RemovedByProducer = 3,
	LinkTimeout = 4,
	Other = 5
}

enum AllJoynTrafficType
{
	Unknown = 0,
	Messages = 1,
	RawUnreliable = 2,
	RawReliable = 4
}