module Windows.Security.Cryptography;

import dwinrt;

@uuid("320b7e22-3cb0-4cdf-8663-1d28910065eb")
@WinrtFactory("Windows.Security.Cryptography.CryptographicBuffer")
interface ICryptographicBufferStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Compare(Windows.Storage.Streams.IBuffer object1, Windows.Storage.Streams.IBuffer object2, bool* return_isEqual);
	HRESULT abi_GenerateRandom(UINT32 length, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_GenerateRandomNumber(UINT32* return_value);
	HRESULT abi_CreateFromByteArray(UINT32 __valueSize, ubyte* value, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_CopyToByteArray(Windows.Storage.Streams.IBuffer buffer, UINT32* out___valueSize, ubyte** out_value);
	HRESULT abi_DecodeFromHexString(HSTRING value, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_EncodeToHexString(Windows.Storage.Streams.IBuffer buffer, HSTRING* return_value);
	HRESULT abi_DecodeFromBase64String(HSTRING value, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_EncodeToBase64String(Windows.Storage.Streams.IBuffer buffer, HSTRING* return_value);
	HRESULT abi_ConvertStringToBinary(HSTRING value, Windows.Security.Cryptography.BinaryStringEncoding encoding, Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_ConvertBinaryToString(Windows.Security.Cryptography.BinaryStringEncoding encoding, Windows.Storage.Streams.IBuffer buffer, HSTRING* return_value);
}

interface CryptographicBuffer
{
	private static Windows.Security.Cryptography.ICryptographicBufferStatics _staticInstance;
	public static Windows.Security.Cryptography.ICryptographicBufferStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.ICryptographicBufferStatics);
		return _staticInstance;
	}
	static bool Compare(Windows.Storage.Streams.IBuffer object1, Windows.Storage.Streams.IBuffer object2)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_Compare(object1, object2, &_ret));
		return _ret;
	}
	static Windows.Storage.Streams.IBuffer GenerateRandom(UINT32 length)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(staticInstance.abi_GenerateRandom(length, &_ret));
		return _ret;
	}
	static UINT32 GenerateRandomNumber()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.abi_GenerateRandomNumber(&_ret));
		return _ret;
	}
	static Windows.Storage.Streams.IBuffer CreateFromByteArray(UINT32 __valueSize, ubyte* value)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(staticInstance.abi_CreateFromByteArray(__valueSize, value, &_ret));
		return _ret;
	}
	static void CopyToByteArray(Windows.Storage.Streams.IBuffer buffer, UINT32* out___valueSize, ubyte** out_value)
	{
		Debug.OK(staticInstance.abi_CopyToByteArray(buffer, out___valueSize, out_value));
	}
	static Windows.Storage.Streams.IBuffer DecodeFromHexString(HSTRING value)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(staticInstance.abi_DecodeFromHexString(value, &_ret));
		return _ret;
	}
	static HSTRING EncodeToHexString(Windows.Storage.Streams.IBuffer buffer)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_EncodeToHexString(buffer, &_ret));
		return _ret;
	}
	static Windows.Storage.Streams.IBuffer DecodeFromBase64String(HSTRING value)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(staticInstance.abi_DecodeFromBase64String(value, &_ret));
		return _ret;
	}
	static HSTRING EncodeToBase64String(Windows.Storage.Streams.IBuffer buffer)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_EncodeToBase64String(buffer, &_ret));
		return _ret;
	}
	static Windows.Storage.Streams.IBuffer ConvertStringToBinary(HSTRING value, Windows.Security.Cryptography.BinaryStringEncoding encoding)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(staticInstance.abi_ConvertStringToBinary(value, encoding, &_ret));
		return _ret;
	}
	static HSTRING ConvertBinaryToString(Windows.Security.Cryptography.BinaryStringEncoding encoding, Windows.Storage.Streams.IBuffer buffer)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_ConvertBinaryToString(encoding, buffer, &_ret));
		return _ret;
	}
}

enum BinaryStringEncoding
{
	Utf8 = 0,
	Utf16LE = 1,
	Utf16BE = 2
}