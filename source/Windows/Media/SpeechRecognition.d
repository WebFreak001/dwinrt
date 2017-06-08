module Windows.Media.SpeechRecognition;

import dwinrt;

@uuid("e3d069bb-e30c-5e18-424b-7fbe81f8fbd0")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechContinuousRecognitionCompletedEventArgs")
interface ISpeechContinuousRecognitionCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus* return_value);
}

@uuid("19091e1e-6e7e-5a46-40fb-76594f786504")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechContinuousRecognitionResultGeneratedEventArgs")
interface ISpeechContinuousRecognitionResultGeneratedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Result(Windows.Media.SpeechRecognition.SpeechRecognitionResult* return_value);
}

@uuid("6a213c04-6614-49f8-99a2-b5e9b3a085c8")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession")
interface ISpeechContinuousRecognitionSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AutoStopSilenceTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_AutoStopSilenceTimeout(Windows.Foundation.TimeSpan value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_StartWithModeAsync(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionMode mode, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_CancelAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_PauseAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_Resume();
	HRESULT add_Completed(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession*,Windows.Media.SpeechRecognition.SpeechContinuousRecognitionCompletedEventArgs*) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_Completed(EventRegistrationToken value);
	HRESULT add_ResultGenerated(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession*,Windows.Media.SpeechRecognition.SpeechContinuousRecognitionResultGeneratedEventArgs*) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_ResultGenerated(EventRegistrationToken value);
}

@uuid("407e6c5d-6ac7-4da4-9cc1-2fce32cf7489")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionCompilationResult")
interface ISpeechRecognitionCompilationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus* return_value);
}

@uuid("79ac1628-4d68-43c4-8911-40dc4101b55b")
interface ISpeechRecognitionConstraint : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsEnabled(bool value);
	HRESULT get_Tag(HSTRING* return_value);
	HRESULT set_Tag(HSTRING value);
	HRESULT get_Type(Windows.Media.SpeechRecognition.SpeechRecognitionConstraintType* return_value);
	HRESULT get_Probability(Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability* return_value);
	HRESULT set_Probability(Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability value);
}

@uuid("b5031a8f-85ca-4fa4-b11a-474fc41b3835")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint")
interface ISpeechRecognitionGrammarFileConstraint : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GrammarFile(Windows.Storage.StorageFile* return_value);
}

@uuid("3da770eb-c479-4c27-9f19-89974ef392d1")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint")
interface ISpeechRecognitionGrammarFileConstraintFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Storage.StorageFile file, const Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint* return_raint);
	HRESULT abi_CreateWithTag(Windows.Storage.StorageFile file, HSTRING tag, const Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint* return_raint);
}

@uuid("7a7b25b0-99c5-4f7d-bf84-10aa1302b634")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionHypothesis")
interface ISpeechRecognitionHypothesis : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("55161a7a-8023-5866-411d-1213bb271476")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionHypothesisGeneratedEventArgs")
interface ISpeechRecognitionHypothesisGeneratedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Hypothesis(Windows.Media.SpeechRecognition.SpeechRecognitionHypothesis* return_value);
}

@uuid("09c487e9-e4ad-4526-81f2-4946fb481d98")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint")
interface ISpeechRecognitionListConstraint : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Commands(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}

@uuid("40f3cdc7-562a-426a-9f3b-3b4e282be1d5")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint")
interface ISpeechRecognitionListConstraintFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) commands, const Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint* return_raint);
	HRESULT abi_CreateWithTag(Windows.Foundation.Collections.IIterable!(HSTRING) commands, HSTRING tag, const Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint* return_raint);
}

@uuid("4fe24105-8c3a-4c7e-8d0a-5bd4f5b14ad8")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionQualityDegradingEventArgs")
interface ISpeechRecognitionQualityDegradingEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Problem(Windows.Media.SpeechRecognition.SpeechRecognitionAudioProblem* return_value);
}

@uuid("4e303157-034e-4652-857e-d0454cc4beec")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionResult")
interface ISpeechRecognitionResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus* return_value);
	HRESULT get_Text(HSTRING* return_value);
	HRESULT get_Confidence(Windows.Media.SpeechRecognition.SpeechRecognitionConfidence* return_value);
	HRESULT get_SemanticInterpretation(Windows.Media.SpeechRecognition.SpeechRecognitionSemanticInterpretation* return_value);
	HRESULT abi_GetAlternates(UINT32 maxAlternates, Windows.Foundation.Collections.IVectorView!(Windows.Media.SpeechRecognition.SpeechRecognitionResult)* return_alternates);
	HRESULT get_Constraint(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint* return_value);
	HRESULT get_RulePath(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_RawConfidence(double* return_value);
}

@uuid("af7ed1ba-451b-4166-a0c1-1ffe84032d03")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionResult")
interface ISpeechRecognitionResult2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PhraseStartTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_PhraseDuration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("aae1da9b-7e32-4c1f-89fe-0c65f486f52e")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionSemanticInterpretation")
interface ISpeechRecognitionSemanticInterpretation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING,Windows.Foundation.Collections.IVectorView!(HSTRING))* return_value);
}

@uuid("bf6fdf19-825d-4e69-a681-36e48cf1c93e")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint")
interface ISpeechRecognitionTopicConstraint : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Scenario(Windows.Media.SpeechRecognition.SpeechRecognitionScenario* return_value);
	HRESULT get_TopicHint(HSTRING* return_value);
}

@uuid("6e6863df-ec05-47d7-a5df-56a3431e58d2")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint")
interface ISpeechRecognitionTopicConstraintFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Media.SpeechRecognition.SpeechRecognitionScenario scenario, HSTRING topicHint, const Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint* return_raint);
	HRESULT abi_CreateWithTag(Windows.Media.SpeechRecognition.SpeechRecognitionScenario scenario, HSTRING topicHint, HSTRING tag, const Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint* return_raint);
}

@uuid("0bc3c9cb-c26a-40f2-aeb5-8096b2e48073")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizer")
interface ISpeechRecognizer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CurrentLanguage(Windows.Globalization.Language* return_language);
	HRESULT get_Constraints(Windows.Foundation.Collections.IVector!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint)* return_value);
	HRESULT get_Timeouts(Windows.Media.SpeechRecognition.SpeechRecognizerTimeouts* return_value);
	HRESULT get_UIOptions(Windows.Media.SpeechRecognition.SpeechRecognizerUIOptions* return_value);
	HRESULT abi_CompileConstraintsAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionCompilationResult)* return_asyncOperation);
	HRESULT abi_RecognizeAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionResult)* return_asyncOperation);
	HRESULT abi_RecognizeWithUIAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionResult)* return_asyncOperation);
	HRESULT add_RecognitionQualityDegrading(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechRecognizer*,Windows.Media.SpeechRecognition.SpeechRecognitionQualityDegradingEventArgs*) speechRecognitionQualityDegradingHandler, EventRegistrationToken* return_cookie);
	HRESULT remove_RecognitionQualityDegrading(EventRegistrationToken cookie);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechRecognizer*,Windows.Media.SpeechRecognition.SpeechRecognizerStateChangedEventArgs*) stateChangedHandler, EventRegistrationToken* return_cookie);
	HRESULT remove_StateChanged(EventRegistrationToken cookie);
}

@uuid("63c9baf1-91e3-4ea4-86a1-7c3867d084a6")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizer")
interface ISpeechRecognizer2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContinuousRecognitionSession(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession* return_value);
	HRESULT get_State(Windows.Media.SpeechRecognition.SpeechRecognizerState* return_value);
	HRESULT abi_StopRecognitionAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT add_HypothesisGenerated(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechRecognizer*,Windows.Media.SpeechRecognition.SpeechRecognitionHypothesisGeneratedEventArgs*) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_HypothesisGenerated(EventRegistrationToken value);
}

@uuid("60c488dd-7fb8-4033-ac70-d046f64818e1")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizer")
interface ISpeechRecognizerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.Globalization.Language language, Windows.Media.SpeechRecognition.SpeechRecognizer* return_recognizer);
}

@uuid("563d4f09-ba03-4bad-ad81-ddc6c4dab0c3")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizerStateChangedEventArgs")
interface ISpeechRecognizerStateChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_State(Windows.Media.SpeechRecognition.SpeechRecognizerState* return_value);
}

@uuid("87a35eac-a7dc-4b0b-bcc9-24f47c0b7ebf")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizer")
interface ISpeechRecognizerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SystemSpeechLanguage(Windows.Globalization.Language* return_language);
	HRESULT get_SupportedTopicLanguages(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language)* return_languages);
	HRESULT get_SupportedGrammarLanguages(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language)* return_languages);
}

@uuid("2ef76fca-6a3c-4dca-a153-df1bc88a79af")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizerTimeouts")
interface ISpeechRecognizerTimeouts : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InitialSilenceTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_InitialSilenceTimeout(Windows.Foundation.TimeSpan value);
	HRESULT get_EndSilenceTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_EndSilenceTimeout(Windows.Foundation.TimeSpan value);
	HRESULT get_BabbleTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_BabbleTimeout(Windows.Foundation.TimeSpan value);
}

@uuid("7888d641-b92b-44ba-a25f-d1864630641f")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizerUIOptions")
interface ISpeechRecognizerUIOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExampleText(HSTRING* return_value);
	HRESULT set_ExampleText(HSTRING value);
	HRESULT get_AudiblePrompt(HSTRING* return_value);
	HRESULT set_AudiblePrompt(HSTRING value);
	HRESULT get_IsReadBackEnabled(bool* return_value);
	HRESULT set_IsReadBackEnabled(bool value);
	HRESULT get_ShowConfirmation(bool* return_value);
	HRESULT set_ShowConfirmation(bool value);
}

interface SpeechContinuousRecognitionCompletedEventArgs
{
}

interface SpeechContinuousRecognitionResultGeneratedEventArgs
{
}

interface SpeechContinuousRecognitionSession
{
}

interface SpeechRecognitionCompilationResult
{
}

interface SpeechRecognitionGrammarFileConstraint
{
}

interface SpeechRecognitionHypothesis
{
}

interface SpeechRecognitionHypothesisGeneratedEventArgs
{
}

interface SpeechRecognitionListConstraint
{
}

interface SpeechRecognitionQualityDegradingEventArgs
{
}

interface SpeechRecognitionResult
{
}

interface SpeechRecognitionSemanticInterpretation
{
}

interface SpeechRecognitionTopicConstraint
{
}

interface SpeechRecognitionVoiceCommandDefinitionConstraint
{
}

interface SpeechRecognizer
{
}

interface SpeechRecognizerStateChangedEventArgs
{
}

interface SpeechRecognizerTimeouts
{
}

interface SpeechRecognizerUIOptions
{
}

enum SpeechContinuousRecognitionMode
{
	Default = 0,
	PauseOnRecognition = 1
}

enum SpeechRecognitionAudioProblem
{
	None = 0,
	TooNoisy = 1,
	NoSignal = 2,
	TooLoud = 3,
	TooQuiet = 4,
	TooFast = 5,
	TooSlow = 6
}

enum SpeechRecognitionConfidence
{
	High = 0,
	Medium = 1,
	Low = 2,
	Rejected = 3
}

enum SpeechRecognitionConstraintProbability
{
	Default = 0,
	Min = 1,
	Max = 2
}

enum SpeechRecognitionConstraintType
{
	Topic = 0,
	List = 1,
	Grammar = 2,
	VoiceCommandDefinition = 3
}

enum SpeechRecognitionResultStatus
{
	Success = 0,
	TopicLanguageNotSupported = 1,
	GrammarLanguageMismatch = 2,
	GrammarCompilationFailure = 3,
	AudioQualityFailure = 4,
	UserCanceled = 5,
	Unknown = 6,
	TimeoutExceeded = 7,
	PauseLimitExceeded = 8,
	NetworkFailure = 9,
	MicrophoneUnavailable = 10
}

enum SpeechRecognitionScenario
{
	WebSearch = 0,
	Dictation = 1,
	FormFilling = 2
}

enum SpeechRecognizerState
{
	Idle = 0,
	Capturing = 1,
	Processing = 2,
	SoundStarted = 3,
	SoundEnded = 4,
	SpeechDetected = 5,
	Paused = 6
}