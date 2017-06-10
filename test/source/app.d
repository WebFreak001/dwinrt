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

	override HRESULT abi_SetWindow(CoreWindow _window)
	{
		ICoreWindow window = _window.as!ICoreWindow;
		Debug.WriteLine("SetWindow");

		IInspectable insp;
		auto f = activationFactory!ICompositor;
		Debug.OK(f.abi_ActivateInstance(&insp));
		ICompositor compositor = cast(ICompositor) insp;
		compositor.inspect!Compositor;

		ContainerVisual root;
		Debug.OK(compositor.as!ICompositor.abi_CreateContainerVisual(&root));

		Debug.OK(compositor.as!ICompositor.abi_CreateTargetForCurrentView(&target));
		Debug.OK(target.as!ICompositionTarget.set_Root(root));
		Debug.OK(root.as!IContainerVisual.get_Children(&visuals));

		EventRegistrationToken token;
		Debug.OK(window.add_PointerPressed((CoreWindow sender, PointerEventArgs args) {
				OnPointerPressed(sender, args);
			}.event, &token));
		Debug.OK(window.add_PointerMoved((CoreWindow sender, PointerEventArgs args) {
				OnPointerMoved(sender, args);
			}.event, &token));

		return S_OK;
	}

	void OnPointerPressed(CoreWindow sender, PointerEventArgs args)
	{
		PointerPoint currentPoint;
		Debug.OK(args.as!IPointerEventArgs.get_CurrentPoint(&currentPoint));
		Point point;
		Debug.OK(currentPoint.as!IPointerPoint.get_Position(&point));

		AddVisual(point);
	}

	void OnPointerMoved(CoreWindow sender, PointerEventArgs args)
	{
	}

	uint last;
	void AddVisual(in Point point)
	{
		Compositor compositor;
		Debug.OK(visuals.as!ICompositionObject.get_Compositor(&compositor));
		SpriteVisual visual;
		Debug.OK(compositor.as!ICompositor.abi_CreateSpriteVisual(&visual));

		uint next = cast(uint)(++last % colors.length);
		CompositionColorBrush brush;
		Debug.OK(compositor.as!ICompositor.abi_CreateColorBrushWithColor(colors[next], &brush));
		Debug.OK(visual.as!ISpriteVisual.set_Brush(brush));

		enum BlockSize = 100.0f;

		visual.as!IVisual.set_Size(Vector2(BlockSize, BlockSize));
		visual.as!IVisual.set_Offset(Vector3(point.X - BlockSize / 2.0f, point.Y - BlockSize / 2.0f, 0));

		visuals.as!IVisualCollection.abi_InsertAtTop(visual);
	}

	override HRESULT abi_Load(HSTRING entryPoint)
	{
		Debug.WriteLine("Load");
		return S_OK;
	}

	override HRESULT abi_Run()
	{
		Debug.WriteLine("Run");
		CoreWindow window;
		auto fac = dwinrt.factory!ICoreWindowStatic;
		Debug.WriteLine("Factory %s", fac);
		Debug.OK(fac.abi_GetForCurrentThread(&window));

		Debug.WriteLine("Window %s", window);
		Debug.OK(window.abi_Activate());
		Debug.WriteLine("Window Activated");

		CoreDispatcher dispatcher;
		Debug.OK(window.get_Dispatcher(&dispatcher));
		Debug.OK(dispatcher.abi_ProcessEvents(CoreProcessEventsOption.ProcessUntilQuit));

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
}

void run()
{
	MessageBoxA(null, "Starting".ptr, null, MB_ICONEXCLAMATION);

	Debug.OK(factory!ICoreApplication.abi_Run(new App));
}
