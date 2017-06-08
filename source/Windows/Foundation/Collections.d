module Windows.Foundation.Collections;

import dwinrt;

@uuid("575933df-34fe-4480-af15-07691f3d5d9b")
interface IVectorChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface MapChangedEventHandler(K, V) : IUnknown
{
extern (Windows):
	HRESULT abi_Invoke(IObservableMap!(K, V)* sender, IMapChangedEventArgs!K* args);
}

interface VectorChangedEventHandler(T) : IUnknown
{
extern (Windows):
	HRESULT abi_Invoke(IObservableVector!T* sender, IVectorChangedEventArgs* args);
}

interface IIterator(T) : IInspectable
{
extern (Windows):
	HRESULT get_Current(T* current);
	HRESULT get_HasCurrent(bool* hasCurrent);
	HRESULT abi_MoveNext(bool* hasCurrent);
	HRESULT abi_GetMany(uint capacity, T* value, uint* actual);
}

interface IIterable(T) : IInspectable
{
extern (Windows):
	HRESULT abi_First(IIterator!T* first);
}

interface IKeyValuePair(K, V) : IInspectable
{
extern (Windows):
	HRESULT get_Key(K* key);
	HRESULT get_Value(V* value);
}

interface IVectorView(T) : IInspectable
{
extern (Windows):
	HRESULT abi_GetAt(uint index, T* item);
	HRESULT get_Size(uint* size);
	HRESULT abi_IndexOf(T value, uint* index, bool* found);
	HRESULT abi_GetMany(uint startIndex, uint capacity, T* value, uint* actual);
}

interface IVector(T) : IInspectable
{
extern (Windows):
	HRESULT abi_GetAt(uint index, T* item);
	HRESULT get_Size(uint* size);
	HRESULT abi_GetView(IVectorView!T* view);
	HRESULT abi_IndexOf(T value, uint* index, bool* found);
	HRESULT abi_SetAt(uint index, T item);
	HRESULT abi_InsertAt(uint index, T item);
	HRESULT abi_RemoveAt(uint index);
	HRESULT abi_Append(T item);
	HRESULT abi_RemoveAtEnd();
	HRESULT abi_Clear();
	HRESULT abi_GetMany(uint startIndex, uint capacity, T* value, uint* actual);
	HRESULT abi_ReplaceAll(uint count, T* value);
}

interface IMapView(K, V) : IInspectable
{
extern (Windows):
	HRESULT abi_Lookup(K key, V* value);
	HRESULT get_Size(uint* size);
	HRESULT abi_HasKey(K key, bool* found);
	HRESULT abi_Split(IMapView!(K, V)* firstPartition, IMapView!(K, V)* secondPartition);
}

interface IMap(K, V) : IInspectable
{
extern (Windows):
	HRESULT abi_Lookup(K key, V* value);
	HRESULT get_Size(uint* size);
	HRESULT abi_HasKey(K key, bool* found);
	HRESULT abi_GetView(IMapView!(K, V)* view);
	HRESULT abi_Insert(K key, V value, bool* replaced);
	HRESULT abi_Remove(K key);
	HRESULT abi_Clear();
}

interface IMapChangedEventArgs(K) : IInspectable
{
extern (Windows):
	HRESULT get_CollectionChange(Windows.Foundation.Collections.CollectionChange* value);
	HRESULT get_Key(K* value);
}

interface IObservableMap(K, V) : IInspectable
{
extern (Windows):
	HRESULT add_MapChanged(MapChangedEventHandler!(K, V) handler, EventRegistrationToken* token);
	HRESULT remove_MapChanged(EventRegistrationToken token);
}

interface IObservableVector(T) : IInspectable
{
extern (Windows):
	HRESULT add_VectorChanged(VectorChangedEventHandler!T handler, EventRegistrationToken* token);
	HRESULT remove_VectorChanged(EventRegistrationToken token);
}
