module Windows.Devices.Midi;

import dwinrt;

@uuid("be1fa860-62b4-4d52-a37e-92e54d35b909")
@WinrtFactory("Windows.Devices.Midi.MidiChannelPressureMessage")
interface IMidiChannelPressureMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Channel(ubyte* return_value);
	HRESULT get_Pressure(ubyte* return_value);
}
@uuid("be1fa860-62b4-4d52-a37e-92e54d35b909")
@WinrtFactory("Windows.Devices.Midi.MidiChannelPressureMessage")
interface IMidiChannelPressureMessage : IMidiChannelPressureMessage_Base, Windows.Devices.Midi.IMidiMessage {}

@uuid("6218ed2f-2284-412a-94cf-10fb04842c6c")
@WinrtFactory("Windows.Devices.Midi.MidiChannelPressureMessage")
interface IMidiChannelPressureMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiChannelPressureMessage(ubyte channel, ubyte pressure, Windows.Devices.Midi.MidiChannelPressureMessage* return_value);
}

@uuid("b7e15f83-780d-405f-b781-3e1598c97f40")
@WinrtFactory("Windows.Devices.Midi.MidiControlChangeMessage")
interface IMidiControlChangeMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Channel(ubyte* return_value);
	HRESULT get_Controller(ubyte* return_value);
	HRESULT get_ControlValue(ubyte* return_value);
}
@uuid("b7e15f83-780d-405f-b781-3e1598c97f40")
@WinrtFactory("Windows.Devices.Midi.MidiControlChangeMessage")
interface IMidiControlChangeMessage : IMidiControlChangeMessage_Base, Windows.Devices.Midi.IMidiMessage {}

@uuid("2ab14321-956c-46ad-9752-f87f55052fe3")
@WinrtFactory("Windows.Devices.Midi.MidiControlChangeMessage")
interface IMidiControlChangeMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiControlChangeMessage(ubyte channel, ubyte controller, ubyte controlValue, Windows.Devices.Midi.MidiControlChangeMessage* return_value);
}

@uuid("d5c1d9db-971a-4eaf-a23d-ea19fe607ff9")
@WinrtFactory("Windows.Devices.Midi.MidiInPort")
interface IMidiInPort_Base : IInspectable
{
extern(Windows):
	HRESULT add_MessageReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.Midi.MidiInPort, Windows.Devices.Midi.MidiMessageReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_MessageReceived(EventRegistrationToken token);
	HRESULT get_DeviceId(HSTRING* return_value);
}
@uuid("d5c1d9db-971a-4eaf-a23d-ea19fe607ff9")
@WinrtFactory("Windows.Devices.Midi.MidiInPort")
interface IMidiInPort : IMidiInPort_Base, Windows.Foundation.IClosable {}

@uuid("44c439dc-67ff-4a6e-8bac-fdb6610cf296")
@WinrtFactory("Windows.Devices.Midi.MidiInPort")
interface IMidiInPortStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiInPort)* return_value);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("79767945-1094-4283-9be0-289fc0ee8334")
interface IMidiMessage : IInspectable
{
extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_RawData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Type(Windows.Devices.Midi.MidiMessageType* return_value);
}

@uuid("76566e56-f328-4b51-907d-b3a8ce96bf80")
@WinrtFactory("Windows.Devices.Midi.MidiMessageReceivedEventArgs")
interface IMidiMessageReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Message(Windows.Devices.Midi.IMidiMessage* return_value);
}

@uuid("16fd8af4-198e-4d8f-a654-d305a293548f")
@WinrtFactory("Windows.Devices.Midi.MidiNoteOffMessage")
interface IMidiNoteOffMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Channel(ubyte* return_value);
	HRESULT get_Note(ubyte* return_value);
	HRESULT get_Velocity(ubyte* return_value);
}
@uuid("16fd8af4-198e-4d8f-a654-d305a293548f")
@WinrtFactory("Windows.Devices.Midi.MidiNoteOffMessage")
interface IMidiNoteOffMessage : IMidiNoteOffMessage_Base, Windows.Devices.Midi.IMidiMessage {}

@uuid("a6b240e0-a749-425f-8af4-a4d979cc15b5")
@WinrtFactory("Windows.Devices.Midi.MidiNoteOffMessage")
interface IMidiNoteOffMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiNoteOffMessage(ubyte channel, ubyte note, ubyte velocity, Windows.Devices.Midi.MidiNoteOffMessage* return_value);
}

@uuid("e0224af5-6181-46dd-afa2-410004c057aa")
@WinrtFactory("Windows.Devices.Midi.MidiNoteOnMessage")
interface IMidiNoteOnMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Channel(ubyte* return_value);
	HRESULT get_Note(ubyte* return_value);
	HRESULT get_Velocity(ubyte* return_value);
}
@uuid("e0224af5-6181-46dd-afa2-410004c057aa")
@WinrtFactory("Windows.Devices.Midi.MidiNoteOnMessage")
interface IMidiNoteOnMessage : IMidiNoteOnMessage_Base, Windows.Devices.Midi.IMidiMessage {}

@uuid("9b4280a0-59c1-420e-b517-15a10aa9606b")
@WinrtFactory("Windows.Devices.Midi.MidiNoteOnMessage")
interface IMidiNoteOnMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiNoteOnMessage(ubyte channel, ubyte note, ubyte velocity, Windows.Devices.Midi.MidiNoteOnMessage* return_value);
}

@uuid("931d6d9f-57a2-4a3a-adb8-4640886f6693")
interface IMidiOutPort_Base : IInspectable
{
extern(Windows):
	HRESULT abi_SendMessage(Windows.Devices.Midi.IMidiMessage midiMessage);
	HRESULT abi_SendBuffer(Windows.Storage.Streams.IBuffer midiData);
	HRESULT get_DeviceId(HSTRING* return_value);
}
@uuid("931d6d9f-57a2-4a3a-adb8-4640886f6693")
interface IMidiOutPort : IMidiOutPort_Base, Windows.Foundation.IClosable {}

@uuid("065cc3e9-0f88-448b-9b64-a95826c65b8f")
@WinrtFactory("Windows.Devices.Midi.MidiOutPort")
interface IMidiOutPortStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.IMidiOutPort)* return_value);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("29df4cb1-2e9f-4faf-8c2b-9cb82a9079ca")
@WinrtFactory("Windows.Devices.Midi.MidiPitchBendChangeMessage")
interface IMidiPitchBendChangeMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Channel(ubyte* return_value);
	HRESULT get_Bend(UINT16* return_value);
}
@uuid("29df4cb1-2e9f-4faf-8c2b-9cb82a9079ca")
@WinrtFactory("Windows.Devices.Midi.MidiPitchBendChangeMessage")
interface IMidiPitchBendChangeMessage : IMidiPitchBendChangeMessage_Base, Windows.Devices.Midi.IMidiMessage {}

@uuid("f5eedf55-cfc8-4926-b30e-a3622393306c")
@WinrtFactory("Windows.Devices.Midi.MidiPitchBendChangeMessage")
interface IMidiPitchBendChangeMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiPitchBendChangeMessage(ubyte channel, UINT16 bend, Windows.Devices.Midi.MidiPitchBendChangeMessage* return_value);
}

@uuid("1f7337fe-ace8-48a0-868e-7cdbf20f04d6")
@WinrtFactory("Windows.Devices.Midi.MidiPolyphonicKeyPressureMessage")
interface IMidiPolyphonicKeyPressureMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Channel(ubyte* return_value);
	HRESULT get_Note(ubyte* return_value);
	HRESULT get_Pressure(ubyte* return_value);
}
@uuid("1f7337fe-ace8-48a0-868e-7cdbf20f04d6")
@WinrtFactory("Windows.Devices.Midi.MidiPolyphonicKeyPressureMessage")
interface IMidiPolyphonicKeyPressureMessage : IMidiPolyphonicKeyPressureMessage_Base, Windows.Devices.Midi.IMidiMessage {}

@uuid("e98f483e-c4b3-4dd2-917c-e349815a1b3b")
@WinrtFactory("Windows.Devices.Midi.MidiPolyphonicKeyPressureMessage")
interface IMidiPolyphonicKeyPressureMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiPolyphonicKeyPressureMessage(ubyte channel, ubyte note, ubyte pressure, Windows.Devices.Midi.MidiPolyphonicKeyPressureMessage* return_value);
}

@uuid("9cbb3c78-7a3e-4327-aa98-20b8e4485af8")
@WinrtFactory("Windows.Devices.Midi.MidiProgramChangeMessage")
interface IMidiProgramChangeMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Channel(ubyte* return_value);
	HRESULT get_Program(ubyte* return_value);
}
@uuid("9cbb3c78-7a3e-4327-aa98-20b8e4485af8")
@WinrtFactory("Windows.Devices.Midi.MidiProgramChangeMessage")
interface IMidiProgramChangeMessage : IMidiProgramChangeMessage_Base, Windows.Devices.Midi.IMidiMessage {}

@uuid("d6b04387-524b-4104-9c99-6572bfd2e261")
@WinrtFactory("Windows.Devices.Midi.MidiProgramChangeMessage")
interface IMidiProgramChangeMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiProgramChangeMessage(ubyte channel, ubyte program, Windows.Devices.Midi.MidiProgramChangeMessage* return_value);
}

@uuid("4ca50c56-ec5e-4ae4-a115-88dc57cc2b79")
@WinrtFactory("Windows.Devices.Midi.MidiSongPositionPointerMessage")
interface IMidiSongPositionPointerMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Beats(UINT16* return_value);
}
@uuid("4ca50c56-ec5e-4ae4-a115-88dc57cc2b79")
@WinrtFactory("Windows.Devices.Midi.MidiSongPositionPointerMessage")
interface IMidiSongPositionPointerMessage : IMidiSongPositionPointerMessage_Base, Windows.Devices.Midi.IMidiMessage {}

@uuid("9c00e996-f10b-4fea-b395-f5d6cf80f64e")
@WinrtFactory("Windows.Devices.Midi.MidiSongPositionPointerMessage")
interface IMidiSongPositionPointerMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiSongPositionPointerMessage(UINT16 beats, Windows.Devices.Midi.MidiSongPositionPointerMessage* return_value);
}

@uuid("49f0f27f-6d83-4741-a5bf-4629f6be974f")
@WinrtFactory("Windows.Devices.Midi.MidiSongSelectMessage")
interface IMidiSongSelectMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Song(ubyte* return_value);
}
@uuid("49f0f27f-6d83-4741-a5bf-4629f6be974f")
@WinrtFactory("Windows.Devices.Midi.MidiSongSelectMessage")
interface IMidiSongSelectMessage : IMidiSongSelectMessage_Base, Windows.Devices.Midi.IMidiMessage {}

@uuid("848878e4-8748-4129-a66c-a05493f75daa")
@WinrtFactory("Windows.Devices.Midi.MidiSongSelectMessage")
interface IMidiSongSelectMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiSongSelectMessage(ubyte song, Windows.Devices.Midi.MidiSongSelectMessage* return_value);
}

@uuid("f0da155e-db90-405f-b8ae-21d2e17f2e45")
@WinrtFactory("Windows.Devices.Midi.MidiSynthesizer")
interface IMidiSynthesizer_Base : IInspectable
{
extern(Windows):
	HRESULT get_AudioDevice(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT get_Volume(double* return_value);
	HRESULT set_Volume(double value);
}
@uuid("f0da155e-db90-405f-b8ae-21d2e17f2e45")
@WinrtFactory("Windows.Devices.Midi.MidiSynthesizer")
interface IMidiSynthesizer : IMidiSynthesizer_Base, Windows.Devices.Midi.IMidiOutPort, Windows.Foundation.IClosable {}

@uuid("4224eaa8-6629-4d6b-aa8f-d4521a5a31ce")
@WinrtFactory("Windows.Devices.Midi.MidiSynthesizer")
interface IMidiSynthesizerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiSynthesizer)* return_value);
	HRESULT abi_CreateFromAudioDeviceAsync(Windows.Devices.Enumeration.DeviceInformation audioDevice, Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiSynthesizer)* return_value);
	HRESULT abi_IsSynthesizer(Windows.Devices.Enumeration.DeviceInformation midiDevice, bool* return_value);
}

@uuid("083de222-3b74-4320-9b42-0ca8545f8a24")
@WinrtFactory("Windows.Devices.Midi.MidiSystemExclusiveMessage")
interface IMidiSystemExclusiveMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiSystemExclusiveMessage(Windows.Storage.Streams.IBuffer rawData, Windows.Devices.Midi.MidiSystemExclusiveMessage* return_value);
}

@uuid("0bf7087d-fa63-4a1c-8deb-c0e87796a6d7")
@WinrtFactory("Windows.Devices.Midi.MidiTimeCodeMessage")
interface IMidiTimeCodeMessage_Base : IInspectable
{
extern(Windows):
	HRESULT get_FrameType(ubyte* return_value);
	HRESULT get_Values(ubyte* return_value);
}
@uuid("0bf7087d-fa63-4a1c-8deb-c0e87796a6d7")
@WinrtFactory("Windows.Devices.Midi.MidiTimeCodeMessage")
interface IMidiTimeCodeMessage : IMidiTimeCodeMessage_Base, Windows.Devices.Midi.IMidiMessage {}

@uuid("eb3099c5-771c-40de-b961-175a7489a85e")
@WinrtFactory("Windows.Devices.Midi.MidiTimeCodeMessage")
interface IMidiTimeCodeMessageFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateMidiTimeCodeMessage(ubyte frameType, ubyte values, Windows.Devices.Midi.MidiTimeCodeMessage* return_value);
}

interface MidiActiveSensingMessage : Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static MidiActiveSensingMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MidiActiveSensingMessage).abi_ActivateInstance(&ret));
		return cast(MidiActiveSensingMessage) ret;
	}
}

interface MidiChannelPressureMessage : Windows.Devices.Midi.IMidiChannelPressureMessage, Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final ubyte Channel()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiChannelPressureMessage)this.asInterface(uuid("be1fa860-62b4-4d52-a37e-92e54d35b909"))).get_Channel(&_ret));
		return _ret;
	}
	final ubyte Pressure()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiChannelPressureMessage)this.asInterface(uuid("be1fa860-62b4-4d52-a37e-92e54d35b909"))).get_Pressure(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiChannelPressureMessage New(ubyte channel, ubyte pressure)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiChannelPressureMessageFactory);
		Windows.Devices.Midi.MidiChannelPressureMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiChannelPressureMessageFactory)factory.asInterface(uuid("6218ed2f-2284-412a-94cf-10fb04842c6c"))).abi_CreateMidiChannelPressureMessage(channel, pressure, &_ret));
		return _ret;
	}
}

interface MidiContinueMessage : Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static MidiContinueMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MidiContinueMessage).abi_ActivateInstance(&ret));
		return cast(MidiContinueMessage) ret;
	}
}

interface MidiControlChangeMessage : Windows.Devices.Midi.IMidiControlChangeMessage, Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final ubyte Channel()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiControlChangeMessage)this.asInterface(uuid("b7e15f83-780d-405f-b781-3e1598c97f40"))).get_Channel(&_ret));
		return _ret;
	}
	final ubyte Controller()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiControlChangeMessage)this.asInterface(uuid("b7e15f83-780d-405f-b781-3e1598c97f40"))).get_Controller(&_ret));
		return _ret;
	}
	final ubyte ControlValue()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiControlChangeMessage)this.asInterface(uuid("b7e15f83-780d-405f-b781-3e1598c97f40"))).get_ControlValue(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiControlChangeMessage New(ubyte channel, ubyte controller, ubyte controlValue)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiControlChangeMessageFactory);
		Windows.Devices.Midi.MidiControlChangeMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiControlChangeMessageFactory)factory.asInterface(uuid("2ab14321-956c-46ad-9752-f87f55052fe3"))).abi_CreateMidiControlChangeMessage(channel, controller, controlValue, &_ret));
		return _ret;
	}
}

interface MidiInPort : Windows.Devices.Midi.IMidiInPort, Windows.Foundation.IClosable
{
extern(Windows):
	final EventRegistrationToken OnMessageReceived(void delegate(Windows.Devices.Midi.MidiInPort, Windows.Devices.Midi.MidiMessageReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.Midi.IMidiInPort)this.asInterface(uuid("d5c1d9db-971a-4eaf-a23d-ea19fe607ff9"))).add_MessageReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.Midi.MidiInPort, Windows.Devices.Midi.MidiMessageReceivedEventArgs), Windows.Devices.Midi.MidiInPort, Windows.Devices.Midi.MidiMessageReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMessageReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.Midi.IMidiInPort)this.asInterface(uuid("d5c1d9db-971a-4eaf-a23d-ea19fe607ff9"))).remove_MessageReceived(token));
	}
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiInPort)this.asInterface(uuid("d5c1d9db-971a-4eaf-a23d-ea19fe607ff9"))).get_DeviceId(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.Midi.IMidiInPortStatics _staticInstance;
	public static Windows.Devices.Midi.IMidiInPortStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Midi.IMidiInPortStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiInPort) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiInPort) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
}

interface MidiMessageReceivedEventArgs : Windows.Devices.Midi.IMidiMessageReceivedEventArgs
{
extern(Windows):
	final Windows.Devices.Midi.IMidiMessage Message()
	{
		Windows.Devices.Midi.IMidiMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessageReceivedEventArgs)this.asInterface(uuid("76566e56-f328-4b51-907d-b3a8ce96bf80"))).get_Message(&_ret));
		return _ret;
	}
}

interface MidiNoteOffMessage : Windows.Devices.Midi.IMidiNoteOffMessage, Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final ubyte Channel()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiNoteOffMessage)this.asInterface(uuid("16fd8af4-198e-4d8f-a654-d305a293548f"))).get_Channel(&_ret));
		return _ret;
	}
	final ubyte Note()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiNoteOffMessage)this.asInterface(uuid("16fd8af4-198e-4d8f-a654-d305a293548f"))).get_Note(&_ret));
		return _ret;
	}
	final ubyte Velocity()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiNoteOffMessage)this.asInterface(uuid("16fd8af4-198e-4d8f-a654-d305a293548f"))).get_Velocity(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiNoteOffMessage New(ubyte channel, ubyte note, ubyte velocity)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiNoteOffMessageFactory);
		Windows.Devices.Midi.MidiNoteOffMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiNoteOffMessageFactory)factory.asInterface(uuid("a6b240e0-a749-425f-8af4-a4d979cc15b5"))).abi_CreateMidiNoteOffMessage(channel, note, velocity, &_ret));
		return _ret;
	}
}

interface MidiNoteOnMessage : Windows.Devices.Midi.IMidiNoteOnMessage, Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final ubyte Channel()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiNoteOnMessage)this.asInterface(uuid("e0224af5-6181-46dd-afa2-410004c057aa"))).get_Channel(&_ret));
		return _ret;
	}
	final ubyte Note()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiNoteOnMessage)this.asInterface(uuid("e0224af5-6181-46dd-afa2-410004c057aa"))).get_Note(&_ret));
		return _ret;
	}
	final ubyte Velocity()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiNoteOnMessage)this.asInterface(uuid("e0224af5-6181-46dd-afa2-410004c057aa"))).get_Velocity(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiNoteOnMessage New(ubyte channel, ubyte note, ubyte velocity)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiNoteOnMessageFactory);
		Windows.Devices.Midi.MidiNoteOnMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiNoteOnMessageFactory)factory.asInterface(uuid("9b4280a0-59c1-420e-b517-15a10aa9606b"))).abi_CreateMidiNoteOnMessage(channel, note, velocity, &_ret));
		return _ret;
	}
}

interface MidiOutPort : Windows.Devices.Midi.IMidiOutPort, Windows.Foundation.IClosable
{
extern(Windows):
	final void SendMessage(Windows.Devices.Midi.IMidiMessage midiMessage)
	{
		Debug.OK((cast(Windows.Devices.Midi.IMidiOutPort)this.asInterface(uuid("931d6d9f-57a2-4a3a-adb8-4640886f6693"))).abi_SendMessage(midiMessage));
	}
	final void SendBuffer(Windows.Storage.Streams.IBuffer midiData)
	{
		Debug.OK((cast(Windows.Devices.Midi.IMidiOutPort)this.asInterface(uuid("931d6d9f-57a2-4a3a-adb8-4640886f6693"))).abi_SendBuffer(midiData));
	}
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiOutPort)this.asInterface(uuid("931d6d9f-57a2-4a3a-adb8-4640886f6693"))).get_DeviceId(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.Midi.IMidiOutPortStatics _staticInstance;
	public static Windows.Devices.Midi.IMidiOutPortStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Midi.IMidiOutPortStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.IMidiOutPort) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.IMidiOutPort) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
}

interface MidiPitchBendChangeMessage : Windows.Devices.Midi.IMidiPitchBendChangeMessage, Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final ubyte Channel()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiPitchBendChangeMessage)this.asInterface(uuid("29df4cb1-2e9f-4faf-8c2b-9cb82a9079ca"))).get_Channel(&_ret));
		return _ret;
	}
	final UINT16 Bend()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiPitchBendChangeMessage)this.asInterface(uuid("29df4cb1-2e9f-4faf-8c2b-9cb82a9079ca"))).get_Bend(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiPitchBendChangeMessage New(ubyte channel, UINT16 bend)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiPitchBendChangeMessageFactory);
		Windows.Devices.Midi.MidiPitchBendChangeMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiPitchBendChangeMessageFactory)factory.asInterface(uuid("f5eedf55-cfc8-4926-b30e-a3622393306c"))).abi_CreateMidiPitchBendChangeMessage(channel, bend, &_ret));
		return _ret;
	}
}

interface MidiPolyphonicKeyPressureMessage : Windows.Devices.Midi.IMidiPolyphonicKeyPressureMessage, Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final ubyte Channel()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiPolyphonicKeyPressureMessage)this.asInterface(uuid("1f7337fe-ace8-48a0-868e-7cdbf20f04d6"))).get_Channel(&_ret));
		return _ret;
	}
	final ubyte Note()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiPolyphonicKeyPressureMessage)this.asInterface(uuid("1f7337fe-ace8-48a0-868e-7cdbf20f04d6"))).get_Note(&_ret));
		return _ret;
	}
	final ubyte Pressure()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiPolyphonicKeyPressureMessage)this.asInterface(uuid("1f7337fe-ace8-48a0-868e-7cdbf20f04d6"))).get_Pressure(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiPolyphonicKeyPressureMessage New(ubyte channel, ubyte note, ubyte pressure)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiPolyphonicKeyPressureMessageFactory);
		Windows.Devices.Midi.MidiPolyphonicKeyPressureMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiPolyphonicKeyPressureMessageFactory)factory.asInterface(uuid("e98f483e-c4b3-4dd2-917c-e349815a1b3b"))).abi_CreateMidiPolyphonicKeyPressureMessage(channel, note, pressure, &_ret));
		return _ret;
	}
}

interface MidiProgramChangeMessage : Windows.Devices.Midi.IMidiProgramChangeMessage, Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final ubyte Channel()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiProgramChangeMessage)this.asInterface(uuid("9cbb3c78-7a3e-4327-aa98-20b8e4485af8"))).get_Channel(&_ret));
		return _ret;
	}
	final ubyte Program()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiProgramChangeMessage)this.asInterface(uuid("9cbb3c78-7a3e-4327-aa98-20b8e4485af8"))).get_Program(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiProgramChangeMessage New(ubyte channel, ubyte program)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiProgramChangeMessageFactory);
		Windows.Devices.Midi.MidiProgramChangeMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiProgramChangeMessageFactory)factory.asInterface(uuid("d6b04387-524b-4104-9c99-6572bfd2e261"))).abi_CreateMidiProgramChangeMessage(channel, program, &_ret));
		return _ret;
	}
}

interface MidiSongPositionPointerMessage : Windows.Devices.Midi.IMidiSongPositionPointerMessage, Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final UINT16 Beats()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiSongPositionPointerMessage)this.asInterface(uuid("4ca50c56-ec5e-4ae4-a115-88dc57cc2b79"))).get_Beats(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiSongPositionPointerMessage New(UINT16 beats)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiSongPositionPointerMessageFactory);
		Windows.Devices.Midi.MidiSongPositionPointerMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiSongPositionPointerMessageFactory)factory.asInterface(uuid("9c00e996-f10b-4fea-b395-f5d6cf80f64e"))).abi_CreateMidiSongPositionPointerMessage(beats, &_ret));
		return _ret;
	}
}

interface MidiSongSelectMessage : Windows.Devices.Midi.IMidiSongSelectMessage, Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final ubyte Song()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiSongSelectMessage)this.asInterface(uuid("49f0f27f-6d83-4741-a5bf-4629f6be974f"))).get_Song(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiSongSelectMessage New(ubyte song)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiSongSelectMessageFactory);
		Windows.Devices.Midi.MidiSongSelectMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiSongSelectMessageFactory)factory.asInterface(uuid("848878e4-8748-4129-a66c-a05493f75daa"))).abi_CreateMidiSongSelectMessage(song, &_ret));
		return _ret;
	}
}

interface MidiStartMessage : Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static MidiStartMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MidiStartMessage).abi_ActivateInstance(&ret));
		return cast(MidiStartMessage) ret;
	}
}

interface MidiStopMessage : Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static MidiStopMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MidiStopMessage).abi_ActivateInstance(&ret));
		return cast(MidiStopMessage) ret;
	}
}

interface MidiSynthesizer : Windows.Devices.Midi.IMidiSynthesizer, Windows.Devices.Midi.IMidiOutPort, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceInformation AudioDevice()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiSynthesizer)this.asInterface(uuid("f0da155e-db90-405f-b8ae-21d2e17f2e45"))).get_AudioDevice(&_ret));
		return _ret;
	}
	final double Volume()
	{
		double _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiSynthesizer)this.asInterface(uuid("f0da155e-db90-405f-b8ae-21d2e17f2e45"))).get_Volume(&_ret));
		return _ret;
	}
	final void Volume(double value)
	{
		Debug.OK((cast(Windows.Devices.Midi.IMidiSynthesizer)this.asInterface(uuid("f0da155e-db90-405f-b8ae-21d2e17f2e45"))).set_Volume(value));
	}
	final void SendMessage(Windows.Devices.Midi.IMidiMessage midiMessage)
	{
		Debug.OK((cast(Windows.Devices.Midi.IMidiOutPort)this.asInterface(uuid("931d6d9f-57a2-4a3a-adb8-4640886f6693"))).abi_SendMessage(midiMessage));
	}
	final void SendBuffer(Windows.Storage.Streams.IBuffer midiData)
	{
		Debug.OK((cast(Windows.Devices.Midi.IMidiOutPort)this.asInterface(uuid("931d6d9f-57a2-4a3a-adb8-4640886f6693"))).abi_SendBuffer(midiData));
	}
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiOutPort)this.asInterface(uuid("931d6d9f-57a2-4a3a-adb8-4640886f6693"))).get_DeviceId(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.Midi.IMidiSynthesizerStatics _staticInstance;
	public static Windows.Devices.Midi.IMidiSynthesizerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Midi.IMidiSynthesizerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiSynthesizer) CreateAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiSynthesizer) _ret;
		Debug.OK(staticInstance.abi_CreateAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiSynthesizer) CreateFromAudioDeviceAsync(Windows.Devices.Enumeration.DeviceInformation audioDevice)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiSynthesizer) _ret;
		Debug.OK(staticInstance.abi_CreateFromAudioDeviceAsync(audioDevice, &_ret));
		return _ret;
	}
	static bool IsSynthesizer(Windows.Devices.Enumeration.DeviceInformation midiDevice)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_IsSynthesizer(midiDevice, &_ret));
		return _ret;
	}
}

interface MidiSystemExclusiveMessage : Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiSystemExclusiveMessage New(Windows.Storage.Streams.IBuffer rawData)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiSystemExclusiveMessageFactory);
		Windows.Devices.Midi.MidiSystemExclusiveMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiSystemExclusiveMessageFactory)factory.asInterface(uuid("083de222-3b74-4320-9b42-0ca8545f8a24"))).abi_CreateMidiSystemExclusiveMessage(rawData, &_ret));
		return _ret;
	}
}

interface MidiSystemResetMessage : Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static MidiSystemResetMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MidiSystemResetMessage).abi_ActivateInstance(&ret));
		return cast(MidiSystemResetMessage) ret;
	}
}

interface MidiTimeCodeMessage : Windows.Devices.Midi.IMidiTimeCodeMessage, Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final ubyte FrameType()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiTimeCodeMessage)this.asInterface(uuid("0bf7087d-fa63-4a1c-8deb-c0e87796a6d7"))).get_FrameType(&_ret));
		return _ret;
	}
	final ubyte Values()
	{
		ubyte _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiTimeCodeMessage)this.asInterface(uuid("0bf7087d-fa63-4a1c-8deb-c0e87796a6d7"))).get_Values(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Devices.Midi.MidiTimeCodeMessage New(ubyte frameType, ubyte values)
	{
		auto factory = factory!(Windows.Devices.Midi.IMidiTimeCodeMessageFactory);
		Windows.Devices.Midi.MidiTimeCodeMessage _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiTimeCodeMessageFactory)factory.asInterface(uuid("eb3099c5-771c-40de-b961-175a7489a85e"))).abi_CreateMidiTimeCodeMessage(frameType, values, &_ret));
		return _ret;
	}
}

interface MidiTimingClockMessage : Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static MidiTimingClockMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MidiTimingClockMessage).abi_ActivateInstance(&ret));
		return cast(MidiTimingClockMessage) ret;
	}
}

interface MidiTuneRequestMessage : Windows.Devices.Midi.IMidiMessage
{
extern(Windows):
	final Windows.Foundation.TimeSpan Timestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RawData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_RawData(&_ret));
		return _ret;
	}
	final Windows.Devices.Midi.MidiMessageType Type()
	{
		Windows.Devices.Midi.MidiMessageType _ret;
		Debug.OK((cast(Windows.Devices.Midi.IMidiMessage)this.asInterface(uuid("79767945-1094-4283-9be0-289fc0ee8334"))).get_Type(&_ret));
		return _ret;
	}
	static MidiTuneRequestMessage New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MidiTuneRequestMessage).abi_ActivateInstance(&ret));
		return cast(MidiTuneRequestMessage) ret;
	}
}

enum MidiMessageType
{
	None = 0,
	NoteOff = 128,
	NoteOn = 144,
	PolyphonicKeyPressure = 160,
	ControlChange = 176,
	ProgramChange = 192,
	ChannelPressure = 208,
	PitchBendChange = 224,
	SystemExclusive = 240,
	MidiTimeCode = 241,
	SongPositionPointer = 242,
	SongSelect = 243,
	TuneRequest = 246,
	EndSystemExclusive = 247,
	TimingClock = 248,
	Start = 250,
	Continue = 251,
	Stop = 252,
	ActiveSensing = 254,
	SystemReset = 255
}