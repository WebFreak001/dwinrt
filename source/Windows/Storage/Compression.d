module Windows.Storage.Compression;

import dwinrt;

@uuid("0ac3645a-57ac-4ee1-b702-84d39d5424e0")
@WinrtFactory("Windows.Storage.Compression.Compressor")
interface ICompressor_Base : IInspectable
{
extern(Windows):
	HRESULT abi_FinishAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_DetachStream(Windows.Storage.Streams.IOutputStream* return_stream);
}
@uuid("0ac3645a-57ac-4ee1-b702-84d39d5424e0")
@WinrtFactory("Windows.Storage.Compression.Compressor")
interface ICompressor : ICompressor_Base, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable {}

@uuid("5f3d96a4-2cfb-442c-a8ba-d7d11b039da0")
@WinrtFactory("Windows.Storage.Compression.Compressor")
interface ICompressorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCompressor(Windows.Storage.Streams.IOutputStream underlyingStream, Windows.Storage.Compression.Compressor* return_createdCompressor);
	HRESULT abi_CreateCompressorEx(Windows.Storage.Streams.IOutputStream underlyingStream, Windows.Storage.Compression.CompressAlgorithm algorithm, UINT32 blockSize, Windows.Storage.Compression.Compressor* return_createdCompressor);
}

@uuid("b883fe46-d68a-4c8b-ada0-4ee813fc5283")
@WinrtFactory("Windows.Storage.Compression.Decompressor")
interface IDecompressor_Base : IInspectable
{
extern(Windows):
	HRESULT abi_DetachStream(Windows.Storage.Streams.IInputStream* return_stream);
}
@uuid("b883fe46-d68a-4c8b-ada0-4ee813fc5283")
@WinrtFactory("Windows.Storage.Compression.Decompressor")
interface IDecompressor : IDecompressor_Base, Windows.Storage.Streams.IInputStream, Windows.Foundation.IClosable {}

@uuid("5337e252-1da2-42e1-8834-0379d28d742f")
@WinrtFactory("Windows.Storage.Compression.Decompressor")
interface IDecompressorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateDecompressor(Windows.Storage.Streams.IInputStream underlyingStream, Windows.Storage.Compression.Decompressor* return_createdDecompressor);
}

interface Compressor : Windows.Storage.Compression.ICompressor, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(bool) FinishAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Storage.Compression.ICompressor)this.asInterface(uuid("0ac3645a-57ac-4ee1-b702-84d39d5424e0"))).abi_FinishAsync(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream DetachStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK((cast(Windows.Storage.Compression.ICompressor)this.asInterface(uuid("0ac3645a-57ac-4ee1-b702-84d39d5424e0"))).abi_DetachStream(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IOutputStream)this.asInterface(uuid("905a0fe6-bc53-11df-8c49-001e4fc686da"))).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IOutputStream)this.asInterface(uuid("905a0fe6-bc53-11df-8c49-001e4fc686da"))).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static Windows.Storage.Compression.Compressor New(Windows.Storage.Streams.IOutputStream underlyingStream)
	{
		auto factory = factory!(Windows.Storage.Compression.ICompressorFactory);
		Windows.Storage.Compression.Compressor _ret;
		Debug.OK((cast(Windows.Storage.Compression.ICompressorFactory)factory.asInterface(uuid("5f3d96a4-2cfb-442c-a8ba-d7d11b039da0"))).abi_CreateCompressor(underlyingStream, &_ret));
		return _ret;
	}
	static Windows.Storage.Compression.Compressor New(Windows.Storage.Streams.IOutputStream underlyingStream, Windows.Storage.Compression.CompressAlgorithm algorithm, UINT32 blockSize)
	{
		auto factory = factory!(Windows.Storage.Compression.ICompressorFactory);
		Windows.Storage.Compression.Compressor _ret;
		Debug.OK((cast(Windows.Storage.Compression.ICompressorFactory)factory.asInterface(uuid("5f3d96a4-2cfb-442c-a8ba-d7d11b039da0"))).abi_CreateCompressorEx(underlyingStream, algorithm, blockSize, &_ret));
		return _ret;
	}
}

interface Decompressor : Windows.Storage.Compression.IDecompressor, Windows.Storage.Streams.IInputStream, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Storage.Streams.IInputStream DetachStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK((cast(Windows.Storage.Compression.IDecompressor)this.asInterface(uuid("b883fe46-d68a-4c8b-ada0-4ee813fc5283"))).abi_DetachStream(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IInputStream)this.asInterface(uuid("905a0fe2-bc53-11df-8c49-001e4fc686da"))).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	static Windows.Storage.Compression.Decompressor New(Windows.Storage.Streams.IInputStream underlyingStream)
	{
		auto factory = factory!(Windows.Storage.Compression.IDecompressorFactory);
		Windows.Storage.Compression.Decompressor _ret;
		Debug.OK((cast(Windows.Storage.Compression.IDecompressorFactory)factory.asInterface(uuid("5337e252-1da2-42e1-8834-0379d28d742f"))).abi_CreateDecompressor(underlyingStream, &_ret));
		return _ret;
	}
}

enum CompressAlgorithm
{
	InvalidAlgorithm = 0,
	NullAlgorithm = 1,
	Mszip = 2,
	Xpress = 3,
	XpressHuff = 4,
	Lzms = 5
}