module Windows.System.Diagnostics.Telemetry;

import dwinrt;

@uuid("9bf3f25d-d5c3-4eea-8dbe-9c8dbb0d9d8f")
@WinrtFactory("Windows.System.Diagnostics.Telemetry.PlatformTelemetryClient")
interface IPlatformTelemetryClientStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Register(HSTRING id, Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult* return_result);
	HRESULT abi_RegisterWithSettings(HSTRING id, Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationSettings settings, Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult* return_result);
}

@uuid("4d8518ab-2292-49bd-a15a-3d71d2145112")
@WinrtFactory("Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult")
interface IPlatformTelemetryRegistrationResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationStatus* return_value);
}

@uuid("819a8582-ca19-415e-bb79-9c224bfa3a73")
@WinrtFactory("Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationSettings")
interface IPlatformTelemetryRegistrationSettings : IInspectable
{
extern(Windows):
	HRESULT get_StorageSize(UINT32* return_value);
	HRESULT set_StorageSize(UINT32 value);
	HRESULT get_UploadQuotaSize(UINT32* return_value);
	HRESULT set_UploadQuotaSize(UINT32 value);
}

interface PlatformTelemetryClient
{
	private static Windows.System.Diagnostics.Telemetry.IPlatformTelemetryClientStatics _staticInstance;
	public static Windows.System.Diagnostics.Telemetry.IPlatformTelemetryClientStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Diagnostics.Telemetry.IPlatformTelemetryClientStatics);
		return _staticInstance;
	}
	static Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult Register(HSTRING id)
	{
		Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult _ret;
		Debug.OK(staticInstance.as!(Windows.System.Diagnostics.Telemetry.IPlatformTelemetryClientStatics).abi_Register(id, &_ret));
		return _ret;
	}
	static Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult RegisterWithSettings(HSTRING id, Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationSettings settings)
	{
		Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult _ret;
		Debug.OK(staticInstance.as!(Windows.System.Diagnostics.Telemetry.IPlatformTelemetryClientStatics).abi_RegisterWithSettings(id, settings, &_ret));
		return _ret;
	}
}

interface PlatformTelemetryRegistrationResult : Windows.System.Diagnostics.Telemetry.IPlatformTelemetryRegistrationResult
{
extern(Windows):
	final Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationStatus Status()
	{
		Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationStatus _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.Telemetry.IPlatformTelemetryRegistrationResult).get_Status(&_ret));
		return _ret;
	}
}

interface PlatformTelemetryRegistrationSettings : Windows.System.Diagnostics.Telemetry.IPlatformTelemetryRegistrationSettings
{
extern(Windows):
	final UINT32 StorageSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.Telemetry.IPlatformTelemetryRegistrationSettings).get_StorageSize(&_ret));
		return _ret;
	}
	final void StorageSize(UINT32 value)
	{
		Debug.OK(this.as!(Windows.System.Diagnostics.Telemetry.IPlatformTelemetryRegistrationSettings).set_StorageSize(value));
	}
	final UINT32 UploadQuotaSize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.Telemetry.IPlatformTelemetryRegistrationSettings).get_UploadQuotaSize(&_ret));
		return _ret;
	}
	final void UploadQuotaSize(UINT32 value)
	{
		Debug.OK(this.as!(Windows.System.Diagnostics.Telemetry.IPlatformTelemetryRegistrationSettings).set_UploadQuotaSize(value));
	}
}

enum PlatformTelemetryRegistrationStatus
{
	Success = 0,
	SettingsOutOfRange = 1,
	UnknownFailure = 2
}