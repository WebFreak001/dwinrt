module Windows.Storage.Compression;

import dwinrt;

@uuid("0ac3645a-57ac-4ee1-b702-84d39d5424e0")
@WinrtFactory("Windows.Storage.Compression.Compressor")
interface ICompressor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FinishAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_DetachStream(Windows.Storage.Streams.IOutputStream* return_stream);
}

@uuid("5f3d96a4-2cfb-442c-a8ba-d7d11b039da0")
@WinrtFactory("Windows.Storage.Compression.Compressor")
interface ICompressorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateCompressor(Windows.Storage.Streams.IOutputStream underlyingStream, Windows.Storage.Compression.Compressor* return_createdCompressor);
	HRESULT abi_CreateCompressorEx(Windows.Storage.Streams.IOutputStream underlyingStream, Windows.Storage.Compression.CompressAlgorithm algorithm, UINT32 blockSize, Windows.Storage.Compression.Compressor* return_createdCompressor);
}

@uuid("b883fe46-d68a-4c8b-ada0-4ee813fc5283")
@WinrtFactory("Windows.Storage.Compression.Decompressor")
interface IDecompressor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_DetachStream(Windows.Storage.Streams.IInputStream* return_stream);
}

@uuid("5337e252-1da2-42e1-8834-0379d28d742f")
@WinrtFactory("Windows.Storage.Compression.Decompressor")
interface IDecompressorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateDecompressor(Windows.Storage.Streams.IInputStream underlyingStream, Windows.Storage.Compression.Decompressor* return_createdDecompressor);
}

interface Compressor
{
}

interface Decompressor
{
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