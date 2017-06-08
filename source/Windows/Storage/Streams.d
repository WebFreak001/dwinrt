module Windows.Storage.Streams;

import dwinrt;

@uuid("905a0fe0-bc53-11df-8c49-001e4fc686da")
interface IBuffer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Capacity(UINT32* return_value);
	HRESULT get_Length(UINT32* return_value);
	HRESULT set_Length(UINT32 value);
}

@uuid("71af914d-c10f-484b-bc50-14bc623b3a27")
@WinrtFactory("Windows.Storage.Streams.Buffer")
interface IBufferFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(UINT32 capacity, Windows.Storage.Streams.Buffer* return_value);
}

@uuid("e901e65b-d716-475a-a90a-af7229b1e741")
@WinrtFactory("Windows.Storage.Streams.Buffer")
interface IBufferStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateCopyFromMemoryBuffer(Windows.Foundation.IMemoryBuffer input, Windows.Storage.Streams.Buffer* return_value);
	HRESULT abi_CreateMemoryBufferOverIBuffer(Windows.Storage.Streams.IBuffer input, Windows.Foundation.MemoryBuffer* return_value);
}

@uuid("97d098a5-3b99-4de9-88a5-e11d2f50c795")
interface IContentTypeProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentType(HSTRING* return_value);
}

@uuid("e2b50029-b4c1-4314-a4b8-fb813a2f275e")
interface IDataReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UnconsumedBufferLength(UINT32* return_value);
	HRESULT get_UnicodeEncoding(Windows.Storage.Streams.UnicodeEncoding* return_value);
	HRESULT set_UnicodeEncoding(Windows.Storage.Streams.UnicodeEncoding value);
	HRESULT get_ByteOrder(Windows.Storage.Streams.ByteOrder* return_value);
	HRESULT set_ByteOrder(Windows.Storage.Streams.ByteOrder value);
	HRESULT get_InputStreamOptions(Windows.Storage.Streams.InputStreamOptions* return_value);
	HRESULT set_InputStreamOptions(Windows.Storage.Streams.InputStreamOptions value);
	HRESULT abi_ReadByte(BYTE* return_value);
	HRESULT abi_ReadBytes(UINT32 __valueSize, BYTE* out_value);
	HRESULT abi_ReadBuffer(UINT32 length, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_ReadBoolean(bool* return_value);
	HRESULT abi_ReadGuid(GUID* return_value);
	HRESULT abi_ReadInt16(INT16* return_value);
	HRESULT abi_ReadInt32(INT32* return_value);
	HRESULT abi_ReadInt64(INT64* return_value);
	HRESULT abi_ReadUInt16(UINT16* return_value);
	HRESULT abi_ReadUInt32(UINT32* return_value);
	HRESULT abi_ReadUInt64(UINT64* return_value);
	HRESULT abi_ReadSingle(FLOAT* return_value);
	HRESULT abi_ReadDouble(double* return_value);
	HRESULT abi_ReadString(UINT32 codeUnitCount, HSTRING* return_value);
	HRESULT abi_ReadDateTime(Windows.Foundation.DateTime* return_value);
	HRESULT abi_ReadTimeSpan(Windows.Foundation.TimeSpan* return_value);
	HRESULT abi_LoadAsync(UINT32 count, Windows.Storage.Streams.DataReaderLoadOperation* return_operation);
	HRESULT abi_DetachBuffer(Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_DetachStream(Windows.Storage.Streams.IInputStream* return_stream);
}

@uuid("d7527847-57da-4e15-914c-06806699a098")
@WinrtFactory("Windows.Storage.Streams.DataReader")
interface IDataReaderFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateDataReader(Windows.Storage.Streams.IInputStream inputStream, Windows.Storage.Streams.DataReader* return_dataReader);
}

@uuid("11fcbfc8-f93a-471b-b121-f379e349313c")
@WinrtFactory("Windows.Storage.Streams.DataReader")
interface IDataReaderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromBuffer(Windows.Storage.Streams.IBuffer buffer, Windows.Storage.Streams.DataReader* return_dataReader);
}

@uuid("64b89265-d341-4922-b38a-dd4af8808c4e")
interface IDataWriter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_UnstoredBufferLength(UINT32* return_value);
	HRESULT get_UnicodeEncoding(Windows.Storage.Streams.UnicodeEncoding* return_value);
	HRESULT set_UnicodeEncoding(Windows.Storage.Streams.UnicodeEncoding value);
	HRESULT get_ByteOrder(Windows.Storage.Streams.ByteOrder* return_value);
	HRESULT set_ByteOrder(Windows.Storage.Streams.ByteOrder value);
	HRESULT abi_WriteByte(BYTE value);
	HRESULT abi_WriteBytes(UINT32 __valueSize, BYTE* value);
	HRESULT abi_WriteBuffer(Windows.Storage.Streams.IBuffer buffer);
	HRESULT abi_WriteBufferRange(Windows.Storage.Streams.IBuffer buffer, UINT32 start, UINT32 count);
	HRESULT abi_WriteBoolean(bool value);
	HRESULT abi_WriteGuid(GUID value);
	HRESULT abi_WriteInt16(INT16 value);
	HRESULT abi_WriteInt32(INT32 value);
	HRESULT abi_WriteInt64(INT64 value);
	HRESULT abi_WriteUInt16(UINT16 value);
	HRESULT abi_WriteUInt32(UINT32 value);
	HRESULT abi_WriteUInt64(UINT64 value);
	HRESULT abi_WriteSingle(FLOAT value);
	HRESULT abi_WriteDouble(double value);
	HRESULT abi_WriteDateTime(Windows.Foundation.DateTime value);
	HRESULT abi_WriteTimeSpan(Windows.Foundation.TimeSpan value);
	HRESULT abi_WriteString(HSTRING value, UINT32* return_codeUnitCount);
	HRESULT abi_MeasureString(HSTRING value, UINT32* return_codeUnitCount);
	HRESULT abi_StoreAsync(Windows.Storage.Streams.DataWriterStoreOperation* return_operation);
	HRESULT abi_FlushAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_DetachBuffer(Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_DetachStream(Windows.Storage.Streams.IOutputStream* return_outputStream);
}

@uuid("338c67c2-8b84-4c2b-9c50-7b8767847a1f")
@WinrtFactory("Windows.Storage.Streams.DataWriter")
interface IDataWriterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateDataWriter(Windows.Storage.Streams.IOutputStream outputStream, Windows.Storage.Streams.DataWriter* return_dataWriter);
}

@uuid("905a0fe2-bc53-11df-8c49-001e4fc686da")
interface IInputStream : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32)* return_operation);
}

@uuid("43929d18-5ec9-4b5a-919c-4205b0c804b6")
interface IInputStreamReference : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OpenSequentialReadAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IInputStream)* return_operation);
}

@uuid("905a0fe6-bc53-11df-8c49-001e4fc686da")
interface IOutputStream : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_WriteAsync(Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32)* return_operation);
	HRESULT abi_FlushAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("905a0fe1-bc53-11df-8c49-001e4fc686da")
interface IRandomAccessStream : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Size(UINT64* return_value);
	HRESULT set_Size(UINT64 value);
	HRESULT abi_GetInputStreamAt(UINT64 position, Windows.Storage.Streams.IInputStream* return_stream);
	HRESULT abi_GetOutputStreamAt(UINT64 position, Windows.Storage.Streams.IOutputStream* return_stream);
	HRESULT get_Position(UINT64* return_value);
	HRESULT abi_Seek(UINT64 position);
	HRESULT abi_CloneStream(Windows.Storage.Streams.IRandomAccessStream* return_stream);
	HRESULT get_CanRead(bool* return_value);
	HRESULT get_CanWrite(bool* return_value);
}

@uuid("33ee3134-1dd6-4e3a-8067-d1c162e8642b")
interface IRandomAccessStreamReference : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_OpenReadAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType)* return_operation);
}

@uuid("857309dc-3fbf-4e7d-986f-ef3b1a07a964")
@WinrtFactory("Windows.Storage.Streams.RandomAccessStreamReference")
interface IRandomAccessStreamReferenceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateFromFile(Windows.Storage.IStorageFile file, Windows.Storage.Streams.RandomAccessStreamReference* return_streamReference);
	HRESULT abi_CreateFromUri(Windows.Foundation.Uri uri, Windows.Storage.Streams.RandomAccessStreamReference* return_streamReference);
	HRESULT abi_CreateFromStream(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Storage.Streams.RandomAccessStreamReference* return_streamReference);
}

@uuid("524cedcf-6e29-4ce5-9573-6b753db66c3a")
@WinrtFactory("Windows.Storage.Streams.RandomAccessStream")
interface IRandomAccessStreamStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CopyAsync(Windows.Storage.Streams.IInputStream source, Windows.Storage.Streams.IOutputStream destination, Windows.Foundation.IAsyncOperationWithProgress!(UINT64, UINT64)* return_operation);
	HRESULT abi_CopySizeAsync(Windows.Storage.Streams.IInputStream source, Windows.Storage.Streams.IOutputStream destination, UINT64 bytesToCopy, Windows.Foundation.IAsyncOperationWithProgress!(UINT64, UINT64)* return_operation);
	HRESULT abi_CopyAndCloseAsync(Windows.Storage.Streams.IInputStream source, Windows.Storage.Streams.IOutputStream destination, Windows.Foundation.IAsyncOperationWithProgress!(UINT64, UINT64)* return_operation);
}

interface Buffer
{
}

interface DataReader
{
}

interface DataReaderLoadOperation
{
}

interface DataWriter
{
}

interface DataWriterStoreOperation
{
}

interface FileInputStream
{
}

interface FileOutputStream
{
}

interface FileRandomAccessStream
{
}

interface InMemoryRandomAccessStream
{
}

interface InputStreamOverStream
{
}

interface OutputStreamOverStream
{
}

interface RandomAccessStreamOverStream
{
}

interface RandomAccessStreamReference
{
}

enum ByteOrder
{
	LittleEndian = 0,
	BigEndian = 1
}

@bitflags
enum InputStreamOptions
{
	None = 0x0,
	Partial = 0x1,
	ReadAhead = 0x2
}

enum UnicodeEncoding
{
	Utf8 = 0,
	Utf16LE = 1,
	Utf16BE = 2
}