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
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObject)this.asInterface(uuid("95c66258-733b-4a8f-93a3-db078ac870c1"))).get_Type(&_ret));
		return _ret;
	}
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObject)this.asInterface(uuid("95c66258-733b-4a8f-93a3-db078ac870c1"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObject)this.asInterface(uuid("95c66258-733b-4a8f-93a3-db078ac870c1"))).get_Properties(&_ret));
		return _ret;
	}
	final void Update(Windows.Devices.Enumeration.Pnp.PnpObjectUpdate updateInfo)
	{
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObject)this.asInterface(uuid("95c66258-733b-4a8f-93a3-db078ac870c1"))).abi_Update(updateInfo));
	}

	private static Windows.Devices.Enumeration.Pnp.IPnpObjectStatics _staticInstance;
	public static Windows.Devices.Enumeration.Pnp.IPnpObjectStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Enumeration.Pnp.IPnpObjectStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObject) CreateFromIdAsync(Windows.Devices.Enumeration.Pnp.PnpObjectType type, wstring id, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObject) _ret;
		Debug.OK(staticInstance.abi_CreateFromIdAsync(type, hstring(id).handle, requestedProperties, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObjectCollection) FindAllAsync(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObjectCollection) _ret;
		Debug.OK(staticInstance.abi_FindAllAsync(type, requestedProperties, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObjectCollection) FindAllAsyncAqsFilter(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties, wstring aqsFilter)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Enumeration.Pnp.PnpObjectCollection) _ret;
		Debug.OK(staticInstance.abi_FindAllAsyncAqsFilter(type, requestedProperties, hstring(aqsFilter).handle, &_ret));
		return _ret;
	}
	alias FindAllAsync = FindAllAsyncAqsFilter;
	static Windows.Devices.Enumeration.Pnp.PnpObjectWatcher CreateWatcher(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties)
	{
		Windows.Devices.Enumeration.Pnp.PnpObjectWatcher _ret;
		Debug.OK(staticInstance.abi_CreateWatcher(type, requestedProperties, &_ret));
		return _ret;
	}
	static Windows.Devices.Enumeration.Pnp.PnpObjectWatcher CreateWatcherAqsFilter(Windows.Devices.Enumeration.Pnp.PnpObjectType type, Windows.Foundation.Collections.IIterable!(HSTRING) requestedProperties, wstring aqsFilter)
	{
		Windows.Devices.Enumeration.Pnp.PnpObjectWatcher _ret;
		Debug.OK(staticInstance.abi_CreateWatcherAqsFilter(type, requestedProperties, hstring(aqsFilter).handle, &_ret));
		return _ret;
	}
	alias CreateWatcher = CreateWatcherAqsFilter;
}

interface PnpObjectCollection : Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject), Windows.Foundation.Collections.IIterable!(Windows.Devices.Enumeration.Pnp.PnpObject)
{
extern(Windows):
	final void GetAt(uint index, Windows.Devices.Enumeration.Pnp.PnpObject* out_item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject))this).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject))this).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Devices.Enumeration.Pnp.PnpObject value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Devices.Enumeration.Pnp.PnpObject* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Devices.Enumeration.Pnp.PnpObject)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Devices.Enumeration.Pnp.PnpObject))this).abi_First(out_first));
	}
}

interface PnpObjectUpdate : Windows.Devices.Enumeration.Pnp.IPnpObjectUpdate
{
extern(Windows):
	final Windows.Devices.Enumeration.Pnp.PnpObjectType Type()
	{
		Windows.Devices.Enumeration.Pnp.PnpObjectType _ret;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectUpdate)this.asInterface(uuid("6f59e812-001e-4844-bcc6-432886856a17"))).get_Type(&_ret));
		return _ret;
	}
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectUpdate)this.asInterface(uuid("6f59e812-001e-4844-bcc6-432886856a17"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable) _ret;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectUpdate)this.asInterface(uuid("6f59e812-001e-4844-bcc6-432886856a17"))).get_Properties(&_ret));
		return _ret;
	}
}

interface PnpObjectWatcher : Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher
{
extern(Windows):
	final EventRegistrationToken OnAdded(void delegate(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObject) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).add_Added(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObject), Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObject)(fn), &tok));
		return tok;
	}
	final void removeAdded(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).remove_Added(token));
	}
	final EventRegistrationToken OnUpdated(void delegate(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).add_Updated(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate), Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate)(fn), &tok));
		return tok;
	}
	final void removeUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).remove_Updated(token));
	}
	final EventRegistrationToken OnRemoved(void delegate(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).add_Removed(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate), Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, Windows.Devices.Enumeration.Pnp.PnpObjectUpdate)(fn), &tok));
		return tok;
	}
	final void removeRemoved(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).remove_Removed(token));
	}
	final EventRegistrationToken OnEnumerationCompleted(void delegate(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).add_EnumerationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable), Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeEnumerationCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).remove_EnumerationCompleted(token));
	}
	final EventRegistrationToken OnStopped(void delegate(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).add_Stopped(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable), Windows.Devices.Enumeration.Pnp.PnpObjectWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeStopped(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).remove_Stopped(token));
	}
	final Windows.Devices.Enumeration.DeviceWatcherStatus Status()
	{
		Windows.Devices.Enumeration.DeviceWatcherStatus _ret;
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).get_Status(&_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).abi_Start());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher)this.asInterface(uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44"))).abi_Stop());
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