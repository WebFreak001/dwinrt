module dwinrt.uuids;

import dwinrt;

template uuidOfInstanced(T)
{
	static if (is(T == Windows.Foundation.AsyncOperationCompletedHandler!(Windows.UI.Popups.IUICommand)))
		enum uuidOfInstanced = uuid("dd33fd5b-a24d-5a44-91fe-dd6441770103");
	else
		enum uuidOfInstanced = GUID.init;
}
