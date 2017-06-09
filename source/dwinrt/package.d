module dwinrt;

public import core.sys.windows.windows;
public import dwinrt.winstring;

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

	static void OK(HRESULT hr, string file = __FILE__, int line = __LINE__, string func = __PRETTY_FUNCTION__) nothrow
	{
		if (hr != S_OK)
		{
			WriteLine("HRESULT fail in %s:%s in function %s", file, line, func);
			throw new Error("HRESULT fail " ~ file);
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

bool embedded_null(HSTRING value) nothrow
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

	void clear() nothrow
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
	HRESULT abi_GetIids(uint* iidCount, GUID** iids);
	HRESULT abi_GetRuntimeClassName(HSTRING* className);
	HRESULT abi_GetTrustLevel(TrustLevel* trustLevel);
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
	auto id = uuidOf!T;
	auto result = RoGetActivationFactory(hstring(factoryNameOf!T).handle, id, cast(void**)&p);
	Debug.OK(result);
	return p;
}

Interface factory(Class : IUnknown, Interface : IUnknown)()
{
	Interface factory;
	auto id = uuidOf!Interface;
	auto result = RoGetActivationFactory(hstring(winrtNameOf!Class).handle,
			id, cast(void**)&factory);
	Debug.OK(result);
	return factory;
}

auto tryAs(U : IUnknown, T : IUnknown)(T base)
{
	U tmp = null;
	auto id = uuidOf!U;
	base.QueryInterface(&id, cast(void**)&tmp);
	return tmp;
}

Interface activationFactory(Class : IUnknown, Interface : IUnknown = IActivationFactory)()
{
	return factory!(Class, Interface);
}

T activate(T : IUnknown)()
{
	T f;
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

@uuid("4edb8ee2-96dd-49a7-94f7-4607ddab8e3c")
interface IGetActivationFactory : IInspectable
{
}

@uuid("94ea2b94-e9cc-49e0-c0ff-ee64ca8f5b90")
interface IAgileObject : IUnknown
{
}

class Inspectable(T) : IInspectable
{
extern (Windows):
	HRESULT abi_GetIids(uint* iidCount, GUID** iids)
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
