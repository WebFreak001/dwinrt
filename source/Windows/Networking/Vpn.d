module Windows.Networking.Vpn;

import dwinrt;

@uuid("7b06a635-5c58-41d9-94a7-bfbcf1d8ca54")
@WinrtFactory("Windows.Networking.Vpn.VpnAppId")
interface IVpnAppId : IInspectable
{
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
extern(Windows):
	HRESULT abi_Create(Windows.Networking.Vpn.VpnAppIdType type, HSTRING value, Windows.Networking.Vpn.VpnAppId* return_result);
}

@uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3")
@WinrtFactory("Windows.Networking.Vpn.VpnChannel")
interface IVpnChannel : IInspectable
{
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
extern(Windows):
	HRESULT get_Type(Windows.Networking.Vpn.VpnChannelActivityEventType* return_value);
}

@uuid("3d750565-fdc0-4bbe-a23b-45fffc6d97a1")
@WinrtFactory("Windows.Networking.Vpn.VpnChannelActivityStateChangedArgs")
interface IVpnChannelActivityStateChangedArgs : IInspectable
{
extern(Windows):
	HRESULT get_ActivityState(Windows.Networking.Vpn.VpnChannelActivityEventType* return_value);
}

@uuid("0e2ddca2-2012-4fe4-b179-8c652c6d107e")
@WinrtFactory("Windows.Networking.Vpn.VpnChannelConfiguration")
interface IVpnChannelConfiguration : IInspectable
{
extern(Windows):
	HRESULT get_ServerServiceName(HSTRING* return_value);
	HRESULT get_ServerHostNameList(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName)* return_value);
	HRESULT get_CustomField(HSTRING* return_value);
}

@uuid("f30b574c-7824-471c-a118-63dbc93ae4c7")
@WinrtFactory("Windows.Networking.Vpn.VpnChannelConfiguration")
interface IVpnChannelConfiguration2 : IInspectable
{
extern(Windows):
	HRESULT get_ServerUris(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri)* return_value);
}

@uuid("88eb062d-e818-4ffd-98a6-363e3736c95d")
interface IVpnChannelStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ProcessEventAsync(IInspectable thirdPartyPlugIn, IInspectable event);
}

@uuid("b7e78af3-a46d-404b-8729-1832522853ac")
interface IVpnCredential : IInspectable
{
extern(Windows):
	HRESULT get_PasskeyCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT get_CertificateCredential(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_AdditionalPin(HSTRING* return_value);
	HRESULT get_OldPasswordCredential(Windows.Security.Credentials.PasswordCredential* return_value);
}

@uuid("43878753-03c5-4e61-93d7-a957714c4282")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomCheckBox")
interface IVpnCustomCheckBox_Base : IInspectable
{
extern(Windows):
	HRESULT set_InitialCheckState(bool value);
	HRESULT get_InitialCheckState(bool* return_value);
	HRESULT get_Checked(bool* return_value);
}
@uuid("43878753-03c5-4e61-93d7-a957714c4282")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomCheckBox")
interface IVpnCustomCheckBox : IVpnCustomCheckBox_Base, Windows.Networking.Vpn.IVpnCustomPrompt {}

@uuid("9a24158e-dba1-4c6f-8270-dcf3c9761c4c")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomComboBox")
interface IVpnCustomComboBox_Base : IInspectable
{
extern(Windows):
	HRESULT set_OptionsText(Windows.Foundation.Collections.IVectorView!(HSTRING) value);
	HRESULT get_OptionsText(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Selected(UINT32* return_value);
}
@uuid("9a24158e-dba1-4c6f-8270-dcf3c9761c4c")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomComboBox")
interface IVpnCustomComboBox : IVpnCustomComboBox_Base, Windows.Networking.Vpn.IVpnCustomPrompt {}

@uuid("3002d9a0-cfbf-4c0b-8f3c-66f503c20b39")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomEditBox")
interface IVpnCustomEditBox_Base : IInspectable
{
extern(Windows):
	HRESULT set_DefaultText(HSTRING value);
	HRESULT get_DefaultText(HSTRING* return_value);
	HRESULT set_NoEcho(bool value);
	HRESULT get_NoEcho(bool* return_value);
	HRESULT get_Text(HSTRING* return_value);
}
@uuid("3002d9a0-cfbf-4c0b-8f3c-66f503c20b39")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomEditBox")
interface IVpnCustomEditBox : IVpnCustomEditBox_Base, Windows.Networking.Vpn.IVpnCustomPrompt {}

@uuid("9ec4efb2-c942-42af-b223-588b48328721")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomErrorBox")
interface IVpnCustomErrorBox_Base : IInspectable
{
}
@uuid("9ec4efb2-c942-42af-b223-588b48328721")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomErrorBox")
interface IVpnCustomErrorBox : IVpnCustomErrorBox_Base, Windows.Networking.Vpn.IVpnCustomPrompt {}

@uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244")
interface IVpnCustomPrompt : IInspectable
{
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
interface IVpnCustomPromptBooleanInput_Base : IInspectable
{
extern(Windows):
	HRESULT set_InitialValue(bool value);
	HRESULT get_InitialValue(bool* return_value);
	HRESULT get_Value(bool* return_value);
}
@uuid("c4c9a69e-ff47-4527-9f27-a49292019979")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomPromptBooleanInput")
interface IVpnCustomPromptBooleanInput : IVpnCustomPromptBooleanInput_Base, Windows.Networking.Vpn.IVpnCustomPromptElement {}

@uuid("73bd5638-6f04-404d-93dd-50a44924a38b")
interface IVpnCustomPromptElement : IInspectable
{
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
interface IVpnCustomPromptOptionSelector_Base : IInspectable
{
extern(Windows):
	HRESULT get_Options(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_SelectedIndex(UINT32* return_value);
}
@uuid("3b8f34d9-8ec1-4e95-9a4e-7ba64d38f330")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomPromptOptionSelector")
interface IVpnCustomPromptOptionSelector : IVpnCustomPromptOptionSelector_Base, Windows.Networking.Vpn.IVpnCustomPromptElement {}

@uuid("3bc8bdee-3a42-49a3-abdd-07b2edea752d")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomPromptText")
interface IVpnCustomPromptText_Base : IInspectable
{
extern(Windows):
	HRESULT set_Text(HSTRING value);
	HRESULT get_Text(HSTRING* return_value);
}
@uuid("3bc8bdee-3a42-49a3-abdd-07b2edea752d")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomPromptText")
interface IVpnCustomPromptText : IVpnCustomPromptText_Base, Windows.Networking.Vpn.IVpnCustomPromptElement {}

@uuid("c9da9c75-913c-47d5-88ba-48fc48930235")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomPromptTextInput")
interface IVpnCustomPromptTextInput_Base : IInspectable
{
extern(Windows):
	HRESULT set_PlaceholderText(HSTRING value);
	HRESULT get_PlaceholderText(HSTRING* return_value);
	HRESULT set_IsTextHidden(bool value);
	HRESULT get_IsTextHidden(bool* return_value);
	HRESULT get_Text(HSTRING* return_value);
}
@uuid("c9da9c75-913c-47d5-88ba-48fc48930235")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomPromptTextInput")
interface IVpnCustomPromptTextInput : IVpnCustomPromptTextInput_Base, Windows.Networking.Vpn.IVpnCustomPromptElement {}

@uuid("daa4c3ca-8f23-4d36-91f1-76d937827942")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomTextBox")
interface IVpnCustomTextBox_Base : IInspectable
{
extern(Windows):
	HRESULT set_DisplayText(HSTRING value);
	HRESULT get_DisplayText(HSTRING* return_value);
}
@uuid("daa4c3ca-8f23-4d36-91f1-76d937827942")
@WinrtFactory("Windows.Networking.Vpn.VpnCustomTextBox")
interface IVpnCustomTextBox : IVpnCustomTextBox_Base, Windows.Networking.Vpn.IVpnCustomPrompt {}

@uuid("4135b141-ccdb-49b5-9401-039a8ae767e9")
@WinrtFactory("Windows.Networking.Vpn.VpnDomainNameAssignment")
interface IVpnDomainNameAssignment : IInspectable
{
extern(Windows):
	HRESULT get_DomainNameList(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnDomainNameInfo)* return_value);
	HRESULT set_ProxyAutoConfigurationUri(Windows.Foundation.Uri value);
	HRESULT get_ProxyAutoConfigurationUri(Windows.Foundation.Uri* return_value);
}

@uuid("ad2eb82f-ea8e-4f7a-843e-1a87e32e1b9a")
@WinrtFactory("Windows.Networking.Vpn.VpnDomainNameInfo")
interface IVpnDomainNameInfo : IInspectable
{
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
extern(Windows):
	HRESULT get_WebProxyUris(Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri)* return_value);
}

@uuid("2507bb75-028f-4688-8d3a-c4531df37da8")
interface IVpnDomainNameInfoFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateVpnDomainNameInfo(HSTRING name, Windows.Networking.Vpn.VpnDomainNameType nameType, Windows.Foundation.Collections.IIterable!(Windows.Networking.HostName) dnsServerList, Windows.Foundation.Collections.IIterable!(Windows.Networking.HostName) proxyServerList, Windows.Networking.Vpn.VpnDomainNameInfo* return_domainNameInfo);
}

@uuid("9e2ddca2-1712-4ce4-b179-8c652c6d1011")
@WinrtFactory("Windows.Networking.Vpn.VpnInterfaceId")
interface IVpnInterfaceId : IInspectable
{
extern(Windows):
	HRESULT abi_GetAddressInfo(UINT32* out___idSize, ubyte** out_id);
}

@uuid("9e2ddca2-1712-4ce4-b179-8c652c6d1000")
interface IVpnInterfaceIdFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateVpnInterfaceId(UINT32 __addressSize, ubyte* address, Windows.Networking.Vpn.VpnInterfaceId* return_vpnInterfaceId);
}

@uuid("193696cd-a5c4-4abe-852b-785be4cb3e34")
@WinrtFactory("Windows.Networking.Vpn.VpnManagementAgent")
interface IVpnManagementAgent : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateVpnNamespaceInfo(HSTRING name, Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) dnsServerList, Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) proxyServerList, Windows.Networking.Vpn.VpnNamespaceInfo* return_namespaceInfo);
}

@uuid("a4aee29e-6417-4333-9842-f0a66db69802")
@WinrtFactory("Windows.Networking.Vpn.VpnNativeProfile")
interface IVpnNativeProfile_Base : IInspectable
{
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
@uuid("a4aee29e-6417-4333-9842-f0a66db69802")
@WinrtFactory("Windows.Networking.Vpn.VpnNativeProfile")
interface IVpnNativeProfile : IVpnNativeProfile_Base, Windows.Networking.Vpn.IVpnProfile {}

@uuid("0fec2467-cdb5-4ac7-b5a3-0afb5ec47682")
@WinrtFactory("Windows.Networking.Vpn.VpnNativeProfile")
interface IVpnNativeProfile2 : IInspectable
{
extern(Windows):
	HRESULT get_RequireVpnClientAppUI(bool* return_value);
	HRESULT set_RequireVpnClientAppUI(bool value);
	HRESULT get_ConnectionStatus(Windows.Networking.Vpn.VpnManagementConnectionStatus* return_value);
}

@uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce55")
@WinrtFactory("Windows.Networking.Vpn.VpnPacketBuffer")
interface IVpnPacketBuffer : IInspectable
{
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
extern(Windows):
	HRESULT get_AppId(Windows.Networking.Vpn.VpnAppId* return_value);
}

@uuid("9e2ddca2-1712-4ce4-b179-8c652c6d9999")
interface IVpnPacketBufferFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateVpnPacketBuffer(Windows.Networking.Vpn.VpnPacketBuffer parentBuffer, UINT32 offset, UINT32 length, Windows.Networking.Vpn.VpnPacketBuffer* return_vpnPacketBuffer);
}

@uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77")
@WinrtFactory("Windows.Networking.Vpn.VpnPacketBufferList")
interface IVpnPacketBufferList_Base : IInspectable
{
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
@uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77")
@WinrtFactory("Windows.Networking.Vpn.VpnPacketBufferList")
interface IVpnPacketBufferList : IVpnPacketBufferList_Base, Windows.Foundation.Collections.IIterable!(Windows.Networking.Vpn.VpnPacketBuffer) {}

@uuid("3e7acfe5-ea1e-482a-8d98-c065f57d89ea")
@WinrtFactory("Windows.Networking.Vpn.VpnPacketBufferList")
interface IVpnPacketBufferList2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_AddLeadingPacket(Windows.Networking.Vpn.VpnPacketBuffer nextVpnPacketBuffer);
	HRESULT abi_RemoveLeadingPacket(Windows.Networking.Vpn.VpnPacketBuffer* return_nextVpnPacketBuffer);
	HRESULT abi_AddTrailingPacket(Windows.Networking.Vpn.VpnPacketBuffer nextVpnPacketBuffer);
	HRESULT abi_RemoveTrailingPacket(Windows.Networking.Vpn.VpnPacketBuffer* return_nextVpnPacketBuffer);
}
@uuid("3e7acfe5-ea1e-482a-8d98-c065f57d89ea")
@WinrtFactory("Windows.Networking.Vpn.VpnPacketBufferList")
interface IVpnPacketBufferList2 : IVpnPacketBufferList2_Base, Windows.Foundation.Collections.IIterable!(Windows.Networking.Vpn.VpnPacketBuffer) {}

@uuid("9a793ac7-8854-4e52-ad97-24dd9a842bce")
@WinrtFactory("Windows.Networking.Vpn.VpnPickedCredential")
interface IVpnPickedCredential : IInspectable
{
extern(Windows):
	HRESULT get_PasskeyCredential(Windows.Security.Credentials.PasswordCredential* return_value);
	HRESULT get_AdditionalPin(HSTRING* return_value);
	HRESULT get_OldPasswordCredential(Windows.Security.Credentials.PasswordCredential* return_value);
}

@uuid("ceb78d07-d0a8-4703-a091-c8c2c0915bc4")
interface IVpnPlugIn : IInspectable
{
extern(Windows):
	HRESULT abi_Connect(Windows.Networking.Vpn.VpnChannel channel);
	HRESULT abi_Disconnect(Windows.Networking.Vpn.VpnChannel channel);
	HRESULT abi_GetKeepAlivePayload(Windows.Networking.Vpn.VpnChannel channel, Windows.Networking.Vpn.VpnPacketBuffer* out_keepAlivePacket);
	HRESULT abi_Encapsulate(Windows.Networking.Vpn.VpnChannel channel, Windows.Networking.Vpn.VpnPacketBufferList packets, Windows.Networking.Vpn.VpnPacketBufferList encapulatedPackets);
	HRESULT abi_Decapsulate(Windows.Networking.Vpn.VpnChannel channel, Windows.Networking.Vpn.VpnPacketBuffer encapBuffer, Windows.Networking.Vpn.VpnPacketBufferList decapsulatedPackets, Windows.Networking.Vpn.VpnPacketBufferList controlPacketsToSend);
}

@uuid("0edf0da4-4f00-4589-8d7b-4bf988f6542c")
@WinrtFactory("Windows.Networking.Vpn.VpnPlugInProfile")
interface IVpnPlugInProfile_Base : IInspectable
{
extern(Windows):
	HRESULT get_ServerUris(Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri)* return_value);
	HRESULT get_CustomConfiguration(HSTRING* return_value);
	HRESULT set_CustomConfiguration(HSTRING value);
	HRESULT get_VpnPluginPackageFamilyName(HSTRING* return_value);
	HRESULT set_VpnPluginPackageFamilyName(HSTRING value);
}
@uuid("0edf0da4-4f00-4589-8d7b-4bf988f6542c")
@WinrtFactory("Windows.Networking.Vpn.VpnPlugInProfile")
interface IVpnPlugInProfile : IVpnPlugInProfile_Base, Windows.Networking.Vpn.IVpnProfile {}

@uuid("611c4892-cf94-4ad6-ba99-00f4ff34565e")
@WinrtFactory("Windows.Networking.Vpn.VpnPlugInProfile")
interface IVpnPlugInProfile2_Base : IInspectable
{
extern(Windows):
	HRESULT get_RequireVpnClientAppUI(bool* return_value);
	HRESULT set_RequireVpnClientAppUI(bool value);
	HRESULT get_ConnectionStatus(Windows.Networking.Vpn.VpnManagementConnectionStatus* return_value);
}
@uuid("611c4892-cf94-4ad6-ba99-00f4ff34565e")
@WinrtFactory("Windows.Networking.Vpn.VpnPlugInProfile")
interface IVpnPlugInProfile2 : IVpnPlugInProfile2_Base, Windows.Networking.Vpn.IVpnProfile {}

@uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a")
interface IVpnProfile : IInspectable
{
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
extern(Windows):
	HRESULT set_Address(Windows.Networking.HostName value);
	HRESULT get_Address(Windows.Networking.HostName* return_value);
	HRESULT set_PrefixSize(ubyte value);
	HRESULT get_PrefixSize(ubyte* return_value);
}

@uuid("db64de22-ce39-4a76-9550-f61039f80e48")
@WinrtFactory("Windows.Networking.Vpn.VpnRouteAssignment")
interface IVpnRouteAssignment : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateVpnRoute(Windows.Networking.HostName address, ubyte prefixSize, Windows.Networking.Vpn.VpnRoute* return_route);
}

@uuid("99a8f8af-c0ee-4e75-817a-f231aee5123d")
@WinrtFactory("Windows.Networking.Vpn.VpnSystemHealth")
interface IVpnSystemHealth : IInspectable
{
extern(Windows):
	HRESULT get_StatementOfHealth(Windows.Storage.Streams.Buffer* return_value);
}

@uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50")
@WinrtFactory("Windows.Networking.Vpn.VpnTrafficFilter")
interface IVpnTrafficFilter : IInspectable
{
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
extern(Windows):
	HRESULT abi_Create(Windows.Networking.Vpn.VpnAppId appId, Windows.Networking.Vpn.VpnTrafficFilter* return_result);
}

interface VpnAppId : Windows.Networking.Vpn.IVpnAppId
{
extern(Windows):
	final Windows.Networking.Vpn.VpnAppIdType Type()
	{
		Windows.Networking.Vpn.VpnAppIdType _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnAppId)this.asInterface(uuid("7b06a635-5c58-41d9-94a7-bfbcf1d8ca54"))).get_Type(&_ret));
		return _ret;
	}
	final void Type(Windows.Networking.Vpn.VpnAppIdType value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnAppId)this.asInterface(uuid("7b06a635-5c58-41d9-94a7-bfbcf1d8ca54"))).set_Type(value));
	}
	final wstring Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnAppId)this.asInterface(uuid("7b06a635-5c58-41d9-94a7-bfbcf1d8ca54"))).get_Value(&_ret));
		return hstring(_ret).d_str;
	}
	final void Value(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnAppId)this.asInterface(uuid("7b06a635-5c58-41d9-94a7-bfbcf1d8ca54"))).set_Value(hstring(value).handle));
	}
	static Windows.Networking.Vpn.VpnAppId New(Windows.Networking.Vpn.VpnAppIdType type, wstring value)
	{
		auto factory = factory!(Windows.Networking.Vpn.IVpnAppIdFactory);
		Windows.Networking.Vpn.VpnAppId _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnAppIdFactory)factory.asInterface(uuid("46adfd2a-0aab-4fdb-821d-d3ddc919788b"))).abi_Create(type, hstring(value).handle, &_ret));
		return _ret;
	}
}

interface VpnChannel : Windows.Networking.Vpn.IVpnChannel, Windows.Networking.Vpn.IVpnChannel2
{
extern(Windows):
	final void AssociateTransport(IInspectable mainOuterTunnelTransport, IInspectable optionalOuterTunnelTransport)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).abi_AssociateTransport(mainOuterTunnelTransport, optionalOuterTunnelTransport));
	}
	final void Start(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv4list, Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv6list, Windows.Networking.Vpn.VpnInterfaceId vpnInterfaceId, Windows.Networking.Vpn.VpnRouteAssignment routeScope, Windows.Networking.Vpn.VpnNamespaceAssignment namespaceScope, UINT32 mtuSize, UINT32 maxFrameSize, bool optimizeForLowCostNetwork, IInspectable mainOuterTunnelTransport, IInspectable optionalOuterTunnelTransport)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).abi_Start(assignedClientIPv4list, assignedClientIPv6list, vpnInterfaceId, routeScope, namespaceScope, mtuSize, maxFrameSize, optimizeForLowCostNetwork, mainOuterTunnelTransport, optionalOuterTunnelTransport));
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).abi_Stop());
	}
	final Windows.Networking.Vpn.VpnPickedCredential RequestCredentials(Windows.Networking.Vpn.VpnCredentialType credType, bool isRetry, bool isSingleSignOnCredential, Windows.Security.Cryptography.Certificates.Certificate certificate)
	{
		Windows.Networking.Vpn.VpnPickedCredential _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).abi_RequestCredentials(credType, isRetry, isSingleSignOnCredential, certificate, &_ret));
		return _ret;
	}
	final void RequestVpnPacketBuffer(Windows.Networking.Vpn.VpnDataPathType type, Windows.Networking.Vpn.VpnPacketBuffer* out_vpnPacketBuffer)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).abi_RequestVpnPacketBuffer(type, out_vpnPacketBuffer));
	}
	final void LogDiagnosticMessage(wstring message)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).abi_LogDiagnosticMessage(hstring(message).handle));
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Networking.Vpn.VpnChannelConfiguration Configuration()
	{
		Windows.Networking.Vpn.VpnChannelConfiguration _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).get_Configuration(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnActivityChange(void delegate(Windows.Networking.Vpn.VpnChannel, Windows.Networking.Vpn.VpnChannelActivityEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).add_ActivityChange(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.Vpn.VpnChannel, Windows.Networking.Vpn.VpnChannelActivityEventArgs), Windows.Networking.Vpn.VpnChannel, Windows.Networking.Vpn.VpnChannelActivityEventArgs)(fn), &tok));
		return tok;
	}
	final void removeActivityChange(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).remove_ActivityChange(token));
	}
	final void PlugInContext(IInspectable value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).set_PlugInContext(value));
	}
	final IInspectable PlugInContext()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).get_PlugInContext(&_ret));
		return _ret;
	}
	final Windows.Networking.Vpn.VpnSystemHealth SystemHealth()
	{
		Windows.Networking.Vpn.VpnSystemHealth _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).get_SystemHealth(&_ret));
		return _ret;
	}
	final void RequestCustomPrompt(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Vpn.IVpnCustomPrompt) customPrompt)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).abi_RequestCustomPrompt(customPrompt));
	}
	final void SetErrorMessage(wstring message)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).abi_SetErrorMessage(hstring(message).handle));
	}
	final void SetAllowedSslTlsVersions(IInspectable tunnelTransport, bool useTls12)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel)this.asInterface(uuid("4ac78d07-d1a8-4303-a091-c8d2e0915bc3"))).abi_SetAllowedSslTlsVersions(tunnelTransport, useTls12));
	}
	final void StartWithMainTransport(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv4list, Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv6list, Windows.Networking.Vpn.VpnInterfaceId vpnInterfaceId, Windows.Networking.Vpn.VpnRouteAssignment assignedRoutes, Windows.Networking.Vpn.VpnDomainNameAssignment assignedDomainName, UINT32 mtuSize, UINT32 maxFrameSize, bool Reserved, IInspectable mainOuterTunnelTransport)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).abi_StartWithMainTransport(assignedClientIPv4list, assignedClientIPv6list, vpnInterfaceId, assignedRoutes, assignedDomainName, mtuSize, maxFrameSize, Reserved, mainOuterTunnelTransport));
	}
	final void StartExistingTransports(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv4list, Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIPv6list, Windows.Networking.Vpn.VpnInterfaceId vpnInterfaceId, Windows.Networking.Vpn.VpnRouteAssignment assignedRoutes, Windows.Networking.Vpn.VpnDomainNameAssignment assignedDomainName, UINT32 mtuSize, UINT32 maxFrameSize, bool Reserved)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).abi_StartExistingTransports(assignedClientIPv4list, assignedClientIPv6list, vpnInterfaceId, assignedRoutes, assignedDomainName, mtuSize, maxFrameSize, Reserved));
	}
	final EventRegistrationToken OnActivityStateChange(void delegate(Windows.Networking.Vpn.VpnChannel, Windows.Networking.Vpn.VpnChannelActivityStateChangedArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).add_ActivityStateChange(event!(Windows.Foundation.TypedEventHandler!(Windows.Networking.Vpn.VpnChannel, Windows.Networking.Vpn.VpnChannelActivityStateChangedArgs), Windows.Networking.Vpn.VpnChannel, Windows.Networking.Vpn.VpnChannelActivityStateChangedArgs)(fn), &tok));
		return tok;
	}
	final void removeActivityStateChange(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).remove_ActivityStateChange(token));
	}
	final Windows.Networking.Vpn.VpnPacketBuffer GetVpnSendPacketBuffer()
	{
		Windows.Networking.Vpn.VpnPacketBuffer _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).abi_GetVpnSendPacketBuffer(&_ret));
		return _ret;
	}
	final Windows.Networking.Vpn.VpnPacketBuffer GetVpnReceivePacketBuffer()
	{
		Windows.Networking.Vpn.VpnPacketBuffer _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).abi_GetVpnReceivePacketBuffer(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RequestCustomPromptAsync(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Vpn.IVpnCustomPromptElement) customPromptElement)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).abi_RequestCustomPromptAsync(customPromptElement, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnCredential) RequestCredentialsWithCertificateAsync(Windows.Networking.Vpn.VpnCredentialType credType, UINT32 credOptions, Windows.Security.Cryptography.Certificates.Certificate certificate)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnCredential) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).abi_RequestCredentialsWithCertificateAsync(credType, credOptions, certificate, &_ret));
		return _ret;
	}
	alias RequestCredentialsAsync = RequestCredentialsWithCertificateAsync;
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnCredential) RequestCredentialsWithOptionsAsync(Windows.Networking.Vpn.VpnCredentialType credType, UINT32 credOptions)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnCredential) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).abi_RequestCredentialsWithOptionsAsync(credType, credOptions, &_ret));
		return _ret;
	}
	alias RequestCredentialsAsync = RequestCredentialsWithOptionsAsync;
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnCredential) RequestCredentialsSimpleAsync(Windows.Networking.Vpn.VpnCredentialType credType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnCredential) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).abi_RequestCredentialsSimpleAsync(credType, &_ret));
		return _ret;
	}
	alias RequestCredentialsAsync = RequestCredentialsSimpleAsync;
	final void TerminateConnection(wstring message)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).abi_TerminateConnection(hstring(message).handle));
	}
	final void StartWithTrafficFilter(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIpv4List, Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) assignedClientIpv6List, Windows.Networking.Vpn.VpnInterfaceId vpnInterfaceId, Windows.Networking.Vpn.VpnRouteAssignment assignedRoutes, Windows.Networking.Vpn.VpnDomainNameAssignment assignedNamespace, UINT32 mtuSize, UINT32 maxFrameSize, bool reserved, IInspectable mainOuterTunnelTransport, IInspectable optionalOuterTunnelTransport, Windows.Networking.Vpn.VpnTrafficFilterAssignment assignedTrafficFilters)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannel2)this.asInterface(uuid("2255d165-993b-4629-ad60-f1c3f3537f50"))).abi_StartWithTrafficFilter(assignedClientIpv4List, assignedClientIpv6List, vpnInterfaceId, assignedRoutes, assignedNamespace, mtuSize, maxFrameSize, reserved, mainOuterTunnelTransport, optionalOuterTunnelTransport, assignedTrafficFilters));
	}

	private static Windows.Networking.Vpn.IVpnChannelStatics _staticInstance;
	public static Windows.Networking.Vpn.IVpnChannelStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Networking.Vpn.IVpnChannelStatics);
		return _staticInstance;
	}
	static void ProcessEventAsync(IInspectable thirdPartyPlugIn, IInspectable event)
	{
		Debug.OK(staticInstance.abi_ProcessEventAsync(thirdPartyPlugIn, event));
	}
}

interface VpnChannelActivityEventArgs : Windows.Networking.Vpn.IVpnChannelActivityEventArgs
{
extern(Windows):
	final Windows.Networking.Vpn.VpnChannelActivityEventType Type()
	{
		Windows.Networking.Vpn.VpnChannelActivityEventType _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannelActivityEventArgs)this.asInterface(uuid("a36c88f2-afdc-4775-855d-d4ac0a35fc55"))).get_Type(&_ret));
		return _ret;
	}
}

interface VpnChannelActivityStateChangedArgs : Windows.Networking.Vpn.IVpnChannelActivityStateChangedArgs
{
extern(Windows):
	final Windows.Networking.Vpn.VpnChannelActivityEventType ActivityState()
	{
		Windows.Networking.Vpn.VpnChannelActivityEventType _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannelActivityStateChangedArgs)this.asInterface(uuid("3d750565-fdc0-4bbe-a23b-45fffc6d97a1"))).get_ActivityState(&_ret));
		return _ret;
	}
}

interface VpnChannelConfiguration : Windows.Networking.Vpn.IVpnChannelConfiguration, Windows.Networking.Vpn.IVpnChannelConfiguration2
{
extern(Windows):
	final wstring ServerServiceName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannelConfiguration)this.asInterface(uuid("0e2ddca2-2012-4fe4-b179-8c652c6d107e"))).get_ServerServiceName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) ServerHostNameList()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannelConfiguration)this.asInterface(uuid("0e2ddca2-2012-4fe4-b179-8c652c6d107e"))).get_ServerHostNameList(&_ret));
		return _ret;
	}
	final wstring CustomField()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannelConfiguration)this.asInterface(uuid("0e2ddca2-2012-4fe4-b179-8c652c6d107e"))).get_CustomField(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri) ServerUris()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnChannelConfiguration2)this.asInterface(uuid("f30b574c-7824-471c-a118-63dbc93ae4c7"))).get_ServerUris(&_ret));
		return _ret;
	}
}

interface VpnCredential : Windows.Networking.Vpn.IVpnCredential
{
extern(Windows):
	final Windows.Security.Credentials.PasswordCredential PasskeyCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCredential)this.asInterface(uuid("b7e78af3-a46d-404b-8729-1832522853ac"))).get_PasskeyCredential(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.Certificate CertificateCredential()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCredential)this.asInterface(uuid("b7e78af3-a46d-404b-8729-1832522853ac"))).get_CertificateCredential(&_ret));
		return _ret;
	}
	final wstring AdditionalPin()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCredential)this.asInterface(uuid("b7e78af3-a46d-404b-8729-1832522853ac"))).get_AdditionalPin(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Security.Credentials.PasswordCredential OldPasswordCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCredential)this.asInterface(uuid("b7e78af3-a46d-404b-8729-1832522853ac"))).get_OldPasswordCredential(&_ret));
		return _ret;
	}
}

interface VpnCustomCheckBox : Windows.Networking.Vpn.IVpnCustomCheckBox, Windows.Networking.Vpn.IVpnCustomPrompt
{
extern(Windows):
	final void InitialCheckState(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomCheckBox)this.asInterface(uuid("43878753-03c5-4e61-93d7-a957714c4282"))).set_InitialCheckState(value));
	}
	final bool InitialCheckState()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomCheckBox)this.asInterface(uuid("43878753-03c5-4e61-93d7-a957714c4282"))).get_InitialCheckState(&_ret));
		return _ret;
	}
	final bool Checked()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomCheckBox)this.asInterface(uuid("43878753-03c5-4e61-93d7-a957714c4282"))).get_Checked(&_ret));
		return _ret;
	}
	final void Label(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Label(hstring(value).handle));
	}
	final wstring Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Label(&_ret));
		return hstring(_ret).d_str;
	}
	final void Compulsory(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Compulsory(value));
	}
	final bool Compulsory()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Compulsory(&_ret));
		return _ret;
	}
	final void Bordered(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Bordered(value));
	}
	final bool Bordered()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Bordered(&_ret));
		return _ret;
	}
	static VpnCustomCheckBox New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnCustomCheckBox).abi_ActivateInstance(&ret));
		return cast(VpnCustomCheckBox) ret;
	}
}

interface VpnCustomComboBox : Windows.Networking.Vpn.IVpnCustomComboBox, Windows.Networking.Vpn.IVpnCustomPrompt
{
extern(Windows):
	final void OptionsText(Windows.Foundation.Collections.IVectorView!(HSTRING) value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomComboBox)this.asInterface(uuid("9a24158e-dba1-4c6f-8270-dcf3c9761c4c"))).set_OptionsText(value));
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) OptionsText()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomComboBox)this.asInterface(uuid("9a24158e-dba1-4c6f-8270-dcf3c9761c4c"))).get_OptionsText(&_ret));
		return _ret;
	}
	final UINT32 Selected()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomComboBox)this.asInterface(uuid("9a24158e-dba1-4c6f-8270-dcf3c9761c4c"))).get_Selected(&_ret));
		return _ret;
	}
	final void Label(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Label(hstring(value).handle));
	}
	final wstring Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Label(&_ret));
		return hstring(_ret).d_str;
	}
	final void Compulsory(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Compulsory(value));
	}
	final bool Compulsory()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Compulsory(&_ret));
		return _ret;
	}
	final void Bordered(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Bordered(value));
	}
	final bool Bordered()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Bordered(&_ret));
		return _ret;
	}
	static VpnCustomComboBox New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnCustomComboBox).abi_ActivateInstance(&ret));
		return cast(VpnCustomComboBox) ret;
	}
}

interface VpnCustomEditBox : Windows.Networking.Vpn.IVpnCustomEditBox, Windows.Networking.Vpn.IVpnCustomPrompt
{
extern(Windows):
	final void DefaultText(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomEditBox)this.asInterface(uuid("3002d9a0-cfbf-4c0b-8f3c-66f503c20b39"))).set_DefaultText(hstring(value).handle));
	}
	final wstring DefaultText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomEditBox)this.asInterface(uuid("3002d9a0-cfbf-4c0b-8f3c-66f503c20b39"))).get_DefaultText(&_ret));
		return hstring(_ret).d_str;
	}
	final void NoEcho(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomEditBox)this.asInterface(uuid("3002d9a0-cfbf-4c0b-8f3c-66f503c20b39"))).set_NoEcho(value));
	}
	final bool NoEcho()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomEditBox)this.asInterface(uuid("3002d9a0-cfbf-4c0b-8f3c-66f503c20b39"))).get_NoEcho(&_ret));
		return _ret;
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomEditBox)this.asInterface(uuid("3002d9a0-cfbf-4c0b-8f3c-66f503c20b39"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final void Label(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Label(hstring(value).handle));
	}
	final wstring Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Label(&_ret));
		return hstring(_ret).d_str;
	}
	final void Compulsory(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Compulsory(value));
	}
	final bool Compulsory()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Compulsory(&_ret));
		return _ret;
	}
	final void Bordered(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Bordered(value));
	}
	final bool Bordered()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Bordered(&_ret));
		return _ret;
	}
	static VpnCustomEditBox New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnCustomEditBox).abi_ActivateInstance(&ret));
		return cast(VpnCustomEditBox) ret;
	}
}

interface VpnCustomErrorBox : Windows.Networking.Vpn.IVpnCustomErrorBox, Windows.Networking.Vpn.IVpnCustomPrompt
{
extern(Windows):
	final void Label(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Label(hstring(value).handle));
	}
	final wstring Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Label(&_ret));
		return hstring(_ret).d_str;
	}
	final void Compulsory(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Compulsory(value));
	}
	final bool Compulsory()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Compulsory(&_ret));
		return _ret;
	}
	final void Bordered(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Bordered(value));
	}
	final bool Bordered()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Bordered(&_ret));
		return _ret;
	}
	static VpnCustomErrorBox New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnCustomErrorBox).abi_ActivateInstance(&ret));
		return cast(VpnCustomErrorBox) ret;
	}
}

interface VpnCustomPromptBooleanInput : Windows.Networking.Vpn.IVpnCustomPromptBooleanInput, Windows.Networking.Vpn.IVpnCustomPromptElement
{
extern(Windows):
	final void InitialValue(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptBooleanInput)this.asInterface(uuid("c4c9a69e-ff47-4527-9f27-a49292019979"))).set_InitialValue(value));
	}
	final bool InitialValue()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptBooleanInput)this.asInterface(uuid("c4c9a69e-ff47-4527-9f27-a49292019979"))).get_InitialValue(&_ret));
		return _ret;
	}
	final bool Value()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptBooleanInput)this.asInterface(uuid("c4c9a69e-ff47-4527-9f27-a49292019979"))).get_Value(&_ret));
		return _ret;
	}
	final void DisplayName(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_DisplayName(hstring(value).handle));
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final void Compulsory(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_Compulsory(value));
	}
	final bool Compulsory()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_Compulsory(&_ret));
		return _ret;
	}
	final void Emphasized(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_Emphasized(value));
	}
	final bool Emphasized()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_Emphasized(&_ret));
		return _ret;
	}
	static VpnCustomPromptBooleanInput New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnCustomPromptBooleanInput).abi_ActivateInstance(&ret));
		return cast(VpnCustomPromptBooleanInput) ret;
	}
}

interface VpnCustomPromptOptionSelector : Windows.Networking.Vpn.IVpnCustomPromptOptionSelector, Windows.Networking.Vpn.IVpnCustomPromptElement
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(HSTRING) Options()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptOptionSelector)this.asInterface(uuid("3b8f34d9-8ec1-4e95-9a4e-7ba64d38f330"))).get_Options(&_ret));
		return _ret;
	}
	final UINT32 SelectedIndex()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptOptionSelector)this.asInterface(uuid("3b8f34d9-8ec1-4e95-9a4e-7ba64d38f330"))).get_SelectedIndex(&_ret));
		return _ret;
	}
	final void DisplayName(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_DisplayName(hstring(value).handle));
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final void Compulsory(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_Compulsory(value));
	}
	final bool Compulsory()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_Compulsory(&_ret));
		return _ret;
	}
	final void Emphasized(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_Emphasized(value));
	}
	final bool Emphasized()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_Emphasized(&_ret));
		return _ret;
	}
	static VpnCustomPromptOptionSelector New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnCustomPromptOptionSelector).abi_ActivateInstance(&ret));
		return cast(VpnCustomPromptOptionSelector) ret;
	}
}

interface VpnCustomPromptText : Windows.Networking.Vpn.IVpnCustomPromptText, Windows.Networking.Vpn.IVpnCustomPromptElement
{
extern(Windows):
	final void Text(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptText)this.asInterface(uuid("3bc8bdee-3a42-49a3-abdd-07b2edea752d"))).set_Text(hstring(value).handle));
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptText)this.asInterface(uuid("3bc8bdee-3a42-49a3-abdd-07b2edea752d"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final void DisplayName(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_DisplayName(hstring(value).handle));
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final void Compulsory(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_Compulsory(value));
	}
	final bool Compulsory()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_Compulsory(&_ret));
		return _ret;
	}
	final void Emphasized(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_Emphasized(value));
	}
	final bool Emphasized()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_Emphasized(&_ret));
		return _ret;
	}
	static VpnCustomPromptText New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnCustomPromptText).abi_ActivateInstance(&ret));
		return cast(VpnCustomPromptText) ret;
	}
}

interface VpnCustomPromptTextInput : Windows.Networking.Vpn.IVpnCustomPromptTextInput, Windows.Networking.Vpn.IVpnCustomPromptElement
{
extern(Windows):
	final void PlaceholderText(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptTextInput)this.asInterface(uuid("c9da9c75-913c-47d5-88ba-48fc48930235"))).set_PlaceholderText(hstring(value).handle));
	}
	final wstring PlaceholderText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptTextInput)this.asInterface(uuid("c9da9c75-913c-47d5-88ba-48fc48930235"))).get_PlaceholderText(&_ret));
		return hstring(_ret).d_str;
	}
	final void IsTextHidden(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptTextInput)this.asInterface(uuid("c9da9c75-913c-47d5-88ba-48fc48930235"))).set_IsTextHidden(value));
	}
	final bool IsTextHidden()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptTextInput)this.asInterface(uuid("c9da9c75-913c-47d5-88ba-48fc48930235"))).get_IsTextHidden(&_ret));
		return _ret;
	}
	final wstring Text()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptTextInput)this.asInterface(uuid("c9da9c75-913c-47d5-88ba-48fc48930235"))).get_Text(&_ret));
		return hstring(_ret).d_str;
	}
	final void DisplayName(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_DisplayName(hstring(value).handle));
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final void Compulsory(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_Compulsory(value));
	}
	final bool Compulsory()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_Compulsory(&_ret));
		return _ret;
	}
	final void Emphasized(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).set_Emphasized(value));
	}
	final bool Emphasized()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPromptElement)this.asInterface(uuid("73bd5638-6f04-404d-93dd-50a44924a38b"))).get_Emphasized(&_ret));
		return _ret;
	}
	static VpnCustomPromptTextInput New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnCustomPromptTextInput).abi_ActivateInstance(&ret));
		return cast(VpnCustomPromptTextInput) ret;
	}
}

interface VpnCustomTextBox : Windows.Networking.Vpn.IVpnCustomTextBox, Windows.Networking.Vpn.IVpnCustomPrompt
{
extern(Windows):
	final void DisplayText(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomTextBox)this.asInterface(uuid("daa4c3ca-8f23-4d36-91f1-76d937827942"))).set_DisplayText(hstring(value).handle));
	}
	final wstring DisplayText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomTextBox)this.asInterface(uuid("daa4c3ca-8f23-4d36-91f1-76d937827942"))).get_DisplayText(&_ret));
		return hstring(_ret).d_str;
	}
	final void Label(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Label(hstring(value).handle));
	}
	final wstring Label()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Label(&_ret));
		return hstring(_ret).d_str;
	}
	final void Compulsory(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Compulsory(value));
	}
	final bool Compulsory()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Compulsory(&_ret));
		return _ret;
	}
	final void Bordered(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).set_Bordered(value));
	}
	final bool Bordered()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnCustomPrompt)this.asInterface(uuid("9b2ebe7b-87d5-433c-b4f6-eee6aa68a244"))).get_Bordered(&_ret));
		return _ret;
	}
	static VpnCustomTextBox New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnCustomTextBox).abi_ActivateInstance(&ret));
		return cast(VpnCustomTextBox) ret;
	}
}

interface VpnDomainNameAssignment : Windows.Networking.Vpn.IVpnDomainNameAssignment
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnDomainNameInfo) DomainNameList()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnDomainNameInfo) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameAssignment)this.asInterface(uuid("4135b141-ccdb-49b5-9401-039a8ae767e9"))).get_DomainNameList(&_ret));
		return _ret;
	}
	final void ProxyAutoConfigurationUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameAssignment)this.asInterface(uuid("4135b141-ccdb-49b5-9401-039a8ae767e9"))).set_ProxyAutoConfigurationUri(value));
	}
	final Windows.Foundation.Uri ProxyAutoConfigurationUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameAssignment)this.asInterface(uuid("4135b141-ccdb-49b5-9401-039a8ae767e9"))).get_ProxyAutoConfigurationUri(&_ret));
		return _ret;
	}
	static VpnDomainNameAssignment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnDomainNameAssignment).abi_ActivateInstance(&ret));
		return cast(VpnDomainNameAssignment) ret;
	}
}

interface VpnDomainNameInfo : Windows.Networking.Vpn.IVpnDomainNameInfo, Windows.Networking.Vpn.IVpnDomainNameInfo2
{
extern(Windows):
	final void DomainName(Windows.Networking.HostName value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameInfo)this.asInterface(uuid("ad2eb82f-ea8e-4f7a-843e-1a87e32e1b9a"))).set_DomainName(value));
	}
	final Windows.Networking.HostName DomainName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameInfo)this.asInterface(uuid("ad2eb82f-ea8e-4f7a-843e-1a87e32e1b9a"))).get_DomainName(&_ret));
		return _ret;
	}
	final void DomainNameType(Windows.Networking.Vpn.VpnDomainNameType value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameInfo)this.asInterface(uuid("ad2eb82f-ea8e-4f7a-843e-1a87e32e1b9a"))).set_DomainNameType(value));
	}
	final Windows.Networking.Vpn.VpnDomainNameType DomainNameType()
	{
		Windows.Networking.Vpn.VpnDomainNameType _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameInfo)this.asInterface(uuid("ad2eb82f-ea8e-4f7a-843e-1a87e32e1b9a"))).get_DomainNameType(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) DnsServers()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameInfo)this.asInterface(uuid("ad2eb82f-ea8e-4f7a-843e-1a87e32e1b9a"))).get_DnsServers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) WebProxyServers()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameInfo)this.asInterface(uuid("ad2eb82f-ea8e-4f7a-843e-1a87e32e1b9a"))).get_WebProxyServers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri) WebProxyUris()
	{
		Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameInfo2)this.asInterface(uuid("ab871151-6c53-4828-9883-d886de104407"))).get_WebProxyUris(&_ret));
		return _ret;
	}
	static Windows.Networking.Vpn.VpnDomainNameInfo New(wstring name, Windows.Networking.Vpn.VpnDomainNameType nameType, Windows.Foundation.Collections.IIterable!(Windows.Networking.HostName) dnsServerList, Windows.Foundation.Collections.IIterable!(Windows.Networking.HostName) proxyServerList)
	{
		auto factory = factory!(Windows.Networking.Vpn.IVpnDomainNameInfoFactory);
		Windows.Networking.Vpn.VpnDomainNameInfo _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnDomainNameInfoFactory)factory.asInterface(uuid("2507bb75-028f-4688-8d3a-c4531df37da8"))).abi_CreateVpnDomainNameInfo(hstring(name).handle, nameType, dnsServerList, proxyServerList, &_ret));
		return _ret;
	}
}

interface VpnInterfaceId : Windows.Networking.Vpn.IVpnInterfaceId
{
extern(Windows):
	final void GetAddressInfo(UINT32* out___idSize, ubyte** out_id)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnInterfaceId)this.asInterface(uuid("9e2ddca2-1712-4ce4-b179-8c652c6d1011"))).abi_GetAddressInfo(out___idSize, out_id));
	}
	static Windows.Networking.Vpn.VpnInterfaceId New(UINT32 __addressSize, ubyte* address)
	{
		auto factory = factory!(Windows.Networking.Vpn.IVpnInterfaceIdFactory);
		Windows.Networking.Vpn.VpnInterfaceId _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnInterfaceIdFactory)factory.asInterface(uuid("9e2ddca2-1712-4ce4-b179-8c652c6d1000"))).abi_CreateVpnInterfaceId(__addressSize, address, &_ret));
		return _ret;
	}
}

interface VpnManagementAgent : Windows.Networking.Vpn.IVpnManagementAgent
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) AddProfileFromXmlAsync(wstring xml)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnManagementAgent)this.asInterface(uuid("193696cd-a5c4-4abe-852b-785be4cb3e34"))).abi_AddProfileFromXmlAsync(hstring(xml).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) AddProfileFromObjectAsync(Windows.Networking.Vpn.IVpnProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnManagementAgent)this.asInterface(uuid("193696cd-a5c4-4abe-852b-785be4cb3e34"))).abi_AddProfileFromObjectAsync(profile, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) UpdateProfileFromXmlAsync(wstring xml)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnManagementAgent)this.asInterface(uuid("193696cd-a5c4-4abe-852b-785be4cb3e34"))).abi_UpdateProfileFromXmlAsync(hstring(xml).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) UpdateProfileFromObjectAsync(Windows.Networking.Vpn.IVpnProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnManagementAgent)this.asInterface(uuid("193696cd-a5c4-4abe-852b-785be4cb3e34"))).abi_UpdateProfileFromObjectAsync(profile, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Vpn.IVpnProfile)) GetProfilesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Vpn.IVpnProfile)) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnManagementAgent)this.asInterface(uuid("193696cd-a5c4-4abe-852b-785be4cb3e34"))).abi_GetProfilesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) DeleteProfileAsync(Windows.Networking.Vpn.IVpnProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnManagementAgent)this.asInterface(uuid("193696cd-a5c4-4abe-852b-785be4cb3e34"))).abi_DeleteProfileAsync(profile, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) ConnectProfileAsync(Windows.Networking.Vpn.IVpnProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnManagementAgent)this.asInterface(uuid("193696cd-a5c4-4abe-852b-785be4cb3e34"))).abi_ConnectProfileAsync(profile, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) ConnectProfileWithPasswordCredentialAsync(Windows.Networking.Vpn.IVpnProfile profile, Windows.Security.Credentials.PasswordCredential passwordCredential)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnManagementAgent)this.asInterface(uuid("193696cd-a5c4-4abe-852b-785be4cb3e34"))).abi_ConnectProfileWithPasswordCredentialAsync(profile, passwordCredential, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) DisconnectProfileAsync(Windows.Networking.Vpn.IVpnProfile profile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnManagementAgent)this.asInterface(uuid("193696cd-a5c4-4abe-852b-785be4cb3e34"))).abi_DisconnectProfileAsync(profile, &_ret));
		return _ret;
	}
	static VpnManagementAgent New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnManagementAgent).abi_ActivateInstance(&ret));
		return cast(VpnManagementAgent) ret;
	}
}

interface VpnNamespaceAssignment : Windows.Networking.Vpn.IVpnNamespaceAssignment
{
extern(Windows):
	final void NamespaceList(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnNamespaceInfo) value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceAssignment)this.asInterface(uuid("d7f7db18-307d-4c0e-bd62-8fa270bbadd6"))).set_NamespaceList(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnNamespaceInfo) NamespaceList()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnNamespaceInfo) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceAssignment)this.asInterface(uuid("d7f7db18-307d-4c0e-bd62-8fa270bbadd6"))).get_NamespaceList(&_ret));
		return _ret;
	}
	final void ProxyAutoConfigUri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceAssignment)this.asInterface(uuid("d7f7db18-307d-4c0e-bd62-8fa270bbadd6"))).set_ProxyAutoConfigUri(value));
	}
	final Windows.Foundation.Uri ProxyAutoConfigUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceAssignment)this.asInterface(uuid("d7f7db18-307d-4c0e-bd62-8fa270bbadd6"))).get_ProxyAutoConfigUri(&_ret));
		return _ret;
	}
	static VpnNamespaceAssignment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnNamespaceAssignment).abi_ActivateInstance(&ret));
		return cast(VpnNamespaceAssignment) ret;
	}
}

interface VpnNamespaceInfo : Windows.Networking.Vpn.IVpnNamespaceInfo
{
extern(Windows):
	final void Namespace(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceInfo)this.asInterface(uuid("30edfb43-444f-44c5-8167-a35a91f1af94"))).set_Namespace(hstring(value).handle));
	}
	final wstring Namespace()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceInfo)this.asInterface(uuid("30edfb43-444f-44c5-8167-a35a91f1af94"))).get_Namespace(&_ret));
		return hstring(_ret).d_str;
	}
	final void DnsServers(Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceInfo)this.asInterface(uuid("30edfb43-444f-44c5-8167-a35a91f1af94"))).set_DnsServers(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) DnsServers()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceInfo)this.asInterface(uuid("30edfb43-444f-44c5-8167-a35a91f1af94"))).get_DnsServers(&_ret));
		return _ret;
	}
	final void WebProxyServers(Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceInfo)this.asInterface(uuid("30edfb43-444f-44c5-8167-a35a91f1af94"))).set_WebProxyServers(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) WebProxyServers()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceInfo)this.asInterface(uuid("30edfb43-444f-44c5-8167-a35a91f1af94"))).get_WebProxyServers(&_ret));
		return _ret;
	}
	static Windows.Networking.Vpn.VpnNamespaceInfo New(wstring name, Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) dnsServerList, Windows.Foundation.Collections.IVector!(Windows.Networking.HostName) proxyServerList)
	{
		auto factory = factory!(Windows.Networking.Vpn.IVpnNamespaceInfoFactory);
		Windows.Networking.Vpn.VpnNamespaceInfo _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNamespaceInfoFactory)factory.asInterface(uuid("cb3e951a-b0ce-442b-acbb-5f99b202c31c"))).abi_CreateVpnNamespaceInfo(hstring(name).handle, dnsServerList, proxyServerList, &_ret));
		return _ret;
	}
}

interface VpnNativeProfile : Windows.Networking.Vpn.IVpnNativeProfile, Windows.Networking.Vpn.IVpnProfile, Windows.Networking.Vpn.IVpnNativeProfile2
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(HSTRING) Servers()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).get_Servers(&_ret));
		return _ret;
	}
	final Windows.Networking.Vpn.VpnRoutingPolicyType RoutingPolicyType()
	{
		Windows.Networking.Vpn.VpnRoutingPolicyType _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).get_RoutingPolicyType(&_ret));
		return _ret;
	}
	final void RoutingPolicyType(Windows.Networking.Vpn.VpnRoutingPolicyType value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).set_RoutingPolicyType(value));
	}
	final Windows.Networking.Vpn.VpnNativeProtocolType NativeProtocolType()
	{
		Windows.Networking.Vpn.VpnNativeProtocolType _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).get_NativeProtocolType(&_ret));
		return _ret;
	}
	final void NativeProtocolType(Windows.Networking.Vpn.VpnNativeProtocolType value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).set_NativeProtocolType(value));
	}
	final Windows.Networking.Vpn.VpnAuthenticationMethod UserAuthenticationMethod()
	{
		Windows.Networking.Vpn.VpnAuthenticationMethod _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).get_UserAuthenticationMethod(&_ret));
		return _ret;
	}
	final void UserAuthenticationMethod(Windows.Networking.Vpn.VpnAuthenticationMethod value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).set_UserAuthenticationMethod(value));
	}
	final Windows.Networking.Vpn.VpnAuthenticationMethod TunnelAuthenticationMethod()
	{
		Windows.Networking.Vpn.VpnAuthenticationMethod _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).get_TunnelAuthenticationMethod(&_ret));
		return _ret;
	}
	final void TunnelAuthenticationMethod(Windows.Networking.Vpn.VpnAuthenticationMethod value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).set_TunnelAuthenticationMethod(value));
	}
	final wstring EapConfiguration()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).get_EapConfiguration(&_ret));
		return hstring(_ret).d_str;
	}
	final void EapConfiguration(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile)this.asInterface(uuid("a4aee29e-6417-4333-9842-f0a66db69802"))).set_EapConfiguration(hstring(value).handle));
	}
	final wstring ProfileName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_ProfileName(&_ret));
		return hstring(_ret).d_str;
	}
	final void ProfileName(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).set_ProfileName(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnAppId) AppTriggers()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnAppId) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_AppTriggers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) Routes()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_Routes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnDomainNameInfo) DomainNameInfoList()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnDomainNameInfo) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_DomainNameInfoList(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnTrafficFilter) TrafficFilters()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnTrafficFilter) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_TrafficFilters(&_ret));
		return _ret;
	}
	final bool RememberCredentials()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_RememberCredentials(&_ret));
		return _ret;
	}
	final void RememberCredentials(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).set_RememberCredentials(value));
	}
	final bool AlwaysOn()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_AlwaysOn(&_ret));
		return _ret;
	}
	final void AlwaysOn(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).set_AlwaysOn(value));
	}
	final bool RequireVpnClientAppUI()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile2)this.asInterface(uuid("0fec2467-cdb5-4ac7-b5a3-0afb5ec47682"))).get_RequireVpnClientAppUI(&_ret));
		return _ret;
	}
	final void RequireVpnClientAppUI(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile2)this.asInterface(uuid("0fec2467-cdb5-4ac7-b5a3-0afb5ec47682"))).set_RequireVpnClientAppUI(value));
	}
	final Windows.Networking.Vpn.VpnManagementConnectionStatus ConnectionStatus()
	{
		Windows.Networking.Vpn.VpnManagementConnectionStatus _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnNativeProfile2)this.asInterface(uuid("0fec2467-cdb5-4ac7-b5a3-0afb5ec47682"))).get_ConnectionStatus(&_ret));
		return _ret;
	}
	static VpnNativeProfile New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnNativeProfile).abi_ActivateInstance(&ret));
		return cast(VpnNativeProfile) ret;
	}
}

interface VpnPacketBuffer : Windows.Networking.Vpn.IVpnPacketBuffer, Windows.Networking.Vpn.IVpnPacketBuffer2
{
extern(Windows):
	final Windows.Storage.Streams.Buffer Buffer()
	{
		Windows.Storage.Streams.Buffer _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBuffer)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce55"))).get_Buffer(&_ret));
		return _ret;
	}
	final void Status(Windows.Networking.Vpn.VpnPacketBufferStatus value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBuffer)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce55"))).set_Status(value));
	}
	final Windows.Networking.Vpn.VpnPacketBufferStatus Status()
	{
		Windows.Networking.Vpn.VpnPacketBufferStatus _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBuffer)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce55"))).get_Status(&_ret));
		return _ret;
	}
	final void TransportAffinity(UINT32 value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBuffer)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce55"))).set_TransportAffinity(value));
	}
	final UINT32 TransportAffinity()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBuffer)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce55"))).get_TransportAffinity(&_ret));
		return _ret;
	}
	final Windows.Networking.Vpn.VpnAppId AppId()
	{
		Windows.Networking.Vpn.VpnAppId _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBuffer2)this.asInterface(uuid("665e91f0-8805-4bf5-a619-2e84882e6b4f"))).get_AppId(&_ret));
		return _ret;
	}
	static Windows.Networking.Vpn.VpnPacketBuffer New(Windows.Networking.Vpn.VpnPacketBuffer parentBuffer, UINT32 offset, UINT32 length)
	{
		auto factory = factory!(Windows.Networking.Vpn.IVpnPacketBufferFactory);
		Windows.Networking.Vpn.VpnPacketBuffer _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBufferFactory)factory.asInterface(uuid("9e2ddca2-1712-4ce4-b179-8c652c6d9999"))).abi_CreateVpnPacketBuffer(parentBuffer, offset, length, &_ret));
		return _ret;
	}
}

interface VpnPacketBufferList : Windows.Networking.Vpn.IVpnPacketBufferList, Windows.Foundation.Collections.IIterable!(Windows.Networking.Vpn.VpnPacketBuffer)
{
extern(Windows):
	final void Append(Windows.Networking.Vpn.VpnPacketBuffer nextVpnPacketBuffer)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBufferList)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77"))).abi_Append(nextVpnPacketBuffer));
	}
	final void AddAtBegin(Windows.Networking.Vpn.VpnPacketBuffer nextVpnPacketBuffer)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBufferList)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77"))).abi_AddAtBegin(nextVpnPacketBuffer));
	}
	final Windows.Networking.Vpn.VpnPacketBuffer RemoveAtEnd()
	{
		Windows.Networking.Vpn.VpnPacketBuffer _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBufferList)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77"))).abi_RemoveAtEnd(&_ret));
		return _ret;
	}
	final Windows.Networking.Vpn.VpnPacketBuffer RemoveAtBegin()
	{
		Windows.Networking.Vpn.VpnPacketBuffer _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBufferList)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77"))).abi_RemoveAtBegin(&_ret));
		return _ret;
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBufferList)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77"))).abi_Clear());
	}
	final void Status(Windows.Networking.Vpn.VpnPacketBufferStatus value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBufferList)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77"))).set_Status(value));
	}
	final Windows.Networking.Vpn.VpnPacketBufferStatus Status()
	{
		Windows.Networking.Vpn.VpnPacketBufferStatus _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBufferList)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77"))).get_Status(&_ret));
		return _ret;
	}
	final UINT32 Size()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPacketBufferList)this.asInterface(uuid("c2f891fc-4d5c-4a63-b70d-4e307eacce77"))).get_Size(&_ret));
		return _ret;
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Networking.Vpn.VpnPacketBuffer)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Networking.Vpn.VpnPacketBuffer))this).abi_First(out_first));
	}
}

interface VpnPickedCredential : Windows.Networking.Vpn.IVpnPickedCredential
{
extern(Windows):
	final Windows.Security.Credentials.PasswordCredential PasskeyCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPickedCredential)this.asInterface(uuid("9a793ac7-8854-4e52-ad97-24dd9a842bce"))).get_PasskeyCredential(&_ret));
		return _ret;
	}
	final wstring AdditionalPin()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPickedCredential)this.asInterface(uuid("9a793ac7-8854-4e52-ad97-24dd9a842bce"))).get_AdditionalPin(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Security.Credentials.PasswordCredential OldPasswordCredential()
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPickedCredential)this.asInterface(uuid("9a793ac7-8854-4e52-ad97-24dd9a842bce"))).get_OldPasswordCredential(&_ret));
		return _ret;
	}
}

interface VpnPlugInProfile : Windows.Networking.Vpn.IVpnPlugInProfile, Windows.Networking.Vpn.IVpnProfile, Windows.Networking.Vpn.IVpnPlugInProfile2
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri) ServerUris()
	{
		Windows.Foundation.Collections.IVector!(Windows.Foundation.Uri) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPlugInProfile)this.asInterface(uuid("0edf0da4-4f00-4589-8d7b-4bf988f6542c"))).get_ServerUris(&_ret));
		return _ret;
	}
	final wstring CustomConfiguration()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPlugInProfile)this.asInterface(uuid("0edf0da4-4f00-4589-8d7b-4bf988f6542c"))).get_CustomConfiguration(&_ret));
		return hstring(_ret).d_str;
	}
	final void CustomConfiguration(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPlugInProfile)this.asInterface(uuid("0edf0da4-4f00-4589-8d7b-4bf988f6542c"))).set_CustomConfiguration(hstring(value).handle));
	}
	final wstring VpnPluginPackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPlugInProfile)this.asInterface(uuid("0edf0da4-4f00-4589-8d7b-4bf988f6542c"))).get_VpnPluginPackageFamilyName(&_ret));
		return hstring(_ret).d_str;
	}
	final void VpnPluginPackageFamilyName(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPlugInProfile)this.asInterface(uuid("0edf0da4-4f00-4589-8d7b-4bf988f6542c"))).set_VpnPluginPackageFamilyName(hstring(value).handle));
	}
	final wstring ProfileName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_ProfileName(&_ret));
		return hstring(_ret).d_str;
	}
	final void ProfileName(wstring value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).set_ProfileName(hstring(value).handle));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnAppId) AppTriggers()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnAppId) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_AppTriggers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) Routes()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_Routes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnDomainNameInfo) DomainNameInfoList()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnDomainNameInfo) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_DomainNameInfoList(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnTrafficFilter) TrafficFilters()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnTrafficFilter) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_TrafficFilters(&_ret));
		return _ret;
	}
	final bool RememberCredentials()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_RememberCredentials(&_ret));
		return _ret;
	}
	final void RememberCredentials(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).set_RememberCredentials(value));
	}
	final bool AlwaysOn()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).get_AlwaysOn(&_ret));
		return _ret;
	}
	final void AlwaysOn(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnProfile)this.asInterface(uuid("7875b751-b0d7-43db-8a93-d3fe2479e56a"))).set_AlwaysOn(value));
	}
	final bool RequireVpnClientAppUI()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPlugInProfile2)this.asInterface(uuid("611c4892-cf94-4ad6-ba99-00f4ff34565e"))).get_RequireVpnClientAppUI(&_ret));
		return _ret;
	}
	final void RequireVpnClientAppUI(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPlugInProfile2)this.asInterface(uuid("611c4892-cf94-4ad6-ba99-00f4ff34565e"))).set_RequireVpnClientAppUI(value));
	}
	final Windows.Networking.Vpn.VpnManagementConnectionStatus ConnectionStatus()
	{
		Windows.Networking.Vpn.VpnManagementConnectionStatus _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnPlugInProfile2)this.asInterface(uuid("611c4892-cf94-4ad6-ba99-00f4ff34565e"))).get_ConnectionStatus(&_ret));
		return _ret;
	}
	static VpnPlugInProfile New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnPlugInProfile).abi_ActivateInstance(&ret));
		return cast(VpnPlugInProfile) ret;
	}
}

interface VpnRoute : Windows.Networking.Vpn.IVpnRoute
{
extern(Windows):
	final void Address(Windows.Networking.HostName value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRoute)this.asInterface(uuid("b5731b83-0969-4699-938e-7776db29cfb3"))).set_Address(value));
	}
	final Windows.Networking.HostName Address()
	{
		Windows.Networking.HostName _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRoute)this.asInterface(uuid("b5731b83-0969-4699-938e-7776db29cfb3"))).get_Address(&_ret));
		return _ret;
	}
	final void PrefixSize(ubyte value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRoute)this.asInterface(uuid("b5731b83-0969-4699-938e-7776db29cfb3"))).set_PrefixSize(value));
	}
	final ubyte PrefixSize()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRoute)this.asInterface(uuid("b5731b83-0969-4699-938e-7776db29cfb3"))).get_PrefixSize(&_ret));
		return _ret;
	}
	static Windows.Networking.Vpn.VpnRoute New(Windows.Networking.HostName address, ubyte prefixSize)
	{
		auto factory = factory!(Windows.Networking.Vpn.IVpnRouteFactory);
		Windows.Networking.Vpn.VpnRoute _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteFactory)factory.asInterface(uuid("bdeab5ff-45cf-4b99-83fb-db3bc2672b02"))).abi_CreateVpnRoute(address, prefixSize, &_ret));
		return _ret;
	}
}

interface VpnRouteAssignment : Windows.Networking.Vpn.IVpnRouteAssignment
{
extern(Windows):
	final void Ipv4InclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteAssignment)this.asInterface(uuid("db64de22-ce39-4a76-9550-f61039f80e48"))).set_Ipv4InclusionRoutes(value));
	}
	final void Ipv6InclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteAssignment)this.asInterface(uuid("db64de22-ce39-4a76-9550-f61039f80e48"))).set_Ipv6InclusionRoutes(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) Ipv4InclusionRoutes()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteAssignment)this.asInterface(uuid("db64de22-ce39-4a76-9550-f61039f80e48"))).get_Ipv4InclusionRoutes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) Ipv6InclusionRoutes()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteAssignment)this.asInterface(uuid("db64de22-ce39-4a76-9550-f61039f80e48"))).get_Ipv6InclusionRoutes(&_ret));
		return _ret;
	}
	final void Ipv4ExclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteAssignment)this.asInterface(uuid("db64de22-ce39-4a76-9550-f61039f80e48"))).set_Ipv4ExclusionRoutes(value));
	}
	final void Ipv6ExclusionRoutes(Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteAssignment)this.asInterface(uuid("db64de22-ce39-4a76-9550-f61039f80e48"))).set_Ipv6ExclusionRoutes(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) Ipv4ExclusionRoutes()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteAssignment)this.asInterface(uuid("db64de22-ce39-4a76-9550-f61039f80e48"))).get_Ipv4ExclusionRoutes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) Ipv6ExclusionRoutes()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnRoute) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteAssignment)this.asInterface(uuid("db64de22-ce39-4a76-9550-f61039f80e48"))).get_Ipv6ExclusionRoutes(&_ret));
		return _ret;
	}
	final void ExcludeLocalSubnets(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteAssignment)this.asInterface(uuid("db64de22-ce39-4a76-9550-f61039f80e48"))).set_ExcludeLocalSubnets(value));
	}
	final bool ExcludeLocalSubnets()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnRouteAssignment)this.asInterface(uuid("db64de22-ce39-4a76-9550-f61039f80e48"))).get_ExcludeLocalSubnets(&_ret));
		return _ret;
	}
	static VpnRouteAssignment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnRouteAssignment).abi_ActivateInstance(&ret));
		return cast(VpnRouteAssignment) ret;
	}
}

interface VpnSystemHealth : Windows.Networking.Vpn.IVpnSystemHealth
{
extern(Windows):
	final Windows.Storage.Streams.Buffer StatementOfHealth()
	{
		Windows.Storage.Streams.Buffer _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnSystemHealth)this.asInterface(uuid("99a8f8af-c0ee-4e75-817a-f231aee5123d"))).get_StatementOfHealth(&_ret));
		return _ret;
	}
}

interface VpnTrafficFilter : Windows.Networking.Vpn.IVpnTrafficFilter
{
extern(Windows):
	final Windows.Networking.Vpn.VpnAppId AppId()
	{
		Windows.Networking.Vpn.VpnAppId _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).get_AppId(&_ret));
		return _ret;
	}
	final void AppId(Windows.Networking.Vpn.VpnAppId value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).set_AppId(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) AppClaims()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).get_AppClaims(&_ret));
		return _ret;
	}
	final Windows.Networking.Vpn.VpnIPProtocol Protocol()
	{
		Windows.Networking.Vpn.VpnIPProtocol _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).get_Protocol(&_ret));
		return _ret;
	}
	final void Protocol(Windows.Networking.Vpn.VpnIPProtocol value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).set_Protocol(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) LocalPortRanges()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).get_LocalPortRanges(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) RemotePortRanges()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).get_RemotePortRanges(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) LocalAddressRanges()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).get_LocalAddressRanges(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) RemoteAddressRanges()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).get_RemoteAddressRanges(&_ret));
		return _ret;
	}
	final Windows.Networking.Vpn.VpnRoutingPolicyType RoutingPolicyType()
	{
		Windows.Networking.Vpn.VpnRoutingPolicyType _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).get_RoutingPolicyType(&_ret));
		return _ret;
	}
	final void RoutingPolicyType(Windows.Networking.Vpn.VpnRoutingPolicyType value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilter)this.asInterface(uuid("2f691b60-6c9f-47f5-ac36-bb1b042e2c50"))).set_RoutingPolicyType(value));
	}
	static Windows.Networking.Vpn.VpnTrafficFilter New(Windows.Networking.Vpn.VpnAppId appId)
	{
		auto factory = factory!(Windows.Networking.Vpn.IVpnTrafficFilterFactory);
		Windows.Networking.Vpn.VpnTrafficFilter _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilterFactory)factory.asInterface(uuid("480d41d5-7f99-474c-86ee-96df168318f1"))).abi_Create(appId, &_ret));
		return _ret;
	}
}

interface VpnTrafficFilterAssignment : Windows.Networking.Vpn.IVpnTrafficFilterAssignment
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnTrafficFilter) TrafficFilterList()
	{
		Windows.Foundation.Collections.IVector!(Windows.Networking.Vpn.VpnTrafficFilter) _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilterAssignment)this.asInterface(uuid("56ccd45c-e664-471e-89cd-601603b9e0f3"))).get_TrafficFilterList(&_ret));
		return _ret;
	}
	final bool AllowOutbound()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilterAssignment)this.asInterface(uuid("56ccd45c-e664-471e-89cd-601603b9e0f3"))).get_AllowOutbound(&_ret));
		return _ret;
	}
	final void AllowOutbound(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilterAssignment)this.asInterface(uuid("56ccd45c-e664-471e-89cd-601603b9e0f3"))).set_AllowOutbound(value));
	}
	final bool AllowInbound()
	{
		bool _ret;
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilterAssignment)this.asInterface(uuid("56ccd45c-e664-471e-89cd-601603b9e0f3"))).get_AllowInbound(&_ret));
		return _ret;
	}
	final void AllowInbound(bool value)
	{
		Debug.OK((cast(Windows.Networking.Vpn.IVpnTrafficFilterAssignment)this.asInterface(uuid("56ccd45c-e664-471e-89cd-601603b9e0f3"))).set_AllowInbound(value));
	}
	static VpnTrafficFilterAssignment New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(VpnTrafficFilterAssignment).abi_ActivateInstance(&ret));
		return cast(VpnTrafficFilterAssignment) ret;
	}
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