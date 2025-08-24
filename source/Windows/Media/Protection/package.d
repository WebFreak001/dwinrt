module Windows.Media.Protection;

import dwinrt;

@uuid("95da643c-6db9-424b-86ca-091af432081c")
interface ComponentLoadFailedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Protection.MediaProtectionManager sender, Windows.Media.Protection.ComponentLoadFailedEventArgs e);
}

@uuid("64e12a45-973b-4a3a-b260-91898a49a82c")
interface RebootNeededEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Protection.MediaProtectionManager sender);
}

@uuid("d2d690ba-cac9-48e1-95c0-d38495a84055")
interface ServiceRequestedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Protection.MediaProtectionManager sender, Windows.Media.Protection.ServiceRequestedEventArgs e);
}

@uuid("95972e93-7746-417e-8495-f031bbc5862c")
@WinrtFactory("Windows.Media.Protection.ComponentLoadFailedEventArgs")
interface IComponentLoadFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Information(Windows.Media.Protection.RevocationAndRenewalInformation* return_value);
	HRESULT get_Completion(Windows.Media.Protection.MediaProtectionServiceCompletion* return_value);
}

@uuid("6ffbcd67-b795-48c5-8b7b-a7c4efe202e3")
@WinrtFactory("Windows.Media.Protection.ComponentRenewal")
interface IComponentRenewalStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RenewSystemComponentsAsync(Windows.Media.Protection.RevocationAndRenewalInformation information, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Protection.RenewalStatus, UINT32)* return_operation);
}

@uuid("718845e9-64d7-426d-809b-1be461941a2a")
@WinrtFactory("Windows.Media.Protection.HdcpSession")
interface IHdcpSession_Base : IInspectable
{
extern(Windows):
	HRESULT abi_IsEffectiveProtectionAtLeast(Windows.Media.Protection.HdcpProtection protection, bool* return_value);
	HRESULT abi_GetEffectiveProtection(Windows.Foundation.IReference!(Windows.Media.Protection.HdcpProtection)* return_value);
	HRESULT abi_SetDesiredMinProtectionAsync(Windows.Media.Protection.HdcpProtection protection, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.HdcpSetProtectionResult)* return_value);
	HRESULT add_ProtectionChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.HdcpSession, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ProtectionChanged(EventRegistrationToken token);
}
@uuid("718845e9-64d7-426d-809b-1be461941a2a")
@WinrtFactory("Windows.Media.Protection.HdcpSession")
interface IHdcpSession : IHdcpSession_Base, Windows.Foundation.IClosable {}

@uuid("45694947-c741-434b-a79e-474c12d93d2f")
@WinrtFactory("Windows.Media.Protection.MediaProtectionManager")
interface IMediaProtectionManager : IInspectable
{
extern(Windows):
	HRESULT add_ServiceRequested(Windows.Media.Protection.ServiceRequestedEventHandler handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ServiceRequested(EventRegistrationToken cookie);
	HRESULT add_RebootNeeded(Windows.Media.Protection.RebootNeededEventHandler handler, EventRegistrationToken* return_cookie);
	HRESULT remove_RebootNeeded(EventRegistrationToken cookie);
	HRESULT add_ComponentLoadFailed(Windows.Media.Protection.ComponentLoadFailedEventHandler handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ComponentLoadFailed(EventRegistrationToken cookie);
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* return_value);
}

@uuid("0c111226-7b26-4d31-95bb-9c1b08ef7fc0")
@WinrtFactory("Windows.Media.Protection.MediaProtectionPMPServer")
interface IMediaProtectionPMPServer : IInspectable
{
extern(Windows):
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* return_ppProperties);
}

@uuid("602c8e5e-f7d2-487e-af91-dbc4252b2182")
@WinrtFactory("Windows.Media.Protection.MediaProtectionPMPServer")
interface IMediaProtectionPMPServerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreatePMPServer(Windows.Foundation.Collections.IPropertySet pProperties, Windows.Media.Protection.MediaProtectionPMPServer* return_ppObject);
}

@uuid("8b5cca18-cfd5-44ee-a2ed-df76010c14b5")
@WinrtFactory("Windows.Media.Protection.MediaProtectionServiceCompletion")
interface IMediaProtectionServiceCompletion : IInspectable
{
extern(Windows):
	HRESULT abi_Complete(bool success);
}

@uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6")
interface IMediaProtectionServiceRequest : IInspectable
{
extern(Windows):
	HRESULT get_ProtectionSystem(GUID* return_system);
	HRESULT get_Type(GUID* return_type);
}

@uuid("c7ac5d7e-7480-4d29-a464-7bcd913dd8e4")
@WinrtFactory("Windows.Media.Protection.ProtectionCapabilities")
interface IProtectionCapabilities : IInspectable
{
extern(Windows):
	HRESULT abi_IsTypeSupported(HSTRING type, HSTRING keySystem, Windows.Media.Protection.ProtectionCapabilityResult* return_value);
}

@uuid("f3a1937b-2501-439e-a6e7-6fc95e175fcf")
@WinrtFactory("Windows.Media.Protection.RevocationAndRenewalInformation")
interface IRevocationAndRenewalInformation : IInspectable
{
extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVector!(Windows.Media.Protection.RevocationAndRenewalItem)* return_items);
}

@uuid("3099c20c-3cf0-49ea-902d-caf32d2dde2c")
@WinrtFactory("Windows.Media.Protection.RevocationAndRenewalItem")
interface IRevocationAndRenewalItem : IInspectable
{
extern(Windows):
	HRESULT get_Reasons(Windows.Media.Protection.RevocationAndRenewalReasons* return_reasons);
	HRESULT get_HeaderHash(HSTRING* return_value);
	HRESULT get_PublicKeyHash(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_name);
	HRESULT get_RenewalId(HSTRING* return_value);
}

@uuid("34283baf-abb4-4fc1-bd89-93f106573a49")
@WinrtFactory("Windows.Media.Protection.ServiceRequestedEventArgs")
interface IServiceRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.Media.Protection.IMediaProtectionServiceRequest* return_value);
	HRESULT get_Completion(Windows.Media.Protection.MediaProtectionServiceCompletion* return_value);
}

@uuid("553c69d6-fafe-4128-8dfa-130e398a13a7")
@WinrtFactory("Windows.Media.Protection.ServiceRequestedEventArgs")
interface IServiceRequestedEventArgs2 : IInspectable
{
extern(Windows):
	HRESULT get_MediaPlaybackItem(Windows.Media.Playback.MediaPlaybackItem* return_value);
}

interface ComponentLoadFailedEventArgs : Windows.Media.Protection.IComponentLoadFailedEventArgs
{
extern(Windows):
	final Windows.Media.Protection.RevocationAndRenewalInformation Information()
	{
		Windows.Media.Protection.RevocationAndRenewalInformation _ret;
		Debug.OK((cast(Windows.Media.Protection.IComponentLoadFailedEventArgs)this.asInterface(uuid("95972e93-7746-417e-8495-f031bbc5862c"))).get_Information(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.MediaProtectionServiceCompletion Completion()
	{
		Windows.Media.Protection.MediaProtectionServiceCompletion _ret;
		Debug.OK((cast(Windows.Media.Protection.IComponentLoadFailedEventArgs)this.asInterface(uuid("95972e93-7746-417e-8495-f031bbc5862c"))).get_Completion(&_ret));
		return _ret;
	}
}

interface ComponentRenewal
{
	private static Windows.Media.Protection.IComponentRenewalStatics _staticInstance;
	public static Windows.Media.Protection.IComponentRenewalStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Protection.IComponentRenewalStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Protection.RenewalStatus, UINT32) RenewSystemComponentsAsync(Windows.Media.Protection.RevocationAndRenewalInformation information)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Media.Protection.RenewalStatus, UINT32) _ret;
		Debug.OK(staticInstance.abi_RenewSystemComponentsAsync(information, &_ret));
		return _ret;
	}
}

interface HdcpSession : Windows.Media.Protection.IHdcpSession, Windows.Foundation.IClosable
{
extern(Windows):
	final bool IsEffectiveProtectionAtLeast(Windows.Media.Protection.HdcpProtection protection)
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Protection.IHdcpSession)this.asInterface(uuid("718845e9-64d7-426d-809b-1be461941a2a"))).abi_IsEffectiveProtectionAtLeast(protection, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Media.Protection.HdcpProtection) GetEffectiveProtection()
	{
		Windows.Foundation.IReference!(Windows.Media.Protection.HdcpProtection) _ret;
		Debug.OK((cast(Windows.Media.Protection.IHdcpSession)this.asInterface(uuid("718845e9-64d7-426d-809b-1be461941a2a"))).abi_GetEffectiveProtection(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.HdcpSetProtectionResult) SetDesiredMinProtectionAsync(Windows.Media.Protection.HdcpProtection protection)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.HdcpSetProtectionResult) _ret;
		Debug.OK((cast(Windows.Media.Protection.IHdcpSession)this.asInterface(uuid("718845e9-64d7-426d-809b-1be461941a2a"))).abi_SetDesiredMinProtectionAsync(protection, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnProtectionChanged(void delegate(Windows.Media.Protection.HdcpSession, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Protection.IHdcpSession)this.asInterface(uuid("718845e9-64d7-426d-809b-1be461941a2a"))).add_ProtectionChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.HdcpSession, IInspectable), Windows.Media.Protection.HdcpSession, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeProtectionChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Protection.IHdcpSession)this.asInterface(uuid("718845e9-64d7-426d-809b-1be461941a2a"))).remove_ProtectionChanged(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static HdcpSession New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(HdcpSession).abi_ActivateInstance(&ret));
		return cast(HdcpSession) ret;
	}
}

interface MediaProtectionManager : Windows.Media.Protection.IMediaProtectionManager
{
extern(Windows):
	final EventRegistrationToken OnServiceRequested(void delegate(Windows.Media.Protection.MediaProtectionManager, Windows.Media.Protection.ServiceRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionManager)this.asInterface(uuid("45694947-c741-434b-a79e-474c12d93d2f"))).add_ServiceRequested(event!(Windows.Media.Protection.ServiceRequestedEventHandler, Windows.Media.Protection.MediaProtectionManager, Windows.Media.Protection.ServiceRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeServiceRequested(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionManager)this.asInterface(uuid("45694947-c741-434b-a79e-474c12d93d2f"))).remove_ServiceRequested(cookie));
	}
	final EventRegistrationToken OnRebootNeeded(void delegate(Windows.Media.Protection.MediaProtectionManager) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionManager)this.asInterface(uuid("45694947-c741-434b-a79e-474c12d93d2f"))).add_RebootNeeded(event!(Windows.Media.Protection.RebootNeededEventHandler, Windows.Media.Protection.MediaProtectionManager)(fn), &tok));
		return tok;
	}
	final void removeRebootNeeded(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionManager)this.asInterface(uuid("45694947-c741-434b-a79e-474c12d93d2f"))).remove_RebootNeeded(cookie));
	}
	final EventRegistrationToken OnComponentLoadFailed(void delegate(Windows.Media.Protection.MediaProtectionManager, Windows.Media.Protection.ComponentLoadFailedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionManager)this.asInterface(uuid("45694947-c741-434b-a79e-474c12d93d2f"))).add_ComponentLoadFailed(event!(Windows.Media.Protection.ComponentLoadFailedEventHandler, Windows.Media.Protection.MediaProtectionManager, Windows.Media.Protection.ComponentLoadFailedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeComponentLoadFailed(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionManager)this.asInterface(uuid("45694947-c741-434b-a79e-474c12d93d2f"))).remove_ComponentLoadFailed(cookie));
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionManager)this.asInterface(uuid("45694947-c741-434b-a79e-474c12d93d2f"))).get_Properties(&_ret));
		return _ret;
	}
	static MediaProtectionManager New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MediaProtectionManager).abi_ActivateInstance(&ret));
		return cast(MediaProtectionManager) ret;
	}
}

interface MediaProtectionPMPServer : Windows.Media.Protection.IMediaProtectionPMPServer
{
extern(Windows):
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionPMPServer)this.asInterface(uuid("0c111226-7b26-4d31-95bb-9c1b08ef7fc0"))).get_Properties(&_ret));
		return _ret;
	}
	static Windows.Media.Protection.MediaProtectionPMPServer New(Windows.Foundation.Collections.IPropertySet pProperties)
	{
		auto factory = factory!(Windows.Media.Protection.IMediaProtectionPMPServerFactory);
		Windows.Media.Protection.MediaProtectionPMPServer _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionPMPServerFactory)factory.asInterface(uuid("602c8e5e-f7d2-487e-af91-dbc4252b2182"))).abi_CreatePMPServer(pProperties, &_ret));
		return _ret;
	}
}

interface MediaProtectionServiceCompletion : Windows.Media.Protection.IMediaProtectionServiceCompletion
{
extern(Windows):
	final void Complete(bool success)
	{
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceCompletion)this.asInterface(uuid("8b5cca18-cfd5-44ee-a2ed-df76010c14b5"))).abi_Complete(success));
	}
}

interface ProtectionCapabilities : Windows.Media.Protection.IProtectionCapabilities
{
extern(Windows):
	final Windows.Media.Protection.ProtectionCapabilityResult IsTypeSupported(wstring type, wstring keySystem)
	{
		Windows.Media.Protection.ProtectionCapabilityResult _ret;
		Debug.OK((cast(Windows.Media.Protection.IProtectionCapabilities)this.asInterface(uuid("c7ac5d7e-7480-4d29-a464-7bcd913dd8e4"))).abi_IsTypeSupported(hstring(type).handle, hstring(keySystem).handle, &_ret));
		return _ret;
	}
	static ProtectionCapabilities New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ProtectionCapabilities).abi_ActivateInstance(&ret));
		return cast(ProtectionCapabilities) ret;
	}
}

interface RevocationAndRenewalInformation : Windows.Media.Protection.IRevocationAndRenewalInformation
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Media.Protection.RevocationAndRenewalItem) Items()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Protection.RevocationAndRenewalItem) _ret;
		Debug.OK((cast(Windows.Media.Protection.IRevocationAndRenewalInformation)this.asInterface(uuid("f3a1937b-2501-439e-a6e7-6fc95e175fcf"))).get_Items(&_ret));
		return _ret;
	}
}

interface RevocationAndRenewalItem : Windows.Media.Protection.IRevocationAndRenewalItem
{
extern(Windows):
	final Windows.Media.Protection.RevocationAndRenewalReasons Reasons()
	{
		Windows.Media.Protection.RevocationAndRenewalReasons _ret;
		Debug.OK((cast(Windows.Media.Protection.IRevocationAndRenewalItem)this.asInterface(uuid("3099c20c-3cf0-49ea-902d-caf32d2dde2c"))).get_Reasons(&_ret));
		return _ret;
	}
	final wstring HeaderHash()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.IRevocationAndRenewalItem)this.asInterface(uuid("3099c20c-3cf0-49ea-902d-caf32d2dde2c"))).get_HeaderHash(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring PublicKeyHash()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.IRevocationAndRenewalItem)this.asInterface(uuid("3099c20c-3cf0-49ea-902d-caf32d2dde2c"))).get_PublicKeyHash(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.IRevocationAndRenewalItem)this.asInterface(uuid("3099c20c-3cf0-49ea-902d-caf32d2dde2c"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring RenewalId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.IRevocationAndRenewalItem)this.asInterface(uuid("3099c20c-3cf0-49ea-902d-caf32d2dde2c"))).get_RenewalId(&_ret));
		return hstring(_ret).d_str;
	}
}

interface ServiceRequestedEventArgs : Windows.Media.Protection.IServiceRequestedEventArgs, Windows.Media.Protection.IServiceRequestedEventArgs2
{
extern(Windows):
	final Windows.Media.Protection.IMediaProtectionServiceRequest Request()
	{
		Windows.Media.Protection.IMediaProtectionServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.IServiceRequestedEventArgs)this.asInterface(uuid("34283baf-abb4-4fc1-bd89-93f106573a49"))).get_Request(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.MediaProtectionServiceCompletion Completion()
	{
		Windows.Media.Protection.MediaProtectionServiceCompletion _ret;
		Debug.OK((cast(Windows.Media.Protection.IServiceRequestedEventArgs)this.asInterface(uuid("34283baf-abb4-4fc1-bd89-93f106573a49"))).get_Completion(&_ret));
		return _ret;
	}
	final Windows.Media.Playback.MediaPlaybackItem MediaPlaybackItem()
	{
		Windows.Media.Playback.MediaPlaybackItem _ret;
		Debug.OK((cast(Windows.Media.Protection.IServiceRequestedEventArgs2)this.asInterface(uuid("553c69d6-fafe-4128-8dfa-130e398a13a7"))).get_MediaPlaybackItem(&_ret));
		return _ret;
	}
}

enum GraphicsTrustStatus
{
	TrustNotRequired = 0,
	TrustEstablished = 1,
	EnvironmentNotSupported = 2,
	DriverNotSupported = 3,
	DriverSigningFailure = 4,
	UnknownFailure = 5
}

enum HdcpProtection
{
	Off = 0,
	On = 1,
	OnWithTypeEnforcement = 2
}

enum HdcpSetProtectionResult
{
	Success = 0,
	TimedOut = 1,
	NotSupported = 2,
	UnknownFailure = 3
}

enum ProtectionCapabilityResult
{
	NotSupported = 0,
	Maybe = 1,
	Probably = 2
}

enum RenewalStatus
{
	NotStarted = 0,
	UpdatesInProgress = 1,
	UserCancelled = 2,
	AppComponentsMayNeedUpdating = 3,
	NoComponentsFound = 4
}

@bitflags
enum RevocationAndRenewalReasons
{
	UserModeComponentLoad = 0x1,
	KernelModeComponentLoad = 0x2,
	AppComponent = 0x4,
	GlobalRevocationListLoadFailed = 0x10,
	InvalidGlobalRevocationListSignature = 0x20,
	GlobalRevocationListAbsent = 0x1000,
	ComponentRevoked = 0x2000,
	InvalidComponentCertificateExtendedKeyUse = 0x4000,
	ComponentCertificateRevoked = 0x8000,
	InvalidComponentCertificateRoot = 0x10000,
	ComponentHighSecurityCertificateRevoked = 0x20000,
	ComponentLowSecurityCertificateRevoked = 0x40000,
	BootDriverVerificationFailed = 0x100000,
	ComponentSignedWithTestCertificate = 0x1000000,
	EncryptionFailure = 0x10000000
}