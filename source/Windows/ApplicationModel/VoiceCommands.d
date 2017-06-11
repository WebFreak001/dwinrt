module Windows.ApplicationModel.VoiceCommands;

import dwinrt;

@uuid("936f5273-ec82-42a6-a55c-d2d79ec6f920")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommand")
interface IVoiceCommand : IInspectable
{
extern(Windows):
	HRESULT get_CommandName(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Foundation.Collections.IVectorView!(HSTRING))* return_value);
	HRESULT get_SpeechRecognitionResult(Windows.Media.SpeechRecognition.SpeechRecognitionResult* return_value);
}

@uuid("c85e675d-fe42-432c-9907-09df9fcf64e8")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandCompletedEventArgs")
interface IVoiceCommandCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Reason(Windows.ApplicationModel.VoiceCommands.VoiceCommandCompletionReason* return_value);
}

@uuid("a022593e-8221-4526-b083-840972262247")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandConfirmationResult")
interface IVoiceCommandConfirmationResult : IInspectable
{
extern(Windows):
	HRESULT get_Confirmed(bool* return_value);
}

@uuid("3eefe9f0-b8c7-4c76-a0de-1607895ee327")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile")
interface IVoiceCommandContentTile : IInspectable
{
extern(Windows):
	HRESULT get_Title(HSTRING* return_value);
	HRESULT set_Title(HSTRING value);
	HRESULT get_TextLine1(HSTRING* return_value);
	HRESULT set_TextLine1(HSTRING value);
	HRESULT get_TextLine2(HSTRING* return_value);
	HRESULT set_TextLine2(HSTRING value);
	HRESULT get_TextLine3(HSTRING* return_value);
	HRESULT set_TextLine3(HSTRING value);
	HRESULT get_Image(Windows.Storage.IStorageFile* return_value);
	HRESULT set_Image(Windows.Storage.IStorageFile value);
	HRESULT get_AppContext(IInspectable* return_value);
	HRESULT set_AppContext(IInspectable value);
	HRESULT get_AppLaunchArgument(HSTRING* return_value);
	HRESULT set_AppLaunchArgument(HSTRING value);
	HRESULT get_ContentTileType(Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTileType* return_value);
	HRESULT set_ContentTileType(Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTileType value);
}

@uuid("7972aad0-0974-4979-984b-cb8959cd61ae")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandDefinition")
interface IVoiceCommandDefinition : IInspectable
{
extern(Windows):
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_SetPhraseListAsync(HSTRING phraseListName, Windows.Foundation.Collections.IIterable!(HSTRING) phraseList, Windows.Foundation.IAsyncAction* return_updateAction);
}

@uuid("8fe7a69e-067e-4f16-a18c-5b17e9499940")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandDefinitionManager")
interface IVoiceCommandDefinitionManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_InstallCommandDefinitionsFromStorageFileAsync(Windows.Storage.StorageFile file, Windows.Foundation.IAsyncAction* return_installAction);
	HRESULT get_InstalledCommandDefinitions(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.VoiceCommands.VoiceCommandDefinition)* return_voiceCommandDefinitions);
}

@uuid("ecc68cfe-c9ac-45df-a8ea-feea08ef9c5e")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandDisambiguationResult")
interface IVoiceCommandDisambiguationResult : IInspectable
{
extern(Windows):
	HRESULT get_SelectedItem(Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile* return_value);
}

@uuid("0284b30e-8a3b-4cc4-a6a1-cad5be2716b5")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse")
interface IVoiceCommandResponse : IInspectable
{
extern(Windows):
	HRESULT get_Message(Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage* return_value);
	HRESULT set_Message(Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage value);
	HRESULT get_RepeatMessage(Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage* return_value);
	HRESULT set_RepeatMessage(Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage value);
	HRESULT get_AppLaunchArgument(HSTRING* return_value);
	HRESULT set_AppLaunchArgument(HSTRING value);
	HRESULT get_VoiceCommandContentTiles(Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile)* return_value);
}

@uuid("2932f813-0d3b-49f2-96dd-625019bd3b5d")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse")
interface IVoiceCommandResponseStatics : IInspectable
{
extern(Windows):
	HRESULT get_MaxSupportedVoiceCommandContentTiles(UINT32* return_value);
	HRESULT abi_CreateResponse(Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage userMessage, Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse* return_response);
	HRESULT abi_CreateResponseWithTiles(Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage message, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile) contentTiles, Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse* return_response);
	HRESULT abi_CreateResponseForPrompt(Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage message, Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage repeatMessage, Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse* return_response);
	HRESULT abi_CreateResponseForPromptWithTiles(Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage message, Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage repeatMessage, Windows.Foundation.Collections.IIterable!(Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile) contentTiles, Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse* return_response);
}

@uuid("d894bb9f-21da-44a4-98a2-fb131920a9cc")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandServiceConnection")
interface IVoiceCommandServiceConnection : IInspectable
{
extern(Windows):
	HRESULT abi_GetVoiceCommandAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommand)* return_operation);
	HRESULT abi_RequestConfirmationAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommandConfirmationResult)* return_operation);
	HRESULT abi_RequestDisambiguationAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommandDisambiguationResult)* return_operation);
	HRESULT abi_ReportProgressAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_ReportSuccessAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_ReportFailureAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_RequestAppLaunchAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncAction* return_action);
	HRESULT get_Language(Windows.Globalization.Language* return_language);
	HRESULT add_VoiceCommandCompleted(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.VoiceCommands.VoiceCommandServiceConnection, Windows.ApplicationModel.VoiceCommands.VoiceCommandCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_VoiceCommandCompleted(EventRegistrationToken token);
}

@uuid("370ebffb-2d34-42df-8770-074d0f334697")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandServiceConnection")
interface IVoiceCommandServiceConnectionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromAppServiceTriggerDetails(Windows.ApplicationModel.AppService.AppServiceTriggerDetails triggerDetails, Windows.ApplicationModel.VoiceCommands.VoiceCommandServiceConnection* return_value);
}

@uuid("674eb3c0-44f6-4f07-b979-4c723fc08597")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage")
interface IVoiceCommandUserMessage : IInspectable
{
extern(Windows):
	HRESULT get_DisplayMessage(HSTRING* return_value);
	HRESULT set_DisplayMessage(HSTRING value);
	HRESULT get_SpokenMessage(HSTRING* return_value);
	HRESULT set_SpokenMessage(HSTRING value);
}

interface VoiceCommand : Windows.ApplicationModel.VoiceCommands.IVoiceCommand
{
extern(Windows):
	final HSTRING CommandName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommand).get_CommandName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Foundation.Collections.IVectorView!(HSTRING)) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Foundation.Collections.IVectorView!(HSTRING)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommand).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechRecognition.SpeechRecognitionResult SpeechRecognitionResult()
	{
		Windows.Media.SpeechRecognition.SpeechRecognitionResult _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommand).get_SpeechRecognitionResult(&_ret));
		return _ret;
	}
}

interface VoiceCommandCompletedEventArgs : Windows.ApplicationModel.VoiceCommands.IVoiceCommandCompletedEventArgs
{
extern(Windows):
	final Windows.ApplicationModel.VoiceCommands.VoiceCommandCompletionReason Reason()
	{
		Windows.ApplicationModel.VoiceCommands.VoiceCommandCompletionReason _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandCompletedEventArgs).get_Reason(&_ret));
		return _ret;
	}
}

interface VoiceCommandConfirmationResult : Windows.ApplicationModel.VoiceCommands.IVoiceCommandConfirmationResult
{
extern(Windows):
	final bool Confirmed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandConfirmationResult).get_Confirmed(&_ret));
		return _ret;
	}
}

interface VoiceCommandContentTile : Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile
{
extern(Windows):
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).get_Title(&_ret));
		return _ret;
	}
	final void Title(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).set_Title(value));
	}
	final HSTRING TextLine1()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).get_TextLine1(&_ret));
		return _ret;
	}
	final void TextLine1(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).set_TextLine1(value));
	}
	final HSTRING TextLine2()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).get_TextLine2(&_ret));
		return _ret;
	}
	final void TextLine2(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).set_TextLine2(value));
	}
	final HSTRING TextLine3()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).get_TextLine3(&_ret));
		return _ret;
	}
	final void TextLine3(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).set_TextLine3(value));
	}
	final Windows.Storage.IStorageFile Image()
	{
		Windows.Storage.IStorageFile _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).get_Image(&_ret));
		return _ret;
	}
	final void Image(Windows.Storage.IStorageFile value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).set_Image(value));
	}
	final IInspectable AppContext()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).get_AppContext(&_ret));
		return _ret;
	}
	final void AppContext(IInspectable value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).set_AppContext(value));
	}
	final HSTRING AppLaunchArgument()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).get_AppLaunchArgument(&_ret));
		return _ret;
	}
	final void AppLaunchArgument(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).set_AppLaunchArgument(value));
	}
	final Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTileType ContentTileType()
	{
		Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTileType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).get_ContentTileType(&_ret));
		return _ret;
	}
	final void ContentTileType(Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTileType value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile).set_ContentTileType(value));
	}
}

interface VoiceCommandDefinition : Windows.ApplicationModel.VoiceCommands.IVoiceCommandDefinition
{
extern(Windows):
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandDefinition).get_Language(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandDefinition).get_Name(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetPhraseListAsync(HSTRING phraseListName, Windows.Foundation.Collections.IIterable!(HSTRING) phraseList)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandDefinition).abi_SetPhraseListAsync(phraseListName, phraseList, &_ret));
		return _ret;
	}
}

interface VoiceCommandDefinitionManager
{
}

interface VoiceCommandDisambiguationResult : Windows.ApplicationModel.VoiceCommands.IVoiceCommandDisambiguationResult
{
extern(Windows):
	final Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile SelectedItem()
	{
		Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandDisambiguationResult).get_SelectedItem(&_ret));
		return _ret;
	}
}

interface VoiceCommandResponse : Windows.ApplicationModel.VoiceCommands.IVoiceCommandResponse
{
extern(Windows):
	final Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage Message()
	{
		Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandResponse).get_Message(&_ret));
		return _ret;
	}
	final void Message(Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandResponse).set_Message(value));
	}
	final Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage RepeatMessage()
	{
		Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandResponse).get_RepeatMessage(&_ret));
		return _ret;
	}
	final void RepeatMessage(Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandResponse).set_RepeatMessage(value));
	}
	final HSTRING AppLaunchArgument()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandResponse).get_AppLaunchArgument(&_ret));
		return _ret;
	}
	final void AppLaunchArgument(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandResponse).set_AppLaunchArgument(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile) VoiceCommandContentTiles()
	{
		Windows.Foundation.Collections.IVector!(Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandResponse).get_VoiceCommandContentTiles(&_ret));
		return _ret;
	}
}

interface VoiceCommandServiceConnection : Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnection
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommand) GetVoiceCommandAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommand) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnection).abi_GetVoiceCommandAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommandConfirmationResult) RequestConfirmationAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommandConfirmationResult) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnection).abi_RequestConfirmationAsync(response, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommandDisambiguationResult) RequestDisambiguationAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommandDisambiguationResult) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnection).abi_RequestDisambiguationAsync(response, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportProgressAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnection).abi_ReportProgressAsync(response, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportSuccessAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnection).abi_ReportSuccessAsync(response, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ReportFailureAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnection).abi_ReportFailureAsync(response, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RequestAppLaunchAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnection).abi_RequestAppLaunchAsync(response, &_ret));
		return _ret;
	}
	final Windows.Globalization.Language Language()
	{
		Windows.Globalization.Language _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnection).get_Language(&_ret));
		return _ret;
	}
	final void removeVoiceCommandCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_VoiceCommandCompleted(token));
	}
}

interface VoiceCommandUserMessage : Windows.ApplicationModel.VoiceCommands.IVoiceCommandUserMessage
{
extern(Windows):
	final HSTRING DisplayMessage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandUserMessage).get_DisplayMessage(&_ret));
		return _ret;
	}
	final void DisplayMessage(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandUserMessage).set_DisplayMessage(value));
	}
	final HSTRING SpokenMessage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandUserMessage).get_SpokenMessage(&_ret));
		return _ret;
	}
	final void SpokenMessage(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.VoiceCommands.IVoiceCommandUserMessage).set_SpokenMessage(value));
	}
}

enum VoiceCommandCompletionReason
{
	Unknown = 0,
	CommunicationFailed = 1,
	ResourceLimitsExceeded = 2,
	Canceled = 3,
	TimeoutExceeded = 4,
	AppLaunched = 5,
	Completed = 6
}

enum VoiceCommandContentTileType
{
	TitleOnly = 0,
	TitleWithText = 1,
	TitleWith68x68Icon = 2,
	TitleWith68x68IconAndText = 3,
	TitleWith68x92Icon = 4,
	TitleWith68x92IconAndText = 5,
	TitleWith280x140Icon = 6,
	TitleWith280x140IconAndText = 7
}