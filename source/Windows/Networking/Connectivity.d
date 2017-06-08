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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BackgroundDataUsageRestricted(bool* return_value);
}

@uuid("71ba143c-598e-49d0-84eb-8febaedcc195")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionProfile")
interface IConnectionProfile : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAttributedNetworkUsageAsync(Windows.Foundation.DateTime startTime, Windows.Foundation.DateTime endTime, Windows.Networking.Connectivity.NetworkUsageStates states, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.AttributedNetworkUsage))* return_value);
}

@uuid("204c7cc8-bd2d-4e8d-a4b3-455ec337388a")
@WinrtFactory("Windows.Networking.Connectivity.ConnectionProfileFilter")
interface IConnectionProfileFilter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
interface IConnectionSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ConnectionProfile(Windows.Networking.Connectivity.ConnectionProfile* return_value);
}

@uuid("4faa3fff-6746-4824-a964-eed8e87f8709")
@WinrtFactory("Windows.Networking.Connectivity.ConnectivityInterval")
interface IConnectivityInterval : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StartTime(Windows.Foundation.DateTime* return_startTime);
	HRESULT get_ConnectionDuration(Windows.Foundation.TimeSpan* return_duration);
}

@uuid("5120d4b1-4fb1-48b0-afc9-42e0092a8164")
@WinrtFactory("Windows.Networking.Connectivity.ConnectivityManager")
interface IConnectivityManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AcquireConnectionAsync(Windows.Networking.Connectivity.CellularApnContext cellularApnContext, Windows.Foundation.IAsyncOperation!(Windows.Networking.Connectivity.ConnectionSession)* return_operation);
	HRESULT abi_AddHttpRoutePolicy(Windows.Networking.Connectivity.RoutePolicy routePolicy);
	HRESULT abi_RemoveHttpRoutePolicy(Windows.Networking.Connectivity.RoutePolicy routePolicy);
}

@uuid("977a8b8c-3885-40f3-8851-42cd2bd568bb")
@WinrtFactory("Windows.Networking.Connectivity.DataPlanStatus")
interface IDataPlanStatus : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MegabytesUsed(UINT32* return_value);
	HRESULT get_LastSyncTime(Windows.Foundation.DateTime* return_value);
}

@uuid("c1431dd3-b146-4d39-b959-0c69b096c512")
@WinrtFactory("Windows.Networking.Connectivity.DataUsage")
interface IDataUsage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NetworkAdapter(Windows.Networking.Connectivity.NetworkAdapter* return_value);
	HRESULT get_PrefixLength(Windows.Foundation.IReference!(BYTE)* return_value);
}

@uuid("48aa53aa-1108-4546-a6cb-9a74da4b7ba0")
@WinrtFactory("Windows.Networking.Connectivity.LanIdentifier")
interface ILanIdentifier : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InfrastructureId(Windows.Networking.Connectivity.LanIdentifierData* return_value);
	HRESULT get_PortId(Windows.Networking.Connectivity.LanIdentifierData* return_value);
	HRESULT get_NetworkAdapterId(GUID* return_value);
}

@uuid("a74e83c3-d639-45be-a36a-c4e4aeaf6d9b")
@WinrtFactory("Windows.Networking.Connectivity.LanIdentifierData")
interface ILanIdentifierData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Type(UINT32* return_value);
	HRESULT get_Value(Windows.Foundation.Collections.IVectorView!(BYTE)* return_value);
}

@uuid("3b542e03-5388-496c-a8a3-affd39aec2e6")
@WinrtFactory("Windows.Networking.Connectivity.NetworkAdapter")
interface INetworkAdapter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FindConnectionProfilesAsync(Windows.Networking.Connectivity.ConnectionProfileFilter pProfileFilter, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Networking.Connectivity.ConnectionProfile))* return_value);
}

@uuid("01bc4d39-f5e0-4567-a28c-42080c831b2b")
@WinrtFactory("Windows.Networking.Connectivity.NetworkItem")
interface INetworkItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NetworkId(GUID* return_value);
	HRESULT abi_GetNetworkTypes(Windows.Networking.Connectivity.NetworkTypes* return_value);
}

@uuid("7ca07e8d-917b-4b5f-b84d-28f7a5ac5402")
@WinrtFactory("Windows.Networking.Connectivity.NetworkSecuritySettings")
interface INetworkSecuritySettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_NetworkAuthenticationType(Windows.Networking.Connectivity.NetworkAuthenticationType* return_value);
	HRESULT get_NetworkEncryptionType(Windows.Networking.Connectivity.NetworkEncryptionType* return_value);
}

@uuid("1f0cf333-d7a6-44dd-a4e9-687c476b903d")
@WinrtFactory("Windows.Networking.Connectivity.NetworkStateChangeEventDetails")
interface INetworkStateChangeEventDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HasNewTetheringOperationalState(bool* return_value);
	HRESULT get_HasNewTetheringClientCount(bool* return_value);
}

@uuid("49da8fce-9985-4927-bf5b-072b5c65f8d9")
@WinrtFactory("Windows.Networking.Connectivity.NetworkUsage")
interface INetworkUsage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BytesSent(UINT64* return_value);
	HRESULT get_BytesReceived(UINT64* return_value);
	HRESULT get_ConnectionDuration(Windows.Foundation.TimeSpan* return_duration);
}

@uuid("ef3a60b4-9004-4dd6-b7d8-b3e502f4aad0")
@WinrtFactory("Windows.Networking.Connectivity.ProxyConfiguration")
interface IProxyConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ProxyUris(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri)* return_value);
	HRESULT get_CanConnectDirectly(bool* return_value);
}

@uuid("11abc4ac-0fc7-42e4-8742-569923b1ca11")
@WinrtFactory("Windows.Networking.Connectivity.RoutePolicy")
interface IRoutePolicy : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ConnectionProfile(Windows.Networking.Connectivity.ConnectionProfile* return_value);
	HRESULT get_HostName(Windows.Networking.HostName* return_value);
	HRESULT get_HostNameType(Windows.Networking.DomainNameType* return_value);
}

@uuid("36027933-a18e-4db5-a697-f58fa7364e44")
@WinrtFactory("Windows.Networking.Connectivity.RoutePolicy")
interface IRoutePolicyFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateRoutePolicy(Windows.Networking.Connectivity.ConnectionProfile connectionProfile, Windows.Networking.HostName hostName, Windows.Networking.DomainNameType type, Windows.Networking.Connectivity.RoutePolicy* return_routePolicy);
}

@uuid("562098cb-b35a-4bf1-a884-b7557e88ff86")
@WinrtFactory("Windows.Networking.Connectivity.WlanConnectionProfileDetails")
interface IWlanConnectionProfileDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetConnectedSsid(HSTRING* return_value);
}

@uuid("0e4da8fe-835f-4df3-82fd-df556ebc09ef")
@WinrtFactory("Windows.Networking.Connectivity.WwanConnectionProfileDetails")
interface IWwanConnectionProfileDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HomeProviderId(HSTRING* return_value);
	HRESULT get_AccessPointName(HSTRING* return_value);
	HRESULT abi_GetNetworkRegistrationState(Windows.Networking.Connectivity.WwanNetworkRegistrationState* return_value);
	HRESULT abi_GetCurrentDataClass(Windows.Networking.Connectivity.WwanDataClass* return_value);
}

interface AttributedNetworkUsage : Windows.Networking.Connectivity.IAttributedNetworkUsage
{
}

interface CellularApnContext : Windows.Networking.Connectivity.ICellularApnContext
{
}

interface ConnectionCost : Windows.Networking.Connectivity.IConnectionCost, Windows.Networking.Connectivity.IConnectionCost2
{
}

interface ConnectionProfile : Windows.Networking.Connectivity.IConnectionProfile, Windows.Networking.Connectivity.IConnectionProfile2, Windows.Networking.Connectivity.IConnectionProfile3
{
}

interface ConnectionProfileFilter : Windows.Networking.Connectivity.IConnectionProfileFilter, Windows.Networking.Connectivity.IConnectionProfileFilter2
{
}

interface ConnectionSession : Windows.Networking.Connectivity.IConnectionSession, Windows.Foundation.IClosable
{
}

interface ConnectivityInterval : Windows.Networking.Connectivity.IConnectivityInterval
{
}

interface ConnectivityManager
{
}

interface DataPlanStatus : Windows.Networking.Connectivity.IDataPlanStatus
{
}

interface DataPlanUsage : Windows.Networking.Connectivity.IDataPlanUsage
{
}

interface DataUsage : Windows.Networking.Connectivity.IDataUsage
{
}

interface IPInformation : Windows.Networking.Connectivity.IIPInformation
{
}

interface LanIdentifier : Windows.Networking.Connectivity.ILanIdentifier
{
}

interface LanIdentifierData : Windows.Networking.Connectivity.ILanIdentifierData
{
}

interface NetworkAdapter : Windows.Networking.Connectivity.INetworkAdapter
{
}

interface NetworkInformation
{
}

interface NetworkItem : Windows.Networking.Connectivity.INetworkItem
{
}

interface NetworkSecuritySettings : Windows.Networking.Connectivity.INetworkSecuritySettings
{
}

interface NetworkStateChangeEventDetails : Windows.Networking.Connectivity.INetworkStateChangeEventDetails, Windows.Networking.Connectivity.INetworkStateChangeEventDetails2
{
}

interface NetworkUsage : Windows.Networking.Connectivity.INetworkUsage
{
}

interface ProxyConfiguration : Windows.Networking.Connectivity.IProxyConfiguration
{
}

interface RoutePolicy : Windows.Networking.Connectivity.IRoutePolicy
{
}

interface WlanConnectionProfileDetails : Windows.Networking.Connectivity.IWlanConnectionProfileDetails
{
}

interface WwanConnectionProfileDetails : Windows.Networking.Connectivity.IWwanConnectionProfileDetails
{
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