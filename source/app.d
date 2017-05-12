import core.runtime;
import core.thread;
import core.sys.windows.windows;
import std.string;

pragma(lib, "User32");
pragma(lib, "windowsapp");

extern (Windows)
{
	extern (C)
	{
		struct HSTRING__
		{
			int unused;
		}

		alias HSTRING = HSTRING__*;

		version (X86)
		{
			pragma(mangle, "_GetRestrictedErrorInfo@4") HRESULT GetRestrictedErrorInfo(
					IUnknown** info);
			pragma(mangle, "_RoGetActivationFactory@12") HRESULT RoGetActivationFactory(HSTRING classId,
					const ref GUID iid, void** factory);
			pragma(mangle, "_RoInitialize@4") HRESULT RoInitialize(uint type);
			pragma(mangle, "_RoOriginateError@8") BOOL RoOriginateError(HRESULT error,
					HSTRING message);
			pragma(mangle, "_RoUninitialize@0") void RoUninitialize();
			pragma(mangle, "_SetRestrictedErrorInfo@4") HRESULT SetRestrictedErrorInfo(
					IUnknown* info);
		}
		else
		{
			HRESULT GetRestrictedErrorInfo(IUnknown** info);
			HRESULT RoGetActivationFactory(HSTRING classId, const ref GUID iid, void** factory);
			HRESULT RoInitialize(uint type);
			BOOL RoOriginateError(HRESULT error, HSTRING message);
			void RoUninitialize();
			HRESULT SetRestrictedErrorInfo(IUnknown* info);
		}
	}
}

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
		MessageBoxA(null, e.toString().toStringz(), null, MB_ICONEXCLAMATION);
		result = 0; // failed
	}

	return result;
}

int myWinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
	MessageBoxA(null, "Hello from D!".ptr, "Hello WinRT".ptr, MB_ICONINFORMATION);
	return 0;
}
