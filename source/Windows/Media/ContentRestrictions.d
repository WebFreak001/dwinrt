module Windows.Media.ContentRestrictions;

import dwinrt;

@uuid("8c0133a4-442e-461a-8757-fad2f5bd37e4")
@WinrtFactory("Windows.Media.ContentRestrictions.ContentRestrictionsBrowsePolicy")
interface IContentRestrictionsBrowsePolicy : IInspectable
{
extern(Windows):
	HRESULT get_GeographicRegion(HSTRING* return_value);
	HRESULT get_MaxBrowsableAgeRating(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_PreferredAgeRating(Windows.Foundation.IReference!(UINT32)* return_value);
}

@uuid("694866df-66b2-4dc3-96b1-f090eedee255")
@WinrtFactory("Windows.Media.ContentRestrictions.RatedContentDescription")
interface IRatedContentDescription : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT set_Id(HSTRING value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_Image(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT set_Image(Windows.Storage.Streams.IRandomAccessStreamReference value);
	HRESULT get_Category(Windows.Media.ContentRestrictions.RatedContentCategory* return_value);
	HRESULT set_Category(Windows.Media.ContentRestrictions.RatedContentCategory value);
	HRESULT get_Ratings(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT set_Ratings(Windows.Foundation.Collections.IVector!(HSTRING) value);
}

@uuid("2e38df62-9b90-4fa6-89c1-4b8d2ffb3573")
@WinrtFactory("Windows.Media.ContentRestrictions.RatedContentDescription")
interface IRatedContentDescriptionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING id, HSTRING title, Windows.Media.ContentRestrictions.RatedContentCategory category, Windows.Media.ContentRestrictions.RatedContentDescription* return_RatedContentDescription);
}

@uuid("3f7f23cb-ba07-4401-a49d-8b9222205723")
@WinrtFactory("Windows.Media.ContentRestrictions.RatedContentRestrictions")
interface IRatedContentRestrictions : IInspectable
{
extern(Windows):
	HRESULT abi_GetBrowsePolicyAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.ContentRestrictions.ContentRestrictionsBrowsePolicy)* return_operation);
	HRESULT abi_GetRestrictionLevelAsync(Windows.Media.ContentRestrictions.RatedContentDescription RatedContentDescription, Windows.Foundation.IAsyncOperation!(Windows.Media.ContentRestrictions.ContentAccessRestrictionLevel)* return_operation);
	HRESULT abi_RequestContentAccessAsync(Windows.Media.ContentRestrictions.RatedContentDescription RatedContentDescription, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT add_RestrictionsChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_RestrictionsChanged(EventRegistrationToken token);
}

@uuid("fb4b2996-c3bd-4910-9619-97cfd0694d56")
@WinrtFactory("Windows.Media.ContentRestrictions.RatedContentRestrictions")
interface IRatedContentRestrictionsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithMaxAgeRating(UINT32 maxAgeRating, Windows.Media.ContentRestrictions.RatedContentRestrictions* return_ratedContentRestrictions);
}

interface ContentRestrictionsBrowsePolicy : Windows.Media.ContentRestrictions.IContentRestrictionsBrowsePolicy
{
extern(Windows):
	final wstring GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IContentRestrictionsBrowsePolicy)this.asInterface(uuid("8c0133a4-442e-461a-8757-fad2f5bd37e4"))).get_GeographicRegion(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.IReference!(UINT32) MaxBrowsableAgeRating()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IContentRestrictionsBrowsePolicy)this.asInterface(uuid("8c0133a4-442e-461a-8757-fad2f5bd37e4"))).get_MaxBrowsableAgeRating(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) PreferredAgeRating()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IContentRestrictionsBrowsePolicy)this.asInterface(uuid("8c0133a4-442e-461a-8757-fad2f5bd37e4"))).get_PreferredAgeRating(&_ret));
		return _ret;
	}
}

interface RatedContentDescription : Windows.Media.ContentRestrictions.IRatedContentDescription
{
extern(Windows):
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescription)this.asInterface(uuid("694866df-66b2-4dc3-96b1-f090eedee255"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final void Id(wstring value)
	{
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescription)this.asInterface(uuid("694866df-66b2-4dc3-96b1-f090eedee255"))).set_Id(hstring(value).handle));
	}
	final wstring Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescription)this.asInterface(uuid("694866df-66b2-4dc3-96b1-f090eedee255"))).get_Title(&_ret));
		return hstring(_ret).d_str;
	}
	final void Title(wstring value)
	{
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescription)this.asInterface(uuid("694866df-66b2-4dc3-96b1-f090eedee255"))).set_Title(hstring(value).handle));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Image()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescription)this.asInterface(uuid("694866df-66b2-4dc3-96b1-f090eedee255"))).get_Image(&_ret));
		return _ret;
	}
	final void Image(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescription)this.asInterface(uuid("694866df-66b2-4dc3-96b1-f090eedee255"))).set_Image(value));
	}
	final Windows.Media.ContentRestrictions.RatedContentCategory Category()
	{
		Windows.Media.ContentRestrictions.RatedContentCategory _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescription)this.asInterface(uuid("694866df-66b2-4dc3-96b1-f090eedee255"))).get_Category(&_ret));
		return _ret;
	}
	final void Category(Windows.Media.ContentRestrictions.RatedContentCategory value)
	{
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescription)this.asInterface(uuid("694866df-66b2-4dc3-96b1-f090eedee255"))).set_Category(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Ratings()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescription)this.asInterface(uuid("694866df-66b2-4dc3-96b1-f090eedee255"))).get_Ratings(&_ret));
		return _ret;
	}
	final void Ratings(Windows.Foundation.Collections.IVector!(HSTRING) value)
	{
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescription)this.asInterface(uuid("694866df-66b2-4dc3-96b1-f090eedee255"))).set_Ratings(value));
	}
	static Windows.Media.ContentRestrictions.RatedContentDescription New(wstring id, wstring title, Windows.Media.ContentRestrictions.RatedContentCategory category)
	{
		auto factory = factory!(Windows.Media.ContentRestrictions.IRatedContentDescriptionFactory);
		Windows.Media.ContentRestrictions.RatedContentDescription _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentDescriptionFactory)factory.asInterface(uuid("2e38df62-9b90-4fa6-89c1-4b8d2ffb3573"))).abi_Create(hstring(id).handle, hstring(title).handle, category, &_ret));
		return _ret;
	}
}

interface RatedContentRestrictions : Windows.Media.ContentRestrictions.IRatedContentRestrictions
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Media.ContentRestrictions.ContentRestrictionsBrowsePolicy) GetBrowsePolicyAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.ContentRestrictions.ContentRestrictionsBrowsePolicy) _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentRestrictions)this.asInterface(uuid("3f7f23cb-ba07-4401-a49d-8b9222205723"))).abi_GetBrowsePolicyAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.ContentRestrictions.ContentAccessRestrictionLevel) GetRestrictionLevelAsync(Windows.Media.ContentRestrictions.RatedContentDescription RatedContentDescription)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.ContentRestrictions.ContentAccessRestrictionLevel) _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentRestrictions)this.asInterface(uuid("3f7f23cb-ba07-4401-a49d-8b9222205723"))).abi_GetRestrictionLevelAsync(RatedContentDescription, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestContentAccessAsync(Windows.Media.ContentRestrictions.RatedContentDescription RatedContentDescription)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentRestrictions)this.asInterface(uuid("3f7f23cb-ba07-4401-a49d-8b9222205723"))).abi_RequestContentAccessAsync(RatedContentDescription, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnRestrictionsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentRestrictions)this.asInterface(uuid("3f7f23cb-ba07-4401-a49d-8b9222205723"))).add_RestrictionsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeRestrictionsChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentRestrictions)this.asInterface(uuid("3f7f23cb-ba07-4401-a49d-8b9222205723"))).remove_RestrictionsChanged(token));
	}
	static RatedContentRestrictions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RatedContentRestrictions).abi_ActivateInstance(&ret));
		return cast(RatedContentRestrictions) ret;
	}
	static Windows.Media.ContentRestrictions.RatedContentRestrictions New(UINT32 maxAgeRating)
	{
		auto factory = factory!(Windows.Media.ContentRestrictions.IRatedContentRestrictionsFactory);
		Windows.Media.ContentRestrictions.RatedContentRestrictions _ret;
		Debug.OK((cast(Windows.Media.ContentRestrictions.IRatedContentRestrictionsFactory)factory.asInterface(uuid("fb4b2996-c3bd-4910-9619-97cfd0694d56"))).abi_CreateWithMaxAgeRating(maxAgeRating, &_ret));
		return _ret;
	}
}

enum ContentAccessRestrictionLevel
{
	Allow = 0,
	Warn = 1,
	Block = 2,
	Hide = 3
}

enum RatedContentCategory
{
	General = 0,
	Application = 1,
	Game = 2,
	Movie = 3,
	Television = 4,
	Music = 5
}