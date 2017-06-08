module Windows.Security.Cryptography;

import dwinrt;

@uuid("320b7e22-3cb0-4cdf-8663-1d28910065eb")
@WinrtFactory("Windows.Security.Cryptography.CryptographicBuffer")
interface ICryptographicBufferStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Compare(Windows.Storage.Streams.IBuffer object1, Windows.Storage.Streams.IBuffer object2, bool* return_isEqual);
	HRESULT abi_GenerateRandom(UINT32 length, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_GenerateRandomNumber(UINT32* return_value);
	HRESULT abi_CreateFromByteArray(UINT32 __valueSize, BYTE* value, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_CopyToByteArray(Windows.Storage.Streams.IBuffer buffer, UINT32* out___valueSize, BYTE** out_value);
	HRESULT abi_DecodeFromHexString(HSTRING value, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_EncodeToHexString(Windows.Storage.Streams.IBuffer buffer, HSTRING* return_value);
	HRESULT abi_DecodeFromBase64String(HSTRING value, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_EncodeToBase64String(Windows.Storage.Streams.IBuffer buffer, HSTRING* return_value);
	HRESULT abi_ConvertStringToBinary(HSTRING value, Windows.Security.Cryptography.BinaryStringEncoding encoding, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_ConvertBinaryToString(Windows.Security.Cryptography.BinaryStringEncoding encoding, Windows.Storage.Streams.IBuffer buffer, HSTRING* return_value);
}

interface CryptographicBuffer
{
}

enum BinaryStringEncoding
{
	Utf8 = 0,
	Utf16LE = 1,
	Utf16BE = 2
}