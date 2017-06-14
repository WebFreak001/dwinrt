module Windows.ApplicationModel.Infrastructure;

import dwinrt;

@uuid("5af48779-f000-493c-99f1-982fbbf305e0")
interface ISetWindowWithWindowFactory : IInspectable
{
extern(Windows):
	HRESULT abi_SetWindow(Windows.UI.Core.ICoreWindowFactory windowFactory, Windows.UI.Core.CoreWindow* return_window);
}