module Windows.Media.Render;

import dwinrt;

enum AudioRenderCategory
{
	Other = 0,
	ForegroundOnlyMedia = 1,
	BackgroundCapableMedia = 2,
	Communications = 3,
	Alerts = 4,
	SoundEffects = 5,
	GameEffects = 6,
	GameMedia = 7,
	GameChat = 8,
	Speech = 9,
	Movie = 10,
	Media = 11
}