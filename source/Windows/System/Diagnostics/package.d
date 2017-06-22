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
	HRESULT get_NonPagedPoolSizeInBytes(ulong* return_value);
	HRESULT get_PageFaultCount(UINT32* return_value);
	HRESULT get_PageFileSizeInBytes(ulong* return_value);
	HRESULT get_PagedPoolSizeInBytes(ulong* return_value);
	HRESULT get_PeakNonPagedPoolSizeInBytes(ulong* return_value);
	HRESULT get_PeakPageFileSizeInBytes(ulong* return_value);
	HRESULT get_PeakPagedPoolSizeInBytes(ulong* return_value);
	HRESULT get_PeakVirtualMemorySizeInBytes(ulong* return_value);
	HRESULT get_PeakWorkingSetSizeInBytes(ulong* return_value);
	HRESULT get_PrivatePageCount(ulong* return_value);
	HRESULT get_VirtualMemorySizeInBytes(ulong* return_value);
	HRESULT get_WorkingSetSizeInBytes(ulong* return_value);
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
	HRESULT get_TotalPhysicalSizeInBytes(ulong* return_value);
	HRESULT get_AvailableSizeInBytes(ulong* return_value);
	HRESULT get_CommittedSizeInBytes(ulong* return_value);
}

interface ProcessCpuUsage : Windows.System.Diagnostics.IProcessCpuUsage
{
extern(Windows):
	final Windows.System.Diagnostics.ProcessCpuUsageReport GetReport()
	{
		Windows.System.Diagnostics.ProcessCpuUsageReport _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessCpuUsage).abi_GetReport(&_ret));
		return _ret;
	}
}

interface ProcessCpuUsageReport : Windows.System.Diagnostics.IProcessCpuUsageReport
{
extern(Windows):
	final Windows.Foundation.TimeSpan KernelTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessCpuUsageReport).get_KernelTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan UserTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessCpuUsageReport).get_UserTime(&_ret));
		return _ret;
	}
}

interface ProcessDiagnosticInfo : Windows.System.Diagnostics.IProcessDiagnosticInfo
{
extern(Windows):
	final UINT32 ProcessId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiagnosticInfo).get_ProcessId(&_ret));
		return _ret;
	}
	final HSTRING ExecutableFileName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiagnosticInfo).get_ExecutableFileName(&_ret));
		return _ret;
	}
	final Windows.System.Diagnostics.ProcessDiagnosticInfo Parent()
	{
		Windows.System.Diagnostics.ProcessDiagnosticInfo _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiagnosticInfo).get_Parent(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ProcessStartTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiagnosticInfo).get_ProcessStartTime(&_ret));
		return _ret;
	}
	final Windows.System.Diagnostics.ProcessDiskUsage DiskUsage()
	{
		Windows.System.Diagnostics.ProcessDiskUsage _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiagnosticInfo).get_DiskUsage(&_ret));
		return _ret;
	}
	final Windows.System.Diagnostics.ProcessMemoryUsage MemoryUsage()
	{
		Windows.System.Diagnostics.ProcessMemoryUsage _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiagnosticInfo).get_MemoryUsage(&_ret));
		return _ret;
	}
	final Windows.System.Diagnostics.ProcessCpuUsage CpuUsage()
	{
		Windows.System.Diagnostics.ProcessCpuUsage _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiagnosticInfo).get_CpuUsage(&_ret));
		return _ret;
	}
}

interface ProcessDiskUsage : Windows.System.Diagnostics.IProcessDiskUsage
{
extern(Windows):
	final Windows.System.Diagnostics.ProcessDiskUsageReport GetReport()
	{
		Windows.System.Diagnostics.ProcessDiskUsageReport _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiskUsage).abi_GetReport(&_ret));
		return _ret;
	}
}

interface ProcessDiskUsageReport : Windows.System.Diagnostics.IProcessDiskUsageReport
{
extern(Windows):
	final INT64 ReadOperationCount()
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiskUsageReport).get_ReadOperationCount(&_ret));
		return _ret;
	}
	final INT64 WriteOperationCount()
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiskUsageReport).get_WriteOperationCount(&_ret));
		return _ret;
	}
	final INT64 OtherOperationCount()
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiskUsageReport).get_OtherOperationCount(&_ret));
		return _ret;
	}
	final INT64 BytesReadCount()
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiskUsageReport).get_BytesReadCount(&_ret));
		return _ret;
	}
	final INT64 BytesWrittenCount()
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiskUsageReport).get_BytesWrittenCount(&_ret));
		return _ret;
	}
	final INT64 OtherBytesCount()
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessDiskUsageReport).get_OtherBytesCount(&_ret));
		return _ret;
	}
}

interface ProcessMemoryUsage : Windows.System.Diagnostics.IProcessMemoryUsage
{
extern(Windows):
	final Windows.System.Diagnostics.ProcessMemoryUsageReport GetReport()
	{
		Windows.System.Diagnostics.ProcessMemoryUsageReport _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsage).abi_GetReport(&_ret));
		return _ret;
	}
}

interface ProcessMemoryUsageReport : Windows.System.Diagnostics.IProcessMemoryUsageReport
{
extern(Windows):
	final ulong NonPagedPoolSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_NonPagedPoolSizeInBytes(&_ret));
		return _ret;
	}
	final UINT32 PageFaultCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_PageFaultCount(&_ret));
		return _ret;
	}
	final ulong PageFileSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_PageFileSizeInBytes(&_ret));
		return _ret;
	}
	final ulong PagedPoolSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_PagedPoolSizeInBytes(&_ret));
		return _ret;
	}
	final ulong PeakNonPagedPoolSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_PeakNonPagedPoolSizeInBytes(&_ret));
		return _ret;
	}
	final ulong PeakPageFileSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_PeakPageFileSizeInBytes(&_ret));
		return _ret;
	}
	final ulong PeakPagedPoolSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_PeakPagedPoolSizeInBytes(&_ret));
		return _ret;
	}
	final ulong PeakVirtualMemorySizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_PeakVirtualMemorySizeInBytes(&_ret));
		return _ret;
	}
	final ulong PeakWorkingSetSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_PeakWorkingSetSizeInBytes(&_ret));
		return _ret;
	}
	final ulong PrivatePageCount()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_PrivatePageCount(&_ret));
		return _ret;
	}
	final ulong VirtualMemorySizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_VirtualMemorySizeInBytes(&_ret));
		return _ret;
	}
	final ulong WorkingSetSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.IProcessMemoryUsageReport).get_WorkingSetSizeInBytes(&_ret));
		return _ret;
	}
}

interface SystemCpuUsage : Windows.System.Diagnostics.ISystemCpuUsage
{
extern(Windows):
	final Windows.System.Diagnostics.SystemCpuUsageReport GetReport()
	{
		Windows.System.Diagnostics.SystemCpuUsageReport _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.ISystemCpuUsage).abi_GetReport(&_ret));
		return _ret;
	}
}

interface SystemCpuUsageReport : Windows.System.Diagnostics.ISystemCpuUsageReport
{
extern(Windows):
	final Windows.Foundation.TimeSpan KernelTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.ISystemCpuUsageReport).get_KernelTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan UserTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.ISystemCpuUsageReport).get_UserTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan IdleTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.ISystemCpuUsageReport).get_IdleTime(&_ret));
		return _ret;
	}
}

interface SystemDiagnosticInfo : Windows.System.Diagnostics.ISystemDiagnosticInfo
{
extern(Windows):
	final Windows.System.Diagnostics.SystemMemoryUsage MemoryUsage()
	{
		Windows.System.Diagnostics.SystemMemoryUsage _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.ISystemDiagnosticInfo).get_MemoryUsage(&_ret));
		return _ret;
	}
	final Windows.System.Diagnostics.SystemCpuUsage CpuUsage()
	{
		Windows.System.Diagnostics.SystemCpuUsage _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.ISystemDiagnosticInfo).get_CpuUsage(&_ret));
		return _ret;
	}
}

interface SystemMemoryUsage : Windows.System.Diagnostics.ISystemMemoryUsage
{
extern(Windows):
	final Windows.System.Diagnostics.SystemMemoryUsageReport GetReport()
	{
		Windows.System.Diagnostics.SystemMemoryUsageReport _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.ISystemMemoryUsage).abi_GetReport(&_ret));
		return _ret;
	}
}

interface SystemMemoryUsageReport : Windows.System.Diagnostics.ISystemMemoryUsageReport
{
extern(Windows):
	final ulong TotalPhysicalSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.ISystemMemoryUsageReport).get_TotalPhysicalSizeInBytes(&_ret));
		return _ret;
	}
	final ulong AvailableSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.ISystemMemoryUsageReport).get_AvailableSizeInBytes(&_ret));
		return _ret;
	}
	final ulong CommittedSizeInBytes()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.System.Diagnostics.ISystemMemoryUsageReport).get_CommittedSizeInBytes(&_ret));
		return _ret;
	}
}