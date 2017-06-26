module Windows.Perception.Automation.Core;

import dwinrt;

@uuid("0bb04541-4ce2-4923-9a76-8187ecc59112")
@WinrtFactory("Windows.Perception.Automation.Core.CorePerceptionAutomation")
interface ICorePerceptionAutomationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_SetActivationFactoryProvider(Windows.Foundation.IGetActivationFactory provider);
}

interface CorePerceptionAutomation
{
	private static Windows.Perception.Automation.Core.ICorePerceptionAutomationStatics _staticInstance;
	public static Windows.Perception.Automation.Core.ICorePerceptionAutomationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.Automation.Core.ICorePerceptionAutomationStatics);
		return _staticInstance;
	}
	static void SetActivationFactoryProvider(Windows.Foundation.IGetActivationFactory provider)
	{
		Debug.OK(staticInstance.as!(Windows.Perception.Automation.Core.ICorePerceptionAutomationStatics).abi_SetActivationFactoryProvider(provider));
	}
}