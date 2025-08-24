module Windows.Security.Authentication.Identity.Provider;

import dwinrt;

@uuid("020a16e5-6a25-40a3-8c00-50a023f619d1")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthentication")
interface ISecondaryAuthenticationFactorAuthentication : IInspectable
{
extern(Windows):
	HRESULT get_ServiceAuthenticationHmac(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_SessionNonce(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_DeviceNonce(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_DeviceConfigurationData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_FinishAuthenticationAsync(Windows.Storage.Streams.IBuffer deviceHmac, Windows.Storage.Streams.IBuffer sessionHmac, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorFinishAuthenticationStatus)* return_result);
	HRESULT abi_AbortAuthenticationAsync(HSTRING errorLogMessage, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("9cbb5987-ef6d-4bc2-bf49-4617515a0f9a")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationResult")
interface ISecondaryAuthenticationFactorAuthenticationResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStatus* return_value);
	HRESULT get_Authentication(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthentication* return_value);
}

@uuid("d4a5ee56-7291-4073-bc1f-ccb8f5afdf96")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs")
interface ISecondaryAuthenticationFactorAuthenticationStageChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_StageInfo(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageInfo* return_value);
}

@uuid("56fec28b-e8aa-4c0f-8e4c-a559e73add88")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageInfo")
interface ISecondaryAuthenticationFactorAuthenticationStageInfo : IInspectable
{
extern(Windows):
	HRESULT get_Stage(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStage* return_value);
	HRESULT get_Scenario(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationScenario* return_value);
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("3f582656-28f8-4e0f-ae8c-5898b9ae2469")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthentication")
interface ISecondaryAuthenticationFactorAuthenticationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_ShowNotificationMessageAsync(HSTRING deviceName, Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationMessage message, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_StartAuthenticationAsync(HSTRING deviceId, Windows.Storage.Streams.IBuffer serviceAuthenticationNonce, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationResult)* return_operation);
	HRESULT add_AuthenticationStageChanged(Windows.Foundation.EventHandler!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AuthenticationStageChanged(EventRegistrationToken token);
	HRESULT abi_GetAuthenticationStageInfoAsync(Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageInfo)* return_result);
}

@uuid("90499a19-7ef2-4523-951c-a417a24acf93")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistration")
interface ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RegisterDevicePresenceMonitoringAsync(HSTRING deviceId, HSTRING deviceInstancePath, Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringMode monitoringMode, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus)* return_operation);
	HRESULT abi_RegisterDevicePresenceMonitoringWithNewDeviceAsync(HSTRING deviceId, HSTRING deviceInstancePath, Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringMode monitoringMode, HSTRING deviceFriendlyName, HSTRING deviceModelNumber, Windows.Storage.Streams.IBuffer deviceConfigurationData, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus)* return_operation);
	HRESULT abi_UnregisterDevicePresenceMonitoringAsync(HSTRING deviceId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_IsDevicePresenceMonitoringSupported(bool* return_value);
}

@uuid("1e2ba861-8533-4fce-839b-ecb72410ac14")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorInfo")
interface ISecondaryAuthenticationFactorInfo : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_deviceId);
	HRESULT get_DeviceFriendlyName(HSTRING* return_value);
	HRESULT get_DeviceModelNumber(HSTRING* return_value);
	HRESULT get_DeviceConfigurationData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("14d981a3-fc26-4ff7-abc3-48e82a512a0a")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorInfo")
interface ISecondaryAuthenticationFactorInfo2_Base : IInspectable
{
extern(Windows):
	HRESULT get_PresenceMonitoringMode(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringMode* return_value);
	HRESULT abi_UpdateDevicePresenceAsync(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresence presenceState, Windows.Foundation.IAsyncAction* return_result);
	HRESULT get_IsAuthenticationSupported(bool* return_value);
}
@uuid("14d981a3-fc26-4ff7-abc3-48e82a512a0a")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorInfo")
interface ISecondaryAuthenticationFactorInfo2 : ISecondaryAuthenticationFactorInfo2_Base, Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo {}

@uuid("9f4cbbb4-8cba-48b0-840d-dbb22a54c678")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistration")
interface ISecondaryAuthenticationFactorRegistration : IInspectable
{
extern(Windows):
	HRESULT abi_FinishRegisteringDeviceAsync(Windows.Storage.Streams.IBuffer deviceConfigurationData, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_AbortRegisteringDeviceAsync(HSTRING errorLogMessage, Windows.Foundation.IAsyncAction* return_result);
}

@uuid("a4fe35f0-ade3-4981-af6b-ec195921682a")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistrationResult")
interface ISecondaryAuthenticationFactorRegistrationResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistrationStatus* return_value);
	HRESULT get_Registration(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistration* return_value);
}

@uuid("1adf0f65-e3b7-4155-997f-b756ef65beba")
@WinrtFactory("Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistration")
interface ISecondaryAuthenticationFactorRegistrationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestStartRegisteringDeviceAsync(HSTRING deviceId, Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDeviceCapabilities capabilities, HSTRING deviceFriendlyName, HSTRING deviceModelNumber, Windows.Storage.Streams.IBuffer deviceKey, Windows.Storage.Streams.IBuffer mutualAuthenticationKey, Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistrationResult)* return_operation);
	HRESULT abi_FindAllRegisteredDeviceInfoAsync(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDeviceFindScope queryType, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorInfo))* return_deviceInfoList);
	HRESULT abi_UnregisterDeviceAsync(HSTRING deviceId, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_UpdateDeviceConfigurationDataAsync(HSTRING deviceId, Windows.Storage.Streams.IBuffer deviceConfigurationData, Windows.Foundation.IAsyncAction* return_result);
}

interface SecondaryAuthenticationFactorAuthentication : Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthentication
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer ServiceAuthenticationHmac()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthentication)this.asInterface(uuid("020a16e5-6a25-40a3-8c00-50a023f619d1"))).get_ServiceAuthenticationHmac(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer SessionNonce()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthentication)this.asInterface(uuid("020a16e5-6a25-40a3-8c00-50a023f619d1"))).get_SessionNonce(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer DeviceNonce()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthentication)this.asInterface(uuid("020a16e5-6a25-40a3-8c00-50a023f619d1"))).get_DeviceNonce(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer DeviceConfigurationData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthentication)this.asInterface(uuid("020a16e5-6a25-40a3-8c00-50a023f619d1"))).get_DeviceConfigurationData(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorFinishAuthenticationStatus) FinishAuthenticationAsync(Windows.Storage.Streams.IBuffer deviceHmac, Windows.Storage.Streams.IBuffer sessionHmac)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorFinishAuthenticationStatus) _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthentication)this.asInterface(uuid("020a16e5-6a25-40a3-8c00-50a023f619d1"))).abi_FinishAuthenticationAsync(deviceHmac, sessionHmac, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction AbortAuthenticationAsync(wstring errorLogMessage)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthentication)this.asInterface(uuid("020a16e5-6a25-40a3-8c00-50a023f619d1"))).abi_AbortAuthenticationAsync(hstring(errorLogMessage).handle, &_ret));
		return _ret;
	}

	private static Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStatics _staticInstance;
	public static Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncAction ShowNotificationMessageAsync(wstring deviceName, Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationMessage message)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_ShowNotificationMessageAsync(hstring(deviceName).handle, message, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationResult) StartAuthenticationAsync(wstring deviceId, Windows.Storage.Streams.IBuffer serviceAuthenticationNonce)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationResult) _ret;
		Debug.OK(staticInstance.abi_StartAuthenticationAsync(hstring(deviceId).handle, serviceAuthenticationNonce, &_ret));
		return _ret;
	}
	static EventRegistrationToken OnAuthenticationStageChanged(void delegate(IInspectable, Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_AuthenticationStageChanged(event!(Windows.Foundation.EventHandler!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs), IInspectable, Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs)(fn), &tok));
		return tok;
	}
	static void removeAuthenticationStageChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_AuthenticationStageChanged(token));
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageInfo) GetAuthenticationStageInfoAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageInfo) _ret;
		Debug.OK(staticInstance.abi_GetAuthenticationStageInfoAsync(&_ret));
		return _ret;
	}
}

interface SecondaryAuthenticationFactorAuthenticationResult : Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationResult
{
extern(Windows):
	final Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStatus Status()
	{
		Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStatus _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationResult)this.asInterface(uuid("9cbb5987-ef6d-4bc2-bf49-4617515a0f9a"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthentication Authentication()
	{
		Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthentication _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationResult)this.asInterface(uuid("9cbb5987-ef6d-4bc2-bf49-4617515a0f9a"))).get_Authentication(&_ret));
		return _ret;
	}
}

interface SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs : Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStageChangedEventArgs
{
extern(Windows):
	final Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageInfo StageInfo()
	{
		Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStageInfo _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStageChangedEventArgs)this.asInterface(uuid("d4a5ee56-7291-4073-bc1f-ccb8f5afdf96"))).get_StageInfo(&_ret));
		return _ret;
	}
}

interface SecondaryAuthenticationFactorAuthenticationStageInfo : Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStageInfo
{
extern(Windows):
	final Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStage Stage()
	{
		Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationStage _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStageInfo)this.asInterface(uuid("56fec28b-e8aa-4c0f-8e4c-a559e73add88"))).get_Stage(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationScenario Scenario()
	{
		Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorAuthenticationScenario _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStageInfo)this.asInterface(uuid("56fec28b-e8aa-4c0f-8e4c-a559e73add88"))).get_Scenario(&_ret));
		return _ret;
	}
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorAuthenticationStageInfo)this.asInterface(uuid("56fec28b-e8aa-4c0f-8e4c-a559e73add88"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
}

interface SecondaryAuthenticationFactorInfo : Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo, Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo2
{
extern(Windows):
	final wstring DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo)this.asInterface(uuid("1e2ba861-8533-4fce-839b-ecb72410ac14"))).get_DeviceId(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DeviceFriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo)this.asInterface(uuid("1e2ba861-8533-4fce-839b-ecb72410ac14"))).get_DeviceFriendlyName(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DeviceModelNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo)this.asInterface(uuid("1e2ba861-8533-4fce-839b-ecb72410ac14"))).get_DeviceModelNumber(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Storage.Streams.IBuffer DeviceConfigurationData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo)this.asInterface(uuid("1e2ba861-8533-4fce-839b-ecb72410ac14"))).get_DeviceConfigurationData(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringMode PresenceMonitoringMode()
	{
		Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringMode _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo2)this.asInterface(uuid("14d981a3-fc26-4ff7-abc3-48e82a512a0a"))).get_PresenceMonitoringMode(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UpdateDevicePresenceAsync(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresence presenceState)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo2)this.asInterface(uuid("14d981a3-fc26-4ff7-abc3-48e82a512a0a"))).abi_UpdateDevicePresenceAsync(presenceState, &_ret));
		return _ret;
	}
	final bool IsAuthenticationSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorInfo2)this.asInterface(uuid("14d981a3-fc26-4ff7-abc3-48e82a512a0a"))).get_IsAuthenticationSupported(&_ret));
		return _ret;
	}
}

interface SecondaryAuthenticationFactorRegistration : Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorRegistration
{
extern(Windows):
	final Windows.Foundation.IAsyncAction FinishRegisteringDeviceAsync(Windows.Storage.Streams.IBuffer deviceConfigurationData)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorRegistration)this.asInterface(uuid("9f4cbbb4-8cba-48b0-840d-dbb22a54c678"))).abi_FinishRegisteringDeviceAsync(deviceConfigurationData, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction AbortRegisteringDeviceAsync(wstring errorLogMessage)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorRegistration)this.asInterface(uuid("9f4cbbb4-8cba-48b0-840d-dbb22a54c678"))).abi_AbortRegisteringDeviceAsync(hstring(errorLogMessage).handle, &_ret));
		return _ret;
	}

	private static Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatics _staticInstance;
	public static Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus) RegisterDevicePresenceMonitoringAsync(wstring deviceId, wstring deviceInstancePath, Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringMode monitoringMode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus) _ret;
		Debug.OK(staticInstance.abi_RegisterDevicePresenceMonitoringAsync(hstring(deviceId).handle, hstring(deviceInstancePath).handle, monitoringMode, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus) RegisterDevicePresenceMonitoringWithNewDeviceAsync(wstring deviceId, wstring deviceInstancePath, Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringMode monitoringMode, wstring deviceFriendlyName, wstring deviceModelNumber, Windows.Storage.Streams.IBuffer deviceConfigurationData)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus) _ret;
		Debug.OK(staticInstance.abi_RegisterDevicePresenceMonitoringWithNewDeviceAsync(hstring(deviceId).handle, hstring(deviceInstancePath).handle, monitoringMode, hstring(deviceFriendlyName).handle, hstring(deviceModelNumber).handle, deviceConfigurationData, &_ret));
		return _ret;
	}
	alias RegisterDevicePresenceMonitoringAsync = RegisterDevicePresenceMonitoringWithNewDeviceAsync;
	static Windows.Foundation.IAsyncAction UnregisterDevicePresenceMonitoringAsync(wstring deviceId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_UnregisterDevicePresenceMonitoringAsync(hstring(deviceId).handle, &_ret));
		return _ret;
	}
	static bool IsDevicePresenceMonitoringSupported()
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsDevicePresenceMonitoringSupported(&_ret));
		return _ret;
	}
}

interface SecondaryAuthenticationFactorRegistrationResult : Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorRegistrationResult
{
extern(Windows):
	final Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistrationStatus Status()
	{
		Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistrationStatus _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorRegistrationResult)this.asInterface(uuid("a4fe35f0-ade3-4981-af6b-ec195921682a"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistration Registration()
	{
		Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorRegistration _ret;
		Debug.OK((cast(Windows.Security.Authentication.Identity.Provider.ISecondaryAuthenticationFactorRegistrationResult)this.asInterface(uuid("a4fe35f0-ade3-4981-af6b-ec195921682a"))).get_Registration(&_ret));
		return _ret;
	}
}

enum SecondaryAuthenticationFactorAuthenticationMessage
{
	Invalid = 0,
	SwipeUpWelcome = 1,
	TapWelcome = 2,
	DeviceNeedsAttention = 3,
	LookingForDevice = 4,
	LookingForDevicePluggedin = 5,
	BluetoothIsDisabled = 6,
	NfcIsDisabled = 7,
	WiFiIsDisabled = 8,
	ExtraTapIsRequired = 9,
	DisabledByPolicy = 10,
	TapOnDeviceRequired = 11,
	HoldFinger = 12,
	ScanFinger = 13,
	UnauthorizedUser = 14,
	ReregisterRequired = 15,
	TryAgain = 16,
	SayPassphrase = 17,
	ReadyToSignIn = 18,
	UseAnotherSignInOption = 19
}

enum SecondaryAuthenticationFactorAuthenticationScenario
{
	SignIn = 0,
	CredentialPrompt = 1
}

enum SecondaryAuthenticationFactorAuthenticationStage
{
	NotStarted = 0,
	WaitingForUserConfirmation = 1,
	CollectingCredential = 2,
	SuspendingAuthentication = 3,
	CredentialCollected = 4,
	CredentialAuthenticated = 5,
	StoppingAuthentication = 6,
	ReadyForLock = 7,
	CheckingDevicePresence = 8
}

enum SecondaryAuthenticationFactorAuthenticationStatus
{
	Failed = 0,
	Started = 1,
	UnknownDevice = 2,
	DisabledByPolicy = 3,
	InvalidAuthenticationStage = 4
}

@bitflags
enum SecondaryAuthenticationFactorDeviceCapabilities
{
	None = 0x0,
	SecureStorage = 0x1,
	StoreKeys = 0x2,
	ConfirmUserIntentToAuthenticate = 0x4,
	SupportSecureUserPresenceCheck = 0x8,
	TransmittedDataIsEncrypted = 0x10,
	HMacSha256 = 0x20,
	CloseRangeDataTransmission = 0x40
}

enum SecondaryAuthenticationFactorDeviceFindScope
{
	User = 0,
	AllUsers = 1
}

enum SecondaryAuthenticationFactorDevicePresence
{
	Absent = 0,
	Present = 1
}

enum SecondaryAuthenticationFactorDevicePresenceMonitoringMode
{
	Unsupported = 0,
	AppManaged = 1,
	SystemManaged = 2
}

enum SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus
{
	Unsupported = 0,
	Succeeded = 1,
	DisabledByPolicy = 2
}

enum SecondaryAuthenticationFactorFinishAuthenticationStatus
{
	Failed = 0,
	Completed = 1,
	NonceExpired = 2
}

enum SecondaryAuthenticationFactorRegistrationStatus
{
	Failed = 0,
	Started = 1,
	CanceledByUser = 2,
	PinSetupRequired = 3,
	DisabledByPolicy = 4
}