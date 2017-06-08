module Windows.Perception;

import dwinrt;

@uuid("87c24804-a22e-4adb-ba26-d78ef639bcf4")
@WinrtFactory("Windows.Perception.PerceptionTimestamp")
interface IPerceptionTimestamp : IInspectable
{
extern(Windows):
	HRESULT get_TargetTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_PredictionAmount(Windows.Foundation.TimeSpan* return_value);
}

@uuid("47a611d4-a9df-4edc-855d-f4d339d967ac")
@WinrtFactory("Windows.Perception.PerceptionTimestampHelper")
interface IPerceptionTimestampHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromHistoricalTargetTime(Windows.Foundation.DateTime targetTime, Windows.Perception.PerceptionTimestamp* return_value);
}

interface PerceptionTimestamp : Windows.Perception.IPerceptionTimestamp
{
}

interface PerceptionTimestampHelper
{
}