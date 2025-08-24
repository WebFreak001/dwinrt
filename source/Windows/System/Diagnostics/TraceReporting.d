module Windows.System.Diagnostics.TraceReporting;

import dwinrt;

@uuid("c1145cfa-9292-4267-890a-9ea3ed072312")
@WinrtFactory("Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActions")
interface IPlatformDiagnosticActionsStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsScenarioEnabled(GUID scenarioId, bool* return_isActive);
	HRESULT abi_TryEscalateScenario(GUID scenarioId, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticEscalationType escalationType, HSTRING outputDirectory, bool timestampOutputDirectory, bool forceEscalationUpload, Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) triggers, bool* return_result);
	HRESULT abi_DownloadLatestSettingsForNamespace(HSTRING partner, HSTRING feature, bool isScenarioNamespace, bool downloadOverCostedNetwork, bool downloadOverBattery, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActionState* return_result);
	HRESULT abi_GetActiveScenarioList(Windows.Foundation.Collections.IVectorView!(GUID)* return_scenarioIds);
	HRESULT abi_ForceUpload(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticEventBufferLatencies latency, bool uploadOverCostedNetwork, bool uploadOverBattery, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActionState* return_result);
	HRESULT abi_IsTraceRunning(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotType slotType, GUID scenarioId, ulong traceProfileHash, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotState* return_slotState);
	HRESULT abi_GetActiveTraceRuntime(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotType slotType, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceRuntimeInfo* return_traceRuntimeInfo);
	HRESULT abi_GetKnownTraceList(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotType slotType, Windows.Foundation.Collections.IVectorView!(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceInfo)* return_traceInfo);
}

@uuid("f870ed97-d597-4bf7-88dc-cf5c7dc2a1d2")
@WinrtFactory("Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceInfo")
interface IPlatformDiagnosticTraceInfo : IInspectable
{
extern(Windows):
	HRESULT get_ScenarioId(GUID* return_value);
	HRESULT get_ProfileHash(ulong* return_value);
	HRESULT get_IsExclusive(bool* return_value);
	HRESULT get_IsAutoLogger(bool* return_value);
	HRESULT get_MaxTraceDurationFileTime(INT64* return_value);
	HRESULT get_Priority(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTracePriority* return_value);
}

@uuid("3d4d5e2d-01d8-4768-8554-1eb1ca610986")
@WinrtFactory("Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceRuntimeInfo")
interface IPlatformDiagnosticTraceRuntimeInfo : IInspectable
{
extern(Windows):
	HRESULT get_RuntimeFileTime(INT64* return_value);
	HRESULT get_EtwRuntimeFileTime(INT64* return_value);
}

interface PlatformDiagnosticActions
{
	private static Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticActionsStatics _staticInstance;
	public static Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticActionsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticActionsStatics);
		return _staticInstance;
	}
	static bool IsScenarioEnabled(GUID scenarioId)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsScenarioEnabled(scenarioId, &_ret));
		return _ret;
	}
	static bool TryEscalateScenario(GUID scenarioId, Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticEscalationType escalationType, wstring outputDirectory, bool timestampOutputDirectory, bool forceEscalationUpload, Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) triggers)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryEscalateScenario(scenarioId, escalationType, hstring(outputDirectory).handle, timestampOutputDirectory, forceEscalationUpload, triggers, &_ret));
		return _ret;
	}
	static Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActionState DownloadLatestSettingsForNamespace(wstring partner, wstring feature, bool isScenarioNamespace, bool downloadOverCostedNetwork, bool downloadOverBattery)
	{
		Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActionState _ret;
		Debug.OK(staticInstance.abi_DownloadLatestSettingsForNamespace(hstring(partner).handle, hstring(feature).handle, isScenarioNamespace, downloadOverCostedNetwork, downloadOverBattery, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(GUID) GetActiveScenarioList()
	{
		Windows.Foundation.Collections.IVectorView!(GUID) _ret;
		Debug.OK(staticInstance.abi_GetActiveScenarioList(&_ret));
		return _ret;
	}
	static Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActionState ForceUpload(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticEventBufferLatencies latency, bool uploadOverCostedNetwork, bool uploadOverBattery)
	{
		Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticActionState _ret;
		Debug.OK(staticInstance.abi_ForceUpload(latency, uploadOverCostedNetwork, uploadOverBattery, &_ret));
		return _ret;
	}
	static Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotState IsTraceRunning(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotType slotType, GUID scenarioId, ulong traceProfileHash)
	{
		Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotState _ret;
		Debug.OK(staticInstance.abi_IsTraceRunning(slotType, scenarioId, traceProfileHash, &_ret));
		return _ret;
	}
	static Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceRuntimeInfo GetActiveTraceRuntime(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotType slotType)
	{
		Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceRuntimeInfo _ret;
		Debug.OK(staticInstance.abi_GetActiveTraceRuntime(slotType, &_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceInfo) GetKnownTraceList(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceSlotType slotType)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTraceInfo) _ret;
		Debug.OK(staticInstance.abi_GetKnownTraceList(slotType, &_ret));
		return _ret;
	}
}

interface PlatformDiagnosticTraceInfo : Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceInfo
{
extern(Windows):
	final GUID ScenarioId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceInfo)this.asInterface(uuid("f870ed97-d597-4bf7-88dc-cf5c7dc2a1d2"))).get_ScenarioId(&_ret));
		return _ret;
	}
	final ulong ProfileHash()
	{
		ulong _ret;
		Debug.OK((cast(Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceInfo)this.asInterface(uuid("f870ed97-d597-4bf7-88dc-cf5c7dc2a1d2"))).get_ProfileHash(&_ret));
		return _ret;
	}
	final bool IsExclusive()
	{
		bool _ret;
		Debug.OK((cast(Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceInfo)this.asInterface(uuid("f870ed97-d597-4bf7-88dc-cf5c7dc2a1d2"))).get_IsExclusive(&_ret));
		return _ret;
	}
	final bool IsAutoLogger()
	{
		bool _ret;
		Debug.OK((cast(Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceInfo)this.asInterface(uuid("f870ed97-d597-4bf7-88dc-cf5c7dc2a1d2"))).get_IsAutoLogger(&_ret));
		return _ret;
	}
	final INT64 MaxTraceDurationFileTime()
	{
		INT64 _ret;
		Debug.OK((cast(Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceInfo)this.asInterface(uuid("f870ed97-d597-4bf7-88dc-cf5c7dc2a1d2"))).get_MaxTraceDurationFileTime(&_ret));
		return _ret;
	}
	final Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTracePriority Priority()
	{
		Windows.System.Diagnostics.TraceReporting.PlatformDiagnosticTracePriority _ret;
		Debug.OK((cast(Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceInfo)this.asInterface(uuid("f870ed97-d597-4bf7-88dc-cf5c7dc2a1d2"))).get_Priority(&_ret));
		return _ret;
	}
}

interface PlatformDiagnosticTraceRuntimeInfo : Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceRuntimeInfo
{
extern(Windows):
	final INT64 RuntimeFileTime()
	{
		INT64 _ret;
		Debug.OK((cast(Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceRuntimeInfo)this.asInterface(uuid("3d4d5e2d-01d8-4768-8554-1eb1ca610986"))).get_RuntimeFileTime(&_ret));
		return _ret;
	}
	final INT64 EtwRuntimeFileTime()
	{
		INT64 _ret;
		Debug.OK((cast(Windows.System.Diagnostics.TraceReporting.IPlatformDiagnosticTraceRuntimeInfo)this.asInterface(uuid("3d4d5e2d-01d8-4768-8554-1eb1ca610986"))).get_EtwRuntimeFileTime(&_ret));
		return _ret;
	}
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