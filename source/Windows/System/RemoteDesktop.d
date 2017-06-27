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
	private static Windows.System.RemoteDesktop.IInteractiveSessionStatics _staticInstance;
	public static Windows.System.RemoteDesktop.IInteractiveSessionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.System.RemoteDesktop.IInteractiveSessionStatics);
		return _staticInstance;
	}
	static bool IsRemote()
	{
		bool _ret;
		Debug.OK(staticInstance.get_IsRemote(&_ret));
		return _ret;
	}
}