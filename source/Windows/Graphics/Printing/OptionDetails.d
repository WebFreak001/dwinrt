module Windows.Graphics.Printing.OptionDetails;

import dwinrt;

@uuid("5704b637-5c3a-449a-aa36-b3291b1192fd")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintCustomItemDetails")
interface IPrintCustomItemDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ItemId(HSTRING* return_value);
	HRESULT set_ItemDisplayName(HSTRING value);
	HRESULT get_ItemDisplayName(HSTRING* return_value);
}

@uuid("a5fafd88-58f2-4ebd-b90f-51e4f2944c5d")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintCustomItemListOptionDetails")
interface IPrintCustomItemListOptionDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddItem(HSTRING itemId, HSTRING displayName);
}

@uuid("e32bde1c-28af-4b90-95da-a3acf320b929")
interface IPrintCustomOptionDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_DisplayName(HSTRING value);
	HRESULT get_DisplayName(HSTRING* return_value);
}

@uuid("2ad171f8-c8bd-4905-9192-0d75136e8b31")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintCustomTextOptionDetails")
interface IPrintCustomTextOptionDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_MaxCharacters(UINT32 value);
	HRESULT get_MaxCharacters(UINT32* return_value);
}

@uuid("9a2257bf-fe61-43d8-a24f-a3f6ab7320e7")
interface IPrintItemListOptionDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Items(Windows.Foundation.Collections.IVectorView!(IInspectable)* return_value);
}

@uuid("4d01bbaf-645c-4de9-965f-6fc6bbc47cab")
interface IPrintNumberOptionDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MinValue(UINT32* return_value);
	HRESULT get_MaxValue(UINT32* return_value);
}

@uuid("390686cf-d682-495f-adfe-d7333f5c1808")
interface IPrintOptionDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_OptionId(IInspectable* return_value);
}

@uuid("f5720af1-a89e-42a6-81af-f8e010b38a68")
@WinrtFactory("Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails")
interface IPrintTaskOptionDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetFromPrintTaskOptions(Windows.Graphics.Printing.PrintTaskOptions printTaskOptions, Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails* return_printTaskOptionDetails);
}

@uuid("ad75e563-5ce4-46bc-9918-ab9fad144c5b")
interface IPrintTextOptionDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxCharacters(UINT32* return_value);
}

interface PrintBindingOptionDetails
{
}

interface PrintBorderingOptionDetails
{
}

interface PrintCollationOptionDetails
{
}

interface PrintColorModeOptionDetails
{
}

interface PrintCopiesOptionDetails
{
}

interface PrintCustomItemDetails
{
}

interface PrintCustomItemListOptionDetails
{
}

interface PrintCustomTextOptionDetails
{
}

interface PrintDuplexOptionDetails
{
}

interface PrintHolePunchOptionDetails
{
}

interface PrintMediaSizeOptionDetails
{
}

interface PrintMediaTypeOptionDetails
{
}

interface PrintOrientationOptionDetails
{
}

interface PrintQualityOptionDetails
{
}

interface PrintStapleOptionDetails
{
}

interface PrintTaskOptionChangedEventArgs
{
}

interface PrintTaskOptionDetails
{
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