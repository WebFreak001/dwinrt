module dwinrt;

public import core.sys.windows.windows;

import std.uuid;

UUID uuidOf(T)()
{
	foreach (attr; __traits(getAttributes, T))
		static if (is(typeof(attr) == UUID))
			return attr;
	static assert(false);
}

pragma(lib, "User32");
pragma(lib, "windowsapp");

extern (Windows)
{
	extern (C)
	{
		struct HSTRING__
		{
			int unused;
		}

		alias HSTRING = HSTRING__*;

		version (X86)
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

		OutputDebugStringA(format(message, args).toStringz);
	}
}
else
{
	pragma(inline, true) void WINRT_TRACE(Char, Args...)(in Char[] message, Args args) nothrow
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

struct ComPtr(T)
{
	this(typeof(null))
	{
	}

	this(U)(in auto ref ComPtr!U other)
	{
		pointer = other.pointer;
		addref();
	}

	~this()
	{
		release();
	}

	auto opAssign(U)(in ref ComPtr!U other)
	{
		if (pointer != other.pointer)
		{
			release();
			pointer = other.pointer;
			other.pointer = null;
		}
		return this;
	}

	auto opAssign(U)(in ComPtr!U other)
	{
		copy(other.pointer);
		return this;
	}

	bool opCast()
	{
		return pointer != null;
	}

	auto opDispatch(string s, Args...)(Args args)
	{
		static if (Args.length == 0)
			return mixin("pointer." ~ s);
		else
			return mixin("pointer." ~ s)(args);
	}

	T* get()
	{
		return pointer;
	}

private:

	void copy(T* other) nothrow
	{
		if (pointer != other)
		{
			release();
			pointer = other;
			addref();
		}
	}

	void addref() const nothrow
	{
		if (pointer)
		{
			pointer.AddRef();
		}
	}

	void release() nothrow
	{
		T* temp = pointer;

		if (temp)
		{
			pointer = null;
			temp.release();
		}
	}

	T* pointer = null;
};

static import dwinrt.impl;

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
