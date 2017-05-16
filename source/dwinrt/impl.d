module dwinrt.impl;

import dwinrt;

import std.meta;
import core.stdc.config;

struct traits(T)
{
	alias abi = T;
}

struct accessors(T)
{
	static abi!T get(in T object) nothrow
	{
		return cast(abi!T) object;
	}

	static abi!T* put(ref T object) nothrow
	{
		return cast(abi!T*)(&object);
	}

	static void copy_from(ref T object, in abi!T value) nothrow
	{
		object = cast(T) value;
	}

	static void copy_to(in T object, ref abi!T value) nothrow
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
	static assert(not_specialized_type!T.value, "This generic interface has not been specialized. "
			~ "Each distinct instantiation of this generic interface requires a corresponding UUID. "
			~ "This UUID must be provided by a template specialization.");
}

alias abi_arg_in(T) = dwinrt.ABI.arg_in!(abi!T);
alias abi_arg_out(T) = dwinrt.ABI.arg_out!(abi!T);
alias abi_default_interface(T) = dwinrt.ABI.default_interface!(abi!T);

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
	static auto get(in Ptr object) nothrow
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

HSTRING create_string(const(wchar)* value, in uint length)
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
	static HSTRING detach(in const(wchar_t)* value)
	{
		return create_string(value, cast(uint) wcslen(value));
	}
}

struct accessors(T : wstring)
{
	static HSTRING detach(in wstring value)
	{
		return create_string(value.ptr, cast(uint) value.length);
	}
}
