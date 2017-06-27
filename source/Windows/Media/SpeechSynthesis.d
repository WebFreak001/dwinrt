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
interface ISpeechSynthesisStream_Base : IInspectable
{
extern(Windows):
	HRESULT get_Markers(Windows.Foundation.Collections.IVectorView!(Windows.Media.IMediaMarker)* return_value);
}
@uuid("83e46e93-244c-4622-ba0b-6229c4d0d65d")
@WinrtFactory("Windows.Media.SpeechSynthesis.SpeechSynthesisStream")
interface ISpeechSynthesisStream : ISpeechSynthesisStream_Base, Windows.Storage.Streams.IRandomAccessStreamWithContentType, Windows.Storage.Streams.IRandomAccessStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream, Windows.Storage.Streams.IOutputStream, Windows.Storage.Streams.IContentTypeProvider {}

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
		Debug.OK((cast(Windows.Media.SpeechSynthesis.ISpeechSynthesisStream)this.asInterface(uuid("83e46e93-244c-4622-ba0b-6229c4d0d65d"))).get_Markers(&_ret));
		return _ret;
	}
	final HSTRING ContentType()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Storage.Streams.IContentTypeProvider)this.asInterface(uuid("97d098a5-3b99-4de9-88a5-e11d2f50c795"))).get_ContentType(&_ret));
		return _ret;
	}
	final ulong Size()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).get_Size(&_ret));
		return _ret;
	}
	final void Size(ulong value)
	{
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).set_Size(value));
	}
	final Windows.Storage.Streams.IInputStream GetInputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).abi_GetInputStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream GetOutputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).abi_GetOutputStreamAt(position, &_ret));
		return _ret;
	}
	final ulong Position()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).get_Position(&_ret));
		return _ret;
	}
	final void Seek(ulong position)
	{
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).abi_Seek(position));
	}
	final Windows.Storage.Streams.IRandomAccessStream CloneStream()
	{
		Windows.Storage.Streams.IRandomAccessStream _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).abi_CloneStream(&_ret));
		return _ret;
	}
	final bool CanRead()
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).get_CanRead(&_ret));
		return _ret;
	}
	final bool CanWrite()
	{
		bool _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStream)this.asInterface(uuid("905a0fe1-bc53-11df-8c49-001e4fc686da"))).get_CanWrite(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) WriteAsync(Windows.Storage.Streams.IBuffer buffer)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IOutputStream)this.asInterface(uuid("905a0fe6-bc53-11df-8c49-001e4fc686da"))).abi_WriteAsync(buffer, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) FlushAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IOutputStream)this.asInterface(uuid("905a0fe6-bc53-11df-8c49-001e4fc686da"))).abi_FlushAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) ReadAsync(Windows.Storage.Streams.IBuffer buffer, UINT32 count, Windows.Storage.Streams.InputStreamOptions options)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Storage.Streams.IBuffer, UINT32) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IInputStream)this.asInterface(uuid("905a0fe2-bc53-11df-8c49-001e4fc686da"))).abi_ReadAsync(buffer, count, options, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack) TimedMetadataTracks()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Core.TimedMetadataTrack) _ret;
		Debug.OK((cast(Windows.Media.Core.ITimedMetadataTrackProvider)this.asInterface(uuid("3b7f2024-f74e-4ade-93c5-219da05b6856"))).get_TimedMetadataTracks(&_ret));
		return _ret;
	}
}

interface SpeechSynthesizer : Windows.Media.SpeechSynthesis.ISpeechSynthesizer, Windows.Foundation.IClosable, Windows.Media.SpeechSynthesis.ISpeechSynthesizer2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechSynthesis.SpeechSynthesisStream) SynthesizeTextToStreamAsync(HSTRING text)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechSynthesis.SpeechSynthesisStream) _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.ISpeechSynthesizer)this.asInterface(uuid("ce9f7c76-97f4-4ced-ad68-d51c458e45c6"))).abi_SynthesizeTextToStreamAsync(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechSynthesis.SpeechSynthesisStream) SynthesizeSsmlToStreamAsync(HSTRING Ssml)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.SpeechSynthesis.SpeechSynthesisStream) _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.ISpeechSynthesizer)this.asInterface(uuid("ce9f7c76-97f4-4ced-ad68-d51c458e45c6"))).abi_SynthesizeSsmlToStreamAsync(Ssml, &_ret));
		return _ret;
	}
	final void Voice(Windows.Media.SpeechSynthesis.VoiceInformation value)
	{
		Debug.OK((cast(Windows.Media.SpeechSynthesis.ISpeechSynthesizer)this.asInterface(uuid("ce9f7c76-97f4-4ced-ad68-d51c458e45c6"))).set_Voice(value));
	}
	final Windows.Media.SpeechSynthesis.VoiceInformation Voice()
	{
		Windows.Media.SpeechSynthesis.VoiceInformation _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.ISpeechSynthesizer)this.asInterface(uuid("ce9f7c76-97f4-4ced-ad68-d51c458e45c6"))).get_Voice(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final Windows.Media.SpeechSynthesis.SpeechSynthesizerOptions Options()
	{
		Windows.Media.SpeechSynthesis.SpeechSynthesizerOptions _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.ISpeechSynthesizer2)this.asInterface(uuid("a7c5ecb2-4339-4d6a-bbf8-c7a4f1544c2e"))).get_Options(&_ret));
		return _ret;
	}

	private static Windows.Media.SpeechSynthesis.IInstalledVoicesStatic _staticInstance;
	public static Windows.Media.SpeechSynthesis.IInstalledVoicesStatic staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.SpeechSynthesis.IInstalledVoicesStatic);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IVectorView!(Windows.Media.SpeechSynthesis.VoiceInformation) AllVoices()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.SpeechSynthesis.VoiceInformation) _ret;
		Debug.OK(staticInstance.get_AllVoices(&_ret));
		return _ret;
	}
	static Windows.Media.SpeechSynthesis.VoiceInformation DefaultVoice()
	{
		Windows.Media.SpeechSynthesis.VoiceInformation _ret;
		Debug.OK(staticInstance.get_DefaultVoice(&_ret));
		return _ret;
	}
	static SpeechSynthesizer New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SpeechSynthesizer).abi_ActivateInstance(&ret));
		return cast(SpeechSynthesizer) ret;
	}
}

interface SpeechSynthesizerOptions : Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions
{
extern(Windows):
	final bool IncludeWordBoundaryMetadata()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions)this.asInterface(uuid("a0e23871-cc3d-43c9-91b1-ee185324d83d"))).get_IncludeWordBoundaryMetadata(&_ret));
		return _ret;
	}
	final void IncludeWordBoundaryMetadata(bool value)
	{
		Debug.OK((cast(Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions)this.asInterface(uuid("a0e23871-cc3d-43c9-91b1-ee185324d83d"))).set_IncludeWordBoundaryMetadata(value));
	}
	final bool IncludeSentenceBoundaryMetadata()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions)this.asInterface(uuid("a0e23871-cc3d-43c9-91b1-ee185324d83d"))).get_IncludeSentenceBoundaryMetadata(&_ret));
		return _ret;
	}
	final void IncludeSentenceBoundaryMetadata(bool value)
	{
		Debug.OK((cast(Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions)this.asInterface(uuid("a0e23871-cc3d-43c9-91b1-ee185324d83d"))).set_IncludeSentenceBoundaryMetadata(value));
	}
}

interface VoiceInformation : Windows.Media.SpeechSynthesis.IVoiceInformation
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.IVoiceInformation)this.asInterface(uuid("b127d6a4-1291-4604-aa9c-83134083352c"))).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.IVoiceInformation)this.asInterface(uuid("b127d6a4-1291-4604-aa9c-83134083352c"))).get_Id(&_ret));
		return _ret;
	}
	final HSTRING Language()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.IVoiceInformation)this.asInterface(uuid("b127d6a4-1291-4604-aa9c-83134083352c"))).get_Language(&_ret));
		return _ret;
	}
	final HSTRING Description()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.IVoiceInformation)this.asInterface(uuid("b127d6a4-1291-4604-aa9c-83134083352c"))).get_Description(&_ret));
		return _ret;
	}
	final Windows.Media.SpeechSynthesis.VoiceGender Gender()
	{
		Windows.Media.SpeechSynthesis.VoiceGender _ret;
		Debug.OK((cast(Windows.Media.SpeechSynthesis.IVoiceInformation)this.asInterface(uuid("b127d6a4-1291-4604-aa9c-83134083352c"))).get_Gender(&_ret));
		return _ret;
	}
}

enum VoiceGender
{
	Male = 0,
	Female = 1
}