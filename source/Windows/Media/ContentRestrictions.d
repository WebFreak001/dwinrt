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
	final HSTRING GeographicRegion()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IContentRestrictionsBrowsePolicy).get_GeographicRegion(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) MaxBrowsableAgeRating()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IContentRestrictionsBrowsePolicy).get_MaxBrowsableAgeRating(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) PreferredAgeRating()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IContentRestrictionsBrowsePolicy).get_PreferredAgeRating(&_ret));
		return _ret;
	}
}

interface RatedContentDescription : Windows.Media.ContentRestrictions.IRatedContentDescription
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentDescription).get_Id(&_ret));
		return _ret;
	}
	final void Id(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentDescription).set_Id(value));
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentDescription).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentDescription).set_Title(value));
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Image()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentDescription).get_Image(&_ret));
		return _ret;
	}
	final void Image(Windows.Storage.Streams.IRandomAccessStreamReference value)
	{
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentDescription).set_Image(value));
	}
	final Windows.Media.ContentRestrictions.RatedContentCategory Category()
	{
		Windows.Media.ContentRestrictions.RatedContentCategory _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentDescription).get_Category(&_ret));
		return _ret;
	}
	final void Category(Windows.Media.ContentRestrictions.RatedContentCategory value)
	{
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentDescription).set_Category(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Ratings()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentDescription).get_Ratings(&_ret));
		return _ret;
	}
	final void Ratings(Windows.Foundation.Collections.IVector!(HSTRING) value)
	{
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentDescription).set_Ratings(value));
	}
}

interface RatedContentRestrictions : Windows.Media.ContentRestrictions.IRatedContentRestrictions
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Media.ContentRestrictions.ContentRestrictionsBrowsePolicy) GetBrowsePolicyAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.ContentRestrictions.ContentRestrictionsBrowsePolicy) _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentRestrictions).abi_GetBrowsePolicyAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.ContentRestrictions.ContentAccessRestrictionLevel) GetRestrictionLevelAsync(Windows.Media.ContentRestrictions.RatedContentDescription RatedContentDescription)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.ContentRestrictions.ContentAccessRestrictionLevel) _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentRestrictions).abi_GetRestrictionLevelAsync(RatedContentDescription, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestContentAccessAsync(Windows.Media.ContentRestrictions.RatedContentDescription RatedContentDescription)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Media.ContentRestrictions.IRatedContentRestrictions).abi_RequestContentAccessAsync(RatedContentDescription, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnRestrictionsChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_RestrictionsChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeRestrictionsChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_RestrictionsChanged(token));
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