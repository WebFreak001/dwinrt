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
	private static Windows.System.Power.Diagnostics.IBackgroundEnergyDiagnosticsStatics _staticInstance;
	public static Windows.System.Power.Diagnostics.IBackgroundEnergyDiagnosticsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Power.Diagnostics.IBackgroundEnergyDiagnosticsStatics);
		return _staticInstance;
	}
	static double DeviceSpecificConversionFactor()
	{
		double _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.Diagnostics.IBackgroundEnergyDiagnosticsStatics).get_DeviceSpecificConversionFactor(&_ret));
		return _ret;
	}
	static ulong ComputeTotalEnergyUsage()
	{
		ulong _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.Diagnostics.IBackgroundEnergyDiagnosticsStatics).abi_ComputeTotalEnergyUsage(&_ret));
		return _ret;
	}
	static void ResetTotalEnergyUsage()
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.Diagnostics.IBackgroundEnergyDiagnosticsStatics).abi_ResetTotalEnergyUsage());
	}
}

interface ForegroundEnergyDiagnostics
{
	private static Windows.System.Power.Diagnostics.IForegroundEnergyDiagnosticsStatics _staticInstance;
	public static Windows.System.Power.Diagnostics.IForegroundEnergyDiagnosticsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.Power.Diagnostics.IForegroundEnergyDiagnosticsStatics);
		return _staticInstance;
	}
	static double DeviceSpecificConversionFactor()
	{
		double _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.Diagnostics.IForegroundEnergyDiagnosticsStatics).get_DeviceSpecificConversionFactor(&_ret));
		return _ret;
	}
	static ulong ComputeTotalEnergyUsage()
	{
		ulong _ret;
		Debug.OK(staticInstance.as!(Windows.System.Power.Diagnostics.IForegroundEnergyDiagnosticsStatics).abi_ComputeTotalEnergyUsage(&_ret));
		return _ret;
	}
	static void ResetTotalEnergyUsage()
	{
		Debug.OK(staticInstance.as!(Windows.System.Power.Diagnostics.IForegroundEnergyDiagnosticsStatics).abi_ResetTotalEnergyUsage());
	}
}