module Windows.Foundation.Diagnostics;

import dwinrt;

@uuid("50850b26-267e-451b-a890-ab6a370245ee")
@WinrtFactory("Windows.Foundation.Diagnostics.AsyncCausalityTracer")
interface IAsyncCausalityTracerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TraceOperationCreation(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, UINT64 operationId, HSTRING operationName, UINT64 relatedContext);
	HRESULT abi_TraceOperationCompletion(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, UINT64 operationId, AsyncStatus status);
	HRESULT abi_TraceOperationRelation(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, UINT64 operationId, Windows.Foundation.Diagnostics.CausalityRelation relation);
	HRESULT abi_TraceSynchronousWorkStart(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, UINT64 operationId, Windows.Foundation.Diagnostics.CausalitySynchronousWork work);
	HRESULT abi_TraceSynchronousWorkCompletion(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, Windows.Foundation.Diagnostics.CausalitySynchronousWork work);
	HRESULT add_TracingStatusChanged(Windows.Foundation.EventHandler!(Windows.Foundation.Diagnostics.TracingStatusChangedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_TracingStatusChanged(EventRegistrationToken cookie);
}

@uuid("378cbb01-2cc9-428f-8c55-2c990d463e8f")
@WinrtFactory("Windows.Foundation.Diagnostics.ErrorDetails")
interface IErrorDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_LongDescription(HSTRING* return_value);
	HRESULT get_HelpUri(Windows.Foundation.Uri* return_value);
}

@uuid("b7703750-0b1d-46c8-aa0e-4b8178e4fce9")
@WinrtFactory("Windows.Foundation.Diagnostics.ErrorDetails")
interface IErrorDetailsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromHResultAsync(INT32 errorCode, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Diagnostics.ErrorDetails)* return_operation);
}

@uuid("16369792-b03e-4ba1-8bb8-d28f4ab4d2c0")
interface IErrorReportingSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetErrorOptions(Windows.Foundation.Diagnostics.ErrorOptions value);
	HRESULT abi_GetErrorOptions(Windows.Foundation.Diagnostics.ErrorOptions* return_value);
}

@uuid("24c74216-fed2-404c-895f-1f9699cb02f7")
interface IFileLoggingSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_AddLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel);
	HRESULT abi_AddLoggingChannelWithLevel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingLevel maxLevel);
	HRESULT abi_RemoveLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel);
	HRESULT abi_CloseAndSaveToFileAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT add_LogFileGenerated(Windows.Foundation.TypedEventHandler!(Windows.Foundation.Diagnostics.IFileLoggingSession, Windows.Foundation.Diagnostics.LogFileGeneratedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_LogFileGenerated(EventRegistrationToken token);
}

@uuid("eea08dce-8447-4daa-9133-12eb46f697d4")
@WinrtFactory("Windows.Foundation.Diagnostics.FileLoggingSession")
interface IFileLoggingSessionFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING name, Windows.Foundation.Diagnostics.FileLoggingSession* return_result);
}

@uuid("269e976f-0d38-4c1a-b53f-b395d881df84")
@WinrtFactory("Windows.Foundation.Diagnostics.LogFileGeneratedEventArgs")
interface ILogFileGeneratedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_File(Windows.Storage.StorageFile* return_value);
}

@uuid("bc032941-b766-4cb5-9848-97ac6ba6d60c")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingActivity")
interface ILoggingActivity : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Id(GUID* return_value);
}

@uuid("26c29808-6322-456a-af82-80c8642f178b")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingActivity")
interface ILoggingActivity2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Channel(Windows.Foundation.Diagnostics.LoggingChannel* return_value);
	HRESULT abi_StopActivity(HSTRING stopEventName);
	HRESULT abi_StopActivityWithFields(HSTRING stopEventName, Windows.Foundation.Diagnostics.LoggingFields fields);
	HRESULT abi_StopActivityWithFieldsAndOptions(HSTRING stopEventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingOptions options);
}

@uuid("6b33b483-e10a-4c58-97d5-10fb451074fb")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingActivity")
interface ILoggingActivityFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateLoggingActivity(HSTRING activityName, Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingActivity* return_loggingActivity);
	HRESULT abi_CreateLoggingActivityWithLevel(HSTRING activityName, Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingLevel level, Windows.Foundation.Diagnostics.LoggingActivity* return_loggingActivity);
}

@uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8")
interface ILoggingChannel : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Enabled(bool* return_value);
	HRESULT get_Level(Windows.Foundation.Diagnostics.LoggingLevel* return_value);
	HRESULT abi_LogMessage(HSTRING eventString);
	HRESULT abi_LogMessageWithLevel(HSTRING eventString, Windows.Foundation.Diagnostics.LoggingLevel level);
	HRESULT abi_LogValuePair(HSTRING value1, INT32 value2);
	HRESULT abi_LogValuePairWithLevel(HSTRING value1, INT32 value2, Windows.Foundation.Diagnostics.LoggingLevel level);
	HRESULT add_LoggingEnabled(Windows.Foundation.TypedEventHandler!(Windows.Foundation.Diagnostics.ILoggingChannel, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_LoggingEnabled(EventRegistrationToken token);
}

@uuid("9f4c3cf3-0bac-45a5-9e33-baf3f3a246a5")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannel")
interface ILoggingChannel2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(GUID* return_value);
}

@uuid("4edc5b9c-af80-4a9b-b0dc-398f9ae5207b")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannel")
interface ILoggingChannelFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("This constructor creates a LoggingChannel in Windows 8.1 compatibility mode. Prefer the two-parameter constructor.")
	HRESULT abi_Create(HSTRING name, Windows.Foundation.Diagnostics.LoggingChannel* return_result);
}

@uuid("4c6ef5dd-3b27-4dc9-99f0-299c6e4603a1")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannel")
interface ILoggingChannelFactory2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithOptions(HSTRING name, Windows.Foundation.Diagnostics.LoggingChannelOptions options, Windows.Foundation.Diagnostics.LoggingChannel* return_result);
	HRESULT abi_CreateWithOptionsAndId(HSTRING name, Windows.Foundation.Diagnostics.LoggingChannelOptions options, GUID id, Windows.Foundation.Diagnostics.LoggingChannel* return_result);
}

@uuid("c3e847ff-0ebb-4a53-8c54-dec24926cb2c")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannelOptions")
interface ILoggingChannelOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Group(GUID* return_value);
	HRESULT set_Group(GUID value);
}

@uuid("a93151da-7faf-4191-8755-5e86dc65d896")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannelOptions")
interface ILoggingChannelOptionsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(GUID group, Windows.Foundation.Diagnostics.LoggingChannelOptions* return_result);
}

@uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingFields")
interface ILoggingFields : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Clear();
	HRESULT abi_BeginStruct(HSTRING name);
	HRESULT abi_BeginStructWithTags(HSTRING name, INT32 tags);
	HRESULT abi_EndStruct();
	HRESULT abi_AddEmpty(HSTRING name);
	HRESULT abi_AddEmptyWithFormat(HSTRING name, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddEmptyWithFormatAndTags(HSTRING name, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt8(HSTRING name, BYTE value);
	HRESULT abi_AddUInt8WithFormat(HSTRING name, BYTE value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt8WithFormatAndTags(HSTRING name, BYTE value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt8Array(HSTRING name, UINT32 __valueSize, BYTE* value);
	HRESULT abi_AddUInt8ArrayWithFormat(HSTRING name, UINT32 __valueSize, BYTE* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt8ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, BYTE* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddInt16(HSTRING name, INT16 value);
	HRESULT abi_AddInt16WithFormat(HSTRING name, INT16 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddInt16WithFormatAndTags(HSTRING name, INT16 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddInt16Array(HSTRING name, UINT32 __valueSize, INT16* value);
	HRESULT abi_AddInt16ArrayWithFormat(HSTRING name, UINT32 __valueSize, INT16* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddInt16ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, INT16* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt16(HSTRING name, UINT16 value);
	HRESULT abi_AddUInt16WithFormat(HSTRING name, UINT16 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt16WithFormatAndTags(HSTRING name, UINT16 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt16Array(HSTRING name, UINT32 __valueSize, UINT16* value);
	HRESULT abi_AddUInt16ArrayWithFormat(HSTRING name, UINT32 __valueSize, UINT16* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt16ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, UINT16* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddInt32(HSTRING name, INT32 value);
	HRESULT abi_AddInt32WithFormat(HSTRING name, INT32 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddInt32WithFormatAndTags(HSTRING name, INT32 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddInt32Array(HSTRING name, UINT32 __valueSize, INT32* value);
	HRESULT abi_AddInt32ArrayWithFormat(HSTRING name, UINT32 __valueSize, INT32* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddInt32ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, INT32* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt32(HSTRING name, UINT32 value);
	HRESULT abi_AddUInt32WithFormat(HSTRING name, UINT32 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt32WithFormatAndTags(HSTRING name, UINT32 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt32Array(HSTRING name, UINT32 __valueSize, UINT32* value);
	HRESULT abi_AddUInt32ArrayWithFormat(HSTRING name, UINT32 __valueSize, UINT32* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt32ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, UINT32* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddInt64(HSTRING name, INT64 value);
	HRESULT abi_AddInt64WithFormat(HSTRING name, INT64 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddInt64WithFormatAndTags(HSTRING name, INT64 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddInt64Array(HSTRING name, UINT32 __valueSize, INT64* value);
	HRESULT abi_AddInt64ArrayWithFormat(HSTRING name, UINT32 __valueSize, INT64* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddInt64ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, INT64* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt64(HSTRING name, UINT64 value);
	HRESULT abi_AddUInt64WithFormat(HSTRING name, UINT64 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt64WithFormatAndTags(HSTRING name, UINT64 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt64Array(HSTRING name, UINT32 __valueSize, UINT64* value);
	HRESULT abi_AddUInt64ArrayWithFormat(HSTRING name, UINT32 __valueSize, UINT64* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt64ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, UINT64* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddSingle(HSTRING name, FLOAT value);
	HRESULT abi_AddSingleWithFormat(HSTRING name, FLOAT value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddSingleWithFormatAndTags(HSTRING name, FLOAT value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddSingleArray(HSTRING name, UINT32 __valueSize, FLOAT* value);
	HRESULT abi_AddSingleArrayWithFormat(HSTRING name, UINT32 __valueSize, FLOAT* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddSingleArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, FLOAT* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddDouble(HSTRING name, double value);
	HRESULT abi_AddDoubleWithFormat(HSTRING name, double value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddDoubleWithFormatAndTags(HSTRING name, double value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddDoubleArray(HSTRING name, UINT32 __valueSize, double* value);
	HRESULT abi_AddDoubleArrayWithFormat(HSTRING name, UINT32 __valueSize, double* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddDoubleArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, double* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddChar16(HSTRING name, WCHAR value);
	HRESULT abi_AddChar16WithFormat(HSTRING name, WCHAR value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddChar16WithFormatAndTags(HSTRING name, WCHAR value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddChar16Array(HSTRING name, UINT32 __valueSize, WCHAR* value);
	HRESULT abi_AddChar16ArrayWithFormat(HSTRING name, UINT32 __valueSize, WCHAR* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddChar16ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, WCHAR* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddBoolean(HSTRING name, bool value);
	HRESULT abi_AddBooleanWithFormat(HSTRING name, bool value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddBooleanWithFormatAndTags(HSTRING name, bool value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddBooleanArray(HSTRING name, UINT32 __valueSize, bool* value);
	HRESULT abi_AddBooleanArrayWithFormat(HSTRING name, UINT32 __valueSize, bool* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddBooleanArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, bool* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddString(HSTRING name, HSTRING value);
	HRESULT abi_AddStringWithFormat(HSTRING name, HSTRING value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddStringWithFormatAndTags(HSTRING name, HSTRING value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddStringArray(HSTRING name, UINT32 __valueSize, HSTRING* value);
	HRESULT abi_AddStringArrayWithFormat(HSTRING name, UINT32 __valueSize, HSTRING* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddStringArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, HSTRING* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddGuid(HSTRING name, GUID value);
	HRESULT abi_AddGuidWithFormat(HSTRING name, GUID value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddGuidWithFormatAndTags(HSTRING name, GUID value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddGuidArray(HSTRING name, UINT32 __valueSize, GUID* value);
	HRESULT abi_AddGuidArrayWithFormat(HSTRING name, UINT32 __valueSize, GUID* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddGuidArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, GUID* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddDateTime(HSTRING name, Windows.Foundation.DateTime value);
	HRESULT abi_AddDateTimeWithFormat(HSTRING name, Windows.Foundation.DateTime value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddDateTimeWithFormatAndTags(HSTRING name, Windows.Foundation.DateTime value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddDateTimeArray(HSTRING name, UINT32 __valueSize, Windows.Foundation.DateTime* value);
	HRESULT abi_AddDateTimeArrayWithFormat(HSTRING name, UINT32 __valueSize, Windows.Foundation.DateTime* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddDateTimeArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, Windows.Foundation.DateTime* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddTimeSpan(HSTRING name, Windows.Foundation.TimeSpan value);
	HRESULT abi_AddTimeSpanWithFormat(HSTRING name, Windows.Foundation.TimeSpan value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddTimeSpanWithFormatAndTags(HSTRING name, Windows.Foundation.TimeSpan value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddTimeSpanArray(HSTRING name, UINT32 __valueSize, Windows.Foundation.TimeSpan* value);
	HRESULT abi_AddTimeSpanArrayWithFormat(HSTRING name, UINT32 __valueSize, Windows.Foundation.TimeSpan* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddTimeSpanArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, Windows.Foundation.TimeSpan* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddPoint(HSTRING name, Windows.Foundation.Point value);
	HRESULT abi_AddPointWithFormat(HSTRING name, Windows.Foundation.Point value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddPointWithFormatAndTags(HSTRING name, Windows.Foundation.Point value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddPointArray(HSTRING name, UINT32 __valueSize, Windows.Foundation.Point* value);
	HRESULT abi_AddPointArrayWithFormat(HSTRING name, UINT32 __valueSize, Windows.Foundation.Point* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddPointArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, Windows.Foundation.Point* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddSize(HSTRING name, Windows.Foundation.Size value);
	HRESULT abi_AddSizeWithFormat(HSTRING name, Windows.Foundation.Size value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddSizeWithFormatAndTags(HSTRING name, Windows.Foundation.Size value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddSizeArray(HSTRING name, UINT32 __valueSize, Windows.Foundation.Size* value);
	HRESULT abi_AddSizeArrayWithFormat(HSTRING name, UINT32 __valueSize, Windows.Foundation.Size* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddSizeArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, Windows.Foundation.Size* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddRect(HSTRING name, Windows.Foundation.Rect value);
	HRESULT abi_AddRectWithFormat(HSTRING name, Windows.Foundation.Rect value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddRectWithFormatAndTags(HSTRING name, Windows.Foundation.Rect value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddRectArray(HSTRING name, UINT32 __valueSize, Windows.Foundation.Rect* value);
	HRESULT abi_AddRectArrayWithFormat(HSTRING name, UINT32 __valueSize, Windows.Foundation.Rect* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddRectArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, Windows.Foundation.Rect* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
}

@uuid("90bc7850-0192-4f5d-ac26-006adaca12d8")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingOptions")
interface ILoggingOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Keywords(INT64* return_value);
	HRESULT set_Keywords(INT64 value);
	HRESULT get_Tags(INT32* return_value);
	HRESULT set_Tags(INT32 value);
	HRESULT get_Task(INT16* return_value);
	HRESULT set_Task(INT16 value);
	HRESULT get_Opcode(Windows.Foundation.Diagnostics.LoggingOpcode* return_value);
	HRESULT set_Opcode(Windows.Foundation.Diagnostics.LoggingOpcode value);
	HRESULT get_ActivityId(GUID* return_value);
	HRESULT set_ActivityId(GUID value);
	HRESULT get_RelatedActivityId(GUID* return_value);
	HRESULT set_RelatedActivityId(GUID value);
}

@uuid("d713c6cb-98ab-464b-9f22-a3268478368a")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingOptions")
interface ILoggingOptionsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWithKeywords(INT64 keywords, Windows.Foundation.Diagnostics.LoggingOptions* return_result);
}

@uuid("6221f306-9380-4ad7-baf5-41ea9310d768")
interface ILoggingSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_SaveToFileAsync(Windows.Storage.IStorageFolder folder, HSTRING fileName, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_AddLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel);
	HRESULT abi_AddLoggingChannelWithLevel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingLevel maxLevel);
	HRESULT abi_RemoveLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel);
}

@uuid("4e937ee5-58fd-45e0-8c2f-a132eff95c1e")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingSession")
interface ILoggingSessionFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING name, Windows.Foundation.Diagnostics.LoggingSession* return_result);
}

@uuid("65f16c35-e388-4e26-b17a-f51cd3a83916")
interface ILoggingTarget : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsEnabled(bool* return_result);
	HRESULT abi_IsEnabledWithLevel(Windows.Foundation.Diagnostics.LoggingLevel level, bool* return_result);
	HRESULT abi_IsEnabledWithLevelAndKeywords(Windows.Foundation.Diagnostics.LoggingLevel level, INT64 keywords, bool* return_result);
	HRESULT abi_LogEvent(HSTRING eventName);
	HRESULT abi_LogEventWithFields(HSTRING eventName, Windows.Foundation.Diagnostics.LoggingFields fields);
	HRESULT abi_LogEventWithFieldsAndLevel(HSTRING eventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level);
	HRESULT abi_LogEventWithFieldsAndOptions(HSTRING eventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level, Windows.Foundation.Diagnostics.LoggingOptions options);
	HRESULT abi_StartActivity(HSTRING startEventName, Windows.Foundation.Diagnostics.LoggingActivity* return_result);
	HRESULT abi_StartActivityWithFields(HSTRING startEventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingActivity* return_result);
	HRESULT abi_StartActivityWithFieldsAndLevel(HSTRING startEventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level, Windows.Foundation.Diagnostics.LoggingActivity* return_result);
	HRESULT abi_StartActivityWithFieldsAndOptions(HSTRING startEventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level, Windows.Foundation.Diagnostics.LoggingOptions options, Windows.Foundation.Diagnostics.LoggingActivity* return_result);
}

@uuid("410b7711-ff3b-477f-9c9a-d2efda302dc3")
@WinrtFactory("Windows.Foundation.Diagnostics.TracingStatusChangedEventArgs")
interface ITracingStatusChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Enabled(bool* return_enabled);
	HRESULT get_TraceLevel(Windows.Foundation.Diagnostics.CausalityTraceLevel* return_value);
}

interface AsyncCausalityTracer
{
}

interface ErrorDetails : Windows.Foundation.Diagnostics.IErrorDetails
{
}

interface FileLoggingSession : Windows.Foundation.Diagnostics.IFileLoggingSession, Windows.Foundation.IClosable
{
}

interface LogFileGeneratedEventArgs : Windows.Foundation.Diagnostics.ILogFileGeneratedEventArgs
{
}

interface LoggingActivity : Windows.Foundation.Diagnostics.ILoggingActivity, Windows.Foundation.IClosable, Windows.Foundation.Diagnostics.ILoggingActivity2, Windows.Foundation.Diagnostics.ILoggingTarget
{
}

interface LoggingChannel : Windows.Foundation.Diagnostics.ILoggingChannel, Windows.Foundation.IClosable, Windows.Foundation.Diagnostics.ILoggingChannel2, Windows.Foundation.Diagnostics.ILoggingTarget
{
}

interface LoggingChannelOptions : Windows.Foundation.Diagnostics.ILoggingChannelOptions
{
}

interface LoggingFields : Windows.Foundation.Diagnostics.ILoggingFields
{
}

interface LoggingOptions : Windows.Foundation.Diagnostics.ILoggingOptions
{
}

interface LoggingSession : Windows.Foundation.Diagnostics.ILoggingSession, Windows.Foundation.IClosable
{
}

interface RuntimeBrokerErrorSettings : Windows.Foundation.Diagnostics.IErrorReportingSettings
{
}

interface TracingStatusChangedEventArgs : Windows.Foundation.Diagnostics.ITracingStatusChangedEventArgs
{
}

enum CausalityRelation
{
	AssignDelegate = 0,
	Join = 1,
	Choice = 2,
	Cancel = 3,
	Error = 4
}

enum CausalitySource
{
	Application = 0,
	Library = 1,
	System = 2
}

enum CausalitySynchronousWork
{
	CompletionNotification = 0,
	ProgressNotification = 1,
	Execution = 2
}

enum CausalityTraceLevel
{
	Required = 0,
	Important = 1,
	Verbose = 2
}

@bitflags
enum ErrorOptions
{
	None = 0x0,
	SuppressExceptions = 0x1,
	ForceExceptions = 0x2,
	UseSetErrorInfo = 0x4,
	SuppressSetErrorInfo = 0x8
}

enum LoggingFieldFormat
{
	Default = 0,
	Hidden = 1,
	String = 2,
	Boolean = 3,
	Hexadecimal = 4,
	ProcessId = 5,
	ThreadId = 6,
	Port = 7,
	Ipv4Address = 8,
	Ipv6Address = 9,
	SocketAddress = 10,
	Xml = 11,
	Json = 12,
	Win32Error = 13,
	NTStatus = 14,
	HResult = 15,
	FileTime = 16,
	Signed = 17,
	Unsigned = 18
}

enum LoggingLevel
{
	Verbose = 0,
	Information = 1,
	Warning = 2,
	Error = 3,
	Critical = 4
}

enum LoggingOpcode
{
	Info = 0,
	Start = 1,
	Stop = 2,
	Reply = 6,
	Resume = 7,
	Suspend = 8,
	Send = 9
}