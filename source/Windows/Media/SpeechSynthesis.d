module Windows.Media.SpeechSynthesis;

import dwinrt;

@uuid("7d526ecc-7533-4c3f-85be-888c2baeebdc")
@WinrtFactory("Windows.Media.SpeechSynthesis.SpeechSynthesizer")
interface IInstalledVoicesStatic : IInspectable
{
extern(Windows):
	HRESULT get_AllVoices(Windows.Foundation.Collections.IVectorView!(Windows.Media.SpeechSynthesis.VoiceInformation)* return_value);
	HRESULT get_DefaultVoice(Windows.Media.SpeechSynthesis.VoiceInformation* return_value);
}

@uuid("83e46e93-244c-4622-ba0b-6229c4d0d65d")
@WinrtFactory("Windows.Media.SpeechSynthesis.SpeechSynthesisStream")
interface ISpeechSynthesisStream : IInspectable
{
extern(Windows):
	HRESULT get_Markers(Windows.Foundation.Collections.IVectorView!(Windows.Media.IMediaMarker)* return_value);
}

@uuid("ce9f7c76-97f4-4ced-ad68-d51c458e45c6")
@WinrtFactory("Windows.Media.SpeechSynthesis.SpeechSynthesizer")
interface ISpeechSynthesizer : IInspectable
{
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
extern(Windows):
	HRESULT get_Options(Windows.Media.SpeechSynthesis.SpeechSynthesizerOptions* return_value);
}

@uuid("a0e23871-cc3d-43c9-91b1-ee185324d83d")
@WinrtFactory("Windows.Media.SpeechSynthesis.SpeechSynthesizerOptions")
interface ISpeechSynthesizerOptions : IInspectable
{
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
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Language(HSTRING* return_value);
	HRESULT get_Description(HSTRING* return_value);
	HRESULT get_Gender(Windows.Media.SpeechSynthesis.VoiceGender* return_value);
}

interface SpeechSynthesisStream : Windows.Media.SpeechSynthesis.ISpeechSynthesisStream, Windows.Storage.Streams.IRandomAccessStreamWithContentType, Windows.Storage.Streams.IContentTypeProvider, Windows.Storage.Streams.IRandomAccessStream, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream, Windows.Media.Core.ITimedMetadataTrackProvider
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.IMediaMarker) Markers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.IMediaMarker) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.ISpeechSynthesisStream).get_Markers(&_ret));
		return _ret;
	}
	final HSTRING ContentType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IContentTypeProvider).get_ContentType(&_ret));
		return _ret;
	}
	final UINT64 Size()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Size(&_ret));
		return _ret;
	}
	final void Size(UINT64 value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).set_Size(value));
	}
	final Windows.Storage.Streams.IInputStream GetInputStreamAt(UINT64 position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetInputStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream GetOutputStreamAt(UINT64 position)
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetOutputStreamAt(position, &_ret));
		return _ret;
	}
	final UINT64 Position()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Position(&_ret));
		return _ret;
	}
	final void Seek(UINT64 position)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_Seek(position));
	}
	final Windows.Storage.Streams.IRandomAccessStream CloneStream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_CloneStream(&_ret));
		return _ret;
	}
	final bool CanRead()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanRead(&_ret));
		return _ret;
	}
	final bool CanWrite()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_CanWrite(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IOutputStream).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IInputStream).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack) TimedMetadataTracks()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack) _ret;
		Debug.OK(this.as!(Windows.Media.Core.ITimedMetadataTrackProvider).get_TimedMetadataTracks(&_ret));
		return _ret;
	}
}

interface SpeechSynthesizer : Windows.Media.SpeechSynthesis.ISpeechSynthesizer, Windows.Foundation.IClosable, Windows.Media.SpeechSynthesis.ISpeechSynthesizer2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechSynthesis.SpeechSynthesisStream) SynthesizeTextToStreamAsync(HSTRING text)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechSynthesis.SpeechSynthesisStream) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.ISpeechSynthesizer).abi_SynthesizeTextToStreamAsync(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechSynthesis.SpeechSynthesisStream) SynthesizeSsmlToStreamAsync(HSTRING Ssml)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechSynthesis.SpeechSynthesisStream) _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.ISpeechSynthesizer).abi_SynthesizeSsmlToStreamAsync(Ssml, &_ret));
		return _ret;
	}
	final void Voice(Windows.Media.SpeechSynthesis.VoiceInformation value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.ISpeechSynthesizer).set_Voice(value));
	}
	final Windows.Media.SpeechSynthesis.VoiceInformation Voice()
	{
		Windows.Media.SpeechSynthesis.VoiceInformation _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.ISpeechSynthesizer).get_Voice(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Media.SpeechSynthesis.SpeechSynthesizerOptions Options()
	{
		Windows.Media.SpeechSynthesis.SpeechSynthesizerOptions _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.ISpeechSynthesizer2).get_Options(&_ret));
		return _ret;
	}
}

interface SpeechSynthesizerOptions : Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions
{
extern(Windows):
	final bool IncludeWordBoundaryMetadata()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions).get_IncludeWordBoundaryMetadata(&_ret));
		return _ret;
	}
	final void IncludeWordBoundaryMetadata(bool value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions).set_IncludeWordBoundaryMetadata(value));
	}
	final bool IncludeSentenceBoundaryMetadata()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions).get_IncludeSentenceBoundaryMetadata(&_ret));
		return _ret;
	}
	final void IncludeSentenceBoundaryMetadata(bool value)
	{
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions).set_IncludeSentenceBoundaryMetadata(value));
	}
}

interface VoiceInformation : Windows.Media.SpeechSynthesis.IVoiceInformation
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.IVoiceInformation).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.IVoiceInformation).get_Id(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.IVoiceInformation).get_Language(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.IVoiceInformation).get_Description(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechSynthesis.VoiceGender Gender()
	{
		Windows.Media.SpeechSynthesis.VoiceGender _ret;
		Debug.OK(this.as!(Windows.Media.SpeechSynthesis.IVoiceInformation).get_Gender(&_ret));
		return _ret;
	}
}

enum VoiceGender
{
	Male = 0,
	Female = 1
}