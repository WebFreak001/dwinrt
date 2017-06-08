module Windows.UI.Xaml.Interop;

import dwinrt;

struct TypeName
{
	HSTRING Name;
	Windows.UI.Xaml.Interop.TypeKind Kind;
}

@uuid("624cd4e1-d007-43b1-9c03-af4d3e6258c4")
interface BindableVectorChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.UI.Xaml.Interop.IBindableObservableVector vector, IInspectable e);
}

@uuid("ca10b37c-f382-4591-8557-5e24965279b0")
interface NotifyCollectionChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Interop.NotifyCollectionChangedEventArgs e);
}

@uuid("036d2c08-df29-41af-8aa2-d774be62ba6f")
interface IBindableIterable : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_First(Windows.UI.Xaml.Interop.IBindableIterator* return_returnValue);
}

@uuid("6a1d6c07-076d-49f2-8314-f52c9c9a8331")
interface IBindableIterator : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Current(IInspectable* return_value);
	HRESULT get_HasCurrent(bool* return_value);
	HRESULT abi_MoveNext(bool* return_returnValue);
}

@uuid("fe1eb536-7e7f-4f90-ac9a-474984aae512")
interface IBindableObservableVector : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_VectorChanged(Windows.UI.Xaml.Interop.BindableVectorChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_VectorChanged(EventRegistrationToken token);
}

@uuid("393de7de-6fd0-4c0d-bb71-47244a113e93")
interface IBindableVector : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAt(UINT32 index, IInspectable* return_returnValue);
	HRESULT get_Size(UINT32* return_value);
	HRESULT abi_GetView(Windows.UI.Xaml.Interop.IBindableVectorView* return_returnValue);
	HRESULT abi_IndexOf(IInspectable value, UINT32* out_index, bool* return_returnValue);
	HRESULT abi_SetAt(UINT32 index, IInspectable value);
	HRESULT abi_InsertAt(UINT32 index, IInspectable value);
	HRESULT abi_RemoveAt(UINT32 index);
	HRESULT abi_Append(IInspectable value);
	HRESULT abi_RemoveAtEnd();
	HRESULT abi_Clear();
}

@uuid("346dd6e7-976e-4bc3-815d-ece243bc0f33")
interface IBindableVectorView : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAt(UINT32 index, IInspectable* return_returnValue);
	HRESULT get_Size(UINT32* return_value);
	HRESULT abi_IndexOf(IInspectable value, UINT32* out_index, bool* return_returnValue);
}

@uuid("28b167d5-1a31-465b-9b25-d5c3ae686c40")
interface INotifyCollectionChanged : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_CollectionChanged(Windows.UI.Xaml.Interop.NotifyCollectionChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_CollectionChanged(EventRegistrationToken token);
}

@uuid("4cf68d33-e3f2-4964-b85e-945b4f7e2f21")
@WinrtFactory("Windows.UI.Xaml.Interop.NotifyCollectionChangedEventArgs")
interface INotifyCollectionChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Action(Windows.UI.Xaml.Interop.NotifyCollectionChangedAction* return_value);
	HRESULT get_NewItems(Windows.UI.Xaml.Interop.IBindableVector* return_value);
	HRESULT get_OldItems(Windows.UI.Xaml.Interop.IBindableVector* return_value);
	HRESULT get_NewStartingIndex(INT32* return_value);
	HRESULT get_OldStartingIndex(INT32* return_value);
}

@uuid("b30c3e3a-df8d-44a5-9a38-7ac0d08ce63d")
@WinrtFactory("Windows.UI.Xaml.Interop.NotifyCollectionChangedEventArgs")
interface INotifyCollectionChangedEventArgsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceWithAllParameters(Windows.UI.Xaml.Interop.NotifyCollectionChangedAction action, Windows.UI.Xaml.Interop.IBindableVector newItems, Windows.UI.Xaml.Interop.IBindableVector oldItems, INT32 newIndex, INT32 oldIndex, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Interop.NotifyCollectionChangedEventArgs* return_instance);
}

interface NotifyCollectionChangedEventArgs
{
}

enum NotifyCollectionChangedAction
{
	Add = 0,
	Remove = 1,
	Replace = 2,
	Move = 3,
	Reset = 4
}

enum TypeKind
{
	Primitive = 0,
	Metadata = 1,
	Custom = 2
}