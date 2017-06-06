module dwinrt;

public import core.sys.windows.windows;
public import dwinrt.winstring;
public import dwinrt.eventhandler;

import core.atomic;

pragma(lib, "User32");
pragma(lib, "windowsapp");
pragma(lib, "uuid");

GUID uuid(string s)
{
	import std.uuid : parseUUID;

	auto uuid = parseUUID(s);
	GUID guid;
	guid.Data1 = uuid.data[3] | (uuid.data[2] << 8) | (uuid.data[1] << 16) | (uuid.data[0] << 24);
	guid.Data2 = uuid.data[5] | (uuid.data[4] << 8);
	guid.Data3 = uuid.data[7] | (uuid.data[6] << 8);
	guid.Data4 = uuid.data[8 .. 16];
	return guid;
}

unittest
{
	assert(uuid("01000000-0000-0000-C000-000000000046") == IID_IClassFactory);
}

GUID uuidOf(T)()
{
	foreach (attr; __traits(getAttributes, T))
		static if (is(typeof(attr) == GUID))
			return attr;
	assert(false, T.stringof ~ " has no GUID attached to it! Use @uuid(...) to attach");
}

wstring factoryNameOf(T)()
{
	foreach (attr; __traits(getAttributes, T))
		static if (is(typeof(attr) == WinrtFactory))
			return attr.name;
	assert(false, T.stringof ~ " is no factory or has no WinrtFactory attached to it!");
}

wstring winrtNameOf(T)()
{
	import std.conv;
	import std.string;
	import std.traits;

	string ret = fullyQualifiedName!T;
	auto idx = ret.lastIndexOf('.');
	assert(ret[idx + 1] == 'I', "WinRT interfaces must begin with an I (For " ~ ret ~ ")");
	return (ret[0 .. idx + 1] ~ ret[idx + 2 .. $]).to!wstring;
}

struct WinrtFactory
{
	wstring name;
}

enum winrtFactory(T) = WinrtFactory(winrtNameOf!T);

extern (Windows)
{
	extern (C)
	{
		version (Win32)
		{
			pragma(mangle, "GetRestrictedErrorInfo@4") HRESULT GetRestrictedErrorInfo(IUnknown** info);
			pragma(mangle, "RoGetActivationFactory@12") HRESULT RoGetActivationFactory(HSTRING classId,
					const ref GUID iid, void** factory);
			pragma(mangle, "RoInitialize@4") HRESULT RoInitialize(uint type);
			pragma(mangle, "RoOriginateError@8") BOOL RoOriginateError(HRESULT error, HSTRING message);
			pragma(mangle, "RoUninitialize@0") void RoUninitialize();
			pragma(mangle, "SetRestrictedErrorInfo@4") HRESULT SetRestrictedErrorInfo(IUnknown* info);
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

extern (C++, struct)
{
	extern (C++, winrt.Numerics)
	{
		struct float2
		{
			float x, y;
		}

		struct float3
		{
			float x, y, z;
		}

		struct float4
		{
			float x, y, z, w;
		}

		struct float3x2
		{
			float m11, m12;
			float m21, m22;
			float m31, m32;
		}

		struct float4x4
		{
			float m11, m12, m13, m14;
			float m21, m22, m23, m24;
			float m31, m32, m33, m34;
			float m41, m42, m43, m44;
		}

		struct plane
		{
			float3 normal;
			float d;
		}

		struct quaternion
		{
			float x, y, z, w;
		}
	}
}

HSTRING duplicate_string(HSTRING other)
{
	HSTRING result = null;
	auto hr = WindowsDuplicateString(other, &result);
	assert(hr == S_OK);
	return result;
}

HSTRING create_string(const(wchar)* value, uint length)
{
	HSTRING result = null;
	auto hr = WindowsCreateString(value, length, &result);
	assert(hr == S_OK);
	return result;
}

bool embedded_null(HSTRING value) nothrow
{
	BOOL result = 0;
	auto hr = WindowsStringHasEmbeddedNull(value, &result);
	assert(hr == S_OK);
	return 0 != result;
}

struct hstring
{
	alias string_type = immutable(wchar_t)[];
	alias value_type = wchar_t;
	alias size_type = uint;
	alias const_reference = ref const(value_type);
	alias const_pointer = const(value_type)*;
	alias const_iterator = const_pointer;

	this(hstring value)
	{
		m_handle = duplicate_string(value.m_handle);
	}

	this(ref hstring value)
	{
		m_handle = value.m_handle;
	}

	this(in wstring value)
	{
		this(cast(const_pointer) value.ptr, cast(size_type) value.length);
	}

	this(const(wchar_t)* value, in size_type size)
	{
		m_handle = create_string(cast(const(wchar)*) value, size);
	}

	void clear() nothrow
	{
		auto result = WindowsDeleteString(handle);
		assert(result == S_OK);
	}

	T opCast(T : string_type)()
	{
		uint32_t length = 0;
		const_pointer buffer = WindowsGetStringRawBuffer(m_handle, &length);
		return buffer[0 .. length];
	}

	const_reference opIndex(size_type pos)
	{
		assert(pos < length);
		return *(begin + pos);
	}

	const_reference front() nothrow
	{
		assert(!empty);
		return *begin;
	}

	const_reference back() nothrow
	{
		assert(!empty);
		return *(end - 1);
	}

	const_pointer data() nothrow
	{
		return begin;
	}

	const_pointer c_str() nothrow
	{
		return begin;
	}

	wstring d_str() nothrow
	{
		return cast(wstring) begin[0 .. length].idup;
	}

	const_iterator begin() nothrow
	{
		return cast(const_iterator) WindowsGetStringRawBuffer(m_handle, null);
	}

	const_iterator cbegin() nothrow
	{
		return begin();
	}

	const_iterator end() nothrow
	{
		uint length = 0;
		const_pointer buffer = cast(const_pointer) WindowsGetStringRawBuffer(m_handle, &length);
		return buffer + length;
	}

	const_iterator cend() nothrow
	{
		return end();
	}

	bool empty() nothrow
	{
		return length == 0;
	}

	size_type length() nothrow
	{
		return WindowsGetStringLen(m_handle);
	}

	HSTRING handle() nothrow
	{
		return m_handle;
	}

package:
	HSTRING m_handle;
}

enum ApartmentType
{
	singleThreaded,
	multiThreaded
}

pragma(inline, true) void init_apartment(in ApartmentType type = ApartmentType.multiThreaded)
{
	import std.conv : to;

	const result = RoInitialize(cast(uint) type);
	if (result < 0)
		throw new Exception("HResult Error " ~ result.to!string);
}

pragma(inline, true) void uninit_apartment()
{
	RoUninitialize();
}

enum TrustLevel
{
	BaseTrust,
	PartialTrust,
	FullTrust
}

@uuid("af86e2e0-b12d-4c6a-9c5a-d7aa65101e90")
interface IInspectable : IUnknown
{
extern (Windows):
	HRESULT GetIids(uint* iidCount, GUID** iids);
	HRESULT GetRuntimeClassName(HSTRING* className);
	HRESULT GetTrustLevel(TrustLevel* trustLevel);
}

struct EventRegistrationToken
{
	long value;
}

T factory(T : IUnknown)()
{
	T p;
	auto id = uuidOf!T;
	auto result = RoGetActivationFactory(hstring(factoryNameOf!T).handle, id, cast(void**)&p);
	assert(result == S_OK);
	return p;
}

class Inspectable(T) : IInspectable
{
extern (Windows):
	HRESULT GetIids(uint* iidCount, GUID** iids)
	{
		import std.traits : InterfacesTuple;
		import core.exception : AssertError;

		GUID[] arr;
		foreach (Base; InterfacesTuple!T)
		{
			try
			{
				arr ~= uuidOf!Base;
			}
			catch (AssertError)
			{
			}
		}

		*iidCount = cast(uint) arr.length;
		*iids = arr.ptr;
		return S_OK;
	}

	HRESULT GetRuntimeClassName(HSTRING* className)
	{
		import std.traits;

		*className = hstring(fullyQualifiedName!T).handle;
		return S_OK;
	}

	HRESULT GetTrustLevel(TrustLevel* trustLevel)
	{
		*trustLevel = TrustLevel.BaseTrust;
		return S_OK;
	}

	HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		if (*riid == IID_IUnknown)
		{
			*ppv = cast(void*) cast(IUnknown) this;
			AddRef();
			return S_OK;
		}
		else
		{
			*ppv = null;
			return E_NOINTERFACE;
		}
	}

	ULONG AddRef()
	{
		return atomicOp!"+="(*cast(shared)&count, 1);
	}

	ULONG Release()
	{
		LONG lRef = atomicOp!"-="(*cast(shared)&count, 1);
		if (lRef == 0)
		{
			// free object

			// If we delete this object, then the postinvariant called upon
			// return from Release() will fail.
			// Just let the GC reap it.
			//delete this;

			return 0;
		}
		return cast(ULONG) lRef;
	}

	LONG count = 0; // object reference count
}

public static import Windows.UI.Xaml;
