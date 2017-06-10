module Windows.Foundation.Collections;

import dwinrt;

interface MapChangedEventHandler(TKey, TValue) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IObservableMap!(TKey, TValue) sender, IMapChangedEventArgs!(TKey) args);
}

interface VectorChangedEventHandler(Type) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IObservableVector!(Type) sender, IVectorChangedEventArgs args);
}

interface IIterator(Type) : IInspectable
{
extern(Windows):
	HRESULT get_Current(Type* return_current);
	HRESULT get_HasCurrent(bool* return_hasCurrent);
	HRESULT abi_MoveNext(bool* out_hasCurrent);
	HRESULT abi_GetMany(uint capacity, Type* value, uint* actual);
}

interface IIterable(Type) : IInspectable
{
extern(Windows):
	HRESULT abi_First(IIterator!(Type)* out_first);
}

interface IKeyValuePair(TKey, TValue) : IInspectable
{
extern(Windows):
	HRESULT get_Key(TKey* return_key);
	HRESULT get_Value(TValue* return_value);
}

interface IVectorView(Type) : IInspectable
{
extern(Windows):
	HRESULT abi_GetAt(uint index, Type* out_item);
	HRESULT get_Size(uint* return_size);
	HRESULT get_IndexOf(Type value, uint* return_index, bool* out_found);
	HRESULT abi_GetMany(uint startIndex, uint capacity, Type* out_value, uint* out_actual);
}

interface IVector(Type) : IInspectable
{
extern(Windows):
	HRESULT get_GetAt(uint index, Type* return_item);
	HRESULT get_Size(uint* return_size);
	HRESULT abi_GetView(IVectorView!(Type)* out_view);
	HRESULT get_IndexOf(Type value, uint* return_index, bool* out_found);
	HRESULT abi_SetAt(uint index, Type item);
	HRESULT abi_InsertAt(uint index, Type item);
	HRESULT abi_RemoveAt(uint index);
	HRESULT abi_Append(Type item);
	HRESULT abi_RemoveAtEnd();
	HRESULT abi_Clear();
	HRESULT abi_GetMany(uint startIndex, uint capacity, Type* out_value, uint* out_actual);
	HRESULT abi_ReplaceAll(uint count, Type* out_value);
}

interface IMapView(TKey, TValue) : IInspectable
{
extern(Windows):
	HRESULT abi_Lookup(TKey key, TValue* return_value);
	HRESULT get_Size(uint* return_size);
	HRESULT abi_HasKey(TKey key, bool* return_found);
	HRESULT abi_Split(IMapView!(TKey, TValue) out_firstPartition, IMapView!(TKey, TValue) out_secondPartition);
}

interface IMap(TKey, TValue) : IInspectable
{
extern(Windows):
	HRESULT abi_Lookup(TKey key, TValue* return_value);
	HRESULT get_Size(uint* return_size);
	HRESULT abi_HasKey(TKey key, bool* return_found);
	HRESULT abi_GetView(IMapView!(TKey, TValue)* return_view);
	HRESULT abi_Insert(TKey key, TValue value, bool* return_replaced);
	HRESULT abi_Remove(TKey key);
	HRESULT abi_Clear();
}

interface IMapChangedEventArgs(TKey) : IInspectable
{
extern(Windows):
	HRESULT get_CollectionChange(Windows.Foundation.Collections.CollectionChange* out_value);
	HRESULT get_Key(TKey* out_value);
}

interface IObservableMap(TKey, TValue) : IInspectable
{
extern(Windows):
	HRESULT add_MapChanged(MapChangedEventHandler!(TKey, TValue) handler, EventRegistrationToken* return_token);
	HRESULT remove_MapChanged(EventRegistrationToken token);
}

interface IObservableVector(Type) : IInspectable
{
extern(Windows):
	HRESULT add_VectorChanged(VectorChangedEventHandler!(Type) handler, EventRegistrationToken* return_token);
	HRESULT remove_VectorChanged(EventRegistrationToken token);
}

@uuid("575933df-34fe-4480-af15-07691f3d5d9b")
interface IVectorChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_CollectionChange(CollectionChange* return_value);
	HRESULT get_Index(uint* return_value);
}

@uuid("8a43ed9f-f4e6-4421-acf9-1dab2986820c")
interface IPropertySet : IInspectable
{
}

interface PropertySet : Windows.Foundation.Collections.IPropertySet, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))
{
}

interface StringMap : Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)), Windows.Foundation.Collections.IObservableMap!(HSTRING, HSTRING)
{
}

interface ValueSet : Windows.Foundation.Collections.IPropertySet, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))
{
}

enum CollectionChange
{
	Reset,
	ItemInserted,
	ItemRemoved,
	ItemChanged
}