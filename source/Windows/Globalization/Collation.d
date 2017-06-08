module Windows.Globalization.Collation;

import dwinrt;

@uuid("fae761bb-805d-4bb0-95bb-c1f7c3e8eb8e")
@WinrtFactory("Windows.Globalization.Collation.CharacterGrouping")
interface ICharacterGrouping : IInspectable
{
extern(Windows):
	HRESULT get_First(HSTRING* return_value);
	HRESULT get_Label(HSTRING* return_value);
}

@uuid("b8d20a75-d4cf-4055-80e5-ce169c226496")
@WinrtFactory("Windows.Globalization.Collation.CharacterGroupings")
interface ICharacterGroupings : IInspectable
{
extern(Windows):
	HRESULT abi_Lookup(HSTRING text, HSTRING* return_result);
}

@uuid("99ea9fd9-886d-4401-9f98-69c82d4c2f78")
@WinrtFactory("Windows.Globalization.Collation.CharacterGroupings")
interface ICharacterGroupingsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING language, Windows.Globalization.Collation.CharacterGroupings* return_result);
}

interface CharacterGrouping : Windows.Globalization.Collation.ICharacterGrouping
{
}

interface CharacterGroupings : Windows.Globalization.Collation.ICharacterGroupings, Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Collation.CharacterGrouping), Windows.Foundation.Collections.IIterable!(Windows.Globalization.Collation.CharacterGrouping)
{
}