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
extern(Windows):
	final Windows.Foundation.DateTime TargetTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Perception.IPerceptionTimestamp)this.asInterface(uuid("87c24804-a22e-4adb-ba26-d78ef639bcf4"))).get_TargetTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan PredictionAmount()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Perception.IPerceptionTimestamp)this.asInterface(uuid("87c24804-a22e-4adb-ba26-d78ef639bcf4"))).get_PredictionAmount(&_ret));
		return _ret;
	}
}

interface PerceptionTimestampHelper
{
	private static Windows.Perception.IPerceptionTimestampHelperStatics _staticInstance;
	public static Windows.Perception.IPerceptionTimestampHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.IPerceptionTimestampHelperStatics);
		return _staticInstance;
	}
	static Windows.Perception.PerceptionTimestamp FromHistoricalTargetTime(Windows.Foundation.DateTime targetTime)
	{
		Windows.Perception.PerceptionTimestamp _ret;
		Debug.OK(staticInstance.abi_FromHistoricalTargetTime(targetTime, &_ret));
		return _ret;
	}
}