module Windows.Management.Policies;

import dwinrt;

@uuid("38dcb198-95ac-4077-a643-8078cae26400")
@WinrtFactory("Windows.Management.Policies.NamedPolicyData")
interface INamedPolicyData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Area(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Kind(Windows.Management.Policies.NamedPolicyKind* return_value);
	HRESULT get_IsManaged(bool* return_value);
	HRESULT get_IsUserPolicy(bool* return_value);
	HRESULT get_User(Windows.System.User* return_value);
	HRESULT abi_GetBoolean(bool* return_result);
	HRESULT abi_GetBinary(Windows.Storage.Streams.IBuffer* return_result);
	HRESULT abi_GetInt32(INT32* return_result);
	HRESULT abi_GetInt64(INT64* return_result);
	HRESULT abi_GetString(HSTRING* return_result);
	HRESULT add_Changed(Windows.Foundation.TypedEventHandler!(Windows.Management.Policies.NamedPolicyData*,IInspectable*) changedHandler, EventRegistrationToken* return_cookie);
	HRESULT remove_Changed(EventRegistrationToken cookie);
}

@uuid("7f793be7-76c4-4058-8cad-67662cd05f0d")
@WinrtFactory("Windows.Management.Policies.NamedPolicy")
interface INamedPolicyStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetPolicyFromPath(HSTRING area, HSTRING name, Windows.Management.Policies.NamedPolicyData* return_result);
	HRESULT abi_GetPolicyFromPathForUser(Windows.System.User user, HSTRING area, HSTRING name, Windows.Management.Policies.NamedPolicyData* return_result);
}

interface NamedPolicyData
{
}

enum NamedPolicyKind
{
	Invalid = 0,
	Binary = 1,
	Boolean = 2,
	Int32 = 3,
	Int64 = 4,
	String = 5
}