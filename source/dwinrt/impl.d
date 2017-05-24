module dwinrt.impl;

import dwinrt;

import std.meta;
import core.stdc.config;
import core.sys.windows.wtypes;

struct traits(T)
{
	alias abi = T;
}

struct accessors(T)
{
	static abi!T get(T object) nothrow
	{
		return cast(abi!T) object;
	}

	static abi!T* put(ref T object) nothrow
	{
		return cast(abi!T*)(&object);
	}

	static void copy_from(ref T object, abi!T value) nothrow
	{
		object = cast(T) value;
	}

	static void copy_to(T object, ref abi!T value) nothrow
	{
		*(cast(T*)&value) = object;
	}

	static abi!T detach(ref T object) nothrow
	{
		import std.algorithm : move;

		return cast(abi!T) move(object);
	}
}

auto put_size_abi(T)(ref T object) nothrow
{
	return accessors!T.put_size(object);
}

interface handle_traits(T)
{
	alias type = T;
}

struct handle(T)
{
	alias type = T.type;

	ref handle!T opAssign(ref handle!T other)
	{
		if (this != other)
			attach_abi(this, detach_abi(other));

		return this;
	}

	~this()
	{
		close();
	}

	void close() nothrow
	{
		T.close(value);
		value = type.init;
	}

	bool opCast(T : bool)() nothrow
	{
		return value != T.init;
	}

	bool opEquals(handle!T b)
	{
		return get_abi(this) == get_abi(b);
	}

	int opCmp(handle!T b)
	{
		if (opEquals(b))
			return 0;
		return get_abi(this) < get_abi(b) ? -1 : 1;
	}

	type value;
}

handle!T.type impl_get(T)(handle!T h) nothrow
{
	return h.value;
}

handle!T.type* impl_put(T)(ref handle!T h) nothrow
{
	assert(h.opCast!bool);
	return &h.value;
}

handle!T.type impl_detach(T)(ref handle!T h) nothrow
{
	handle!T.type value = h.value;
	h.value = handle!T.type.init;
	return value;
}

void swap(T)(ref handle!T left, ref handle!T right) nothrow
{
	auto tmp = left.value;
	left.value = right.value;
	right.value = tmp;
}

struct accessors(Handle : handle!T, T)
{
	alias type = Handle.type;

	static type get(Handle object) nothrow
	{
		return impl_get(object);
	}

	static type* put(ref Handle object) nothrow
	{
		return cast(type*)(&object);
	}

	static void attach(ref Handle object, type value) nothrow
	{
		object.close();
		*put(object) = value;
	}

	static type detach(ref Handle object) nothrow
	{
		return impl_detach(object);
	}
}

alias consume(D, I = D) = traits!I.consume!D;

template ExpandInherit(alias base, D)
{
	alias ExpandInherit(I) = base!(D, I);
}

interface require_one(D, I) : consume!(D, I)
{
	final I opCast(T : I)() const
	{
		auto d = cast(D) this;
		if (d)
			return d.as!I;
		return null;
	}
}

interface require(D, I...) : staticMap!(ExpandInherit!(require_one, D), I)
{
}

interface bases_one(D, I)
{
	final I opCast(T : I)() const
	{
		auto d = cast(D) this;
		if (d)
			return d.as!I;
		return null;
	}
}

interface bases(D, I...) : staticMap!(ExpandInherit!(bases_one, D), I)
{
}

interface no_ref(T) : T
{
extern (Windows):
	c_ulong AddRef() nothrow;
	c_ulong Release() nothrow;
}

interface not_specialized_type(T)
{
	enum value = false;
}

interface not_specialized(T)
{
	static assert(not_specialized_type!T.value,
			"This generic interface has not been specialized. "
			~ "Each distinct instantiation of this generic interface requires a corresponding UUID. "
			~ "This UUID must be provided by a template specialization.");
}

alias abi_arg_in(T) = dwinrt.ABI.arg_in!(abi!T);
alias abi_arg_out(T) = dwinrt.ABI.arg_out!(abi!T);
alias abi_default_interface(T) = dwinrt.ABI.default_interface!(abi!T);

ComPtr!T.type* impl_get(T)(ComPtr!T object) nothrow
{
	return object.m_ptr;
}

ComPtr!T.type** impl_put(T)(ref ComPtr!T object) nothrow
{
	assert(object.m_ptr == null);
	return &object.m_ptr;
}

ComPtr!T.type* impl_detach(T)(ref ComPtr!T object) nothrow
{
	type* temp = object.m_ptr;
	object.m_ptr = null;
	return temp;
}

void swap(T)(ref ComPtr!T left, ref ComPtr!T right) nothrow
{
	const tmp = left.m_ptr;
	left.m_ptr = right.m_ptr;
	right.m_ptr = tmp;
}

struct accessors(Ptr) if (is(Ptr : ComPtr!T, T))
{
	static auto get(Ptr object) nothrow
	{
		return impl_get(object);
	}

	static auto put(ref Ptr object) nothrow
	{
		return impl_put(object);
	}

	static void attach(ref Ptr object, abi!T* value) nothrow
	{
		object = null;
		*put(object) = value;
	}

	static auto detach(ref Ptr object) nothrow
	{
		return impl_detach(object);
	}
}

HSTRING duplicate_string(HSTRING other)
{
	HSTRING result = null;
	check_hresult(WindowsDuplicateString(other, &result));
	return result;
}

HSTRING create_string(const(wchar)* value, uint length)
{
	HSTRING result = null;
	check_hresult(WindowsCreateString(value, length, &result));
	return result;
}

bool embedded_null(HSTRING value) nothrow
{
	BOOL result = 0;
	WINRT_VERIFY_(S_OK, WindowsStringHasEmbeddedNull(value, &result));
	return 0 != result;
}

interface hstring_traits : handle_traits!HSTRING
{
	static void close(type value) nothrow
	{
		WINRT_VERIFY_(S_OK, WindowsDeleteString(value));
	}
}

struct traits(T : hstring)
{
	alias abi = HSTRING;
}

HSTRING impl_get(hstring str) nothrow
{
	return get_abi(str.m_handle);
}

HSTRING* impl_put(ref hstring str) nothrow
{
	return put_abi(str.m_handle);
}

HSTRING impl_detach(ref hstring str) nothrow
{
	return detach_abi(str.m_handle);
}

void swap(ref hstring left, ref hstring right) nothrow
{
	auto tmp = left.m_handle;
	left.m_handle = right.m_handle;
	right.m_handle = tmp;
}

HSTRING impl_get(hstring_view str) nothrow
{
	return str.m_handle;
}

struct accessors(T : hstring)
{
	static HSTRING get(hstring object) nothrow
	{
		return impl_get(object);
	}

	static HSTRING* put(ref hstring object) nothrow
	{
		return impl_put(object);
	}

	static void attach(ref hstring object, HSTRING value) nothrow
	{
		object.clear();
		*put(object) = value;
	}

	static void copy_from(ref hstring object, HSTRING value)
	{
		attach(object, duplicate_string(value));
	}

	static void copy_to(hstring object, ref HSTRING value)
	{
		assert(value == null);
		value = duplicate_string(get(object));
	}

	static HSTRING detach(ref hstring object) nothrow
	{
		return impl_detach(object);
	}
}

struct accessors(T : hstring_view)
{
	static HSTRING get(hstring_view object) nothrow
	{
		return impl_get(object);
	}

	static HSTRING detach(hstring_view object)
	{
		return duplicate_string(get(object));
	}
}

struct accessors(T : const(wchar)*)
{
	static HSTRING detach(const(wchar_t)* value)
	{
		return create_string(value, cast(uint) wcslen(value));
	}
}

struct accessors(T : wstring)
{
	static HSTRING detach(wstring value)
	{
		return create_string(value.ptr, cast(uint) value.length);
	}
}

interface heap_traits : handle_traits!(wchar*)
{
	static void close(type value) nothrow
	{
		WINRT_VERIFY(HeapFree(GetProcessHeap(), 0, value));
	}
}

interface bstr_traits : handle_traits!(BSTR)
{
	static void close(type value)
	{
		SysFreeString(value);
	}
}

pragma(inline, true) hstring trim_hresult_message(wchar[] message) nothrow
{
	import std.string : stripRight;

	try
	{
		message = message.stripRight;
	}
	catch (Exception)
	{
	}
	hstring result;
	WindowsCreateString(message.ptr, cast(uint) message.length, put_abi(result));
	return result;
}

struct array_size_proxy(T)
{
	@disable void opEquals(array_size_proxy!T);

	this(com_array!T* value)
	{
		m_value = value;
	}

	~this() nothrow
	{
		impl_put_size(*m_value, m_size);
	}

	U opCast(U : uint*)()
	{
		return &m_size;
	}

	U opCast(U : ulong*)()
	{
		return cast(ulong*)&m_size;
	}

private:
	com_array!T* m_value;
	uint m_size;
}

struct com_array_proxy(T)
{
	this(uint* size, abi_arg_out!T* value) nothrow
	{
		m_size = size;
		m_value = value;
	}

	~this() nothrow
	{
		auto t = impl_detach(m_temp);
		*m_size = t[0];
		*m_value = t[1];
	}

	U opCast(U : com_array!T*)()
	{
		return m_temp;
	}

	this(this) nothrow
	{
		assert(false);
	}

	ref com_array_proxy!T opAssign(com_array_proxy!T) nothrow
	{
		assert(false);
	}

private:

	uint32_t* m_size;
	abi_arg_out!T* m_value;
	com_array!T m_temp;
}

struct accessors(Array) if (is(Array : com_array!T, T))
{
	static auto put(ref Array object) nothrow
	{
		return impl_put(object);
	}

	static array_size_proxy!T put_size(ref Array object) nothrow
	{
		return array_size_proxy!T(object);
	}

	static auto detach(ref Array object) nothrow
	{
		return impl_detach(object);
	}

	static auto data(ref Array object) nothrow
	{
		return impl_data(object);
	}
}

struct accessors(Array) if (is(Array : array_view!T, T))
{
	static auto get(Array object) nothrow
	{
		return cast()(cast(T*) object.data);
	}
}

struct traits(T : Windows.Foundation.IUnknown)
{
	alias abi = IUnknown;
}

struct accessors(T) if (is(T : Windows.Foundation.IUnknown))
{
	static auto get(T object) nothrow
	{
		return cast(abi_arg_in!T) impl_get(object);
	}

	static auto put(ref T object) nothrow
	{
		return cast(abi_arg_out!T) impl_put(object);
	}

	static void attach(ref T object, abi_arg_in!T value) nothrow
	{
		object = null;
		*put(object) = value;
	}

	static void copy_from(ref T object, abi_arg_in!T value) nothrow
	{
		object = null;

		if (value)
		{
			value.AddRef();
			*put(object) = value;
		}
	}

	static void copy_to(V)(T object, ref V value) nothrow
	{
		if (object)
		{
			value = get(object);
			value.AddRef();
		}
		else
		{
			value = null;
		}
	}

	static auto detach(ref T object) nothrow
	{
		return cast(abi_arg_in!T) impl_detach(object);
	}
}

struct traits(T : Windows.Foundation.IInspectable)
{
	alias abi = ABI.Windows.Foundation.IInspectable;
}
