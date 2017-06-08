module Windows.Networking.Vpn;

import dwinrt;

@uuid("7b06a635-5c58-41d9-94a7-bfbcf1d8ca54")
@WinrtFactory("Windows.Networking.Vpn.VpnAppId")
interface IVpnAppId : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Type(Windows.Networking.Vpn.VpnAppIdType* return_value);
	HRESULT set_Type(Windows.Networking.Vpn.VpnAppIdType value);
	HRESULT get_Value(HSTRING* return_value);
	HRESULT set_Value(HSTRING value);
}

@uuid("46adfd2a-0aab-4fdb-821d-d3ddc919788b")
@WinrtFactory("Windows.Networking.Vpn.VpnAppId")
interface IVpnAppIdFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Networking.Vpn.VpnAppIdType type, HSTRING value, Windows.Networking.Vpn.VpnAppId* return_result);
}

@uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3")
@WinrtFactory("Windows.Networking.Vpn.VpnChannel")
interface IVpnChannel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AssociateTransport(IInspectable mainOuterTunnelTransport, IInspectable optionalOuterTunnelTransport);
	HRESULT abi_Start(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv4list, Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv6list, Windows.Networking.Vpn.VpnInterfaceId vpnInterfaceId, Windows.Networking.Vpn.VpnRouteAssignment routeScope, Windows.Networking.Vpn.VpnNamespaceAssignment namespaceScope, UINT32 mtuSize, UINT32 maxFrameSize, bool optimizeForLowCostNetwork, IInspectable mainOuterTunnelTransport, IInspectable optionalOuterTunnelTransport);
	HRESULT abi_Stop();
	HRESULT abi_RequestCredentials(Windows.Networking.Vpn.VpnCredentialType credType, bool isRetry, bool isSingleSignOnCredential, Windows.Security.Cryptography.Certificates.Certificate certificate, Windows.Networking.Vpn.VpnPickedCredential* return_credential);
	HRESULT abi_RequestVpnPacketBuffer(Windows.Networking.Vpn.VpnDataPathType type, Windows.Networking.Vpn.VpnPacketBuffer* out_vpnPacketBuffer);
	HRESULT abi_LogDiagnosticMessage(HSTRING message);
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_Configuration(Windows.Networking.Vpn.VpnChannelConfiguration* return_value);
	HRESULT add_ActivityChange(Windows.Foundation.TypedEventHandler!(Windows.Networking.Vpn.VpnChannel, Windows.Networking.Vpn.VpnChannelActivityEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ActivityChange(EventRegistrationToken token);
	HRESULT set_PlugInContext(IInspectable value);
	HRESULT get_PlugInContext(IInspectable* return_value);
	HRESULT get_SystemHealth(Windows.Networking.Vpn.VpnSystemHealth* return_value);
	HRESULT abi_RequestCustomPrompt(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Vpn.IVpnCustomPrompt) customPrompt);
	HRESULT abi_SetErrorMessage(HSTRING message);
	HRESULT abi_SetAllowedSslTlsVersions(IInspectable tunnelTransport, bool useTls12);
}

@uuid("2255d165-993b-4629-ad60-f1c3f3537f50")
@WinrtFactory("Windows.Networking.Vpn.VpnChannel")
interface IVpnChannel2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_StartWithMainTransport(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv4list, Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv6list, Windows.Networking.Vpn.VpnInterfaceId vpnInterfaceId, Windows.Networking.Vpn.VpnRouteAssignment assignedRoutes, Windows.Networking.Vpn.VpnDomainNameAssignment assignedDomainName, UINT32 mtuSize, UINT32 maxFrameSize, bool Reserved, IInspectable mainOuterTunnelTransport);
	HRESULT abi_StartExistingTransports(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv4list, Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv6list, Windows.Networking.Vpn.VpnInterfaceId vpnInterfaceId, Windows.Networking.Vpn.VpnRouteAssignment assignedRoutes, Windows.Networking.Vpn.VpnDomainNameAssignment assignedDomainName, UINT32 mtuSize, UINT32 maxFrameSize, bool Reserved);
	HRESULT add_ActivityStateChange(Windows.Foundation.TypedEventHandler!(Windows.Networking.Vpn.VpnChannel, Windows.Networking.Vpn.VpnChannelActivityStateChangedArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ActivityStateChange(EventRegistrationToken token);
	HRESULT abi_GetVpnSendPacketBuffer(Windows.Networking.Vpn.VpnPacketBuffer* return_vpnSendPacketBuffer);
	HRESULT abi_GetVpnReceivePacketBuffer(Windows.Networking.Vpn.VpnPacketBuffer* return_vpnReceivePacketBuffer);
	HRESULT abi_RequestCustomPromptAsync(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Vpn.IVpnCustomPromptElement) customPromptElement, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_RequestCredentialsWithCertificateAsync(Windows.Networking.Vpn.VpnCredentialType credType, UINT32 credOptions, Windows.Security.Cryptography.Certificates.Certificate certificate, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnCredential)* return_credential);
	HRESULT abi_RequestCredentialsWithOptionsAsync(Windows.Networking.Vpn.VpnCredentialType credType, UINT32 credOptions, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnCredential)* return_credential);
	HRESULT abi_RequestCredentialsSimpleAsync(Windows.Networking.Vpn.VpnCredentialType credType, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnCredential)* return_credential);
	HRESULT abi_TerminateConnection(HSTRING message);
	HRESULT abi_StartWithTrafficFilter(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIpv4List, Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIpv6List, Windows.Networking.Vpn.VpnInterfaceId vpnInterfaceId, Windows.Networking.Vpn.VpnRouteAssignment assignedRoutes, Windows.Networking.Vpn.VpnDomainNameAssignment assignedNamespace, UINT32 mtuSize, UINT32 maxFrameSize, bool reserved, IInspectable mainOuterTunnelTransport, IInspectable optionalOuterTunnelTransport, Windows.Networking.Vpn.VpnTrafficFilterAssignment assignedTrafficFilters);
}

@uuid("a36c88f2-afdc-4775-855d-d4ac0a35fc55")
@WinrtFactory("Windows.Networking.Vpn.VpnChannelActivityEventArgs")
interface IVpnChannelActivityEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Type(Windows.Networking.Vpn.VpnChannelActivityEventType* return_value);
}

@uuid("3d750565-fdc0-4bbe-a23b-45fffc6d97a1")
@WinrtFactory("Windows.Networking.Vpn.VpnChannelActivityStateChangedArgs")
interface IVpnChannelActivityStateChangedArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ActivityState(Windows.Networking.Vpn.VpnChannelActivityEventType* return_value);
}

@uuid("0e2ddca2-2012-4fe4-b179-8c652c6d107e")
@WinrtFactory("Windows.Networking.Vpn.VpnChannelConfiguration")
interface IVpnChannelConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServerServiceName(HSTRING* return_value);
	HRESULT get_ServerHostNameList(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName)* return_value);
	HRESULT get_CustomField(HSTRING* return_value);
}

@uuid("f30b574c-7824-471c-a118-63dbc93ae4c7")
@WinrtFactory("Windows.Networking.Vpn.VpnChannelConfiguration")
interface IVpnChannelConfiguration2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServerUris(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri)* return_value);
}

@uuid("88eb062d-e818-4ffd-98a6-363e3736c95d")
interface IVpnChannelStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ProcessEventAsync(IInspectable thirdPartyPlugIn, IInspectable event);
}

@uuid("b7e78af3-a46d-404b-8729-1832522853ac")
interface IVpnCredential : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PasskeyCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT get_CertificateCredential(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_AdditionalPin(HSTRING* return_value);
	HRESULT get_OldPasswordCredential(Windows.Security.Credentials.PasswordCredential* return_value);
}

@uuid("43878753-03c5-4e61-93d7-a957714c4282")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomCheckBox")
interface IVpnCustomCheckBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_InitialCheckState(bool value);
	HRESULT get_InitialCheckState(bool* return_value);
	HRESULT get_Checked(bool* return_value);
}

@uuid("9a24158e-dba1-4c6f-8270-dcf3c9761c4c")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomComboBox")
interface IVpnCustomComboBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_OptionsText(Windows.Foundation.Collections.IVectorView!(HSTRING) value);
	HRESULT get_OptionsText(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Selected(UINT32* return_value);
}

@uuid("3002d9a0-cfbf-4c0b-8f3c-66f503c20b39")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomEditBox")
interface IVpnCustomEditBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_DefaultText(HSTRING value);
	HRESULT get_DefaultText(HSTRING* return_value);
	HRESULT set_NoEcho(bool value);
	HRESULT get_NoEcho(bool* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244")
interface IVpnCustomPrompt : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Label(HSTRING value);
	HRESULT get_Label(HSTRING* return_value);
	HRESULT set_Compulsory(bool value);
	HRESULT get_Compulsory(bool* return_value);
	HRESULT set_Bordered(bool value);
	HRESULT get_Bordered(bool* return_value);
}

@uuid("c4c9a69e-ff47-4527-9f27-a49292019979")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomPromptBooleanInput")
interface IVpnCustomPromptBooleanInput : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_InitialValue(bool value);
	HRESULT get_InitialValue(bool* return_value);
	HRESULT get_Value(bool* return_value);
}

@uuid("73bd5638-6f04-404d-93dd-50a44924a38b")
interface IVpnCustomPromptElement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT set_Compulsory(bool value);
	HRESULT get_Compulsory(bool* return_value);
	HRESULT set_Emphasized(bool value);
	HRESULT get_Emphasized(bool* return_value);
}

@uuid("3b8f34d9-8ec1-4e95-9a4e-7ba64d38f330")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomPromptOptionSelector")
interface IVpnCustomPromptOptionSelector : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Options(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_SelectedIndex(UINT32* return_value);
}

@uuid("3bc8bdee-3a42-49a3-abdd-07b2edea752d")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomPromptText")
interface IVpnCustomPromptText : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Text(HSTRING value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("c9da9c75-913c-47d5-88ba-48fc48930235")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomPromptTextInput")
interface IVpnCustomPromptTextInput : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_PlaceholderText(HSTRING value);
	HRESULT get_PlaceholderText(HSTRING* return_value);
	HRESULT set_IsTextHidden(bool value);
	HRESULT get_IsTextHidden(bool* return_value);
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("daa4c3ca-8f23-4d36-91f1-76d937827942")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomTextBox")
interface IVpnCustomTextBox : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_DisplayText(HSTRING value);
	HRESULT get_DisplayText(HSTRING* return_value);
}

@uuid("4135b141-ccdb-49b5-9401-039a8ae767e9")
@WinrtFactory("Windows.Networking.Vpn.VpnDomainNameAssignment")
interface IVpnDomainNameAssignment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DomainNameList(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnDomainNameInfo)* return_value);
	HRESULT set_ProxyAutoConfigurationUri(Windows.Foundation.Uri value);
	HRESULT get_ProxyAutoConfigurationUri(Windows.Foundation.Uri* return_value);
}

@uuid("ad2eb82f-ea8e-4f7a-843e-1a87e32e1b9a")
@WinrtFactory("Windows.Networking.Vpn.VpnDomainNameInfo")
interface IVpnDomainNameInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_DomainName(Windows.Networking.HostName value);
	HRESULT get_DomainName(Windows.Networking.HostName* return_value);
	HRESULT set_DomainNameType(Windows.Networking.Vpn.VpnDomainNameType value);
	HRESULT get_DomainNameType(Windows.Networking.Vpn.VpnDomainNameType* return_value);
	HRESULT get_DnsServers(Windows.Foundation.Collections.IVector!(Windows.Networking.HostName)* return_value);
	HRESULT get_WebProxyServers(Windows.Foundation.Collections.IVector!(Windows.Networking.HostName)* return_value);
}

@uuid("ab871151-6c53-4828-9883-d886de104407")
@WinrtFactory("Windows.Networking.Vpn.VpnDomainNameInfo")
interface IVpnDomainNameInfo2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_WebProxyUris(Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri)* return_value);
}

@uuid("2507bb75-028f-4688-8d3a-c4531df37da8")
interface IVpnDomainNameInfoFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateVpnDomainNameInfo(HSTRING name, Windows.Networking.Vpn.VpnDomainNameType nameType, Windows.Foundation.Collections.IIterable!(Windows.Networking.HostName) dnsServerList, Windows.Foundation.Collections.IIterable!(Windows.Networking.HostName) proxyServerList, Windows.Networking.Vpn.VpnDomainNameInfo* return_domainNameInfo);
}

@uuid("9e2ddca2-1712-4ce4-b179-8c652c6d1011")
@WinrtFactory("Windows.Networking.Vpn.VpnInterfaceId")
interface IVpnInterfaceId : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAddressInfo(UINT32* out___idSize, BYTE** out_id);
}

@uuid("9e2ddca2-1712-4ce4-b179-8c652c6d1000")
interface IVpnInterfaceIdFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateVpnInterfaceId(UINT32 __addressSize, BYTE* address, Windows.Networking.Vpn.VpnInterfaceId* return_vpnInterfaceId);
}

@uuid("193696cd-a5c4-4abe-852b-785be4cb3e34")
@WinrtFactory("Windows.Networking.Vpn.VpnManagementAgent")
interface IVpnManagementAgent : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddProfileFromXmlAsync(HSTRING xml, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus)* return_operation);
	HRESULT abi_AddProfileFromObjectAsync(Windows.Networking.Vpn.IVpnProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus)* return_operation);
	HRESULT abi_UpdateProfileFromXmlAsync(HSTRING xml, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus)* return_operation);
	HRESULT abi_UpdateProfileFromObjectAsync(Windows.Networking.Vpn.IVpnProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus)* return_operation);
	HRESULT abi_GetProfilesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Vpn.IVpnProfile))* return_operation);
	HRESULT abi_DeleteProfileAsync(Windows.Networking.Vpn.IVpnProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus)* return_operation);
	HRESULT abi_ConnectProfileAsync(Windows.Networking.Vpn.IVpnProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus)* return_operation);
	HRESULT abi_ConnectProfileWithPasswordCredentialAsync(Windows.Networking.Vpn.IVpnProfile profile, Windows.Security.Credentials.PasswordCredential passwordCredential, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus)* return_operation);
	HRESULT abi_DisconnectProfileAsync(Windows.Networking.Vpn.IVpnProfile profile, Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus)* return_operation);
}

@uuid("d7f7db18-307d-4c0e-bd62-8fa270bbadd6")
@WinrtFactory("Windows.Networking.Vpn.VpnNamespaceAssignment")
interface IVpnNamespaceAssignment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_NamespaceList(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnNamespaceInfo) value);
	HRESULT get_NamespaceList(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnNamespaceInfo)* return_value);
	HRESULT set_ProxyAutoConfigUri(Windows.Foundation.Uri value);
	HRESULT get_ProxyAutoConfigUri(Windows.Foundation.Uri* return_value);
}

@uuid("30edfb43-444f-44c5-8167-a35a91f1af94")
@WinrtFactory("Windows.Networking.Vpn.VpnNamespaceInfo")
interface IVpnNamespaceInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Namespace(HSTRING value);
	HRESULT get_Namespace(HSTRING* return_value);
	HRESULT set_DnsServers(Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) value);
	HRESULT get_DnsServers(Windows.Foundation.Collections.IVector!(Windows.Networking.HostName)* return_value);
	HRESULT set_WebProxyServers(Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) value);
	HRESULT get_WebProxyServers(Windows.Foundation.Collections.IVector!(Windows.Networking.HostName)* return_value);
}

@uuid("cb3e951a-b0ce-442b-acbb-5f99b202c31c")
interface IVpnNamespaceInfoFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateVpnNamespaceInfo(HSTRING name, Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) dnsServerList, Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) proxyServerList, Windows.Networking.Vpn.VpnNamespaceInfo* return_namespaceInfo);
}

@uuid("a4aee29e-6417-4333-9842-f0a66db69802")
@WinrtFactory("Windows.Networking.Vpn.VpnNativeProfile")
interface IVpnNativeProfile : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Servers(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_RoutingPolicyType(Windows.Networking.Vpn.VpnRoutingPolicyType* return_value);
	HRESULT set_RoutingPolicyType(Windows.Networking.Vpn.VpnRoutingPolicyType value);
	HRESULT get_NativeProtocolType(Windows.Networking.Vpn.VpnNativeProtocolType* return_value);
	HRESULT set_NativeProtocolType(Windows.Networking.Vpn.VpnNativeProtocolType value);
	HRESULT get_UserAuthenticationMethod(Windows.Networking.Vpn.VpnAuthenticationMethod* return_value);
	HRESULT set_UserAuthenticationMethod(Windows.Networking.Vpn.VpnAuthenticationMethod value);
	HRESULT get_TunnelAuthenticationMethod(Windows.Networking.Vpn.VpnAuthenticationMethod* return_value);
	HRESULT set_TunnelAuthenticationMethod(Windows.Networking.Vpn.VpnAuthenticationMethod value);
	HRESULT get_EapConfiguration(HSTRING* return_Value);
	HRESULT set_EapConfiguration(HSTRING value);
}

@uuid("0fec2467-cdb5-4ac7-b5a3-0afb5ec47682")
@WinrtFactory("Windows.Networking.Vpn.VpnNativeProfile")
interface IVpnNativeProfile2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RequireVpnClientAppUI(bool* return_value);
	HRESULT set_RequireVpnClientAppUI(bool value);
	HRESULT get_ConnectionStatus(Windows.Networking.Vpn.VpnManagementConnectionStatus* return_value);
}

@uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce55")
@WinrtFactory("Windows.Networking.Vpn.VpnPacketBuffer")
interface IVpnPacketBuffer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Buffer(Windows.Storage.Streams.Buffer* return_value);
	HRESULT set_Status(Windows.Networking.Vpn.VpnPacketBufferStatus value);
	HRESULT get_Status(Windows.Networking.Vpn.VpnPacketBufferStatus* return_value);
	HRESULT set_TransportAffinity(UINT32 value);
	HRESULT get_TransportAffinity(UINT32* return_value);
}

@uuid("665e91f0-8805-4bf5-a619-2e84882e6b4f")
@WinrtFactory("Windows.Networking.Vpn.VpnPacketBuffer")
interface IVpnPacketBuffer2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppId(Windows.Networking.Vpn.VpnAppId* return_value);
}

@uuid("9e2ddca2-1712-4ce4-b179-8c652c6d9999")
interface IVpnPacketBufferFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateVpnPacketBuffer(Windows.Networking.Vpn.VpnPacketBuffer parentBuffer, UINT32 offset, UINT32 length, Windows.Networking.Vpn.VpnPacketBuffer* return_vpnPacketBuffer);
}

@uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77")
@WinrtFactory("Windows.Networking.Vpn.VpnPacketBufferList")
interface IVpnPacketBufferList : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Append(Windows.Networking.Vpn.VpnPacketBuffer nextVpnPacketBuffer);
	HRESULT abi_AddAtBegin(Windows.Networking.Vpn.VpnPacketBuffer nextVpnPacketBuffer);
	HRESULT abi_RemoveAtEnd(Windows.Networking.Vpn.VpnPacketBuffer* return_nextVpnPacketBuffer);
	HRESULT abi_RemoveAtBegin(Windows.Networking.Vpn.VpnPacketBuffer* return_nextVpnPacketBuffer);
	HRESULT abi_Clear();
	HRESULT set_Status(Windows.Networking.Vpn.VpnPacketBufferStatus value);
	HRESULT get_Status(Windows.Networking.Vpn.VpnPacketBufferStatus* return_value);
	HRESULT get_Size(UINT32* return_value);
}

@uuid("3e7acfe5-ea1e-482a-8d98-c065f57d89ea")
@WinrtFactory("Windows.Networking.Vpn.VpnPacketBufferList")
interface IVpnPacketBufferList2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddLeadingPacket(Windows.Networking.Vpn.VpnPacketBuffer nextVpnPacketBuffer);
	HRESULT abi_RemoveLeadingPacket(Windows.Networking.Vpn.VpnPacketBuffer* return_nextVpnPacketBuffer);
	HRESULT abi_AddTrailingPacket(Windows.Networking.Vpn.VpnPacketBuffer nextVpnPacketBuffer);
	HRESULT abi_RemoveTrailingPacket(Windows.Networking.Vpn.VpnPacketBuffer* return_nextVpnPacketBuffer);
}

@uuid("9a793ac7-8854-4e52-ad97-24dd9a842bce")
@WinrtFactory("Windows.Networking.Vpn.VpnPickedCredential")
interface IVpnPickedCredential : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PasskeyCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT get_AdditionalPin(HSTRING* return_value);
	HRESULT get_OldPasswordCredential(Windows.Security.Credentials.PasswordCredential* return_value);
}

@uuid("ceb78d07-d0a8-4703-a091-c8c2c0915bc4")
interface IVpnPlugIn : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Connect(Windows.Networking.Vpn.VpnChannel channel);
	HRESULT abi_Disconnect(Windows.Networking.Vpn.VpnChannel channel);
	HRESULT abi_GetKeepAlivePayload(Windows.Networking.Vpn.VpnChannel channel, Windows.Networking.Vpn.VpnPacketBuffer* out_keepAlivePacket);
	HRESULT abi_Encapsulate(Windows.Networking.Vpn.VpnChannel channel, Windows.Networking.Vpn.VpnPacketBufferList packets, Windows.Networking.Vpn.VpnPacketBufferList encapulatedPackets);
	HRESULT abi_Decapsulate(Windows.Networking.Vpn.VpnChannel channel, Windows.Networking.Vpn.VpnPacketBuffer encapBuffer, Windows.Networking.Vpn.VpnPacketBufferList decapsulatedPackets, Windows.Networking.Vpn.VpnPacketBufferList controlPacketsToSend);
}

@uuid("0edf0da4-4f00-4589-8d7b-4bf988f6542c")
@WinrtFactory("Windows.Networking.Vpn.VpnPlugInProfile")
interface IVpnPlugInProfile : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ServerUris(Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri)* return_value);
	HRESULT get_CustomConfiguration(HSTRING* return_value);
	HRESULT set_CustomConfiguration(HSTRING value);
	HRESULT get_VpnPluginPackageFamilyName(HSTRING* return_value);
	HRESULT set_VpnPluginPackageFamilyName(HSTRING value);
}

@uuid("611c4892-cf94-4ad6-ba99-00f4ff34565e")
@WinrtFactory("Windows.Networking.Vpn.VpnPlugInProfile")
interface IVpnPlugInProfile2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RequireVpnClientAppUI(bool* return_value);
	HRESULT set_RequireVpnClientAppUI(bool value);
	HRESULT get_ConnectionStatus(Windows.Networking.Vpn.VpnManagementConnectionStatus* return_value);
}

@uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a")
interface IVpnProfile : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProfileName(HSTRING* return_value);
	HRESULT set_ProfileName(HSTRING value);
	HRESULT get_AppTriggers(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnAppId)* return_value);
	HRESULT get_Routes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute)* return_value);
	HRESULT get_DomainNameInfoList(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnDomainNameInfo)* return_value);
	HRESULT get_TrafficFilters(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnTrafficFilter)* return_value);
	HRESULT get_RememberCredentials(bool* return_value);
	HRESULT set_RememberCredentials(bool value);
	HRESULT get_AlwaysOn(bool* return_value);
	HRESULT set_AlwaysOn(bool value);
}

@uuid("b5731b83-0969-4699-938e-7776db29cfb3")
@WinrtFactory("Windows.Networking.Vpn.VpnRoute")
interface IVpnRoute : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Address(Windows.Networking.HostName value);
	HRESULT get_Address(Windows.Networking.HostName* return_value);
	HRESULT set_PrefixSize(BYTE value);
	HRESULT get_PrefixSize(BYTE* return_value);
}

@uuid("db64de22-ce39-4a76-9550-f61039f80e48")
@WinrtFactory("Windows.Networking.Vpn.VpnRouteAssignment")
interface IVpnRouteAssignment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Ipv4InclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) value);
	HRESULT set_Ipv6InclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) value);
	HRESULT get_Ipv4InclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute)* return_value);
	HRESULT get_Ipv6InclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute)* return_value);
	HRESULT set_Ipv4ExclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) value);
	HRESULT set_Ipv6ExclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) value);
	HRESULT get_Ipv4ExclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute)* return_value);
	HRESULT get_Ipv6ExclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute)* return_value);
	HRESULT set_ExcludeLocalSubnets(bool value);
	HRESULT get_ExcludeLocalSubnets(bool* return_value);
}

@uuid("bdeab5ff-45cf-4b99-83fb-db3bc2672b02")
interface IVpnRouteFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateVpnRoute(Windows.Networking.HostName address, BYTE prefixSize, Windows.Networking.Vpn.VpnRoute* return_route);
}

@uuid("99a8f8af-c0ee-4e75-817a-f231aee5123d")
@WinrtFactory("Windows.Networking.Vpn.VpnSystemHealth")
interface IVpnSystemHealth : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StatementOfHealth(Windows.Storage.Streams.Buffer* return_value);
}

@uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50")
@WinrtFactory("Windows.Networking.Vpn.VpnTrafficFilter")
interface IVpnTrafficFilter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AppId(Windows.Networking.Vpn.VpnAppId* return_value);
	HRESULT set_AppId(Windows.Networking.Vpn.VpnAppId value);
	HRESULT get_AppClaims(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Protocol(Windows.Networking.Vpn.VpnIPProtocol* return_value);
	HRESULT set_Protocol(Windows.Networking.Vpn.VpnIPProtocol value);
	HRESULT get_LocalPortRanges(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_RemotePortRanges(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_LocalAddressRanges(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_RemoteAddressRanges(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_RoutingPolicyType(Windows.Networking.Vpn.VpnRoutingPolicyType* return_value);
	HRESULT set_RoutingPolicyType(Windows.Networking.Vpn.VpnRoutingPolicyType value);
}

@uuid("56ccd45c-e664-471e-89cd-601603b9e0f3")
@WinrtFactory("Windows.Networking.Vpn.VpnTrafficFilterAssignment")
interface IVpnTrafficFilterAssignment : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TrafficFilterList(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnTrafficFilter)* return_value);
	HRESULT get_AllowOutbound(bool* return_value);
	HRESULT set_AllowOutbound(bool value);
	HRESULT get_AllowInbound(bool* return_value);
	HRESULT set_AllowInbound(bool value);
}

@uuid("480d41d5-7f99-474c-86ee-96df168318f1")
@WinrtFactory("Windows.Networking.Vpn.VpnTrafficFilter")
interface IVpnTrafficFilterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Networking.Vpn.VpnAppId appId, Windows.Networking.Vpn.VpnTrafficFilter* return_result);
}

interface VpnAppId
{
}

interface VpnChannel
{
}

interface VpnChannelActivityEventArgs
{
}

interface VpnChannelActivityStateChangedArgs
{
}

interface VpnChannelConfiguration
{
}

interface VpnCredential
{
}

interface VpnCustomCheckBox
{
}

interface VpnCustomComboBox
{
}

interface VpnCustomEditBox
{
}

interface VpnCustomErrorBox
{
}

interface VpnCustomPromptBooleanInput
{
}

interface VpnCustomPromptOptionSelector
{
}

interface VpnCustomPromptText
{
}

interface VpnCustomPromptTextInput
{
}

interface VpnCustomTextBox
{
}

interface VpnDomainNameAssignment
{
}

interface VpnDomainNameInfo
{
}

interface VpnInterfaceId
{
}

interface VpnManagementAgent
{
}

interface VpnNamespaceAssignment
{
}

interface VpnNamespaceInfo
{
}

interface VpnNativeProfile
{
}

interface VpnPacketBuffer
{
}

interface VpnPacketBufferList
{
}

interface VpnPickedCredential
{
}

interface VpnPlugInProfile
{
}

interface VpnRoute
{
}

interface VpnRouteAssignment
{
}

interface VpnSystemHealth
{
}

interface VpnTrafficFilter
{
}

interface VpnTrafficFilterAssignment
{
}

enum VpnAppIdType
{
	PackageFamilyName = 0,
	FullyQualifiedBinaryName = 1,
	FilePath = 2
}

enum VpnAuthenticationMethod
{
	Mschapv2 = 0,
	Eap = 1,
	Certificate = 2,
	PresharedKey = 3
}

enum VpnChannelActivityEventType
{
	Idle = 0,
	Active = 1
}

@bitflags
enum VpnChannelRequestCredentialsOptions
{
	None = 0x0,
	Retrying = 0x1,
	UseForSingleSignIn = 0x2
}

enum VpnCredentialType
{
	UsernamePassword = 0,
	UsernameOtpPin = 1,
	UsernamePasswordAndPin = 2,
	UsernamePasswordChange = 3,
	SmartCard = 4,
	ProtectedCertificate = 5,
	UnProtectedCertificate = 6
}

enum VpnDataPathType
{
	Send = 0,
	Receive = 1
}

enum VpnDomainNameType
{
	Suffix = 0,
	FullyQualified = 1,
	Reserved = 65535
}

enum VpnIPProtocol
{
	None = 0,
	Tcp = 6,
	Udp = 17,
	Icmp = 1,
	Ipv6Icmp = 58,
	Igmp = 2,
	Pgm = 113
}

enum VpnManagementConnectionStatus
{
	Disconnected = 0,
	Disconnecting = 1,
	Connected = 2,
	Connecting = 3
}

enum VpnManagementErrorStatus
{
	Ok = 0,
	Other = 1,
	InvalidXmlSyntax = 2,
	ProfileNameTooLong = 3,
	ProfileInvalidAppId = 4,
	AccessDenied = 5,
	CannotFindProfile = 6,
	AlreadyDisconnecting = 7,
	AlreadyConnected = 8,
	GeneralAuthenticationFailure = 9,
	EapFailure = 10,
	SmartCardFailure = 11,
	CertificateFailure = 12,
	ServerConfiguration = 13,
	NoConnection = 14,
	ServerConnection = 15,
	UserNamePassword = 16,
	DnsNotResolvable = 17,
	InvalidIP = 18
}

enum VpnNativeProtocolType
{
	Pptp = 0,
	L2tp = 1,
	IpsecIkev2 = 2
}

enum VpnPacketBufferStatus
{
	Ok = 0,
	InvalidBufferSize = 1
}

enum VpnRoutingPolicyType
{
	SplitRouting = 0,
	ForceAllTrafficOverVpn = 1
}