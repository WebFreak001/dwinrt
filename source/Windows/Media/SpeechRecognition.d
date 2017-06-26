module Windows.Media.SpeechRecognition;

import dwinrt;

@uuid("e3d069bb-e30c-5e18-424b-7fbe81f8fbd0")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechContinuousRecognitionCompletedEventArgs")
interface ISpeechContinuousRecognitionCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus* return_value);
}

@uuid("19091e1e-6e7e-5a46-40fb-76594f786504")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechContinuousRecognitionResultGeneratedEventArgs")
interface ISpeechContinuousRecognitionResultGeneratedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Result(Windows.Media.SpeechRecognition.SpeechRecognitionResult* return_value);
}

@uuid("6a213c04-6614-49f8-99a2-b5e9b3a085c8")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession")
interface ISpeechContinuousRecognitionSession : IInspectable
{
extern(Windows):
	HRESULT get_AutoStopSilenceTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_AutoStopSilenceTimeout(Windows.Foundation.TimeSpan value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_StartWithModeAsync(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionMode mode, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_CancelAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_PauseAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_Resume();
	HRESULT add_Completed(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession, Windows.Media.SpeechRecognition.SpeechContinuousRecognitionCompletedEventArgs) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_Completed(EventRegistrationToken value);
	HRESULT add_ResultGenerated(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession, Windows.Media.SpeechRecognition.SpeechContinuousRecognitionResultGeneratedEventArgs) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_ResultGenerated(EventRegistrationToken value);
}

@uuid("407e6c5d-6ac7-4da4-9cc1-2fce32cf7489")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionCompilationResult")
interface ISpeechRecognitionCompilationResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus* return_value);
}

@uuid("79ac1628-4d68-43c4-8911-40dc4101b55b")
interface ISpeechRecognitionConstraint : IInspectable
{
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
interface ISpeechRecognitionGrammarFileConstraint_Base : IInspectable
{
extern(Windows):
	HRESULT get_GrammarFile(Windows.Storage.StorageFile* return_value);
}
@uuid("b5031a8f-85ca-4fa4-b11a-474fc41b3835")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint")
interface ISpeechRecognitionGrammarFileConstraint : ISpeechRecognitionGrammarFileConstraint_Base, Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint {}

@uuid("3da770eb-c479-4c27-9f19-89974ef392d1")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint")
interface ISpeechRecognitionGrammarFileConstraintFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Storage.StorageFile file, const Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint* return_raint);
	HRESULT abi_CreateWithTag(Windows.Storage.StorageFile file, HSTRING tag, const Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint* return_raint);
}

@uuid("7a7b25b0-99c5-4f7d-bf84-10aa1302b634")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionHypothesis")
interface ISpeechRecognitionHypothesis : IInspectable
{
extern(Windows):
	HRESULT get_Text(HSTRING* return_value);
}

@uuid("55161a7a-8023-5866-411d-1213bb271476")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionHypothesisGeneratedEventArgs")
interface ISpeechRecognitionHypothesisGeneratedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Hypothesis(Windows.Media.SpeechRecognition.SpeechRecognitionHypothesis* return_value);
}

@uuid("09c487e9-e4ad-4526-81f2-4946fb481d98")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint")
interface ISpeechRecognitionListConstraint_Base : IInspectable
{
extern(Windows):
	HRESULT get_Commands(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
}
@uuid("09c487e9-e4ad-4526-81f2-4946fb481d98")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint")
interface ISpeechRecognitionListConstraint : ISpeechRecognitionListConstraint_Base, Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint {}

@uuid("40f3cdc7-562a-426a-9f3b-3b4e282be1d5")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint")
interface ISpeechRecognitionListConstraintFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) commands, const Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint* return_raint);
	HRESULT abi_CreateWithTag(Windows.Foundation.Collections.IIterable!(HSTRING) commands, HSTRING tag, const Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint* return_raint);
}

@uuid("4fe24105-8c3a-4c7e-8d0a-5bd4f5b14ad8")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionQualityDegradingEventArgs")
interface ISpeechRecognitionQualityDegradingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Problem(Windows.Media.SpeechRecognition.SpeechRecognitionAudioProblem* return_value);
}

@uuid("4e303157-034e-4652-857e-d0454cc4beec")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionResult")
interface ISpeechRecognitionResult : IInspectable
{
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
extern(Windows):
	HRESULT get_PhraseStartTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_PhraseDuration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("aae1da9b-7e32-4c1f-89fe-0c65f486f52e")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionSemanticInterpretation")
interface ISpeechRecognitionSemanticInterpretation : IInspectable
{
extern(Windows):
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Foundation.Collections.IVectorView!(HSTRING))* return_value);
}

@uuid("bf6fdf19-825d-4e69-a681-36e48cf1c93e")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint")
interface ISpeechRecognitionTopicConstraint_Base : IInspectable
{
extern(Windows):
	HRESULT get_Scenario(Windows.Media.SpeechRecognition.SpeechRecognitionScenario* return_value);
	HRESULT get_TopicHint(HSTRING* return_value);
}
@uuid("bf6fdf19-825d-4e69-a681-36e48cf1c93e")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint")
interface ISpeechRecognitionTopicConstraint : ISpeechRecognitionTopicConstraint_Base, Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint {}

@uuid("6e6863df-ec05-47d7-a5df-56a3431e58d2")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint")
interface ISpeechRecognitionTopicConstraintFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.SpeechRecognition.SpeechRecognitionScenario scenario, HSTRING topicHint, const Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint* return_raint);
	HRESULT abi_CreateWithTag(Windows.Media.SpeechRecognition.SpeechRecognitionScenario scenario, HSTRING topicHint, HSTRING tag, const Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint* return_raint);
}

@uuid("f2791c2b-1ef4-4ae7-9d77-b6ff10b8a3c2")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionVoiceCommandDefinitionConstraint")
interface ISpeechRecognitionVoiceCommandDefinitionConstraint_Base : IInspectable
{
}
@uuid("f2791c2b-1ef4-4ae7-9d77-b6ff10b8a3c2")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognitionVoiceCommandDefinitionConstraint")
interface ISpeechRecognitionVoiceCommandDefinitionConstraint : ISpeechRecognitionVoiceCommandDefinitionConstraint_Base, Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint {}

@uuid("0bc3c9cb-c26a-40f2-aeb5-8096b2e48073")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizer")
interface ISpeechRecognizer_Base : IInspectable
{
extern(Windows):
	HRESULT get_CurrentLanguage(Windows.Globalization.Language* return_language);
	HRESULT get_Constraints(Windows.Foundation.Collections.IVector!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint)* return_value);
	HRESULT get_Timeouts(Windows.Media.SpeechRecognition.SpeechRecognizerTimeouts* return_value);
	HRESULT get_UIOptions(Windows.Media.SpeechRecognition.SpeechRecognizerUIOptions* return_value);
	HRESULT abi_CompileConstraintsAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionCompilationResult)* return_asyncOperation);
	HRESULT abi_RecognizeAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionResult)* return_asyncOperation);
	HRESULT abi_RecognizeWithUIAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionResult)* return_asyncOperation);
	HRESULT add_RecognitionQualityDegrading(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognitionQualityDegradingEventArgs) speechRecognitionQualityDegradingHandler, EventRegistrationToken* return_cookie);
	HRESULT remove_RecognitionQualityDegrading(EventRegistrationToken cookie);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognizerStateChangedEventArgs) stateChangedHandler, EventRegistrationToken* return_cookie);
	HRESULT remove_StateChanged(EventRegistrationToken cookie);
}
@uuid("0bc3c9cb-c26a-40f2-aeb5-8096b2e48073")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizer")
interface ISpeechRecognizer : ISpeechRecognizer_Base, Windows.Foundation.IClosable {}

@uuid("63c9baf1-91e3-4ea4-86a1-7c3867d084a6")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizer")
interface ISpeechRecognizer2 : IInspectable
{
extern(Windows):
	HRESULT get_ContinuousRecognitionSession(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession* return_value);
	HRESULT get_State(Windows.Media.SpeechRecognition.SpeechRecognizerState* return_value);
	HRESULT abi_StopRecognitionAsync(Windows.Foundation.IAsyncAction* return_value);
	HRESULT add_HypothesisGenerated(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognitionHypothesisGeneratedEventArgs) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_HypothesisGenerated(EventRegistrationToken value);
}

@uuid("60c488dd-7fb8-4033-ac70-d046f64818e1")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizer")
interface ISpeechRecognizerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Globalization.Language language, Windows.Media.SpeechRecognition.SpeechRecognizer* return_recognizer);
}

@uuid("563d4f09-ba03-4bad-ad81-ddc6c4dab0c3")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizerStateChangedEventArgs")
interface ISpeechRecognizerStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_State(Windows.Media.SpeechRecognition.SpeechRecognizerState* return_value);
}

@uuid("87a35eac-a7dc-4b0b-bcc9-24f47c0b7ebf")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizer")
interface ISpeechRecognizerStatics : IInspectable
{
extern(Windows):
	HRESULT get_SystemSpeechLanguage(Windows.Globalization.Language* return_language);
	HRESULT get_SupportedTopicLanguages(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language)* return_languages);
	HRESULT get_SupportedGrammarLanguages(Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language)* return_languages);
}

@uuid("2ef76fca-6a3c-4dca-a153-df1bc88a79af")
@WinrtFactory("Windows.Media.SpeechRecognition.SpeechRecognizerTimeouts")
interface ISpeechRecognizerTimeouts : IInspectable
{
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

interface SpeechContinuousRecognitionCompletedEventArgs : Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionCompletedEventArgs
{
extern(Windows):
	final Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus Status()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionCompletedEventArgs).get_Status(&_ret));
		return _ret;
	}
}

interface SpeechContinuousRecognitionResultGeneratedEventArgs : Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionResultGeneratedEventArgs
{
extern(Windows):
	final Windows.Media.SpeechRecognition.SpeechRecognitionResult Result()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionResult _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionResultGeneratedEventArgs).get_Result(&_ret));
		return _ret;
	}
}

interface SpeechContinuousRecognitionSession : Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession
{
extern(Windows):
	final Windows.Foundation.TimeSpan AutoStopSilenceTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).get_AutoStopSilenceTimeout(&_ret));
		return _ret;
	}
	final void AutoStopSilenceTimeout(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).set_AutoStopSilenceTimeout(value));
	}
	final Windows.Foundation.IAsyncAction StartAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StartWithModeAsync(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionMode mode)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).abi_StartWithModeAsync(mode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).abi_StopAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction CancelAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).abi_CancelAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction PauseAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).abi_PauseAsync(&_ret));
		return _ret;
	}
	final void Resume()
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).abi_Resume());
	}
	final EventRegistrationToken OnCompleted(void delegate(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession, Windows.Media.SpeechRecognition.SpeechContinuousRecognitionCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).add_Completed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession, Windows.Media.SpeechRecognition.SpeechContinuousRecognitionCompletedEventArgs), Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession, Windows.Media.SpeechRecognition.SpeechContinuousRecognitionCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCompleted(EventRegistrationToken value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).remove_Completed(value));
	}
	final EventRegistrationToken OnResultGenerated(void delegate(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession, Windows.Media.SpeechRecognition.SpeechContinuousRecognitionResultGeneratedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).add_ResultGenerated(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession, Windows.Media.SpeechRecognition.SpeechContinuousRecognitionResultGeneratedEventArgs), Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession, Windows.Media.SpeechRecognition.SpeechContinuousRecognitionResultGeneratedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeResultGenerated(EventRegistrationToken value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession).remove_ResultGenerated(value));
	}
}

interface SpeechRecognitionCompilationResult : Windows.Media.SpeechRecognition.ISpeechRecognitionCompilationResult
{
extern(Windows):
	final Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus Status()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionCompilationResult).get_Status(&_ret));
		return _ret;
	}
}

interface SpeechRecognitionGrammarFileConstraint : Windows.Media.SpeechRecognition.ISpeechRecognitionGrammarFileConstraint, Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint
{
extern(Windows):
	final Windows.Storage.StorageFile GrammarFile()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionGrammarFileConstraint).get_GrammarFile(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_IsEnabled(value));
	}
	final HSTRING Tag()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Tag(&_ret));
		return _ret;
	}
	final void Tag(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_Tag(value));
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionConstraintType Type()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionConstraintType _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Type(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability Probability()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Probability(&_ret));
		return _ret;
	}
	final void Probability(Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_Probability(value));
	}
	static auto New(Windows.Storage.StorageFile file)
	{
		auto factory = factory!(Windows.Media.SpeechRecognition.ISpeechRecognitionGrammarFileConstraintFactory);
		const Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint _ret;
		Debug.OK(factory.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionGrammarFileConstraintFactory).abi_Create(file, &_ret));
		return _ret;
	}
	static auto New(Windows.Storage.StorageFile file, HSTRING tag)
	{
		auto factory = factory!(Windows.Media.SpeechRecognition.ISpeechRecognitionGrammarFileConstraintFactory);
		const Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint _ret;
		Debug.OK(factory.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionGrammarFileConstraintFactory).abi_CreateWithTag(file, tag, &_ret));
		return _ret;
	}
}

interface SpeechRecognitionHypothesis : Windows.Media.SpeechRecognition.ISpeechRecognitionHypothesis
{
extern(Windows):
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionHypothesis).get_Text(&_ret));
		return _ret;
	}
}

interface SpeechRecognitionHypothesisGeneratedEventArgs : Windows.Media.SpeechRecognition.ISpeechRecognitionHypothesisGeneratedEventArgs
{
extern(Windows):
	final Windows.Media.SpeechRecognition.SpeechRecognitionHypothesis Hypothesis()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionHypothesis _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionHypothesisGeneratedEventArgs).get_Hypothesis(&_ret));
		return _ret;
	}
}

interface SpeechRecognitionListConstraint : Windows.Media.SpeechRecognition.ISpeechRecognitionListConstraint, Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(HSTRING) Commands()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionListConstraint).get_Commands(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_IsEnabled(value));
	}
	final HSTRING Tag()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Tag(&_ret));
		return _ret;
	}
	final void Tag(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_Tag(value));
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionConstraintType Type()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionConstraintType _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Type(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability Probability()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Probability(&_ret));
		return _ret;
	}
	final void Probability(Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_Probability(value));
	}
	static auto New(Windows.Foundation.Collections.IIterable!(HSTRING) commands)
	{
		auto factory = factory!(Windows.Media.SpeechRecognition.ISpeechRecognitionListConstraintFactory);
		const Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint _ret;
		Debug.OK(factory.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionListConstraintFactory).abi_Create(commands, &_ret));
		return _ret;
	}
	static auto New(Windows.Foundation.Collections.IIterable!(HSTRING) commands, HSTRING tag)
	{
		auto factory = factory!(Windows.Media.SpeechRecognition.ISpeechRecognitionListConstraintFactory);
		const Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint _ret;
		Debug.OK(factory.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionListConstraintFactory).abi_CreateWithTag(commands, tag, &_ret));
		return _ret;
	}
}

interface SpeechRecognitionQualityDegradingEventArgs : Windows.Media.SpeechRecognition.ISpeechRecognitionQualityDegradingEventArgs
{
extern(Windows):
	final Windows.Media.SpeechRecognition.SpeechRecognitionAudioProblem Problem()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionAudioProblem _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionQualityDegradingEventArgs).get_Problem(&_ret));
		return _ret;
	}
}

interface SpeechRecognitionResult : Windows.Media.SpeechRecognition.ISpeechRecognitionResult, Windows.Media.SpeechRecognition.ISpeechRecognitionResult2
{
extern(Windows):
	final Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus Status()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionResultStatus _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionResult).get_Status(&_ret));
		return _ret;
	}
	final HSTRING Text()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionResult).get_Text(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionConfidence Confidence()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionConfidence _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionResult).get_Confidence(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionSemanticInterpretation SemanticInterpretation()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionSemanticInterpretation _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionResult).get_SemanticInterpretation(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.SpeechRecognition.SpeechRecognitionResult) GetAlternates(UINT32 maxAlternates)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.SpeechRecognition.SpeechRecognitionResult) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionResult).abi_GetAlternates(maxAlternates, &_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint Constraint()
	{
		Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionResult).get_Constraint(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) RulePath()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionResult).get_RulePath(&_ret));
		return _ret;
	}
	final double RawConfidence()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionResult).get_RawConfidence(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime PhraseStartTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionResult2).get_PhraseStartTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan PhraseDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionResult2).get_PhraseDuration(&_ret));
		return _ret;
	}
}

interface SpeechRecognitionSemanticInterpretation : Windows.Media.SpeechRecognition.ISpeechRecognitionSemanticInterpretation
{
extern(Windows):
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Foundation.Collections.IVectorView!(HSTRING)) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionSemanticInterpretation).get_Properties(&_ret));
		return _ret;
	}
}

interface SpeechRecognitionTopicConstraint : Windows.Media.SpeechRecognition.ISpeechRecognitionTopicConstraint, Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint
{
extern(Windows):
	final Windows.Media.SpeechRecognition.SpeechRecognitionScenario Scenario()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionScenario _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionTopicConstraint).get_Scenario(&_ret));
		return _ret;
	}
	final HSTRING TopicHint()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionTopicConstraint).get_TopicHint(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_IsEnabled(value));
	}
	final HSTRING Tag()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Tag(&_ret));
		return _ret;
	}
	final void Tag(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_Tag(value));
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionConstraintType Type()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionConstraintType _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Type(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability Probability()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Probability(&_ret));
		return _ret;
	}
	final void Probability(Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_Probability(value));
	}
	static auto New(Windows.Media.SpeechRecognition.SpeechRecognitionScenario scenario, HSTRING topicHint)
	{
		auto factory = factory!(Windows.Media.SpeechRecognition.ISpeechRecognitionTopicConstraintFactory);
		const Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint _ret;
		Debug.OK(factory.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionTopicConstraintFactory).abi_Create(scenario, topicHint, &_ret));
		return _ret;
	}
	static auto New(Windows.Media.SpeechRecognition.SpeechRecognitionScenario scenario, HSTRING topicHint, HSTRING tag)
	{
		auto factory = factory!(Windows.Media.SpeechRecognition.ISpeechRecognitionTopicConstraintFactory);
		const Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint _ret;
		Debug.OK(factory.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionTopicConstraintFactory).abi_CreateWithTag(scenario, topicHint, tag, &_ret));
		return _ret;
	}
}

interface SpeechRecognitionVoiceCommandDefinitionConstraint : Windows.Media.SpeechRecognition.ISpeechRecognitionVoiceCommandDefinitionConstraint, Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint
{
extern(Windows):
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_IsEnabled(value));
	}
	final HSTRING Tag()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Tag(&_ret));
		return _ret;
	}
	final void Tag(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_Tag(value));
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionConstraintType Type()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionConstraintType _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Type(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability Probability()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).get_Probability(&_ret));
		return _ret;
	}
	final void Probability(Windows.Media.SpeechRecognition.SpeechRecognitionConstraintProbability value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint).set_Probability(value));
	}
}

interface SpeechRecognizer : Windows.Media.SpeechRecognition.ISpeechRecognizer, Windows.Foundation.IClosable, Windows.Media.SpeechRecognition.ISpeechRecognizer2
{
extern(Windows):
	final Windows.Globalization.Language CurrentLanguage()
	{
		Windows.Globalization.Language _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).get_CurrentLanguage(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint) Constraints()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).get_Constraints(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.SpeechRecognizerTimeouts Timeouts()
	{
		Windows.Media.SpeechRecognition.SpeechRecognizerTimeouts _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).get_Timeouts(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.SpeechRecognizerUIOptions UIOptions()
	{
		Windows.Media.SpeechRecognition.SpeechRecognizerUIOptions _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).get_UIOptions(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionCompilationResult) CompileConstraintsAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionCompilationResult) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).abi_CompileConstraintsAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionResult) RecognizeAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionResult) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).abi_RecognizeAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionResult) RecognizeWithUIAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechRecognition.SpeechRecognitionResult) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).abi_RecognizeWithUIAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnRecognitionQualityDegrading(void delegate(Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognitionQualityDegradingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).add_RecognitionQualityDegrading(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognitionQualityDegradingEventArgs), Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognitionQualityDegradingEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRecognitionQualityDegrading(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).remove_RecognitionQualityDegrading(cookie));
	}
	final EventRegistrationToken OnStateChanged(void delegate(Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognizerStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).add_StateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognizerStateChangedEventArgs), Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognizerStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStateChanged(EventRegistrationToken cookie)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer).remove_StateChanged(cookie));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession ContinuousRecognitionSession()
	{
		Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer2).get_ContinuousRecognitionSession(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.SpeechRecognizerState State()
	{
		Windows.Media.SpeechRecognition.SpeechRecognizerState _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer2).get_State(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopRecognitionAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer2).abi_StopRecognitionAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnHypothesisGenerated(void delegate(Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognitionHypothesisGeneratedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer2).add_HypothesisGenerated(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognitionHypothesisGeneratedEventArgs), Windows.Media.SpeechRecognition.SpeechRecognizer, Windows.Media.SpeechRecognition.SpeechRecognitionHypothesisGeneratedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeHypothesisGenerated(EventRegistrationToken value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizer2).remove_HypothesisGenerated(value));
	}

	private static Windows.Media.SpeechRecognition.ISpeechRecognizerStatics _staticInstance;
	public static Windows.Media.SpeechRecognition.ISpeechRecognizerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.SpeechRecognition.ISpeechRecognizerStatics);
		return _staticInstance;
	}
	static Windows.Globalization.Language SystemSpeechLanguage()
	{
		Windows.Globalization.Language _ret;
		Debug.OK(staticInstance.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerStatics).get_SystemSpeechLanguage(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language) SupportedTopicLanguages()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language) _ret;
		Debug.OK(staticInstance.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerStatics).get_SupportedTopicLanguages(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language) SupportedGrammarLanguages()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Globalization.Language) _ret;
		Debug.OK(staticInstance.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerStatics).get_SupportedGrammarLanguages(&_ret));
		return _ret;
	}
	static Windows.Media.SpeechRecognition.SpeechRecognizer New(Windows.Globalization.Language language)
	{
		auto factory = factory!(Windows.Media.SpeechRecognition.ISpeechRecognizerFactory);
		Windows.Media.SpeechRecognition.SpeechRecognizer _ret;
		Debug.OK(factory.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerFactory).abi_Create(language, &_ret));
		return _ret;
	}
}

interface SpeechRecognizerStateChangedEventArgs : Windows.Media.SpeechRecognition.ISpeechRecognizerStateChangedEventArgs
{
extern(Windows):
	final Windows.Media.SpeechRecognition.SpeechRecognizerState State()
	{
		Windows.Media.SpeechRecognition.SpeechRecognizerState _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerStateChangedEventArgs).get_State(&_ret));
		return _ret;
	}
}

interface SpeechRecognizerTimeouts : Windows.Media.SpeechRecognition.ISpeechRecognizerTimeouts
{
extern(Windows):
	final Windows.Foundation.TimeSpan InitialSilenceTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerTimeouts).get_InitialSilenceTimeout(&_ret));
		return _ret;
	}
	final void InitialSilenceTimeout(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerTimeouts).set_InitialSilenceTimeout(value));
	}
	final Windows.Foundation.TimeSpan EndSilenceTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerTimeouts).get_EndSilenceTimeout(&_ret));
		return _ret;
	}
	final void EndSilenceTimeout(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerTimeouts).set_EndSilenceTimeout(value));
	}
	final Windows.Foundation.TimeSpan BabbleTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerTimeouts).get_BabbleTimeout(&_ret));
		return _ret;
	}
	final void BabbleTimeout(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerTimeouts).set_BabbleTimeout(value));
	}
}

interface SpeechRecognizerUIOptions : Windows.Media.SpeechRecognition.ISpeechRecognizerUIOptions
{
extern(Windows):
	final HSTRING ExampleText()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerUIOptions).get_ExampleText(&_ret));
		return _ret;
	}
	final void ExampleText(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerUIOptions).set_ExampleText(value));
	}
	final HSTRING AudiblePrompt()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerUIOptions).get_AudiblePrompt(&_ret));
		return _ret;
	}
	final void AudiblePrompt(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerUIOptions).set_AudiblePrompt(value));
	}
	final bool IsReadBackEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerUIOptions).get_IsReadBackEnabled(&_ret));
		return _ret;
	}
	final void IsReadBackEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerUIOptions).set_IsReadBackEnabled(value));
	}
	final bool ShowConfirmation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerUIOptions).get_ShowConfirmation(&_ret));
		return _ret;
	}
	final void ShowConfirmation(bool value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechRecognition.ISpeechRecognizerUIOptions).set_ShowConfirmation(value));
	}
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