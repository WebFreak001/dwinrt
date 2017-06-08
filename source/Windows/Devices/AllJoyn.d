module Windows.Devices.AllJoyn;

import dwinrt;

@uuid("e5a9bf00-1fa2-4839-93ef-f9df404890f7")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynAboutData")
interface IAllJoynAboutData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDataBySessionPortAsync(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment, UINT16 sessionPort, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView)* return_operation);
	HRESULT abi_GetDataBySessionPortWithLanguageAsync(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment, UINT16 sessionPort, Windows.Globalization.Language language, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynAboutDataView)* return_operation);
}

@uuid("4da817d2-cd1d-4023-a7c4-16def89c28df")
interface IAllJoynAcceptSessionJoiner : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Accept();
}

@uuid("4efb5365-3e8a-4257-8f10-539ce0d56c0f")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs")
interface IAllJoynAcceptSessionJoinerEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING uniqueName, UINT16 sessionPort, Windows.Devices.AllJoyn.AllJoynTrafficType trafficType, BYTE proximity, Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoiner acceptSessionJoiner, Windows.Devices.AllJoyn.AllJoynAcceptSessionJoinerEventArgs* return_result);
}

@uuid("97b4701c-15dc-4b53-b6a4-7d134300d7bf")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynAuthenticationCompleteEventArgs")
interface IAllJoynAuthenticationCompleteEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AuthenticationMechanism(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism* return_value);
	HRESULT get_PeerUniqueName(HSTRING* return_value);
	HRESULT get_Succeeded(bool* return_value);
}

@uuid("f309f153-1eed-42c3-a20e-436d41fe62f6")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusAttachment")
interface IAllJoynBusAttachment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING connectionSpecification, Windows.Devices.AllJoyn.AllJoynBusAttachment* return_result);
}

@uuid("d82e75f4-c02a-41ec-a8d5-eab1558953aa")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusAttachmentStateChangedEventArgs")
interface IAllJoynBusAttachmentStateChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_State(Windows.Devices.AllJoyn.AllJoynBusAttachmentState* return_value);
	HRESULT get_Status(INT32* return_value);
}

@uuid("839d4d3d-1051-40d7-872a-8d0141115b1f")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusAttachment")
interface IAllJoynBusAttachmentStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.Devices.AllJoyn.AllJoynBusAttachment* return_defaultBusAttachment);
	HRESULT abi_GetWatcher(Windows.Foundation.Collections.IIterable!(HSTRING) requiredInterfaces, Windows.Devices.Enumeration.DeviceWatcher* return_deviceWatcher);
}

@uuid("e8fd825e-f73a-490c-8804-04e026643047")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusObject")
interface IAllJoynBusObject : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING objectPath, Windows.Devices.AllJoyn.AllJoynBusObject* return_result);
	HRESULT abi_CreateWithBusAttachment(HSTRING objectPath, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment, Windows.Devices.AllJoyn.AllJoynBusObject* return_result);
}

@uuid("de102115-ef8e-4d42-b93b-a2ae74519766")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs")
interface IAllJoynBusObjectStoppedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(INT32* return_value);
}

@uuid("6b22fd48-d0a3-4255-953a-4772b4028073")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs")
interface IAllJoynBusObjectStoppedEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(INT32 status, Windows.Devices.AllJoyn.AllJoynBusObjectStoppedEventArgs* return_result);
}

@uuid("824650f2-a190-40b1-abab-349ec244dfaa")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynCredentials")
interface IAllJoynCredentials : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SenderUniqueName(HSTRING* return_value);
}

@uuid("34664c2a-8289-43d4-b4a8-3f4de359f043")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynMessageInfo")
interface IAllJoynMessageInfoFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING senderUniqueName, Windows.Devices.AllJoyn.AllJoynMessageInfo* return_result);
}

@uuid("9d084679-469b-495a-a710-ac50f123069f")
interface IAllJoynProducer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetBusObject(Windows.Devices.AllJoyn.AllJoynBusObject busObject);
}

@uuid("51309770-4937-492d-8080-236439987ceb")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynProducerStoppedEventArgs")
interface IAllJoynProducerStoppedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(INT32* return_value);
}

@uuid("56529961-b219-4d6e-9f78-fa3f99fa8fe5")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynProducerStoppedEventArgs")
interface IAllJoynProducerStoppedEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(INT32 status, Windows.Devices.AllJoyn.AllJoynProducerStoppedEventArgs* return_result);
}

@uuid("4cbe8209-b93e-4182-999b-ddd000f9c575")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynServiceInfo")
interface IAllJoynServiceInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UniqueName(HSTRING* return_value);
	HRESULT get_ObjectPath(HSTRING* return_value);
	HRESULT get_SessionPort(UINT16* return_value);
}

@uuid("7581dabd-fe03-4f4b-94a4-f02fdcbd11b8")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynServiceInfo")
interface IAllJoynServiceInfoFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING uniqueName, HSTRING objectPath, UINT16 sessionPort, Windows.Devices.AllJoyn.AllJoynServiceInfo* return_result);
}

@uuid("3057a95f-1d3f-41f3-8969-e32792627396")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynServiceInfoRemovedEventArgs")
interface IAllJoynServiceInfoRemovedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UniqueName(HSTRING* return_value);
}

@uuid("0dbf8627-9aff-4955-9227-6953baf41569")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynServiceInfoRemovedEventArgs")
interface IAllJoynServiceInfoRemovedEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynServiceInfoRemovedEventArgs* return_result);
}

@uuid("5678570a-603a-49fc-b750-0ef13609213c")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynServiceInfo")
interface IAllJoynServiceInfoStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynServiceInfo)* return_operation);
}

@uuid("e8d11b0c-c0d4-406c-88a9-a93efa85d4b1")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSession")
interface IAllJoynSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Session(Windows.Devices.AllJoyn.AllJoynSession* return_value);
}

@uuid("6824d689-d6cb-4d9e-a09e-35806870b17f")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs")
interface IAllJoynSessionJoinedEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Devices.AllJoyn.AllJoynSession session, Windows.Devices.AllJoyn.AllJoynSessionJoinedEventArgs* return_result);
}

@uuid("e766a48a-8bb8-4954-ae67-d2fa43d1f96b")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs")
interface IAllJoynSessionLostEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.Devices.AllJoyn.AllJoynSessionLostReason* return_value);
}

@uuid("13bbfd32-d2f4-49c9-980e-2805e13586b1")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs")
interface IAllJoynSessionLostEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Devices.AllJoyn.AllJoynSessionLostReason reason, Windows.Devices.AllJoyn.AllJoynSessionLostEventArgs* return_result);
}

@uuid("49a2798a-0dd1-46c1-9cd6-27190e503a5e")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs")
interface IAllJoynSessionMemberAddedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UniqueName(HSTRING* return_value);
}

@uuid("341de352-1d33-40a1-a1d3-e5777020e1f1")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs")
interface IAllJoynSessionMemberAddedEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynSessionMemberAddedEventArgs* return_result);
}

@uuid("409a219f-aa4a-4893-b430-baa1b63c6219")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs")
interface IAllJoynSessionMemberRemovedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UniqueName(HSTRING* return_value);
}

@uuid("c4d355e8-42b8-4b67-b757-d0cfcad59280")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs")
interface IAllJoynSessionMemberRemovedEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING uniqueName, Windows.Devices.AllJoyn.AllJoynSessionMemberRemovedEventArgs* return_result);
}

@uuid("9e05d604-a06c-46d4-b46c-0b0b54105b44")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynSession")
interface IAllJoynSessionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetFromServiceInfoAsync(Windows.Devices.AllJoyn.AllJoynServiceInfo serviceInfo, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynSession)* return_operation);
	HRESULT abi_GetFromServiceInfoAndBusAttachmentAsync(Windows.Devices.AllJoyn.AllJoynServiceInfo serviceInfo, Windows.Devices.AllJoyn.AllJoynBusAttachment busAttachment, Windows.Foundation.IAsyncOperation!(Windows.Devices.AllJoyn.AllJoynSession)* return_operation);
}

@uuid("d0b7a17e-0d29-4da9-8ac6-54c554bedbc5")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynStatus")
interface IAllJoynStatusStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(INT32* return_value);
}

@uuid("878fa5a8-2d50-47e1-904a-20bf0d48c782")
@WinrtFactory("Windows.Devices.AllJoyn.AllJoynWatcherStoppedEventArgs")
interface IAllJoynWatcherStoppedEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(INT32 status, Windows.Devices.AllJoyn.AllJoynWatcherStoppedEventArgs* return_result);
}

interface AllJoynAboutData : Windows.Devices.AllJoyn.IAllJoynAboutData
{
}

interface AllJoynAboutDataView : Windows.Devices.AllJoyn.IAllJoynAboutDataView
{
}

interface AllJoynAcceptSessionJoinerEventArgs : Windows.Devices.AllJoyn.IAllJoynAcceptSessionJoinerEventArgs
{
}

interface AllJoynAuthenticationCompleteEventArgs : Windows.Devices.AllJoyn.IAllJoynAuthenticationCompleteEventArgs
{
}

interface AllJoynBusAttachment : Windows.Devices.AllJoyn.IAllJoynBusAttachment, Windows.Devices.AllJoyn.IAllJoynBusAttachment2
{
}

interface AllJoynBusAttachmentStateChangedEventArgs : Windows.Devices.AllJoyn.IAllJoynBusAttachmentStateChangedEventArgs
{
}

interface AllJoynBusObject : Windows.Devices.AllJoyn.IAllJoynBusObject
{
}

interface AllJoynBusObjectStoppedEventArgs : Windows.Devices.AllJoyn.IAllJoynBusObjectStoppedEventArgs
{
}

interface AllJoynCredentials : Windows.Devices.AllJoyn.IAllJoynCredentials
{
}

interface AllJoynCredentialsRequestedEventArgs : Windows.Devices.AllJoyn.IAllJoynCredentialsRequestedEventArgs
{
}

interface AllJoynCredentialsVerificationRequestedEventArgs : Windows.Devices.AllJoyn.IAllJoynCredentialsVerificationRequestedEventArgs
{
}

interface AllJoynMessageInfo : Windows.Devices.AllJoyn.IAllJoynMessageInfo
{
}

interface AllJoynProducerStoppedEventArgs : Windows.Devices.AllJoyn.IAllJoynProducerStoppedEventArgs
{
}

interface AllJoynServiceInfo : Windows.Devices.AllJoyn.IAllJoynServiceInfo
{
}

interface AllJoynServiceInfoRemovedEventArgs : Windows.Devices.AllJoyn.IAllJoynServiceInfoRemovedEventArgs
{
}

interface AllJoynSession : Windows.Devices.AllJoyn.IAllJoynSession
{
}

interface AllJoynSessionJoinedEventArgs : Windows.Devices.AllJoyn.IAllJoynSessionJoinedEventArgs
{
}

interface AllJoynSessionLostEventArgs : Windows.Devices.AllJoyn.IAllJoynSessionLostEventArgs
{
}

interface AllJoynSessionMemberAddedEventArgs : Windows.Devices.AllJoyn.IAllJoynSessionMemberAddedEventArgs
{
}

interface AllJoynSessionMemberRemovedEventArgs : Windows.Devices.AllJoyn.IAllJoynSessionMemberRemovedEventArgs
{
}

interface AllJoynStatus
{
}

interface AllJoynWatcherStoppedEventArgs : Windows.Devices.AllJoyn.IAllJoynWatcherStoppedEventArgs
{
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