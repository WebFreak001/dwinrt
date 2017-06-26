module Windows.ApplicationModel.Search;

import dwinrt;

@uuid("eeaeb062-743d-456e-84a3-23f06f2d15d7")
@WinrtFactory("Windows.ApplicationModel.Search.LocalContentSuggestionSettings")
interface ILocalContentSuggestionSettings : IInspectable
{
extern(Windows):
	HRESULT set_Enabled(bool value);
	HRESULT get_Enabled(bool* return_value);
	HRESULT get_Locations(Windows.Foundation.Collections.IVector!(Windows.Storage.StorageFolder)* return_value);
	HRESULT set_AqsFilter(HSTRING value);
	HRESULT get_AqsFilter(HSTRING* return_value);
	HRESULT get_PropertiesToMatch(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("fdacec38-3700-4d73-91a1-2f998674238a")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPane")
interface ISearchPane : IInspectable
{
extern(Windows):
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT set_SearchHistoryEnabled(bool value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT get_SearchHistoryEnabled(bool* return_value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT set_SearchHistoryContext(HSTRING value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT get_SearchHistoryContext(HSTRING* return_value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT set_PlaceholderText(HSTRING value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT get_PlaceholderText(HSTRING* return_value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT get_QueryText(HSTRING* return_value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Language(HSTRING* return_value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Visible(bool* return_value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT add_VisibilityChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneVisibilityChangedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_VisibilityChanged(EventRegistrationToken token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT add_QueryChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneQueryChangedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_QueryChanged(EventRegistrationToken token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT add_SuggestionsRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_SuggestionsRequested(EventRegistrationToken token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT add_QuerySubmitted(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneQuerySubmittedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_QuerySubmitted(EventRegistrationToken token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT add_ResultSuggestionChosen(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneResultSuggestionChosenEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_ResultSuggestionChosen(EventRegistrationToken token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_SetLocalContentSuggestionSettings(Windows.ApplicationModel.Search.LocalContentSuggestionSettings settings);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_ShowOverloadDefault();
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_ShowOverloadWithQuery(HSTRING query);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT set_ShowOnKeyboardInput(bool value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT get_ShowOnKeyboardInput(bool* return_value);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_TrySetQueryText(HSTRING query, bool* return_succeeded);
}

@uuid("3c064fe9-2351-4248-a529-7110f464a785")
interface ISearchPaneQueryChangedEventArgs : IInspectable
{
extern(Windows):
	deprecated("ISearchPaneQueryChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_QueryText(HSTRING* return_value);
	deprecated("ISearchPaneQueryChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Language(HSTRING* return_value);
	deprecated("ISearchPaneQueryChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_LinguisticDetails(Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails* return_value);
}

@uuid("82fb460e-0940-4b6d-b8d0-642b30989e15")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails")
interface ISearchPaneQueryLinguisticDetails : IInspectable
{
extern(Windows):
	HRESULT get_QueryTextAlternatives(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_QueryTextCompositionStart(UINT32* return_value);
	HRESULT get_QueryTextCompositionLength(UINT32* return_value);
}

@uuid("143ba4fc-e9c5-4736-91b2-e8eb9cb88356")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneQuerySubmittedEventArgs")
interface ISearchPaneQuerySubmittedEventArgs : IInspectable
{
extern(Windows):
	deprecated("ISearchPaneQuerySubmittedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_QueryText(HSTRING* return_value);
	deprecated("ISearchPaneQuerySubmittedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Language(HSTRING* return_value);
}

@uuid("460c92e5-4c32-4538-a4d4-b6b4400d140f")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneQuerySubmittedEventArgs")
interface ISearchPaneQuerySubmittedEventArgsWithLinguisticDetails : IInspectable
{
extern(Windows):
	deprecated("ISearchPaneQuerySubmittedEventArgsWithLinguisticDetails may be altered or unavailable for releases after Windows 10.")
	HRESULT get_LinguisticDetails(Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails* return_value);
}

@uuid("c8316cc0-aed2-41e0-bce0-c26ca74f85ec")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneResultSuggestionChosenEventArgs")
interface ISearchPaneResultSuggestionChosenEventArgs : IInspectable
{
extern(Windows):
	deprecated("ISearchPaneResultSuggestionChosenEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Tag(HSTRING* return_value);
}

@uuid("9572adf1-8f1d-481f-a15b-c61655f16a0e")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPane")
interface ISearchPaneStatics : IInspectable
{
extern(Windows):
	deprecated("ISearchPaneStatics may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_GetForCurrentView(Windows.ApplicationModel.Search.SearchPane* return_searchPane);
}

@uuid("00732830-50f1-4d03-99ac-c6644c8ed8b5")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPane")
interface ISearchPaneStaticsWithHideThisApplication : IInspectable
{
extern(Windows):
	deprecated("ISearchPaneStaticsWithHideThisApplication may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_HideThisApplication();
}

@uuid("81b10b1c-e561-4093-9b4d-2ad482794a53")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneSuggestionsRequest")
interface ISearchPaneSuggestionsRequest : IInspectable
{
extern(Windows):
	deprecated("ISearchPaneSuggestionsRequest may be altered or unavailable for releases after Windows 10.")
	HRESULT get_IsCanceled(bool* return_value);
	deprecated("ISearchPaneSuggestionsRequest may be altered or unavailable for releases after Windows 10.")
	HRESULT get_SearchSuggestionCollection(Windows.ApplicationModel.Search.SearchSuggestionCollection* return_collection);
	deprecated("ISearchPaneSuggestionsRequest may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestDeferral* return_deferral);
}

@uuid("a0d009f7-8748-4ee2-ad44-afa6be997c51")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestDeferral")
interface ISearchPaneSuggestionsRequestDeferral : IInspectable
{
extern(Windows):
	deprecated("ISearchPaneSuggestionsRequestDeferral may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_Complete();
}

@uuid("c89b8a2f-ac56-4460-8d2f-80023bec4fc5")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestedEventArgs")
interface ISearchPaneSuggestionsRequestedEventArgs_Base : IInspectable
{
extern(Windows):
	deprecated("ISearchPaneSuggestionsRequestedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Request(Windows.ApplicationModel.Search.SearchPaneSuggestionsRequest* return_value);
}
@uuid("c89b8a2f-ac56-4460-8d2f-80023bec4fc5")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestedEventArgs")
interface ISearchPaneSuggestionsRequestedEventArgs : ISearchPaneSuggestionsRequestedEventArgs_Base, Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs {}

@uuid("3c4d3046-ac4b-49f2-97d6-020e6182cb9c")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneVisibilityChangedEventArgs")
interface ISearchPaneVisibilityChangedEventArgs : IInspectable
{
extern(Windows):
	deprecated("ISearchPaneVisibilityChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Visible(bool* return_value);
}

@uuid("46a1205b-69c9-4745-b72f-a8a4fc8f24ae")
@WinrtFactory("Windows.ApplicationModel.Search.SearchQueryLinguisticDetails")
interface ISearchQueryLinguisticDetails : IInspectable
{
extern(Windows):
	HRESULT get_QueryTextAlternatives(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_QueryTextCompositionStart(UINT32* return_value);
	HRESULT get_QueryTextCompositionLength(UINT32* return_value);
}

@uuid("cac6c3b8-3c64-4dfd-ad9f-479e4d4065a4")
@WinrtFactory("Windows.ApplicationModel.Search.SearchQueryLinguisticDetails")
interface ISearchQueryLinguisticDetailsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.Foundation.Collections.IIterable!(HSTRING) queryTextAlternatives, UINT32 queryTextCompositionStart, UINT32 queryTextCompositionLength, Windows.ApplicationModel.Search.SearchQueryLinguisticDetails* return_value);
}

@uuid("323a8a4b-fbea-4446-abbc-3da7915fdd3a")
@WinrtFactory("Windows.ApplicationModel.Search.SearchSuggestionCollection")
interface ISearchSuggestionCollection : IInspectable
{
extern(Windows):
	HRESULT get_Size(UINT32* return_value);
	HRESULT abi_AppendQuerySuggestion(HSTRING text);
	HRESULT abi_AppendQuerySuggestions(Windows.Foundation.Collections.IIterable!(HSTRING) suggestions);
	HRESULT abi_AppendResultSuggestion(HSTRING text, HSTRING detailText, HSTRING tag, Windows.Storage.Streams.IRandomAccessStreamReference image, HSTRING imageAlternateText);
	HRESULT abi_AppendSearchSeparator(HSTRING label);
}

@uuid("4e4e26a7-44e5-4039-9099-6000ead1f0c6")
@WinrtFactory("Windows.ApplicationModel.Search.SearchSuggestionsRequest")
interface ISearchSuggestionsRequest : IInspectable
{
extern(Windows):
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT get_SearchSuggestionCollection(Windows.ApplicationModel.Search.SearchSuggestionCollection* return_collection);
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Search.SearchSuggestionsRequestDeferral* return_deferral);
}

@uuid("b71598a9-c065-456d-a845-1eccec5dc28b")
@WinrtFactory("Windows.ApplicationModel.Search.SearchSuggestionsRequestDeferral")
interface ISearchSuggestionsRequestDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

interface LocalContentSuggestionSettings : Windows.ApplicationModel.Search.ILocalContentSuggestionSettings
{
extern(Windows):
	final void Enabled(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ILocalContentSuggestionSettings).set_Enabled(value));
	}
	final bool Enabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ILocalContentSuggestionSettings).get_Enabled(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Storage.StorageFolder) Locations()
	{
		Windows.Foundation.Collections.IVector!(Windows.Storage.StorageFolder) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ILocalContentSuggestionSettings).get_Locations(&_ret));
		return _ret;
	}
	final void AqsFilter(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ILocalContentSuggestionSettings).set_AqsFilter(value));
	}
	final HSTRING AqsFilter()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ILocalContentSuggestionSettings).get_AqsFilter(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) PropertiesToMatch()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ILocalContentSuggestionSettings).get_PropertiesToMatch(&_ret));
		return _ret;
	}
	static LocalContentSuggestionSettings New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(LocalContentSuggestionSettings).abi_ActivateInstance(&ret));
		return ret.as!(LocalContentSuggestionSettings);
	}
}

interface SearchPane : Windows.ApplicationModel.Search.ISearchPane
{
extern(Windows):
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void SearchHistoryEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).set_SearchHistoryEnabled(value));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final bool SearchHistoryEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).get_SearchHistoryEnabled(&_ret));
		return _ret;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void SearchHistoryContext(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).set_SearchHistoryContext(value));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final HSTRING SearchHistoryContext()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).get_SearchHistoryContext(&_ret));
		return _ret;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void PlaceholderText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).set_PlaceholderText(value));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final HSTRING PlaceholderText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).get_PlaceholderText(&_ret));
		return _ret;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).get_QueryText(&_ret));
		return _ret;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).get_Language(&_ret));
		return _ret;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final bool Visible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).get_Visible(&_ret));
		return _ret;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final EventRegistrationToken OnVisibilityChanged(void delegate(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneVisibilityChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).add_VisibilityChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneVisibilityChangedEventArgs), Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneVisibilityChangedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void removeVisibilityChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).remove_VisibilityChanged(token));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final EventRegistrationToken OnQueryChanged(void delegate(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneQueryChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).add_QueryChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneQueryChangedEventArgs), Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneQueryChangedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void removeQueryChanged(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).remove_QueryChanged(token));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final EventRegistrationToken OnSuggestionsRequested(void delegate(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).add_SuggestionsRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestedEventArgs), Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void removeSuggestionsRequested(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).remove_SuggestionsRequested(token));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final EventRegistrationToken OnQuerySubmitted(void delegate(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneQuerySubmittedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).add_QuerySubmitted(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneQuerySubmittedEventArgs), Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneQuerySubmittedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void removeQuerySubmitted(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).remove_QuerySubmitted(token));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final EventRegistrationToken OnResultSuggestionChosen(void delegate(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneResultSuggestionChosenEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).add_ResultSuggestionChosen(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneResultSuggestionChosenEventArgs), Windows.ApplicationModel.Search.SearchPane, Windows.ApplicationModel.Search.SearchPaneResultSuggestionChosenEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void removeResultSuggestionChosen(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).remove_ResultSuggestionChosen(token));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void SetLocalContentSuggestionSettings(Windows.ApplicationModel.Search.LocalContentSuggestionSettings settings)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).abi_SetLocalContentSuggestionSettings(settings));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void ShowOverloadDefault()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).abi_ShowOverloadDefault());
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void ShowOverloadWithQuery(HSTRING query)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).abi_ShowOverloadWithQuery(query));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final void ShowOnKeyboardInput(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).set_ShowOnKeyboardInput(value));
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final bool ShowOnKeyboardInput()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).get_ShowOnKeyboardInput(&_ret));
		return _ret;
	}
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	final bool TrySetQueryText(HSTRING query)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPane).abi_TrySetQueryText(query, &_ret));
		return _ret;
	}

	private static Windows.ApplicationModel.Search.ISearchPaneStatics _staticInstance;
	public static Windows.ApplicationModel.Search.ISearchPaneStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Search.ISearchPaneStatics);
		return _staticInstance;
	}
	deprecated("ISearchPaneStatics may be altered or unavailable for releases after Windows 10.")
	static Windows.ApplicationModel.Search.SearchPane GetForCurrentView()
	{
		Windows.ApplicationModel.Search.SearchPane _ret;
		Debug.OK(staticInstance.as!(Windows.ApplicationModel.Search.ISearchPaneStatics).abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface SearchPaneQueryChangedEventArgs : Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs
{
extern(Windows):
	deprecated("ISearchPaneQueryChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs).get_QueryText(&_ret));
		return _ret;
	}
	deprecated("ISearchPaneQueryChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs).get_Language(&_ret));
		return _ret;
	}
	deprecated("ISearchPaneQueryChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails LinguisticDetails()
	{
		Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs).get_LinguisticDetails(&_ret));
		return _ret;
	}
}

interface SearchPaneQueryLinguisticDetails : Windows.ApplicationModel.Search.ISearchPaneQueryLinguisticDetails
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) QueryTextAlternatives()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQueryLinguisticDetails).get_QueryTextAlternatives(&_ret));
		return _ret;
	}
	final UINT32 QueryTextCompositionStart()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQueryLinguisticDetails).get_QueryTextCompositionStart(&_ret));
		return _ret;
	}
	final UINT32 QueryTextCompositionLength()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQueryLinguisticDetails).get_QueryTextCompositionLength(&_ret));
		return _ret;
	}
}

interface SearchPaneQuerySubmittedEventArgs : Windows.ApplicationModel.Search.ISearchPaneQuerySubmittedEventArgs, Windows.ApplicationModel.Search.ISearchPaneQuerySubmittedEventArgsWithLinguisticDetails
{
extern(Windows):
	deprecated("ISearchPaneQuerySubmittedEventArgs may be altered or unavailable for releases after Windows 10.")
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQuerySubmittedEventArgs).get_QueryText(&_ret));
		return _ret;
	}
	deprecated("ISearchPaneQuerySubmittedEventArgs may be altered or unavailable for releases after Windows 10.")
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQuerySubmittedEventArgs).get_Language(&_ret));
		return _ret;
	}
	deprecated("ISearchPaneQuerySubmittedEventArgsWithLinguisticDetails may be altered or unavailable for releases after Windows 10.")
	final Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails LinguisticDetails()
	{
		Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQuerySubmittedEventArgsWithLinguisticDetails).get_LinguisticDetails(&_ret));
		return _ret;
	}
}

interface SearchPaneResultSuggestionChosenEventArgs : Windows.ApplicationModel.Search.ISearchPaneResultSuggestionChosenEventArgs
{
extern(Windows):
	deprecated("ISearchPaneResultSuggestionChosenEventArgs may be altered or unavailable for releases after Windows 10.")
	final HSTRING Tag()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneResultSuggestionChosenEventArgs).get_Tag(&_ret));
		return _ret;
	}
}

interface SearchPaneSuggestionsRequest : Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequest
{
extern(Windows):
	deprecated("ISearchPaneSuggestionsRequest may be altered or unavailable for releases after Windows 10.")
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequest).get_IsCanceled(&_ret));
		return _ret;
	}
	deprecated("ISearchPaneSuggestionsRequest may be altered or unavailable for releases after Windows 10.")
	final Windows.ApplicationModel.Search.SearchSuggestionCollection SearchSuggestionCollection()
	{
		Windows.ApplicationModel.Search.SearchSuggestionCollection _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequest).get_SearchSuggestionCollection(&_ret));
		return _ret;
	}
	deprecated("ISearchPaneSuggestionsRequest may be altered or unavailable for releases after Windows 10.")
	final Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestDeferral GetDeferral()
	{
		Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestDeferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface SearchPaneSuggestionsRequestDeferral : Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequestDeferral
{
extern(Windows):
	deprecated("ISearchPaneSuggestionsRequestDeferral may be altered or unavailable for releases after Windows 10.")
	final void Complete()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequestDeferral).abi_Complete());
	}
}

interface SearchPaneSuggestionsRequestedEventArgs : Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequestedEventArgs, Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs
{
extern(Windows):
	deprecated("ISearchPaneSuggestionsRequestedEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.ApplicationModel.Search.SearchPaneSuggestionsRequest Request()
	{
		Windows.ApplicationModel.Search.SearchPaneSuggestionsRequest _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequestedEventArgs).get_Request(&_ret));
		return _ret;
	}
	deprecated("ISearchPaneQueryChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	final HSTRING QueryText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs).get_QueryText(&_ret));
		return _ret;
	}
	deprecated("ISearchPaneQueryChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs).get_Language(&_ret));
		return _ret;
	}
	deprecated("ISearchPaneQueryChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	final Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails LinguisticDetails()
	{
		Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs).get_LinguisticDetails(&_ret));
		return _ret;
	}
}

interface SearchPaneVisibilityChangedEventArgs : Windows.ApplicationModel.Search.ISearchPaneVisibilityChangedEventArgs
{
extern(Windows):
	deprecated("ISearchPaneVisibilityChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	final bool Visible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchPaneVisibilityChangedEventArgs).get_Visible(&_ret));
		return _ret;
	}
}

interface SearchQueryLinguisticDetails : Windows.ApplicationModel.Search.ISearchQueryLinguisticDetails
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) QueryTextAlternatives()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchQueryLinguisticDetails).get_QueryTextAlternatives(&_ret));
		return _ret;
	}
	final UINT32 QueryTextCompositionStart()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchQueryLinguisticDetails).get_QueryTextCompositionStart(&_ret));
		return _ret;
	}
	final UINT32 QueryTextCompositionLength()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchQueryLinguisticDetails).get_QueryTextCompositionLength(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Search.SearchQueryLinguisticDetails New(Windows.Foundation.Collections.IIterable!(HSTRING) queryTextAlternatives, UINT32 queryTextCompositionStart, UINT32 queryTextCompositionLength)
	{
		auto factory = factory!(Windows.ApplicationModel.Search.ISearchQueryLinguisticDetailsFactory);
		Windows.ApplicationModel.Search.SearchQueryLinguisticDetails _ret;
		Debug.OK(factory.as!(Windows.ApplicationModel.Search.ISearchQueryLinguisticDetailsFactory).abi_CreateInstance(queryTextAlternatives, queryTextCompositionStart, queryTextCompositionLength, &_ret));
		return _ret;
	}
}

interface SearchSuggestionCollection : Windows.ApplicationModel.Search.ISearchSuggestionCollection
{
extern(Windows):
	final UINT32 Size()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchSuggestionCollection).get_Size(&_ret));
		return _ret;
	}
	final void AppendQuerySuggestion(HSTRING text)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchSuggestionCollection).abi_AppendQuerySuggestion(text));
	}
	final void AppendQuerySuggestions(Windows.Foundation.Collections.IIterable!(HSTRING) suggestions)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchSuggestionCollection).abi_AppendQuerySuggestions(suggestions));
	}
	final void AppendResultSuggestion(HSTRING text, HSTRING detailText, HSTRING tag, Windows.Storage.Streams.IRandomAccessStreamReference image, HSTRING imageAlternateText)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchSuggestionCollection).abi_AppendResultSuggestion(text, detailText, tag, image, imageAlternateText));
	}
	final void AppendSearchSeparator(HSTRING label)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchSuggestionCollection).abi_AppendSearchSeparator(label));
	}
}

interface SearchSuggestionsRequest : Windows.ApplicationModel.Search.ISearchSuggestionsRequest
{
extern(Windows):
	final bool IsCanceled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchSuggestionsRequest).get_IsCanceled(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Search.SearchSuggestionCollection SearchSuggestionCollection()
	{
		Windows.ApplicationModel.Search.SearchSuggestionCollection _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchSuggestionsRequest).get_SearchSuggestionCollection(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Search.SearchSuggestionsRequestDeferral GetDeferral()
	{
		Windows.ApplicationModel.Search.SearchSuggestionsRequestDeferral _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchSuggestionsRequest).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface SearchSuggestionsRequestDeferral : Windows.ApplicationModel.Search.ISearchSuggestionsRequestDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Search.ISearchSuggestionsRequestDeferral).abi_Complete());
	}
}