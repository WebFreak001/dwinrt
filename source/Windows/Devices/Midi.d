module Windows.Devices.Midi;

import dwinrt;

@uuid("be1fa860-62b4-4d52-a37e-92e54d35b909")
@WinrtFactory("Windows.Devices.Midi.MidiChannelPressureMessage")
interface IMidiChannelPressureMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Channel(BYTE* return_value);
	HRESULT get_Pressure(BYTE* return_value);
}

@uuid("6218ed2f-2284-412a-94cf-10fb04842c6c")
@WinrtFactory("Windows.Devices.Midi.MidiChannelPressureMessage")
interface IMidiChannelPressureMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiChannelPressureMessage(BYTE channel, BYTE pressure, Windows.Devices.Midi.MidiChannelPressureMessage* return_value);
}

@uuid("b7e15f83-780d-405f-b781-3e1598c97f40")
@WinrtFactory("Windows.Devices.Midi.MidiControlChangeMessage")
interface IMidiControlChangeMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Channel(BYTE* return_value);
	HRESULT get_Controller(BYTE* return_value);
	HRESULT get_ControlValue(BYTE* return_value);
}

@uuid("2ab14321-956c-46ad-9752-f87f55052fe3")
@WinrtFactory("Windows.Devices.Midi.MidiControlChangeMessage")
interface IMidiControlChangeMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiControlChangeMessage(BYTE channel, BYTE controller, BYTE controlValue, Windows.Devices.Midi.MidiControlChangeMessage* return_value);
}

@uuid("d5c1d9db-971a-4eaf-a23d-ea19fe607ff9")
@WinrtFactory("Windows.Devices.Midi.MidiInPort")
interface IMidiInPort : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_MessageReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.Midi.MidiInPort*,Windows.Devices.Midi.MidiMessageReceivedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_MessageReceived(EventRegistrationToken token);
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("44c439dc-67ff-4a6e-8bac-fdb6610cf296")
@WinrtFactory("Windows.Devices.Midi.MidiInPort")
interface IMidiInPortStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiInPort)* return_value);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("79767945-1094-4283-9be0-289fc0ee8334")
interface IMidiMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Timestamp(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_RawData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Type(Windows.Devices.Midi.MidiMessageType* return_value);
}

@uuid("76566e56-f328-4b51-907d-b3a8ce96bf80")
@WinrtFactory("Windows.Devices.Midi.MidiMessageReceivedEventArgs")
interface IMidiMessageReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Message(Windows.Devices.Midi.IMidiMessage* return_value);
}

@uuid("16fd8af4-198e-4d8f-a654-d305a293548f")
@WinrtFactory("Windows.Devices.Midi.MidiNoteOffMessage")
interface IMidiNoteOffMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Channel(BYTE* return_value);
	HRESULT get_Note(BYTE* return_value);
	HRESULT get_Velocity(BYTE* return_value);
}

@uuid("a6b240e0-a749-425f-8af4-a4d979cc15b5")
@WinrtFactory("Windows.Devices.Midi.MidiNoteOffMessage")
interface IMidiNoteOffMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiNoteOffMessage(BYTE channel, BYTE note, BYTE velocity, Windows.Devices.Midi.MidiNoteOffMessage* return_value);
}

@uuid("e0224af5-6181-46dd-afa2-410004c057aa")
@WinrtFactory("Windows.Devices.Midi.MidiNoteOnMessage")
interface IMidiNoteOnMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Channel(BYTE* return_value);
	HRESULT get_Note(BYTE* return_value);
	HRESULT get_Velocity(BYTE* return_value);
}

@uuid("9b4280a0-59c1-420e-b517-15a10aa9606b")
@WinrtFactory("Windows.Devices.Midi.MidiNoteOnMessage")
interface IMidiNoteOnMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiNoteOnMessage(BYTE channel, BYTE note, BYTE velocity, Windows.Devices.Midi.MidiNoteOnMessage* return_value);
}

@uuid("931d6d9f-57a2-4a3a-adb8-4640886f6693")
interface IMidiOutPort : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SendMessage(Windows.Devices.Midi.IMidiMessage midiMessage);
	HRESULT abi_SendBuffer(Windows.Storage.Streams.IBuffer midiData);
	HRESULT get_DeviceId(HSTRING* return_value);
}

@uuid("065cc3e9-0f88-448b-9b64-a95826c65b8f")
@WinrtFactory("Windows.Devices.Midi.MidiOutPort")
interface IMidiOutPortStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.IMidiOutPort)* return_value);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("29df4cb1-2e9f-4faf-8c2b-9cb82a9079ca")
@WinrtFactory("Windows.Devices.Midi.MidiPitchBendChangeMessage")
interface IMidiPitchBendChangeMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Channel(BYTE* return_value);
	HRESULT get_Bend(UINT16* return_value);
}

@uuid("f5eedf55-cfc8-4926-b30e-a3622393306c")
@WinrtFactory("Windows.Devices.Midi.MidiPitchBendChangeMessage")
interface IMidiPitchBendChangeMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiPitchBendChangeMessage(BYTE channel, UINT16 bend, Windows.Devices.Midi.MidiPitchBendChangeMessage* return_value);
}

@uuid("1f7337fe-ace8-48a0-868e-7cdbf20f04d6")
@WinrtFactory("Windows.Devices.Midi.MidiPolyphonicKeyPressureMessage")
interface IMidiPolyphonicKeyPressureMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Channel(BYTE* return_value);
	HRESULT get_Note(BYTE* return_value);
	HRESULT get_Pressure(BYTE* return_value);
}

@uuid("e98f483e-c4b3-4dd2-917c-e349815a1b3b")
@WinrtFactory("Windows.Devices.Midi.MidiPolyphonicKeyPressureMessage")
interface IMidiPolyphonicKeyPressureMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiPolyphonicKeyPressureMessage(BYTE channel, BYTE note, BYTE pressure, Windows.Devices.Midi.MidiPolyphonicKeyPressureMessage* return_value);
}

@uuid("9cbb3c78-7a3e-4327-aa98-20b8e4485af8")
@WinrtFactory("Windows.Devices.Midi.MidiProgramChangeMessage")
interface IMidiProgramChangeMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Channel(BYTE* return_value);
	HRESULT get_Program(BYTE* return_value);
}

@uuid("d6b04387-524b-4104-9c99-6572bfd2e261")
@WinrtFactory("Windows.Devices.Midi.MidiProgramChangeMessage")
interface IMidiProgramChangeMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiProgramChangeMessage(BYTE channel, BYTE program, Windows.Devices.Midi.MidiProgramChangeMessage* return_value);
}

@uuid("4ca50c56-ec5e-4ae4-a115-88dc57cc2b79")
@WinrtFactory("Windows.Devices.Midi.MidiSongPositionPointerMessage")
interface IMidiSongPositionPointerMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Beats(UINT16* return_value);
}

@uuid("9c00e996-f10b-4fea-b395-f5d6cf80f64e")
@WinrtFactory("Windows.Devices.Midi.MidiSongPositionPointerMessage")
interface IMidiSongPositionPointerMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiSongPositionPointerMessage(UINT16 beats, Windows.Devices.Midi.MidiSongPositionPointerMessage* return_value);
}

@uuid("49f0f27f-6d83-4741-a5bf-4629f6be974f")
@WinrtFactory("Windows.Devices.Midi.MidiSongSelectMessage")
interface IMidiSongSelectMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Song(BYTE* return_value);
}

@uuid("848878e4-8748-4129-a66c-a05493f75daa")
@WinrtFactory("Windows.Devices.Midi.MidiSongSelectMessage")
interface IMidiSongSelectMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiSongSelectMessage(BYTE song, Windows.Devices.Midi.MidiSongSelectMessage* return_value);
}

@uuid("f0da155e-db90-405f-b8ae-21d2e17f2e45")
@WinrtFactory("Windows.Devices.Midi.MidiSynthesizer")
interface IMidiSynthesizer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AudioDevice(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT get_Volume(double* return_value);
	HRESULT set_Volume(double value);
}

@uuid("4224eaa8-6629-4d6b-aa8f-d4521a5a31ce")
@WinrtFactory("Windows.Devices.Midi.MidiSynthesizer")
interface IMidiSynthesizerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiSynthesizer)* return_value);
	HRESULT abi_CreateFromAudioDeviceAsync(Windows.Devices.Enumeration.DeviceInformation audioDevice, Windows.Foundation.IAsyncOperation!(Windows.Devices.Midi.MidiSynthesizer)* return_value);
	HRESULT abi_IsSynthesizer(Windows.Devices.Enumeration.DeviceInformation midiDevice, bool* return_value);
}

@uuid("083de222-3b74-4320-9b42-0ca8545f8a24")
@WinrtFactory("Windows.Devices.Midi.MidiSystemExclusiveMessage")
interface IMidiSystemExclusiveMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiSystemExclusiveMessage(Windows.Storage.Streams.IBuffer rawData, Windows.Devices.Midi.MidiSystemExclusiveMessage* return_value);
}

@uuid("0bf7087d-fa63-4a1c-8deb-c0e87796a6d7")
@WinrtFactory("Windows.Devices.Midi.MidiTimeCodeMessage")
interface IMidiTimeCodeMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FrameType(BYTE* return_value);
	HRESULT get_Values(BYTE* return_value);
}

@uuid("eb3099c5-771c-40de-b961-175a7489a85e")
@WinrtFactory("Windows.Devices.Midi.MidiTimeCodeMessage")
interface IMidiTimeCodeMessageFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateMidiTimeCodeMessage(BYTE frameType, BYTE values, Windows.Devices.Midi.MidiTimeCodeMessage* return_value);
}

interface MidiActiveSensingMessage
{
}

interface MidiChannelPressureMessage
{
}

interface MidiContinueMessage
{
}

interface MidiControlChangeMessage
{
}

interface MidiInPort
{
}

interface MidiMessageReceivedEventArgs
{
}

interface MidiNoteOffMessage
{
}

interface MidiNoteOnMessage
{
}

interface MidiOutPort
{
}

interface MidiPitchBendChangeMessage
{
}

interface MidiPolyphonicKeyPressureMessage
{
}

interface MidiProgramChangeMessage
{
}

interface MidiSongPositionPointerMessage
{
}

interface MidiSongSelectMessage
{
}

interface MidiStartMessage
{
}

interface MidiStopMessage
{
}

interface MidiSynthesizer
{
}

interface MidiSystemExclusiveMessage
{
}

interface MidiSystemResetMessage
{
}

interface MidiTimeCodeMessage
{
}

interface MidiTimingClockMessage
{
}

interface MidiTuneRequestMessage
{
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