module Windows.Foundation;

class IUnknown
{
	/*
	IUnknown() noexcept = default;
	IUnknown(std::nullptr_t) noexcept {}
	void *operator new(size_t) = delete;

	IUnknown(const IUnknown &other) noexcept : m_ptr(other.m_ptr)
	{
			impl_addref();
	}

	IUnknown(IUnknown &&other) noexcept : m_ptr(other.m_ptr)
	{
			other.m_ptr = nullptr;
	}

	~IUnknown() noexcept
	{
			impl_release();
	}

	IUnknown &operator=(const IUnknown &other) noexcept
	{
			impl_copy(other);
			return *this;
	}

	IUnknown &operator=(IUnknown &&other) noexcept
	{
			impl_move(std::forward<IUnknown>(other));
			return *this;
	}

	explicit operator bool() const noexcept
	{
			return nullptr != m_ptr;
	}

	IUnknown &operator=(std::nullptr_t) noexcept
	{
			impl_release();
			return *this;
	}

	template <typename U>
	auto as() const
	{
			std::conditional_t<impl::is_base_of_v<IUnknown, U>, U, com_ptr<U>> temp = nullptr;
			check_hresult(m_ptr->QueryInterface(__uuidof(impl::abi_default_interface<U>), reinterpret_cast<void **>(put_abi(temp))));
			return temp;
	}

	template <typename U>
	auto try_as() const
	{
			std::conditional_t<impl::is_base_of_v<IUnknown, U>, U, com_ptr<U>> temp = nullptr;
			m_ptr->QueryInterface(__uuidof(impl::abi_default_interface<U>), reinterpret_cast<void **>(put_abi(temp)));
			return temp;
	}

	friend auto impl_get(const IUnknown &object) noexcept
	{
			return object.m_ptr;
	}

	friend auto impl_put(IUnknown &object) noexcept
	{
			WINRT_ASSERT(!object);
			return &object.m_ptr;
	}

	friend auto impl_detach(IUnknown &object) noexcept
	{
			auto temp = object.m_ptr;
			object.m_ptr = nullptr;
			return temp;
	}

	friend void swap(IUnknown &left, IUnknown &right) noexcept
	{
			std::swap(left.m_ptr, right.m_ptr);
	}

protected:
	void impl_copy(::IUnknown *other) noexcept
	{
			if (m_ptr != other)
			{
					impl_release();
					m_ptr = other;
					impl_addref();
			}
	}

	void impl_copy(const IUnknown &other) noexcept
	{
			if (this != &other)
			{
					impl_release();
					m_ptr = other.m_ptr;
					impl_addref();
			}
	}

	void impl_move(IUnknown &&other) noexcept
	{
			if (this != &other)
			{
					impl_release();
					m_ptr = other.m_ptr;
					other.m_ptr = nullptr;
			}
	}

	::IUnknown *m_ptr = nullptr;

private:
	void impl_addref() const noexcept
	{
			if (m_ptr)
			{
					m_ptr->AddRef();
			}
	}

	void impl_release() noexcept
	{
			auto temp = m_ptr;

			if (temp)
			{
					m_ptr = nullptr;
					temp->Release();
			}
	}
	*/
}
