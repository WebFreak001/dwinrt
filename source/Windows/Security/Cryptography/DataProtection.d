module Windows.Security.Cryptography.DataProtection;

import dwinrt;

@uuid("09639948-ed22-4270-bd1c-6d72c00f8787")
@WinrtFactory("Windows.Security.Cryptography.DataProtection.DataProtectionProvider")
interface IDataProtectionProvider : IInspectable
{
extern(Windows):
	HRESULT abi_ProtectAsync(Windows.Storage.Streams.IBuffer data, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_value);
	HRESULT abi_UnprotectAsync(Windows.Storage.Streams.IBuffer data, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_value);
	HRESULT abi_ProtectStreamAsync(Windows.Storage.Streams.IInputStream src, Windows.Storage.Streams.IOutputStream dest, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_UnprotectStreamAsync(Windows.Storage.Streams.IInputStream src, Windows.Storage.Streams.IOutputStream dest, Windows.Foundation.IAsyncAction* return_value);
}

@uuid("adf33dac-4932-4cdf-ac41-7214333514ca")
@WinrtFactory("Windows.Security.Cryptography.DataProtection.DataProtectionProvider")
interface IDataProtectionProviderFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateOverloadExplicit(HSTRING protectionDescriptor, Windows.Security.Cryptography.DataProtection.DataProtectionProvider* return_value);
}

interface DataProtectionProvider : Windows.Security.Cryptography.DataProtection.IDataProtectionProvider
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) ProtectAsync(Windows.Storage.Streams.IBuffer data)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.DataProtection.IDataProtectionProvider).abi_ProtectAsync(data, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) UnprotectAsync(Windows.Storage.Streams.IBuffer data)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.DataProtection.IDataProtectionProvider).abi_UnprotectAsync(data, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ProtectStreamAsync(Windows.Storage.Streams.IInputStream src, Windows.Storage.Streams.IOutputStream dest)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.DataProtection.IDataProtectionProvider).abi_ProtectStreamAsync(src, dest, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UnprotectStreamAsync(Windows.Storage.Streams.IInputStream src, Windows.Storage.Streams.IOutputStream dest)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.DataProtection.IDataProtectionProvider).abi_UnprotectStreamAsync(src, dest, &_ret));
		return _ret;
	}
	static DataProtectionProvider New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(DataProtectionProvider).abi_ActivateInstance(&ret));
		return ret.as!(DataProtectionProvider);
	}
	static Windows.Security.Cryptography.DataProtection.DataProtectionProvider New(HSTRING protectionDescriptor)
	{
		auto factory = factory!(Windows.Security.Cryptography.DataProtection.IDataProtectionProviderFactory);
		Windows.Security.Cryptography.DataProtection.DataProtectionProvider _ret;
		Debug.OK(factory.as!(Windows.Security.Cryptography.DataProtection.IDataProtectionProviderFactory).abi_CreateOverloadExplicit(protectionDescriptor, &_ret));
		return _ret;
	}
}