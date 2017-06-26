module Windows.Devices.Enumeration.Pnp;

import dwinrt;

@uuid("95c66258-733b-4a8f-93a3-db078ac870c1")
@WinrtFactory("Windows.Devices.Enumeration.Pnp.PnpObject")
interface IPnpObject : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.Devices.Enumeration.Pnp.PnpObjectType* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
	HRESULT abi_Update(Windows.Devices.Enumeration.Pnp.PnpObjectUpdate updateInfo);
}

@uuid("b3c32a3d-d168-4660-bbf3-a733b14b6e01")
@WinrtFactory("Windows.Devices.Enumeration.Pnp.PnpObject")
interface IPnpObjectStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromIdAsync(Windows.Devices.Enumeration.Pnp.PnpObjectType type, HSTRING id, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObject)* return_asyncOp);
	HRESULT abi_FindAllAsync(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObjectCollection)* return_asyncOp);
	HRESULT abi_FindAllAsyncAqsFilter(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties, HSTRING aqsFilter, Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObjectCollection)* return_asyncOp);
	HRESULT abi_CreateWatcher(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties, Windows.Devices.Enumeration.Pnp.PnpObjectWatcher* return_watcher);
	HRESULT abi_CreateWatcherAqsFilter(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties, HSTRING aqsFilter, Windows.Devices.Enumeration.Pnp.PnpObjectWatcher* return_watcher);
}

@uuid("6f59e812-001e-4844-bcc6-432886856a17")
@WinrtFactory("Windows.Devices.Enumeration.Pnp.PnpObjectUpdate")
interface IPnpObjectUpdate : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.Devices.Enumeration.Pnp.PnpObjectType* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44")
@WinrtFactory("Windows.Devices.Enumeration.Pnp.PnpObjectWatcher")
interface IPnpObjectWatcher : IInspectable
{
extern(Windows):
	HRESULT add_Added(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObject) handler, EventRegistrationToken* return_token);
	HRESULT remove_Added(EventRegistrationToken token);
	HRESULT add_Updated(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate) handler, EventRegistrationToken* return_token);
	HRESULT remove_Updated(EventRegistrationToken token);
	HRESULT add_Removed(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate) handler, EventRegistrationToken* return_token);
	HRESULT remove_Removed(EventRegistrationToken token);
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_EnumerationCompleted(EventRegistrationToken token);
	HRESULT add_Stopped(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Stopped(EventRegistrationToken token);
	HRESULT get_Status(Windows.Devices.Enumeration.DeviceWatcherStatus* return_status);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

interface PnpObject : Windows.Devices.Enumeration.Pnp.IPnpObject
{
extern(Windows):
	final Windows.Devices.Enumeration.Pnp.PnpObjectType Type()
	{
		Windows.Devices.Enumeration.Pnp.PnpObjectType _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObject).get_Type(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObject).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObject).get_Properties(&_ret));
		return _ret;
	}
	final void Update(Windows.Devices.Enumeration.Pnp.PnpObjectUpdate updateInfo)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObject).abi_Update(updateInfo));
	}

	private static Windows.Devices.Enumeration.Pnp.IPnpObjectStatics _staticInstance;
	public static Windows.Devices.Enumeration.Pnp.IPnpObjectStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Enumeration.Pnp.IPnpObjectStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObject) CreateFromIdAsync(Windows.Devices.Enumeration.Pnp.PnpObjectType type, HSTRING id, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObject) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectStatics).abi_CreateFromIdAsync(type, id, requestedProperties, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObjectCollection) FindAllAsync(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObjectCollection) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectStatics).abi_FindAllAsync(type, requestedProperties, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObjectCollection) FindAllAsyncAqsFilter(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties, HSTRING aqsFilter)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObjectCollection) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectStatics).abi_FindAllAsyncAqsFilter(type, requestedProperties, aqsFilter, &_ret));
		return _ret;
	}
	static Windows.Devices.Enumeration.Pnp.PnpObjectWatcher CreateWatcher(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties)
	{
		Windows.Devices.Enumeration.Pnp.PnpObjectWatcher _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectStatics).abi_CreateWatcher(type, requestedProperties, &_ret));
		return _ret;
	}
	static Windows.Devices.Enumeration.Pnp.PnpObjectWatcher CreateWatcherAqsFilter(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties, HSTRING aqsFilter)
	{
		Windows.Devices.Enumeration.Pnp.PnpObjectWatcher _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectStatics).abi_CreateWatcherAqsFilter(type, requestedProperties, aqsFilter, &_ret));
		return _ret;
	}
}

interface PnpObjectCollection : Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject), Windows.Foundation.Collections.IIterable!(Windows.Devices.Enumeration.Pnp.PnpObject)
{
extern(Windows):
	final void GetAt(uint index, Windows.Devices.Enumeration.Pnp.PnpObject* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Devices.Enumeration.Pnp.PnpObject value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Devices.Enumeration.Pnp.PnpObject* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Devices.Enumeration.Pnp.PnpObject)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Devices.Enumeration.Pnp.PnpObject)).abi_First(out_first));
	}
}

interface PnpObjectUpdate : Windows.Devices.Enumeration.Pnp.IPnpObjectUpdate
{
extern(Windows):
	final Windows.Devices.Enumeration.Pnp.PnpObjectType Type()
	{
		Windows.Devices.Enumeration.Pnp.PnpObjectType _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectUpdate).get_Type(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectUpdate).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectUpdate).get_Properties(&_ret));
		return _ret;
	}
}

interface PnpObjectWatcher : Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher
{
extern(Windows):
	final EventRegistrationToken OnAdded(void delegate(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObject) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).add_Added(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObject), Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObject)(fn), &tok));
		return tok;
	}
	final void removeAdded(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).remove_Added(token));
	}
	final EventRegistrationToken OnUpdated(void delegate(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).add_Updated(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate), Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate)(fn), &tok));
		return tok;
	}
	final void removeUpdated(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).remove_Updated(token));
	}
	final EventRegistrationToken OnRemoved(void delegate(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).add_Removed(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate), Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate)(fn), &tok));
		return tok;
	}
	final void removeRemoved(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).remove_Removed(token));
	}
	final EventRegistrationToken OnEnumerationCompleted(void delegate(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).add_EnumerationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable), Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeEnumerationCompleted(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).remove_EnumerationCompleted(token));
	}
	final EventRegistrationToken OnStopped(void delegate(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).add_Stopped(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable), Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStopped(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).remove_Stopped(token));
	}
	final Windows.Devices.Enumeration.DeviceWatcherStatus Status()
	{
		Windows.Devices.Enumeration.DeviceWatcherStatus _ret;
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).get_Status(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher).abi_Stop());
	}
}

enum PnpObjectType
{
	Unknown = 0,
	DeviceInterface = 1,
	DeviceContainer = 2,
	Device = 3,
	DeviceInterfaceClass = 4,
	AssociationEndpoint = 5,
	AssociationEndpointContainer = 6,
	AssociationEndpointService = 7
}