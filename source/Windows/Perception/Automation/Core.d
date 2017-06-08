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
}