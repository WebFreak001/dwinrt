module Windows.Media.Core.Preview;

import dwinrt;

@uuid("6a633961-dbed-464c-a09a-33412f5caa3f")
@WinrtFactory("Windows.Media.Core.Preview.SoundLevelBroker")
interface ISoundLevelBrokerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SoundLevel(Windows.Media.SoundLevel* return_value);
	HRESULT add_SoundLevelChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SoundLevelChanged(EventRegistrationToken token);
}