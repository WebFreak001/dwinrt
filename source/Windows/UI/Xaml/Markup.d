module Windows.UI.Xaml.Markup;

import dwinrt;

struct XamlBinaryWriterErrorInformation
{
	UINT32 InputStreamIndex;
	UINT32 LineNumber;
	UINT32 LinePosition;
}

struct XmlnsDefinition
{
	HSTRING XmlNamespace;
	HSTRING Namespace;
}

@uuid("f6790987-e6e5-47f2-92c6-eccce4ba159a")
interface IComponentConnector : IInspectable
{
extern(Windows):
	HRESULT abi_Connect(INT32 connectionId, IInspectable target);
}

@uuid("dc8f368b-eccc-498e-b139-91142254d7ae")
interface IComponentConnector2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetBindingConnector(INT32 connectionId, IInspectable target, Windows.UI.Xaml.Markup.IComponentConnector* return_returnValue);
}

@uuid("08429dc8-8ab0-4747-aa9a-feadfc8da8e1")
interface IDataTemplateComponent : IInspectable
{
extern(Windows):
	HRESULT abi_Recycle();
	HRESULT abi_ProcessBindings(IInspectable item, INT32 itemIndex, INT32 phase, INT32* out_nextPhase);
}

@uuid("829d2ad3-620a-46f6-845d-436a05927100")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlBinaryWriter")
interface IXamlBinaryWriter : IInspectable
{
}

@uuid("0d8ed07a-9b82-4aa8-b68b-026f2de1cc86")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlBinaryWriter")
interface IXamlBinaryWriterStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Write(Windows.Foundation.Collections.IVector!(Windows.Storage.Streams.IRandomAccessStream) inputStreams, Windows.Foundation.Collections.IVector!(Windows.Storage.Streams.IRandomAccessStream) outputStreams, Windows.UI.Xaml.Markup.IXamlMetadataProvider xamlMetadataProvider, Windows.UI.Xaml.Markup.XamlBinaryWriterErrorInformation* return_returnValue);
}

@uuid("faa6fb06-8ab9-4ef7-8ae7-fbd30bbfd06d")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlBindingHelper")
interface IXamlBindingHelper : IInspectable
{
}

@uuid("f65cfb71-c80c-4ffa-86ee-558754ee336d")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlBindingHelper")
interface IXamlBindingHelperStatics : IInspectable
{
extern(Windows):
	HRESULT get_DataTemplateComponentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetDataTemplateComponent(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Markup.IDataTemplateComponent* return_value);
	HRESULT abi_SetDataTemplateComponent(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Markup.IDataTemplateComponent value);
	HRESULT abi_SuspendRendering(Windows.UI.Xaml.UIElement target);
	HRESULT abi_ResumeRendering(Windows.UI.Xaml.UIElement target);
	HRESULT abi_ConvertValue(Windows.UI.Xaml.Interop.TypeName type, IInspectable value, IInspectable* return_returnValue);
	HRESULT abi_SetPropertyFromString(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, HSTRING value);
	HRESULT abi_SetPropertyFromBoolean(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, bool value);
	HRESULT abi_SetPropertyFromChar16(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, wchar value);
	HRESULT abi_SetPropertyFromDateTime(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.DateTime value);
	HRESULT abi_SetPropertyFromDouble(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, double value);
	HRESULT abi_SetPropertyFromInt32(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, INT32 value);
	HRESULT abi_SetPropertyFromUInt32(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, UINT32 value);
	HRESULT abi_SetPropertyFromInt64(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, INT64 value);
	HRESULT abi_SetPropertyFromUInt64(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, ulong value);
	HRESULT abi_SetPropertyFromSingle(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, float value);
	HRESULT abi_SetPropertyFromPoint(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Point value);
	HRESULT abi_SetPropertyFromRect(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Rect value);
	HRESULT abi_SetPropertyFromSize(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Size value);
	HRESULT abi_SetPropertyFromTimeSpan(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.TimeSpan value);
	HRESULT abi_SetPropertyFromByte(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, ubyte value);
	HRESULT abi_SetPropertyFromUri(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Uri value);
	HRESULT abi_SetPropertyFromObject(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, IInspectable value);
}

@uuid("d0e6673c-5342-44ef-85a7-ed327a739d9a")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlMarkupHelper")
interface IXamlMarkupHelper : IInspectable
{
}

@uuid("c9bc3725-f34f-445c-81a2-6b72a5e8f072")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlMarkupHelper")
interface IXamlMarkupHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_UnloadObject(Windows.UI.Xaml.DependencyObject element);
}

@uuid("c541f58c-43a9-4216-b718-e0b11b14e93e")
interface IXamlMember : IInspectable
{
extern(Windows):
	HRESULT get_IsAttachable(bool* return_value);
	HRESULT get_IsDependencyProperty(bool* return_value);
	HRESULT get_IsReadOnly(bool* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT get_TargetType(Windows.UI.Xaml.Markup.IXamlType* return_value);
	HRESULT get_Type(Windows.UI.Xaml.Markup.IXamlType* return_value);
	HRESULT abi_GetValue(IInspectable instance, IInspectable* return_value);
	HRESULT abi_SetValue(IInspectable instance, IInspectable value);
}

@uuid("b3765d69-68a5-4b32-8861-fdb90c1f5836")
interface IXamlMetadataProvider : IInspectable
{
extern(Windows):
	HRESULT abi_GetXamlType(Windows.UI.Xaml.Interop.TypeName type, Windows.UI.Xaml.Markup.IXamlType* return_xamlType);
	HRESULT abi_GetXamlType(HSTRING fullName, Windows.UI.Xaml.Markup.IXamlType* return_xamlType);
	HRESULT abi_GetXmlnsDefinitions(UINT32* out___definitionsSize, Windows.UI.Xaml.Markup.XmlnsDefinition** return_definitions);
}

@uuid("24374cf1-cceb-48bf-a514-41b0186f84c2")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlReader")
interface IXamlReader : IInspectable
{
}

@uuid("9891c6bd-534f-4955-b85a-8a8dc0dca602")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlReader")
interface IXamlReaderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Load(HSTRING xaml, IInspectable* return_returnValue);
	HRESULT abi_LoadWithInitialTemplateValidation(HSTRING xaml, IInspectable* return_returnValue);
}

@uuid("7920eab1-a2e5-479a-bd50-6cef3c0b4970")
interface IXamlType : IInspectable
{
extern(Windows):
	HRESULT get_BaseType(Windows.UI.Xaml.Markup.IXamlType* return_value);
	HRESULT get_ContentProperty(Windows.UI.Xaml.Markup.IXamlMember* return_value);
	HRESULT get_FullName(HSTRING* return_value);
	HRESULT get_IsArray(bool* return_value);
	HRESULT get_IsCollection(bool* return_value);
	HRESULT get_IsConstructible(bool* return_value);
	HRESULT get_IsDictionary(bool* return_value);
	HRESULT get_IsMarkupExtension(bool* return_value);
	HRESULT get_IsBindable(bool* return_value);
	HRESULT get_ItemType(Windows.UI.Xaml.Markup.IXamlType* return_value);
	HRESULT get_KeyType(Windows.UI.Xaml.Markup.IXamlType* return_value);
	HRESULT get_UnderlyingType(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT abi_ActivateInstance(IInspectable* return_instance);
	HRESULT abi_CreateFromString(HSTRING value, IInspectable* return_instance);
	HRESULT abi_GetMember(HSTRING name, Windows.UI.Xaml.Markup.IXamlMember* return_xamlMember);
	HRESULT abi_AddToVector(IInspectable instance, IInspectable value);
	HRESULT abi_AddToMap(IInspectable instance, IInspectable key, IInspectable value);
	HRESULT abi_RunInitializer();
}

interface XamlBinaryWriter : Windows.UI.Xaml.Markup.IXamlBinaryWriter
{
	private static Windows.UI.Xaml.Markup.IXamlBinaryWriterStatics _staticInstance;
	public static Windows.UI.Xaml.Markup.IXamlBinaryWriterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Markup.IXamlBinaryWriterStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.Markup.XamlBinaryWriterErrorInformation Write(Windows.Foundation.Collections.IVector!(Windows.Storage.Streams.IRandomAccessStream) inputStreams, Windows.Foundation.Collections.IVector!(Windows.Storage.Streams.IRandomAccessStream) outputStreams, Windows.UI.Xaml.Markup.IXamlMetadataProvider xamlMetadataProvider)
	{
		Windows.UI.Xaml.Markup.XamlBinaryWriterErrorInformation _ret;
		Debug.OK(staticInstance.abi_Write(inputStreams, outputStreams, xamlMetadataProvider, &_ret));
		return _ret;
	}
}

interface XamlBindingHelper : Windows.UI.Xaml.Markup.IXamlBindingHelper
{
	private static Windows.UI.Xaml.Markup.IXamlBindingHelperStatics _staticInstance;
	public static Windows.UI.Xaml.Markup.IXamlBindingHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Markup.IXamlBindingHelperStatics);
		return _staticInstance;
	}
	static Windows.UI.Xaml.DependencyProperty DataTemplateComponentProperty()
	{
		Windows.UI.Xaml.DependencyProperty _ret;
		Debug.OK(staticInstance.get_DataTemplateComponentProperty(&_ret));
		return _ret;
	}
	static Windows.UI.Xaml.Markup.IDataTemplateComponent GetDataTemplateComponent(Windows.UI.Xaml.DependencyObject element)
	{
		Windows.UI.Xaml.Markup.IDataTemplateComponent _ret;
		Debug.OK(staticInstance.abi_GetDataTemplateComponent(element, &_ret));
		return _ret;
	}
	static void SetDataTemplateComponent(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Markup.IDataTemplateComponent value)
	{
		Debug.OK(staticInstance.abi_SetDataTemplateComponent(element, value));
	}
	static void SuspendRendering(Windows.UI.Xaml.UIElement target)
	{
		Debug.OK(staticInstance.abi_SuspendRendering(target));
	}
	static void ResumeRendering(Windows.UI.Xaml.UIElement target)
	{
		Debug.OK(staticInstance.abi_ResumeRendering(target));
	}
	static IInspectable ConvertValue(Windows.UI.Xaml.Interop.TypeName type, IInspectable value)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_ConvertValue(type, value, &_ret));
		return _ret;
	}
	static void SetPropertyFromString(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, HSTRING value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromString(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromBoolean(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, bool value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromBoolean(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromChar16(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, wchar value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromChar16(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromDateTime(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.DateTime value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromDateTime(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromDouble(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, double value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromDouble(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromInt32(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, INT32 value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromInt32(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromUInt32(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, UINT32 value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromUInt32(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromInt64(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, INT64 value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromInt64(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromUInt64(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, ulong value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromUInt64(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromSingle(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, float value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromSingle(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromPoint(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Point value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromPoint(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromRect(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Rect value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromRect(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromSize(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Size value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromSize(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromTimeSpan(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.TimeSpan value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromTimeSpan(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromByte(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, ubyte value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromByte(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromUri(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Uri value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromUri(dependencyObject, propertyToSet, value));
	}
	static void SetPropertyFromObject(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, IInspectable value)
	{
		Debug.OK(staticInstance.abi_SetPropertyFromObject(dependencyObject, propertyToSet, value));
	}
}

interface XamlMarkupHelper : Windows.UI.Xaml.Markup.IXamlMarkupHelper
{
	private static Windows.UI.Xaml.Markup.IXamlMarkupHelperStatics _staticInstance;
	public static Windows.UI.Xaml.Markup.IXamlMarkupHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Markup.IXamlMarkupHelperStatics);
		return _staticInstance;
	}
	static void UnloadObject(Windows.UI.Xaml.DependencyObject element)
	{
		Debug.OK(staticInstance.abi_UnloadObject(element));
	}
}

interface XamlReader : Windows.UI.Xaml.Markup.IXamlReader
{
	private static Windows.UI.Xaml.Markup.IXamlReaderStatics _staticInstance;
	public static Windows.UI.Xaml.Markup.IXamlReaderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Xaml.Markup.IXamlReaderStatics);
		return _staticInstance;
	}
	static IInspectable Load(HSTRING xaml)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_Load(xaml, &_ret));
		return _ret;
	}
	static IInspectable LoadWithInitialTemplateValidation(HSTRING xaml)
	{
		IInspectable _ret;
		Debug.OK(staticInstance.abi_LoadWithInitialTemplateValidation(xaml, &_ret));
		return _ret;
	}
}