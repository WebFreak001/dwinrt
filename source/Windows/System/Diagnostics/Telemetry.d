module Windows.System.Diagnostics.Telemetry;

import dwinrt;

@uuid("9bf3f25d-d5c3-4eea-8dbe-9c8dbb0d9d8f")
@WinrtFactory("Windows.System.Diagnostics.Telemetry.PlatformTelemetryClient")
interface IPlatformTelemetryClientStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Register(HSTRING id, Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult* return_result);
	HRESULT abi_RegisterWithSettings(HSTRING id, Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationSettings settings, Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult* return_result);
}

@uuid("4d8518ab-2292-49bd-a15a-3d71d2145112")
@WinrtFactory("Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationResult")
interface IPlatformTelemetryRegistrationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationStatus* return_value);
}

@uuid("819a8582-ca19-415e-bb79-9c224bfa3a73")
@WinrtFactory("Windows.System.Diagnostics.Telemetry.PlatformTelemetryRegistrationSettings")
interface IPlatformTelemetryRegistrationSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StorageSize(UINT32* return_value);
	HRESULT set_StorageSize(UINT32 value);
	HRESULT get_UploadQuotaSize(UINT32* return_value);
	HRESULT set_UploadQuotaSize(UINT32 value);
}

interface PlatformTelemetryRegistrationResult
{
}

interface PlatformTelemetryRegistrationSettings
{
}

enum PlatformTelemetryRegistrationStatus
{
	Success = 0,
	SettingsOutOfRange = 1,
	UnknownFailure = 2
}