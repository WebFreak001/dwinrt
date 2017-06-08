module Windows.Devices.Enumeration.Pnp;

import dwinrt;

@uuid("95c66258-733b-4a8f-93a3-db078ac870c1")
@WinrtFactory("Windows.Devices.Enumeration.Pnp.PnpObject")
interface IPnpObject : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Type(Windows.Devices.Enumeration.Pnp.PnpObjectType* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, IInspectable)* return_value);
}

@uuid("83c95ca8-4772-4a7a-aca8-e48c42a89c44")
@WinrtFactory("Windows.Devices.Enumeration.Pnp.PnpObjectWatcher")
interface IPnpObjectWatcher : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
}

interface PnpObjectCollection : Windows.Foundation.Collections.IVectorView!(Windows.Devices.Enumeration.Pnp.PnpObject), Windows.Foundation.Collections.IIterable!(Windows.Devices.Enumeration.Pnp.PnpObject)
{
}

interface PnpObjectUpdate : Windows.Devices.Enumeration.Pnp.IPnpObjectUpdate
{
}

interface PnpObjectWatcher : Windows.Devices.Enumeration.Pnp.IPnpObjectWatcher
{
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