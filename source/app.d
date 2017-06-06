import core.runtime;
import core.thread;
import std.string;

import dwinrt;

extern (Windows) int WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
		LPSTR lpCmdLine, int nCmdShow)
{
	int result;

	try
	{
		Runtime.initialize();
		result = myWinMain(hInstance, hPrevInstance, lpCmdLine, nCmdShow);
		Runtime.terminate();
	}
	catch (Throwable e)
	{
		import core.sys.windows.windows;

		MessageBoxA(null, e.toString().toStringz(), null, MB_ICONEXCLAMATION);
		result = 0; // failed
	}

	return result;
}

int myWinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
	init_apartment();
	run();
	uninit_apartment();
	Thread.sleep(1.seconds);
	return 0;
}

class DerivedApp : Inspectable!DerivedApp, Windows.UI.Xaml.IApplicationOverrides
{

}

void run()
{
	auto fac = factory!(Windows.UI.Xaml.IApplicationFactory);
	IInspectable inner;
	DerivedApp outer = new DerivedApp();
	Windows.UI.Xaml.IApplication app;
	assert(fac.CreateInstance(outer, &inner, &app) == S_OK);
	assert(app.Run() == S_OK);
}
