module Windows.Media.SpeechSynthesis;

import dwinrt;

@uuid("7d526ecc-7533-4c3f-85be-888c2baeebdc")
@WinrtFactory("Windows.Media.SpeechSynthesis.SpeechSynthesizer")
interface IInstalledVoicesStatic : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllVoices(Windows.Foundation.Collections.IVectorView!(Windows.Media.SpeechSynthesis.VoiceInformation)* return_value);
	HRESULT get_DefaultVoice(Windows.Media.SpeechSynthesis.VoiceInformation* return_value);
}

@uuid("83e46e93-244c-4622-ba0b-6229c4d0d65d")
@WinrtFactory("Windows.Media.SpeechSynthesis.SpeechSynthesisStream")
interface ISpeechSynthesisStream : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Markers(Windows.Foundation.Collections.IVectorView!(Windows.Media.IMediaMarker)* return_value);
}

@uuid("ce9f7c76-97f4-4ced-ad68-d51c458e45c6")
@WinrtFactory("Windows.Media.SpeechSynthesis.SpeechSynthesizer")
interface ISpeechSynthesizer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SynthesizeTextToStreamAsync(HSTRING text, Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechSynthesis.SpeechSynthesisStream)* return_operation);
	HRESULT abi_SynthesizeSsmlToStreamAsync(HSTRING Ssml, Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechSynthesis.SpeechSynthesisStream)* return_operation);
	HRESULT set_Voice(Windows.Media.SpeechSynthesis.VoiceInformation value);
	HRESULT get_Voice(Windows.Media.SpeechSynthesis.VoiceInformation* return_value);
}

@uuid("a7c5ecb2-4339-4d6a-bbf8-c7a4f1544c2e")
@WinrtFactory("Windows.Media.SpeechSynthesis.SpeechSynthesizer")
interface ISpeechSynthesizer2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Options(Windows.Media.SpeechSynthesis.SpeechSynthesizerOptions* return_value);
}

@uuid("a0e23871-cc3d-43c9-91b1-ee185324d83d")
@WinrtFactory("Windows.Media.SpeechSynthesis.SpeechSynthesizerOptions")
interface ISpeechSynthesizerOptions : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IncludeWordBoundaryMetadata(bool* return_value);
	HRESULT set_IncludeWordBoundaryMetadata(bool value);
	HRESULT get_IncludeSentenceBoundaryMetadata(bool* return_value);
	HRESULT set_IncludeSentenceBoundaryMetadata(bool value);
}

@uuid("b127d6a4-1291-4604-aa9c-83134083352c")
@WinrtFactory("Windows.Media.SpeechSynthesis.VoiceInformation")
interface IVoiceInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_Gender(Windows.Media.SpeechSynthesis.VoiceGender* return_value);
}

interface SpeechSynthesisStream : Windows.Media.SpeechSynthesis.ISpeechSynthesisStream, Windows.Storage.Streams.IRandomAccessStreamWithContentType, Windows.Storage.Streams.IContentTypeProvider, Windows.Storage.Streams.IRandomAccessStream, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream, Windows.Media.Core.ITimedMetadataTrackProvider
{
}

interface SpeechSynthesizer : Windows.Media.SpeechSynthesis.ISpeechSynthesizer, Windows.Foundation.IClosable, Windows.Media.SpeechSynthesis.ISpeechSynthesizer2
{
}

interface SpeechSynthesizerOptions : Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions
{
}

interface VoiceInformation : Windows.Media.SpeechSynthesis.IVoiceInformation
{
}

enum VoiceGender
{
	Male = 0,
	Female = 1
}