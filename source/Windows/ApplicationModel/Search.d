module Windows.ApplicationModel.Search;

import dwinrt;

@uuid("eeaeb062-743d-456e-84a3-23f06f2d15d7")
@WinrtFactory("Windows.ApplicationModel.Search.LocalContentSuggestionSettings")
interface ILocalContentSuggestionSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	HRESULT add_VisibilityChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane*,Windows.ApplicationModel.Search.SearchPaneVisibilityChangedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_VisibilityChanged(EventRegistrationToken token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT add_QueryChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane*,Windows.ApplicationModel.Search.SearchPaneQueryChangedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_QueryChanged(EventRegistrationToken token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT add_SuggestionsRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane*,Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_SuggestionsRequested(EventRegistrationToken token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT add_QuerySubmitted(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane*,Windows.ApplicationModel.Search.SearchPaneQuerySubmittedEventArgs*) handler, EventRegistrationToken* return_token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT remove_QuerySubmitted(EventRegistrationToken token);
	deprecated("ISearchPane may be altered or unavailable for releases after Windows 10.")
	HRESULT add_ResultSuggestionChosen(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Search.SearchPane*,Windows.ApplicationModel.Search.SearchPaneResultSuggestionChosenEventArgs*) handler, EventRegistrationToken* return_token);
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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QueryTextAlternatives(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_QueryTextCompositionStart(UINT32* return_value);
	HRESULT get_QueryTextCompositionLength(UINT32* return_value);
}

@uuid("143ba4fc-e9c5-4736-91b2-e8eb9cb88356")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneQuerySubmittedEventArgs")
interface ISearchPaneQuerySubmittedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISearchPaneQuerySubmittedEventArgsWithLinguisticDetails may be altered or unavailable for releases after Windows 10.")
	HRESULT get_LinguisticDetails(Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails* return_value);
}

@uuid("c8316cc0-aed2-41e0-bce0-c26ca74f85ec")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneResultSuggestionChosenEventArgs")
interface ISearchPaneResultSuggestionChosenEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISearchPaneResultSuggestionChosenEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Tag(HSTRING* return_value);
}

@uuid("9572adf1-8f1d-481f-a15b-c61655f16a0e")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPane")
interface ISearchPaneStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISearchPaneStatics may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_GetForCurrentView(Windows.ApplicationModel.Search.SearchPane* return_searchPane);
}

@uuid("00732830-50f1-4d03-99ac-c6644c8ed8b5")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPane")
interface ISearchPaneStaticsWithHideThisApplication : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISearchPaneStaticsWithHideThisApplication may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_HideThisApplication();
}

@uuid("81b10b1c-e561-4093-9b4d-2ad482794a53")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneSuggestionsRequest")
interface ISearchPaneSuggestionsRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISearchPaneSuggestionsRequestDeferral may be altered or unavailable for releases after Windows 10.")
	HRESULT abi_Complete();
}

@uuid("c89b8a2f-ac56-4460-8d2f-80023bec4fc5")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestedEventArgs")
interface ISearchPaneSuggestionsRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISearchPaneSuggestionsRequestedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Request(Windows.ApplicationModel.Search.SearchPaneSuggestionsRequest* return_value);
}

@uuid("3c4d3046-ac4b-49f2-97d6-020e6182cb9c")
@WinrtFactory("Windows.ApplicationModel.Search.SearchPaneVisibilityChangedEventArgs")
interface ISearchPaneVisibilityChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("ISearchPaneVisibilityChangedEventArgs may be altered or unavailable for releases after Windows 10.")
	HRESULT get_Visible(bool* return_value);
}

@uuid("46a1205b-69c9-4745-b72f-a8a4fc8f24ae")
@WinrtFactory("Windows.ApplicationModel.Search.SearchQueryLinguisticDetails")
interface ISearchQueryLinguisticDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_QueryTextAlternatives(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_QueryTextCompositionStart(UINT32* return_value);
	HRESULT get_QueryTextCompositionLength(UINT32* return_value);
}

@uuid("cac6c3b8-3c64-4dfd-ad9f-479e4d4065a4")
@WinrtFactory("Windows.ApplicationModel.Search.SearchQueryLinguisticDetails")
interface ISearchQueryLinguisticDetailsFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(Windows.Foundation.Collections.IIterable!(HSTRING) queryTextAlternatives, UINT32 queryTextCompositionStart, UINT32 queryTextCompositionLength, Windows.ApplicationModel.Search.SearchQueryLinguisticDetails* return_value);
}

@uuid("323a8a4b-fbea-4446-abbc-3da7915fdd3a")
@WinrtFactory("Windows.ApplicationModel.Search.SearchSuggestionCollection")
interface ISearchSuggestionCollection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsCanceled(bool* return_value);
	HRESULT get_SearchSuggestionCollection(Windows.ApplicationModel.Search.SearchSuggestionCollection* return_collection);
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Search.SearchSuggestionsRequestDeferral* return_deferral);
}

@uuid("b71598a9-c065-456d-a845-1eccec5dc28b")
@WinrtFactory("Windows.ApplicationModel.Search.SearchSuggestionsRequestDeferral")
interface ISearchSuggestionsRequestDeferral : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Complete();
}

interface LocalContentSuggestionSettings
{
}

interface SearchPane
{
}

interface SearchPaneQueryChangedEventArgs
{
}

interface SearchPaneQueryLinguisticDetails
{
}

interface SearchPaneQuerySubmittedEventArgs
{
}

interface SearchPaneResultSuggestionChosenEventArgs
{
}

interface SearchPaneSuggestionsRequest
{
}

interface SearchPaneSuggestionsRequestDeferral
{
}

interface SearchPaneSuggestionsRequestedEventArgs
{
}

interface SearchPaneVisibilityChangedEventArgs
{
}

interface SearchQueryLinguisticDetails
{
}

interface SearchSuggestionCollection
{
}

interface SearchSuggestionsRequest
{
}

interface SearchSuggestionsRequestDeferral
{
}