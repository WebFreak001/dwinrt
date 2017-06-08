module Windows.ApplicationModel.VoiceCommands;

import dwinrt;

@uuid("936f5273-ec82-42a6-a55c-d2d79ec6f920")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommand")
interface IVoiceCommand : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CommandName(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING,Windows.Foundation.Collections.IVectorView!(HSTRING))* return_value);
	HRESULT get_SpeechRecognitionResult(Windows.Media.SpeechRecognition.SpeechRecognitionResult* return_value);
}

@uuid("c85e675d-fe42-432c-9907-09df9fcf64e8")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandCompletedEventArgs")
interface IVoiceCommandCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Reason(Windows.ApplicationModel.VoiceCommands.VoiceCommandCompletionReason* return_value);
}

@uuid("a022593e-8221-4526-b083-840972262247")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandConfirmationResult")
interface IVoiceCommandConfirmationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Confirmed(bool* return_value);
}

@uuid("3eefe9f0-b8c7-4c76-a0de-1607895ee327")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile")
interface IVoiceCommandContentTile : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_SetPhraseListAsync(HSTRING phraseListName, Windows.Foundation.Collections.IIterable!(HSTRING) phraseList, Windows.Foundation.IAsyncAction* return_updateAction);
}

@uuid("8fe7a69e-067e-4f16-a18c-5b17e9499940")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandDefinitionManager")
interface IVoiceCommandDefinitionManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_InstallCommandDefinitionsFromStorageFileAsync(Windows.Storage.StorageFile file, Windows.Foundation.IAsyncAction* return_installAction);
	HRESULT get_InstalledCommandDefinitions(Windows.Foundation.Collections.IMapView!(HSTRING,Windows.ApplicationModel.VoiceCommands.VoiceCommandDefinition*)* return_voiceCommandDefinitions);
}

@uuid("ecc68cfe-c9ac-45df-a8ea-feea08ef9c5e")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandDisambiguationResult")
interface IVoiceCommandDisambiguationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SelectedItem(Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile* return_value);
}

@uuid("0284b30e-8a3b-4cc4-a6a1-cad5be2716b5")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse")
interface IVoiceCommandResponse : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetVoiceCommandAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommand)* return_operation);
	HRESULT abi_RequestConfirmationAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommandConfirmationResult)* return_operation);
	HRESULT abi_RequestDisambiguationAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.VoiceCommands.VoiceCommandDisambiguationResult)* return_operation);
	HRESULT abi_ReportProgressAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_ReportSuccessAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_ReportFailureAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_RequestAppLaunchAsync(Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse response, Windows.Foundation.IAsyncAction* return_action);
	HRESULT get_Language(Windows.Globalization.Language* return_language);
	HRESULT add_VoiceCommandCompleted(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.VoiceCommands.VoiceCommandServiceConnection*,Windows.ApplicationModel.VoiceCommands.VoiceCommandCompletedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_VoiceCommandCompleted(EventRegistrationToken token);
}

@uuid("370ebffb-2d34-42df-8770-074d0f334697")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandServiceConnection")
interface IVoiceCommandServiceConnectionStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromAppServiceTriggerDetails(Windows.ApplicationModel.AppService.AppServiceTriggerDetails triggerDetails, Windows.ApplicationModel.VoiceCommands.VoiceCommandServiceConnection* return_value);
}

@uuid("674eb3c0-44f6-4f07-b979-4c723fc08597")
@WinrtFactory("Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage")
interface IVoiceCommandUserMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayMessage(HSTRING* return_value);
	HRESULT set_DisplayMessage(HSTRING value);
	HRESULT get_SpokenMessage(HSTRING* return_value);
	HRESULT set_SpokenMessage(HSTRING value);
}

interface VoiceCommand
{
}

interface VoiceCommandCompletedEventArgs
{
}

interface VoiceCommandConfirmationResult
{
}

interface VoiceCommandContentTile
{
}

interface VoiceCommandDefinition
{
}

interface VoiceCommandDisambiguationResult
{
}

interface VoiceCommandResponse
{
}

interface VoiceCommandServiceConnection
{
}

interface VoiceCommandUserMessage
{
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