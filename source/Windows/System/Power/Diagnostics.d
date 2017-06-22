module Windows.System.Power.Diagnostics;

import dwinrt;

@uuid("d7663702-d3a6-46e0-8f9b-50b95bb4f9c5")
@WinrtFactory("Windows.System.Power.Diagnostics.BackgroundEnergyDiagnostics")
interface IBackgroundEnergyDiagnosticsStatics : IInspectable
{
extern(Windows):
	HRESULT get_DeviceSpecificConversionFactor(double* return_value);
	HRESULT abi_ComputeTotalEnergyUsage(ulong* return_value);
	HRESULT abi_ResetTotalEnergyUsage();
}

@uuid("23ca0917-cd07-4609-be15-8fe894c5e41e")
@WinrtFactory("Windows.System.Power.Diagnostics.ForegroundEnergyDiagnostics")
interface IForegroundEnergyDiagnosticsStatics : IInspectable
{
extern(Windows):
	HRESULT get_DeviceSpecificConversionFactor(double* return_value);
	HRESULT abi_ComputeTotalEnergyUsage(ulong* return_value);
	HRESULT abi_ResetTotalEnergyUsage();
}

interface BackgroundEnergyDiagnostics
{
}

interface ForegroundEnergyDiagnostics
{
}