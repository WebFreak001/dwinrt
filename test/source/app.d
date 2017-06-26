import core.runtime;
import core.thread;
import std.string;
import std.conv;

import dwinrt;

import Windows.ApplicationModel.Core;
import Windows.Foundation;
import Windows.Foundation.Numerics;
import Windows.UI;
import Windows.UI.Input;
import Windows.UI.Core;
import Windows.UI.Composition;
import Windows.UI.Popups;

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

		Debug.WriteLine("Exception:\n%s", e);
		MessageBoxA(null, e.toString().toStringz(), null, MB_ICONEXCLAMATION);
		result = 1; // failed
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

static Color[] colors = [
	Color(0xDC, 0x5B, 0x9B, 0xD5), Color(0xDC, 0xED, 0x7D, 0x31), Color(0xDC,
		0x70, 0xAD, 0x47), Color(0xDC, 0xFF, 0xC0, 0x00)
];

class App : Inspectable!App, IFrameworkViewSource, IFrameworkView
{
extern (Windows):
	override HRESULT abi_CreateView(IFrameworkView* viewProvider)
	{
		Debug.WriteLine("CreateView");
		*viewProvider = this;
		return S_OK;
	}

	override HRESULT abi_Initialize(CoreApplicationView v)
	{
		Debug.WriteLine("Initialize %s", v);
		return S_OK;
	}

	override HRESULT abi_SetWindow(CoreWindow window)
	{
		Debug.WriteLine("SetWindow");

		IInspectable insp;
		auto f = activationFactory!ICompositor;
		Debug.OK(f.abi_ActivateInstance(&insp));
		Compositor compositor = cast(Compositor) insp;
		compositor.inspect!Compositor;

		ContainerVisual root = compositor.CreateContainerVisual();

		target = compositor.CreateTargetForCurrentView();
		target.Root = root;
		visuals = root.Children;

		EventRegistrationToken token;
		window.OnPointerPressed(&OnPointerPressed);
		window.OnPointerMoved(&OnPointerMoved);

		return S_OK;
	}

	void OnPointerPressed(CoreWindow, PointerEventArgs args)
	{
		spam();
		AddVisual(args.CurrentPoint.Position);
	}

	extern (D) void spam()
	{
		MessageDialog dialog;
		Debug.OK(dwinrt.factory!IMessageDialogFactory.abi_CreateWithTitle(
				hstring("You are the 1 millionth visitor! Claim your price now.")
				.handle, hstring("Congratulations!").handle, &dialog));
		UICommand defaultCommand, cancelCommand;
		Debug.OK(dwinrt.factory!IUICommandFactory.abi_Create(hstring("Claim Reward")
				.handle, &defaultCommand));
		Debug.OK(dwinrt.factory!IUICommandFactory.abi_Create(hstring("Later")
				.handle, &cancelCommand));
		Debug.OK(dialog.Commands.abi_Append(defaultCommand));
		Debug.OK(dialog.Commands.abi_Append(cancelCommand));
		dialog.DefaultCommandIndex = 0;
		dialog.CancelCommandIndex = 1;
		dialog.ShowAsync().then((IUICommand c) {
			auto com = c;
			if (com == cancelCommand)
				dispatcher.RunAsync(CoreDispatcherPriority.Low, handler!DispatchedHandler(&spam));
		});
	}

	void OnPointerMoved(CoreWindow, PointerEventArgs)
	{
	}

	uint last;
	void AddVisual(in Point point)
	{
		Compositor compositor = visuals.Compositor;
		SpriteVisual visual = compositor.CreateSpriteVisual();

		uint next = cast(uint)(++last % colors.length);
		visual.Brush = compositor.CreateColorBrushWithColor(colors[next]);

		enum BlockSize = 100.0f;

		visual.Size = Vector2(BlockSize, BlockSize);
		visual.Offset = Vector3(point.X - BlockSize / 2.0f, point.Y - BlockSize / 2.0f, 0);

		visuals.InsertAtTop(visual);
	}

	override HRESULT abi_Load(HSTRING entryPoint)
	{
		Debug.WriteLine("Load");
		return S_OK;
	}

	override HRESULT abi_Run()
	{
		Debug.WriteLine("Run");
		CoreWindow window = CoreWindow.GetForCurrentThread;
		window.Activate();

		dispatcher = window.Dispatcher;
		dispatcher.ProcessEvents(CoreProcessEventsOption.ProcessUntilQuit);

		return S_OK;
	}

	override HRESULT abi_Uninitialize()
	{
		Debug.WriteLine("Uninitialize");
		return S_OK;
	}

private:
	CompositionTarget target;
	VisualCollection visuals;
	CoreDispatcher dispatcher;
}

void run()
{
	MessageBoxA(null, "Starting".ptr, null, MB_ICONEXCLAMATION);

	CoreApplication.Run(new App);
}
