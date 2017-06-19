module Windows.UI.Xaml.Data;

import dwinrt;

struct LoadMoreItemsResult
{
	UINT32 Count;
}

@uuid("f3888db8-139f-4dce-8dc9-f7f1444d1185")
interface CurrentChangingEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Data.CurrentChangingEventArgs e);
}

@uuid("50f19c16-0a22-4d8e-a089-1ea9951657d2")
interface PropertyChangedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Data.PropertyChangedEventArgs e);
}

@uuid("3f7a0c6b-d00f-4730-8c1d-48e16c46f9ca")
@WinrtFactory("Windows.UI.Xaml.Data.Binding")
interface IBinding : IInspectable
{
extern(Windows):
	HRESULT get_Path(Windows.UI.Xaml.PropertyPath* return_value);
	HRESULT set_Path(Windows.UI.Xaml.PropertyPath value);
	HRESULT get_Mode(Windows.UI.Xaml.Data.BindingMode* return_value);
	HRESULT set_Mode(Windows.UI.Xaml.Data.BindingMode value);
	HRESULT get_Source(IInspectable* return_value);
	HRESULT set_Source(IInspectable value);
	HRESULT get_RelativeSource(Windows.UI.Xaml.Data.RelativeSource* return_value);
	HRESULT set_RelativeSource(Windows.UI.Xaml.Data.RelativeSource value);
	HRESULT get_ElementName(HSTRING* return_value);
	HRESULT set_ElementName(HSTRING value);
	HRESULT get_Converter(Windows.UI.Xaml.Data.IValueConverter* return_value);
	HRESULT set_Converter(Windows.UI.Xaml.Data.IValueConverter value);
	HRESULT get_ConverterParameter(IInspectable* return_value);
	HRESULT set_ConverterParameter(IInspectable value);
	HRESULT get_ConverterLanguage(HSTRING* return_value);
	HRESULT set_ConverterLanguage(HSTRING value);
}

@uuid("34f96fcb-0406-48b3-9e82-f333ec4c6910")
@WinrtFactory("Windows.UI.Xaml.Data.Binding")
interface IBinding2 : IInspectable
{
extern(Windows):
	HRESULT get_FallbackValue(IInspectable* return_value);
	HRESULT set_FallbackValue(IInspectable value);
	HRESULT get_TargetNullValue(IInspectable* return_value);
	HRESULT set_TargetNullValue(IInspectable value);
	HRESULT get_UpdateSourceTrigger(Windows.UI.Xaml.Data.UpdateSourceTrigger* return_value);
	HRESULT set_UpdateSourceTrigger(Windows.UI.Xaml.Data.UpdateSourceTrigger value);
}

@uuid("1589a2ab-3d15-49bc-a447-8a5448e58870")
@WinrtFactory("Windows.UI.Xaml.Data.BindingBase")
interface IBindingBase : IInspectable
{
}

@uuid("22dafc3a-7701-4666-a1ba-9859bdcfec34")
@WinrtFactory("Windows.UI.Xaml.Data.BindingBase")
interface IBindingBaseFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Data.BindingBase* return_instance);
}

@uuid("516a19a5-c2fd-4a9e-9fd3-9aa42f995a3c")
@WinrtFactory("Windows.UI.Xaml.Data.BindingExpression")
interface IBindingExpression : IInspectable
{
extern(Windows):
	HRESULT get_DataItem(IInspectable* return_value);
	HRESULT get_ParentBinding(Windows.UI.Xaml.Data.Binding* return_value);
	HRESULT abi_UpdateSource();
}

@uuid("fded3154-e954-4f67-8fb6-6ed79b3a1cb3")
@WinrtFactory("Windows.UI.Xaml.Data.BindingExpressionBase")
interface IBindingExpressionBase : IInspectable
{
}

@uuid("ea7116a7-c2d9-4375-b471-66b9c48c7930")
@WinrtFactory("Windows.UI.Xaml.Data.BindingExpressionBase")
interface IBindingExpressionBaseFactory : IInspectable
{
}

@uuid("1cb55cd9-db72-40b3-a2b5-24ee6ea5c328")
@WinrtFactory("Windows.UI.Xaml.Data.BindingExpression")
interface IBindingExpressionFactory : IInspectable
{
}

@uuid("ff42bb08-c39e-4f7e-8434-a1569083883c")
@WinrtFactory("Windows.UI.Xaml.Data.Binding")
interface IBindingFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Data.Binding* return_instance);
}

@uuid("6fffd738-9839-419c-a17a-4b3604e1524e")
@WinrtFactory("Windows.UI.Xaml.Data.BindingOperations")
interface IBindingOperations : IInspectable
{
}

@uuid("e155ef73-95a0-4aab-8c7d-2a47da073c79")
@WinrtFactory("Windows.UI.Xaml.Data.BindingOperations")
interface IBindingOperationsStatics : IInspectable
{
extern(Windows):
	HRESULT abi_SetBinding(Windows.UI.Xaml.DependencyObject target, Windows.UI.Xaml.DependencyProperty dp, Windows.UI.Xaml.Data.BindingBase binding);
}

@uuid("8be8bfe4-dbef-44df-8126-a31a89121ddc")
interface ICollectionView_Base : IInspectable
{
extern(Windows):
	HRESULT get_CurrentItem(IInspectable* return_value);
	HRESULT get_CurrentPosition(INT32* return_value);
	HRESULT get_IsCurrentAfterLast(bool* return_value);
	HRESULT get_IsCurrentBeforeFirst(bool* return_value);
	HRESULT get_CollectionGroups(Windows.Foundation.Collections.IObservableVector!(IInspectable)* return_value);
	HRESULT get_HasMoreItems(bool* return_value);
	HRESULT add_CurrentChanged(Windows.Foundation.EventHandler!(IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_CurrentChanged(EventRegistrationToken token);
	HRESULT add_CurrentChanging(Windows.UI.Xaml.Data.CurrentChangingEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_CurrentChanging(EventRegistrationToken token);
	HRESULT abi_MoveCurrentTo(IInspectable item, bool* return_returnValue);
	HRESULT abi_MoveCurrentToPosition(INT32 index, bool* return_returnValue);
	HRESULT abi_MoveCurrentToFirst(bool* return_returnValue);
	HRESULT abi_MoveCurrentToLast(bool* return_returnValue);
	HRESULT abi_MoveCurrentToNext(bool* return_returnValue);
	HRESULT abi_MoveCurrentToPrevious(bool* return_returnValue);
	HRESULT abi_LoadMoreItemsAsync(UINT32 count, Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Data.LoadMoreItemsResult)* return_returnValue);
}
@uuid("8be8bfe4-dbef-44df-8126-a31a89121ddc")
interface ICollectionView : ICollectionView_Base, Windows.Foundation.Collections.IObservableVector!(IInspectable), Windows.Foundation.Collections.IVector!(IInspectable), Windows.Foundation.Collections.IIterable!(IInspectable) {}

@uuid("34d4aaf4-8e72-4950-9192-ecd07d399d0a")
interface ICollectionViewFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateView(Windows.UI.Xaml.Data.ICollectionView* return_result);
}

@uuid("7e01b9d8-d7b5-48b6-b31c-5bb5bdf5f09b")
interface ICollectionViewGroup : IInspectable
{
extern(Windows):
	HRESULT get_Group(IInspectable* return_value);
	HRESULT get_GroupItems(Windows.Foundation.Collections.IObservableVector!(IInspectable)* return_value);
}

@uuid("a66a1146-d2fb-4ead-be9f-3578a466dcfe")
@WinrtFactory("Windows.UI.Xaml.Data.CollectionViewSource")
interface ICollectionViewSource : IInspectable
{
extern(Windows):
	HRESULT get_Source(IInspectable* return_value);
	HRESULT set_Source(IInspectable value);
	HRESULT get_View(Windows.UI.Xaml.Data.ICollectionView* return_value);
	HRESULT get_IsSourceGrouped(bool* return_value);
	HRESULT set_IsSourceGrouped(bool value);
	HRESULT get_ItemsPath(Windows.UI.Xaml.PropertyPath* return_value);
	HRESULT set_ItemsPath(Windows.UI.Xaml.PropertyPath value);
}

@uuid("173a0710-46af-4c0c-818b-21b6ef81bf65")
@WinrtFactory("Windows.UI.Xaml.Data.CollectionViewSource")
interface ICollectionViewSourceStatics : IInspectable
{
extern(Windows):
	HRESULT get_SourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ViewProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_IsSourceGroupedProperty(Windows.UI.Xaml.DependencyProperty* return_value);
	HRESULT get_ItemsPathProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

@uuid("f9891e29-51cc-47dd-a5b9-35dc4914af69")
@WinrtFactory("Windows.UI.Xaml.Data.CurrentChangingEventArgs")
interface ICurrentChangingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Cancel(bool* return_value);
	HRESULT set_Cancel(bool value);
	HRESULT get_IsCancelable(bool* return_value);
}

@uuid("153bbeee-62f3-48cf-8183-8be26de3a66e")
@WinrtFactory("Windows.UI.Xaml.Data.CurrentChangingEventArgs")
interface ICurrentChangingEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Data.CurrentChangingEventArgs* return_instance);
	HRESULT abi_CreateWithCancelableParameter(bool isCancelable, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Data.CurrentChangingEventArgs* return_instance);
}

@uuid("30da92c0-23e8-42a0-ae7c-734a0e5d2782")
interface ICustomProperty : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.UI.Xaml.Interop.TypeName* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_GetValue(IInspectable target, IInspectable* return_returnValue);
	HRESULT abi_SetValue(IInspectable target, IInspectable value);
	HRESULT abi_GetIndexedValue(IInspectable target, IInspectable index, IInspectable* return_returnValue);
	HRESULT abi_SetIndexedValue(IInspectable target, IInspectable value, IInspectable index);
	HRESULT get_CanWrite(bool* return_value);
	HRESULT get_CanRead(bool* return_value);
}

@uuid("7c925755-3e48-42b4-8677-76372267033f")
interface ICustomPropertyProvider : IInspectable
{
extern(Windows):
	HRESULT abi_GetCustomProperty(HSTRING name, Windows.UI.Xaml.Data.ICustomProperty* return_returnValue);
	HRESULT abi_GetIndexedProperty(HSTRING name, Windows.UI.Xaml.Interop.TypeName type, Windows.UI.Xaml.Data.ICustomProperty* return_returnValue);
	HRESULT abi_GetStringRepresentation(HSTRING* return_returnValue);
	HRESULT get_Type(Windows.UI.Xaml.Interop.TypeName* return_value);
}

@uuid("83b834be-0583-4a26-9b64-8bf4a2f65704")
@WinrtFactory("Windows.UI.Xaml.Data.ItemIndexRange")
interface IItemIndexRange : IInspectable
{
extern(Windows):
	HRESULT get_FirstIndex(INT32* return_value);
	HRESULT get_Length(UINT32* return_value);
	HRESULT get_LastIndex(INT32* return_value);
}

@uuid("86e2c440-2e7a-4c7d-a664-e8abf07bfc7e")
@WinrtFactory("Windows.UI.Xaml.Data.ItemIndexRange")
interface IItemIndexRangeFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(INT32 firstIndex, UINT32 length, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Data.ItemIndexRange* return_instance);
}

@uuid("f05f5665-71fd-45a2-be13-a081d294a68d")
interface IItemsRangeInfo_Base : IInspectable
{
extern(Windows):
	HRESULT abi_RangesChanged(Windows.UI.Xaml.Data.ItemIndexRange visibleRange, Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Data.ItemIndexRange) trackedItems);
}
@uuid("f05f5665-71fd-45a2-be13-a081d294a68d")
interface IItemsRangeInfo : IItemsRangeInfo_Base, Windows.Foundation.IClosable {}

@uuid("cf75d69c-f2f4-486b-b302-bb4c09baebfa")
interface INotifyPropertyChanged : IInspectable
{
extern(Windows):
	HRESULT add_PropertyChanged(Windows.UI.Xaml.Data.PropertyChangedEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_PropertyChanged(EventRegistrationToken token);
}

@uuid("4f33a9a0-5cf4-47a4-b16f-d7faaf17457e")
@WinrtFactory("Windows.UI.Xaml.Data.PropertyChangedEventArgs")
interface IPropertyChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PropertyName(HSTRING* return_value);
}

@uuid("6dcc9c03-e0c7-4eee-8ea9-37e3406eeb1c")
@WinrtFactory("Windows.UI.Xaml.Data.PropertyChangedEventArgs")
interface IPropertyChangedEventArgsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(HSTRING name, IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Data.PropertyChangedEventArgs* return_instance);
}

@uuid("2397ce84-2822-483a-b499-d0f031e06c6b")
@WinrtFactory("Windows.UI.Xaml.Data.RelativeSource")
interface IRelativeSource : IInspectable
{
extern(Windows):
	HRESULT get_Mode(Windows.UI.Xaml.Data.RelativeSourceMode* return_value);
	HRESULT set_Mode(Windows.UI.Xaml.Data.RelativeSourceMode value);
}

@uuid("ef8392cd-446e-4f93-aacb-9b1255577460")
@WinrtFactory("Windows.UI.Xaml.Data.RelativeSource")
interface IRelativeSourceFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Data.RelativeSource* return_instance);
}

@uuid("2e12ca86-e1ed-4245-be49-207e42aec524")
interface ISelectionInfo : IInspectable
{
extern(Windows):
	HRESULT abi_SelectRange(Windows.UI.Xaml.Data.ItemIndexRange itemIndexRange);
	HRESULT abi_DeselectRange(Windows.UI.Xaml.Data.ItemIndexRange itemIndexRange);
	HRESULT abi_IsSelected(INT32 index, bool* return_returnValue);
	HRESULT abi_GetSelectedRanges(Windows.Foundation.Collections.IVectorView!(Windows.UI.Xaml.Data.ItemIndexRange)* return_returnValue);
}

@uuid("7f5ee992-7694-4e6c-a51b-e34bf43de743")
interface ISupportIncrementalLoading : IInspectable
{
extern(Windows):
	HRESULT abi_LoadMoreItemsAsync(UINT32 count, Windows.Foundation.IAsyncOperation!(Windows.UI.Xaml.Data.LoadMoreItemsResult)* return_operation);
	HRESULT get_HasMoreItems(bool* return_value);
}

@uuid("e6f2fef0-0712-487f-b313-f300b8d79aa1")
interface IValueConverter : IInspectable
{
extern(Windows):
	HRESULT abi_Convert(IInspectable value, Windows.UI.Xaml.Interop.TypeName targetType, IInspectable parameter, HSTRING language, IInspectable* return_returnValue);
	HRESULT abi_ConvertBack(IInspectable value, Windows.UI.Xaml.Interop.TypeName targetType, IInspectable parameter, HSTRING language, IInspectable* return_returnValue);
}

interface Binding : Windows.UI.Xaml.Data.BindingBase, Windows.UI.Xaml.Data.IBinding, Windows.UI.Xaml.Data.IBinding2
{
extern(Windows):
	final Windows.UI.Xaml.PropertyPath Path()
	{
		Windows.UI.Xaml.PropertyPath _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).get_Path(&_ret));
		return _ret;
	}
	final void Path(Windows.UI.Xaml.PropertyPath value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).set_Path(value));
	}
	final Windows.UI.Xaml.Data.BindingMode Mode()
	{
		Windows.UI.Xaml.Data.BindingMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.UI.Xaml.Data.BindingMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).set_Mode(value));
	}
	final IInspectable Source()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).get_Source(&_ret));
		return _ret;
	}
	final void Source(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).set_Source(value));
	}
	final Windows.UI.Xaml.Data.RelativeSource RelativeSource()
	{
		Windows.UI.Xaml.Data.RelativeSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).get_RelativeSource(&_ret));
		return _ret;
	}
	final void RelativeSource(Windows.UI.Xaml.Data.RelativeSource value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).set_RelativeSource(value));
	}
	final HSTRING ElementName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).get_ElementName(&_ret));
		return _ret;
	}
	final void ElementName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).set_ElementName(value));
	}
	final Windows.UI.Xaml.Data.IValueConverter Converter()
	{
		Windows.UI.Xaml.Data.IValueConverter _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).get_Converter(&_ret));
		return _ret;
	}
	final void Converter(Windows.UI.Xaml.Data.IValueConverter value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).set_Converter(value));
	}
	final IInspectable ConverterParameter()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).get_ConverterParameter(&_ret));
		return _ret;
	}
	final void ConverterParameter(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).set_ConverterParameter(value));
	}
	final HSTRING ConverterLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).get_ConverterLanguage(&_ret));
		return _ret;
	}
	final void ConverterLanguage(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding).set_ConverterLanguage(value));
	}
	final IInspectable FallbackValue()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding2).get_FallbackValue(&_ret));
		return _ret;
	}
	final void FallbackValue(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding2).set_FallbackValue(value));
	}
	final IInspectable TargetNullValue()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding2).get_TargetNullValue(&_ret));
		return _ret;
	}
	final void TargetNullValue(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding2).set_TargetNullValue(value));
	}
	final Windows.UI.Xaml.Data.UpdateSourceTrigger UpdateSourceTrigger()
	{
		Windows.UI.Xaml.Data.UpdateSourceTrigger _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding2).get_UpdateSourceTrigger(&_ret));
		return _ret;
	}
	final void UpdateSourceTrigger(Windows.UI.Xaml.Data.UpdateSourceTrigger value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBinding2).set_UpdateSourceTrigger(value));
	}
}

interface BindingBase : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Data.IBindingBase
{
}

interface BindingExpression : Windows.UI.Xaml.Data.BindingExpressionBase, Windows.UI.Xaml.Data.IBindingExpression
{
extern(Windows):
	final IInspectable DataItem()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBindingExpression).get_DataItem(&_ret));
		return _ret;
	}
	final Windows.UI.Xaml.Data.Binding ParentBinding()
	{
		Windows.UI.Xaml.Data.Binding _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBindingExpression).get_ParentBinding(&_ret));
		return _ret;
	}
	final void UpdateSource()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IBindingExpression).abi_UpdateSource());
	}
}

interface BindingExpressionBase : Windows.UI.Xaml.Data.IBindingExpressionBase
{
}

interface BindingOperations : Windows.UI.Xaml.Data.IBindingOperations
{
}

interface CollectionViewSource : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Data.ICollectionViewSource
{
extern(Windows):
	final IInspectable Source()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICollectionViewSource).get_Source(&_ret));
		return _ret;
	}
	final void Source(IInspectable value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICollectionViewSource).set_Source(value));
	}
	final Windows.UI.Xaml.Data.ICollectionView View()
	{
		Windows.UI.Xaml.Data.ICollectionView _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICollectionViewSource).get_View(&_ret));
		return _ret;
	}
	final bool IsSourceGrouped()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICollectionViewSource).get_IsSourceGrouped(&_ret));
		return _ret;
	}
	final void IsSourceGrouped(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICollectionViewSource).set_IsSourceGrouped(value));
	}
	final Windows.UI.Xaml.PropertyPath ItemsPath()
	{
		Windows.UI.Xaml.PropertyPath _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICollectionViewSource).get_ItemsPath(&_ret));
		return _ret;
	}
	final void ItemsPath(Windows.UI.Xaml.PropertyPath value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICollectionViewSource).set_ItemsPath(value));
	}
}

interface CurrentChangingEventArgs : Windows.UI.Xaml.Data.ICurrentChangingEventArgs
{
extern(Windows):
	final bool Cancel()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICurrentChangingEventArgs).get_Cancel(&_ret));
		return _ret;
	}
	final void Cancel(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICurrentChangingEventArgs).set_Cancel(value));
	}
	final bool IsCancelable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.ICurrentChangingEventArgs).get_IsCancelable(&_ret));
		return _ret;
	}
}

interface ItemIndexRange : Windows.UI.Xaml.Data.IItemIndexRange
{
extern(Windows):
	final INT32 FirstIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IItemIndexRange).get_FirstIndex(&_ret));
		return _ret;
	}
	final UINT32 Length()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IItemIndexRange).get_Length(&_ret));
		return _ret;
	}
	final INT32 LastIndex()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IItemIndexRange).get_LastIndex(&_ret));
		return _ret;
	}
}

interface PropertyChangedEventArgs : Windows.UI.Xaml.Data.IPropertyChangedEventArgs
{
extern(Windows):
	final HSTRING PropertyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IPropertyChangedEventArgs).get_PropertyName(&_ret));
		return _ret;
	}
}

interface RelativeSource : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Data.IRelativeSource
{
extern(Windows):
	final Windows.UI.Xaml.Data.RelativeSourceMode Mode()
	{
		Windows.UI.Xaml.Data.RelativeSourceMode _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IRelativeSource).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.UI.Xaml.Data.RelativeSourceMode value)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Data.IRelativeSource).set_Mode(value));
	}
}

enum BindingMode
{
	OneWay = 1,
	OneTime = 2,
	TwoWay = 3
}

enum RelativeSourceMode
{
	None = 0,
	TemplatedParent = 1,
	Self = 2
}

enum UpdateSourceTrigger
{
	Default = 0,
	PropertyChanged = 1,
	Explicit = 2
}