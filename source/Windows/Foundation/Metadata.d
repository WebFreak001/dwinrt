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
	static bool IsTypePresent(HSTRING typeName)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Foundation.Metadata.IApiInformationStatics).abi_IsTypePresent(typeName, &_ret));
		return _ret;
	}
	static bool IsMethodPresent(HSTRING typeName, HSTRING methodName)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Foundation.Metadata.IApiInformationStatics).abi_IsMethodPresent(typeName, methodName, &_ret));
		return _ret;
	}
	static bool IsMethodPresentWithArity(HSTRING typeName, HSTRING methodName, UINT32 inputParameterCount)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Foundation.Metadata.IApiInformationStatics).abi_IsMethodPresentWithArity(typeName, methodName, inputParameterCount, &_ret));
		return _ret;
	}
	static bool IsEventPresent(HSTRING typeName, HSTRING eventName)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Foundation.Metadata.IApiInformationStatics).abi_IsEventPresent(typeName, eventName, &_ret));
		return _ret;
	}
	static bool IsPropertyPresent(HSTRING typeName, HSTRING propertyName)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Foundation.Metadata.IApiInformationStatics).abi_IsPropertyPresent(typeName, propertyName, &_ret));
		return _ret;
	}
	static bool IsReadOnlyPropertyPresent(HSTRING typeName, HSTRING propertyName)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Foundation.Metadata.IApiInformationStatics).abi_IsReadOnlyPropertyPresent(typeName, propertyName, &_ret));
		return _ret;
	}
	static bool IsWriteablePropertyPresent(HSTRING typeName, HSTRING propertyName)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Foundation.Metadata.IApiInformationStatics).abi_IsWriteablePropertyPresent(typeName, propertyName, &_ret));
		return _ret;
	}
	static bool IsEnumNamedValuePresent(HSTRING enumTypeName, HSTRING valueName)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Foundation.Metadata.IApiInformationStatics).abi_IsEnumNamedValuePresent(enumTypeName, valueName, &_ret));
		return _ret;
	}
	static bool IsApiContractPresentByMajor(HSTRING contractName, UINT16 majorVersion)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Foundation.Metadata.IApiInformationStatics).abi_IsApiContractPresentByMajor(contractName, majorVersion, &_ret));
		return _ret;
	}
	static bool IsApiContractPresentByMajorAndMinor(HSTRING contractName, UINT16 majorVersion, UINT16 minorVersion)
	{
		bool _ret;
		Debug.OK(staticInstance.as!(Windows.Foundation.Metadata.IApiInformationStatics).abi_IsApiContractPresentByMajorAndMinor(contractName, majorVersion, minorVersion, &_ret));
		return _ret;
	}
}

enum GCPressureAmount
{
	Low = 0,
	Medium = 1,
	High = 2
}