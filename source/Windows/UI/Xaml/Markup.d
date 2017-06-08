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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Connect(INT32 connectionId, IInspectable target);
}

@uuid("dc8f368b-eccc-498e-b139-91142254d7ae")
interface IComponentConnector2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetBindingConnector(INT32 connectionId, IInspectable target, Windows.UI.Xaml.Markup.IComponentConnector* return_returnValue);
}

@uuid("08429dc8-8ab0-4747-aa9a-feadfc8da8e1")
interface IDataTemplateComponent : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Recycle();
	HRESULT abi_ProcessBindings(IInspectable item, INT32 itemIndex, INT32 phase, INT32* out_nextPhase);
}

@uuid("0d8ed07a-9b82-4aa8-b68b-026f2de1cc86")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlBinaryWriter")
interface IXamlBinaryWriterStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Write(Windows.Foundation.Collections.IVector!(Windows.Storage.Streams.IRandomAccessStream) inputStreams, Windows.Foundation.Collections.IVector!(Windows.Storage.Streams.IRandomAccessStream) outputStreams, Windows.UI.Xaml.Markup.IXamlMetadataProvider xamlMetadataProvider, Windows.UI.Xaml.Markup.XamlBinaryWriterErrorInformation* return_returnValue);
}

@uuid("f65cfb71-c80c-4ffa-86ee-558754ee336d")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlBindingHelper")
interface IXamlBindingHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DataTemplateComponentProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT abi_GetDataTemplateComponent(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Markup.IDataTemplateComponent* return_value);
	HRESULT abi_SetDataTemplateComponent(Windows.UI.Xaml.DependencyObject element, Windows.UI.Xaml.Markup.IDataTemplateComponent value);
	HRESULT abi_SuspendRendering(Windows.UI.Xaml.UIElement target);
	HRESULT abi_ResumeRendering(Windows.UI.Xaml.UIElement target);
	HRESULT abi_ConvertValue(Windows.UI.Xaml.Interop.TypeName type, IInspectable value, IInspectable* return_returnValue);
	HRESULT abi_SetPropertyFromString(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, HSTRING value);
	HRESULT abi_SetPropertyFromBoolean(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, bool value);
	HRESULT abi_SetPropertyFromChar16(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, WCHAR value);
	HRESULT abi_SetPropertyFromDateTime(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.DateTime value);
	HRESULT abi_SetPropertyFromDouble(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, double value);
	HRESULT abi_SetPropertyFromInt32(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, INT32 value);
	HRESULT abi_SetPropertyFromUInt32(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, UINT32 value);
	HRESULT abi_SetPropertyFromInt64(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, INT64 value);
	HRESULT abi_SetPropertyFromUInt64(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, UINT64 value);
	HRESULT abi_SetPropertyFromSingle(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, FLOAT value);
	HRESULT abi_SetPropertyFromPoint(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Point value);
	HRESULT abi_SetPropertyFromRect(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Rect value);
	HRESULT abi_SetPropertyFromSize(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Size value);
	HRESULT abi_SetPropertyFromTimeSpan(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.TimeSpan value);
	HRESULT abi_SetPropertyFromByte(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, BYTE value);
	HRESULT abi_SetPropertyFromUri(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, Windows.Foundation.Uri value);
	HRESULT abi_SetPropertyFromObject(IInspectable dependencyObject, Windows.UI.Xaml.DependencyProperty propertyToSet, IInspectable value);
}

@uuid("c9bc3725-f34f-445c-81a2-6b72a5e8f072")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlMarkupHelper")
interface IXamlMarkupHelperStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_UnloadObject(Windows.UI.Xaml.DependencyObject element);
}

@uuid("c541f58c-43a9-4216-b718-e0b11b14e93e")
interface IXamlMember : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetXamlType(Windows.UI.Xaml.Interop.TypeName type, Windows.UI.Xaml.Markup.IXamlType* return_xamlType);
	HRESULT abi_GetXamlTypeByFullName(HSTRING fullName, Windows.UI.Xaml.Markup.IXamlType* return_xamlType);
	HRESULT abi_GetXmlnsDefinitions(UINT32* out___definitionsSize, Windows.UI.Xaml.Markup.XmlnsDefinition** return_definitions);
}

@uuid("9891c6bd-534f-4955-b85a-8a8dc0dca602")
@WinrtFactory("Windows.UI.Xaml.Markup.XamlReader")
interface IXamlReaderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Load(HSTRING xaml, IInspectable* return_returnValue);
	HRESULT abi_LoadWithInitialTemplateValidation(HSTRING xaml, IInspectable* return_returnValue);
}

@uuid("7920eab1-a2e5-479a-bd50-6cef3c0b4970")
interface IXamlType : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

interface XamlBinaryWriter
{
}

interface XamlBindingHelper
{
}

interface XamlMarkupHelper
{
}

interface XamlReader
{
}