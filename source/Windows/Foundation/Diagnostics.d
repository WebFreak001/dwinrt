module Windows.Foundation.Diagnostics;

import dwinrt;

@uuid("50850b26-267e-451b-a890-ab6a370245ee")
@WinrtFactory("Windows.Foundation.Diagnostics.AsyncCausalityTracer")
interface IAsyncCausalityTracerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TraceOperationCreation(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, ulong operationId, HSTRING operationName, ulong relatedContext);
	HRESULT abi_TraceOperationCompletion(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, ulong operationId, AsyncStatus status);
	HRESULT abi_TraceOperationRelation(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, ulong operationId, Windows.Foundation.Diagnostics.CausalityRelation relation);
	HRESULT abi_TraceSynchronousWorkStart(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, ulong operationId, Windows.Foundation.Diagnostics.CausalitySynchronousWork work);
	HRESULT abi_TraceSynchronousWorkCompletion(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, Windows.Foundation.Diagnostics.CausalitySynchronousWork work);
	HRESULT add_TracingStatusChanged(Windows.Foundation.EventHandler!(Windows.Foundation.Diagnostics.TracingStatusChangedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_TracingStatusChanged(EventRegistrationToken cookie);
}

@uuid("378cbb01-2cc9-428f-8c55-2c990d463e8f")
@WinrtFactory("Windows.Foundation.Diagnostics.ErrorDetails")
interface IErrorDetails : IInspectable
{
extern(Windows):
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_LongDescription(HSTRING* return_value);
	HRESULT get_HelpUri(Windows.Foundation.Uri* return_value);
}

@uuid("b7703750-0b1d-46c8-aa0e-4b8178e4fce9")
@WinrtFactory("Windows.Foundation.Diagnostics.ErrorDetails")
interface IErrorDetailsStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromHResultAsync(INT32 errorCode, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Diagnostics.ErrorDetails)* return_operation);
}

@uuid("16369792-b03e-4ba1-8bb8-d28f4ab4d2c0")
interface IErrorReportingSettings : IInspectable
{
extern(Windows):
	HRESULT abi_SetErrorOptions(Windows.Foundation.Diagnostics.ErrorOptions value);
	HRESULT abi_GetErrorOptions(Windows.Foundation.Diagnostics.ErrorOptions* return_value);
}

@uuid("24c74216-fed2-404c-895f-1f9699cb02f7")
interface IFileLoggingSession_Base : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_AddLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel);
	HRESULT abi_AddLoggingChannelWithLevel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingLevel maxLevel);
	HRESULT abi_RemoveLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel);
	HRESULT abi_CloseAndSaveToFileAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT add_LogFileGenerated(Windows.Foundation.TypedEventHandler!(Windows.Foundation.Diagnostics.IFileLoggingSession, Windows.Foundation.Diagnostics.LogFileGeneratedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_LogFileGenerated(EventRegistrationToken token);
}
@uuid("24c74216-fed2-404c-895f-1f9699cb02f7")
interface IFileLoggingSession : IFileLoggingSession_Base, Windows.Foundation.IClosable {}

@uuid("eea08dce-8447-4daa-9133-12eb46f697d4")
@WinrtFactory("Windows.Foundation.Diagnostics.FileLoggingSession")
interface IFileLoggingSessionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING name, Windows.Foundation.Diagnostics.FileLoggingSession* return_result);
}

@uuid("269e976f-0d38-4c1a-b53f-b395d881df84")
@WinrtFactory("Windows.Foundation.Diagnostics.LogFileGeneratedEventArgs")
interface ILogFileGeneratedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_File(Windows.Storage.StorageFile* return_value);
}

@uuid("bc032941-b766-4cb5-9848-97ac6ba6d60c")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingActivity")
interface ILoggingActivity_Base : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_Id(GUID* return_value);
}
@uuid("bc032941-b766-4cb5-9848-97ac6ba6d60c")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingActivity")
interface ILoggingActivity : ILoggingActivity_Base, Windows.Foundation.IClosable {}

@uuid("26c29808-6322-456a-af82-80c8642f178b")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingActivity")
interface ILoggingActivity2_Base : IInspectable
{
extern(Windows):
	HRESULT get_Channel(Windows.Foundation.Diagnostics.LoggingChannel* return_value);
	HRESULT abi_StopActivity(HSTRING stopEventName);
	HRESULT abi_StopActivityWithFields(HSTRING stopEventName, Windows.Foundation.Diagnostics.LoggingFields fields);
	HRESULT abi_StopActivityWithFieldsAndOptions(HSTRING stopEventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingOptions options);
}
@uuid("26c29808-6322-456a-af82-80c8642f178b")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingActivity")
interface ILoggingActivity2 : ILoggingActivity2_Base, Windows.Foundation.Diagnostics.ILoggingActivity, Windows.Foundation.IClosable, Windows.Foundation.Diagnostics.ILoggingTarget {}

@uuid("6b33b483-e10a-4c58-97d5-10fb451074fb")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingActivity")
interface ILoggingActivityFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateLoggingActivity(HSTRING activityName, Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingActivity* return_loggingActivity);
	HRESULT abi_CreateLoggingActivityWithLevel(HSTRING activityName, Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingLevel level, Windows.Foundation.Diagnostics.LoggingActivity* return_loggingActivity);
}

@uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8")
interface ILoggingChannel_Base : IInspectable
{
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
@uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8")
interface ILoggingChannel : ILoggingChannel_Base, Windows.Foundation.IClosable {}

@uuid("9f4c3cf3-0bac-45a5-9e33-baf3f3a246a5")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannel")
interface ILoggingChannel2_Base : IInspectable
{
extern(Windows):
	HRESULT get_Id(GUID* return_value);
}
@uuid("9f4c3cf3-0bac-45a5-9e33-baf3f3a246a5")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannel")
interface ILoggingChannel2 : ILoggingChannel2_Base, Windows.Foundation.Diagnostics.ILoggingChannel, Windows.Foundation.IClosable, Windows.Foundation.Diagnostics.ILoggingTarget {}

@uuid("4edc5b9c-af80-4a9b-b0dc-398f9ae5207b")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannel")
interface ILoggingChannelFactory : IInspectable
{
extern(Windows):
	deprecated("This constructor creates a LoggingChannel in Windows 8.1 compatibility mode. Prefer the two-parameter constructor.")
	HRESULT abi_Create(HSTRING name, Windows.Foundation.Diagnostics.LoggingChannel* return_result);
}

@uuid("4c6ef5dd-3b27-4dc9-99f0-299c6e4603a1")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannel")
interface ILoggingChannelFactory2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithOptions(HSTRING name, Windows.Foundation.Diagnostics.LoggingChannelOptions options, Windows.Foundation.Diagnostics.LoggingChannel* return_result);
	HRESULT abi_CreateWithOptionsAndId(HSTRING name, Windows.Foundation.Diagnostics.LoggingChannelOptions options, GUID id, Windows.Foundation.Diagnostics.LoggingChannel* return_result);
}

@uuid("c3e847ff-0ebb-4a53-8c54-dec24926cb2c")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannelOptions")
interface ILoggingChannelOptions : IInspectable
{
extern(Windows):
	HRESULT get_Group(GUID* return_value);
	HRESULT set_Group(GUID value);
}

@uuid("a93151da-7faf-4191-8755-5e86dc65d896")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingChannelOptions")
interface ILoggingChannelOptionsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(GUID group, Windows.Foundation.Diagnostics.LoggingChannelOptions* return_result);
}

@uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingFields")
interface ILoggingFields : IInspectable
{
extern(Windows):
	HRESULT abi_Clear();
	HRESULT abi_BeginStruct(HSTRING name);
	HRESULT abi_BeginStructWithTags(HSTRING name, INT32 tags);
	HRESULT abi_EndStruct();
	HRESULT abi_AddEmpty(HSTRING name);
	HRESULT abi_AddEmptyWithFormat(HSTRING name, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddEmptyWithFormatAndTags(HSTRING name, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt8(HSTRING name, ubyte value);
	HRESULT abi_AddUInt8WithFormat(HSTRING name, ubyte value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt8WithFormatAndTags(HSTRING name, ubyte value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt8Array(HSTRING name, UINT32 __valueSize, ubyte* value);
	HRESULT abi_AddUInt8ArrayWithFormat(HSTRING name, UINT32 __valueSize, ubyte* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt8ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, ubyte* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
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
	HRESULT abi_AddUInt64(HSTRING name, ulong value);
	HRESULT abi_AddUInt64WithFormat(HSTRING name, ulong value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt64WithFormatAndTags(HSTRING name, ulong value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddUInt64Array(HSTRING name, UINT32 __valueSize, ulong* value);
	HRESULT abi_AddUInt64ArrayWithFormat(HSTRING name, UINT32 __valueSize, ulong* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddUInt64ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, ulong* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddSingle(HSTRING name, float value);
	HRESULT abi_AddSingleWithFormat(HSTRING name, float value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddSingleWithFormatAndTags(HSTRING name, float value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddSingleArray(HSTRING name, UINT32 __valueSize, float* value);
	HRESULT abi_AddSingleArrayWithFormat(HSTRING name, UINT32 __valueSize, float* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddSingleArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, float* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddDouble(HSTRING name, double value);
	HRESULT abi_AddDoubleWithFormat(HSTRING name, double value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddDoubleWithFormatAndTags(HSTRING name, double value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddDoubleArray(HSTRING name, UINT32 __valueSize, double* value);
	HRESULT abi_AddDoubleArrayWithFormat(HSTRING name, UINT32 __valueSize, double* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddDoubleArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, double* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddChar16(HSTRING name, wchar value);
	HRESULT abi_AddChar16WithFormat(HSTRING name, wchar value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddChar16WithFormatAndTags(HSTRING name, wchar value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
	HRESULT abi_AddChar16Array(HSTRING name, UINT32 __valueSize, wchar* value);
	HRESULT abi_AddChar16ArrayWithFormat(HSTRING name, UINT32 __valueSize, wchar* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format);
	HRESULT abi_AddChar16ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, wchar* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags);
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
extern(Windows):
	HRESULT abi_CreateWithKeywords(INT64 keywords, Windows.Foundation.Diagnostics.LoggingOptions* return_result);
}

@uuid("6221f306-9380-4ad7-baf5-41ea9310d768")
interface ILoggingSession_Base : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_SaveToFileAsync(Windows.Storage.IStorageFolder folder, HSTRING fileName, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_operation);
	HRESULT abi_AddLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel);
	HRESULT abi_AddLoggingChannelWithLevel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingLevel maxLevel);
	HRESULT abi_RemoveLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel);
}
@uuid("6221f306-9380-4ad7-baf5-41ea9310d768")
interface ILoggingSession : ILoggingSession_Base, Windows.Foundation.IClosable {}

@uuid("4e937ee5-58fd-45e0-8c2f-a132eff95c1e")
@WinrtFactory("Windows.Foundation.Diagnostics.LoggingSession")
interface ILoggingSessionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING name, Windows.Foundation.Diagnostics.LoggingSession* return_result);
}

@uuid("65f16c35-e388-4e26-b17a-f51cd3a83916")
interface ILoggingTarget : IInspectable
{
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
extern(Windows):
	HRESULT get_Enabled(bool* return_enabled);
	HRESULT get_TraceLevel(Windows.Foundation.Diagnostics.CausalityTraceLevel* return_value);
}

interface AsyncCausalityTracer
{
	private static Windows.Foundation.Diagnostics.IAsyncCausalityTracerStatics _staticInstance;
	public static Windows.Foundation.Diagnostics.IAsyncCausalityTracerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Foundation.Diagnostics.IAsyncCausalityTracerStatics);
		return _staticInstance;
	}
	static void TraceOperationCreation(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, ulong operationId, HSTRING operationName, ulong relatedContext)
	{
		Debug.OK(staticInstance.abi_TraceOperationCreation(traceLevel, source, platformId, operationId, operationName, relatedContext));
	}
	static void TraceOperationCompletion(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, ulong operationId, AsyncStatus status)
	{
		Debug.OK(staticInstance.abi_TraceOperationCompletion(traceLevel, source, platformId, operationId, status));
	}
	static void TraceOperationRelation(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, ulong operationId, Windows.Foundation.Diagnostics.CausalityRelation relation)
	{
		Debug.OK(staticInstance.abi_TraceOperationRelation(traceLevel, source, platformId, operationId, relation));
	}
	static void TraceSynchronousWorkStart(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, GUID platformId, ulong operationId, Windows.Foundation.Diagnostics.CausalitySynchronousWork work)
	{
		Debug.OK(staticInstance.abi_TraceSynchronousWorkStart(traceLevel, source, platformId, operationId, work));
	}
	static void TraceSynchronousWorkCompletion(Windows.Foundation.Diagnostics.CausalityTraceLevel traceLevel, Windows.Foundation.Diagnostics.CausalitySource source, Windows.Foundation.Diagnostics.CausalitySynchronousWork work)
	{
		Debug.OK(staticInstance.abi_TraceSynchronousWorkCompletion(traceLevel, source, work));
	}
	static EventRegistrationToken OnTracingStatusChanged(void delegate(IInspectable, Windows.Foundation.Diagnostics.TracingStatusChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_TracingStatusChanged(event!(Windows.Foundation.EventHandler!(Windows.Foundation.Diagnostics.TracingStatusChangedEventArgs), IInspectable, Windows.Foundation.Diagnostics.TracingStatusChangedEventArgs)(fn), &tok));
		return tok;
	}
	static void removeTracingStatusChanged(EventRegistrationToken cookie)
	{
		Debug.OK(staticInstance.remove_TracingStatusChanged(cookie));
	}
}

interface ErrorDetails : Windows.Foundation.Diagnostics.IErrorDetails
{
extern(Windows):
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.IErrorDetails)this.asInterface(uuid("378cbb01-2cc9-428f-8c55-2c990d463e8f"))).get_Description(&_ret));
		return _ret;
	}
	final HSTRING LongDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.IErrorDetails)this.asInterface(uuid("378cbb01-2cc9-428f-8c55-2c990d463e8f"))).get_LongDescription(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri HelpUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.IErrorDetails)this.asInterface(uuid("378cbb01-2cc9-428f-8c55-2c990d463e8f"))).get_HelpUri(&_ret));
		return _ret;
	}

	private static Windows.Foundation.Diagnostics.IErrorDetailsStatics _staticInstance;
	public static Windows.Foundation.Diagnostics.IErrorDetailsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Foundation.Diagnostics.IErrorDetailsStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Diagnostics.ErrorDetails) CreateFromHResultAsync(INT32 errorCode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Diagnostics.ErrorDetails) _ret;
		Debug.OK(staticInstance.abi_CreateFromHResultAsync(errorCode, &_ret));
		return _ret;
	}
}

interface FileLoggingSession : Windows.Foundation.Diagnostics.IFileLoggingSession, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.IFileLoggingSession)this.asInterface(uuid("24c74216-fed2-404c-895f-1f9699cb02f7"))).get_Name(&_ret));
		return _ret;
	}
	final void AddLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.IFileLoggingSession)this.asInterface(uuid("24c74216-fed2-404c-895f-1f9699cb02f7"))).abi_AddLoggingChannel(loggingChannel));
	}
	final void AddLoggingChannelWithLevel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingLevel maxLevel)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.IFileLoggingSession)this.asInterface(uuid("24c74216-fed2-404c-895f-1f9699cb02f7"))).abi_AddLoggingChannelWithLevel(loggingChannel, maxLevel));
	}
	alias AddLoggingChannel = AddLoggingChannelWithLevel;
	final void RemoveLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.IFileLoggingSession)this.asInterface(uuid("24c74216-fed2-404c-895f-1f9699cb02f7"))).abi_RemoveLoggingChannel(loggingChannel));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CloseAndSaveToFileAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.IFileLoggingSession)this.asInterface(uuid("24c74216-fed2-404c-895f-1f9699cb02f7"))).abi_CloseAndSaveToFileAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnLogFileGenerated(void delegate(Windows.Foundation.Diagnostics.IFileLoggingSession, Windows.Foundation.Diagnostics.LogFileGeneratedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Foundation.Diagnostics.IFileLoggingSession)this.asInterface(uuid("24c74216-fed2-404c-895f-1f9699cb02f7"))).add_LogFileGenerated(event!(Windows.Foundation.TypedEventHandler!(Windows.Foundation.Diagnostics.IFileLoggingSession, Windows.Foundation.Diagnostics.LogFileGeneratedEventArgs), Windows.Foundation.Diagnostics.IFileLoggingSession, Windows.Foundation.Diagnostics.LogFileGeneratedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeLogFileGenerated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.IFileLoggingSession)this.asInterface(uuid("24c74216-fed2-404c-895f-1f9699cb02f7"))).remove_LogFileGenerated(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static Windows.Foundation.Diagnostics.FileLoggingSession New(HSTRING name)
	{
		auto factory = factory!(Windows.Foundation.Diagnostics.IFileLoggingSessionFactory);
		Windows.Foundation.Diagnostics.FileLoggingSession _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.IFileLoggingSessionFactory)factory.asInterface(uuid("eea08dce-8447-4daa-9133-12eb46f697d4"))).abi_Create(name, &_ret));
		return _ret;
	}
}

interface LogFileGeneratedEventArgs : Windows.Foundation.Diagnostics.ILogFileGeneratedEventArgs
{
extern(Windows):
	final Windows.Storage.StorageFile File()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILogFileGeneratedEventArgs)this.asInterface(uuid("269e976f-0d38-4c1a-b53f-b395d881df84"))).get_File(&_ret));
		return _ret;
	}
}

interface LoggingActivity : Windows.Foundation.Diagnostics.ILoggingActivity, Windows.Foundation.IClosable, Windows.Foundation.Diagnostics.ILoggingActivity2, Windows.Foundation.Diagnostics.ILoggingTarget
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingActivity)this.asInterface(uuid("bc032941-b766-4cb5-9848-97ac6ba6d60c"))).get_Name(&_ret));
		return _ret;
	}
	final GUID Id()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingActivity)this.asInterface(uuid("bc032941-b766-4cb5-9848-97ac6ba6d60c"))).get_Id(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final Windows.Foundation.Diagnostics.LoggingChannel Channel()
	{
		Windows.Foundation.Diagnostics.LoggingChannel _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingActivity2)this.asInterface(uuid("26c29808-6322-456a-af82-80c8642f178b"))).get_Channel(&_ret));
		return _ret;
	}
	final void StopActivity(HSTRING stopEventName)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingActivity2)this.asInterface(uuid("26c29808-6322-456a-af82-80c8642f178b"))).abi_StopActivity(stopEventName));
	}
	final void StopActivityWithFields(HSTRING stopEventName, Windows.Foundation.Diagnostics.LoggingFields fields)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingActivity2)this.asInterface(uuid("26c29808-6322-456a-af82-80c8642f178b"))).abi_StopActivityWithFields(stopEventName, fields));
	}
	alias StopActivity = StopActivityWithFields;
	final void StopActivityWithFieldsAndOptions(HSTRING stopEventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingOptions options)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingActivity2)this.asInterface(uuid("26c29808-6322-456a-af82-80c8642f178b"))).abi_StopActivityWithFieldsAndOptions(stopEventName, fields, options));
	}
	alias StopActivity = StopActivityWithFieldsAndOptions;
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_IsEnabled(&_ret));
		return _ret;
	}
	final bool IsEnabledWithLevel(Windows.Foundation.Diagnostics.LoggingLevel level)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_IsEnabledWithLevel(level, &_ret));
		return _ret;
	}
	alias IsEnabled = IsEnabledWithLevel;
	final bool IsEnabledWithLevelAndKeywords(Windows.Foundation.Diagnostics.LoggingLevel level, INT64 keywords)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_IsEnabledWithLevelAndKeywords(level, keywords, &_ret));
		return _ret;
	}
	alias IsEnabled = IsEnabledWithLevelAndKeywords;
	final void LogEvent(HSTRING eventName)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_LogEvent(eventName));
	}
	final void LogEventWithFields(HSTRING eventName, Windows.Foundation.Diagnostics.LoggingFields fields)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_LogEventWithFields(eventName, fields));
	}
	alias LogEvent = LogEventWithFields;
	final void LogEventWithFieldsAndLevel(HSTRING eventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_LogEventWithFieldsAndLevel(eventName, fields, level));
	}
	alias LogEvent = LogEventWithFieldsAndLevel;
	final void LogEventWithFieldsAndOptions(HSTRING eventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level, Windows.Foundation.Diagnostics.LoggingOptions options)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_LogEventWithFieldsAndOptions(eventName, fields, level, options));
	}
	alias LogEvent = LogEventWithFieldsAndOptions;
	final Windows.Foundation.Diagnostics.LoggingActivity StartActivity(HSTRING startEventName)
	{
		Windows.Foundation.Diagnostics.LoggingActivity _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_StartActivity(startEventName, &_ret));
		return _ret;
	}
	final Windows.Foundation.Diagnostics.LoggingActivity StartActivityWithFields(HSTRING startEventName, Windows.Foundation.Diagnostics.LoggingFields fields)
	{
		Windows.Foundation.Diagnostics.LoggingActivity _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_StartActivityWithFields(startEventName, fields, &_ret));
		return _ret;
	}
	alias StartActivity = StartActivityWithFields;
	final Windows.Foundation.Diagnostics.LoggingActivity StartActivityWithFieldsAndLevel(HSTRING startEventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level)
	{
		Windows.Foundation.Diagnostics.LoggingActivity _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_StartActivityWithFieldsAndLevel(startEventName, fields, level, &_ret));
		return _ret;
	}
	alias StartActivity = StartActivityWithFieldsAndLevel;
	final Windows.Foundation.Diagnostics.LoggingActivity StartActivityWithFieldsAndOptions(HSTRING startEventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level, Windows.Foundation.Diagnostics.LoggingOptions options)
	{
		Windows.Foundation.Diagnostics.LoggingActivity _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_StartActivityWithFieldsAndOptions(startEventName, fields, level, options, &_ret));
		return _ret;
	}
	alias StartActivity = StartActivityWithFieldsAndOptions;
	static Windows.Foundation.Diagnostics.LoggingActivity New(HSTRING activityName, Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel)
	{
		auto factory = factory!(Windows.Foundation.Diagnostics.ILoggingActivityFactory);
		Windows.Foundation.Diagnostics.LoggingActivity _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingActivityFactory)factory.asInterface(uuid("6b33b483-e10a-4c58-97d5-10fb451074fb"))).abi_CreateLoggingActivity(activityName, loggingChannel, &_ret));
		return _ret;
	}
	static Windows.Foundation.Diagnostics.LoggingActivity New(HSTRING activityName, Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingLevel level)
	{
		auto factory = factory!(Windows.Foundation.Diagnostics.ILoggingActivityFactory);
		Windows.Foundation.Diagnostics.LoggingActivity _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingActivityFactory)factory.asInterface(uuid("6b33b483-e10a-4c58-97d5-10fb451074fb"))).abi_CreateLoggingActivityWithLevel(activityName, loggingChannel, level, &_ret));
		return _ret;
	}
}

interface LoggingChannel : Windows.Foundation.Diagnostics.ILoggingChannel, Windows.Foundation.IClosable, Windows.Foundation.Diagnostics.ILoggingChannel2, Windows.Foundation.Diagnostics.ILoggingTarget
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannel)this.asInterface(uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8"))).get_Name(&_ret));
		return _ret;
	}
	final bool Enabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannel)this.asInterface(uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8"))).get_Enabled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Diagnostics.LoggingLevel Level()
	{
		Windows.Foundation.Diagnostics.LoggingLevel _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannel)this.asInterface(uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8"))).get_Level(&_ret));
		return _ret;
	}
	final void LogMessage(HSTRING eventString)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannel)this.asInterface(uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8"))).abi_LogMessage(eventString));
	}
	final void LogMessageWithLevel(HSTRING eventString, Windows.Foundation.Diagnostics.LoggingLevel level)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannel)this.asInterface(uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8"))).abi_LogMessageWithLevel(eventString, level));
	}
	alias LogMessage = LogMessageWithLevel;
	final void LogValuePair(HSTRING value1, INT32 value2)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannel)this.asInterface(uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8"))).abi_LogValuePair(value1, value2));
	}
	final void LogValuePairWithLevel(HSTRING value1, INT32 value2, Windows.Foundation.Diagnostics.LoggingLevel level)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannel)this.asInterface(uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8"))).abi_LogValuePairWithLevel(value1, value2, level));
	}
	alias LogValuePair = LogValuePairWithLevel;
	final EventRegistrationToken OnLoggingEnabled(void delegate(Windows.Foundation.Diagnostics.ILoggingChannel, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannel)this.asInterface(uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8"))).add_LoggingEnabled(event!(Windows.Foundation.TypedEventHandler!(Windows.Foundation.Diagnostics.ILoggingChannel, IInspectable), Windows.Foundation.Diagnostics.ILoggingChannel, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeLoggingEnabled(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannel)this.asInterface(uuid("e9a50343-11d7-4f01-b5ca-cf495278c0a8"))).remove_LoggingEnabled(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final GUID Id()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannel2)this.asInterface(uuid("9f4c3cf3-0bac-45a5-9e33-baf3f3a246a5"))).get_Id(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_IsEnabled(&_ret));
		return _ret;
	}
	final bool IsEnabledWithLevel(Windows.Foundation.Diagnostics.LoggingLevel level)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_IsEnabledWithLevel(level, &_ret));
		return _ret;
	}
	alias IsEnabled = IsEnabledWithLevel;
	final bool IsEnabledWithLevelAndKeywords(Windows.Foundation.Diagnostics.LoggingLevel level, INT64 keywords)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_IsEnabledWithLevelAndKeywords(level, keywords, &_ret));
		return _ret;
	}
	alias IsEnabled = IsEnabledWithLevelAndKeywords;
	final void LogEvent(HSTRING eventName)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_LogEvent(eventName));
	}
	final void LogEventWithFields(HSTRING eventName, Windows.Foundation.Diagnostics.LoggingFields fields)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_LogEventWithFields(eventName, fields));
	}
	alias LogEvent = LogEventWithFields;
	final void LogEventWithFieldsAndLevel(HSTRING eventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_LogEventWithFieldsAndLevel(eventName, fields, level));
	}
	alias LogEvent = LogEventWithFieldsAndLevel;
	final void LogEventWithFieldsAndOptions(HSTRING eventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level, Windows.Foundation.Diagnostics.LoggingOptions options)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_LogEventWithFieldsAndOptions(eventName, fields, level, options));
	}
	alias LogEvent = LogEventWithFieldsAndOptions;
	final Windows.Foundation.Diagnostics.LoggingActivity StartActivity(HSTRING startEventName)
	{
		Windows.Foundation.Diagnostics.LoggingActivity _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_StartActivity(startEventName, &_ret));
		return _ret;
	}
	final Windows.Foundation.Diagnostics.LoggingActivity StartActivityWithFields(HSTRING startEventName, Windows.Foundation.Diagnostics.LoggingFields fields)
	{
		Windows.Foundation.Diagnostics.LoggingActivity _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_StartActivityWithFields(startEventName, fields, &_ret));
		return _ret;
	}
	alias StartActivity = StartActivityWithFields;
	final Windows.Foundation.Diagnostics.LoggingActivity StartActivityWithFieldsAndLevel(HSTRING startEventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level)
	{
		Windows.Foundation.Diagnostics.LoggingActivity _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_StartActivityWithFieldsAndLevel(startEventName, fields, level, &_ret));
		return _ret;
	}
	alias StartActivity = StartActivityWithFieldsAndLevel;
	final Windows.Foundation.Diagnostics.LoggingActivity StartActivityWithFieldsAndOptions(HSTRING startEventName, Windows.Foundation.Diagnostics.LoggingFields fields, Windows.Foundation.Diagnostics.LoggingLevel level, Windows.Foundation.Diagnostics.LoggingOptions options)
	{
		Windows.Foundation.Diagnostics.LoggingActivity _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingTarget)this.asInterface(uuid("65f16c35-e388-4e26-b17a-f51cd3a83916"))).abi_StartActivityWithFieldsAndOptions(startEventName, fields, level, options, &_ret));
		return _ret;
	}
	alias StartActivity = StartActivityWithFieldsAndOptions;
	deprecated("This constructor creates a LoggingChannel in Windows 8.1 compatibility mode. Prefer the two-parameter constructor.")
	static Windows.Foundation.Diagnostics.LoggingChannel New(HSTRING name)
	{
		auto factory = factory!(Windows.Foundation.Diagnostics.ILoggingChannelFactory);
		Windows.Foundation.Diagnostics.LoggingChannel _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannelFactory)factory.asInterface(uuid("4edc5b9c-af80-4a9b-b0dc-398f9ae5207b"))).abi_Create(name, &_ret));
		return _ret;
	}
}

interface LoggingChannelOptions : Windows.Foundation.Diagnostics.ILoggingChannelOptions
{
extern(Windows):
	final GUID Group()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannelOptions)this.asInterface(uuid("c3e847ff-0ebb-4a53-8c54-dec24926cb2c"))).get_Group(&_ret));
		return _ret;
	}
	final void Group(GUID value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannelOptions)this.asInterface(uuid("c3e847ff-0ebb-4a53-8c54-dec24926cb2c"))).set_Group(value));
	}
	static LoggingChannelOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(LoggingChannelOptions).abi_ActivateInstance(&ret));
		return cast(LoggingChannelOptions) ret;
	}
	static Windows.Foundation.Diagnostics.LoggingChannelOptions New(GUID group)
	{
		auto factory = factory!(Windows.Foundation.Diagnostics.ILoggingChannelOptionsFactory);
		Windows.Foundation.Diagnostics.LoggingChannelOptions _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingChannelOptionsFactory)factory.asInterface(uuid("a93151da-7faf-4191-8755-5e86dc65d896"))).abi_Create(group, &_ret));
		return _ret;
	}
}

interface LoggingFields : Windows.Foundation.Diagnostics.ILoggingFields
{
extern(Windows):
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_Clear());
	}
	final void BeginStruct(HSTRING name)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_BeginStruct(name));
	}
	final void BeginStructWithTags(HSTRING name, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_BeginStructWithTags(name, tags));
	}
	alias BeginStruct = BeginStructWithTags;
	final void EndStruct()
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_EndStruct());
	}
	final void AddEmpty(HSTRING name)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddEmpty(name));
	}
	final void AddEmptyWithFormat(HSTRING name, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddEmptyWithFormat(name, format));
	}
	alias AddEmpty = AddEmptyWithFormat;
	final void AddEmptyWithFormatAndTags(HSTRING name, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddEmptyWithFormatAndTags(name, format, tags));
	}
	alias AddEmpty = AddEmptyWithFormatAndTags;
	final void AddUInt8(HSTRING name, ubyte value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt8(name, value));
	}
	final void AddUInt8WithFormat(HSTRING name, ubyte value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt8WithFormat(name, value, format));
	}
	alias AddUInt8 = AddUInt8WithFormat;
	final void AddUInt8WithFormatAndTags(HSTRING name, ubyte value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt8WithFormatAndTags(name, value, format, tags));
	}
	alias AddUInt8 = AddUInt8WithFormatAndTags;
	final void AddUInt8Array(HSTRING name, UINT32 __valueSize, ubyte* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt8Array(name, __valueSize, value));
	}
	final void AddUInt8ArrayWithFormat(HSTRING name, UINT32 __valueSize, ubyte* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt8ArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddUInt8Array = AddUInt8ArrayWithFormat;
	final void AddUInt8ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, ubyte* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt8ArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddUInt8Array = AddUInt8ArrayWithFormatAndTags;
	final void AddInt16(HSTRING name, INT16 value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt16(name, value));
	}
	final void AddInt16WithFormat(HSTRING name, INT16 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt16WithFormat(name, value, format));
	}
	alias AddInt16 = AddInt16WithFormat;
	final void AddInt16WithFormatAndTags(HSTRING name, INT16 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt16WithFormatAndTags(name, value, format, tags));
	}
	alias AddInt16 = AddInt16WithFormatAndTags;
	final void AddInt16Array(HSTRING name, UINT32 __valueSize, INT16* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt16Array(name, __valueSize, value));
	}
	final void AddInt16ArrayWithFormat(HSTRING name, UINT32 __valueSize, INT16* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt16ArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddInt16Array = AddInt16ArrayWithFormat;
	final void AddInt16ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, INT16* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt16ArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddInt16Array = AddInt16ArrayWithFormatAndTags;
	final void AddUInt16(HSTRING name, UINT16 value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt16(name, value));
	}
	final void AddUInt16WithFormat(HSTRING name, UINT16 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt16WithFormat(name, value, format));
	}
	alias AddUInt16 = AddUInt16WithFormat;
	final void AddUInt16WithFormatAndTags(HSTRING name, UINT16 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt16WithFormatAndTags(name, value, format, tags));
	}
	alias AddUInt16 = AddUInt16WithFormatAndTags;
	final void AddUInt16Array(HSTRING name, UINT32 __valueSize, UINT16* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt16Array(name, __valueSize, value));
	}
	final void AddUInt16ArrayWithFormat(HSTRING name, UINT32 __valueSize, UINT16* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt16ArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddUInt16Array = AddUInt16ArrayWithFormat;
	final void AddUInt16ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, UINT16* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt16ArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddUInt16Array = AddUInt16ArrayWithFormatAndTags;
	final void AddInt32(HSTRING name, INT32 value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt32(name, value));
	}
	final void AddInt32WithFormat(HSTRING name, INT32 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt32WithFormat(name, value, format));
	}
	alias AddInt32 = AddInt32WithFormat;
	final void AddInt32WithFormatAndTags(HSTRING name, INT32 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt32WithFormatAndTags(name, value, format, tags));
	}
	alias AddInt32 = AddInt32WithFormatAndTags;
	final void AddInt32Array(HSTRING name, UINT32 __valueSize, INT32* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt32Array(name, __valueSize, value));
	}
	final void AddInt32ArrayWithFormat(HSTRING name, UINT32 __valueSize, INT32* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt32ArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddInt32Array = AddInt32ArrayWithFormat;
	final void AddInt32ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, INT32* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt32ArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddInt32Array = AddInt32ArrayWithFormatAndTags;
	final void AddUInt32(HSTRING name, UINT32 value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt32(name, value));
	}
	final void AddUInt32WithFormat(HSTRING name, UINT32 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt32WithFormat(name, value, format));
	}
	alias AddUInt32 = AddUInt32WithFormat;
	final void AddUInt32WithFormatAndTags(HSTRING name, UINT32 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt32WithFormatAndTags(name, value, format, tags));
	}
	alias AddUInt32 = AddUInt32WithFormatAndTags;
	final void AddUInt32Array(HSTRING name, UINT32 __valueSize, UINT32* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt32Array(name, __valueSize, value));
	}
	final void AddUInt32ArrayWithFormat(HSTRING name, UINT32 __valueSize, UINT32* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt32ArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddUInt32Array = AddUInt32ArrayWithFormat;
	final void AddUInt32ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, UINT32* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt32ArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddUInt32Array = AddUInt32ArrayWithFormatAndTags;
	final void AddInt64(HSTRING name, INT64 value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt64(name, value));
	}
	final void AddInt64WithFormat(HSTRING name, INT64 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt64WithFormat(name, value, format));
	}
	alias AddInt64 = AddInt64WithFormat;
	final void AddInt64WithFormatAndTags(HSTRING name, INT64 value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt64WithFormatAndTags(name, value, format, tags));
	}
	alias AddInt64 = AddInt64WithFormatAndTags;
	final void AddInt64Array(HSTRING name, UINT32 __valueSize, INT64* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt64Array(name, __valueSize, value));
	}
	final void AddInt64ArrayWithFormat(HSTRING name, UINT32 __valueSize, INT64* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt64ArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddInt64Array = AddInt64ArrayWithFormat;
	final void AddInt64ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, INT64* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddInt64ArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddInt64Array = AddInt64ArrayWithFormatAndTags;
	final void AddUInt64(HSTRING name, ulong value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt64(name, value));
	}
	final void AddUInt64WithFormat(HSTRING name, ulong value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt64WithFormat(name, value, format));
	}
	alias AddUInt64 = AddUInt64WithFormat;
	final void AddUInt64WithFormatAndTags(HSTRING name, ulong value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt64WithFormatAndTags(name, value, format, tags));
	}
	alias AddUInt64 = AddUInt64WithFormatAndTags;
	final void AddUInt64Array(HSTRING name, UINT32 __valueSize, ulong* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt64Array(name, __valueSize, value));
	}
	final void AddUInt64ArrayWithFormat(HSTRING name, UINT32 __valueSize, ulong* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt64ArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddUInt64Array = AddUInt64ArrayWithFormat;
	final void AddUInt64ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, ulong* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddUInt64ArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddUInt64Array = AddUInt64ArrayWithFormatAndTags;
	final void AddSingle(HSTRING name, float value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSingle(name, value));
	}
	final void AddSingleWithFormat(HSTRING name, float value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSingleWithFormat(name, value, format));
	}
	alias AddSingle = AddSingleWithFormat;
	final void AddSingleWithFormatAndTags(HSTRING name, float value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSingleWithFormatAndTags(name, value, format, tags));
	}
	alias AddSingle = AddSingleWithFormatAndTags;
	final void AddSingleArray(HSTRING name, UINT32 __valueSize, float* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSingleArray(name, __valueSize, value));
	}
	final void AddSingleArrayWithFormat(HSTRING name, UINT32 __valueSize, float* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSingleArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddSingleArray = AddSingleArrayWithFormat;
	final void AddSingleArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, float* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSingleArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddSingleArray = AddSingleArrayWithFormatAndTags;
	final void AddDouble(HSTRING name, double value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDouble(name, value));
	}
	final void AddDoubleWithFormat(HSTRING name, double value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDoubleWithFormat(name, value, format));
	}
	alias AddDouble = AddDoubleWithFormat;
	final void AddDoubleWithFormatAndTags(HSTRING name, double value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDoubleWithFormatAndTags(name, value, format, tags));
	}
	alias AddDouble = AddDoubleWithFormatAndTags;
	final void AddDoubleArray(HSTRING name, UINT32 __valueSize, double* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDoubleArray(name, __valueSize, value));
	}
	final void AddDoubleArrayWithFormat(HSTRING name, UINT32 __valueSize, double* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDoubleArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddDoubleArray = AddDoubleArrayWithFormat;
	final void AddDoubleArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, double* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDoubleArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddDoubleArray = AddDoubleArrayWithFormatAndTags;
	final void AddChar16(HSTRING name, wchar value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddChar16(name, value));
	}
	final void AddChar16WithFormat(HSTRING name, wchar value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddChar16WithFormat(name, value, format));
	}
	alias AddChar16 = AddChar16WithFormat;
	final void AddChar16WithFormatAndTags(HSTRING name, wchar value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddChar16WithFormatAndTags(name, value, format, tags));
	}
	alias AddChar16 = AddChar16WithFormatAndTags;
	final void AddChar16Array(HSTRING name, UINT32 __valueSize, wchar* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddChar16Array(name, __valueSize, value));
	}
	final void AddChar16ArrayWithFormat(HSTRING name, UINT32 __valueSize, wchar* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddChar16ArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddChar16Array = AddChar16ArrayWithFormat;
	final void AddChar16ArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, wchar* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddChar16ArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddChar16Array = AddChar16ArrayWithFormatAndTags;
	final void AddBoolean(HSTRING name, bool value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddBoolean(name, value));
	}
	final void AddBooleanWithFormat(HSTRING name, bool value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddBooleanWithFormat(name, value, format));
	}
	alias AddBoolean = AddBooleanWithFormat;
	final void AddBooleanWithFormatAndTags(HSTRING name, bool value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddBooleanWithFormatAndTags(name, value, format, tags));
	}
	alias AddBoolean = AddBooleanWithFormatAndTags;
	final void AddBooleanArray(HSTRING name, UINT32 __valueSize, bool* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddBooleanArray(name, __valueSize, value));
	}
	final void AddBooleanArrayWithFormat(HSTRING name, UINT32 __valueSize, bool* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddBooleanArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddBooleanArray = AddBooleanArrayWithFormat;
	final void AddBooleanArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, bool* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddBooleanArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddBooleanArray = AddBooleanArrayWithFormatAndTags;
	final void AddString(HSTRING name, HSTRING value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddString(name, value));
	}
	final void AddStringWithFormat(HSTRING name, HSTRING value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddStringWithFormat(name, value, format));
	}
	alias AddString = AddStringWithFormat;
	final void AddStringWithFormatAndTags(HSTRING name, HSTRING value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddStringWithFormatAndTags(name, value, format, tags));
	}
	alias AddString = AddStringWithFormatAndTags;
	final void AddStringArray(HSTRING name, UINT32 __valueSize, HSTRING* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddStringArray(name, __valueSize, value));
	}
	final void AddStringArrayWithFormat(HSTRING name, UINT32 __valueSize, HSTRING* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddStringArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddStringArray = AddStringArrayWithFormat;
	final void AddStringArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, HSTRING* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddStringArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddStringArray = AddStringArrayWithFormatAndTags;
	final void AddGuid(HSTRING name, GUID value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddGuid(name, value));
	}
	final void AddGuidWithFormat(HSTRING name, GUID value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddGuidWithFormat(name, value, format));
	}
	alias AddGuid = AddGuidWithFormat;
	final void AddGuidWithFormatAndTags(HSTRING name, GUID value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddGuidWithFormatAndTags(name, value, format, tags));
	}
	alias AddGuid = AddGuidWithFormatAndTags;
	final void AddGuidArray(HSTRING name, UINT32 __valueSize, GUID* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddGuidArray(name, __valueSize, value));
	}
	final void AddGuidArrayWithFormat(HSTRING name, UINT32 __valueSize, GUID* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddGuidArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddGuidArray = AddGuidArrayWithFormat;
	final void AddGuidArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, GUID* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddGuidArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddGuidArray = AddGuidArrayWithFormatAndTags;
	final void AddDateTime(HSTRING name, Windows.Foundation.DateTime value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDateTime(name, value));
	}
	final void AddDateTimeWithFormat(HSTRING name, Windows.Foundation.DateTime value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDateTimeWithFormat(name, value, format));
	}
	alias AddDateTime = AddDateTimeWithFormat;
	final void AddDateTimeWithFormatAndTags(HSTRING name, Windows.Foundation.DateTime value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDateTimeWithFormatAndTags(name, value, format, tags));
	}
	alias AddDateTime = AddDateTimeWithFormatAndTags;
	final void AddDateTimeArray(HSTRING name, UINT32 __valueSize, Windows.Foundation.DateTime* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDateTimeArray(name, __valueSize, value));
	}
	final void AddDateTimeArrayWithFormat(HSTRING name, UINT32 __valueSize, Windows.Foundation.DateTime* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDateTimeArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddDateTimeArray = AddDateTimeArrayWithFormat;
	final void AddDateTimeArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, Windows.Foundation.DateTime* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddDateTimeArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddDateTimeArray = AddDateTimeArrayWithFormatAndTags;
	final void AddTimeSpan(HSTRING name, Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddTimeSpan(name, value));
	}
	final void AddTimeSpanWithFormat(HSTRING name, Windows.Foundation.TimeSpan value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddTimeSpanWithFormat(name, value, format));
	}
	alias AddTimeSpan = AddTimeSpanWithFormat;
	final void AddTimeSpanWithFormatAndTags(HSTRING name, Windows.Foundation.TimeSpan value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddTimeSpanWithFormatAndTags(name, value, format, tags));
	}
	alias AddTimeSpan = AddTimeSpanWithFormatAndTags;
	final void AddTimeSpanArray(HSTRING name, UINT32 __valueSize, Windows.Foundation.TimeSpan* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddTimeSpanArray(name, __valueSize, value));
	}
	final void AddTimeSpanArrayWithFormat(HSTRING name, UINT32 __valueSize, Windows.Foundation.TimeSpan* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddTimeSpanArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddTimeSpanArray = AddTimeSpanArrayWithFormat;
	final void AddTimeSpanArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, Windows.Foundation.TimeSpan* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddTimeSpanArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddTimeSpanArray = AddTimeSpanArrayWithFormatAndTags;
	final void AddPoint(HSTRING name, Windows.Foundation.Point value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddPoint(name, value));
	}
	final void AddPointWithFormat(HSTRING name, Windows.Foundation.Point value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddPointWithFormat(name, value, format));
	}
	alias AddPoint = AddPointWithFormat;
	final void AddPointWithFormatAndTags(HSTRING name, Windows.Foundation.Point value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddPointWithFormatAndTags(name, value, format, tags));
	}
	alias AddPoint = AddPointWithFormatAndTags;
	final void AddPointArray(HSTRING name, UINT32 __valueSize, Windows.Foundation.Point* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddPointArray(name, __valueSize, value));
	}
	final void AddPointArrayWithFormat(HSTRING name, UINT32 __valueSize, Windows.Foundation.Point* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddPointArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddPointArray = AddPointArrayWithFormat;
	final void AddPointArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, Windows.Foundation.Point* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddPointArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddPointArray = AddPointArrayWithFormatAndTags;
	final void AddSize(HSTRING name, Windows.Foundation.Size value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSize(name, value));
	}
	final void AddSizeWithFormat(HSTRING name, Windows.Foundation.Size value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSizeWithFormat(name, value, format));
	}
	alias AddSize = AddSizeWithFormat;
	final void AddSizeWithFormatAndTags(HSTRING name, Windows.Foundation.Size value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSizeWithFormatAndTags(name, value, format, tags));
	}
	alias AddSize = AddSizeWithFormatAndTags;
	final void AddSizeArray(HSTRING name, UINT32 __valueSize, Windows.Foundation.Size* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSizeArray(name, __valueSize, value));
	}
	final void AddSizeArrayWithFormat(HSTRING name, UINT32 __valueSize, Windows.Foundation.Size* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSizeArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddSizeArray = AddSizeArrayWithFormat;
	final void AddSizeArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, Windows.Foundation.Size* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddSizeArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddSizeArray = AddSizeArrayWithFormatAndTags;
	final void AddRect(HSTRING name, Windows.Foundation.Rect value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddRect(name, value));
	}
	final void AddRectWithFormat(HSTRING name, Windows.Foundation.Rect value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddRectWithFormat(name, value, format));
	}
	alias AddRect = AddRectWithFormat;
	final void AddRectWithFormatAndTags(HSTRING name, Windows.Foundation.Rect value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddRectWithFormatAndTags(name, value, format, tags));
	}
	alias AddRect = AddRectWithFormatAndTags;
	final void AddRectArray(HSTRING name, UINT32 __valueSize, Windows.Foundation.Rect* value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddRectArray(name, __valueSize, value));
	}
	final void AddRectArrayWithFormat(HSTRING name, UINT32 __valueSize, Windows.Foundation.Rect* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddRectArrayWithFormat(name, __valueSize, value, format));
	}
	alias AddRectArray = AddRectArrayWithFormat;
	final void AddRectArrayWithFormatAndTags(HSTRING name, UINT32 __valueSize, Windows.Foundation.Rect* value, Windows.Foundation.Diagnostics.LoggingFieldFormat format, INT32 tags)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingFields)this.asInterface(uuid("d7f6b7af-762d-4579-83bd-52c23bc333bc"))).abi_AddRectArrayWithFormatAndTags(name, __valueSize, value, format, tags));
	}
	alias AddRectArray = AddRectArrayWithFormatAndTags;
	static LoggingFields New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(LoggingFields).abi_ActivateInstance(&ret));
		return cast(LoggingFields) ret;
	}
}

interface LoggingOptions : Windows.Foundation.Diagnostics.ILoggingOptions
{
extern(Windows):
	final INT64 Keywords()
	{
		INT64 _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).get_Keywords(&_ret));
		return _ret;
	}
	final void Keywords(INT64 value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).set_Keywords(value));
	}
	final INT32 Tags()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).get_Tags(&_ret));
		return _ret;
	}
	final void Tags(INT32 value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).set_Tags(value));
	}
	final INT16 Task()
	{
		INT16 _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).get_Task(&_ret));
		return _ret;
	}
	final void Task(INT16 value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).set_Task(value));
	}
	final Windows.Foundation.Diagnostics.LoggingOpcode Opcode()
	{
		Windows.Foundation.Diagnostics.LoggingOpcode _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).get_Opcode(&_ret));
		return _ret;
	}
	final void Opcode(Windows.Foundation.Diagnostics.LoggingOpcode value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).set_Opcode(value));
	}
	final GUID ActivityId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).get_ActivityId(&_ret));
		return _ret;
	}
	final void ActivityId(GUID value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).set_ActivityId(value));
	}
	final GUID RelatedActivityId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).get_RelatedActivityId(&_ret));
		return _ret;
	}
	final void RelatedActivityId(GUID value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptions)this.asInterface(uuid("90bc7850-0192-4f5d-ac26-006adaca12d8"))).set_RelatedActivityId(value));
	}
	static LoggingOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(LoggingOptions).abi_ActivateInstance(&ret));
		return cast(LoggingOptions) ret;
	}
	static Windows.Foundation.Diagnostics.LoggingOptions New(INT64 keywords)
	{
		auto factory = factory!(Windows.Foundation.Diagnostics.ILoggingOptionsFactory);
		Windows.Foundation.Diagnostics.LoggingOptions _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingOptionsFactory)factory.asInterface(uuid("d713c6cb-98ab-464b-9f22-a3268478368a"))).abi_CreateWithKeywords(keywords, &_ret));
		return _ret;
	}
}

interface LoggingSession : Windows.Foundation.Diagnostics.ILoggingSession, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingSession)this.asInterface(uuid("6221f306-9380-4ad7-baf5-41ea9310d768"))).get_Name(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) SaveToFileAsync(Windows.Storage.IStorageFolder folder, HSTRING fileName)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingSession)this.asInterface(uuid("6221f306-9380-4ad7-baf5-41ea9310d768"))).abi_SaveToFileAsync(folder, fileName, &_ret));
		return _ret;
	}
	final void AddLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingSession)this.asInterface(uuid("6221f306-9380-4ad7-baf5-41ea9310d768"))).abi_AddLoggingChannel(loggingChannel));
	}
	final void AddLoggingChannelWithLevel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel, Windows.Foundation.Diagnostics.LoggingLevel maxLevel)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingSession)this.asInterface(uuid("6221f306-9380-4ad7-baf5-41ea9310d768"))).abi_AddLoggingChannelWithLevel(loggingChannel, maxLevel));
	}
	alias AddLoggingChannel = AddLoggingChannelWithLevel;
	final void RemoveLoggingChannel(Windows.Foundation.Diagnostics.ILoggingChannel loggingChannel)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingSession)this.asInterface(uuid("6221f306-9380-4ad7-baf5-41ea9310d768"))).abi_RemoveLoggingChannel(loggingChannel));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static Windows.Foundation.Diagnostics.LoggingSession New(HSTRING name)
	{
		auto factory = factory!(Windows.Foundation.Diagnostics.ILoggingSessionFactory);
		Windows.Foundation.Diagnostics.LoggingSession _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ILoggingSessionFactory)factory.asInterface(uuid("4e937ee5-58fd-45e0-8c2f-a132eff95c1e"))).abi_Create(name, &_ret));
		return _ret;
	}
}

interface RuntimeBrokerErrorSettings : Windows.Foundation.Diagnostics.IErrorReportingSettings
{
extern(Windows):
	final void SetErrorOptions(Windows.Foundation.Diagnostics.ErrorOptions value)
	{
		Debug.OK((cast(Windows.Foundation.Diagnostics.IErrorReportingSettings)this.asInterface(uuid("16369792-b03e-4ba1-8bb8-d28f4ab4d2c0"))).abi_SetErrorOptions(value));
	}
	final Windows.Foundation.Diagnostics.ErrorOptions GetErrorOptions()
	{
		Windows.Foundation.Diagnostics.ErrorOptions _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.IErrorReportingSettings)this.asInterface(uuid("16369792-b03e-4ba1-8bb8-d28f4ab4d2c0"))).abi_GetErrorOptions(&_ret));
		return _ret;
	}
	static RuntimeBrokerErrorSettings New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RuntimeBrokerErrorSettings).abi_ActivateInstance(&ret));
		return cast(RuntimeBrokerErrorSettings) ret;
	}
}

interface TracingStatusChangedEventArgs : Windows.Foundation.Diagnostics.ITracingStatusChangedEventArgs
{
extern(Windows):
	final bool Enabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ITracingStatusChangedEventArgs)this.asInterface(uuid("410b7711-ff3b-477f-9c9a-d2efda302dc3"))).get_Enabled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Diagnostics.CausalityTraceLevel TraceLevel()
	{
		Windows.Foundation.Diagnostics.CausalityTraceLevel _ret;
		Debug.OK((cast(Windows.Foundation.Diagnostics.ITracingStatusChangedEventArgs)this.asInterface(uuid("410b7711-ff3b-477f-9c9a-d2efda302dc3"))).get_TraceLevel(&_ret));
		return _ret;
	}
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