module dwinrt.uuids;

import dwinrt;

GUID uuidOfInstanced(string T)
{
	if (T == "AsyncOperationCompletedHandler!(IUICommand)")
		return uuid("dd33fd5b-a24d-5a44-91fe-dd6441770103");
	else
		return GUID.init;
}
