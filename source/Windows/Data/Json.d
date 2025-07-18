module Windows.Data.Json;

import dwinrt;

@uuid("08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81")
@WinrtFactory("Windows.Data.Json.JsonArray")
interface IJsonArray_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetObjectAt(UINT32 index, Windows.Data.Json.JsonObject* return_returnValue);
	HRESULT abi_GetArrayAt(UINT32 index, Windows.Data.Json.JsonArray* return_returnValue);
	HRESULT abi_GetStringAt(UINT32 index, HSTRING* return_returnValue);
	HRESULT abi_GetNumberAt(UINT32 index, double* return_returnValue);
	HRESULT abi_GetBooleanAt(UINT32 index, bool* return_returnValue);
}
@uuid("08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81")
@WinrtFactory("Windows.Data.Json.JsonArray")
interface IJsonArray : IJsonArray_Base, Windows.Data.Json.IJsonValue {}

@uuid("db1434a9-e164-499f-93e2-8a8f49bb90ba")
@WinrtFactory("Windows.Data.Json.JsonArray")
interface IJsonArrayStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Data.Json.JsonArray* return_jsonArray);
	HRESULT abi_TryParse(HSTRING input, Windows.Data.Json.JsonArray* out_result, bool* return_succeeded);
}

@uuid("404030da-87d0-436c-83ab-fc7b12c0cc26")
@WinrtFactory("Windows.Data.Json.JsonError")
interface IJsonErrorStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetJsonStatus(INT32 hresult, Windows.Data.Json.JsonErrorStatus* return_status);
}

@uuid("064e24dd-29c2-4f83-9ac1-9ee11578beb3")
@WinrtFactory("Windows.Data.Json.JsonObject")
interface IJsonObject_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetNamedValue(HSTRING name, Windows.Data.Json.JsonValue* return_returnValue);
	HRESULT abi_SetNamedValue(HSTRING name, Windows.Data.Json.IJsonValue value);
	HRESULT abi_GetNamedObject(HSTRING name, Windows.Data.Json.JsonObject* return_returnValue);
	HRESULT abi_GetNamedArray(HSTRING name, Windows.Data.Json.JsonArray* return_returnValue);
	HRESULT abi_GetNamedString(HSTRING name, HSTRING* return_returnValue);
	HRESULT abi_GetNamedNumber(HSTRING name, double* return_returnValue);
	HRESULT abi_GetNamedBoolean(HSTRING name, bool* return_returnValue);
}
@uuid("064e24dd-29c2-4f83-9ac1-9ee11578beb3")
@WinrtFactory("Windows.Data.Json.JsonObject")
interface IJsonObject : IJsonObject_Base, Windows.Data.Json.IJsonValue {}

@uuid("2289f159-54de-45d8-abcc-22603fa066a0")
@WinrtFactory("Windows.Data.Json.JsonObject")
interface IJsonObjectStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Data.Json.JsonObject* return_jsonObject);
	HRESULT abi_TryParse(HSTRING input, Windows.Data.Json.JsonObject* out_result, bool* return_succeeded);
}

@uuid("d960d2a2-b7f0-4f00-8e44-d82cf415ea13")
@WinrtFactory("Windows.Data.Json.JsonObject")
interface IJsonObjectWithDefaultValues_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetNamedValue(HSTRING name, Windows.Data.Json.JsonValue defaultValue, Windows.Data.Json.JsonValue* return_returnValue);
	HRESULT abi_GetNamedObject(HSTRING name, Windows.Data.Json.JsonObject defaultValue, Windows.Data.Json.JsonObject* return_returnValue);
	HRESULT abi_GetNamedString(HSTRING name, HSTRING defaultValue, HSTRING* return_returnValue);
	HRESULT abi_GetNamedArray(HSTRING name, Windows.Data.Json.JsonArray defaultValue, Windows.Data.Json.JsonArray* return_returnValue);
	HRESULT abi_GetNamedNumber(HSTRING name, double defaultValue, double* return_returnValue);
	HRESULT abi_GetNamedBoolean(HSTRING name, bool defaultValue, bool* return_returnValue);
}
@uuid("d960d2a2-b7f0-4f00-8e44-d82cf415ea13")
@WinrtFactory("Windows.Data.Json.JsonObject")
interface IJsonObjectWithDefaultValues : IJsonObjectWithDefaultValues_Base, Windows.Data.Json.IJsonObject, Windows.Data.Json.IJsonValue {}

@uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e")
interface IJsonValue : IInspectable
{
extern(Windows):
	HRESULT get_ValueType(Windows.Data.Json.JsonValueType* return_value);
	HRESULT abi_Stringify(HSTRING* return_returnValue);
	HRESULT abi_GetString(HSTRING* return_returnValue);
	HRESULT abi_GetNumber(double* return_returnValue);
	HRESULT abi_GetBoolean(bool* return_returnValue);
	HRESULT abi_GetArray(Windows.Data.Json.JsonArray* return_returnValue);
	HRESULT abi_GetObject(Windows.Data.Json.JsonObject* return_returnValue);
}

@uuid("5f6b544a-2f53-48e1-91a3-f78b50a6345c")
@WinrtFactory("Windows.Data.Json.JsonValue")
interface IJsonValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Parse(HSTRING input, Windows.Data.Json.JsonValue* return_jsonValue);
	HRESULT abi_TryParse(HSTRING input, Windows.Data.Json.JsonValue* out_result, bool* return_succeeded);
	HRESULT abi_CreateBooleanValue(bool input, Windows.Data.Json.JsonValue* return_jsonValue);
	HRESULT abi_CreateNumberValue(double input, Windows.Data.Json.JsonValue* return_jsonValue);
	HRESULT abi_CreateStringValue(HSTRING input, Windows.Data.Json.JsonValue* return_jsonValue);
}

@uuid("1d9ecbe4-3fe8-4335-8392-93d8e36865f0")
@WinrtFactory("Windows.Data.Json.JsonValue")
interface IJsonValueStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateNullValue(Windows.Data.Json.JsonValue* return_jsonValue);
}

interface JsonArray : Windows.Data.Json.IJsonArray, Windows.Data.Json.IJsonValue, Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue), Windows.Foundation.Collections.IIterable!(Windows.Data.Json.IJsonValue), Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Data.Json.JsonObject GetObjectAt(UINT32 index)
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonArray)this.asInterface(uuid("08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81"))).abi_GetObjectAt(index, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetArrayAt(UINT32 index)
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonArray)this.asInterface(uuid("08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81"))).abi_GetArrayAt(index, &_ret));
		return _ret;
	}
	final HSTRING GetStringAt(UINT32 index)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonArray)this.asInterface(uuid("08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81"))).abi_GetStringAt(index, &_ret));
		return _ret;
	}
	final double GetNumberAt(UINT32 index)
	{
		double _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonArray)this.asInterface(uuid("08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81"))).abi_GetNumberAt(index, &_ret));
		return _ret;
	}
	final bool GetBooleanAt(UINT32 index)
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonArray)this.asInterface(uuid("08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81"))).abi_GetBooleanAt(index, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonValueType ValueType()
	{
		Windows.Data.Json.JsonValueType _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).get_ValueType(&_ret));
		return _ret;
	}
	final HSTRING Stringify()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_Stringify(&_ret));
		return _ret;
	}
	final HSTRING GetString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetString(&_ret));
		return _ret;
	}
	final double GetNumber()
	{
		double _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetNumber(&_ret));
		return _ret;
	}
	final bool GetBoolean()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetBoolean(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetArray()
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetArray(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonObject GetObject()
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetObject(&_ret));
		return _ret;
	}
	final Windows.Data.Json.IJsonValue GetAt(uint index)
	{
		Windows.Data.Json.IJsonValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).get_GetAt(index, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).get_Size(&_ret));
		return _ret;
	}
	final void GetView(Windows.Foundation.Collections.IVectorView!(Windows.Data.Json.IJsonValue)* out_view)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).abi_GetView(out_view));
	}
	final uint IndexOf(Windows.Data.Json.IJsonValue value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void SetAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).abi_SetAt(index, item));
	}
	final void InsertAt(uint index, Windows.Data.Json.IJsonValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).abi_InsertAt(index, item));
	}
	final void RemoveAt(uint index)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).abi_RemoveAt(index));
	}
	final void Append(Windows.Data.Json.IJsonValue item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).abi_Append(item));
	}
	final void RemoveAtEnd()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).abi_RemoveAtEnd());
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).abi_Clear());
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Data.Json.IJsonValue* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void ReplaceAll(uint count, Windows.Data.Json.IJsonValue* out_value)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVector!(Windows.Data.Json.IJsonValue))this).abi_ReplaceAll(count, out_value));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Data.Json.IJsonValue)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Data.Json.IJsonValue))this).abi_First(out_first));
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}

	private static Windows.Data.Json.IJsonArrayStatics _staticInstance;
	public static Windows.Data.Json.IJsonArrayStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Data.Json.IJsonArrayStatics);
		return _staticInstance;
	}
	static Windows.Data.Json.JsonArray Parse(HSTRING input)
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK(staticInstance.abi_Parse(input, &_ret));
		return _ret;
	}
	static bool TryParse(HSTRING input, Windows.Data.Json.JsonArray* out_result)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(input, out_result, &_ret));
		return _ret;
	}
	static JsonArray New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(JsonArray).abi_ActivateInstance(&ret));
		return cast(JsonArray) ret;
	}
}

interface JsonError
{
	private static Windows.Data.Json.IJsonErrorStatics2 _staticInstance;
	public static Windows.Data.Json.IJsonErrorStatics2 staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Data.Json.IJsonErrorStatics2);
		return _staticInstance;
	}
	static Windows.Data.Json.JsonErrorStatus GetJsonStatus(INT32 hresult)
	{
		Windows.Data.Json.JsonErrorStatus _ret;
		Debug.OK(staticInstance.abi_GetJsonStatus(hresult, &_ret));
		return _ret;
	}
}

interface JsonObject : Windows.Data.Json.IJsonObject, Windows.Data.Json.IJsonValue, Windows.Foundation.Collections.IMap!(HSTRING, Windows.Data.Json.IJsonValue), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Data.Json.IJsonValue)), Windows.Data.Json.IJsonObjectWithDefaultValues, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Data.Json.JsonValue GetNamedValue(HSTRING name)
	{
		Windows.Data.Json.JsonValue _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObject)this.asInterface(uuid("064e24dd-29c2-4f83-9ac1-9ee11578beb3"))).abi_GetNamedValue(name, &_ret));
		return _ret;
	}
	final void SetNamedValue(HSTRING name, Windows.Data.Json.IJsonValue value)
	{
		Debug.OK((cast(Windows.Data.Json.IJsonObject)this.asInterface(uuid("064e24dd-29c2-4f83-9ac1-9ee11578beb3"))).abi_SetNamedValue(name, value));
	}
	final Windows.Data.Json.JsonObject GetNamedObject(HSTRING name)
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObject)this.asInterface(uuid("064e24dd-29c2-4f83-9ac1-9ee11578beb3"))).abi_GetNamedObject(name, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetNamedArray(HSTRING name)
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObject)this.asInterface(uuid("064e24dd-29c2-4f83-9ac1-9ee11578beb3"))).abi_GetNamedArray(name, &_ret));
		return _ret;
	}
	final HSTRING GetNamedString(HSTRING name)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObject)this.asInterface(uuid("064e24dd-29c2-4f83-9ac1-9ee11578beb3"))).abi_GetNamedString(name, &_ret));
		return _ret;
	}
	final double GetNamedNumber(HSTRING name)
	{
		double _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObject)this.asInterface(uuid("064e24dd-29c2-4f83-9ac1-9ee11578beb3"))).abi_GetNamedNumber(name, &_ret));
		return _ret;
	}
	final bool GetNamedBoolean(HSTRING name)
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObject)this.asInterface(uuid("064e24dd-29c2-4f83-9ac1-9ee11578beb3"))).abi_GetNamedBoolean(name, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonValueType ValueType()
	{
		Windows.Data.Json.JsonValueType _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).get_ValueType(&_ret));
		return _ret;
	}
	final HSTRING Stringify()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_Stringify(&_ret));
		return _ret;
	}
	final HSTRING GetString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetString(&_ret));
		return _ret;
	}
	final double GetNumber()
	{
		double _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetNumber(&_ret));
		return _ret;
	}
	final bool GetBoolean()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetBoolean(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetArray()
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetArray(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonObject GetObject()
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetObject(&_ret));
		return _ret;
	}
	final  Windows.Data.Json.IJsonValue Lookup(HSTRING key)
	{
		 Windows.Data.Json.IJsonValue _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Data.Json.IJsonValue))this).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Data.Json.IJsonValue))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Data.Json.IJsonValue))this).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 Windows.Data.Json.IJsonValue) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  Windows.Data.Json.IJsonValue) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Data.Json.IJsonValue))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	Windows.Data.Json.IJsonValue value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Data.Json.IJsonValue))this).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Data.Json.IJsonValue))this).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.Data.Json.IJsonValue))this).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Data.Json.IJsonValue))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Data.Json.IJsonValue)))this).abi_First(out_first));
	}
	final Windows.Data.Json.JsonValue GetNamedValue(HSTRING name, Windows.Data.Json.JsonValue defaultValue)
	{
		Windows.Data.Json.JsonValue _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObjectWithDefaultValues)this.asInterface(uuid("d960d2a2-b7f0-4f00-8e44-d82cf415ea13"))).abi_GetNamedValue(name, defaultValue, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonObject GetNamedObject(HSTRING name, Windows.Data.Json.JsonObject defaultValue)
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObjectWithDefaultValues)this.asInterface(uuid("d960d2a2-b7f0-4f00-8e44-d82cf415ea13"))).abi_GetNamedObject(name, defaultValue, &_ret));
		return _ret;
	}
	final HSTRING GetNamedString(HSTRING name, HSTRING defaultValue)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObjectWithDefaultValues)this.asInterface(uuid("d960d2a2-b7f0-4f00-8e44-d82cf415ea13"))).abi_GetNamedString(name, defaultValue, &_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetNamedArray(HSTRING name, Windows.Data.Json.JsonArray defaultValue)
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObjectWithDefaultValues)this.asInterface(uuid("d960d2a2-b7f0-4f00-8e44-d82cf415ea13"))).abi_GetNamedArray(name, defaultValue, &_ret));
		return _ret;
	}
	final double GetNamedNumber(HSTRING name, double defaultValue)
	{
		double _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObjectWithDefaultValues)this.asInterface(uuid("d960d2a2-b7f0-4f00-8e44-d82cf415ea13"))).abi_GetNamedNumber(name, defaultValue, &_ret));
		return _ret;
	}
	final bool GetNamedBoolean(HSTRING name, bool defaultValue)
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonObjectWithDefaultValues)this.asInterface(uuid("d960d2a2-b7f0-4f00-8e44-d82cf415ea13"))).abi_GetNamedBoolean(name, defaultValue, &_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}

	private static Windows.Data.Json.IJsonObjectStatics _staticInstance;
	public static Windows.Data.Json.IJsonObjectStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Data.Json.IJsonObjectStatics);
		return _staticInstance;
	}
	static Windows.Data.Json.JsonObject Parse(HSTRING input)
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK(staticInstance.abi_Parse(input, &_ret));
		return _ret;
	}
	static bool TryParse(HSTRING input, Windows.Data.Json.JsonObject* out_result)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(input, out_result, &_ret));
		return _ret;
	}
	static JsonObject New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(JsonObject).abi_ActivateInstance(&ret));
		return cast(JsonObject) ret;
	}
}

interface JsonValue : Windows.Data.Json.IJsonValue, Windows.Foundation.IStringable
{
extern(Windows):
	final Windows.Data.Json.JsonValueType ValueType()
	{
		Windows.Data.Json.JsonValueType _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).get_ValueType(&_ret));
		return _ret;
	}
	final HSTRING Stringify()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_Stringify(&_ret));
		return _ret;
	}
	final HSTRING GetString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetString(&_ret));
		return _ret;
	}
	final double GetNumber()
	{
		double _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetNumber(&_ret));
		return _ret;
	}
	final bool GetBoolean()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetBoolean(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonArray GetArray()
	{
		Windows.Data.Json.JsonArray _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetArray(&_ret));
		return _ret;
	}
	final Windows.Data.Json.JsonObject GetObject()
	{
		Windows.Data.Json.JsonObject _ret;
		Debug.OK((cast(Windows.Data.Json.IJsonValue)this.asInterface(uuid("a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e"))).abi_GetObject(&_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}

	private static Windows.Data.Json.IJsonValueStatics _staticInstance;
	public static Windows.Data.Json.IJsonValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Data.Json.IJsonValueStatics);
		return _staticInstance;
	}
	static Windows.Data.Json.JsonValue Parse(HSTRING input)
	{
		Windows.Data.Json.JsonValue _ret;
		Debug.OK(staticInstance.abi_Parse(input, &_ret));
		return _ret;
	}
	static bool TryParse(HSTRING input, Windows.Data.Json.JsonValue* out_result)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_TryParse(input, out_result, &_ret));
		return _ret;
	}
	static Windows.Data.Json.JsonValue CreateBooleanValue(bool input)
	{
		Windows.Data.Json.JsonValue _ret;
		Debug.OK(staticInstance.abi_CreateBooleanValue(input, &_ret));
		return _ret;
	}
	static Windows.Data.Json.JsonValue CreateNumberValue(double input)
	{
		Windows.Data.Json.JsonValue _ret;
		Debug.OK(staticInstance.abi_CreateNumberValue(input, &_ret));
		return _ret;
	}
	static Windows.Data.Json.JsonValue CreateStringValue(HSTRING input)
	{
		Windows.Data.Json.JsonValue _ret;
		Debug.OK(staticInstance.abi_CreateStringValue(input, &_ret));
		return _ret;
	}
}

enum JsonErrorStatus
{
	Unknown = 0,
	InvalidJsonString = 1,
	InvalidJsonNumber = 2,
	JsonValueNotFound = 3,
	ImplementationLimit = 4
}

enum JsonValueType
{
	Null = 0,
	Boolean = 1,
	Number = 2,
	String = 3,
	Array = 4,
	Object = 5
}