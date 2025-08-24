module Windows.Foundation.Metadata;

import dwinrt;

@uuid("997439fe-f681-4a11-b416-c13a47e8ba36")
@WinrtFactory("Windows.Foundation.Metadata.ApiInformation")
interface IApiInformationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsTypePresent(HSTRING typeName, bool* return_value);
	HRESULT abi_IsMethodPresent(HSTRING typeName, HSTRING methodName, bool* return_value);
	HRESULT abi_IsMethodPresentWithArity(HSTRING typeName, HSTRING methodName, UINT32 inputParameterCount, bool* return_value);
	HRESULT abi_IsEventPresent(HSTRING typeName, HSTRING eventName, bool* return_value);
	HRESULT abi_IsPropertyPresent(HSTRING typeName, HSTRING propertyName, bool* return_value);
	HRESULT abi_IsReadOnlyPropertyPresent(HSTRING typeName, HSTRING propertyName, bool* return_value);
	HRESULT abi_IsWriteablePropertyPresent(HSTRING typeName, HSTRING propertyName, bool* return_value);
	HRESULT abi_IsEnumNamedValuePresent(HSTRING enumTypeName, HSTRING valueName, bool* return_value);
	HRESULT abi_IsApiContractPresentByMajor(HSTRING contractName, UINT16 majorVersion, bool* return_value);
	HRESULT abi_IsApiContractPresentByMajorAndMinor(HSTRING contractName, UINT16 majorVersion, UINT16 minorVersion, bool* return_value);
}

interface ApiInformation
{
	private static Windows.Foundation.Metadata.IApiInformationStatics _staticInstance;
	public static Windows.Foundation.Metadata.IApiInformationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Foundation.Metadata.IApiInformationStatics);
		return _staticInstance;
	}
	static bool IsTypePresent(wstring typeName)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsTypePresent(hstring(typeName).handle, &_ret));
		return _ret;
	}
	static bool IsMethodPresent(wstring typeName, wstring methodName)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsMethodPresent(hstring(typeName).handle, hstring(methodName).handle, &_ret));
		return _ret;
	}
	static bool IsMethodPresentWithArity(wstring typeName, wstring methodName, UINT32 inputParameterCount)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsMethodPresentWithArity(hstring(typeName).handle, hstring(methodName).handle, inputParameterCount, &_ret));
		return _ret;
	}
	alias IsMethodPresent = IsMethodPresentWithArity;
	static bool IsEventPresent(wstring typeName, wstring eventName)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsEventPresent(hstring(typeName).handle, hstring(eventName).handle, &_ret));
		return _ret;
	}
	static bool IsPropertyPresent(wstring typeName, wstring propertyName)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsPropertyPresent(hstring(typeName).handle, hstring(propertyName).handle, &_ret));
		return _ret;
	}
	static bool IsReadOnlyPropertyPresent(wstring typeName, wstring propertyName)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsReadOnlyPropertyPresent(hstring(typeName).handle, hstring(propertyName).handle, &_ret));
		return _ret;
	}
	static bool IsWriteablePropertyPresent(wstring typeName, wstring propertyName)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsWriteablePropertyPresent(hstring(typeName).handle, hstring(propertyName).handle, &_ret));
		return _ret;
	}
	static bool IsEnumNamedValuePresent(wstring enumTypeName, wstring valueName)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsEnumNamedValuePresent(hstring(enumTypeName).handle, hstring(valueName).handle, &_ret));
		return _ret;
	}
	static bool IsApiContractPresentByMajor(wstring contractName, UINT16 majorVersion)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsApiContractPresentByMajor(hstring(contractName).handle, majorVersion, &_ret));
		return _ret;
	}
	alias IsApiContractPresent = IsApiContractPresentByMajor;
	static bool IsApiContractPresentByMajorAndMinor(wstring contractName, UINT16 majorVersion, UINT16 minorVersion)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsApiContractPresentByMajorAndMinor(hstring(contractName).handle, majorVersion, minorVersion, &_ret));
		return _ret;
	}
	alias IsApiContractPresent = IsApiContractPresentByMajorAndMinor;
}

enum GCPressureAmount
{
	Low = 0,
	Medium = 1,
	High = 2
}