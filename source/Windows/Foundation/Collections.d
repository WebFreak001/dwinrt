module Windows.Foundation.Collections;

import dwinrt;

interface MapChangedEventHandler(TKey, TValue) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.Collections.IObservableMap!(TKey, TValue) sender, Windows.Foundation.Collections.IMapChangedEventArgs!(TKey) args);
}

interface VectorChangedEventHandler(Type) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.Collections.IObservableVector!(Type) sender, Windows.Foundation.Collections.IVectorChangedEventArgs args);
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
	HRESULT abi_First(Windows.Foundation.Collections.IIterator!(Type)* out_first);
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
	HRESULT abi_GetView(Windows.Foundation.Collections.IVectorView!(Type)* out_view);
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
	HRESULT abi_Split(Windows.Foundation.Collections.IMapView!(TKey, TValue) out_firstPartition, Windows.Foundation.Collections.IMapView!(TKey, TValue) out_secondPartition);
}

interface IMap(TKey, TValue) : IInspectable
{
extern(Windows):
	HRESULT abi_Lookup(TKey key, TValue* return_value);
	HRESULT get_Size(uint* return_size);
	HRESULT abi_HasKey(TKey key, bool* return_found);
	HRESULT abi_GetView(Windows.Foundation.Collections.IMapView!(TKey, TValue)* return_view);
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
	HRESULT add_MapChanged(Windows.Foundation.Collections.MapChangedEventHandler!(TKey, TValue) handler, EventRegistrationToken* return_token);
	HRESULT remove_MapChanged(EventRegistrationToken token);
}

interface IObservableVector(Type) : IInspectable
{
extern(Windows):
	HRESULT add_VectorChanged(Windows.Foundation.Collections.VectorChangedEventHandler!(Type) handler, EventRegistrationToken* return_token);
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
interface IPropertySet_Base : IInspectable
{
}
@uuid("8a43ed9f-f4e6-4421-acf9-1dab2986820c")
interface IPropertySet : IPropertySet_Base, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)) {}

interface PropertySet : Windows.Foundation.Collections.IPropertySet, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))
{
extern(Windows):
	final void removeMapChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable))this).remove_MapChanged(token));
	}
	final  IInspectable Lookup(wstring key)
	{
		 IInspectable _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Lookup(hstring(key).handle, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(wstring key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_HasKey(hstring(key).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(wstring key,	IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Insert(hstring(key).handle, value, &_ret));
		return _ret;
	}
	final void Remove(wstring key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Remove(hstring(key).handle));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)))this).abi_First(out_first));
	}
	static PropertySet New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PropertySet).abi_ActivateInstance(&ret));
		return cast(PropertySet) ret;
	}
}

interface StringMap : Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)), Windows.Foundation.Collections.IObservableMap!(HSTRING, HSTRING)
{
extern(Windows):
	final  HSTRING Lookup(wstring key)
	{
		 HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Lookup(hstring(key).handle, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(wstring key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_HasKey(hstring(key).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 HSTRING) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  HSTRING) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(wstring key,	HSTRING value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Insert(hstring(key).handle, value, &_ret));
		return _ret;
	}
	final void Remove(wstring key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Remove(hstring(key).handle));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)))this).abi_First(out_first));
	}
	final void removeMapChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IObservableMap!(HSTRING, HSTRING))this).remove_MapChanged(token));
	}
	static StringMap New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(StringMap).abi_ActivateInstance(&ret));
		return cast(StringMap) ret;
	}
}

interface ValueSet : Windows.Foundation.Collections.IPropertySet, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))
{
extern(Windows):
	final void removeMapChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable))this).remove_MapChanged(token));
	}
	final  IInspectable Lookup(wstring key)
	{
		 IInspectable _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Lookup(hstring(key).handle, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(wstring key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_HasKey(hstring(key).handle, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(wstring key,	IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Insert(hstring(key).handle, value, &_ret));
		return _ret;
	}
	final void Remove(wstring key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Remove(hstring(key).handle));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable)))this).abi_First(out_first));
	}
	static ValueSet New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ValueSet).abi_ActivateInstance(&ret));
		return cast(ValueSet) ret;
	}
}

enum CollectionChange
{
	Reset,
	ItemInserted,
	ItemRemoved,
	ItemChanged
}