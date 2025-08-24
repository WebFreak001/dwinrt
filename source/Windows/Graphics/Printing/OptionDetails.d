module Windows.Graphics.Printing.OptionDetails;

import dwinrt;

@uuid("5704b637-5c3a-449a-aa36-b3291b1192fd")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintCustomItemDetails")
interface IPrintCustomItemDetails : IInspectable
{
extern(Windows):
	HRESULT get_ItemId(HSTRING* return_value);
	HRESULT set_ItemDisplayName(HSTRING value);
	HRESULT get_ItemDisplayName(HSTRING* return_value);
}

@uuid("a5fafd88-58f2-4ebd-b90f-51e4f2944c5d")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintCustomItemListOptionDetails")
interface IPrintCustomItemListOptionDetails_Base : IInspectable
{
extern(Windows):
	HRESULT abi_AddItem(HSTRING itemId, HSTRING displayName);
}
@uuid("a5fafd88-58f2-4ebd-b90f-51e4f2944c5d")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintCustomItemListOptionDetails")
interface IPrintCustomItemListOptionDetails : IPrintCustomItemListOptionDetails_Base, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails {}

@uuid("e32bde1c-28af-4b90-95da-a3acf320b929")
interface IPrintCustomOptionDetails_Base : IInspectable
{
extern(Windows):
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_DisplayName(HSTRING* return_value);
}
@uuid("e32bde1c-28af-4b90-95da-a3acf320b929")
interface IPrintCustomOptionDetails : IPrintCustomOptionDetails_Base, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails {}

@uuid("2ad171f8-c8bd-4905-9192-0d75136e8b31")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintCustomTextOptionDetails")
interface IPrintCustomTextOptionDetails_Base : IInspectable
{
extern(Windows):
	HRESULT set_MaxCharacters(UINT32 value);
	HRESULT get_MaxCharacters(UINT32* return_value);
}
@uuid("2ad171f8-c8bd-4905-9192-0d75136e8b31")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintCustomTextOptionDetails")
interface IPrintCustomTextOptionDetails : IPrintCustomTextOptionDetails_Base, Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails {}

@uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7")
interface IPrintItemListOptionDetails_Base : IInspectable
{
extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVectorView!(IInspectable)* return_value);
}
@uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7")
interface IPrintItemListOptionDetails : IPrintItemListOptionDetails_Base, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails {}

@uuid("4d01bbaf-645c-4de9-965f-6fc6bbc47cab")
interface IPrintNumberOptionDetails_Base : IInspectable
{
extern(Windows):
	HRESULT get_MinValue(UINT32* return_value);
	HRESULT get_MaxValue(UINT32* return_value);
}
@uuid("4d01bbaf-645c-4de9-965f-6fc6bbc47cab")
interface IPrintNumberOptionDetails : IPrintNumberOptionDetails_Base, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails {}

@uuid("390686cf-d682-495f-adfe-d7333f5c1808")
interface IPrintOptionDetails : IInspectable
{
extern(Windows):
	HRESULT get_OptionId(HSTRING* return_value);
	HRESULT get_OptionType(Windows.Graphics.Printing.OptionDetails.PrintOptionType* return_value);
	HRESULT set_ErrorText(HSTRING value);
	HRESULT get_ErrorText(HSTRING* return_value);
	HRESULT set_State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value);
	HRESULT get_State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates* return_value);
	HRESULT get_Value(IInspectable* return_value);
	HRESULT abi_TrySetValue(IInspectable value, bool* return_succeeded);
}

@uuid("65197d05-a5ee-4307-9407-9acad147679c")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintTaskOptionChangedEventArgs")
interface IPrintTaskOptionChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OptionId(IInspectable* return_value);
}

@uuid("f5720af1-a89e-42a6-81af-f8e010b38a68")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails")
interface IPrintTaskOptionDetails : IInspectable
{
extern(Windows):
	HRESULT get_Options(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)* return_value);
	HRESULT abi_CreateItemListOption(HSTRING optionId, HSTRING displayName, Windows.Graphics.Printing.OptionDetails.PrintCustomItemListOptionDetails* return_itemListOption);
	HRESULT abi_CreateTextOption(HSTRING optionId, HSTRING displayName, Windows.Graphics.Printing.OptionDetails.PrintCustomTextOptionDetails* return_textOption);
	HRESULT add_OptionChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails, Windows.Graphics.Printing.OptionDetails.PrintTaskOptionChangedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_OptionChanged(EventRegistrationToken eventCookie);
	HRESULT add_BeginValidation(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails, IInspectable) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_BeginValidation(EventRegistrationToken eventCookie);
}

@uuid("135da193-0961-4b6e-8766-f13b7fbccd58")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails")
interface IPrintTaskOptionDetailsStatic : IInspectable
{
extern(Windows):
	HRESULT abi_GetFromPrintTaskOptions(Windows.Graphics.Printing.PrintTaskOptions printTaskOptions, Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails* return_printTaskOptionDetails);
}

@uuid("ad75e563-5ce4-46bc-9918-ab9fad144c5b")
interface IPrintTextOptionDetails_Base : IInspectable
{
extern(Windows):
	HRESULT get_MaxCharacters(UINT32* return_value);
}
@uuid("ad75e563-5ce4-46bc-9918-ab9fad144c5b")
interface IPrintTextOptionDetails : IPrintTextOptionDetails_Base, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails {}

interface PrintBindingOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintBorderingOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintCollationOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintColorModeOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintCopiesOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintNumberOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final UINT32 MinValue()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintNumberOptionDetails)this.asInterface(uuid("4d01bbaf-645c-4de9-965f-6fc6bbc47cab"))).get_MinValue(&_ret));
		return _ret;
	}
	final UINT32 MaxValue()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintNumberOptionDetails)this.asInterface(uuid("4d01bbaf-645c-4de9-965f-6fc6bbc47cab"))).get_MaxValue(&_ret));
		return _ret;
	}
}

interface PrintCustomItemDetails : Windows.Graphics.Printing.OptionDetails.IPrintCustomItemDetails
{
extern(Windows):
	final wstring ItemId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintCustomItemDetails)this.asInterface(uuid("5704b637-5c3a-449a-aa36-b3291b1192fd"))).get_ItemId(&_ret));
		return hstring(_ret).d_str;
	}
	final void ItemDisplayName(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintCustomItemDetails)this.asInterface(uuid("5704b637-5c3a-449a-aa36-b3291b1192fd"))).set_ItemDisplayName(hstring(value).handle));
	}
	final wstring ItemDisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintCustomItemDetails)this.asInterface(uuid("5704b637-5c3a-449a-aa36-b3291b1192fd"))).get_ItemDisplayName(&_ret));
		return hstring(_ret).d_str;
	}
}

interface PrintCustomItemListOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintCustomItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final void DisplayName(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails)this.asInterface(uuid("e32bde1c-28af-4b90-95da-a3acf320b929"))).set_DisplayName(hstring(value).handle));
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails)this.asInterface(uuid("e32bde1c-28af-4b90-95da-a3acf320b929"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
	final void AddItem(wstring itemId, wstring displayName)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintCustomItemListOptionDetails)this.asInterface(uuid("a5fafd88-58f2-4ebd-b90f-51e4f2944c5d"))).abi_AddItem(hstring(itemId).handle, hstring(displayName).handle));
	}
}

interface PrintCustomTextOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintCustomTextOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final void DisplayName(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails)this.asInterface(uuid("e32bde1c-28af-4b90-95da-a3acf320b929"))).set_DisplayName(hstring(value).handle));
	}
	final wstring DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails)this.asInterface(uuid("e32bde1c-28af-4b90-95da-a3acf320b929"))).get_DisplayName(&_ret));
		return hstring(_ret).d_str;
	}
	final void MaxCharacters(UINT32 value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintCustomTextOptionDetails)this.asInterface(uuid("2ad171f8-c8bd-4905-9192-0d75136e8b31"))).set_MaxCharacters(value));
	}
	final UINT32 MaxCharacters()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintCustomTextOptionDetails)this.asInterface(uuid("2ad171f8-c8bd-4905-9192-0d75136e8b31"))).get_MaxCharacters(&_ret));
		return _ret;
	}
}

interface PrintDuplexOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintHolePunchOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintMediaSizeOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintMediaTypeOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintOrientationOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintQualityOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintStapleOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails, Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails
{
extern(Windows):
	final wstring OptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionType OptionType()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionType _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_OptionType(&_ret));
		return _ret;
	}
	final void ErrorText(wstring value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_ErrorText(hstring(value).handle));
	}
	final wstring ErrorText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_ErrorText(&_ret));
		return hstring(_ret).d_str;
	}
	final void State(Windows.Graphics.Printing.OptionDetails.PrintOptionStates value)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).set_State(value));
	}
	final Windows.Graphics.Printing.OptionDetails.PrintOptionStates State()
	{
		Windows.Graphics.Printing.OptionDetails.PrintOptionStates _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_State(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).get_Value(&_ret));
		return _ret;
	}
	final bool TrySetValue(IInspectable value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails)this.asInterface(uuid("390686cf-d682-495f-adfe-d7333f5c1808"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(IInspectable) Items()
	{
		Windows.Foundation.Collections.IVectorView!(IInspectable) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails)this.asInterface(uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7"))).get_Items(&_ret));
		return _ret;
	}
}

interface PrintTaskOptionChangedEventArgs : Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionChangedEventArgs
{
extern(Windows):
	final IInspectable OptionId()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionChangedEventArgs)this.asInterface(uuid("65197d05-a5ee-4307-9407-9acad147679c"))).get_OptionId(&_ret));
		return _ret;
	}
}

interface PrintTaskOptionDetails : Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetails, Windows.Graphics.Printing.IPrintTaskOptionsCore, Windows.Graphics.Printing.IPrintTaskOptionsCoreUIConfiguration
{
extern(Windows):
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails) Options()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetails)this.asInterface(uuid("f5720af1-a89e-42a6-81af-f8e010b38a68"))).get_Options(&_ret));
		return _ret;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintCustomItemListOptionDetails CreateItemListOption(wstring optionId, wstring displayName)
	{
		Windows.Graphics.Printing.OptionDetails.PrintCustomItemListOptionDetails _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetails)this.asInterface(uuid("f5720af1-a89e-42a6-81af-f8e010b38a68"))).abi_CreateItemListOption(hstring(optionId).handle, hstring(displayName).handle, &_ret));
		return _ret;
	}
	final Windows.Graphics.Printing.OptionDetails.PrintCustomTextOptionDetails CreateTextOption(wstring optionId, wstring displayName)
	{
		Windows.Graphics.Printing.OptionDetails.PrintCustomTextOptionDetails _ret;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetails)this.asInterface(uuid("f5720af1-a89e-42a6-81af-f8e010b38a68"))).abi_CreateTextOption(hstring(optionId).handle, hstring(displayName).handle, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnOptionChanged(void delegate(Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails, Windows.Graphics.Printing.OptionDetails.PrintTaskOptionChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetails)this.asInterface(uuid("f5720af1-a89e-42a6-81af-f8e010b38a68"))).add_OptionChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails, Windows.Graphics.Printing.OptionDetails.PrintTaskOptionChangedEventArgs), Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails, Windows.Graphics.Printing.OptionDetails.PrintTaskOptionChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeOptionChanged(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetails)this.asInterface(uuid("f5720af1-a89e-42a6-81af-f8e010b38a68"))).remove_OptionChanged(eventCookie));
	}
	final EventRegistrationToken OnBeginValidation(void delegate(Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetails)this.asInterface(uuid("f5720af1-a89e-42a6-81af-f8e010b38a68"))).add_BeginValidation(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails, IInspectable), Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeBeginValidation(EventRegistrationToken eventCookie)
	{
		Debug.OK((cast(Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetails)this.asInterface(uuid("f5720af1-a89e-42a6-81af-f8e010b38a68"))).remove_BeginValidation(eventCookie));
	}
	final Windows.Graphics.Printing.PrintPageDescription GetPageDescription(UINT32 jobPageNumber)
	{
		Windows.Graphics.Printing.PrintPageDescription _ret;
		Debug.OK((cast(Windows.Graphics.Printing.IPrintTaskOptionsCore)this.asInterface(uuid("1bdbb474-4ed1-41eb-be3c-72d18ed67337"))).abi_GetPageDescription(jobPageNumber, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) DisplayedOptions()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Graphics.Printing.IPrintTaskOptionsCoreUIConfiguration)this.asInterface(uuid("62e69e23-9a1e-4336-b74f-3cc7f4cff709"))).get_DisplayedOptions(&_ret));
		return _ret;
	}

	private static Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetailsStatic _staticInstance;
	public static Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetailsStatic staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetailsStatic);
		return _staticInstance;
	}
	static Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails GetFromPrintTaskOptions(Windows.Graphics.Printing.PrintTaskOptions printTaskOptions)
	{
		Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails _ret;
		Debug.OK(staticInstance.abi_GetFromPrintTaskOptions(printTaskOptions, &_ret));
		return _ret;
	}
}

@bitflags
enum PrintOptionStates
{
	None = 0x0,
	Enabled = 0x1,
	Constrained = 0x2
}

enum PrintOptionType
{
	Unknown = 0,
	Number = 1,
	Text = 2,
	ItemList = 3
}