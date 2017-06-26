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
import Windows.UI.Xaml : Application, IApplication, IApplication2, IApplication3, IApplicationOverrides, IApplicationOverrides2, IApplicationFactory;

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
		CoreWindow window;
		auto fac = dwinrt.factory!ICoreWindowStatic;
		Debug.WriteLine("Factory %s", fac);
		Debug.OK(fac.abi_GetForCurrentThread(&window));

		Debug.WriteLine("Window %s", window);
		window.Activate();
		Debug.WriteLine("Window Activated");

		dispatcher = window.Dispatcher;

		auto app = make!Appl;

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

@makable!(Application, Application, IApplicationFactory) class Appl : ApplicationT!App
{
}

@makable!(Application, Application, IApplicationFactory) class ApplicationT(T)
	: AgileObject!T, Application, IApplicationOverrides, IApplicationOverrides2
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}

	override HRESULT get_Resources(Windows.UI.Xaml.ResourceDictionary* return_value) { return m_inner.as!IApplication.get_Resources(return_value); }
	override HRESULT set_Resources(Windows.UI.Xaml.ResourceDictionary value) { return m_inner.as!IApplication.set_Resources(value); }
	override HRESULT get_DebugSettings(Windows.UI.Xaml.DebugSettings* return_value) { return m_inner.as!IApplication.get_DebugSettings(return_value); }
	override HRESULT get_RequestedTheme(Windows.UI.Xaml.ApplicationTheme* return_value) { return m_inner.as!IApplication.get_RequestedTheme(return_value); }
	override HRESULT set_RequestedTheme(Windows.UI.Xaml.ApplicationTheme value) { return m_inner.as!IApplication.set_RequestedTheme(value); }
	override HRESULT add_UnhandledException(Windows.UI.Xaml.UnhandledExceptionEventHandler value, EventRegistrationToken* return_token) { return m_inner.as!IApplication.add_UnhandledException(value, return_token); }
	override HRESULT remove_UnhandledException(EventRegistrationToken token) { return m_inner.as!IApplication.remove_UnhandledException(token); }
	override HRESULT add_Suspending(Windows.UI.Xaml.SuspendingEventHandler value, EventRegistrationToken* return_token) { return m_inner.as!IApplication.add_Suspending(value, return_token); }
	override HRESULT remove_Suspending(EventRegistrationToken token) { return m_inner.as!IApplication.remove_Suspending(token); }
	override HRESULT add_Resuming(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token) { return m_inner.as!IApplication.add_Resuming(value, return_token); }
	override HRESULT remove_Resuming(EventRegistrationToken token) { return m_inner.as!IApplication.remove_Resuming(token); }
	override HRESULT abi_Exit() { return m_inner.as!IApplication.abi_Exit(); }

	override HRESULT get_FocusVisualKind(Windows.UI.Xaml.FocusVisualKind* return_value) { return m_inner.as!IApplication2.get_FocusVisualKind(return_value); }
	override HRESULT set_FocusVisualKind(Windows.UI.Xaml.FocusVisualKind value) { return m_inner.as!IApplication2.set_FocusVisualKind(value); }
	override HRESULT get_RequiresPointerMode(Windows.UI.Xaml.ApplicationRequiresPointerMode* return_value) { return m_inner.as!IApplication2.get_RequiresPointerMode(return_value); }
	override HRESULT set_RequiresPointerMode(Windows.UI.Xaml.ApplicationRequiresPointerMode value) { return m_inner.as!IApplication2.set_RequiresPointerMode(value); }
	override HRESULT add_LeavingBackground(Windows.UI.Xaml.LeavingBackgroundEventHandler value, EventRegistrationToken* return_token) { return m_inner.as!IApplication2.add_LeavingBackground(value, return_token); }
	override HRESULT remove_LeavingBackground(EventRegistrationToken token) { return m_inner.as!IApplication2.remove_LeavingBackground(token); }
	override HRESULT add_EnteredBackground(Windows.UI.Xaml.EnteredBackgroundEventHandler value, EventRegistrationToken* return_token) { return m_inner.as!IApplication2.add_EnteredBackground(value, return_token); }
	override HRESULT remove_EnteredBackground(EventRegistrationToken token) { return m_inner.as!IApplication2.remove_EnteredBackground(token); }

	override HRESULT get_HighContrastAdjustment(Windows.UI.Xaml.ApplicationHighContrastAdjustment* return_value) { return m_inner.as!IApplication3.get_HighContrastAdjustment(return_value); }
	override HRESULT set_HighContrastAdjustment(Windows.UI.Xaml.ApplicationHighContrastAdjustment value) { return m_inner.as!IApplication3.set_HighContrastAdjustment(value); }

	override HRESULT abi_OnActivated(Windows.ApplicationModel.Activation.IActivatedEventArgs args) { return m_inner.as!IApplicationOverrides.abi_OnActivated(args); }
	override HRESULT abi_OnLaunched(Windows.ApplicationModel.Activation.LaunchActivatedEventArgs args) { return m_inner.as!IApplicationOverrides.abi_OnLaunched(args); }
	override HRESULT abi_OnFileActivated(Windows.ApplicationModel.Activation.FileActivatedEventArgs args) { return m_inner.as!IApplicationOverrides.abi_OnFileActivated(args); }
	override HRESULT abi_OnSearchActivated(Windows.ApplicationModel.Activation.SearchActivatedEventArgs args) { return m_inner.as!IApplicationOverrides.abi_OnSearchActivated(args); }
	override HRESULT abi_OnShareTargetActivated(Windows.ApplicationModel.Activation.ShareTargetActivatedEventArgs args) { return m_inner.as!IApplicationOverrides.abi_OnShareTargetActivated(args); }
	override HRESULT abi_OnFileOpenPickerActivated(Windows.ApplicationModel.Activation.FileOpenPickerActivatedEventArgs args) { return m_inner.as!IApplicationOverrides.abi_OnFileOpenPickerActivated(args); }
	override HRESULT abi_OnFileSavePickerActivated(Windows.ApplicationModel.Activation.FileSavePickerActivatedEventArgs args) { return m_inner.as!IApplicationOverrides.abi_OnFileSavePickerActivated(args); }
	override HRESULT abi_OnCachedFileUpdaterActivated(Windows.ApplicationModel.Activation.CachedFileUpdaterActivatedEventArgs args) { return m_inner.as!IApplicationOverrides.abi_OnCachedFileUpdaterActivated(args); }
	override HRESULT abi_OnWindowCreated(Windows.UI.Xaml.WindowCreatedEventArgs args) { return m_inner.as!IApplicationOverrides.abi_OnWindowCreated(args); }

	override HRESULT abi_OnBackgroundActivated(Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs args) { return m_inner.as!IApplicationOverrides2.abi_OnBackgroundActivated(args); }

	this()
	{
	}

	IInspectable m_inner;
}

void run()
{
	MessageBoxA(null, "Starting".ptr, null, MB_ICONEXCLAMATION);

	Debug.OK(factory!ICoreApplication.abi_Run(new App));
}
