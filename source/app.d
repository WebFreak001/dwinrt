import core.runtime;
import core.thread;
import std.string;

import dwinrt;

import Windows.UI.Xaml;

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

class DerivedApp : Inspectable!DerivedApp, IApplicationOverrides
{
extern (Windows):
	override HRESULT OnInitialize()
	{
		inner.OnInitialize();
		return S_OK;
	}

	override HRESULT OnActivated(IActivatedEventArgs args)
	{
		inner.OnActivated(args);
		return S_OK;
	}

	override HRESULT OnLaunched(ILaunchActivatedEventArgs args)
	{
		static wstring content = `<Grid xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"><TextBlock>Hello World</TextBlock></Grid>`;
		auto winStatic = dwinrt.factory!IWindowStatics;
		auto readerStatic = dwinrt.factory!IXamlReaderStatics;

		IInspectable tmp;
		assert(readerStatic.Load(hstring(content).handle, &tmp) == S_OK);
		winStatic.Current.Content = cast(IUIElement) tmp;
		inner.OnLaunched(args);

		return S_OK;
	}

	override HRESULT OnFileActivated(IFileActivatedEventArgs args)
	{
		inner.OnFileActivated(args);
		return S_OK;
	}

	override HRESULT OnSearchActivated(ISearchActivatedEventArgs args)
	{
		inner.OnSearchActivated(args);
		return S_OK;
	}

	override HRESULT OnSharingTargetActivated(IShareTargetActivatedEventArgs args)
	{
		inner.OnSharingTargetActivated(args);
		return S_OK;
	}

	override HRESULT OnFilePickerActivated(IFilePickerActivatedEventArgs args)
	{
		inner.OnFilePickerActivated(args);
		return S_OK;
	}

private:
	IApplicationOverrides inner;
}

void run()
{
	auto fac = factory!IApplicationFactory;
	IInspectable inner;
	DerivedApp outer = new DerivedApp();
	IApplication app;
	assert(fac.CreateInstance(outer, &inner, &app) == S_OK);
	assert(app.Run() == S_OK);
}
