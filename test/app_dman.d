import core.runtime;
import core.thread;
import std.string;
import std.conv;

import dwinrt;

import Windows.ApplicationModel.Core;
import Windows.Foundation;
import Windows.Foundation.Numerics;
import Windows.UI.Xaml.Shapes;
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
	return 0;
}

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
		window.OnPointerReleased(&OnPointerPressed);
		window.OnPointerPressed(&OnPointerPressed);
		window.OnPointerMoved(&OnPointerMoved);

		HackyDMan();

		return S_OK;
	}

	void OnPointerPressed(CoreWindow sender, PointerEventArgs args)
	{
		AddVisual(args.CurrentPoint.Position);
	}

	void OnPointerMoved(CoreWindow sender, PointerEventArgs args)
	{
	}

	void AddVisual(float Width = 40.0f, float Height = 40.0f,
			Color color = Color(0xFF, 0xB0, 0x39, 0x31))(in Point point)
	{
		Compositor compositor = visuals.Compositor;
		SpriteVisual visual = compositor.CreateSpriteVisual();

		visual.Brush = compositor.CreateColorBrushWithColor(color);

		visual.Size = Vector2(Width, Height);
		visual.Offset = Vector3(point.X - Width / 2.0f, point.Y - Height / 2.0f, 0);

		visuals.InsertAtTop(visual);
	}

	void HackyDMan()
	{
		//dfmt off
		string[] image = [
			"    ##   ##      ",
			"   #       #     ",
			"  #  ####   #    ",
			"   # #   # #     ",
			"    ##   ##      ",
			"     #   #       ",
			"     #   #       ",
			"     ####        ",
			"    #    #       ",
			"   #      #      ",
			"    #    #       ",
			"    _#  #_       "
		];
		//dfmt on
		enum OffX = 140;
		enum OffY = 20;
		foreach (y, line; image)
		{
			foreach (x, c; line)
			{
				if (c == '#')
					AddVisual(Point(x * 40 + OffX, y * 40 + OffY));
				else if (c == '_')
					AddVisual!(40, 20)(Point(x * 40 + OffX, y * 40 + OffY + 10));
			}
		}
		AddVisual!(50, 50, Color(0xFF, 0xFF, 0xFF, 0xFF))(Point(6 * 40 + OffX, 2 * 40 + OffY));
		AddVisual!(30, 30, Color(0xFF, 0, 0, 0))(Point(6 * 40 + OffX + 10, 2 * 40 + OffY + 5));
		AddVisual!(50, 50, Color(0xFF, 0xFF, 0xFF, 0xFF))(Point(8 * 40 + OffX, 2 * 40 + OffY));
		AddVisual!(30, 30, Color(0xFF, 0, 0, 0))(Point(8 * 40 + OffX + 10, 2 * 40 + OffY + 5));
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
		window.Activate();
		Debug.WriteLine("Window Activated");

		CoreDispatcher dispatcher = window.Dispatcher;
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
}

void run()
{
	//MessageBoxA(null, "Starting".ptr, null, MB_ICONEXCLAMATION);

	Debug.OK(factory!ICoreApplication.abi_Run(new App));
}
