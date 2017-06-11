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
	HRESULT get_Current(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource)* return_current);
	HRESULT get_HasCurrent(bool* return_hasCurrent);
	HRESULT abi_MoveNext(bool* out_hasCurrent);
	HRESULT abi_GetMany(uint capacity, Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.ApplicationModel.Resources.Core.NamedResource)* value, uint* actual);
}

interface IIterable(Type) : IInspectable
{
extern(Windows):
	HRESULT abi_First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first);
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
	HRESULT abi_GetAt(uint index, Windows.Foundation.IWwwFormUrlDecoderEntry* out_item);
	HRESULT get_Size(uint* return_size);
	HRESULT get_IndexOf(Windows.Foundation.IWwwFormUrlDecoderEntry value, uint* return_index, bool* out_found);
	HRESULT abi_GetMany(uint startIndex, uint capacity, Windows.Foundation.IWwwFormUrlDecoderEntry* out_value, uint* out_actual);
}

interface IVector(Type) : IInspectable
{
extern(Windows):
	HRESULT get_GetAt(uint index, Windows.Data.Json.IJsonValue* return_item);
	HRESULT get_Size(uint* return_size);
	HRESULT abi_GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view);
	HRESULT get_IndexOf(Windows.Data.Json.IJsonValue value, uint* return_index, bool* out_found);
	HRESULT abi_SetAt(uint index, Windows.Data.Json.IJsonValue item);
	HRESULT abi_InsertAt(uint index, Windows.Data.Json.IJsonValue item);
	HRESULT abi_RemoveAt(uint index);
	HRESULT abi_Append(Windows.Data.Json.IJsonValue item);
	HRESULT abi_RemoveAtEnd();
	HRESULT abi_Clear();
	HRESULT abi_GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual);
	HRESULT abi_ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value);
}

interface IMapView(TKey, TValue) : IInspectable
{
extern(Windows):
	HRESULT abi_Lookup(HSTRING key,	 IInspectable* return_value);
	HRESULT get_Size(uint* return_size);
	HRESULT abi_HasKey(HSTRING key, bool* return_found);
	HRESULT abi_Split(Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) out_firstPartition, Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable) out_secondPartition);
}

interface IMap(TKey, TValue) : IInspectable
{
extern(Windows):
	HRESULT abi_Lookup(HSTRING key,	 IInspectable* return_value);
	HRESULT get_Size(uint* return_size);
	HRESULT abi_HasKey(HSTRING key, bool* return_found);
	HRESULT abi_GetView(Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable)* return_view);
	HRESULT abi_Insert(HSTRING key,	 IInspectable value, bool* return_replaced);
	HRESULT abi_Remove(HSTRING key);
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
	HRESULT add_MapChanged(Windows.Foundation.Collections.MapChangedEventHandler!(HSTRING,	IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_MapChanged(EventRegistrationToken token);
}

interface IObservableVector(Type) : IInspectable
{
extern(Windows):
	HRESULT add_VectorChanged(Windows.Foundation.Collections.VectorChangedEventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
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
extern(Windows):
	final void removeMapChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_MapChanged(token));
	}
	final  IInspectable Lookup(HSTRING key)
	{
		 IInspectable _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	IInspectable value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))).abi_First(out_first));
	}
}

interface StringMap : Windows.Foundation.Collections.IMap!(HSTRING, HSTRING), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)), Windows.Foundation.Collections.IObservableMap!(HSTRING, HSTRING)
{
extern(Windows):
	final  IInspectable Lookup(HSTRING key)
	{
		 IInspectable _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	IInspectable value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING))).abi_First(out_first));
	}
	final void removeMapChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_MapChanged(token));
	}
}

interface ValueSet : Windows.Foundation.Collections.IPropertySet, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))
{
extern(Windows):
	final void removeMapChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_MapChanged(token));
	}
	final  IInspectable Lookup(HSTRING key)
	{
		 IInspectable _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	IInspectable value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))).abi_First(out_first));
	}
}

enum CollectionChange
{
	Reset,
	ItemInserted,
	ItemRemoved,
	ItemChanged
}