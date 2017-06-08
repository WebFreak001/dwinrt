module Windows.System.Diagnostics;

import dwinrt;

@uuid("0bbb2472-c8bf-423a-a810-b559ae4354e2")
@WinrtFactory("Windows.System.Diagnostics.ProcessCpuUsage")
interface IProcessCpuUsage : IInspectable
{
extern(Windows):
	HRESULT abi_GetReport(Windows.System.Diagnostics.ProcessCpuUsageReport* return_value);
}

@uuid("8a6d9cac-3987-4e2f-a119-6b5fa214f1b4")
@WinrtFactory("Windows.System.Diagnostics.ProcessCpuUsageReport")
interface IProcessCpuUsageReport : IInspectable
{
extern(Windows):
	HRESULT get_KernelTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_UserTime(Windows.Foundation.TimeSpan* return_value);
}

@uuid("e830b04b-300e-4ee6-a0ab-5b5f5231b434")
@WinrtFactory("Windows.System.Diagnostics.ProcessDiagnosticInfo")
interface IProcessDiagnosticInfo : IInspectable
{
extern(Windows):
	HRESULT get_ProcessId(UINT32* return_value);
	HRESULT get_ExecutableFileName(HSTRING* return_value);
	HRESULT get_Parent(Windows.System.Diagnostics.ProcessDiagnosticInfo* return_value);
	HRESULT get_ProcessStartTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_DiskUsage(Windows.System.Diagnostics.ProcessDiskUsage* return_value);
	HRESULT get_MemoryUsage(Windows.System.Diagnostics.ProcessMemoryUsage* return_value);
	HRESULT get_CpuUsage(Windows.System.Diagnostics.ProcessCpuUsage* return_value);
}

@uuid("2f41b260-b49f-428c-aa0e-84744f49ca95")
@WinrtFactory("Windows.System.Diagnostics.ProcessDiagnosticInfo")
interface IProcessDiagnosticInfoStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForProcesses(Windows.Foundation.Collections.IVectorView!(Windows.System.Diagnostics.ProcessDiagnosticInfo)* return_processes);
	HRESULT abi_GetForCurrentProcess(Windows.System.Diagnostics.ProcessDiagnosticInfo* return_processes);
}

@uuid("5ad78bfd-7e51-4e53-bfaa-5a6ee1aabbf8")
@WinrtFactory("Windows.System.Diagnostics.ProcessDiskUsage")
interface IProcessDiskUsage : IInspectable
{
extern(Windows):
	HRESULT abi_GetReport(Windows.System.Diagnostics.ProcessDiskUsageReport* return_value);
}

@uuid("401627fd-535d-4c1f-81b8-da54e1be635e")
@WinrtFactory("Windows.System.Diagnostics.ProcessDiskUsageReport")
interface IProcessDiskUsageReport : IInspectable
{
extern(Windows):
	HRESULT get_ReadOperationCount(INT64* return_value);
	HRESULT get_WriteOperationCount(INT64* return_value);
	HRESULT get_OtherOperationCount(INT64* return_value);
	HRESULT get_BytesReadCount(INT64* return_value);
	HRESULT get_BytesWrittenCount(INT64* return_value);
	HRESULT get_OtherBytesCount(INT64* return_value);
}

@uuid("f50b229b-827c-42b7-b07c-0e32627e6b3e")
@WinrtFactory("Windows.System.Diagnostics.ProcessMemoryUsage")
interface IProcessMemoryUsage : IInspectable
{
extern(Windows):
	HRESULT abi_GetReport(Windows.System.Diagnostics.ProcessMemoryUsageReport* return_value);
}

@uuid("c2c77cba-1951-4685-8532-7e749ecf8eeb")
@WinrtFactory("Windows.System.Diagnostics.ProcessMemoryUsageReport")
interface IProcessMemoryUsageReport : IInspectable
{
extern(Windows):
	HRESULT get_NonPagedPoolSizeInBytes(UINT64* return_value);
	HRESULT get_PageFaultCount(UINT32* return_value);
	HRESULT get_PageFileSizeInBytes(UINT64* return_value);
	HRESULT get_PagedPoolSizeInBytes(UINT64* return_value);
	HRESULT get_PeakNonPagedPoolSizeInBytes(UINT64* return_value);
	HRESULT get_PeakPageFileSizeInBytes(UINT64* return_value);
	HRESULT get_PeakPagedPoolSizeInBytes(UINT64* return_value);
	HRESULT get_PeakVirtualMemorySizeInBytes(UINT64* return_value);
	HRESULT get_PeakWorkingSetSizeInBytes(UINT64* return_value);
	HRESULT get_PrivatePageCount(UINT64* return_value);
	HRESULT get_VirtualMemorySizeInBytes(UINT64* return_value);
	HRESULT get_WorkingSetSizeInBytes(UINT64* return_value);
}

@uuid("6037b3ac-02d6-4234-8362-7fe3adc81f5f")
@WinrtFactory("Windows.System.Diagnostics.SystemCpuUsage")
interface ISystemCpuUsage : IInspectable
{
extern(Windows):
	HRESULT abi_GetReport(Windows.System.Diagnostics.SystemCpuUsageReport* return_value);
}

@uuid("2c26d0b2-9483-4f62-ab57-82b29d9719b8")
@WinrtFactory("Windows.System.Diagnostics.SystemCpuUsageReport")
interface ISystemCpuUsageReport : IInspectable
{
extern(Windows):
	HRESULT get_KernelTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_UserTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_IdleTime(Windows.Foundation.TimeSpan* return_value);
}

@uuid("a290fe05-dff3-407f-9a1b-0b2b317ca800")
@WinrtFactory("Windows.System.Diagnostics.SystemDiagnosticInfo")
interface ISystemDiagnosticInfo : IInspectable
{
extern(Windows):
	HRESULT get_MemoryUsage(Windows.System.Diagnostics.SystemMemoryUsage* return_value);
	HRESULT get_CpuUsage(Windows.System.Diagnostics.SystemCpuUsage* return_value);
}

@uuid("d404ac21-fc7d-45f0-9a3f-39203aed9f7e")
@WinrtFactory("Windows.System.Diagnostics.SystemDiagnosticInfo")
interface ISystemDiagnosticInfoStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentSystem(Windows.System.Diagnostics.SystemDiagnosticInfo* return_value);
}

@uuid("17ffc595-1702-49cf-aa27-2f0a32591404")
@WinrtFactory("Windows.System.Diagnostics.SystemMemoryUsage")
interface ISystemMemoryUsage : IInspectable
{
extern(Windows):
	HRESULT abi_GetReport(Windows.System.Diagnostics.SystemMemoryUsageReport* return_value);
}

@uuid("38663c87-2a9f-403a-bd19-2cf3e8169500")
@WinrtFactory("Windows.System.Diagnostics.SystemMemoryUsageReport")
interface ISystemMemoryUsageReport : IInspectable
{
extern(Windows):
	HRESULT get_TotalPhysicalSizeInBytes(UINT64* return_value);
	HRESULT get_AvailableSizeInBytes(UINT64* return_value);
	HRESULT get_CommittedSizeInBytes(UINT64* return_value);
}

interface ProcessCpuUsage : Windows.System.Diagnostics.IProcessCpuUsage
{
}

interface ProcessCpuUsageReport : Windows.System.Diagnostics.IProcessCpuUsageReport
{
}

interface ProcessDiagnosticInfo : Windows.System.Diagnostics.IProcessDiagnosticInfo
{
}

interface ProcessDiskUsage : Windows.System.Diagnostics.IProcessDiskUsage
{
}

interface ProcessDiskUsageReport : Windows.System.Diagnostics.IProcessDiskUsageReport
{
}

interface ProcessMemoryUsage : Windows.System.Diagnostics.IProcessMemoryUsage
{
}

interface ProcessMemoryUsageReport : Windows.System.Diagnostics.IProcessMemoryUsageReport
{
}

interface SystemCpuUsage : Windows.System.Diagnostics.ISystemCpuUsage
{
}

interface SystemCpuUsageReport : Windows.System.Diagnostics.ISystemCpuUsageReport
{
}

interface SystemDiagnosticInfo : Windows.System.Diagnostics.ISystemDiagnosticInfo
{
}

interface SystemMemoryUsage : Windows.System.Diagnostics.ISystemMemoryUsage
{
}

interface SystemMemoryUsageReport : Windows.System.Diagnostics.ISystemMemoryUsageReport
{
}