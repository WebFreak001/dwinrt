module Windows.Networking.Connectivity;

import dwinrt;

struct NetworkUsageStates
{
	Windows.Networking.Connectivity.TriStates Roaming;
	Windows.Networking.Connectivity.TriStates Shared;
}

@uuid("71ba143f-598e-49d0-84eb-8febaedcc195")
interface NetworkStatusChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender);
}

@uuid("f769b039-eca2-45eb-ade1-b0368b756c49")
@WinrtFactory("Windows.Networking.Connectivity.AttributedNetworkUsage")
interface IAttributedNetworkUsage : IInspectable
{
extern(Windows):
	HRESULT get_BytesSent(UINT64* return_value);
	HRESULT get_BytesReceived(UINT64* return_value);
	HRESULT get_AttributionId(HSTRING* return_value);
	HRESULT get_AttributionName(HSTRING* return_value);
	HRESULT get_AttributionThumbnail(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
}

@uuid("6fa529f4-effd-4542-9ab2-705bbf94943a")
@WinrtFactory("Windows.Networking.Connectivity.CellularApnContext")
interface ICellularApnContext : IInspectable
{
extern(Windows):
	HRESULT get_ProviderId(HSTRING* return_value);
	HRESULT set_ProviderId(HSTRING value);
	HRESULT get_AccessPointName(HSTRING* return_value);
	HRESULT set_AccessPointName(HSTRING value);
	HRESULT get_UserName(HSTRING* return_value);
	HRESULT set_UserName(HSTRING value);
	HRESULT get_Password(HSTRING* return_value);
	HRESULT set_Password(HSTRING value);
	HRESULT get_IsCompressionEnabled(bool* return_value);
	HRESULT set_IsCompressionEnabled(bool value);
	HRESULT get_AuthenticationType(Windows.Networking.Connectivity.CellularApnAuthenticationType* return_value);
	HRESULT set_AuthenticationType(Windows.Networking.Connectivity.CellularApnAuthenticationType value);
}

@uuid("bad7d829-3416-4b10-a202-bac0b075bdae")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionCost")
interface IConnectionCost : IInspectable
{
extern(Windows):
	HRESULT get_NetworkCostType(Windows.Networking.Connectivity.NetworkCostType* return_value);
	HRESULT get_Roaming(bool* return_value);
	HRESULT get_OverDataLimit(bool* return_value);
	HRESULT get_ApproachingDataLimit(bool* return_value);
}

@uuid("8e113a05-e209-4549-bb25-5e0db691cb05")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionCost")
interface IConnectionCost2 : IInspectable
{
extern(Windows):
	HRESULT get_BackgroundDataUsageRestricted(bool* return_value);
}

@uuid("71ba143c-598e-49d0-84eb-8febaedcc195")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionProfile")
interface IConnectionProfile : IInspectable
{
extern(Windows):
	HRESULT get_ProfileName(HSTRING* return_value);
	HRESULT abi_GetNetworkConnectivityLevel(Windows.Networking.Connectivity.NetworkConnectivityLevel* return_value);
	HRESULT abi_GetNetworkNames(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT abi_GetConnectionCost(Windows.Networking.Connectivity.ConnectionCost* return_value);
	HRESULT abi_GetDataPlanStatus(Windows.Networking.Connectivity.DataPlanStatus* return_value);
	HRESULT get_NetworkAdapter(Windows.Networking.Connectivity.NetworkAdapter* return_value);
	deprecated("GetLocalUsage may be altered or unavailable for releases after Windows 8.1. Instead, use GetNetworkUsageAsync.")
	HRESULT abi_GetLocalUsage(Windows.Foundation.DateTime StartTime, Windows.Foundation.DateTime EndTime, Windows.Networking.Connectivity.DataUsage* return_value);
	deprecated("GetLocalUsage may be altered or unavailable for releases after Windows 8.1. Instead, use GetNetworkUsageAsync.")
	HRESULT abi_GetLocalUsagePerRoamingStates(Windows.Foundation.DateTime StartTime, Windows.Foundation.DateTime EndTime, Windows.Networking.Connectivity.RoamingStates States, Windows.Networking.Connectivity.DataUsage* return_value);
	HRESULT get_NetworkSecuritySettings(Windows.Networking.Connectivity.NetworkSecuritySettings* return_value);
}

@uuid("e2045145-4c9f-400c-9150-7ec7d6e2888a")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionProfile")
interface IConnectionProfile2 : IInspectable
{
extern(Windows):
	HRESULT get_IsWwanConnectionProfile(bool* return_value);
	HRESULT get_IsWlanConnectionProfile(bool* return_value);
	HRESULT get_WwanConnectionProfileDetails(Windows.Networking.Connectivity.WwanConnectionProfileDetails* return_value);
	HRESULT get_WlanConnectionProfileDetails(Windows.Networking.Connectivity.WlanConnectionProfileDetails* return_value);
	HRESULT get_ServiceProviderGuid(Windows.Foundation.IReference!(GUID)* return_value);
	HRESULT abi_GetSignalBars(Windows.Foundation.IReference!(BYTE)* return_value);
	HRESULT abi_GetDomainConnectivityLevel(Windows.Networking.Connectivity.DomainConnectivityLevel* return_value);
	HRESULT abi_GetNetworkUsageAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.DateTime endTime, Windows.Networking.Connectivity.DataUsageGranularity granularity, Windows.Networking.Connectivity.NetworkUsageStates states, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.NetworkUsage))* return_value);
	HRESULT abi_GetConnectivityIntervalsAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.DateTime endTime, Windows.Networking.Connectivity.NetworkUsageStates states, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.ConnectivityInterval))* return_value);
}

@uuid("578c2528-4cd9-4161-8045-201cfd5b115c")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionProfile")
interface IConnectionProfile3 : IInspectable
{
extern(Windows):
	HRESULT abi_GetAttributedNetworkUsageAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.DateTime endTime, Windows.Networking.Connectivity.NetworkUsageStates states, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.AttributedNetworkUsage))* return_value);
}

@uuid("204c7cc8-bd2d-4e8d-a4b3-455ec337388a")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionProfileFilter")
interface IConnectionProfileFilter : IInspectable
{
extern(Windows):
	HRESULT set_IsConnected(bool value);
	HRESULT get_IsConnected(bool* return_value);
	HRESULT set_IsWwanConnectionProfile(bool value);
	HRESULT get_IsWwanConnectionProfile(bool* return_value);
	HRESULT set_IsWlanConnectionProfile(bool value);
	HRESULT get_IsWlanConnectionProfile(bool* return_value);
	HRESULT set_NetworkCostType(Windows.Networking.Connectivity.NetworkCostType value);
	HRESULT get_NetworkCostType(Windows.Networking.Connectivity.NetworkCostType* return_value);
	HRESULT set_ServiceProviderGuid(Windows.Foundation.IReference!(GUID) value);
	HRESULT get_ServiceProviderGuid(Windows.Foundation.IReference!(GUID)* return_value);
}

@uuid("cd068ee1-c3fc-4fad-9ddc-593faa4b7885")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionProfileFilter")
interface IConnectionProfileFilter2 : IInspectable
{
extern(Windows):
	HRESULT set_IsRoaming(Windows.Foundation.IReference!(bool) value);
	HRESULT get_IsRoaming(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT set_IsOverDataLimit(Windows.Foundation.IReference!(bool) value);
	HRESULT get_IsOverDataLimit(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT set_IsBackgroundDataUsageRestricted(Windows.Foundation.IReference!(bool) value);
	HRESULT get_IsBackgroundDataUsageRestricted(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT get_RawData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("ff905d4c-f83b-41b0-8a0c-1462d9c56b73")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionSession")
interface IConnectionSession_Base : IInspectable
{
extern(Windows):
	HRESULT get_ConnectionProfile(Windows.Networking.Connectivity.ConnectionProfile* return_value);
}
@uuid("ff905d4c-f83b-41b0-8a0c-1462d9c56b73")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionSession")
interface IConnectionSession : IConnectionSession_Base, Windows.Foundation.IClosable {}

@uuid("4faa3fff-6746-4824-a964-eed8e87f8709")
@WinrtFactory("Windows.Networking.Connectivity.ConnectivityInterval")
interface IConnectivityInterval : IInspectable
{
extern(Windows):
	HRESULT get_StartTime(Windows.Foundation.DateTime* return_startTime);
	HRESULT get_ConnectionDuration(Windows.Foundation.TimeSpan* return_duration);
}

@uuid("5120d4b1-4fb1-48b0-afc9-42e0092a8164")
@WinrtFactory("Windows.Networking.Connectivity.ConnectivityManager")
interface IConnectivityManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_AcquireConnectionAsync(Windows.Networking.Connectivity.CellularApnContext cellularApnContext, Windows.Foundation.IAsyncOperation!(Windows.Networking.Connectivity.ConnectionSession)* return_operation);
	HRESULT abi_AddHttpRoutePolicy(Windows.Networking.Connectivity.RoutePolicy routePolicy);
	HRESULT abi_RemoveHttpRoutePolicy(Windows.Networking.Connectivity.RoutePolicy routePolicy);
}

@uuid("977a8b8c-3885-40f3-8851-42cd2bd568bb")
@WinrtFactory("Windows.Networking.Connectivity.DataPlanStatus")
interface IDataPlanStatus : IInspectable
{
extern(Windows):
	HRESULT get_DataPlanUsage(Windows.Networking.Connectivity.DataPlanUsage* return_value);
	HRESULT get_DataLimitInMegabytes(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_InboundBitsPerSecond(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_OutboundBitsPerSecond(Windows.Foundation.IReference!(UINT64)* return_value);
	HRESULT get_NextBillingCycle(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_MaxTransferSizeInMegabytes(Windows.Foundation.IReference!(UINT32)* return_value);
}

@uuid("b921492d-3b44-47ff-b361-be59e69ed1b0")
@WinrtFactory("Windows.Networking.Connectivity.DataPlanUsage")
interface IDataPlanUsage : IInspectable
{
extern(Windows):
	HRESULT get_MegabytesUsed(UINT32* return_value);
	HRESULT get_LastSyncTime(Windows.Foundation.DateTime* return_value);
}

@uuid("c1431dd3-b146-4d39-b959-0c69b096c512")
@WinrtFactory("Windows.Networking.Connectivity.DataUsage")
interface IDataUsage : IInspectable
{
extern(Windows):
	deprecated("IDataUsage may be altered or unavailable for releases after Windows 8.1. Instead, use INetworkUsage.")
	HRESULT get_BytesSent(UINT64* return_value);
	deprecated("IDataUsage may be altered or unavailable for releases after Windows 8.1. Instead, use INetworkUsage.")
	HRESULT get_BytesReceived(UINT64* return_value);
}

@uuid("d85145e0-138f-47d7-9b3a-36bb488cef33")
@WinrtFactory("Windows.Networking.Connectivity.IPInformation")
interface IIPInformation : IInspectable
{
extern(Windows):
	HRESULT get_NetworkAdapter(Windows.Networking.Connectivity.NetworkAdapter* return_value);
	HRESULT get_PrefixLength(Windows.Foundation.IReference!(BYTE)* return_value);
}

@uuid("48aa53aa-1108-4546-a6cb-9a74da4b7ba0")
@WinrtFactory("Windows.Networking.Connectivity.LanIdentifier")
interface ILanIdentifier : IInspectable
{
extern(Windows):
	HRESULT get_InfrastructureId(Windows.Networking.Connectivity.LanIdentifierData* return_value);
	HRESULT get_PortId(Windows.Networking.Connectivity.LanIdentifierData* return_value);
	HRESULT get_NetworkAdapterId(GUID* return_value);
}

@uuid("a74e83c3-d639-45be-a36a-c4e4aeaf6d9b")
@WinrtFactory("Windows.Networking.Connectivity.LanIdentifierData")
interface ILanIdentifierData : IInspectable
{
extern(Windows):
	HRESULT get_Type(UINT32* return_value);
	HRESULT get_Value(Windows.Foundation.Collections.IVectorView!(BYTE)* return_value);
}

@uuid("3b542e03-5388-496c-a8a3-affd39aec2e6")
@WinrtFactory("Windows.Networking.Connectivity.NetworkAdapter")
interface INetworkAdapter : IInspectable
{
extern(Windows):
	HRESULT get_OutboundMaxBitsPerSecond(UINT64* return_value);
	HRESULT get_InboundMaxBitsPerSecond(UINT64* return_value);
	HRESULT get_IanaInterfaceType(UINT32* return_value);
	HRESULT get_NetworkItem(Windows.Networking.Connectivity.NetworkItem* return_value);
	HRESULT get_NetworkAdapterId(GUID* return_value);
	HRESULT abi_GetConnectedProfileAsync(Windows.Foundation.IAsyncOperation!(Windows.Networking.Connectivity.ConnectionProfile)* return_value);
}

@uuid("5074f851-950d-4165-9c15-365619481eea")
@WinrtFactory("Windows.Networking.Connectivity.NetworkInformation")
interface INetworkInformationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetConnectionProfiles(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.ConnectionProfile)* return_value);
	HRESULT abi_GetInternetConnectionProfile(Windows.Networking.Connectivity.ConnectionProfile* return_value);
	HRESULT abi_GetLanIdentifiers(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.LanIdentifier)* return_value);
	HRESULT abi_GetHostNames(Windows.Foundation.Collections.IVectorView!(Windows.Networking.HostName)* return_value);
	HRESULT abi_GetProxyConfigurationAsync(Windows.Foundation.Uri uri, Windows.Foundation.IAsyncOperation!(Windows.Networking.Connectivity.ProxyConfiguration)* return_value);
	HRESULT abi_GetSortedEndpointPairs(Windows.Foundation.Collections.IIterable!(Windows.Networking.EndpointPair) destinationList, Windows.Networking.HostNameSortOptions sortOptions, Windows.Foundation.Collections.IVectorView!(Windows.Networking.EndpointPair)* return_value);
	HRESULT add_NetworkStatusChanged(Windows.Networking.Connectivity.NetworkStatusChangedEventHandler networkStatusHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_NetworkStatusChanged(EventRegistrationToken eventCookie);
}

@uuid("459ced14-2832-49b6-ba6e-e265f04786a8")
@WinrtFactory("Windows.Networking.Connectivity.NetworkInformation")
interface INetworkInformationStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_FindConnectionProfilesAsync(Windows.Networking.Connectivity.ConnectionProfileFilter pProfileFilter, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.ConnectionProfile))* return_value);
}

@uuid("01bc4d39-f5e0-4567-a28c-42080c831b2b")
@WinrtFactory("Windows.Networking.Connectivity.NetworkItem")
interface INetworkItem : IInspectable
{
extern(Windows):
	HRESULT get_NetworkId(GUID* return_value);
	HRESULT abi_GetNetworkTypes(Windows.Networking.Connectivity.NetworkTypes* return_value);
}

@uuid("7ca07e8d-917b-4b5f-b84d-28f7a5ac5402")
@WinrtFactory("Windows.Networking.Connectivity.NetworkSecuritySettings")
interface INetworkSecuritySettings : IInspectable
{
extern(Windows):
	HRESULT get_NetworkAuthenticationType(Windows.Networking.Connectivity.NetworkAuthenticationType* return_value);
	HRESULT get_NetworkEncryptionType(Windows.Networking.Connectivity.NetworkEncryptionType* return_value);
}

@uuid("1f0cf333-d7a6-44dd-a4e9-687c476b903d")
@WinrtFactory("Windows.Networking.Connectivity.NetworkStateChangeEventDetails")
interface INetworkStateChangeEventDetails : IInspectable
{
extern(Windows):
	HRESULT get_HasNewInternetConnectionProfile(bool* return_value);
	HRESULT get_HasNewConnectionCost(bool* return_value);
	HRESULT get_HasNewNetworkConnectivityLevel(bool* return_value);
	HRESULT get_HasNewDomainConnectivityLevel(bool* return_value);
	HRESULT get_HasNewHostNameList(bool* return_value);
	HRESULT get_HasNewWwanRegistrationState(bool* return_value);
}

@uuid("d643c0e8-30d3-4f6a-ad47-6a1873ceb3c1")
@WinrtFactory("Windows.Networking.Connectivity.NetworkStateChangeEventDetails")
interface INetworkStateChangeEventDetails2 : IInspectable
{
extern(Windows):
	HRESULT get_HasNewTetheringOperationalState(bool* return_value);
	HRESULT get_HasNewTetheringClientCount(bool* return_value);
}

@uuid("49da8fce-9985-4927-bf5b-072b5c65f8d9")
@WinrtFactory("Windows.Networking.Connectivity.NetworkUsage")
interface INetworkUsage : IInspectable
{
extern(Windows):
	HRESULT get_BytesSent(UINT64* return_value);
	HRESULT get_BytesReceived(UINT64* return_value);
	HRESULT get_ConnectionDuration(Windows.Foundation.TimeSpan* return_duration);
}

@uuid("ef3a60b4-9004-4dd6-b7d8-b3e502f4aad0")
@WinrtFactory("Windows.Networking.Connectivity.ProxyConfiguration")
interface IProxyConfiguration : IInspectable
{
extern(Windows):
	HRESULT get_ProxyUris(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri)* return_value);
	HRESULT get_CanConnectDirectly(bool* return_value);
}

@uuid("11abc4ac-0fc7-42e4-8742-569923b1ca11")
@WinrtFactory("Windows.Networking.Connectivity.RoutePolicy")
interface IRoutePolicy : IInspectable
{
extern(Windows):
	HRESULT get_ConnectionProfile(Windows.Networking.Connectivity.ConnectionProfile* return_value);
	HRESULT get_HostName(Windows.Networking.HostName* return_value);
	HRESULT get_HostNameType(Windows.Networking.DomainNameType* return_value);
}

@uuid("36027933-a18e-4db5-a697-f58fa7364e44")
@WinrtFactory("Windows.Networking.Connectivity.RoutePolicy")
interface IRoutePolicyFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateRoutePolicy(Windows.Networking.Connectivity.ConnectionProfile connectionProfile, Windows.Networking.HostName hostName, Windows.Networking.DomainNameType type, Windows.Networking.Connectivity.RoutePolicy* return_routePolicy);
}

@uuid("562098cb-b35a-4bf1-a884-b7557e88ff86")
@WinrtFactory("Windows.Networking.Connectivity.WlanConnectionProfileDetails")
interface IWlanConnectionProfileDetails : IInspectable
{
extern(Windows):
	HRESULT abi_GetConnectedSsid(HSTRING* return_value);
}

@uuid("0e4da8fe-835f-4df3-82fd-df556ebc09ef")
@WinrtFactory("Windows.Networking.Connectivity.WwanConnectionProfileDetails")
interface IWwanConnectionProfileDetails : IInspectable
{
extern(Windows):
	HRESULT get_HomeProviderId(HSTRING* return_value);
	HRESULT get_AccessPointName(HSTRING* return_value);
	HRESULT abi_GetNetworkRegistrationState(Windows.Networking.Connectivity.WwanNetworkRegistrationState* return_value);
	HRESULT abi_GetCurrentDataClass(Windows.Networking.Connectivity.WwanDataClass* return_value);
}

interface AttributedNetworkUsage : Windows.Networking.Connectivity.IAttributedNetworkUsage
{
extern(Windows):
	final UINT64 BytesSent()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IAttributedNetworkUsage).get_BytesSent(&_ret));
		return _ret;
	}
	final UINT64 BytesReceived()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IAttributedNetworkUsage).get_BytesReceived(&_ret));
		return _ret;
	}
	final HSTRING AttributionId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IAttributedNetworkUsage).get_AttributionId(&_ret));
		return _ret;
	}
	final HSTRING AttributionName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IAttributedNetworkUsage).get_AttributionName(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference AttributionThumbnail()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IAttributedNetworkUsage).get_AttributionThumbnail(&_ret));
		return _ret;
	}
}

interface CellularApnContext : Windows.Networking.Connectivity.ICellularApnContext
{
extern(Windows):
	final HSTRING ProviderId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).get_ProviderId(&_ret));
		return _ret;
	}
	final void ProviderId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).set_ProviderId(value));
	}
	final HSTRING AccessPointName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).get_AccessPointName(&_ret));
		return _ret;
	}
	final void AccessPointName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).set_AccessPointName(value));
	}
	final HSTRING UserName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).get_UserName(&_ret));
		return _ret;
	}
	final void UserName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).set_UserName(value));
	}
	final HSTRING Password()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).get_Password(&_ret));
		return _ret;
	}
	final void Password(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).set_Password(value));
	}
	final bool IsCompressionEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).get_IsCompressionEnabled(&_ret));
		return _ret;
	}
	final void IsCompressionEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).set_IsCompressionEnabled(value));
	}
	final Windows.Networking.Connectivity.CellularApnAuthenticationType AuthenticationType()
	{
		Windows.Networking.Connectivity.CellularApnAuthenticationType _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).get_AuthenticationType(&_ret));
		return _ret;
	}
	final void AuthenticationType(Windows.Networking.Connectivity.CellularApnAuthenticationType value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.ICellularApnContext).set_AuthenticationType(value));
	}
}

interface ConnectionCost : Windows.Networking.Connectivity.IConnectionCost, Windows.Networking.Connectivity.IConnectionCost2
{
extern(Windows):
	final Windows.Networking.Connectivity.NetworkCostType NetworkCostType()
	{
		Windows.Networking.Connectivity.NetworkCostType _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionCost).get_NetworkCostType(&_ret));
		return _ret;
	}
	final bool Roaming()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionCost).get_Roaming(&_ret));
		return _ret;
	}
	final bool OverDataLimit()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionCost).get_OverDataLimit(&_ret));
		return _ret;
	}
	final bool ApproachingDataLimit()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionCost).get_ApproachingDataLimit(&_ret));
		return _ret;
	}
	final bool BackgroundDataUsageRestricted()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionCost2).get_BackgroundDataUsageRestricted(&_ret));
		return _ret;
	}
}

interface ConnectionProfile : Windows.Networking.Connectivity.IConnectionProfile, Windows.Networking.Connectivity.IConnectionProfile2, Windows.Networking.Connectivity.IConnectionProfile3
{
extern(Windows):
	final HSTRING ProfileName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile).get_ProfileName(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.NetworkConnectivityLevel GetNetworkConnectivityLevel()
	{
		Windows.Networking.Connectivity.NetworkConnectivityLevel _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile).abi_GetNetworkConnectivityLevel(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) GetNetworkNames()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile).abi_GetNetworkNames(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.ConnectionCost GetConnectionCost()
	{
		Windows.Networking.Connectivity.ConnectionCost _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile).abi_GetConnectionCost(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.DataPlanStatus GetDataPlanStatus()
	{
		Windows.Networking.Connectivity.DataPlanStatus _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile).abi_GetDataPlanStatus(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.NetworkAdapter NetworkAdapter()
	{
		Windows.Networking.Connectivity.NetworkAdapter _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile).get_NetworkAdapter(&_ret));
		return _ret;
	}
	deprecated("GetLocalUsage may be altered or unavailable for releases after Windows 8.1. Instead, use GetNetworkUsageAsync.")
	final Windows.Networking.Connectivity.DataUsage GetLocalUsage(Windows.Foundation.DateTime StartTime, Windows.Foundation.DateTime EndTime)
	{
		Windows.Networking.Connectivity.DataUsage _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile).abi_GetLocalUsage(StartTime, EndTime, &_ret));
		return _ret;
	}
	deprecated("GetLocalUsage may be altered or unavailable for releases after Windows 8.1. Instead, use GetNetworkUsageAsync.")
	final Windows.Networking.Connectivity.DataUsage GetLocalUsagePerRoamingStates(Windows.Foundation.DateTime StartTime, Windows.Foundation.DateTime EndTime, Windows.Networking.Connectivity.RoamingStates States)
	{
		Windows.Networking.Connectivity.DataUsage _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile).abi_GetLocalUsagePerRoamingStates(StartTime, EndTime, States, &_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.NetworkSecuritySettings NetworkSecuritySettings()
	{
		Windows.Networking.Connectivity.NetworkSecuritySettings _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile).get_NetworkSecuritySettings(&_ret));
		return _ret;
	}
	final bool IsWwanConnectionProfile()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile2).get_IsWwanConnectionProfile(&_ret));
		return _ret;
	}
	final bool IsWlanConnectionProfile()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile2).get_IsWlanConnectionProfile(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.WwanConnectionProfileDetails WwanConnectionProfileDetails()
	{
		Windows.Networking.Connectivity.WwanConnectionProfileDetails _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile2).get_WwanConnectionProfileDetails(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.WlanConnectionProfileDetails WlanConnectionProfileDetails()
	{
		Windows.Networking.Connectivity.WlanConnectionProfileDetails _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile2).get_WlanConnectionProfileDetails(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(GUID) ServiceProviderGuid()
	{
		Windows.Foundation.IReference!(GUID) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile2).get_ServiceProviderGuid(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(BYTE) GetSignalBars()
	{
		Windows.Foundation.IReference!(BYTE) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile2).abi_GetSignalBars(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.DomainConnectivityLevel GetDomainConnectivityLevel()
	{
		Windows.Networking.Connectivity.DomainConnectivityLevel _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile2).abi_GetDomainConnectivityLevel(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.NetworkUsage)) GetNetworkUsageAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.DateTime endTime, Windows.Networking.Connectivity.DataUsageGranularity granularity, Windows.Networking.Connectivity.NetworkUsageStates states)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.NetworkUsage)) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile2).abi_GetNetworkUsageAsync(startTime, endTime, granularity, states, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.ConnectivityInterval)) GetConnectivityIntervalsAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.DateTime endTime, Windows.Networking.Connectivity.NetworkUsageStates states)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.ConnectivityInterval)) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile2).abi_GetConnectivityIntervalsAsync(startTime, endTime, states, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.AttributedNetworkUsage)) GetAttributedNetworkUsageAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.DateTime endTime, Windows.Networking.Connectivity.NetworkUsageStates states)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.AttributedNetworkUsage)) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfile3).abi_GetAttributedNetworkUsageAsync(startTime, endTime, states, &_ret));
		return _ret;
	}
}

interface ConnectionProfileFilter : Windows.Networking.Connectivity.IConnectionProfileFilter, Windows.Networking.Connectivity.IConnectionProfileFilter2
{
extern(Windows):
	final void IsConnected(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter).set_IsConnected(value));
	}
	final bool IsConnected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter).get_IsConnected(&_ret));
		return _ret;
	}
	final void IsWwanConnectionProfile(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter).set_IsWwanConnectionProfile(value));
	}
	final bool IsWwanConnectionProfile()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter).get_IsWwanConnectionProfile(&_ret));
		return _ret;
	}
	final void IsWlanConnectionProfile(bool value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter).set_IsWlanConnectionProfile(value));
	}
	final bool IsWlanConnectionProfile()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter).get_IsWlanConnectionProfile(&_ret));
		return _ret;
	}
	final void NetworkCostType(Windows.Networking.Connectivity.NetworkCostType value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter).set_NetworkCostType(value));
	}
	final Windows.Networking.Connectivity.NetworkCostType NetworkCostType()
	{
		Windows.Networking.Connectivity.NetworkCostType _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter).get_NetworkCostType(&_ret));
		return _ret;
	}
	final void ServiceProviderGuid(Windows.Foundation.IReference!(GUID) value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter).set_ServiceProviderGuid(value));
	}
	final Windows.Foundation.IReference!(GUID) ServiceProviderGuid()
	{
		Windows.Foundation.IReference!(GUID) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter).get_ServiceProviderGuid(&_ret));
		return _ret;
	}
	final void IsRoaming(Windows.Foundation.IReference!(bool) value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter2).set_IsRoaming(value));
	}
	final Windows.Foundation.IReference!(bool) IsRoaming()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter2).get_IsRoaming(&_ret));
		return _ret;
	}
	final void IsOverDataLimit(Windows.Foundation.IReference!(bool) value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter2).set_IsOverDataLimit(value));
	}
	final Windows.Foundation.IReference!(bool) IsOverDataLimit()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter2).get_IsOverDataLimit(&_ret));
		return _ret;
	}
	final void IsBackgroundDataUsageRestricted(Windows.Foundation.IReference!(bool) value)
	{
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter2).set_IsBackgroundDataUsageRestricted(value));
	}
	final Windows.Foundation.IReference!(bool) IsBackgroundDataUsageRestricted()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter2).get_IsBackgroundDataUsageRestricted(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionProfileFilter2).get_RawData(&_ret));
		return _ret;
	}
}

interface ConnectionSession : Windows.Networking.Connectivity.IConnectionSession, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Networking.Connectivity.ConnectionProfile ConnectionProfile()
	{
		Windows.Networking.Connectivity.ConnectionProfile _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectionSession).get_ConnectionProfile(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface ConnectivityInterval : Windows.Networking.Connectivity.IConnectivityInterval
{
extern(Windows):
	final Windows.Foundation.DateTime StartTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectivityInterval).get_StartTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan ConnectionDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IConnectivityInterval).get_ConnectionDuration(&_ret));
		return _ret;
	}
}

interface ConnectivityManager
{
}

interface DataPlanStatus : Windows.Networking.Connectivity.IDataPlanStatus
{
extern(Windows):
	final Windows.Networking.Connectivity.DataPlanUsage DataPlanUsage()
	{
		Windows.Networking.Connectivity.DataPlanUsage _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IDataPlanStatus).get_DataPlanUsage(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) DataLimitInMegabytes()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IDataPlanStatus).get_DataLimitInMegabytes(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) InboundBitsPerSecond()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IDataPlanStatus).get_InboundBitsPerSecond(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT64) OutboundBitsPerSecond()
	{
		Windows.Foundation.IReference!(UINT64) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IDataPlanStatus).get_OutboundBitsPerSecond(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) NextBillingCycle()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IDataPlanStatus).get_NextBillingCycle(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) MaxTransferSizeInMegabytes()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IDataPlanStatus).get_MaxTransferSizeInMegabytes(&_ret));
		return _ret;
	}
}

interface DataPlanUsage : Windows.Networking.Connectivity.IDataPlanUsage
{
extern(Windows):
	final UINT32 MegabytesUsed()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IDataPlanUsage).get_MegabytesUsed(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime LastSyncTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IDataPlanUsage).get_LastSyncTime(&_ret));
		return _ret;
	}
}

interface DataUsage : Windows.Networking.Connectivity.IDataUsage
{
extern(Windows):
	deprecated("IDataUsage may be altered or unavailable for releases after Windows 8.1. Instead, use INetworkUsage.")
	final UINT64 BytesSent()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IDataUsage).get_BytesSent(&_ret));
		return _ret;
	}
	deprecated("IDataUsage may be altered or unavailable for releases after Windows 8.1. Instead, use INetworkUsage.")
	final UINT64 BytesReceived()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IDataUsage).get_BytesReceived(&_ret));
		return _ret;
	}
}

interface IPInformation : Windows.Networking.Connectivity.IIPInformation
{
extern(Windows):
	final Windows.Networking.Connectivity.NetworkAdapter NetworkAdapter()
	{
		Windows.Networking.Connectivity.NetworkAdapter _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IIPInformation).get_NetworkAdapter(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(BYTE) PrefixLength()
	{
		Windows.Foundation.IReference!(BYTE) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IIPInformation).get_PrefixLength(&_ret));
		return _ret;
	}
}

interface LanIdentifier : Windows.Networking.Connectivity.ILanIdentifier
{
extern(Windows):
	final Windows.Networking.Connectivity.LanIdentifierData InfrastructureId()
	{
		Windows.Networking.Connectivity.LanIdentifierData _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ILanIdentifier).get_InfrastructureId(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.LanIdentifierData PortId()
	{
		Windows.Networking.Connectivity.LanIdentifierData _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ILanIdentifier).get_PortId(&_ret));
		return _ret;
	}
	final GUID NetworkAdapterId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ILanIdentifier).get_NetworkAdapterId(&_ret));
		return _ret;
	}
}

interface LanIdentifierData : Windows.Networking.Connectivity.ILanIdentifierData
{
extern(Windows):
	final UINT32 Type()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ILanIdentifierData).get_Type(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(BYTE) Value()
	{
		Windows.Foundation.Collections.IVectorView!(BYTE) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.ILanIdentifierData).get_Value(&_ret));
		return _ret;
	}
}

interface NetworkAdapter : Windows.Networking.Connectivity.INetworkAdapter
{
extern(Windows):
	final UINT64 OutboundMaxBitsPerSecond()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkAdapter).get_OutboundMaxBitsPerSecond(&_ret));
		return _ret;
	}
	final UINT64 InboundMaxBitsPerSecond()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkAdapter).get_InboundMaxBitsPerSecond(&_ret));
		return _ret;
	}
	final UINT32 IanaInterfaceType()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkAdapter).get_IanaInterfaceType(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.NetworkItem NetworkItem()
	{
		Windows.Networking.Connectivity.NetworkItem _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkAdapter).get_NetworkItem(&_ret));
		return _ret;
	}
	final GUID NetworkAdapterId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkAdapter).get_NetworkAdapterId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Networking.Connectivity.ConnectionProfile) GetConnectedProfileAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Networking.Connectivity.ConnectionProfile) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkAdapter).abi_GetConnectedProfileAsync(&_ret));
		return _ret;
	}
}

interface NetworkInformation
{
}

interface NetworkItem : Windows.Networking.Connectivity.INetworkItem
{
extern(Windows):
	final GUID NetworkId()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkItem).get_NetworkId(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.NetworkTypes GetNetworkTypes()
	{
		Windows.Networking.Connectivity.NetworkTypes _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkItem).abi_GetNetworkTypes(&_ret));
		return _ret;
	}
}

interface NetworkSecuritySettings : Windows.Networking.Connectivity.INetworkSecuritySettings
{
extern(Windows):
	final Windows.Networking.Connectivity.NetworkAuthenticationType NetworkAuthenticationType()
	{
		Windows.Networking.Connectivity.NetworkAuthenticationType _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkSecuritySettings).get_NetworkAuthenticationType(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.NetworkEncryptionType NetworkEncryptionType()
	{
		Windows.Networking.Connectivity.NetworkEncryptionType _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkSecuritySettings).get_NetworkEncryptionType(&_ret));
		return _ret;
	}
}

interface NetworkStateChangeEventDetails : Windows.Networking.Connectivity.INetworkStateChangeEventDetails, Windows.Networking.Connectivity.INetworkStateChangeEventDetails2
{
extern(Windows):
	final bool HasNewInternetConnectionProfile()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkStateChangeEventDetails).get_HasNewInternetConnectionProfile(&_ret));
		return _ret;
	}
	final bool HasNewConnectionCost()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkStateChangeEventDetails).get_HasNewConnectionCost(&_ret));
		return _ret;
	}
	final bool HasNewNetworkConnectivityLevel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkStateChangeEventDetails).get_HasNewNetworkConnectivityLevel(&_ret));
		return _ret;
	}
	final bool HasNewDomainConnectivityLevel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkStateChangeEventDetails).get_HasNewDomainConnectivityLevel(&_ret));
		return _ret;
	}
	final bool HasNewHostNameList()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkStateChangeEventDetails).get_HasNewHostNameList(&_ret));
		return _ret;
	}
	final bool HasNewWwanRegistrationState()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkStateChangeEventDetails).get_HasNewWwanRegistrationState(&_ret));
		return _ret;
	}
	final bool HasNewTetheringOperationalState()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkStateChangeEventDetails2).get_HasNewTetheringOperationalState(&_ret));
		return _ret;
	}
	final bool HasNewTetheringClientCount()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkStateChangeEventDetails2).get_HasNewTetheringClientCount(&_ret));
		return _ret;
	}
}

interface NetworkUsage : Windows.Networking.Connectivity.INetworkUsage
{
extern(Windows):
	final UINT64 BytesSent()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkUsage).get_BytesSent(&_ret));
		return _ret;
	}
	final UINT64 BytesReceived()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkUsage).get_BytesReceived(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan ConnectionDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.INetworkUsage).get_ConnectionDuration(&_ret));
		return _ret;
	}
}

interface ProxyConfiguration : Windows.Networking.Connectivity.IProxyConfiguration
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri) ProxyUris()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri) _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IProxyConfiguration).get_ProxyUris(&_ret));
		return _ret;
	}
	final bool CanConnectDirectly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IProxyConfiguration).get_CanConnectDirectly(&_ret));
		return _ret;
	}
}

interface RoutePolicy : Windows.Networking.Connectivity.IRoutePolicy
{
extern(Windows):
	final Windows.Networking.Connectivity.ConnectionProfile ConnectionProfile()
	{
		Windows.Networking.Connectivity.ConnectionProfile _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IRoutePolicy).get_ConnectionProfile(&_ret));
		return _ret;
	}
	final Windows.Networking.HostName HostName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IRoutePolicy).get_HostName(&_ret));
		return _ret;
	}
	final Windows.Networking.DomainNameType HostNameType()
	{
		Windows.Networking.DomainNameType _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IRoutePolicy).get_HostNameType(&_ret));
		return _ret;
	}
}

interface WlanConnectionProfileDetails : Windows.Networking.Connectivity.IWlanConnectionProfileDetails
{
extern(Windows):
	final HSTRING GetConnectedSsid()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IWlanConnectionProfileDetails).abi_GetConnectedSsid(&_ret));
		return _ret;
	}
}

interface WwanConnectionProfileDetails : Windows.Networking.Connectivity.IWwanConnectionProfileDetails
{
extern(Windows):
	final HSTRING HomeProviderId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IWwanConnectionProfileDetails).get_HomeProviderId(&_ret));
		return _ret;
	}
	final HSTRING AccessPointName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IWwanConnectionProfileDetails).get_AccessPointName(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.WwanNetworkRegistrationState GetNetworkRegistrationState()
	{
		Windows.Networking.Connectivity.WwanNetworkRegistrationState _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IWwanConnectionProfileDetails).abi_GetNetworkRegistrationState(&_ret));
		return _ret;
	}
	final Windows.Networking.Connectivity.WwanDataClass GetCurrentDataClass()
	{
		Windows.Networking.Connectivity.WwanDataClass _ret;
		Debug.OK(this.as!(Windows.Networking.Connectivity.IWwanConnectionProfileDetails).abi_GetCurrentDataClass(&_ret));
		return _ret;
	}
}

enum CellularApnAuthenticationType
{
	None = 0,
	Pap = 1,
	Chap = 2,
	Mschapv2 = 3
}

enum DataUsageGranularity
{
	PerMinute = 0,
	PerHour = 1,
	PerDay = 2,
	Total = 3
}

enum DomainConnectivityLevel
{
	None = 0,
	Unauthenticated = 1,
	Authenticated = 2
}

enum NetworkAuthenticationType
{
	None = 0,
	Unknown = 1,
	Open80211 = 2,
	SharedKey80211 = 3,
	Wpa = 4,
	WpaPsk = 5,
	WpaNone = 6,
	Rsna = 7,
	RsnaPsk = 8,
	Ihv = 9
}

enum NetworkConnectivityLevel
{
	None = 0,
	LocalAccess = 1,
	ConstrainedInternetAccess = 2,
	InternetAccess = 3
}

enum NetworkCostType
{
	Unknown = 0,
	Unrestricted = 1,
	Fixed = 2,
	Variable = 3
}

enum NetworkEncryptionType
{
	None = 0,
	Unknown = 1,
	Wep = 2,
	Wep40 = 3,
	Wep104 = 4,
	Tkip = 5,
	Ccmp = 6,
	WpaUseGroup = 7,
	RsnUseGroup = 8,
	Ihv = 9
}

@bitflags
enum NetworkTypes
{
	None = 0x0,
	Internet = 0x1,
	PrivateNetwork = 0x2
}

@bitflags
enum RoamingStates
{
	None = 0x0,
	NotRoaming = 0x1,
	Roaming = 0x2
}

enum TriStates
{
	DoNotCare = 0,
	No = 1,
	Yes = 2
}

@bitflags
enum WwanDataClass
{
	None = 0x0,
	Gprs = 0x1,
	Edge = 0x2,
	Umts = 0x4,
	Hsdpa = 0x8,
	Hsupa = 0x10,
	LteAdvanced = 0x20,
	Cdma1xRtt = 0x10000,
	Cdma1xEvdo = 0x20000,
	Cdma1xEvdoRevA = 0x40000,
	Cdma1xEvdv = 0x80000,
	Cdma3xRtt = 0x100000,
	Cdma1xEvdoRevB = 0x200000,
	CdmaUmb = 0x400000,
	Custom = 0x80000000
}

enum WwanNetworkRegistrationState
{
	None = 0,
	Deregistered = 1,
	Searching = 2,
	Home = 3,
	Roaming = 4,
	Partner = 5,
	Denied = 6
}