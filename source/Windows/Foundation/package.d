module Windows.Foundation;

import dwinrt;

struct COR_FIELD_OFFSET
{
	uint ridOfField;
	uint ulOffset;
}

struct OSINFO
{
	DWORD dwOSPlatformId;
	DWORD dwOSMajorVersion;
	DWORD dwOSMinorVersion;
}

struct ASSEMBLYMETADATA
{
	ushort usMajorVersion;
	ushort usMinorVersion;
	ushort usBuildNumber;
	ushort usRevisionNumber;
	LPWSTR szLocale;
	ULONG cbLocale;
	DWORD* rProcessor;
	ULONG ulProcessor;
	OSINFO* rOS;
	ULONG ulOS;
}

struct DateTime
{
	INT64 UniversalTime;
}

struct Point
{
	float X;
	float Y;
}

struct Rect
{
	float X;
	float Y;
	float Width;
	float Height;
}

struct Size
{
	float Width;
	float Height;
}

struct TimeSpan
{
	INT64 Duration;
}

interface EventHandler(TArgs) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, TArgs args);
	final void Invoke(IInspectable sender, TArgs args)
	{
		Debug.OK((cast(Windows.Foundation.EventHandler!(TArgs))this).abi_Invoke(sender, args));
	}
}

interface TypedEventHandler(TSender, TArgs) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(TSender sender, TArgs args);
	final void Invoke(TSender sender, TArgs args)
	{
		Debug.OK((cast(Windows.Foundation.TypedEventHandler!(TSender, TArgs))this).abi_Invoke(sender, args));
	}
}

interface IAsyncActionWithProgress(TProgress) : IInspectable
{
extern(Windows):
	HRESULT set_Progress(Windows.Foundation.AsyncActionProgressHandler!(TProgress) handler);
	HRESULT get_Progress(Windows.Foundation.AsyncActionProgressHandler!(TProgress)* return_handler);
	final void Progress(Windows.Foundation.AsyncActionProgressHandler!(TProgress) handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncActionWithProgress!(TProgress))this).set_Progress(handler));
	}
	final Windows.Foundation.AsyncActionProgressHandler!(TProgress) Progress()
	{
		Windows.Foundation.AsyncActionProgressHandler!(TProgress) _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncActionWithProgress!(TProgress))this).get_Progress(&_ret));
		return _ret;
	}
}

interface AsyncActionProgressHandler(TProgress) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncActionWithProgress!(TProgress) asyncInfo, TProgress progressInfo);
	final void Invoke(Windows.Foundation.IAsyncActionWithProgress!(TProgress) asyncInfo, TProgress progressInfo)
	{
		Debug.OK((cast(Windows.Foundation.AsyncActionProgressHandler!(TProgress))this).abi_Invoke(asyncInfo, progressInfo));
	}
}

interface AsyncActionWithProgressCompletedHandler(TProgress) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncActionWithProgress!(TProgress) asyncInfo, AsyncStatus status);
	final void Invoke(Windows.Foundation.IAsyncActionWithProgress!(TProgress) asyncInfo, AsyncStatus status)
	{
		Debug.OK((cast(Windows.Foundation.AsyncActionWithProgressCompletedHandler!(TProgress))this).abi_Invoke(asyncInfo, status));
	}
}

interface IAsyncOperation_Base(TResult) : IInspectable
{
extern(Windows):
	HRESULT set_Completed(Windows.Foundation.AsyncOperationCompletedHandler!(TResult) handler);
	HRESULT get_Completed(Windows.Foundation.AsyncOperationCompletedHandler!(TResult)* return_handler);
	HRESULT get_Results(TResult* return_results);
	final void Completed(Windows.Foundation.AsyncOperationCompletedHandler!(TResult) handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(TResult))this).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationCompletedHandler!(TResult) Completed()
	{
		Windows.Foundation.AsyncOperationCompletedHandler!(TResult) _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(TResult))this).get_Completed(&_ret));
		return _ret;
	}
	final TResult Results()
	{
		TResult _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperation!(TResult))this).get_Results(&_ret));
		return _ret;
	}
}
interface IAsyncOperation(TResult) : IAsyncOperation_Base!(TResult), IAsyncInfo {}

interface AsyncOperationProgressHandler(TResult, TProgress) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress) asyncInfo, TProgress progressInfo);
	final void Invoke(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress) asyncInfo, TProgress progressInfo)
	{
		Debug.OK((cast(Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress))this).abi_Invoke(asyncInfo, progressInfo));
	}
}

interface AsyncOperationCompletedHandler(TResult) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncOperation!(TResult) asyncInfo, AsyncStatus status);
	final void Invoke(Windows.Foundation.IAsyncOperation!(TResult) asyncInfo, AsyncStatus status)
	{
		Debug.OK((cast(Windows.Foundation.AsyncOperationCompletedHandler!(TResult))this).abi_Invoke(asyncInfo, status));
	}
}

interface IAsyncOperationWithProgress(TResult, TProgress) : IInspectable
{
extern(Windows):
	HRESULT set_Progress(Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress) handler);
	HRESULT get_Progress(Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress)* return_handler);
	HRESULT set_Completed(Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress) handler);
	HRESULT get_Completed(Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress)* return_handler);
	HRESULT get_Results(TResult* return_results);
	final void Progress(Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress) handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress))this).set_Progress(handler));
	}
	final Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress) Progress()
	{
		Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress) _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress))this).get_Progress(&_ret));
		return _ret;
	}
	final void Completed(Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress) handler)
	{
		Debug.OK((cast(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress))this).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress) Completed()
	{
		Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress) _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress))this).get_Completed(&_ret));
		return _ret;
	}
	final TResult Results()
	{
		TResult _ret;
		Debug.OK((cast(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress))this).get_Results(&_ret));
		return _ret;
	}
}

interface AsyncOperationWithProgressCompletedHandler(TResult, TProgress) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress) asyncInfo, AsyncStatus status);
	final void Invoke(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress) asyncInfo, AsyncStatus status)
	{
		Debug.OK((cast(Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress))this).abi_Invoke(asyncInfo, status));
	}
}

interface IReference(Type) : IUnknown
{
extern(Windows):
	HRESULT get_Value(Type* return_value);
	final Type Value()
	{
		Type _ret;
		Debug.OK((cast(Windows.Foundation.IReference!(Type))this).get_Value(&_ret));
		return _ret;
	}
}

@uuid("d8f579ab-402d-4b8e-82d9-5d63b1065c68")
interface IMetaDataTables : IUnknown
{
extern(Windows):
	HRESULT abi_GetStringHeapSize(ULONG* out_pcbStrings);
	HRESULT abi_GetBlobHeapSize(ULONG* out_pcbBlobs);
	HRESULT abi_GetGuidHeapSize(ULONG* out_pcbGuids);
	HRESULT abi_GetUserStringHeapSize(ULONG* out_pcbUserStrings);
	HRESULT abi_GetNumTables(ULONG* out_pcTables);
	HRESULT abi_GetTableIndex(ULONG token, ULONG* out_pixTbl);
	HRESULT abi_GetTableInfo(ULONG ixTbl, ULONG* out_pcbRow, ULONG* out_pcRows, ULONG* out_pcCols, ULONG* out_piKey, LPCSTR* out_ppName);
	HRESULT abi_GetColumnInfo(ULONG ixTbl, ULONG ixCol, ULONG* out_poCol, ULONG* out_pcbCol, ULONG* out_pType, LPCSTR* out_ppName);
	HRESULT abi_GetCodedTokenInfo(ULONG ixCdTkn, ULONG* out_pcTokens, const(ULONG)** out_ppTokens, LPCSTR* out_ppName);
	HRESULT abi_GetRow(ULONG ixTbl, ULONG rid, const(ubyte)* out_ppRow);
	HRESULT abi_GetColumn(ULONG ixTbl, ULONG ixCol, ULONG rid, ULONG* out_pVal);
	HRESULT abi_GetString(ULONG ixString, LPCSTR* out_ppString);
	HRESULT abi_GetBlob(ULONG ixBlob, ULONG* out_pcbData, const(ubyte)** out_ppData);
	HRESULT abi_GetGuid(ULONG ixGuid, const(GUID)** out_ppGUID);
	HRESULT abi_GetUserString(ULONG ixUserString, ULONG* out_pcbData, const(ubyte)** out_ppData);
	HRESULT abi_GetNextString(ULONG ixString, ULONG* out_pNext);
	HRESULT abi_GetNextBlob(ULONG ixBlob, ULONG* out_pNext);
	HRESULT abi_GetNextGuid(ULONG ixGuid, ULONG* out_pNext);
	HRESULT abi_GetNextUserString(ULONG ixUserString, ULONG* out_pNext);
}

@uuid("badb5f70-58da-43a9-a1c6-d74819f19b15")
interface IMetaDataTables2 : IMetaDataTables
{
extern(Windows):
	HRESULT abi_GetMetaDataStorage(const(ubyte)** out_ppvMd, ULONG* out_pcbMd);
	HRESULT abi_GetMetaDataStreamInfo(ULONG ix, LPCSTR* out_ppchName, const(ubyte)** out_ppv, ULONG* out_pcb);
}

@uuid("00000037-0000-0000-c000-000000000046")
interface IWeakReference : IUnknown
{
extern(Windows):
	HRESULT abi_Resolve(REFIID riid, IInspectable* return_objectReference);
}

@uuid("00000038-0000-0000-c000-000000000046")
interface IWeakReferenceSource : IUnknown
{
extern(Windows):
	HRESULT abi_GetWeakReference(IWeakReference* return_weakReference);
}

@uuid("a4ed5c81-76c9-40bd-8be6-b1d90fb20ae7")
interface AsyncActionCompletedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncAction asyncInfo, AsyncStatus asyncStatus);
}

@uuid("ed32a372-f3c8-4faa-9cfb-470148da3888")
interface DeferralCompletedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke();
}

@uuid("5a648006-843a-4da9-865b-9d26e5dfad7b")
interface IAsyncAction_Base : IInspectable
{
extern(Windows):
	HRESULT set_Completed(Windows.Foundation.AsyncActionCompletedHandler handler);
	HRESULT get_Completed(Windows.Foundation.AsyncActionCompletedHandler* return_handler);
	HRESULT abi_GetResults();
	final Windows.Foundation.AsyncActionCompletedHandler Completed()
	{
		Windows.Foundation.AsyncActionCompletedHandler ret;
		Debug.OK((cast(IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).get_Completed(&ret));
		return ret;
	}
	final void Completed(Windows.Foundation.AsyncActionCompletedHandler handler)
	{
		Debug.OK((cast(IAsyncAction)this.asInterface(uuid("5a648006-843a-4da9-865b-9d26e5dfad7b"))).set_Completed(handler));
	}
}
@uuid("5a648006-843a-4da9-865b-9d26e5dfad7b")
interface IAsyncAction : IAsyncAction_Base, IAsyncInfo {}

@uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e")
interface IClosable : IInspectable
{
extern(Windows):
	HRESULT abi_Close();
}

@uuid("d6269732-3b7f-46a7-b40b-4fdca2a2c693")
@WinrtFactory("Windows.Foundation.Deferral")
interface IDeferral_Base : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}
@uuid("d6269732-3b7f-46a7-b40b-4fdca2a2c693")
@WinrtFactory("Windows.Foundation.Deferral")
interface IDeferral : IDeferral_Base, Windows.Foundation.IClosable {}

@uuid("65a1ecc5-3fb5-4832-8ca9-f061b281d13a")
@WinrtFactory("Windows.Foundation.Deferral")
interface IDeferralFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.DeferralCompletedHandler handler, Windows.Foundation.Deferral* return_result);
}

@uuid("4edb8ee2-96dd-49a7-94f7-4607ddab8e3c")
interface IGetActivationFactory : IInspectable
{
extern(Windows):
	HRESULT abi_GetActivationFactory(HSTRING activatableClassId, IInspectable* return_factory);
}

@uuid("fbc4dd2a-245b-11e4-af98-689423260cf8")
interface IMemoryBuffer_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateReference(Windows.Foundation.IMemoryBufferReference* return_reference);
}
@uuid("fbc4dd2a-245b-11e4-af98-689423260cf8")
interface IMemoryBuffer : IMemoryBuffer_Base, Windows.Foundation.IClosable {}

@uuid("fbc4dd2b-245b-11e4-af98-689423260cf8")
@WinrtFactory("Windows.Foundation.MemoryBuffer")
interface IMemoryBufferFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 capacity, Windows.Foundation.MemoryBuffer* return_value);
}

@uuid("fbc4dd29-245b-11e4-af98-689423260cf8")
interface IMemoryBufferReference_Base : IInspectable
{
extern(Windows):
	HRESULT get_Capacity(UINT32* return_value);
	HRESULT add_Closed(Windows.Foundation.TypedEventHandler!(Windows.Foundation.IMemoryBufferReference, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_Closed(EventRegistrationToken cookie);
}
@uuid("fbc4dd29-245b-11e4-af98-689423260cf8")
interface IMemoryBufferReference : IMemoryBufferReference_Base, Windows.Foundation.IClosable {}

@uuid("4bd682dd-7554-40e9-9a9b-82654ede7e62")
interface IPropertyValue : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.Foundation.PropertyType* return_value);
	HRESULT get_IsNumericScalar(bool* return_value);
	HRESULT abi_GetUInt8(ubyte* return_value);
	HRESULT abi_GetInt16(INT16* return_value);
	HRESULT abi_GetUInt16(UINT16* return_value);
	HRESULT abi_GetInt32(INT32* return_value);
	HRESULT abi_GetUInt32(UINT32* return_value);
	HRESULT abi_GetInt64(INT64* return_value);
	HRESULT abi_GetUInt64(ulong* return_value);
	HRESULT abi_GetSingle(float* return_value);
	HRESULT abi_GetDouble(double* return_value);
	HRESULT abi_GetChar16(wchar* return_value);
	HRESULT abi_GetBoolean(bool* return_value);
	HRESULT abi_GetString(HSTRING* return_value);
	HRESULT abi_GetGuid(GUID* return_value);
	HRESULT abi_GetDateTime(Windows.Foundation.DateTime* return_value);
	HRESULT abi_GetTimeSpan(Windows.Foundation.TimeSpan* return_value);
	HRESULT abi_GetPoint(Windows.Foundation.Point* return_value);
	HRESULT abi_GetSize(Windows.Foundation.Size* return_value);
	HRESULT abi_GetRect(Windows.Foundation.Rect* return_value);
	HRESULT abi_GetUInt8Array(UINT32* out___valueSize, ubyte** out_value);
	HRESULT abi_GetInt16Array(UINT32* out___valueSize, INT16** out_value);
	HRESULT abi_GetUInt16Array(UINT32* out___valueSize, UINT16** out_value);
	HRESULT abi_GetInt32Array(UINT32* out___valueSize, INT32** out_value);
	HRESULT abi_GetUInt32Array(UINT32* out___valueSize, UINT32** out_value);
	HRESULT abi_GetInt64Array(UINT32* out___valueSize, INT64** out_value);
	HRESULT abi_GetUInt64Array(UINT32* out___valueSize, ulong** out_value);
	HRESULT abi_GetSingleArray(UINT32* out___valueSize, float** out_value);
	HRESULT abi_GetDoubleArray(UINT32* out___valueSize, double** out_value);
	HRESULT abi_GetChar16Array(UINT32* out___valueSize, wchar** out_value);
	HRESULT abi_GetBooleanArray(UINT32* out___valueSize, bool** out_value);
	HRESULT abi_GetStringArray(UINT32* out___valueSize, HSTRING** out_value);
	HRESULT abi_GetInspectableArray(UINT32* out___valueSize, IInspectable** out_value);
	HRESULT abi_GetGuidArray(UINT32* out___valueSize, GUID** out_value);
	HRESULT abi_GetDateTimeArray(UINT32* out___valueSize, Windows.Foundation.DateTime** out_value);
	HRESULT abi_GetTimeSpanArray(UINT32* out___valueSize, Windows.Foundation.TimeSpan** out_value);
	HRESULT abi_GetPointArray(UINT32* out___valueSize, Windows.Foundation.Point** out_value);
	HRESULT abi_GetSizeArray(UINT32* out___valueSize, Windows.Foundation.Size** out_value);
	HRESULT abi_GetRectArray(UINT32* out___valueSize, Windows.Foundation.Rect** out_value);
}

@uuid("629bdbc8-d932-4ff4-96b9-8d96c5c1e858")
@WinrtFactory("Windows.Foundation.PropertyValue")
interface IPropertyValueStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateEmpty(IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt8(ubyte value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt16(INT16 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt16(UINT16 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt32(INT32 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt32(UINT32 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt64(INT64 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt64(ulong value, IInspectable* return_propertyValue);
	HRESULT abi_CreateSingle(float value, IInspectable* return_propertyValue);
	HRESULT abi_CreateDouble(double value, IInspectable* return_propertyValue);
	HRESULT abi_CreateChar16(wchar value, IInspectable* return_propertyValue);
	HRESULT abi_CreateBoolean(bool value, IInspectable* return_propertyValue);
	HRESULT abi_CreateString(HSTRING value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInspectable(IInspectable value, IInspectable* return_propertyValue);
	HRESULT abi_CreateGuid(GUID value, IInspectable* return_propertyValue);
	HRESULT abi_CreateDateTime(Windows.Foundation.DateTime value, IInspectable* return_propertyValue);
	HRESULT abi_CreateTimeSpan(Windows.Foundation.TimeSpan value, IInspectable* return_propertyValue);
	HRESULT abi_CreatePoint(Windows.Foundation.Point value, IInspectable* return_propertyValue);
	HRESULT abi_CreateSize(Windows.Foundation.Size value, IInspectable* return_propertyValue);
	HRESULT abi_CreateRect(Windows.Foundation.Rect value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt8Array(UINT32 __valueSize, ubyte* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt16Array(UINT32 __valueSize, INT16* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt16Array(UINT32 __valueSize, UINT16* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt32Array(UINT32 __valueSize, INT32* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt32Array(UINT32 __valueSize, UINT32* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt64Array(UINT32 __valueSize, INT64* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt64Array(UINT32 __valueSize, ulong* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateSingleArray(UINT32 __valueSize, float* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateDoubleArray(UINT32 __valueSize, double* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateChar16Array(UINT32 __valueSize, wchar* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateBooleanArray(UINT32 __valueSize, bool* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateStringArray(UINT32 __valueSize, HSTRING* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInspectableArray(UINT32 __valueSize, IInspectable* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateGuidArray(UINT32 __valueSize, GUID* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateDateTimeArray(UINT32 __valueSize, Windows.Foundation.DateTime* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateTimeSpanArray(UINT32 __valueSize, Windows.Foundation.TimeSpan* value, IInspectable* return_propertyValue);
	HRESULT abi_CreatePointArray(UINT32 __valueSize, Windows.Foundation.Point* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateSizeArray(UINT32 __valueSize, Windows.Foundation.Size* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateRectArray(UINT32 __valueSize, Windows.Foundation.Rect* value, IInspectable* return_propertyValue);
}

@uuid("96369f54-8eb6-48f0-abce-c1b211e627c3")
interface IStringable : IInspectable
{
extern(Windows):
	HRESULT abi_ToString(HSTRING* return_value);
}

@uuid("c1d432ba-c824-4452-a7fd-512bc3bbe9a1")
@WinrtFactory("Windows.Foundation.Uri")
interface IUriEscapeStatics : IInspectable
{
extern(Windows):
	HRESULT abi_UnescapeComponent(HSTRING toUnescape, HSTRING* return_value);
	HRESULT abi_EscapeComponent(HSTRING toEscape, HSTRING* return_value);
}

@uuid("9e365e57-48b2-4160-956f-c7385120bbfc")
@WinrtFactory("Windows.Foundation.Uri")
interface IUriRuntimeClass : IInspectable
{
extern(Windows):
	HRESULT get_AbsoluteUri(HSTRING* return_value);
	HRESULT get_DisplayUri(HSTRING* return_value);
	HRESULT get_Domain(HSTRING* return_value);
	HRESULT get_Extension(HSTRING* return_value);
	HRESULT get_Fragment(HSTRING* return_value);
	HRESULT get_Host(HSTRING* return_value);
	HRESULT get_Password(HSTRING* return_value);
	HRESULT get_Path(HSTRING* return_value);
	HRESULT get_Query(HSTRING* return_value);
	HRESULT get_QueryParsed(Windows.Foundation.WwwFormUrlDecoder* return_ppWwwFormUrlDecoder);
	HRESULT get_RawUri(HSTRING* return_value);
	HRESULT get_SchemeName(HSTRING* return_value);
	HRESULT get_UserName(HSTRING* return_value);
	HRESULT get_Port(INT32* return_value);
	HRESULT get_Suspicious(bool* return_value);
	HRESULT abi_Equals(Windows.Foundation.Uri pUri, bool* return_value);
	HRESULT abi_CombineUri(HSTRING relativeUri, Windows.Foundation.Uri* return_instance);
}

@uuid("44a9796f-723e-4fdf-a218-033e75b0c084")
@WinrtFactory("Windows.Foundation.Uri")
interface IUriRuntimeClassFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateUri(HSTRING uri, Windows.Foundation.Uri* return_instance);
	HRESULT abi_CreateWithRelativeUri(HSTRING baseUri, HSTRING relativeUri, Windows.Foundation.Uri* return_instance);
}

@uuid("758d9661-221c-480f-a339-50656673f46f")
@WinrtFactory("Windows.Foundation.Uri")
interface IUriRuntimeClassWithAbsoluteCanonicalUri : IInspectable
{
extern(Windows):
	HRESULT get_AbsoluteCanonicalUri(HSTRING* return_value);
	HRESULT get_DisplayIri(HSTRING* return_value);
}

@uuid("125e7431-f678-4e8e-b670-20a9b06c512d")
interface IWwwFormUrlDecoderEntry : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Value(HSTRING* return_value);
}

@uuid("d45a0451-f225-4542-9296-0e1df5d254df")
@WinrtFactory("Windows.Foundation.WwwFormUrlDecoder")
interface IWwwFormUrlDecoderRuntimeClass_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetFirstValueByName(HSTRING name, HSTRING* return_phstrValue);
}
@uuid("d45a0451-f225-4542-9296-0e1df5d254df")
@WinrtFactory("Windows.Foundation.WwwFormUrlDecoder")
interface IWwwFormUrlDecoderRuntimeClass : IWwwFormUrlDecoderRuntimeClass_Base, Windows.Foundation.Collections.IIterable!(Windows.Foundation.IWwwFormUrlDecoderEntry), Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry) {}

@uuid("5b8c6b3d-24ae-41b5-a1bf-f0c3d544845b")
@WinrtFactory("Windows.Foundation.WwwFormUrlDecoder")
interface IWwwFormUrlDecoderRuntimeClassFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWwwFormUrlDecoder(HSTRING query, Windows.Foundation.WwwFormUrlDecoder* return_instance);
}

interface Deferral : Windows.Foundation.IDeferral, Windows.Foundation.IClosable
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.Foundation.IDeferral)this.asInterface(uuid("d6269732-3b7f-46a7-b40b-4fdca2a2c693"))).abi_Complete());
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static Windows.Foundation.Deferral New(Windows.Foundation.DeferralCompletedHandler handler)
	{
		auto factory = factory!(Windows.Foundation.IDeferralFactory);
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.Foundation.IDeferralFactory)factory.asInterface(uuid("65a1ecc5-3fb5-4832-8ca9-f061b281d13a"))).abi_Create(handler, &_ret));
		return _ret;
	}
}

interface MemoryBuffer : Windows.Foundation.IMemoryBuffer, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IMemoryBufferReference CreateReference()
	{
		Windows.Foundation.IMemoryBufferReference _ret;
		Debug.OK((cast(Windows.Foundation.IMemoryBuffer)this.asInterface(uuid("fbc4dd2a-245b-11e4-af98-689423260cf8"))).abi_CreateReference(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static Windows.Foundation.MemoryBuffer New(UINT32 capacity)
	{
		auto factory = factory!(Windows.Foundation.IMemoryBufferFactory);
		Windows.Foundation.MemoryBuffer _ret;
		Debug.OK((cast(Windows.Foundation.IMemoryBufferFactory)factory.asInterface(uuid("fbc4dd2b-245b-11e4-af98-689423260cf8"))).abi_Create(capacity, &_ret));
		return _ret;
	}
}

interface PropertyValue
{
	private static Windows.Foundation.IPropertyValueStatics _staticInstance;
	public static Windows.Foundation.IPropertyValueStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Foundation.IPropertyValueStatics);
		return _staticInstance;
	}
	static IInspectable CreateEmpty()
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateEmpty(&_ret));
		return _ret;
	}
	static IInspectable CreateUInt8(ubyte value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateUInt8(value, &_ret));
		return _ret;
	}
	static IInspectable CreateInt16(INT16 value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateInt16(value, &_ret));
		return _ret;
	}
	static IInspectable CreateUInt16(UINT16 value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateUInt16(value, &_ret));
		return _ret;
	}
	static IInspectable CreateInt32(INT32 value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateInt32(value, &_ret));
		return _ret;
	}
	static IInspectable CreateUInt32(UINT32 value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateUInt32(value, &_ret));
		return _ret;
	}
	static IInspectable CreateInt64(INT64 value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateInt64(value, &_ret));
		return _ret;
	}
	static IInspectable CreateUInt64(ulong value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateUInt64(value, &_ret));
		return _ret;
	}
	static IInspectable CreateSingle(float value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateSingle(value, &_ret));
		return _ret;
	}
	static IInspectable CreateDouble(double value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateDouble(value, &_ret));
		return _ret;
	}
	static IInspectable CreateChar16(wchar value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateChar16(value, &_ret));
		return _ret;
	}
	static IInspectable CreateBoolean(bool value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateBoolean(value, &_ret));
		return _ret;
	}
	static IInspectable CreateString(HSTRING value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateString(value, &_ret));
		return _ret;
	}
	static IInspectable CreateInspectable(IInspectable value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateInspectable(value, &_ret));
		return _ret;
	}
	static IInspectable CreateGuid(GUID value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateGuid(value, &_ret));
		return _ret;
	}
	static IInspectable CreateDateTime(Windows.Foundation.DateTime value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateDateTime(value, &_ret));
		return _ret;
	}
	static IInspectable CreateTimeSpan(Windows.Foundation.TimeSpan value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateTimeSpan(value, &_ret));
		return _ret;
	}
	static IInspectable CreatePoint(Windows.Foundation.Point value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreatePoint(value, &_ret));
		return _ret;
	}
	static IInspectable CreateSize(Windows.Foundation.Size value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateSize(value, &_ret));
		return _ret;
	}
	static IInspectable CreateRect(Windows.Foundation.Rect value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateRect(value, &_ret));
		return _ret;
	}
	static IInspectable CreateUInt8Array(UINT32 __valueSize, ubyte* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateUInt8Array(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateInt16Array(UINT32 __valueSize, INT16* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateInt16Array(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateUInt16Array(UINT32 __valueSize, UINT16* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateUInt16Array(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateInt32Array(UINT32 __valueSize, INT32* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateInt32Array(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateUInt32Array(UINT32 __valueSize, UINT32* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateUInt32Array(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateInt64Array(UINT32 __valueSize, INT64* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateInt64Array(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateUInt64Array(UINT32 __valueSize, ulong* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateUInt64Array(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateSingleArray(UINT32 __valueSize, float* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateSingleArray(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateDoubleArray(UINT32 __valueSize, double* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateDoubleArray(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateChar16Array(UINT32 __valueSize, wchar* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateChar16Array(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateBooleanArray(UINT32 __valueSize, bool* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateBooleanArray(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateStringArray(UINT32 __valueSize, HSTRING* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateStringArray(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateInspectableArray(UINT32 __valueSize, IInspectable* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateInspectableArray(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateGuidArray(UINT32 __valueSize, GUID* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateGuidArray(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateDateTimeArray(UINT32 __valueSize, Windows.Foundation.DateTime* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateDateTimeArray(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateTimeSpanArray(UINT32 __valueSize, Windows.Foundation.TimeSpan* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateTimeSpanArray(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreatePointArray(UINT32 __valueSize, Windows.Foundation.Point* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreatePointArray(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateSizeArray(UINT32 __valueSize, Windows.Foundation.Size* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateSizeArray(__valueSize, value, &_ret));
		return _ret;
	}
	static IInspectable CreateRectArray(UINT32 __valueSize, Windows.Foundation.Rect* value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_CreateRectArray(__valueSize, value, &_ret));
		return _ret;
	}
}

interface Uri : Windows.Foundation.IUriRuntimeClass, Windows.Foundation.IUriRuntimeClassWithAbsoluteCanonicalUri, Windows.Foundation.IStringable
{
extern(Windows):
	final HSTRING AbsoluteUri()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_AbsoluteUri(&_ret));
		return _ret;
	}
	final HSTRING DisplayUri()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_DisplayUri(&_ret));
		return _ret;
	}
	final HSTRING Domain()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_Domain(&_ret));
		return _ret;
	}
	final HSTRING Extension()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_Extension(&_ret));
		return _ret;
	}
	final HSTRING Fragment()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_Fragment(&_ret));
		return _ret;
	}
	final HSTRING Host()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_Host(&_ret));
		return _ret;
	}
	final HSTRING Password()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_Password(&_ret));
		return _ret;
	}
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_Path(&_ret));
		return _ret;
	}
	final HSTRING Query()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_Query(&_ret));
		return _ret;
	}
	final Windows.Foundation.WwwFormUrlDecoder QueryParsed()
	{
		Windows.Foundation.WwwFormUrlDecoder _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_QueryParsed(&_ret));
		return _ret;
	}
	final HSTRING RawUri()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_RawUri(&_ret));
		return _ret;
	}
	final HSTRING SchemeName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_SchemeName(&_ret));
		return _ret;
	}
	final HSTRING UserName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_UserName(&_ret));
		return _ret;
	}
	final INT32 Port()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_Port(&_ret));
		return _ret;
	}
	final bool Suspicious()
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).get_Suspicious(&_ret));
		return _ret;
	}
	final bool Equals(Windows.Foundation.Uri pUri)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).abi_Equals(pUri, &_ret));
		return _ret;
	}
	final Windows.Foundation.Uri CombineUri(HSTRING relativeUri)
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClass)this.asInterface(uuid("9e365e57-48b2-4160-956f-c7385120bbfc"))).abi_CombineUri(relativeUri, &_ret));
		return _ret;
	}
	final HSTRING AbsoluteCanonicalUri()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClassWithAbsoluteCanonicalUri)this.asInterface(uuid("758d9661-221c-480f-a339-50656673f46f"))).get_AbsoluteCanonicalUri(&_ret));
		return _ret;
	}
	final HSTRING DisplayIri()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClassWithAbsoluteCanonicalUri)this.asInterface(uuid("758d9661-221c-480f-a339-50656673f46f"))).get_DisplayIri(&_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IStringable)this.asInterface(uuid("96369f54-8eb6-48f0-abce-c1b211e627c3"))).abi_ToString(&_ret));
		return _ret;
	}

	private static Windows.Foundation.IUriEscapeStatics _staticInstance;
	public static Windows.Foundation.IUriEscapeStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Foundation.IUriEscapeStatics);
		return _staticInstance;
	}
	static HSTRING UnescapeComponent(HSTRING toUnescape)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_UnescapeComponent(toUnescape, &_ret));
		return _ret;
	}
	static HSTRING EscapeComponent(HSTRING toEscape)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_EscapeComponent(toEscape, &_ret));
		return _ret;
	}
	static Windows.Foundation.Uri New(HSTRING uri)
	{
		auto factory = factory!(Windows.Foundation.IUriRuntimeClassFactory);
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClassFactory)factory.asInterface(uuid("44a9796f-723e-4fdf-a218-033e75b0c084"))).abi_CreateUri(uri, &_ret));
		return _ret;
	}
	static Windows.Foundation.Uri New(HSTRING baseUri, HSTRING relativeUri)
	{
		auto factory = factory!(Windows.Foundation.IUriRuntimeClassFactory);
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Foundation.IUriRuntimeClassFactory)factory.asInterface(uuid("44a9796f-723e-4fdf-a218-033e75b0c084"))).abi_CreateWithRelativeUri(baseUri, relativeUri, &_ret));
		return _ret;
	}
}

interface WwwFormUrlDecoder : Windows.Foundation.IWwwFormUrlDecoderRuntimeClass, Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry), Windows.Foundation.Collections.IIterable!(Windows.Foundation.IWwwFormUrlDecoderEntry)
{
extern(Windows):
	final HSTRING GetFirstValueByName(HSTRING name)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IWwwFormUrlDecoderRuntimeClass)this.asInterface(uuid("d45a0451-f225-4542-9296-0e1df5d254df"))).abi_GetFirstValueByName(name, &_ret));
		return _ret;
	}
	final void GetAt(uint index, Windows.Foundation.IWwwFormUrlDecoderEntry* out_item)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry))this).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry))this).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Foundation.IWwwFormUrlDecoderEntry value, bool* out_found)
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry))this).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Foundation.IWwwFormUrlDecoderEntry* out_value, uint* out_actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry))this).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.IWwwFormUrlDecoderEntry))this).abi_First(out_first));
	}
	static Windows.Foundation.WwwFormUrlDecoder New(HSTRING query)
	{
		auto factory = factory!(Windows.Foundation.IWwwFormUrlDecoderRuntimeClassFactory);
		Windows.Foundation.WwwFormUrlDecoder _ret;
		Debug.OK((cast(Windows.Foundation.IWwwFormUrlDecoderRuntimeClassFactory)factory.asInterface(uuid("5b8c6b3d-24ae-41b5-a1bf-f0c3d544845b"))).abi_CreateWwwFormUrlDecoder(query, &_ret));
		return _ret;
	}
}

interface WwwFormUrlDecoderEntry : Windows.Foundation.IWwwFormUrlDecoderEntry
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IWwwFormUrlDecoderEntry)this.asInterface(uuid("125e7431-f678-4e8e-b670-20a9b06c512d"))).get_Name(&_ret));
		return _ret;
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.IWwwFormUrlDecoderEntry)this.asInterface(uuid("125e7431-f678-4e8e-b670-20a9b06c512d"))).get_Value(&_ret));
		return _ret;
	}
}

enum PropertyType
{
	Empty = 0,
	UInt8 = 1,
	Int16 = 2,
	UInt16 = 3,
	Int32 = 4,
	UInt32 = 5,
	Int64 = 6,
	UInt64 = 7,
	Single = 8,
	Double = 9,
	Char16 = 10,
	Boolean = 11,
	String = 12,
	Inspectable = 13,
	DateTime = 14,
	TimeSpan = 15,
	Guid = 16,
	Point = 17,
	Size = 18,
	Rect = 19,
	OtherType = 20,
	UInt8Array = 1025,
	Int16Array = 1026,
	UInt16Array = 1027,
	Int32Array = 1028,
	UInt32Array = 1029,
	Int64Array = 1030,
	UInt64Array = 1031,
	SingleArray = 1032,
	DoubleArray = 1033,
	Char16Array = 1034,
	BooleanArray = 1035,
	StringArray = 1036,
	InspectableArray = 1037,
	DateTimeArray = 1038,
	TimeSpanArray = 1039,
	GuidArray = 1040,
	PointArray = 1041,
	SizeArray = 1042,
	RectArray = 1043,
	OtherTypeArray = 1044
}
struct ComCallData
{
	DWORD dwDispid;
	DWORD dwReserved;
	void* pUserDefined;
}

alias ContextCallbackCallback = extern (Windows) HRESULT function(ComCallData* pParam);

@uuid("000001da-0000-0000-c000-000000000046")
interface IContextCallback : IUnknown
{
extern (Windows):
	HRESULT ContextCallback(ContextCallbackCallback pCallback,
			ComCallData* pParam, REFIID riid, int iMethod, IUnknown* pUnk);
}

struct AwaitAdapter(Async) if (IsAsync!Async)
{
	Async async;
	private void delegate() callback = null;

	bool await_ready() const
	{
		return async.Status == AsyncStatus.Completed;
	}

	void await_suspend(void delegate() f)
	{
		if (callback !is null)
			assert(false, "Can't await multiple times on one object");

		callback = f;
		IContextCallback context;
		Debug.OK(CoGetObjectContext(uuidOf!IContextCallback, cast(void**)&context));

		async.Completed = (result, status) {
			ComCallData data;
			data.pUserDefined = cast(void*)&callback;

			ContextCallbackCallback cb = (data) {
				(*cast(void delegate()*) data.pUserDefined)();
				return S_OK;
			};

			Debug.OK(context.ContextCallback(cb, &data,
				IID_ICallbackWithNoReentrancyToApplicationSTA, 5, null));
		};
	}

	auto await_resume() const
	{
		return async.GetResults;
	}
}

AwaitAdapter!Async await(Async)(auto ref Async async) if (IsAsync!Async)
{
	return AwaitAdapter!Async(async);
}

enum IsAsync(T) = is(T == struct) && __traits(compiles, {
		T async;
		AsyncStatus status = async.Status;
		async.Completed((AsyncStatus) {  });
		auto res = async.GetResults;
		static assert(!is(typeof(res) == void));
	});
