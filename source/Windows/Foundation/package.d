module Windows.Foundation;

import dwinrt;

class IUnknown
{
	this(typeof(null)) nothrow
	{
	}

	this(IUnknown other) nothrow
	{
		m_ptr = other.m_ptr;
		impl_addref();
	}

	this(ref IUnknown other) nothrow
	{
		m_ptr = other.m_ptr;
		other.m_ptr = null;
	}

	~this() nothrow
	{
		impl_release();
	}

	auto opAssign(typeof(null) val)
	{
		impl_release();
		return this;
	}

	T opCast(T : bool)()
	{
		return m_ptr !is null;
	}

	auto as(U)()
	{
		static if (is(U : IUnknown))
			U temp;
		else
			ComPtr!U temp;
		check_hresult(m_ptr.QueryInterface(uuidOf!(dwinrt.impl.abi_default_interface!U),
				cast(void**)(put_abi(temp))));
		return temp;
	}

	auto try_as(U)()
	{
		static if (is(U : IUnknown))
			U temp;
		else
			ComPtr!U temp;
		m_ptr.QueryInterface(uuidOf!(dwinrt.impl.abi_default_interface!U),
				cast(void**)(put_abi(temp)));
		return temp;
	}

	bool opEquals(IUnknown b)
	{
		if (get_abi(this) == get_abi(b))
			return true;
		if (!this || !b)
			return false;
		return get_abi(as!IUnknown) == get_abi(b.as!IUnknown);
	}

	int opCmp(IUnknown b)
	{
		if (get_abi(this) == get_abi(b))
			return 0;
		if (!this || !b)
			return get_abi(this) < get_abi(b) ? -1 : 1;
		return get_abi(as!IUnknown) < get_abi(b.as!IUnknown) ? -1 : 1;
	}

protected:
	void impl_copy(.IUnknown* other) nothrow
	{
		if (m_ptr != other)
		{
			impl_release();
			m_ptr = other;
			impl_addref();
		}
	}

	void impl_copy(IUnknown other) nothrow
	{
		if (this != other)
		{
			impl_release();
			m_ptr = other.m_ptr;
			impl_addref();
		}
	}

	void impl_move(ref IUnknown other) nothrow
	{
		if (this != other)
		{
			impl_release();
			m_ptr = other.m_ptr;
			other.m_ptr = nullptr;
		}
	}

	.IUnknown* m_ptr = null;

private:
	void impl_addref() const nothrow
	{
		if (m_ptr)
		{
			m_ptr.AddRef();
		}
	}

	void impl_release() nothrow
	{
		auto temp = m_ptr;

		if (temp)
		{
			m_ptr = null;
			temp.Release();
		}
	}
}

auto impl_get(IUnknown object) nothrow
{
	return object.m_ptr;
}

auto impl_put(ref IUnknown object) nothrow
{
	assert(!object);
	return &object.m_ptr;
}

auto impl_detach(ref IUnknown object) nothrow
{
	auto temp = object.m_ptr;
	object.m_ptr = null;
	return temp;
}

void swap(ref IUnknown left, ref IUnknown right) nothrow
{
	auto tmp = left.m_ptr;
	left.m_ptr = right.m_ptr;
	right.m_ptr = tmp;
}

enum TrustLevel
{
	BaseTrust,
	PartialTrust,
	FullTrust
}

class IInspectable : IUnknown
{
	this(typeof(null))
	{
		super(null);
	}
}

com_array!GUID GetIids(IInspectable object)
{
	com_array!GUID value;
	check_hresult((*cast(abi!IInspectable**)&object)
			.abi_GetIids(dwinrt.impl.put_size_abi(value), put_abi(value)));
	return value;
}

hstring GetRuntimeClassName(IInspectable object)
{
	hstring value;
	check_hresult((*cast(abi!IInspectable**)&object).abi_GetRuntimeClassName(put_abi(value)));
	return value;
}

TrustLevel GetTrustLevel(IInspectable object)
{
	TrustLevel value;
	check_hresult((*cast(abi!IInspectable**)&object).abi_GetTrustLevel(&value));
	return value;
}
