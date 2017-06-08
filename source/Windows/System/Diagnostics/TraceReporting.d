module Windows.System.Diagnostics.TraceReporting;

import dwinrt;

@uuid("c1145cfa-9292-4267-890a-9ea3ed072312")
@WinrtFactory("Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActions")
interface IPlatformDiagnosticActionsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsScenarioEnabled(GUID scenarioId, bool* return_isActive);
	HRESULT abi_TryEscalateScenario(GUID scenarioId, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticEscalationType escalationType, HSTRING outputDirectory, bool timestampOutputDirectory, bool forceEscalationUpload, Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) triggers, bool* return_result);
	HRESULT abi_DownloadLatestSettingsForNamespace(HSTRING partner, HSTRING feature, bool isScenarioNamespace, bool downloadOverCostedNetwork, bool downloadOverBattery, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActionState* return_result);
	HRESULT abi_GetActiveScenarioList(Windows.Foundation.Collections.IVectorView!(GUID)* return_scenarioIds);
	HRESULT abi_ForceUpload(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticEventBufferLatencies latency, bool uploadOverCostedNetwork, bool uploadOverBattery, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActionState* return_result);
	HRESULT abi_IsTraceRunning(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotType slotType, GUID scenarioId, UINT64 traceProfileHash, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotState* return_slotState);
	HRESULT abi_GetActiveTraceRuntime(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotType slotType, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceRuntimeInfo* return_traceRuntimeInfo);
	HRESULT abi_GetKnownTraceList(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotType slotType, Windows.Foundation.Collections.IVectorView!(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceInfo)* return_traceInfo);
}

@uuid("f870ed97-d597-4bf7-88dc-cf5c7dc2a1d2")
@WinrtFactory("Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceInfo")
interface IPlatformDiagnosticTraceInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ScenarioId(GUID* return_value);
	HRESULT get_ProfileHash(UINT64* return_value);
	HRESULT get_IsExclusive(bool* return_value);
	HRESULT get_IsAutoLogger(bool* return_value);
	HRESULT get_MaxTraceDurationFileTime(INT64* return_value);
	HRESULT get_Priority(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTracePriority* return_value);
}

@uuid("3d4d5e2d-01d8-4768-8554-1eb1ca610986")
@WinrtFactory("Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceRuntimeInfo")
interface IPlatformDiagnosticTraceRuntimeInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RuntimeFileTime(INT64* return_value);
	HRESULT get_EtwRuntimeFileTime(INT64* return_value);
}

interface PlatformDiagnosticActions
{
}

interface PlatformDiagnosticTraceInfo : Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceInfo
{
}

interface PlatformDiagnosticTraceRuntimeInfo : Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceRuntimeInfo
{
}

enum PlatformDiagnosticActionState
{
	Success = 0,
	FreeNetworkNotAvailable = 1,
	ACPowerNotAvailable = 2
}

enum PlatformDiagnosticEscalationType
{
	OnCompletion = 0,
	OnFailure = 1
}

@bitflags
enum PlatformDiagnosticEventBufferLatencies
{
	Normal = 0x1,
	CostDeferred = 0x2,
	Realtime = 0x4
}

enum PlatformDiagnosticTracePriority
{
	Normal = 0,
	UserElevated = 1
}

enum PlatformDiagnosticTraceSlotState
{
	NotRunning = 0,
	Running = 1,
	Throttled = 2
}

enum PlatformDiagnosticTraceSlotType
{
	Alternative = 0,
	AlwaysOn = 1,
	Mini = 2
}