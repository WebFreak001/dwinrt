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
}