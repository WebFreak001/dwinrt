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
interface ICharacterGroupings_Base : IInspectable
{
extern(Windows):
	HRESULT abi_Lookup(HSTRING text, HSTRING* return_result);
}
@uuid("b8d20a75-d4cf-4055-80e5-ce169c226496")
@WinrtFactory("Windows.Globalization.Collation.CharacterGroupings")
interface ICharacterGroupings : ICharacterGroupings_Base, Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Collation.CharacterGrouping), Windows.Foundation.Collections.IIterable!(Windows.Globalization.Collation.CharacterGrouping) {}

@uuid("99ea9fd9-886d-4401-9f98-69c82d4c2f78")
@WinrtFactory("Windows.Globalization.Collation.CharacterGroupings")
interface ICharacterGroupingsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING language, Windows.Globalization.Collation.CharacterGroupings* return_result);
}

interface CharacterGrouping : Windows.Globalization.Collation.ICharacterGrouping
{
extern(Windows):
	final HSTRING First()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.Collation.ICharacterGrouping).get_First(&_ret));
		return _ret;
	}
	final HSTRING Label()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.Collation.ICharacterGrouping).get_Label(&_ret));
		return _ret;
	}
}

interface CharacterGroupings : Windows.Globalization.Collation.ICharacterGroupings, Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Collation.CharacterGrouping), Windows.Foundation.Collections.IIterable!(Windows.Globalization.Collation.CharacterGrouping)
{
extern(Windows):
	final HSTRING Lookup(HSTRING text)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Globalization.Collation.ICharacterGroupings).abi_Lookup(text, &_ret));
		return _ret;
	}
	final void GetAt(uint index, Windows.Globalization.Collation.CharacterGrouping* out_item)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Collation.CharacterGrouping)).abi_GetAt(index, out_item));
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Collation.CharacterGrouping)).get_Size(&_ret));
		return _ret;
	}
	final uint IndexOf(Windows.Globalization.Collation.CharacterGrouping value, bool* out_found)
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Collation.CharacterGrouping)).get_IndexOf(value, &_ret, out_found));
		return _ret;
	}
	final void GetMany(uint startIndex, uint capacity, Windows.Globalization.Collation.CharacterGrouping* out_value, uint* out_actual)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Collation.CharacterGrouping)).abi_GetMany(startIndex, capacity, out_value, out_actual));
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Globalization.Collation.CharacterGrouping)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Globalization.Collation.CharacterGrouping)).abi_First(out_first));
	}
	static CharacterGroupings New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(CharacterGroupings).abi_ActivateInstance(&ret));
		return ret.as!(CharacterGroupings);
	}
	static Windows.Globalization.Collation.CharacterGroupings New(HSTRING language)
	{
		auto factory = factory!(Windows.Globalization.Collation.ICharacterGroupingsFactory);
		Windows.Globalization.Collation.CharacterGroupings _ret;
		Debug.OK(factory.as!(Windows.Globalization.Collation.ICharacterGroupingsFactory).abi_Create(language, &_ret));
		return _ret;
	}
}