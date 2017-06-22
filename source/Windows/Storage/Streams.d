module Windows.Storage.Streams;

import dwinrt;

@uuid("905a0fe0-bc53-11df-8c49-001e4fc686da")
interface IBuffer : IInspectable
{
extern(Windows):
	HRESULT get_Capacity(UINT32* return_value);
	HRESULT get_Length(UINT32* return_value);
	HRESULT set_Length(UINT32 value);
}

@uuid("71af914d-c10f-484b-bc50-14bc623b3a27")
@WinrtFactory("Windows.Storage.Streams.Buffer")
interface IBufferFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 capacity, Windows.Storage.Streams.Buffer* return_value);
}

@uuid("e901e65b-d716-475a-a90a-af7229b1e741")
@WinrtFactory("Windows.Storage.Streams.Buffer")
interface IBufferStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCopyFromMemoryBuffer(Windows.Foundation.IMemoryBuffer input, Windows.Storage.Streams.Buffer* return_value);
	HRESULT abi_CreateMemoryBufferOverIBuffer(Windows.Storage.Streams.IBuffer input, Windows.Foundation.MemoryBuffer* return_value);
}

@uuid("97d098a5-3b99-4de9-88a5-e11d2f50c795")
interface IContentTypeProvider : IInspectable
{
extern(Windows):
	HRESULT get_ContentType(HSTRING* return_value);
}

@uuid("e2b50029-b4c1-4314-a4b8-fb813a2f275e")
interface IDataReader : IInspectable
{
extern(Windows):
	HRESULT get_UnconsumedBufferLength(UINT32* return_value);
	HRESULT get_UnicodeEncoding(Windows.Storage.Streams.UnicodeEncoding* return_value);
	HRESULT set_UnicodeEncoding(Windows.Storage.Streams.UnicodeEncoding value);
	HRESULT get_ByteOrder(Windows.Storage.Streams.ByteOrder* return_value);
	HRESULT set_ByteOrder(Windows.Storage.Streams.ByteOrder value);
	HRESULT get_InputStreamOptions(Windows.Storage.Streams.InputStreamOptions* return_value);
	HRESULT set_InputStreamOptions(Windows.Storage.Streams.InputStreamOptions value);
	HRESULT abi_ReadByte(ubyte* return_value);
	HRESULT abi_ReadBytes(UINT32 __valueSize, ubyte* out_value);
	HRESULT abi_ReadBuffer(UINT32 length, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_ReadBoolean(bool* return_value);
	HRESULT abi_ReadGuid(GUID* return_value);
	HRESULT abi_ReadInt16(INT16* return_value);
	HRESULT abi_ReadInt32(INT32* return_value);
	HRESULT abi_ReadInt64(INT64* return_value);
	HRESULT abi_ReadUInt16(UINT16* return_value);
	HRESULT abi_ReadUInt32(UINT32* return_value);
	HRESULT abi_ReadUInt64(ulong* return_value);
	HRESULT abi_ReadSingle(float* return_value);
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
extern(Windows):
	HRESULT abi_CreateDataReader(Windows.Storage.Streams.IInputStream inputStream, Windows.Storage.Streams.DataReader* return_dataReader);
}

@uuid("11fcbfc8-f93a-471b-b121-f379e349313c")
@WinrtFactory("Windows.Storage.Streams.DataReader")
interface IDataReaderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromBuffer(Windows.Storage.Streams.IBuffer buffer, Windows.Storage.Streams.DataReader* return_dataReader);
}

@uuid("64b89265-d341-4922-b38a-dd4af8808c4e")
interface IDataWriter : IInspectable
{
extern(Windows):
	HRESULT get_UnstoredBufferLength(UINT32* return_value);
	HRESULT get_UnicodeEncoding(Windows.Storage.Streams.UnicodeEncoding* return_value);
	HRESULT set_UnicodeEncoding(Windows.Storage.Streams.UnicodeEncoding value);
	HRESULT get_ByteOrder(Windows.Storage.Streams.ByteOrder* return_value);
	HRESULT set_ByteOrder(Windows.Storage.Streams.ByteOrder value);
	HRESULT abi_WriteByte(ubyte value);
	HRESULT abi_WriteBytes(UINT32 __valueSize, ubyte* value);
	HRESULT abi_WriteBuffer(Windows.Storage.Streams.IBuffer buffer);
	HRESULT abi_WriteBufferRange(Windows.Storage.Streams.IBuffer buffer, UINT32 start, UINT32 count);
	HRESULT abi_WriteBoolean(bool value);
	HRESULT abi_WriteGuid(GUID value);
	HRESULT abi_WriteInt16(INT16 value);
	HRESULT abi_WriteInt32(INT32 value);
	HRESULT abi_WriteInt64(INT64 value);
	HRESULT abi_WriteUInt16(UINT16 value);
	HRESULT abi_WriteUInt32(UINT32 value);
	HRESULT abi_WriteUInt64(ulong value);
	HRESULT abi_WriteSingle(float value);
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
extern(Windows):
	HRESULT abi_CreateDataWriter(Windows.Storage.Streams.IOutputStream outputStream, Windows.Storage.Streams.DataWriter* return_dataWriter);
}

@uuid("905a0fe2-bc53-11df-8c49-001e4fc686da")
interface IInputStream_Base : IInspectable
{
extern(Windows):
	HRESULT abi_ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32)* return_operation);
}
@uuid("905a0fe2-bc53-11df-8c49-001e4fc686da")
interface IInputStream : IInputStream_Base, Windows.Foundation.IClosable {}

@uuid("43929d18-5ec9-4b5a-919c-4205b0c804b6")
interface IInputStreamReference : IInspectable
{
extern(Windows):
	HRESULT abi_OpenSequentialReadAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IInputStream)* return_operation);
}

@uuid("905a0fe6-bc53-11df-8c49-001e4fc686da")
interface IOutputStream_Base : IInspectable
{
extern(Windows):
	HRESULT abi_WriteAsync(Windows.Storage.Streams.IBuffer buffer, Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32)* return_operation);
	HRESULT abi_FlushAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}
@uuid("905a0fe6-bc53-11df-8c49-001e4fc686da")
interface IOutputStream : IOutputStream_Base, Windows.Foundation.IClosable {}

@uuid("905a0fe1-bc53-11df-8c49-001e4fc686da")
interface IRandomAccessStream_Base : IInspectable
{
extern(Windows):
	HRESULT get_Size(ulong* return_value);
	HRESULT set_Size(ulong value);
	HRESULT abi_GetInputStreamAt(ulong position, Windows.Storage.Streams.IInputStream* return_stream);
	HRESULT abi_GetOutputStreamAt(ulong position, Windows.Storage.Streams.IOutputStream* return_stream);
	HRESULT get_Position(ulong* return_value);
	HRESULT abi_Seek(ulong position);
	HRESULT abi_CloneStream(Windows.Storage.Streams.IRandomAccessStream* return_stream);
	HRESULT get_CanRead(bool* return_value);
	HRESULT get_CanWrite(bool* return_value);
}
@uuid("905a0fe1-bc53-11df-8c49-001e4fc686da")
interface IRandomAccessStream : IRandomAccessStream_Base, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream, Windows.Storage.Streams.IOutputStream {}

@uuid("33ee3134-1dd6-4e3a-8067-d1c162e8642b")
interface IRandomAccessStreamReference : IInspectable
{
extern(Windows):
	HRESULT abi_OpenReadAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType)* return_operation);
}

@uuid("857309dc-3fbf-4e7d-986f-ef3b1a07a964")
@WinrtFactory("Windows.Storage.Streams.RandomAccessStreamReference")
interface IRandomAccessStreamReferenceStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFromFile(Windows.Storage.IStorageFile file, Windows.Storage.Streams.RandomAccessStreamReference* return_streamReference);
	HRESULT abi_CreateFromUri(Windows.Foundation.Uri uri, Windows.Storage.Streams.RandomAccessStreamReference* return_streamReference);
	HRESULT abi_CreateFromStream(Windows.Storage.Streams.IRandomAccessStream stream, Windows.Storage.Streams.RandomAccessStreamReference* return_streamReference);
}

@uuid("524cedcf-6e29-4ce5-9573-6b753db66c3a")
@WinrtFactory("Windows.Storage.Streams.RandomAccessStream")
interface IRandomAccessStreamStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CopyAsync(Windows.Storage.Streams.IInputStream source, Windows.Storage.Streams.IOutputStream destination, Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong)* return_operation);
	HRESULT abi_CopySizeAsync(Windows.Storage.Streams.IInputStream source, Windows.Storage.Streams.IOutputStream destination, ulong bytesToCopy, Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong)* return_operation);
	HRESULT abi_CopyAndCloseAsync(Windows.Storage.Streams.IInputStream source, Windows.Storage.Streams.IOutputStream destination, Windows.Foundation.IAsyncOperationWithProgress!(ulong, ulong)* return_operation);
}

@uuid("cc254827-4b3d-438f-9232-10c76bc7e038")
interface IRandomAccessStreamWithContentType_Base : IInspectable
{
}
@uuid("cc254827-4b3d-438f-9232-10c76bc7e038")
interface IRandomAccessStreamWithContentType : IRandomAccessStreamWithContentType_Base, Windows.Storage.Streams.IRandomAccessStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream, Windows.Storage.Streams.IOutputStream, Windows.Storage.Streams.IContentTypeProvider {}

interface Buffer : Windows.Storage.Streams.IBuffer
{
extern(Windows):
	final UINT32 Capacity()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IBuffer).get_Capacity(&_ret));
		return _ret;
	}
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IBuffer).get_Length(&_ret));
		return _ret;
	}
	final void Length(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IBuffer).set_Length(value));
	}
}

interface DataReader : Windows.Storage.Streams.IDataReader, Windows.Foundation.IClosable
{
extern(Windows):
	final UINT32 UnconsumedBufferLength()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).get_UnconsumedBufferLength(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.UnicodeEncoding UnicodeEncoding()
	{
		Windows.Storage.Streams.UnicodeEncoding _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).get_UnicodeEncoding(&_ret));
		return _ret;
	}
	final void UnicodeEncoding(Windows.Storage.Streams.UnicodeEncoding value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).set_UnicodeEncoding(value));
	}
	final Windows.Storage.Streams.ByteOrder ByteOrder()
	{
		Windows.Storage.Streams.ByteOrder _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).get_ByteOrder(&_ret));
		return _ret;
	}
	final void ByteOrder(Windows.Storage.Streams.ByteOrder value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).set_ByteOrder(value));
	}
	final Windows.Storage.Streams.InputStreamOptions InputStreamOptions()
	{
		Windows.Storage.Streams.InputStreamOptions _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).get_InputStreamOptions(&_ret));
		return _ret;
	}
	final void InputStreamOptions(Windows.Storage.Streams.InputStreamOptions value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).set_InputStreamOptions(value));
	}
	final ubyte ReadByte()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadByte(&_ret));
		return _ret;
	}
	final void ReadBytes(UINT32 __valueSize, ubyte* out_value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadBytes(__valueSize, out_value));
	}
	final Windows.Storage.Streams.IBuffer ReadBuffer(UINT32 length)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadBuffer(length, &_ret));
		return _ret;
	}
	final bool ReadBoolean()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadBoolean(&_ret));
		return _ret;
	}
	final GUID ReadGuid()
	{
		GUID _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadGuid(&_ret));
		return _ret;
	}
	final INT16 ReadInt16()
	{
		INT16 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadInt16(&_ret));
		return _ret;
	}
	final INT32 ReadInt32()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadInt32(&_ret));
		return _ret;
	}
	final INT64 ReadInt64()
	{
		INT64 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadInt64(&_ret));
		return _ret;
	}
	final UINT16 ReadUInt16()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadUInt16(&_ret));
		return _ret;
	}
	final UINT32 ReadUInt32()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadUInt32(&_ret));
		return _ret;
	}
	final ulong ReadUInt64()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadUInt64(&_ret));
		return _ret;
	}
	final float ReadSingle()
	{
		float _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadSingle(&_ret));
		return _ret;
	}
	final double ReadDouble()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadDouble(&_ret));
		return _ret;
	}
	final HSTRING ReadString(UINT32 codeUnitCount)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadString(codeUnitCount, &_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ReadDateTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadDateTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan ReadTimeSpan()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_ReadTimeSpan(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.DataReaderLoadOperation LoadAsync(UINT32 count)
	{
		Windows.Storage.Streams.DataReaderLoadOperation _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_LoadAsync(count, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer DetachBuffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_DetachBuffer(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IInputStream DetachStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataReader).abi_DetachStream(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface DataReaderLoadOperation : Windows.Foundation.IAsyncOperation!(UINT32)
{
extern(Windows):
	final void Completed(Windows.Foundation.AsyncOperationCompletedHandler!(UINT32) handler)
	{
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(UINT32)).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationCompletedHandler!(UINT32) Completed()
	{
		Windows.Foundation.AsyncOperationCompletedHandler!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(UINT32)).get_Completed(&_ret));
		return _ret;
	}
	final UINT32 Results()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(UINT32)).get_Results(&_ret));
		return _ret;
	}
}

interface DataWriter : Windows.Storage.Streams.IDataWriter, Windows.Foundation.IClosable
{
extern(Windows):
	final UINT32 UnstoredBufferLength()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).get_UnstoredBufferLength(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.UnicodeEncoding UnicodeEncoding()
	{
		Windows.Storage.Streams.UnicodeEncoding _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).get_UnicodeEncoding(&_ret));
		return _ret;
	}
	final void UnicodeEncoding(Windows.Storage.Streams.UnicodeEncoding value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).set_UnicodeEncoding(value));
	}
	final Windows.Storage.Streams.ByteOrder ByteOrder()
	{
		Windows.Storage.Streams.ByteOrder _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).get_ByteOrder(&_ret));
		return _ret;
	}
	final void ByteOrder(Windows.Storage.Streams.ByteOrder value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).set_ByteOrder(value));
	}
	final void WriteByte(ubyte value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteByte(value));
	}
	final void WriteBytes(UINT32 __valueSize, ubyte* value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteBytes(__valueSize, value));
	}
	final void WriteBuffer(Windows.Storage.Streams.IBuffer buffer)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteBuffer(buffer));
	}
	final void WriteBufferRange(Windows.Storage.Streams.IBuffer buffer, UINT32 start, UINT32 count)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteBufferRange(buffer, start, count));
	}
	final void WriteBoolean(bool value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteBoolean(value));
	}
	final void WriteGuid(GUID value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteGuid(value));
	}
	final void WriteInt16(INT16 value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteInt16(value));
	}
	final void WriteInt32(INT32 value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteInt32(value));
	}
	final void WriteInt64(INT64 value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteInt64(value));
	}
	final void WriteUInt16(UINT16 value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteUInt16(value));
	}
	final void WriteUInt32(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteUInt32(value));
	}
	final void WriteUInt64(ulong value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteUInt64(value));
	}
	final void WriteSingle(float value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteSingle(value));
	}
	final void WriteDouble(double value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteDouble(value));
	}
	final void WriteDateTime(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteDateTime(value));
	}
	final void WriteTimeSpan(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteTimeSpan(value));
	}
	final UINT32 WriteString(HSTRING value)
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_WriteString(value, &_ret));
		return _ret;
	}
	final UINT32 MeasureString(HSTRING value)
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_MeasureString(value, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.DataWriterStoreOperation StoreAsync()
	{
		Windows.Storage.Streams.DataWriterStoreOperation _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_StoreAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_FlushAsync(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer DetachBuffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_DetachBuffer(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream DetachStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IDataWriter).abi_DetachStream(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface DataWriterStoreOperation : Windows.Foundation.IAsyncOperation!(UINT32)
{
extern(Windows):
	final void Completed(Windows.Foundation.AsyncOperationCompletedHandler!(UINT32) handler)
	{
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(UINT32)).set_Completed(handler));
	}
	final Windows.Foundation.AsyncOperationCompletedHandler!(UINT32) Completed()
	{
		Windows.Foundation.AsyncOperationCompletedHandler!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(UINT32)).get_Completed(&_ret));
		return _ret;
	}
	final UINT32 Results()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Foundation.IAsyncOperation!(UINT32)).get_Results(&_ret));
		return _ret;
	}
}

interface FileInputStream : Windows.Storage.Streams.IInputStream, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IInputStream).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface FileOutputStream : Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface FileRandomAccessStream : Windows.Storage.Streams.IRandomAccessStream, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream
{
extern(Windows):
	final ulong Size()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Size(&_ret));
		return _ret;
	}
	final void Size(ulong value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).set_Size(value));
	}
	final Windows.Storage.Streams.IInputStream GetInputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetInputStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream GetOutputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetOutputStreamAt(position, &_ret));
		return _ret;
	}
	final ulong Position()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Position(&_ret));
		return _ret;
	}
	final void Seek(ulong position)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_Seek(position));
	}
	final Windows.Storage.Streams.IRandomAccessStream CloneStream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_CloneStream(&_ret));
		return _ret;
	}
	final bool CanRead()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanRead(&_ret));
		return _ret;
	}
	final bool CanWrite()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanWrite(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IInputStream).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
}

interface InMemoryRandomAccessStream : Windows.Storage.Streams.IRandomAccessStream, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream
{
extern(Windows):
	final ulong Size()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Size(&_ret));
		return _ret;
	}
	final void Size(ulong value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).set_Size(value));
	}
	final Windows.Storage.Streams.IInputStream GetInputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetInputStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream GetOutputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetOutputStreamAt(position, &_ret));
		return _ret;
	}
	final ulong Position()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Position(&_ret));
		return _ret;
	}
	final void Seek(ulong position)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_Seek(position));
	}
	final Windows.Storage.Streams.IRandomAccessStream CloneStream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_CloneStream(&_ret));
		return _ret;
	}
	final bool CanRead()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanRead(&_ret));
		return _ret;
	}
	final bool CanWrite()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanWrite(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IInputStream).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
}

interface InputStreamOverStream : Windows.Storage.Streams.IInputStream, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IInputStream).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface OutputStreamOverStream : Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface RandomAccessStream
{
}

interface RandomAccessStreamOverStream : Windows.Storage.Streams.IRandomAccessStream, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream
{
extern(Windows):
	final ulong Size()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Size(&_ret));
		return _ret;
	}
	final void Size(ulong value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).set_Size(value));
	}
	final Windows.Storage.Streams.IInputStream GetInputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetInputStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream GetOutputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetOutputStreamAt(position, &_ret));
		return _ret;
	}
	final ulong Position()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Position(&_ret));
		return _ret;
	}
	final void Seek(ulong position)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_Seek(position));
	}
	final Windows.Storage.Streams.IRandomAccessStream CloneStream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_CloneStream(&_ret));
		return _ret;
	}
	final bool CanRead()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanRead(&_ret));
		return _ret;
	}
	final bool CanWrite()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanWrite(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IInputStream).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
}

interface RandomAccessStreamReference : Windows.Storage.Streams.IRandomAccessStreamReference
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) OpenReadAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStreamReference).abi_OpenReadAsync(&_ret));
		return _ret;
	}
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