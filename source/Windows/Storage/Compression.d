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
		Debug.OK(this.as!(Windows.Storage.Compression.ICompressor).abi_FinishAsync(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream DetachStream()
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Compression.ICompressor).abi_DetachStream(&_ret));
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
}

interface Decompressor : Windows.Storage.Compression.IDecompressor, Windows.Storage.Streams.IInputStream, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Storage.Streams.IInputStream DetachStream()
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Compression.IDecompressor).abi_DetachStream(&_ret));
		return _ret;
	}
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

enum CompressAlgorithm
{
	InvalidAlgorithm = 0,
	NullAlgorithm = 1,
	Mszip = 2,
	Xpress = 3,
	XpressHuff = 4,
	Lzms = 5
}