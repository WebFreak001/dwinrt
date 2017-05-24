module dwinrt;

public import core.sys.windows.windows;
public import dwinrt.winstring;

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
	static assert(false);
}

extern (Windows)
{
	extern (C)
	{
		version (Win32)
		{
			pragma(mangle, "GetRestrictedErrorInfo@4") HRESULT GetRestrictedErrorInfo(
					IUnknown** info);
			pragma(mangle, "RoGetActivationFactory@12") HRESULT RoGetActivationFactory(HSTRING classId,
					const ref GUID iid, void** factory);
			pragma(mangle, "RoInitialize@4") HRESULT RoInitialize(uint type);
			pragma(mangle, "RoOriginateError@8") BOOL RoOriginateError(HRESULT error,
					HSTRING message);
			pragma(mangle, "RoUninitialize@0") void RoUninitialize();
			pragma(mangle, "SetRestrictedErrorInfo@4") HRESULT SetRestrictedErrorInfo(
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

debug
{
	void WINRT_TRACE(Char, Args...)(in Char[] message, Args args) nothrow
	{
		import std.format : format;
		import std.string : toStringz;

		try
		{
			OutputDebugStringA(format(message, args).toStringz);
		}
		catch (Exception)
		{
			OutputDebugStringA(message.toStringz);
		}
	}

	pragma(inline, true) void WINRT_VERIFY(T)(T val) nothrow
	{
		assert(val);
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

	pragma(inline, true) void WINRT_VERIFY(T)(T val) nothrow
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

public static import ABI.Windows.Foundation;

public static import dwinrt.ABI;

public static import dwinrt.impl;

public static import Windows.Foundation;

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

struct ComPtr(T)
{
	alias type = abi!T;

	this(typeof(null))
	{
	}

	this(U)(in ComPtr!U other)
	{
		m_ptr = other.m_ptr;
		addref();
	}

	this(U)(ref ComPtr!U other)
	{
		m_ptr = other.m_ptr;
		other.m_ptr = null;
	}

	~this()
	{
		release();
	}

	ref ComPtr!T opAssign(U)(in ComPtr!U other) nothrow
	{
		copy(other.m_ptr);
		return this;
	}

	ref ComPtr!T opAssign(U)(ref ComPtr!U other) nothrow
	{
		if (m_ptr != other.m_ptr)
		{
			release();
			m_ptr = other.m_ptr;
			other.m_ptr = null;
		}
		return this;
	}

	T opCast(T : bool)() nothrow
	{
		return m_ptr != null;
	}

	auto opUnary(string op : "*")()
	{
		return *m_ptr;
	}

	auto getNoRef() nothrow
	{
		return cast(no_ref!type*) m_ptr;
	}

	alias getNoRef this;

	auto as(U)() const
	{
		static if (is(U : Windows.Foundation.IUnknown))
			alias Temp = U;
		else
			alias Temp = ComPtr!U;
		Temp temp = null;
		check_hresult(m_ptr.QueryInterface(uuidOf!(abi_default_interface!U),
				cast(void**) put_abi(temp)));
		return temp;
	}

	auto try_as(U)() const
	{
		static if (is(U : Windows.Foundation.IUnknown))
			alias Temp = U;
		else
			alias Temp = ComPtr!U;
		Temp temp = null;
		m_ptr.QueryInterface(uuidOf!(abi_default_interface!U), cast(void**) put_abi(temp));
		return temp;
	}

	void copy_from(type* other) nothrow
	{
		copy(other);
	}

	void copy_to(type** other) const nothrow
	{
		addref();
		*other = m_ptr;
	}

	bool opEquals(ComPtr!T b)
	{
		return get_abi(this) == get_abi(b);
	}

	int opCmp(ComPtr!T b)
	{
		if (opEquals(b))
			return 0;
		return get_abi(this) < get_abi(b) ? -1 : 1;
	}

private:
	void copy(type* other) nothrow
	{
		if (m_ptr != other)
		{
			release();
			m_ptr = other;
			addref();
		}
	}

	void addref() const nothrow
	{
		if (m_ptr)
			m_ptr.AddRef();
	}

	void release() nothrow
	{
		type* temp = m_ptr;

		if (temp)
		{
			m_ptr = null;
			temp.Release();
		}
	}

	type* m_ptr;
}

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
		WINRT_VERIFY_(S_OK, WindowsCreateStringReference(cast(wchar*) value,
				size, &m_header, &m_handle));
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

	wstring d_str() nothrow
	{
		return begin[0 .. length].idup;
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
		const_pointer buffer = cast(const_pointer) WindowsGetStringRawBuffer(
				get_abi(m_handle), &length);
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
	this(bool fromABI = true)(in HRESULT result, string file = __FILE__, size_t line = __LINE__)
	{
		import std.conv : to;

		m_code = result;
		static if (!fromABI)
			RoOriginateError(result, null);
		//GetRestrictedErrorInfo(put_abi(m_info));
		super(message.d_str.to!string, file, line);
	}

	this(in HRESULT result, hstring_view msg, string file = __FILE__, size_t line = __LINE__)
	{
		import std.conv : to;

		m_code = result;
		RoOriginateError(result, get_abi(msg));
		//GetRestrictedErrorInfo(put_abi(m_info));
		super(message.d_str.to!string, file, line);
	}

	HRESULT code() @property const nothrow
	{
		return m_code;
	}

	hstring message() const nothrow
	{
		/*if (m_info)
		{
			HRESULT code = S_OK;
			dwinrt.impl.handle!(dwinrt.impl.bstr_traits) fallback;
			dwinrt.impl.handle!(dwinrt.impl.bstr_traits) message;
			dwinrt.impl.handle!(dwinrt.impl.bstr_traits) unused;

			if (S_OK == m_info.GetErrorDetails(put_abi(fallback), &code,
					put_abi(message), put_abi(unused)))
			{
				if (code == m_code)
				{
					if (message)
					{
						return dwinrt.impl.trim_hresult_message(get_abi(message),
								SysStringLen(get_abi(message)));
					}
					else
					{
						return dwinrt.impl.trim_hresult_message(get_abi(fallback),
								SysStringLen(get_abi(fallback)));
					}
				}
			}
		}*/

		dwinrt.impl.handle!(dwinrt.impl.heap_traits) message;

		const uint size = FormatMessageW(
				FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
				null, m_code, MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
				cast(wchar_t*)(put_abi(message)), 0, null);

		return dwinrt.impl.trim_hresult_message(get_abi(message)[0 .. size]);
	}

	HRESULT to_abi() const nothrow
	{
		WINRT_TRACE("winrt::hresult_error (0x%8X) %ls\n", code, message.d_str);

		//if (m_info)
		//{
		//	WINRT_SetRestrictedErrorInfo(get_abi(m_info));
		//}

		return m_code;
	}

private:
	HRESULT m_code;
	//ComPtr!IRestrictedErrorInfo m_info;
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

pragma(inline, true) void throw_last_error()
{
	throw new HResultException(HRESULT_FROM_WIN32(GetLastError));
}

pragma(inline, true) void check_hresult(in HRESULT result)
{
	if (result != S_OK)
	{
		throw new HResultException(result);
	}
}

class array_view(T)
{
	alias value_type = T;
	alias size_type = uint;
	alias pointer = value_type*;
	alias const_pointer = const(value_type)*;
	alias iterator = T[];
	alias const_iterator = const(T)[];

	this(pointer first, pointer last)
	{
		m_data = first;
		m_size = cast(size_type)(last - first);
	}

	this(T[] value)
	{
		m_data = value.ptr;
		m_size = cast(size_type) value.length;
	}

	ref value_type opIndex(size_type pos)
	{
		assert(pos < length);
		return m_data[pos];
	}

	const value_type opIndex(size_type pos)
	{
		assert(pos < length);
		return m_data[pos];
	}

	ref value_type at(size_type pos)
	{
		if (length < pos)
			throw new Exception("Invalid array subscript");
		return m_data[pos];
	}

	const value_type at(size_type pos)
	{
		if (length < pos)
			throw new Exception("Invalid array subscript");
		return m_data[pos];
	}

	size_type length() const nothrow
	{
		return m_size;
	}

	bool empty() const nothrow
	{
		return m_size == 0;
	}

	ref value_type front() nothrow
	{
		assert(length > 0);
		return *m_data;
	}

	const value_type front() nothrow
	{
		assert(length > 0);
		return *m_data;
	}

	ref value_type back() nothrow
	{
		assert(length > 0);
		return m_data[length - 1];
	}

	const value_type back() nothrow
	{
		assert(length > 0);
		return m_data[length - 1];
	}

	pointer data() nothrow
	{
		return m_data;
	}

	T[] array()
	{
		return m_data[0 .. m_size];
	}

	bool opEquals(array_view!T b)
	{
		return array == b.array;
	}

protected:
	this()
	{
	}

	pointer m_data;
	size_type m_size;
}

class com_array(T) : array_view!T
{
	this() nothrow
	{
		super();
	}

	this(size_type count)
	{
		static if (is(value_type == class))
			this(count, new value_type());
		else
			this(count, value_type());
	}

	this(size_type count, value_type value)
	{
		super();
		alloc(count);
		m_data[0 .. count] = value;
	}

	~this()
	{
		clear();
	}

	void clear()
	{
		if (m_data)
		{
			for (int i = 0; i < m_size; i++)
				destroy(m_data[i]);
			CoTaskMemFree(m_data);
			m_data = null;
			m_size = 0;
		}
	}

private:
	void alloc(size_type size)
	{
		assert(empty);
		if (size != 0)
		{
			m_data = cast(value_type*) CoTaskMemAlloc(size * value_type.sizeof);
			if (!m_data)
				throw new Exception("Could not allocate CoTaskMem");
			m_size = size;
		}
	}
}

dwinrt.impl.abi_arg_out!T* impl_put(T)(ref com_array!T value) nothrow
{
	assert(value.m_data == null);
	return cast(dwinrt.impl.abi_arg_out!T*)&value.m_data;
}

auto impl_data(T)(ref com_array!T value) nothrow
{
	return value.m_data;
}

void impl_put_size(T)(ref com_array!T value, in uint size) nothrow
{
	assert(value.m_data || (!value.m_data && size == 0));
	value.m_size = size;
}

auto impl_detach(T)(ref com_array!T value) nothrow
{
	import std.typecons : tuple;

	auto result = tuple(value.length, *cast(dwinrt.impl.abi_arg_in!T**)(&value.data));
	value.m_data = null;
	value.m_size = 0;
	return result;
}

void swap(T)(ref com_array!T left, ref com_array!T right) nothrow
{
	auto tmpData = left.m_data;
	auto tmpSize = left.m_size;
	left.m_data = right.m_data;
	left.m_size = right.m_size;
	right.m_data = tmpData;
	right.m_size = tmpSize;
}

auto detach_abi(T)(uint* __valueSize, dwinrt.impl.abi_arg_out!T* value) nothrow
{
	return dwinrt.impl.com_array_proxy!T(__valueSize, value);
}
