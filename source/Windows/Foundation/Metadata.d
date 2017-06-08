module Windows.Foundation.Metadata;

import dwinrt;

@uuid("997439fe-f681-4a11-b416-c13a47e8ba36")
@WinrtFactory("Windows.Foundation.Metadata.ApiInformation")
interface IApiInformationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
}

enum GCPressureAmount
{
	Low = 0,
	Medium = 1,
	High = 2
}