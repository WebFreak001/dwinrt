module Windows.System.Profile;

import dwinrt;

@uuid("1d5ee066-188d-5ba9-4387-acaeb0e7e305")
@WinrtFactory("Windows.System.Profile.AnalyticsInfo")
interface IAnalyticsInfoStatics : IInspectable
{
extern(Windows):
	HRESULT get_VersionInfo(Windows.System.Profile.AnalyticsVersionInfo* return_value);
	HRESULT get_DeviceForm(HSTRING* return_value);
}

@uuid("926130b8-9955-4c74-bdc1-7cd0decf9b03")
@WinrtFactory("Windows.System.Profile.AnalyticsVersionInfo")
interface IAnalyticsVersionInfo : IInspectable
{
extern(Windows):
	HRESULT get_DeviceFamily(HSTRING* return_value);
	HRESULT get_DeviceFamilyVersion(HSTRING* return_value);
}

@uuid("fc53f0ef-4d3e-4e13-9b23-505f4d091e92")
@WinrtFactory("Windows.System.Profile.EducationSettings")
interface IEducationSettingsStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsEducationEnvironment(bool* return_value);
}

@uuid("971260e0-f170-4a42-bd55-a900b212dae2")
@WinrtFactory("Windows.System.Profile.HardwareIdentification")
interface IHardwareIdentificationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetPackageSpecificToken(Windows.Storage.Streams.IBuffer nonce, Windows.System.Profile.HardwareToken* return_packageSpecificHardwareToken);
}

@uuid("28f6d4c0-fb12-40a4-8167-7f4e03d2724c")
@WinrtFactory("Windows.System.Profile.HardwareToken")
interface IHardwareToken : IInspectable
{
extern(Windows):
	HRESULT get_Id(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Signature(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Certificate(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("99571178-500f-487e-8e75-29e551728712")
@WinrtFactory("Windows.System.Profile.KnownRetailInfoProperties")
interface IKnownRetailInfoPropertiesStatics : IInspectable
{
extern(Windows):
	HRESULT get_RetailAccessCode(HSTRING* return_value);
	HRESULT get_ManufacturerName(HSTRING* return_value);
	HRESULT get_ModelName(HSTRING* return_value);
	HRESULT get_DisplayModelName(HSTRING* return_value);
	HRESULT get_Price(HSTRING* return_value);
	HRESULT get_IsFeatured(HSTRING* return_value);
	HRESULT get_FormFactor(HSTRING* return_value);
	HRESULT get_ScreenSize(HSTRING* return_value);
	HRESULT get_Weight(HSTRING* return_value);
	HRESULT get_DisplayDescription(HSTRING* return_value);
	HRESULT get_BatteryLifeDescription(HSTRING* return_value);
	HRESULT get_ProcessorDescription(HSTRING* return_value);
	HRESULT get_Memory(HSTRING* return_value);
	HRESULT get_StorageDescription(HSTRING* return_value);
	HRESULT get_GraphicsDescription(HSTRING* return_value);
	HRESULT get_FrontCameraDescription(HSTRING* return_value);
	HRESULT get_RearCameraDescription(HSTRING* return_value);
	HRESULT get_HasNfc(HSTRING* return_value);
	HRESULT get_HasSdSlot(HSTRING* return_value);
	HRESULT get_HasOpticalDrive(HSTRING* return_value);
	HRESULT get_IsOfficeInstalled(HSTRING* return_value);
	HRESULT get_WindowsEdition(HSTRING* return_value);
}

@uuid("b6e24c1b-7b1c-4b32-8c62-a66597ce723a")
@WinrtFactory("Windows.System.Profile.PlatformDiagnosticsAndUsageDataSettings")
interface IPlatformDiagnosticsAndUsageDataSettingsStatics : IInspectable
{
extern(Windows):
	HRESULT get_CollectionLevel(Windows.System.Profile.PlatformDataCollectionLevel* return_value);
	HRESULT add_CollectionLevelChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_CollectionLevelChanged(EventRegistrationToken token);
	HRESULT abi_CanCollectDiagnostics(Windows.System.Profile.PlatformDataCollectionLevel level, bool* return_result);
}

@uuid("0712c6b8-8b92-4f2a-8499-031f1798d6ef")
@WinrtFactory("Windows.System.Profile.RetailInfo")
interface IRetailInfoStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsDemoModeEnabled(bool* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("893df40e-cad6-4d50-8c49-6fcfc03edb29")
@WinrtFactory("Windows.System.Profile.SharedModeSettings")
interface ISharedModeSettingsStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsEnabled(bool* return_value);
}

@uuid("608988a4-ccf1-4ee8-a5e2-fd6a1d0cfac8")
@WinrtFactory("Windows.System.Profile.SharedModeSettings")
interface ISharedModeSettingsStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_ShouldAvoidLocalStorage(bool* return_value);
}

@uuid("0c659e7d-c3c2-4d33-a2df-21bc41916eb3")
@WinrtFactory("Windows.System.Profile.SystemIdentificationInfo")
interface ISystemIdentificationInfo : IInspectable
{
extern(Windows):
	HRESULT get_Id(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Source(Windows.System.Profile.SystemIdentificationSource* return_value);
}

@uuid("5581f42a-d3df-4d93-a37d-c41a616c6d01")
@WinrtFactory("Windows.System.Profile.SystemIdentification")
interface ISystemIdentificationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetSystemIdForPublisher(Windows.System.Profile.SystemIdentificationInfo* return_result);
	HRESULT abi_GetSystemIdForUser(Windows.System.User user, Windows.System.Profile.SystemIdentificationInfo* return_result);
}

interface AnalyticsInfo
{
	private static Windows.System.Profile.IAnalyticsInfoStatics _staticInstance;
	public static Windows.System.Profile.IAnalyticsInfoStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Profile.IAnalyticsInfoStatics);
		return _staticInstance;
	}
	static Windows.System.Profile.AnalyticsVersionInfo VersionInfo()
	{
		Windows.System.Profile.AnalyticsVersionInfo _ret;
		Debug.OK(staticInstance.get_VersionInfo(&_ret));
		return _ret;
	}
	static wstring DeviceForm()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DeviceForm(&_ret));
		return hstring(_ret).d_str;
	}
}

interface AnalyticsVersionInfo : Windows.System.Profile.IAnalyticsVersionInfo
{
extern(Windows):
	final wstring DeviceFamily()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.System.Profile.IAnalyticsVersionInfo)this.asInterface(uuid("926130b8-9955-4c74-bdc1-7cd0decf9b03"))).get_DeviceFamily(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring DeviceFamilyVersion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.System.Profile.IAnalyticsVersionInfo)this.asInterface(uuid("926130b8-9955-4c74-bdc1-7cd0decf9b03"))).get_DeviceFamilyVersion(&_ret));
		return hstring(_ret).d_str;
	}
}

interface EducationSettings
{
	private static Windows.System.Profile.IEducationSettingsStatics _staticInstance;
	public static Windows.System.Profile.IEducationSettingsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Profile.IEducationSettingsStatics);
		return _staticInstance;
	}
	static bool IsEducationEnvironment()
	{
		bool _ret;
		Debug.OK(staticInstance.get_IsEducationEnvironment(&_ret));
		return _ret;
	}
}

interface HardwareIdentification
{
	private static Windows.System.Profile.IHardwareIdentificationStatics _staticInstance;
	public static Windows.System.Profile.IHardwareIdentificationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Profile.IHardwareIdentificationStatics);
		return _staticInstance;
	}
	static Windows.System.Profile.HardwareToken GetPackageSpecificToken(Windows.Storage.Streams.IBuffer nonce)
	{
		Windows.System.Profile.HardwareToken _ret;
		Debug.OK(staticInstance.abi_GetPackageSpecificToken(nonce, &_ret));
		return _ret;
	}
}

interface HardwareToken : Windows.System.Profile.IHardwareToken
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Id()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.System.Profile.IHardwareToken)this.asInterface(uuid("28f6d4c0-fb12-40a4-8167-7f4e03d2724c"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Signature()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.System.Profile.IHardwareToken)this.asInterface(uuid("28f6d4c0-fb12-40a4-8167-7f4e03d2724c"))).get_Signature(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Certificate()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.System.Profile.IHardwareToken)this.asInterface(uuid("28f6d4c0-fb12-40a4-8167-7f4e03d2724c"))).get_Certificate(&_ret));
		return _ret;
	}
}

interface KnownRetailInfoProperties
{
	private static Windows.System.Profile.IKnownRetailInfoPropertiesStatics _staticInstance;
	public static Windows.System.Profile.IKnownRetailInfoPropertiesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Profile.IKnownRetailInfoPropertiesStatics);
		return _staticInstance;
	}
	static wstring RetailAccessCode()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RetailAccessCode(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ManufacturerName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ManufacturerName(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ModelName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ModelName(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring DisplayModelName()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DisplayModelName(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Price()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Price(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring IsFeatured()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_IsFeatured(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring FormFactor()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_FormFactor(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ScreenSize()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ScreenSize(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Weight()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Weight(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring DisplayDescription()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DisplayDescription(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring BatteryLifeDescription()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BatteryLifeDescription(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ProcessorDescription()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ProcessorDescription(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring Memory()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Memory(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring StorageDescription()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_StorageDescription(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring GraphicsDescription()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_GraphicsDescription(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring FrontCameraDescription()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_FrontCameraDescription(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring RearCameraDescription()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RearCameraDescription(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HasNfc()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HasNfc(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HasSdSlot()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HasSdSlot(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring HasOpticalDrive()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HasOpticalDrive(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring IsOfficeInstalled()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_IsOfficeInstalled(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring WindowsEdition()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_WindowsEdition(&_ret));
		return hstring(_ret).d_str;
	}
}

interface PlatformDiagnosticsAndUsageDataSettings
{
	private static Windows.System.Profile.IPlatformDiagnosticsAndUsageDataSettingsStatics _staticInstance;
	public static Windows.System.Profile.IPlatformDiagnosticsAndUsageDataSettingsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Profile.IPlatformDiagnosticsAndUsageDataSettingsStatics);
		return _staticInstance;
	}
	static Windows.System.Profile.PlatformDataCollectionLevel CollectionLevel()
	{
		Windows.System.Profile.PlatformDataCollectionLevel _ret;
		Debug.OK(staticInstance.get_CollectionLevel(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnCollectionLevelChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_CollectionLevelChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeCollectionLevelChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_CollectionLevelChanged(token));
	}
	static bool CanCollectDiagnostics(Windows.System.Profile.PlatformDataCollectionLevel level)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_CanCollectDiagnostics(level, &_ret));
		return _ret;
	}
}

interface RetailInfo
{
	private static Windows.System.Profile.IRetailInfoStatics _staticInstance;
	public static Windows.System.Profile.IRetailInfoStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Profile.IRetailInfoStatics);
		return _staticInstance;
	}
	static bool IsDemoModeEnabled()
	{
		bool _ret;
		Debug.OK(staticInstance.get_IsDemoModeEnabled(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(staticInstance.get_Properties(&_ret));
		return _ret;
	}
}

interface SharedModeSettings
{
	private static Windows.System.Profile.ISharedModeSettingsStatics _staticInstance;
	public static Windows.System.Profile.ISharedModeSettingsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Profile.ISharedModeSettingsStatics);
		return _staticInstance;
	}
	static bool IsEnabled()
	{
		bool _ret;
		Debug.OK(staticInstance.get_IsEnabled(&_ret));
		return _ret;
	}
}

interface SystemIdentification
{
	private static Windows.System.Profile.ISystemIdentificationStatics _staticInstance;
	public static Windows.System.Profile.ISystemIdentificationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Profile.ISystemIdentificationStatics);
		return _staticInstance;
	}
	static Windows.System.Profile.SystemIdentificationInfo GetSystemIdForPublisher()
	{
		Windows.System.Profile.SystemIdentificationInfo _ret;
		Debug.OK(staticInstance.abi_GetSystemIdForPublisher(&_ret));
		return _ret;
	}
	static Windows.System.Profile.SystemIdentificationInfo GetSystemIdForUser(Windows.System.User user)
	{
		Windows.System.Profile.SystemIdentificationInfo _ret;
		Debug.OK(staticInstance.abi_GetSystemIdForUser(user, &_ret));
		return _ret;
	}
}

interface SystemIdentificationInfo : Windows.System.Profile.ISystemIdentificationInfo
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Id()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.System.Profile.ISystemIdentificationInfo)this.asInterface(uuid("0c659e7d-c3c2-4d33-a2df-21bc41916eb3"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.System.Profile.SystemIdentificationSource Source()
	{
		Windows.System.Profile.SystemIdentificationSource _ret;
		Debug.OK((cast(Windows.System.Profile.ISystemIdentificationInfo)this.asInterface(uuid("0c659e7d-c3c2-4d33-a2df-21bc41916eb3"))).get_Source(&_ret));
		return _ret;
	}
}

enum PlatformDataCollectionLevel
{
	Security = 0,
	Basic = 1,
	Enhanced = 2,
	Full = 3
}

enum SystemIdentificationSource
{
	None = 0,
	Tpm = 1,
	Uefi = 2
}