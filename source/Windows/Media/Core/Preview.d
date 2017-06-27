module Windows.Media.Core.Preview;

import dwinrt;

@uuid("6a633961-dbed-464c-a09a-33412f5caa3f")
@WinrtFactory("Windows.Media.Core.Preview.SoundLevelBroker")
interface ISoundLevelBrokerStatics : IInspectable
{
extern(Windows):
	HRESULT get_SoundLevel(Windows.Media.SoundLevel* return_value);
	HRESULT add_SoundLevelChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SoundLevelChanged(EventRegistrationToken token);
}

interface SoundLevelBroker
{
	private static Windows.Media.Core.Preview.ISoundLevelBrokerStatics _staticInstance;
	public static Windows.Media.Core.Preview.ISoundLevelBrokerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Core.Preview.ISoundLevelBrokerStatics);
		return _staticInstance;
	}
	static Windows.Media.SoundLevel SoundLevel()
	{
		Windows.Media.SoundLevel _ret;
		Debug.OK(staticInstance.get_SoundLevel(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnSoundLevelChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_SoundLevelChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeSoundLevelChanged(EventRegistrationToken token)
	{
		Debug.OK(staticInstance.remove_SoundLevelChanged(token));
	}
}