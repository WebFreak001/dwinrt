module Windows.Management.Policies;

import dwinrt;

@uuid("38dcb198-95ac-4077-a643-8078cae26400")
@WinrtFactory("Windows.Management.Policies.NamedPolicyData")
interface INamedPolicyData : IInspectable
{
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
	HRESULT add_Changed(Windows.Foundation.TypedEventHandler!(Windows.Management.Policies.NamedPolicyData, IInspectable) changedHandler, EventRegistrationToken* return_cookie);
	HRESULT remove_Changed(EventRegistrationToken cookie);
}

@uuid("7f793be7-76c4-4058-8cad-67662cd05f0d")
@WinrtFactory("Windows.Management.Policies.NamedPolicy")
interface INamedPolicyStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetPolicyFromPath(HSTRING area, HSTRING name, Windows.Management.Policies.NamedPolicyData* return_result);
	HRESULT abi_GetPolicyFromPathForUser(Windows.System.User user, HSTRING area, HSTRING name, Windows.Management.Policies.NamedPolicyData* return_result);
}

interface NamedPolicy
{
	private static Windows.Management.Policies.INamedPolicyStatics _staticInstance;
	public static Windows.Management.Policies.INamedPolicyStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Management.Policies.INamedPolicyStatics);
		return _staticInstance;
	}
	static Windows.Management.Policies.NamedPolicyData GetPolicyFromPath(wstring area, wstring name)
	{
		Windows.Management.Policies.NamedPolicyData _ret;
		Debug.OK(staticInstance.abi_GetPolicyFromPath(hstring(area).handle, hstring(name).handle, &_ret));
		return _ret;
	}
	static Windows.Management.Policies.NamedPolicyData GetPolicyFromPathForUser(Windows.System.User user, wstring area, wstring name)
	{
		Windows.Management.Policies.NamedPolicyData _ret;
		Debug.OK(staticInstance.abi_GetPolicyFromPathForUser(user, hstring(area).handle, hstring(name).handle, &_ret));
		return _ret;
	}
}

interface NamedPolicyData : Windows.Management.Policies.INamedPolicyData
{
extern(Windows):
	final wstring Area()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).get_Area(&_ret));
		return hstring(_ret).d_str;
	}
	final wstring Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).get_Name(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Management.Policies.NamedPolicyKind Kind()
	{
		Windows.Management.Policies.NamedPolicyKind _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).get_Kind(&_ret));
		return _ret;
	}
	final bool IsManaged()
	{
		bool _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).get_IsManaged(&_ret));
		return _ret;
	}
	final bool IsUserPolicy()
	{
		bool _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).get_IsUserPolicy(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).get_User(&_ret));
		return _ret;
	}
	final bool GetBoolean()
	{
		bool _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).abi_GetBoolean(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer GetBinary()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).abi_GetBinary(&_ret));
		return _ret;
	}
	final INT32 GetInt32()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).abi_GetInt32(&_ret));
		return _ret;
	}
	final INT64 GetInt64()
	{
		INT64 _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).abi_GetInt64(&_ret));
		return _ret;
	}
	final wstring GetString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).abi_GetString(&_ret));
		return hstring(_ret).d_str;
	}
	final EventRegistrationToken OnChanged(void delegate(Windows.Management.Policies.NamedPolicyData, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).add_Changed(event!(Windows.Foundation.TypedEventHandler!(Windows.Management.Policies.NamedPolicyData, IInspectable), Windows.Management.Policies.NamedPolicyData, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Management.Policies.INamedPolicyData)this.asInterface(uuid("38dcb198-95ac-4077-a643-8078cae26400"))).remove_Changed(cookie));
	}
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