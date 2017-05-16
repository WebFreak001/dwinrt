module dwinrt;

public import core.sys.windows.windows;
public import dwinrt.winstring;

GUID uuidOf(T)()
{
	foreach (attr; __traits(getAttributes, T))
		static if (is(typeof(attr) == GUID))
			return attr;
	static assert(false);
}

pragma(lib, "User32");
pragma(lib, "windowsapp");

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

debug
{
	void WINRT_TRACE(Char, Args...)(in Char[] message, Args args) nothrow
	{
		import std.format : format;
		import std.string : toStringz;

		OutputDebugStringA(format(message, args).toStringz);
	}

	pragma(inline, true) void WINRT_VERIFY_(T, R)(T val, R cmp) nothrow
	{
		assert(val == cmp);
	}
}
else
{
	pragma(inline, true) void WINRT_TRACE(Char, Args...)(in Char[] message, Args args) nothrow
	{
	}

	pragma(inline, true) void WINRT_VERIFY_(T, R)(T val, R cmp) nothrow
	{
	}
}

extern (C++, struct)
{
	extern (C++, winrt.Windows.Foundation.Numerics)
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

//template WINRT_SHIM(Type, D)
//{
//	enum WINRT_SHIM = *cast(abi!Type**)(&cast(const(Type)*)(cast(const(D)*) this));
//}

static import dwinrt.ABI;

static import dwinrt.impl;

static import Windows.Foundation;

auto get_abi(T)(T object) nothrow
{
	return dwinrt.impl.accessors!T.get(object);
}

auto put_abi(T)(ref T object) nothrow
{
	return dwinrt.impl.accessors!T.put(object);
}

void attach_abi(T, V)(ref T object, auto ref V value)
{
	dwinrt.impl.accessors!T.attach(object, value);
}

void copy_from_abi(T, V)(ref T object, auto ref V value)
{
	dwinrt.impl.accessors!T.copy_from(object, value);
}

void copy_to_abi(T, V)(in auto ref T object, ref V value)
{
	dwinrt.impl.accessors!T.copy_to(object, value);
}

auto detach_abi(T)(ref T object)
{
	return dwinrt.impl.accessors!T.detach(object);
}

alias abi(T) = dwinrt.impl.traits!T.abi;

class hstring_view
{
	alias string_type = immutable(wchar_t)[];
	alias value_type = wchar_t;
	alias size_type = uint;
	alias const_reference = ref const(value_type);
	alias const_pointer = const(value_type)*;
	alias const_iterator = const_pointer;

	this(in string_type value)
	{
		this(value.ptr, cast(size_type) value.length);
	}

	this(hstring value)
	{
		m_handle = get_abi(value);
	}

	this(in const(wchar_t)* value)
	{
		this(value, cast(size_type) wcslen(value));
	}

	this(HSTRING value)
	{
		m_handle = value;
	}

	T opCast(T : string_type)()
	{
		uint length = 0;
		const_pointer buffer = WindowsGetStringRawBuffer(m_handle, &length);
		return buffer[0 .. length];
	}

	const_reference opIndex(size_type pos) nothrow
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

	const_iterator begin() nothrow
	{
		return cast(const_iterator) WindowsGetStringRawBuffer(m_handle, null);
	}

	const_iterator cbegin() nothrow
	{
		return begin;
	}

	const_iterator end() nothrow
	{
		uint length = 0;
		const_pointer buffer = cast(const_pointer) WindowsGetStringRawBuffer(m_handle, &length);

		return buffer + length;
	}

	const_iterator cend() nothrow
	{
		return end;
	}

	/*const_reverse_iterator rbegin() const nothrow
		{
		}

		const_reverse_iterator crbegin() const nothrow
		{
		}

		const_reverse_iterator rend() const nothrow
		{
		}

		const_reverse_iterator crend() const nothrow
		{
		}*/

	bool empty() nothrow
	{
		return length == 0;
	}

	size_type length() nothrow
	{
		return WindowsGetStringLen(m_handle);
	}

package:
	this(in const(wchar_t)* value, size_type size)
	{
		WINRT_VERIFY_(S_OK, WindowsCreateStringReference(cast(wchar*) value, size,
				&m_header, &m_handle));
	}

	HSTRING m_handle;
	HSTRING_HEADER m_header;
}

class hstring
{
	alias string_type = immutable(wchar_t)[];
	alias value_type = wchar_t;
	alias size_type = uint;
	alias const_reference = ref const(value_type);
	alias const_pointer = const(value_type)*;
	alias const_iterator = const_pointer;

	this()
	{
	}

	this(hstring value)
	{
		m_handle = dwinrt.impl.handle!(dwinrt.impl.hstring_traits)(
				dwinrt.impl.duplicate_string(get_abi(value.m_handle)));
	}

	this(ref hstring value)
	{
		m_handle = value.m_handle;
	}

	this(in string_type value)
	{
		this(value.ptr, cast(size_type) value.length);
	}

	this(hstring_view value)
	{
		m_handle = dwinrt.impl.handle!(dwinrt.impl.hstring_traits)(
				dwinrt.impl.duplicate_string(get_abi(value)));
	}

	this(const(wchar_t)* value)
	{
		this(value, cast(size_type) wcslen(value));
	}

	this(const(wchar_t)* value, in size_type size)
	{
		m_handle = dwinrt.impl.handle!(dwinrt.impl.hstring_traits)(
				dwinrt.impl.create_string(cast(const(wchar)*) value, size));
	}

	void clear() nothrow
	{
		m_handle.close();
	}

	T opCast(T : string_type)()
	{
		uint32_t length = 0;
		const_pointer buffer = WindowsGetStringRawBuffer(get_abi(m_handle), &length);
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

	const_iterator begin() nothrow
	{
		return cast(const_iterator) WindowsGetStringRawBuffer(get_abi(m_handle), null);
	}

	const_iterator cbegin() nothrow
	{
		return begin();
	}

	const_iterator end() nothrow
	{
		uint length = 0;
		const_pointer buffer = cast(const_pointer) WindowsGetStringRawBuffer(get_abi(m_handle),
				&length);
		return buffer + length;
	}

	const_iterator cend() nothrow
	{
		return end();
	}

	/*const_reverse_iterator rbegin() const nothrow
		{
		}

		const_reverse_iterator crbegin() const nothrow
		{
		}

		const_reverse_iterator rend() const nothrow
		{
		}

		const_reverse_iterator crend() const nothrow
		{
		}*/

	bool empty() nothrow
	{
		return length == 0;
	}

	size_type length() nothrow
	{
		return WindowsGetStringLen(get_abi(m_handle));
	}

package:
	dwinrt.impl.handle!(dwinrt.impl.hstring_traits) m_handle;
}

pragma(inline, true) bool embedded_null(hstring_view value) nothrow
{
	return dwinrt.impl.embedded_null(get_abi(value));
}

pragma(inline, true) bool embedded_null(hstring value) nothrow
{
	return dwinrt.impl.embedded_null(get_abi(value));
}

enum ApartmentType
{
	singleThreaded,
	multiThreaded
}

class HResultException : Exception
{
	this(HRESULT result, string file = __FILE__, size_t line = __LINE__)
	{
		import std.conv : to;

		//RoOriginateError(result, null);
		//GetRestrictedErrorInfo();
		super(result.to!string, file, line);
	}
}

pragma(inline, true) void init_apartment(in ApartmentType type = ApartmentType.multiThreaded)
{
	const result = RoInitialize(cast(uint) type);
	if (result < 0)
		throw new HResultException(result);
}

pragma(inline, true) void uninit_apartment()
{
	RoUninitialize();
}

pragma(inline, true) void check_hresult(in HRESULT result)
{
	if (result != S_OK)
	{
		throw new HResultException(result);
	}
}
