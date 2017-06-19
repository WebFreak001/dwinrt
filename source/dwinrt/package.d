module dwinrt;

debug = DWinRT;

public import core.sys.windows.windows;
public import dwinrt.winstring;
import dwinrt.uuids;

import core.atomic;
import core.sys.windows.com;
import core.thread;
import core.sync.mutex;

import core.sys.windows.objidl : STATSTG;
import core.sys.windows.wtypes;
import core.sys.windows.oaidl;

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

GUID sha1UUID(string s, string base)
{
	import sha1ct : sha1UUID;
	import std.uuid : parseUUID;

	auto uuid = sha1UUID(s, parseUUID(base));
	GUID guid;
	guid.Data1 = uuid.data[3] | (uuid.data[2] << 8) | (uuid.data[1] << 16) | (uuid.data[0] << 24);
	guid.Data2 = uuid.data[5] | (uuid.data[4] << 8);
	guid.Data3 = uuid.data[7] | (uuid.data[6] << 8);
	guid.Data4 = uuid.data[8 .. 16];
	return guid;
}

struct dynamicUUID
{
	string base;
}

string guidToString(GUID guid)
{
	import std.uuid : UUID;

	UUID uuid;
	uuid.data[0] = (guid.Data1 >> 24) & 0xFF;
	uuid.data[1] = (guid.Data1 >> 16) & 0xFF;
	uuid.data[2] = (guid.Data1 >> 8) & 0xFF;
	uuid.data[3] = (guid.Data1) & 0xFF;
	uuid.data[4] = (guid.Data2 >> 8) & 0xFF;
	uuid.data[5] = (guid.Data2) & 0xFF;
	uuid.data[6] = (guid.Data3 >> 8) & 0xFF;
	uuid.data[7] = (guid.Data3) & 0xFF;
	uuid.data[8 .. 16] = guid.Data4;
	return uuid.toString;
}

unittest
{
	assert(uuid("01000000-0000-0000-C000-000000000046") == IID_IClassFactory);
	assert(guidToString(uuid("01234567-89AB-CDEF-0123-456789ABCDEF")) == "01234567-89ab-cdef-0123-456789abcdef",
			guidToString(uuid("01234567-89AB-CDEF-0123-456789ABCDEF")));
}

GUID uuidOf(T, bool throwIfNotThere = true)()
{
	GUID ret;
	foreach (attr; __traits(getAttributes, T))
	{
		static if (is(typeof(attr) == GUID))
			ret = attr;
		else static if (is(typeof(attr) == dynamicUUID))
			ret = sha1UUID(T.stringof, attr.base);
	}
	static if (throwIfNotThere)
		if (ret == GUID.init)
			assert(false, T.stringof ~ " has no GUID attached to it! Use @uuid(...) to attach");
	return ret;
}

GUID uuidOfRt(T)()
{
	auto uuid = uuidOf!(T, false);
	if (uuid == GUID.init)
		uuid = uuidOfInstanced(T.stringof);
	return uuid;
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
	if (ret[idx + 1] == 'I')
		return (ret[0 .. idx + 1] ~ ret[idx + 2 .. $]).to!wstring;
	else
		return ret.to!wstring;
}

struct WinrtFactory
{
	wstring name;
}

enum winrtFactory(T) = WinrtFactory(winrtNameOf!T);

extern (Windows)
{
	HRESULT GetRestrictedErrorInfo(IRestrictedErrorInfo* info);
	HRESULT RoGetActivationFactory(HSTRING classId, const ref GUID iid, void** factory);
	HRESULT RoInitialize(uint type);
	BOOL RoOriginateError(HRESULT error, HSTRING message);
	void RoUninitialize();
	HRESULT SetRestrictedErrorInfo(IRestrictedErrorInfo info);
	HRESULT CoGetApartmentType(int* pAptType, int* pAptQualifier);
	HRESULT RoGetAgileReference(int options, REFIID riid, IUnknown pUnk,
			IAgileReference* ppAgileReference);
}

@uuid("c03f6a43-65a4-9818-987e-e0b810d2a6f2")
interface IAgileReference : IUnknown
{
extern (Windows):
	HRESULT abi_Resolve(REFIID riid, void** ppvObjectReference);
}

enum
{
	AGILEREFERENCE_DEFAULT = 0,
	AGILEREFERENCE_DELAYEDMARSHAL = 1,
}

struct Debug
{
	static void Write(Char, Args...)(in Char[] message, Args args) nothrow
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

	static void WriteLine(Char, Args...)(in Char[] message, Args args) nothrow
	{
		import std.format : format;
		import std.string : toStringz;

		try
		{
			OutputDebugStringA((format(message, args) ~ '\n').toStringz);
		}
		catch (Exception)
		{
			OutputDebugStringA((message ~ '\n').toStringz);
		}
	}

	static void OK(HRESULT hr, string file = __FILE__, int line = __LINE__,
			string func = __PRETTY_FUNCTION__)
	{
		import std.conv;

		if (hr != S_OK)
		{
			auto ex = new HResultException(hr, file, line);
			WriteLine("HRESULT fail (0x%s / %s) in %s:%s in function %s",
					hr.to!string(16), (cast(HResultEnum) hr).to!string, file, line, func);
			WriteLine("Exception: %s", ex);
			throw ex;
		}
	}
}

HSTRING duplicate_string(HSTRING other)
{
	HSTRING result = null;
	auto hr = WindowsDuplicateString(other, &result);
	Debug.OK(hr);
	return result;
}

HSTRING create_string(const(wchar)* value, uint length)
{
	HSTRING result = null;
	auto hr = WindowsCreateString(value, length, &result);
	Debug.OK(hr);
	return result;
}

bool embedded_null(HSTRING value)
{
	BOOL result = 0;
	auto hr = WindowsStringHasEmbeddedNull(value, &result);
	Debug.OK(hr);
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

	this(HSTRING val)
	{
		m_handle = val;
	}

	void clear()
	{
		auto result = WindowsDeleteString(handle);
		Debug.OK(result);
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

	HSTRING* ptr() nothrow
	{
		return &m_handle;
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

	debug (DWinRT)
		Debug.WriteLine("RoInitialize %s", type);
	const result = RoInitialize(cast(uint) type);
	if (result < 0)
		throw new HResultException(result);
}

pragma(inline, true) void uninit_apartment()
{
	debug (DWinRT)
		Debug.WriteLine("RoUninitialize");
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
	HRESULT abi_GetIids(uint* iidCount, GUID** iids);
	HRESULT abi_GetRuntimeClassName(HSTRING* className);
	HRESULT abi_GetTrustLevel(TrustLevel* trustLevel);
}

void inspect(T : IInspectable)(IInspectable inspectable)
{
	import std.algorithm;
	import std.conv;
	import std.string;
	import std.traits;

	static immutable target = winrtNameOf!T;
	debug (DWinRT)
		Debug.WriteLine("Checking %s to be %s", inspectable, target);
	HSTRING name;
	inspectable.abi_GetRuntimeClassName(&name);
	if (hstring(name).d_str != target)
	{
		string dname = hstring(name).d_str.to!string;
		auto uuids = listUUIDs!T;
		uint num;
		GUID* iids;
		inspectable.abi_GetIids(&num, &iids);
		GUID[] cmp = iids[0 .. num];
		Debug.WriteLine(
				"Mismatch Types: Expected type to be %s (%(%s, %))\n                            but got %s (%(%s, %))",
				fullyQualifiedName!T, uuids.map!guidToString, dname, cmp.map!guidToString);
		throw new Exception("Mismatch IIDs: Expected type to be " ~ fullyQualifiedName!T ~ " ("
				~ uuids.map!guidToString.join(
					", ") ~ ") but got " ~ dname ~ " (" ~ cmp.map!guidToString.join(", ") ~ ")");
	}
}

@uuid("00000035-0000-0000-c000-000000000046")
interface IActivationFactory : IInspectable
{
extern (Windows):
	HRESULT abi_ActivateInstance(IInspectable* instance);
}

struct EventRegistrationToken
{
	long value;
}

T factory(T : IUnknown)()
{
	T p;
	auto id = uuidOfRt!T;
	debug (DWinRT)
		Debug.WriteLine("RoGetActivationFactory(%s, %s)", factoryNameOf!T, id.guidToString);
	auto result = RoGetActivationFactory(hstring(factoryNameOf!T).handle, id, cast(void**)&p);
	Debug.OK(result);
	return p;
}

Interface factory(Class : IUnknown, Interface : IUnknown)()
{
	Interface factory;
	auto id = uuidOfRt!Interface;
	enum rt = winrtNameOf!Class;
	debug (DWinRT)
		Debug.WriteLine("RoGetActivationFactory(%s, %s)", rt, id.guidToString);
	auto result = RoGetActivationFactory(hstring(rt).handle, id, cast(void**)&factory);
	Debug.OK(result);
	return factory;
}

auto tryAs(U : IUnknown, T : IUnknown)(T base)
{
	U tmp = null;
	static immutable id = uuidOf!(U, false);
	static if (id != GUID.init)
	{
		base.QueryInterface(&id, cast(void**)&tmp);
	}
	else
	{
		auto rtID = uuidOfInstanced(U.stringof);
		if (rtID != GUID.init)
			base.QueryInterface(&rtID, cast(void**)&tmp);
		else
			tmp = cast(U) base;
	}
	return tmp;
}

auto as(U : IUnknown, T : IUnknown)(T base)
{
	U tmp = null;
	static immutable id = uuidOf!(U, false);
	static if (id != GUID.init)
	{
		Debug.OK(base.QueryInterface(&id, cast(void**)&tmp));
	}
	else
	{
		auto rtID = uuidOfInstanced(U.stringof);
		if (rtID != GUID.init)
			base.QueryInterface(&rtID, cast(void**)&tmp);
		else
			tmp = cast(U) base;
	}
	return tmp;
}

Interface activationFactory(Class : IUnknown, Interface : IUnknown = IActivationFactory)()
{
	debug (DWinRT)
		Debug.WriteLine("activationFactory!(%s, %s)", Class.stringof, Interface.stringof);
	return factory!(Class, Interface);
}

T activate(T : IUnknown)()
{
	T f;
	debug (DWinRT)
		Debug.WriteLine("activate!%s", T.stringof);
	Debug.OK(activationFactory!T.abi_ActivateInstance(cast(IInspectable*)&f));
	return f;
}

enum AsyncStatus
{
	Started,
	Completed,
	Canceled,
	Error,
}

@uuid("00000036-0000-0000-c000-000000000046")
interface IAsyncInfo : IInspectable
{
	HRESULT get_Id(uint* id);
	HRESULT get_Status(AsyncStatus* status);
	HRESULT get_ErrorCode(HRESULT* errorCode);
	HRESULT abi_Cancel();
	HRESULT abi_Close();

	final uint Id()
	{
		uint ret;
		Debug.OK(this.as!IAsyncInfo.get_Id(&ret));
		return ret;
	}

	final AsyncStatus Status()
	{
		AsyncStatus ret = cast(AsyncStatus)-1;
		Debug.OK(this.as!IAsyncInfo.get_Status(&ret));
		return ret;
	}

	final HRESULT ErrorCode()
	{
		HRESULT ret;
		Debug.OK(this.as!IAsyncInfo.get_ErrorCode(&ret));
		return ret;
	}

	final void Cancel()
	{
		Debug.OK(this.as!IAsyncInfo.abi_Cancel());
	}

	final void Close()
	{
		Debug.OK(this.as!IAsyncInfo.abi_Close());
	}
}

private bool isSta()
{
	int aptType;
	int aptTypeQualifier;
	return SUCCEEDED(CoGetApartmentType(&aptType, &aptTypeQualifier))
		&& ((aptType == 0 /* STA */ ) || (aptType == 3 /* MAINSTA */ ));
}

interface ISequentialStream : IUnknown
{
	HRESULT Read(void*, ULONG, ULONG*);
	HRESULT Write(void*, ULONG, ULONG*);
}

alias LPSTREAM = IStream;

@uuid("0000000c-0000-0000-c000-000000000046")
interface IStream : ISequentialStream
{
	HRESULT Seek(LARGE_INTEGER, DWORD, ULARGE_INTEGER*);
	HRESULT SetSize(ULARGE_INTEGER);
	HRESULT CopyTo(IStream, ULARGE_INTEGER, ULARGE_INTEGER*, ULARGE_INTEGER*);
	HRESULT Commit(DWORD);
	HRESULT Revert();
	HRESULT LockRegion(ULARGE_INTEGER, ULARGE_INTEGER, DWORD);
	HRESULT UnlockRegion(ULARGE_INTEGER, ULARGE_INTEGER, DWORD);
	HRESULT Stat(STATSTG*, DWORD);
	HRESULT Clone(LPSTREAM*);
}

@uuid("00000003-0000-0000-c000-000000000046")
interface IMarshal : IUnknown
{
	HRESULT GetUnmarshalClass(REFIID, PVOID, DWORD, PVOID, DWORD, CLSID*);
	HRESULT GetMarshalSizeMax(REFIID, PVOID, DWORD, PVOID, DWORD, ULONG*);
	HRESULT MarshalInterface(IStream, REFIID, PVOID, DWORD, PVOID, DWORD);
	HRESULT UnmarshalInterface(IStream, REFIID, void**);
	HRESULT ReleaseMarshalData(IStream);
	HRESULT DisconnectObject(DWORD);
}

class Marshaler(T) : Inspectable!T, IMarshal
{
extern (Windows):
	final HRESULT GetUnmarshalClass(REFIID riid, void* pv, DWORD dwDestContext,
			void* pvDestContext, DWORD mshlflags, CLSID* pCid)
	{
		IMarshal marshal;
		if ((marshal = get_marshaler()) !is null)
		{
			return marshal.GetUnmarshalClass(riid, pv, dwDestContext,
					pvDestContext, mshlflags, pCid);
		}

		return E_OUTOFMEMORY;
	}

	final HRESULT GetMarshalSizeMax(REFIID riid, void* pv, DWORD dwDestContext,
			void* pvDestContext, DWORD mshlflags, DWORD* pSize)
	{
		IMarshal marshal;
		if ((marshal = get_marshaler()) !is null)
		{
			return marshal.GetMarshalSizeMax(riid, pv, dwDestContext,
					pvDestContext, mshlflags, pSize);
		}

		return E_OUTOFMEMORY;
	}

	final HRESULT MarshalInterface(IStream pStm, REFIID riid, void* pv,
			DWORD dwDestContext, void* pvDestContext, DWORD mshlflags)
	{
		IMarshal marshal;
		if ((marshal = get_marshaler()) !is null)
		{
			return marshal.MarshalInterface(pStm, riid, pv, dwDestContext,
					pvDestContext, mshlflags);
		}

		return E_OUTOFMEMORY;
	}

	final HRESULT UnmarshalInterface(IStream pStm, REFIID riid, void** ppv)
	{
		IMarshal marshal;
		if ((marshal = get_marshaler()) !is null)
		{
			return marshal.UnmarshalInterface(pStm, riid, ppv);
		}

		return E_OUTOFMEMORY;
	}

	final HRESULT ReleaseMarshalData(IStream pStm)
	{
		IMarshal marshal;
		if ((marshal = get_marshaler()) !is null)
		{
			return marshal.ReleaseMarshalData(pStm);
		}

		return E_OUTOFMEMORY;
	}

	final HRESULT DisconnectObject(DWORD dwReserved)
	{
		IMarshal marshal;
		if ((marshal = get_marshaler()) !is null)
		{
			return marshal.DisconnectObject(dwReserved);
		}

		return E_OUTOFMEMORY;
	}

	static IMarshal get_marshaler()
	{
		IUnknown unknown;
		CoCreateFreeThreadedMarshaler(null, &unknown);
		return unknown ? unknown.tryAs!IMarshal : null;
	}
}

final class GenericMarshaledHandler(T, Args...)
	: Marshaler!(GenericMarshaledHandler!(T, Args)), T, IAgileObject
{
extern (Windows):
	override HRESULT abi_Invoke(Args args)
	{
		cb(args);
		return S_OK;
	}

extern (D):
	this(void delegate(Args) cb)
	{
		this.cb = cb;
	}

	void delegate(Args) cb;
}

Handler handler(Handler, Args...)(void delegate(Args) cb)
		if (__traits(hasMember, Handler.init, "abi_Invoke"))
{
	return cast(Handler) new GenericMarshaledHandler!(Handler, Args)(cb);
}

auto yield(Async)(Async async)
{
	return suspend!(Fiber.yield, Async)(async);
}

auto sleep(Async)(Async async)
{
	return suspend!({ Thread.sleep(1.msecs); }, Async)(async);
}

auto suspend(alias waitFunc, Async)(Async async)
{
	//assert(!isSta);

	static if (is(Async == Windows.Foundation.IAsyncAction))
	{
		if (async.Status == AsyncStatus.Completed)
			return;
	}
	else
	{
		if (async.Status == AsyncStatus.Completed)
			return async.Results;
	}

	auto mutex = new Mutex;
	bool completed = false;

	import Windows.Foundation;

	static if (is(Async == Windows.Foundation.IAsyncAction))
		async.Completed = (Windows.Foundation.IAsyncAction result, AsyncStatus status) {
			synchronized (mutex)
				completed = true;
		}.handler!(Windows.Foundation.AsyncActionCompletedHandler);
	else static if (is(Async == IAsyncOperation!T, T))
		async.Completed = (Windows.Foundation.IAsyncOperation!T info, AsyncStatus status) {
			synchronized (mutex)
				completed = true;
		}.handler!(Windows.Foundation.AsyncOperationCompletedHandler!T);

	while (true)
	{
		synchronized (mutex)
			if (completed)
				break;
		waitFunc();
	}

	static if (is(Async == Windows.Foundation.IAsyncAction))
		async.abi_GetResults();
	else
		return async.Results;
}

void then(Async, Args...)(Async async, void delegate(Args) cb)
{
	import Windows.Foundation;

	if (async.Status == AsyncStatus.Completed)
	{
		static if (is(Async == Windows.Foundation.IAsyncAction))
			return cb();
		else
			return cb(async.Results);
	}
	static if (is(Async == Windows.Foundation.IAsyncAction))
		async.Completed = (Windows.Foundation.IAsyncAction result, AsyncStatus status) {
			cb();
		}.handler!(Windows.Foundation.AsyncActionCompletedHandler);
	else static if (is(Async == IAsyncOperation!T, T))
		async.Completed = (Windows.Foundation.IAsyncOperation!T info, AsyncStatus status) {
			cb(async.Results);
		}.handler!(Windows.Foundation.AsyncOperationCompletedHandler!T);
}

IAgileReference agileRef(T : IUnknown)(T obj)
{
	IAgileReference _ref;
	Debug.OK(RoGetAgileReference(AGILEREFERENCE_DEFAULT, uuidOfRt!T, obj, &_ref));
	return _ref;
}

struct AsyncRunner
{
	Fiber[] fibers;

	void run(alias func, Args...)(Args args)
	{
		fibers ~= new Fiber({ func(args); });
	}

	void run(void delegate() fn)
	{
		fibers ~= new Fiber(fn);
	}

	void run(Fiber fiber)
	{
		fibers ~= fiber;
	}

	void run(Async)(Async async)
	{
		fibers ~= new Fiber({ async.yield; });
	}

	void tick()
	{
		foreach (fiber; fibers)
			fiber.call();
	}

	void loop()
	{
		while (true)
			tick();
	}
}

__gshared AsyncRunner async;

@uuid("82ba7092-4c88-427d-a7bc-16dd93feb67e")
interface IRestrictedErrorInfo : IUnknown
{
extern (Windows):
	HRESULT GetErrorDetails(wchar** description, HRESULT* error,
			wchar** restrictedDescription, wchar** capabilitySid);
	HRESULT GetReference(wchar** reference);
}

hstring trim_hresult_message(const(wchar)* message, uint size)
{
	import std.ascii;

	const(wchar)* back = message + size - 1;

	while (size && isWhite(*back))
	{
		--size;
		--back;
	}

	hstring result;
	WindowsCreateString(message, size, result.ptr);
	return result;
}

@uuid("332c4426-26cb-11d0-b483-00c04fd90119")
interface IHTMLFramesCollection2 : IDispatch
{
extern (Windows):
	HRESULT abi_Item(VARIANT* pvarIndex, VARIANT* pvarResult);
	HRESULT get_Length(long* p);
}

@uuid("3050f38e-98b5-11cf-bb82-00aa00bdce0b")
interface IHTMLImageElementFactory : IDispatch
{
extern (Windows):
	HRESULT abi_Create(VARIANT width, VARIANT height,
			IHTMLImgElement* __MIDL__IHTMLImageElementFactory0000);
}

@uuid("3050f38c-98b5-11cf-bb82-00aa00bdce0b")
interface IHTMLOptionElementFactory : IDispatch
{
extern (Windows):
	HRESULT abi_Create(VARIANT text, VARIANT value, VARIANT defaultselected,
			VARIANT selected, IHTMLOptionElement* __MIDL__IHTMLOptionElementFactory0000);
}

@uuid("feceaaa2-8405-11cf-8ba1-00aa00476da6")
interface IOmHistory : IDispatch
{
extern (Windows):
	HRESULT get_length(short* p);
	HRESULT back(VARIANT* pvargdistance);
	HRESULT forward(VARIANT* pvargdistance);
	HRESULT go(VARIANT* pvargdistance);
}

@uuid("163bb1e0-6e00-11cf-837a-48dc04c10000")
interface IHTMLLocation : IDispatch
{
extern (Windows):
	/* TODO */
}

@uuid("feceaaa5-8405-11cf-8ba1-00aa00476da6")
interface IOmNavigator : IDispatch
{
extern (Windows):
	/* TODO */
}

@uuid("3050f240-98b5-11cf-bb82-00aa00bdce0b")
interface IHTMLImgElement : IDispatch
{
extern (Windows):
	/* TODO */
}

@uuid("3050f211-98b5-11cf-bb82-00aa00bdce0b")
interface IHTMLOptionElement : IDispatch
{
extern (Windows):
	/* TODO */
}

@uuid("626fc520-a41e-11cf-a731-00a0c9082637")
interface IHTMLDocument : IDispatch
{
extern (Windows):
	HRESULT get_Script(IDispatch* p);

};

@uuid("332c4425-26cb-11d0-b483-00c04fd90119")
interface IHTMLDocument2 : IHTMLDocument
{
extern (Windows):
	/* TODO */
}

@uuid("3050f32d-98b5-11cf-bb82-00aa00bdce0b")
interface IHTMLEventObj : IDispatch
{
extern (Windows):
	/* TODO */
}

@uuid("3050f35c-98b5-11cf-bb82-00aa00bdce0b")
interface IHTMLScreen : IDispatch
{
extern (Windows):
	/* TODO */
}

@uuid("332c4427-26cb-11d0-b483-00c04fd90119")
interface IHTMLWindow2 : IHTMLFramesCollection2
{
extern (Windows):
	HRESULT get_Frames(IHTMLFramesCollection2* p);
	HRESULT put_DefaultStatus(wchar* v);
	HRESULT get_DefaultStatus(wchar** p);
	HRESULT put_Status(wchar* v);
	HRESULT get_Status(wchar** p);
	HRESULT abi_SetTimeout(wchar* expression, long msec, VARIANT* language, long* timerID);
	HRESULT abi_ClearTimeout(long timerID);
	HRESULT abi_Alert(wchar* message = null);
	HRESULT abi_Confirm(wchar* message, VARIANT_BOOL* confirmed);
	HRESULT abi_Prompt(wchar* message, wchar* defstr, VARIANT* textdata);
	HRESULT get_Image(IHTMLImageElementFactory* p);
	HRESULT get_Location(IHTMLLocation* p);
	HRESULT get_History(IOmHistory* p);
	HRESULT abi_Close();
	HRESULT put_Opener(VARIANT v);
	HRESULT get_Opener(VARIANT* p);
	HRESULT get_Navigator(IOmNavigator* p);
	HRESULT put_Name(wchar* v);
	HRESULT get_Name(wchar** p);
	HRESULT get_Parent(IHTMLWindow2* p);
	HRESULT abi_Open(wchar* url, wchar* name, wchar* features,
			VARIANT_BOOL replace, IHTMLWindow2* pomWindowResult);
	HRESULT get_Self(IHTMLWindow2* p);
	HRESULT get_Top(IHTMLWindow2* p);
	HRESULT get_Window(IHTMLWindow2* p);
	HRESULT abi_Navigate(wchar* url);
	HRESULT put_OnFocus(VARIANT v);
	HRESULT get_OnFocus(VARIANT* p);
	HRESULT put_OnBlur(VARIANT v);
	HRESULT get_OnBlur(VARIANT* p);
	HRESULT put_OnLoad(VARIANT v);
	HRESULT get_OnLoad(VARIANT* p);
	HRESULT put_OnBeforeUnload(VARIANT v);
	HRESULT get_OnBeforeUnload(VARIANT* p);
	HRESULT put_OnUnload(VARIANT v);
	HRESULT get_OnUnload(VARIANT* p);
	HRESULT put_OnHelp(VARIANT v);
	HRESULT get_OnHelp(VARIANT* p);
	HRESULT put_OnError(VARIANT v);
	HRESULT get_OnError(VARIANT* p);
	HRESULT put_OnResize(VARIANT v);
	HRESULT get_OnResize(VARIANT* p);
	HRESULT put_OnScroll(VARIANT v);
	HRESULT get_OnScroll(VARIANT* p);
	HRESULT get_Document(IHTMLDocument2* p);
	HRESULT get_Event(IHTMLEventObj* p);
	HRESULT get__newEnum(IUnknown* p);
	HRESULT abi_showModalDialog(wchar* dialog, VARIANT* varArgIn,
			VARIANT* varOptions, VARIANT* varArgOut);
	HRESULT abi_ShowHelp(wchar* helpURL, VARIANT helpArg, wchar* features = null);
	HRESULT get_Screen(IHTMLScreen* p);
	HRESULT get_Option(IHTMLOptionElementFactory* p);
	HRESULT abi_Focus();
	HRESULT get_Closed(VARIANT_BOOL* p);
	HRESULT abi_Blur();
	HRESULT abi_Scroll(long x, long y);
	HRESULT get_ClientInformation(IOmNavigator* p);
	HRESULT abi_SetInterval(wchar* expression, long msec, VARIANT* language, long* timerID);
	HRESULT abi_ClearInterval(long timerID);
	HRESULT put_OffscreenBuffering(VARIANT v);
	HRESULT get_OffscreenBuffering(VARIANT* p);
	HRESULT abi_ExecScript(wchar* code, wchar* language, VARIANT* pvarRet);
	HRESULT abi_ToString(wchar** String);
	HRESULT abi_ScrollBy(long x, long y);
	HRESULT abi_ScrollTo(long x, long y);
	HRESULT abi_MoveTo(long x, long y);
	HRESULT abi_MoveBy(long x, long y);
	HRESULT abi_ResizeTo(long x, long y);
	HRESULT abi_ResizeBy(long x, long y);
	HRESULT get_External(IDispatch* p);
}

@uuid("eae1ba61-a4ed-11cf-8f20-00805f2cd064")
interface IActiveScriptError : IDispatch
{
extern (Windows):
	HRESULT GetExceptionInfo(EXCEPINFO* pexcepinfo);
	HRESULT GetSourcePosition(DWORD* pdwSourceContext, ULONG* pulLineNumber,
			LONG* plCharacterPosition);
	HRESULT GetSourceLineText(wchar** pbstrSourceLine);
}

@uuid("6d5140c1-7436-11ce-8034-00aa006009fa")
interface IServiceProvider : IUnknown
{
extern (Windows):
	HRESULT QueryService(REFGUID guidService, REFIID riid, void** ppvObject);
}

enum HResultEnum : HRESULT
{
	S_OK = 0x00000000,
	E_NOTIMPL = 0x80004001,
	E_NOINTERFACE = 0x80004002,
	E_POINTER = 0x80004003,
	E_ABORT = 0x80004004,
	E_FAIL = 0x80004005,
	E_UNEXPECTED = 0x8000FFFF,
	E_ACCESSDENIED = 0x80070005,
	E_HANDLE = 0x80070006,
	E_OUTOFMEMORY = 0x8007000E,
	E_INVALIDARG = 0x80070057,
}

class HResultException : Exception
{
	this(HRESULT hresult, string file = __FILE__, size_t line = __LINE__)
	{
		import std.conv;

		code = hresult;
		if (hresult == S_OK)
		{
			super("Nothing wrong (S_OK)", file, line);
			return;
		}

		RoOriginateError(hresult, null);
		GetRestrictedErrorInfo(&info);
		string error = "HRESULT Fail: ";
		wstring info = windowsMessage;
		if (info.length)
			error ~= info.to!string ~ " ";
		super(error ~ "Code " ~ (cast(HResultEnum) hresult)
				.to!string ~ " (0x" ~ hresult.to!string(16) ~ ")", file, line);
	}

	wstring windowsMessage()
	{
		import std.conv;
		import std.string;

		if (info)
		{
			HRESULT code;
			wchar* fallback, message, unused;
			if (info.GetErrorDetails(&fallback, &code, &message, &unused) == S_OK)
			{
				if (code == this.code)
				{
					if (message)
					{
						return trim_hresult_message(message, SysStringLen(message)).d_str;
					}
					else
					{
						return trim_hresult_message(fallback, SysStringLen(fallback)).d_str;
					}
				}
			}
		}

		wchar* message;
		auto len = FormatMessageW(
				FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
				null, code, MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
				cast(wchar*)&message, 0, null);
		wstring ret = message[0 .. len].strip.idup;
		LocalFree(message);
		return ret;
	}

	HRESULT code;
	IRestrictedErrorInfo info;
}

@uuid("4edb8ee2-96dd-49a7-94f7-4607ddab8e3c")
interface IGetActivationFactory : IInspectable
{
}

@uuid("94ea2b94-e9cc-49e0-c0ff-ee64ca8f5b90")
interface IAgileObject : IUnknown
{
}

GUID[] listUUIDs(T)()
{
	import std.algorithm : canFind;
	import std.traits : InterfacesTuple;
	import core.exception : AssertError;

	GUID[] arr;
	foreach (Base; InterfacesTuple!T)
	{
		auto uuid = uuidOfRt!Base;
		if (uuid != GUID.init && !arr.canFind(uuid))
			arr ~= uuid;
	}
	return arr;
}

class TComObject(T) : IUnknown
{
extern (Windows):
	HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		import std.traits;

		auto iid = *riid;
		Debug.WriteLine("QueryInterface %s", iid.guidToString);
		if (iid == IID_IUnknown)
		{
			*ppv = cast(void*) cast(IUnknown) this;
			AddRef();
			return S_OK;
		}
		foreach (Base; InterfacesTuple!T)
		{
			enum uuid = uuidOfRt!Base;
			if (uuid != GUID.init)
			{
				Debug.WriteLine("Base %s [%s] ?= %s", Base.stringof,
						uuid.guidToString, iid.guidToString);
				if (uuid == iid)
				{
					*ppv = cast(void*) cast(Base) this;
					AddRef();
					return S_OK;
				}
			}
		}
		*ppv = null;
		return E_NOINTERFACE;
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

class Inspectable(T) : TComObject!T, IInspectable
{
extern (Windows):
	HRESULT abi_GetIids(uint* iidCount, GUID** iids)
	{
		auto arr = listUUIDs!T;

		*iidCount = cast(uint) arr.length;
		*iids = cast(GUID*) arr.ptr;
		return S_OK;
	}

	HRESULT abi_GetRuntimeClassName(HSTRING* className)
	{
		import std.traits;

		*className = hstring(fullyQualifiedName!T).handle;
		return S_OK;
	}

	HRESULT abi_GetTrustLevel(TrustLevel* trustLevel)
	{
		*trustLevel = TrustLevel.BaseTrust;
		return S_OK;
	}
}

class TypedEvent(TSender, TArgs, Base = Windows.Foundation.TypedEventHandler!(TSender, TArgs))
	: ComObject, Base
{
	alias Callback = extern (Windows) void delegate(TSender, TArgs);

	extern (Windows)
	{
		override HRESULT abi_Invoke(TSender sender, TArgs args)
		{
			callback(sender, args);
			return S_OK;
		}
	}

	Callback callback;

	this(Callback callback)
	{
		this.callback = callback;
	}

	void opCall(TSender sender, TArgs args)
	{
		callback(sender, args);
	}
}

auto event(Base = Windows.Foundation.TypedEventHandler!(TSender, TArgs), TSender, TArgs, Fn)(Fn cb)
{
	return new TypedEvent!(TSender, TArgs, Base)((sender, args) {
		cb(sender, args);
	});
}

struct makable(Composable, Class, Interface)
{
}

auto make(T, Args...)(Args args)
{
	foreach (attr; __traits(getAttributes, T))
	{
		static if (is(attr : makable!(Composable, Class, Interface), Composable, Class, Interface))
		{
			T t = new T(args);
			Class inst;
			Debug.OK(activationFactory!(Class, Interface).abi_CreateInstance(t, &t.m_inner, &inst));
			return t.as!Composable;
		}
	}
}

enum bitflags;

public static import Windows.Foundation.Collections;

public static import Windows.Foundation.Numerics;

public static import Windows.Foundation;

public static import Windows.ApplicationModel.Activation;

public static import Windows.ApplicationModel.AppExtensions;

public static import Windows.ApplicationModel.Appointments.AppointmentsProvider;

public static import Windows.ApplicationModel.Appointments.DataProvider;

public static import Windows.ApplicationModel.Appointments;

public static import Windows.ApplicationModel.AppService;

public static import Windows.ApplicationModel.Background;

public static import Windows.ApplicationModel.Calls.Background;

public static import Windows.ApplicationModel.Calls;

public static import Windows.ApplicationModel.Chat;

public static import Windows.ApplicationModel.Contacts.DataProvider;

public static import Windows.ApplicationModel.Contacts;

public static import Windows.ApplicationModel.Contacts.Provider;

public static import Windows.ApplicationModel.Core;

public static import Windows.ApplicationModel.DataTransfer.DragDrop.Core;

public static import Windows.ApplicationModel.DataTransfer.DragDrop;

public static import Windows.ApplicationModel.DataTransfer;

public static import Windows.ApplicationModel.DataTransfer.ShareTarget;

public static import Windows.ApplicationModel.Email.DataProvider;

public static import Windows.ApplicationModel.Email;

public static import Windows.ApplicationModel.ExtendedExecution.Foreground;

public static import Windows.ApplicationModel.ExtendedExecution;

public static import Windows.ApplicationModel;

public static import Windows.ApplicationModel.LockScreen;

public static import Windows.ApplicationModel.Payments;

public static import Windows.ApplicationModel.Payments.Provider;

public static import Windows.ApplicationModel.Preview.Holographic;

public static import Windows.ApplicationModel.Preview.InkWorkspace;

public static import Windows.ApplicationModel.Preview.Notes;

public static import Windows.ApplicationModel.Resources.Core;

public static import Windows.ApplicationModel.Resources;

public static import Windows.ApplicationModel.Search;

public static import Windows.ApplicationModel.SocialInfo;

public static import Windows.ApplicationModel.SocialInfo.Provider;

public static import Windows.ApplicationModel.Store;

public static import Windows.ApplicationModel.Store.LicenseManagement;

public static import Windows.ApplicationModel.Store.Preview;

public static import Windows.ApplicationModel.UserDataAccounts;

public static import Windows.ApplicationModel.UserDataAccounts.Provider;

public static import Windows.ApplicationModel.UserDataAccounts.SystemAccess;

public static import Windows.ApplicationModel.UserDataTasks.DataProvider;

public static import Windows.ApplicationModel.UserDataTasks;

public static import Windows.ApplicationModel.VoiceCommands;

public static import Windows.ApplicationModel.Wallet;

public static import Windows.ApplicationModel.Wallet.System;

public static import Windows.Data.Html;

public static import Windows.Data.Json;

public static import Windows.Data.Pdf;

public static import Windows.Data.Text;

public static import Windows.Data.Xml.Dom;

public static import Windows.Data.Xml.Xsl;

public static import Windows.Devices.Adc;

public static import Windows.Devices.Adc.Provider;

public static import Windows.Devices.AllJoyn;

public static import Windows.Devices.Background;

public static import Windows.Devices.Bluetooth.Advertisement;

public static import Windows.Devices.Bluetooth.Background;

public static import Windows.Devices.Bluetooth.GenericAttributeProfile;

public static import Windows.Devices.Bluetooth;

public static import Windows.Devices.Bluetooth.Rfcomm;

public static import Windows.Devices.Custom;

public static import Windows.Devices.Enumeration;

public static import Windows.Devices.Enumeration.Pnp;

public static import Windows.Devices.Geolocation.Geofencing;

public static import Windows.Devices.Geolocation;

public static import Windows.Devices.Gpio;

public static import Windows.Devices.Gpio.Provider;

public static import Windows.Devices.Haptics;

public static import Windows.Devices.HumanInterfaceDevice;

public static import Windows.Devices.I2c;

public static import Windows.Devices.I2c.Provider;

public static import Windows.Devices;

public static import Windows.Devices.Input;

public static import Windows.Devices.Lights;

public static import Windows.Devices.Midi;

public static import Windows.Devices.Perception;

public static import Windows.Devices.Perception.Provider;

public static import Windows.Devices.PointOfService;

public static import Windows.Devices.Portable;

public static import Windows.Devices.Power;

public static import Windows.Devices.Printers.Extensions;

public static import Windows.Devices.Printers;

public static import Windows.Devices.Pwm;

public static import Windows.Devices.Pwm.Provider;

public static import Windows.Devices.Radios;

public static import Windows.Devices.Scanners;

public static import Windows.Devices.Sensors.Custom;

public static import Windows.Devices.Sensors;

public static import Windows.Devices.SerialCommunication;

public static import Windows.Devices.SmartCards;

public static import Windows.Devices.Sms;

public static import Windows.Devices.Spi;

public static import Windows.Devices.Spi.Provider;

public static import Windows.Devices.Usb;

public static import Windows.Devices.WiFi;

public static import Windows.Devices.WiFiDirect;

public static import Windows.Devices.WiFiDirect.Services;

public static import Windows.Foundation.Diagnostics;

public static import Windows.Foundation.Metadata;

public static import Windows.Gaming.Input.Custom;

public static import Windows.Gaming.Input.ForceFeedback;

public static import Windows.Gaming.Input;

public static import Windows.Gaming.Input.Preview;

public static import Windows.Gaming.Preview.GamesEnumeration;

public static import Windows.Gaming.UI;

public static import Windows.Globalization.Collation;

public static import Windows.Globalization.DateTimeFormatting;

public static import Windows.Globalization.Fonts;

public static import Windows.Globalization;

public static import Windows.Globalization.NumberFormatting;

public static import Windows.Globalization.PhoneNumberFormatting;

public static import Windows.Graphics.DirectX.Direct3D11;

public static import Windows.Graphics.DirectX;

public static import Windows.Graphics.Display.Core;

public static import Windows.Graphics.Display;

public static import Windows.Graphics.Effects;

public static import Windows.Graphics.Holographic;

public static import Windows.Graphics.Imaging;

public static import Windows.Graphics.Printing;

public static import Windows.Graphics.Printing.OptionDetails;

public static import Windows.Graphics.Printing3D;

public static import Windows.Graphics;

public static import Windows.Management.Core;

public static import Windows.Management.Deployment;

public static import Windows.Management.Deployment.Preview;

public static import Windows.Management;

public static import Windows.Management.Policies;

public static import Windows.Management.Workplace;

public static import Windows.Media.Audio;

public static import Windows.Media.Capture.Core;

public static import Windows.Media.Capture.Frames;

public static import Windows.Media.Capture;

public static import Windows.Media.Casting;

public static import Windows.Media.ClosedCaptioning;

public static import Windows.Media.ContentRestrictions;

public static import Windows.Media.Core;

public static import Windows.Media.Core.Preview;

public static import Windows.Media.Devices.Core;

public static import Windows.Media.Devices;

public static import Windows.Media.DialProtocol;

public static import Windows.Media.Editing;

public static import Windows.Media.Effects;

public static import Windows.Media.FaceAnalysis;

public static import Windows.Media;

public static import Windows.Media.Import;

public static import Windows.Media.MediaProperties;

public static import Windows.Media.Ocr;

public static import Windows.Media.Playback;

public static import Windows.Media.Playlists;

public static import Windows.Media.PlayTo;

public static import Windows.Media.Protection;

public static import Windows.Media.Protection.PlayReady;

public static import Windows.Media.Render;

public static import Windows.Media.SpeechRecognition;

public static import Windows.Media.SpeechSynthesis;

public static import Windows.Media.Streaming.Adaptive;

public static import Windows.Media.Transcoding;

public static import Windows.Networking.BackgroundTransfer;

public static import Windows.Networking.Connectivity;

public static import Windows.Networking;

public static import Windows.Networking.NetworkOperators;

public static import Windows.Networking.Proximity;

public static import Windows.Networking.PushNotifications;

public static import Windows.Networking.ServiceDiscovery.Dnssd;

public static import Windows.Networking.Sockets;

public static import Windows.Networking.Vpn;

public static import Windows.Perception.Automation.Core;

public static import Windows.Perception;

public static import Windows.Perception.People;

public static import Windows.Perception.Spatial;

public static import Windows.Perception.Spatial.Surfaces;

public static import Windows.Security.Authentication.Identity.Core;

public static import Windows.Security.Authentication.Identity;

public static import Windows.Security.Authentication.Identity.Provider;

public static import Windows.Security.Authentication.OnlineId;

public static import Windows.Security.Authentication.Web.Core;

public static import Windows.Security.Authentication.Web;

public static import Windows.Security.Authentication.Web.Provider;

public static import Windows.Security.Credentials;

public static import Windows.Security.Credentials.UI;

public static import Windows.Security.Cryptography.Certificates;

public static import Windows.Security.Cryptography.Core;

public static import Windows.Security.Cryptography.DataProtection;

public static import Windows.Security.Cryptography;

public static import Windows.Security.EnterpriseData;

public static import Windows.Security.ExchangeActiveSyncProvisioning;

public static import Windows.Services.Cortana;

public static import Windows.Services.Maps.Guidance;

public static import Windows.Services.Maps;

public static import Windows.Services.Maps.LocalSearch;

public static import Windows.Services.Maps.OfflineMaps;

public static import Windows.Services.Store;

public static import Windows.Storage.AccessCache;

public static import Windows.Storage.BulkAccess;

public static import Windows.Storage.Compression;

public static import Windows.Storage.FileProperties;

public static import Windows.Storage;

public static import Windows.Storage.Pickers;

public static import Windows.Storage.Pickers.Provider;

public static import Windows.Storage.Provider;

public static import Windows.Storage.Search;

public static import Windows.Storage.Streams;

public static import Windows.System.Diagnostics.DevicePortal;

public static import Windows.System.Diagnostics;

public static import Windows.System.Diagnostics.Telemetry;

public static import Windows.System.Diagnostics.TraceReporting;

public static import Windows.System.Display;

public static import Windows.System;

public static import Windows.System.Power.Diagnostics;

public static import Windows.System.Power;

public static import Windows.System.Profile;

public static import Windows.System.Profile.SystemManufacturers;

public static import Windows.System.RemoteDesktop;

public static import Windows.System.RemoteSystems;

public static import Windows.System.Threading.Core;

public static import Windows.System.Threading;

public static import Windows.System.UserProfile;

public static import Windows.UI.ApplicationSettings;

public static import Windows.UI.Composition.Effects;

public static import Windows.UI.Composition;

public static import Windows.UI.Composition.Interactions;

public static import Windows.UI.Core.AnimationMetrics;

public static import Windows.UI.Core;

public static import Windows.UI.Core.Preview;

public static import Windows.UI;

public static import Windows.UI.Input.Core;

public static import Windows.UI.Input;

public static import Windows.UI.Input.Inking.Analysis;

public static import Windows.UI.Input.Inking.Core;

public static import Windows.UI.Input.Inking;

public static import Windows.UI.Input.Preview.Injection;

public static import Windows.UI.Input.Spatial;

public static import Windows.UI.Notifications;

public static import Windows.UI.Notifications.Management;

public static import Windows.UI.Popups;

public static import Windows.UI.StartScreen;

public static import Windows.UI.Text.Core;

public static import Windows.UI.Text;

public static import Windows.UI.ViewManagement;

public static import Windows.UI.WebUI;

public static import Windows.UI.Xaml.Automation;

public static import Windows.UI.Xaml.Automation.Peers;

public static import Windows.UI.Xaml.Automation.Provider;

public static import Windows.UI.Xaml.Automation.Text;

public static import Windows.UI.Xaml.Controls;

public static import Windows.UI.Xaml.Controls.Maps;

public static import Windows.UI.Xaml.Controls.Primitives;

public static import Windows.UI.Xaml.Data;

public static import Windows.UI.Xaml.Documents;

public static import Windows.UI.Xaml.Hosting;

public static import Windows.UI.Xaml;

public static import Windows.UI.Xaml.Input;

public static import Windows.UI.Xaml.Interop;

public static import Windows.UI.Xaml.Markup;

public static import Windows.UI.Xaml.Media.Animation;

public static import Windows.UI.Xaml.Media;

public static import Windows.UI.Xaml.Media.Imaging;

public static import Windows.UI.Xaml.Media.Media3D;

public static import Windows.UI.Xaml.Navigation;

public static import Windows.UI.Xaml.Printing;

public static import Windows.UI.Xaml.Resources;

public static import Windows.UI.Xaml.Shapes;

public static import Windows.Web.AtomPub;

public static import Windows.Web.Http.Diagnostics;

public static import Windows.Web.Http.Filters;

public static import Windows.Web.Http.Headers;

public static import Windows.Web.Http;

public static import Windows.Web;

public static import Windows.Web.Syndication;
