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
	USHORT usMajorVersion;
	USHORT usMinorVersion;
	USHORT usBuildNumber;
	USHORT usRevisionNumber;
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
	FLOAT X;
	FLOAT Y;
}

struct Rect
{
	FLOAT X;
	FLOAT Y;
	FLOAT Width;
	FLOAT Height;
}

struct Size
{
	FLOAT Width;
	FLOAT Height;
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
		Debug.OK(this.as!(Windows.Foundation.EventHandler!(TArgs)).abi_Invoke(sender, args));
	}
}

interface TypedEventHandler(TSender, TArgs) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(TSender sender, TArgs args);
	final void Invoke(TSender sender, TArgs args)
	{
		Debug.OK(this.as!(Windows.Foundation.TypedEventHandler!(TSender, TArgs)).abi_Invoke(sender, args));
	}
}

interface IAsyncActionWithProgress(TProgress) : IInspectable
{
extern(Windows):
	HRESULT set_Progress(Windows.Foundation.AsyncActionProgressHandler!(TProgress) handler);
	HRESULT get_Progress(Windows.Foundation.AsyncActionProgressHandler!(TProgress)* return_handler);
	final void Progress(Windows.Foundation.AsyncActionProgressHandler!(TProgress) handler)
	{
		Debug.OK(this.as!(Windows.Foundation.IAsyncActionWithProgress!(TProgress)).set_Progress(handler));
	}
	final Windows.Foundation.AsyncActionProgressHandler!(TProgress) Progress()
	{
		Windows.Foundation.AsyncActionProgressHandler!(TProgress) _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncActionWithProgress!(TProgress)).get_Progress(&_ret));
		return _ret;
	}
}

interface AsyncActionProgressHandler(TProgress) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncActionWithProgress!(TProgress) asyncInfo, TProgress progressInfo);
	final void Invoke(Windows.Foundation.IAsyncActionWithProgress!(TProgress) asyncInfo, TProgress progressInfo)
	{
		Debug.OK(this.as!(Windows.Foundation.AsyncActionProgressHandler!(TProgress)).abi_Invoke(asyncInfo, progressInfo));
	}
}

interface AsyncActionWithProgressCompletedHandler(TProgress) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncActionWithProgress!(TProgress) asyncInfo, AsyncStatus status);
	final void Invoke(Windows.Foundation.IAsyncActionWithProgress!(TProgress) asyncInfo, AsyncStatus status)
	{
		Debug.OK(this.as!(Windows.Foundation.AsyncActionWithProgressCompletedHandler!(TProgress)).abi_Invoke(asyncInfo, status));
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
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(TResult)).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationCompletedHandler!(TResult) Completed()
	{
		Windows.Foundation.AsyncOperationCompletedHandler!(TResult) _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(TResult)).get_Completed(&_ret));
		return _ret;
	}
	final TResult Results()
	{
		TResult _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(TResult)).get_Results(&_ret));
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
		Debug.OK(this.as!(Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress)).abi_Invoke(asyncInfo, progressInfo));
	}
}

interface AsyncOperationCompletedHandler(TResult) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncOperation!(TResult) asyncInfo, AsyncStatus status);
	final void Invoke(Windows.Foundation.IAsyncOperation!(TResult) asyncInfo, AsyncStatus status)
	{
		Debug.OK(this.as!(Windows.Foundation.AsyncOperationCompletedHandler!(TResult)).abi_Invoke(asyncInfo, status));
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
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress)).set_Progress(handler));
	}
	final Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress) Progress()
	{
		Windows.Foundation.AsyncOperationProgressHandler!(TResult, TProgress) _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress)).get_Progress(&_ret));
		return _ret;
	}
	final void Completed(Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress) handler)
	{
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress)).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress) Completed()
	{
		Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress) _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress)).get_Completed(&_ret));
		return _ret;
	}
	final TResult Results()
	{
		TResult _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress)).get_Results(&_ret));
		return _ret;
	}
}

interface AsyncOperationWithProgressCompletedHandler(TResult, TProgress) : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress) asyncInfo, AsyncStatus status);
	final void Invoke(Windows.Foundation.IAsyncOperationWithProgress!(TResult, TProgress) asyncInfo, AsyncStatus status)
	{
		Debug.OK(this.as!(Windows.Foundation.AsyncOperationWithProgressCompletedHandler!(TResult, TProgress)).abi_Invoke(asyncInfo, status));
	}
}

interface IReference(Type) : IUnknown
{
extern(Windows):
	HRESULT get_Value(Type* return_value);
	final Type Value()
	{
		Type _ret;
		Debug.OK(this.as!(Windows.Foundation.IReference!(Type)).get_Value(&_ret));
		return _ret;
	}
}

@uuid("45d64a29-a63e-4cb6-b498-5781d298cb4f")
interface ICoreWindowInterop : IUnknown
{
extern(Windows):
	HRESULT get_WindowHandle(HWND* return_hwnd);
	HRESULT set_MessageHandled(bool value);
}

@uuid("40bfe3e3-b75a-4479-ac96-475365749bb8")
interface ICoreInputInterop : IUnknown
{
extern(Windows):
	HRESULT abi_SetInputSource(IUnknown value);
	HRESULT set_MessageHandled(bool value);
}

@uuid("0576ab31-a310-4c40-ba31-fd37e0298dfa")
interface ICoreWindowComponentInterop : IUnknown
{
extern(Windows):
	HRESULT abi_ConfigureComponentInput(UINT32 hostViewInstanceId, HWND hwndHost, IUnknown inputSourceVisual);
	HRESULT abi_GetViewInstanceId(UINT32* out_componentViewInstanceId);
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
	HRESULT abi_GetRow(ULONG ixTbl, ULONG rid, const(BYTE)* out_ppRow);
	HRESULT abi_GetColumn(ULONG ixTbl, ULONG ixCol, ULONG rid, ULONG* out_pVal);
	HRESULT abi_GetString(ULONG ixString, LPCSTR* out_ppString);
	HRESULT abi_GetBlob(ULONG ixBlob, ULONG* out_pcbData, const(BYTE)** out_ppData);
	HRESULT abi_GetGuid(ULONG ixGuid, const(GUID)** out_ppGUID);
	HRESULT abi_GetUserString(ULONG ixUserString, ULONG* out_pcbData, const(BYTE)** out_ppData);
	HRESULT abi_GetNextString(ULONG ixString, ULONG* out_pNext);
	HRESULT abi_GetNextBlob(ULONG ixBlob, ULONG* out_pNext);
	HRESULT abi_GetNextGuid(ULONG ixGuid, ULONG* out_pNext);
	HRESULT abi_GetNextUserString(ULONG ixUserString, ULONG* out_pNext);
}

@uuid("badb5f70-58da-43a9-a1c6-d74819f19b15")
interface IMetaDataTables2 : IMetaDataTables
{
extern(Windows):
	HRESULT abi_GetMetaDataStorage(const(BYTE)** out_ppvMd, ULONG* out_pcbMd);
	HRESULT abi_GetMetaDataStreamInfo(ULONG ix, LPCSTR* out_ppchName, const(BYTE)** out_ppv, ULONG* out_pcb);
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

@uuid("7c3f6998-1567-4bba-b52b-48d32141d613")
interface IWebApplicationScriptEvents : IUnknown
{
extern(Windows):
	/// "Fired before any script is executed on the page."
	HRESULT abi_BeforeScriptExecute(IHTMLWindow2* htmlWindow);
	/// "Fired when an unhandled script error occurs."
	HRESULT abi_ScriptError(IHTMLWindow2* htmlWindow, IActiveScriptError* scriptError, LPCWSTR url, BOOL errorHandled);
}

@uuid("c22615d2-d318-4da2-8422-1fcaf77b10e4")
interface IWebApplicationNavigationEvents : IUnknown
{
extern(Windows):
	/// "Fired before navigate occurs in the given host (window or frameset element)."
	HRESULT abi_BeforeNavigate(IHTMLWindow2* htmlWindow, LPCWSTR url, DWORD navigationFlags, LPCWSTR targetFrameName);
	/// "Fired when the document being navigated to becomes visible and enters the navigation stack."
	HRESULT abi_NavigateComplete(IHTMLWindow2* htmlWindow, LPCWSTR url);
	/// "Fired when a binding error occurs (window or frameset element)."
	HRESULT abi_NavigateError(IHTMLWindow2* htmlWindow, LPCWSTR url, LPCWSTR targetFrameName, DWORD statusCode);
	/// "Fired when the document being navigated to reaches ReadyState_Complete."
	HRESULT abi_DocumentComplete(IHTMLWindow2* htmlWindow, LPCWSTR url);
	/// "Download of a page started."
	HRESULT abi_DownloadBegin();
	/// "Download of a page has completed."
	HRESULT abi_DownloadComplete();
}

@uuid("5b2b3f99-328c-41d5-a6f7-7483ed8e71dd")
interface IWebApplicationUIEvents : IUnknown
{
extern(Windows):
	/// "Notifies the authoring application about an authentication problem."
	HRESULT abi_SecurityProblem(DWORD securityProblem, HRESULT* out_result);
}

@uuid("3e59e6b7-c652-4daf-ad5e-16feb350cde3")
interface IWebApplicationUpdateEvents : IUnknown
{
extern(Windows):
	/// "Notifies the authoring application about Paint surface modifications."
	HRESULT abi_OnPaint();
	/// "Notifies the authoring application about CSS changes."
	HRESULT abi_OnCssChanged();
}

@uuid("cecbd2c3-a3a5-4749-9681-20e9161c6794")
interface IWebApplicationHost : IUnknown
{
extern(Windows):
	/// "Returns the HWND of the current WWAHost window."
	HRESULT get_HWND(HWND* return_hwnd);
	/// "Returns the HTML Document Object Model."
	HRESULT get_Document(IHTMLDocument2** return_htmlDocument);
	/// "Refresh the current document without sending a 'Pragma:no-cache' HTTP header to the server"
	HRESULT abi_Refresh();
	/// "Establishes a connection to allow a client to receive events."
	HRESULT abi_Advise(REFIID interfaceId, IUnknown callback, DWORD* out_cookie);
	/// "Removes a previously established connection."
	HRESULT abi_Unadvise(DWORD cookie);
}

@uuid("bcdcd0de-330e-481b-b843-4898a6a8ebac")
interface IWebApplicationActivation : IUnknown
{
extern(Windows):
	/// "Cancels a pending activation."
	HRESULT abi_CancelPendingActivation();
}

@uuid("720aea93-1964-4db0-b005-29eb9e2b18a9")
interface IWebApplicationAuthoringMode : IServiceProvider
{
extern(Windows):
	/// "Gets the full local path to a DLL that will be loaded into the WWAHost process."
	HRESULT get_AuthoringClientBinary(BSTR* return_designModeDllPath);
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
		Debug.OK(this.as!(IAsyncAction).get_Completed(&ret));
		return ret;
	}
	final void Completed(Windows.Foundation.AsyncActionCompletedHandler handler)
	{
		Debug.OK(this.as!(IAsyncAction).set_Completed(handler));
	}
}
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
interface IMemoryBufferReference : IMemoryBufferReference_Base, Windows.Foundation.IClosable {}

@uuid("4bd682dd-7554-40e9-9a9b-82654ede7e62")
interface IPropertyValue : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.Foundation.PropertyType* return_value);
	HRESULT get_IsNumericScalar(bool* return_value);
	HRESULT abi_GetUInt8(BYTE* return_value);
	HRESULT abi_GetInt16(INT16* return_value);
	HRESULT abi_GetUInt16(UINT16* return_value);
	HRESULT abi_GetInt32(INT32* return_value);
	HRESULT abi_GetUInt32(UINT32* return_value);
	HRESULT abi_GetInt64(INT64* return_value);
	HRESULT abi_GetUInt64(UINT64* return_value);
	HRESULT abi_GetSingle(FLOAT* return_value);
	HRESULT abi_GetDouble(double* return_value);
	HRESULT abi_GetChar16(WCHAR* return_value);
	HRESULT abi_GetBoolean(bool* return_value);
	HRESULT abi_GetString(HSTRING* return_value);
	HRESULT abi_GetGuid(GUID* return_value);
	HRESULT abi_GetDateTime(Windows.Foundation.DateTime* return_value);
	HRESULT abi_GetTimeSpan(Windows.Foundation.TimeSpan* return_value);
	HRESULT abi_GetPoint(Windows.Foundation.Point* return_value);
	HRESULT abi_GetSize(Windows.Foundation.Size* return_value);
	HRESULT abi_GetRect(Windows.Foundation.Rect* return_value);
	HRESULT abi_GetUInt8Array(UINT32* out___valueSize, BYTE** out_value);
	HRESULT abi_GetInt16Array(UINT32* out___valueSize, INT16** out_value);
	HRESULT abi_GetUInt16Array(UINT32* out___valueSize, UINT16** out_value);
	HRESULT abi_GetInt32Array(UINT32* out___valueSize, INT32** out_value);
	HRESULT abi_GetUInt32Array(UINT32* out___valueSize, UINT32** out_value);
	HRESULT abi_GetInt64Array(UINT32* out___valueSize, INT64** out_value);
	HRESULT abi_GetUInt64Array(UINT32* out___valueSize, UINT64** out_value);
	HRESULT abi_GetSingleArray(UINT32* out___valueSize, FLOAT** out_value);
	HRESULT abi_GetDoubleArray(UINT32* out___valueSize, double** out_value);
	HRESULT abi_GetChar16Array(UINT32* out___valueSize, WCHAR** out_value);
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
	HRESULT abi_CreateUInt8(BYTE value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt16(INT16 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt16(UINT16 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt32(INT32 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt32(UINT32 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt64(INT64 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt64(UINT64 value, IInspectable* return_propertyValue);
	HRESULT abi_CreateSingle(FLOAT value, IInspectable* return_propertyValue);
	HRESULT abi_CreateDouble(double value, IInspectable* return_propertyValue);
	HRESULT abi_CreateChar16(WCHAR value, IInspectable* return_propertyValue);
	HRESULT abi_CreateBoolean(bool value, IInspectable* return_propertyValue);
	HRESULT abi_CreateString(HSTRING value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInspectable(IInspectable value, IInspectable* return_propertyValue);
	HRESULT abi_CreateGuid(GUID value, IInspectable* return_propertyValue);
	HRESULT abi_CreateDateTime(Windows.Foundation.DateTime value, IInspectable* return_propertyValue);
	HRESULT abi_CreateTimeSpan(Windows.Foundation.TimeSpan value, IInspectable* return_propertyValue);
	HRESULT abi_CreatePoint(Windows.Foundation.Point value, IInspectable* return_propertyValue);
	HRESULT abi_CreateSize(Windows.Foundation.Size value, IInspectable* return_propertyValue);
	HRESULT abi_CreateRect(Windows.Foundation.Rect value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt8Array(UINT32 __valueSize, BYTE* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt16Array(UINT32 __valueSize, INT16* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt16Array(UINT32 __valueSize, UINT16* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt32Array(UINT32 __valueSize, INT32* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt32Array(UINT32 __valueSize, UINT32* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateInt64Array(UINT32 __valueSize, INT64* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateUInt64Array(UINT32 __valueSize, UINT64* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateSingleArray(UINT32 __valueSize, FLOAT* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateDoubleArray(UINT32 __valueSize, double* value, IInspectable* return_propertyValue);
	HRESULT abi_CreateChar16Array(UINT32 __valueSize, WCHAR* value, IInspectable* return_propertyValue);
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
		Debug.OK(this.as!(Windows.Foundation.IDeferral).abi_Complete());
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface MemoryBuffer : Windows.Foundation.IMemoryBuffer, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IMemoryBufferReference CreateReference()
	{
		Windows.Foundation.IMemoryBufferReference _ret;
		Debug.OK(this.as!(Windows.Foundation.IMemoryBuffer).abi_CreateReference(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface PropertyValue
{
}

interface Uri : Windows.Foundation.IUriRuntimeClass, Windows.Foundation.IUriRuntimeClassWithAbsoluteCanonicalUri, Windows.Foundation.IStringable
{
extern(Windows):
	final HSTRING AbsoluteUri()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_AbsoluteUri(&_ret));
		return _ret;
	}
	final HSTRING DisplayUri()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_DisplayUri(&_ret));
		return _ret;
	}
	final HSTRING Domain()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_Domain(&_ret));
		return _ret;
	}
	final HSTRING Extension()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_Extension(&_ret));
		return _ret;
	}
	final HSTRING Fragment()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_Fragment(&_ret));
		return _ret;
	}
	final HSTRING Host()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_Host(&_ret));
		return _ret;
	}
	final HSTRING Password()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_Password(&_ret));
		return _ret;
	}
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_Path(&_ret));
		return _ret;
	}
	final HSTRING Query()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_Query(&_ret));
		return _ret;
	}
	final Windows.Foundation.WwwFormUrlDecoder QueryParsed()
	{
		Windows.Foundation.WwwFormUrlDecoder _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_QueryParsed(&_ret));
		return _ret;
	}
	final HSTRING RawUri()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_RawUri(&_ret));
		return _ret;
	}
	final HSTRING SchemeName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_SchemeName(&_ret));
		return _ret;
	}
	final HSTRING UserName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_UserName(&_ret));
		return _ret;
	}
	final INT32 Port()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_Port(&_ret));
		return _ret;
	}
	final bool Suspicious()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).get_Suspicious(&_ret));
		return _ret;
	}
	final bool Equals(Windows.Foundation.Uri pUri)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).abi_Equals(pUri, &_ret));
		return _ret;
	}
	final Windows.Foundation.Uri CombineUri(HSTRING relativeUri)
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClass).abi_CombineUri(relativeUri, &_ret));
		return _ret;
	}
	final HSTRING AbsoluteCanonicalUri()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClassWithAbsoluteCanonicalUri).get_AbsoluteCanonicalUri(&_ret));
		return _ret;
	}
	final HSTRING DisplayIri()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IUriRuntimeClassWithAbsoluteCanonicalUri).get_DisplayIri(&_ret));
		return _ret;
	}
	final HSTRING ToString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IStringable).abi_ToString(&_ret));
		return _ret;
	}
}

interface WwwFormUrlDecoder : Windows.Foundation.IWwwFormUrlDecoderRuntimeClass, Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry), Windows.Foundation.Collections.IIterable!(Windows.Foundation.IWwwFormUrlDecoderEntry)
{
extern(Windows):
	final HSTRING GetFirstValueByName(HSTRING name)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IWwwFormUrlDecoderRuntimeClass).abi_GetFirstValueByName(name, &_ret));
		return _ret;
	}
	final void GetAt(uint index, Windows.Foundation.IWwwFormUrlDecoderEntry* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Foundation.IWwwFormUrlDecoderEntry value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Foundation.IWwwFormUrlDecoderEntry* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.IWwwFormUrlDecoderEntry)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.IWwwFormUrlDecoderEntry)).abi_First(out_first));
	}
}

interface WwwFormUrlDecoderEntry : Windows.Foundation.IWwwFormUrlDecoderEntry
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IWwwFormUrlDecoderEntry).get_Name(&_ret));
		return _ret;
	}
	final HSTRING Value()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Foundation.IWwwFormUrlDecoderEntry).get_Value(&_ret));
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
