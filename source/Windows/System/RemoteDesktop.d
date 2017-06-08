module Windows.System.RemoteDesktop;

import dwinrt;

@uuid("60884631-dd3a-4576-9c8d-e8027618bdce")
@WinrtFactory("Windows.System.RemoteDesktop.InteractiveSession")
interface IInteractiveSessionStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsRemote(bool* return_value);
}

interface InteractiveSession
{
}