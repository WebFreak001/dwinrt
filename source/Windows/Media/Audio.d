module Windows.Media.Audio;

import dwinrt;

@uuid("b01b6be1-6f4e-49e2-ac01-559d62beb3a9")
@WinrtFactory("Windows.Media.Audio.AudioDeviceInputNode")
interface IAudioDeviceInputNode_Base : IInspectable
{
extern(Windows):
	HRESULT get_Device(Windows.Devices.Enumeration.DeviceInformation* return_value);
}
@uuid("b01b6be1-6f4e-49e2-ac01-559d62beb3a9")
@WinrtFactory("Windows.Media.Audio.AudioDeviceInputNode")
interface IAudioDeviceInputNode : IAudioDeviceInputNode_Base, Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable {}

@uuid("362edbff-ff1c-4434-9e0f-bd2ef522ac82")
@WinrtFactory("Windows.Media.Audio.AudioDeviceOutputNode")
interface IAudioDeviceOutputNode_Base : IInspectable
{
extern(Windows):
	HRESULT get_Device(Windows.Devices.Enumeration.DeviceInformation* return_value);
}
@uuid("362edbff-ff1c-4434-9e0f-bd2ef522ac82")
@WinrtFactory("Windows.Media.Audio.AudioDeviceOutputNode")
interface IAudioDeviceOutputNode : IAudioDeviceOutputNode_Base, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable {}

@uuid("905b67c8-6f65-4cd4-8890-4694843c276d")
@WinrtFactory("Windows.Media.Audio.AudioFileInputNode")
interface IAudioFileInputNode_Base : IInspectable
{
extern(Windows):
	HRESULT set_PlaybackSpeedFactor(double value);
	HRESULT get_PlaybackSpeedFactor(double* return_value);
	HRESULT get_Position(Windows.Foundation.TimeSpan* return_value);
	HRESULT abi_Seek(Windows.Foundation.TimeSpan position);
	HRESULT get_StartTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_StartTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_EndTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_EndTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
	HRESULT get_LoopCount(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT set_LoopCount(Windows.Foundation.IReference!(INT32) value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_SourceFile(Windows.Storage.StorageFile* return_value);
	HRESULT add_FileCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioFileInputNode, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_FileCompleted(EventRegistrationToken token);
}
@uuid("905b67c8-6f65-4cd4-8890-4694843c276d")
@WinrtFactory("Windows.Media.Audio.AudioFileInputNode")
interface IAudioFileInputNode : IAudioFileInputNode_Base, Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable {}

@uuid("50e01980-5166-4093-80f8-ada00089e9cf")
@WinrtFactory("Windows.Media.Audio.AudioFileOutputNode")
interface IAudioFileOutputNode_Base : IInspectable
{
extern(Windows):
	HRESULT get_File(Windows.Storage.IStorageFile* return_value);
	HRESULT get_FileEncodingProfile(Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_FinalizeAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.TranscodeFailureReason)* return_result);
}
@uuid("50e01980-5166-4093-80f8-ada00089e9cf")
@WinrtFactory("Windows.Media.Audio.AudioFileOutputNode")
interface IAudioFileOutputNode : IAudioFileOutputNode_Base, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable {}

@uuid("dc7c829e-0208-4504-a5a8-f0f268920a65")
@WinrtFactory("Windows.Media.Audio.AudioFrameCompletedEventArgs")
interface IAudioFrameCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Frame(Windows.Media.AudioFrame* return_value);
}

@uuid("01b266c7-fd96-4ff5-a3c5-d27a9bf44237")
@WinrtFactory("Windows.Media.Audio.AudioFrameInputNode")
interface IAudioFrameInputNode_Base : IInspectable
{
extern(Windows):
	HRESULT set_PlaybackSpeedFactor(double value);
	HRESULT get_PlaybackSpeedFactor(double* return_value);
	HRESULT abi_AddFrame(Windows.Media.AudioFrame frame);
	HRESULT abi_DiscardQueuedFrames();
	HRESULT get_QueuedSampleCount(ulong* return_value);
	HRESULT add_AudioFrameCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioFrameInputNode, Windows.Media.Audio.AudioFrameCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AudioFrameCompleted(EventRegistrationToken token);
	HRESULT add_QuantumStarted(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioFrameInputNode, Windows.Media.Audio.FrameInputNodeQuantumStartedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_QuantumStarted(EventRegistrationToken token);
}
@uuid("01b266c7-fd96-4ff5-a3c5-d27a9bf44237")
@WinrtFactory("Windows.Media.Audio.AudioFrameInputNode")
interface IAudioFrameInputNode : IAudioFrameInputNode_Base, Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable {}

@uuid("b847371b-3299-45f5-88b3-c9d12a3f1cc8")
@WinrtFactory("Windows.Media.Audio.AudioFrameOutputNode")
interface IAudioFrameOutputNode_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetFrame(Windows.Media.AudioFrame* return_audioFrame);
}
@uuid("b847371b-3299-45f5-88b3-c9d12a3f1cc8")
@WinrtFactory("Windows.Media.Audio.AudioFrameOutputNode")
interface IAudioFrameOutputNode : IAudioFrameOutputNode_Base, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable {}

@uuid("1ad46eed-e48c-4e14-9660-2c4f83e9cdd8")
@WinrtFactory("Windows.Media.Audio.AudioGraph")
interface IAudioGraph_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFrameInputNode(Windows.Media.Audio.AudioFrameInputNode* return_frameInputNode);
	HRESULT abi_CreateFrameInputNodeWithFormat(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Media.Audio.AudioFrameInputNode* return_frameInputNode);
	HRESULT abi_CreateDeviceInputNodeAsync(Windows.Media.Capture.MediaCategory category, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult)* return_result);
	HRESULT abi_CreateDeviceInputNodeWithFormatAsync(Windows.Media.Capture.MediaCategory category, Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult)* return_result);
	HRESULT abi_CreateDeviceInputNodeWithFormatOnDeviceAsync(Windows.Media.Capture.MediaCategory category, Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Devices.Enumeration.DeviceInformation device, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult)* return_result);
	HRESULT abi_CreateFrameOutputNode(Windows.Media.Audio.AudioFrameOutputNode* return_frameOutputNode);
	HRESULT abi_CreateFrameOutputNodeWithFormat(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Media.Audio.AudioFrameOutputNode* return_frameOutputNode);
	HRESULT abi_CreateDeviceOutputNodeAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceOutputNodeResult)* return_result);
	HRESULT abi_CreateFileInputNodeAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileInputNodeResult)* return_result);
	HRESULT abi_CreateFileOutputNodeAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileOutputNodeResult)* return_result);
	HRESULT abi_CreateFileOutputNodeWithFileProfileAsync(Windows.Storage.IStorageFile file, Windows.Media.MediaProperties.MediaEncodingProfile fileEncodingProfile, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileOutputNodeResult)* return_result);
	HRESULT abi_CreateSubmixNode(Windows.Media.Audio.AudioSubmixNode* return_submixNode);
	HRESULT abi_CreateSubmixNodeWithFormat(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Media.Audio.AudioSubmixNode* return_submixNode);
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT abi_ResetAllNodes();
	HRESULT add_QuantumStarted(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioGraph, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_QuantumStarted(EventRegistrationToken token);
	HRESULT add_QuantumProcessed(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioGraph, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_QuantumProcessed(EventRegistrationToken token);
	HRESULT add_UnrecoverableErrorOccurred(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioGraph, Windows.Media.Audio.AudioGraphUnrecoverableErrorOccurredEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_UnrecoverableErrorOccurred(EventRegistrationToken token);
	HRESULT get_CompletedQuantumCount(ulong* return_value);
	HRESULT get_EncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT get_LatencyInSamples(INT32* return_value);
	HRESULT get_PrimaryRenderDevice(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT get_RenderDeviceAudioProcessing(Windows.Media.AudioProcessing* return_value);
	HRESULT get_SamplesPerQuantum(INT32* return_value);
}
@uuid("1ad46eed-e48c-4e14-9660-2c4f83e9cdd8")
@WinrtFactory("Windows.Media.Audio.AudioGraph")
interface IAudioGraph : IAudioGraph_Base, Windows.Foundation.IClosable {}

@uuid("4e4c3bd5-4fc1-45f6-a947-3cd38f4fd839")
@WinrtFactory("Windows.Media.Audio.AudioGraph")
interface IAudioGraph2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFrameInputNodeWithFormatAndEmitter(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Media.Audio.AudioNodeEmitter emitter, Windows.Media.Audio.AudioFrameInputNode* return_frameInputNode);
	HRESULT abi_CreateDeviceInputNodeWithFormatAndEmitterOnDeviceAsync(Windows.Media.Capture.MediaCategory category, Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Devices.Enumeration.DeviceInformation device, Windows.Media.Audio.AudioNodeEmitter emitter, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult)* return_result);
	HRESULT abi_CreateFileInputNodeWithEmitterAsync(Windows.Storage.IStorageFile file, Windows.Media.Audio.AudioNodeEmitter emitter, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileInputNodeResult)* return_result);
	HRESULT abi_CreateSubmixNodeWithFormatAndEmitter(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Media.Audio.AudioNodeEmitter emitter, Windows.Media.Audio.AudioSubmixNode* return_submixNode);
	HRESULT abi_CreateBatchUpdater(Windows.Media.Audio.AudioGraphBatchUpdater* return_updater);
}
@uuid("4e4c3bd5-4fc1-45f6-a947-3cd38f4fd839")
@WinrtFactory("Windows.Media.Audio.AudioGraph")
interface IAudioGraph2 : IAudioGraph2_Base, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioGraph {}

@uuid("763070ed-d04e-4fac-b233-600b42edd469")
@WinrtFactory("Windows.Media.Audio.AudioGraphConnection")
interface IAudioGraphConnection : IInspectable
{
extern(Windows):
	HRESULT get_Destination(Windows.Media.Audio.IAudioNode* return_value);
	HRESULT set_Gain(double value);
	HRESULT get_Gain(double* return_value);
}

@uuid("1d59647f-e6fe-4628-84f8-9d8bdba25785")
@WinrtFactory("Windows.Media.Audio.AudioGraphSettings")
interface IAudioGraphSettings : IInspectable
{
extern(Windows):
	HRESULT get_EncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT set_EncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties value);
	HRESULT get_PrimaryRenderDevice(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT set_PrimaryRenderDevice(Windows.Devices.Enumeration.DeviceInformation value);
	HRESULT get_QuantumSizeSelectionMode(Windows.Media.Audio.QuantumSizeSelectionMode* return_value);
	HRESULT set_QuantumSizeSelectionMode(Windows.Media.Audio.QuantumSizeSelectionMode value);
	HRESULT get_DesiredSamplesPerQuantum(INT32* return_value);
	HRESULT set_DesiredSamplesPerQuantum(INT32 value);
	HRESULT get_AudioRenderCategory(Windows.Media.Render.AudioRenderCategory* return_value);
	HRESULT set_AudioRenderCategory(Windows.Media.Render.AudioRenderCategory value);
	HRESULT get_DesiredRenderDeviceAudioProcessing(Windows.Media.AudioProcessing* return_value);
	HRESULT set_DesiredRenderDeviceAudioProcessing(Windows.Media.AudioProcessing value);
}

@uuid("a5d91cc6-c2eb-4a61-a214-1d66d75f83da")
@WinrtFactory("Windows.Media.Audio.AudioGraphSettings")
interface IAudioGraphSettingsFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.Render.AudioRenderCategory audioRenderCategory, Windows.Media.Audio.AudioGraphSettings* return_value);
}

@uuid("76ec3132-e159-4ab7-a82a-17beb4b31e94")
@WinrtFactory("Windows.Media.Audio.AudioGraph")
interface IAudioGraphStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAsync(Windows.Media.Audio.AudioGraphSettings settings, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioGraphResult)* return_result);
}

@uuid("c3d9cbe0-3ff6-4fb3-b262-50d435c55423")
@WinrtFactory("Windows.Media.Audio.AudioGraphUnrecoverableErrorOccurredEventArgs")
interface IAudioGraphUnrecoverableErrorOccurredEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Error(Windows.Media.Audio.AudioGraphUnrecoverableError* return_value);
}

@uuid("d148005c-8428-4784-b7fd-a99d468c5d20")
interface IAudioInputNode_Base : IInspectable
{
extern(Windows):
	HRESULT get_OutgoingConnections(Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.AudioGraphConnection)* return_value);
	HRESULT abi_AddOutgoingConnection(Windows.Media.Audio.IAudioNode destination);
	HRESULT abi_AddOutgoingConnectionWithGain(Windows.Media.Audio.IAudioNode destination, double gain);
	HRESULT abi_RemoveOutgoingConnection(Windows.Media.Audio.IAudioNode destination);
}
@uuid("d148005c-8428-4784-b7fd-a99d468c5d20")
interface IAudioInputNode : IAudioInputNode_Base, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable {}

@uuid("905156b7-ca68-4c6d-a8bc-e3ee17fe3fd2")
interface IAudioInputNode2_Base : IInspectable
{
extern(Windows):
	HRESULT get_Emitter(Windows.Media.Audio.AudioNodeEmitter* return_value);
}
@uuid("905156b7-ca68-4c6d-a8bc-e3ee17fe3fd2")
interface IAudioInputNode2 : IAudioInputNode2_Base, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioInputNode {}

@uuid("15389d7f-dbd8-4819-bf03-668e9357cd6d")
interface IAudioNode_Base : IInspectable
{
extern(Windows):
	HRESULT get_EffectDefinitions(Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition)* return_value);
	HRESULT set_OutgoingGain(double value);
	HRESULT get_OutgoingGain(double* return_value);
	HRESULT get_EncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT get_ConsumeInput(bool* return_value);
	HRESULT set_ConsumeInput(bool value);
	HRESULT abi_Start();
	HRESULT abi_Stop();
	HRESULT abi_Reset();
	HRESULT abi_DisableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition);
	HRESULT abi_EnableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition);
}
@uuid("15389d7f-dbd8-4819-bf03-668e9357cd6d")
interface IAudioNode : IAudioNode_Base, Windows.Foundation.IClosable {}

@uuid("3676971d-880a-47b8-adf7-1323a9d965be")
@WinrtFactory("Windows.Media.Audio.AudioNodeEmitter")
interface IAudioNodeEmitter : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Position(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_Direction(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Direction(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_Shape(Windows.Media.Audio.AudioNodeEmitterShape* return_value);
	HRESULT get_DecayModel(Windows.Media.Audio.AudioNodeEmitterDecayModel* return_value);
	HRESULT get_Gain(double* return_value);
	HRESULT set_Gain(double value);
	HRESULT get_DistanceScale(double* return_value);
	HRESULT set_DistanceScale(double value);
	HRESULT get_DopplerScale(double* return_value);
	HRESULT set_DopplerScale(double value);
	HRESULT get_DopplerVelocity(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_DopplerVelocity(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_IsDopplerDisabled(bool* return_value);
}

@uuid("4ab6eecb-ec29-47f8-818c-b6b660a5aeb1")
@WinrtFactory("Windows.Media.Audio.AudioNodeEmitter")
interface IAudioNodeEmitter2 : IInspectable
{
extern(Windows):
	HRESULT get_SpatialAudioModel(Windows.Media.Audio.SpatialAudioModel* return_value);
	HRESULT set_SpatialAudioModel(Windows.Media.Audio.SpatialAudioModel value);
}

@uuid("e99b2cee-02ca-4375-9326-0c6ae4bcdfb5")
@WinrtFactory("Windows.Media.Audio.AudioNodeEmitterConeProperties")
interface IAudioNodeEmitterConeProperties : IInspectable
{
extern(Windows):
	HRESULT get_InnerAngle(double* return_value);
	HRESULT get_OuterAngle(double* return_value);
	HRESULT get_OuterAngleGain(double* return_value);
}

@uuid("1d1d5af7-0d53-4fa9-bd84-d5816a86f3ff")
@WinrtFactory("Windows.Media.Audio.AudioNodeEmitterDecayModel")
interface IAudioNodeEmitterDecayModel : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.Media.Audio.AudioNodeEmitterDecayKind* return_value);
	HRESULT get_MinGain(double* return_value);
	HRESULT get_MaxGain(double* return_value);
	HRESULT get_NaturalProperties(Windows.Media.Audio.AudioNodeEmitterNaturalDecayModelProperties* return_value);
}

@uuid("c7787ca8-f178-462f-bc81-8dd5cbe5dae8")
@WinrtFactory("Windows.Media.Audio.AudioNodeEmitterDecayModel")
interface IAudioNodeEmitterDecayModelStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateNatural(double minGain, double maxGain, double unityGainDistance, double cutoffDistance, Windows.Media.Audio.AudioNodeEmitterDecayModel* return_decayModel);
	HRESULT abi_CreateCustom(double minGain, double maxGain, Windows.Media.Audio.AudioNodeEmitterDecayModel* return_decayModel);
}

@uuid("fdc8489a-6ad6-4ce4-b7f7-a99370df7ee9")
@WinrtFactory("Windows.Media.Audio.AudioNodeEmitter")
interface IAudioNodeEmitterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAudioNodeEmitter(Windows.Media.Audio.AudioNodeEmitterShape shape, Windows.Media.Audio.AudioNodeEmitterDecayModel decayModel, Windows.Media.Audio.AudioNodeEmitterSettings settings, Windows.Media.Audio.AudioNodeEmitter* return_emitter);
}

@uuid("48934bcf-cf2c-4efc-9331-75bd22df1f0c")
@WinrtFactory("Windows.Media.Audio.AudioNodeEmitterNaturalDecayModelProperties")
interface IAudioNodeEmitterNaturalDecayModelProperties : IInspectable
{
extern(Windows):
	HRESULT get_UnityGainDistance(double* return_value);
	HRESULT get_CutoffDistance(double* return_value);
}

@uuid("ea0311c5-e73d-44bc-859c-45553bbc4828")
@WinrtFactory("Windows.Media.Audio.AudioNodeEmitterShape")
interface IAudioNodeEmitterShape : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.Media.Audio.AudioNodeEmitterShapeKind* return_value);
	HRESULT get_ConeProperties(Windows.Media.Audio.AudioNodeEmitterConeProperties* return_value);
}

@uuid("57bb2771-ffa5-4b86-a779-e264aeb9145f")
@WinrtFactory("Windows.Media.Audio.AudioNodeEmitterShape")
interface IAudioNodeEmitterShapeStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCone(double innerAngle, double outerAngle, double outerAngleGain, Windows.Media.Audio.AudioNodeEmitterShape* return_shape);
	HRESULT abi_CreateOmnidirectional(Windows.Media.Audio.AudioNodeEmitterShape* return_shape);
}

@uuid("d9722e16-0c0a-41da-b755-6c77835fb1eb")
@WinrtFactory("Windows.Media.Audio.AudioNodeListener")
interface IAudioNodeListener : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Position(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_Orientation(Windows.Foundation.Numerics.Quaternion* return_value);
	HRESULT set_Orientation(Windows.Foundation.Numerics.Quaternion value);
	HRESULT get_SpeedOfSound(double* return_value);
	HRESULT set_SpeedOfSound(double value);
	HRESULT get_DopplerVelocity(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_DopplerVelocity(Windows.Foundation.Numerics.Vector3 value);
}

@uuid("0e0f907c-79ff-4544-9eeb-01257b15105a")
interface IAudioNodeWithListener_Base : IInspectable
{
extern(Windows):
	HRESULT set_Listener(Windows.Media.Audio.AudioNodeListener value);
	HRESULT get_Listener(Windows.Media.Audio.AudioNodeListener* return_value);
}
@uuid("0e0f907c-79ff-4544-9eeb-01257b15105a")
interface IAudioNodeWithListener : IAudioNodeWithListener_Base, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioNode {}

@uuid("16eec7a8-1ca7-40ef-91a4-d346e0aa1bba")
@WinrtFactory("Windows.Media.Audio.CreateAudioDeviceInputNodeResult")
interface ICreateAudioDeviceInputNodeResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Media.Audio.AudioDeviceNodeCreationStatus* return_value);
	HRESULT get_DeviceInputNode(Windows.Media.Audio.AudioDeviceInputNode* return_value);
}

@uuid("f7776d27-1d9a-47f7-9cd4-2859cc1b7bff")
@WinrtFactory("Windows.Media.Audio.CreateAudioDeviceOutputNodeResult")
interface ICreateAudioDeviceOutputNodeResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Media.Audio.AudioDeviceNodeCreationStatus* return_value);
	HRESULT get_DeviceOutputNode(Windows.Media.Audio.AudioDeviceOutputNode* return_value);
}

@uuid("ce83d61c-e297-4c50-9ce7-1c7a69d6bd09")
@WinrtFactory("Windows.Media.Audio.CreateAudioFileInputNodeResult")
interface ICreateAudioFileInputNodeResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Media.Audio.AudioFileNodeCreationStatus* return_value);
	HRESULT get_FileInputNode(Windows.Media.Audio.AudioFileInputNode* return_value);
}

@uuid("47d6ba7b-e909-453f-866e-5540cda734ff")
@WinrtFactory("Windows.Media.Audio.CreateAudioFileOutputNodeResult")
interface ICreateAudioFileOutputNodeResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Media.Audio.AudioFileNodeCreationStatus* return_value);
	HRESULT get_FileOutputNode(Windows.Media.Audio.AudioFileOutputNode* return_value);
}

@uuid("5453ef7e-7bde-4b76-bb5d-48f79cfc8c0b")
@WinrtFactory("Windows.Media.Audio.CreateAudioGraphResult")
interface ICreateAudioGraphResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Media.Audio.AudioGraphCreationStatus* return_value);
	HRESULT get_Graph(Windows.Media.Audio.AudioGraph* return_value);
}

@uuid("0e4d3faa-36b8-4c91-b9da-11f44a8a6610")
@WinrtFactory("Windows.Media.Audio.EchoEffectDefinition")
interface IEchoEffectDefinition_Base : IInspectable
{
extern(Windows):
	HRESULT set_WetDryMix(double value);
	HRESULT get_WetDryMix(double* return_value);
	HRESULT set_Feedback(double value);
	HRESULT get_Feedback(double* return_value);
	HRESULT set_Delay(double value);
	HRESULT get_Delay(double* return_value);
}
@uuid("0e4d3faa-36b8-4c91-b9da-11f44a8a6610")
@WinrtFactory("Windows.Media.Audio.EchoEffectDefinition")
interface IEchoEffectDefinition : IEchoEffectDefinition_Base, Windows.Media.Effects.IAudioEffectDefinition {}

@uuid("0d4e2257-aaf2-4e86-a54c-fb79db8f6c12")
@WinrtFactory("Windows.Media.Audio.EchoEffectDefinition")
interface IEchoEffectDefinitionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.Audio.AudioGraph audioGraph, Windows.Media.Audio.EchoEffectDefinition* return_value);
}

@uuid("c00a5a6a-262d-4b85-9bb7-43280b62ed0c")
@WinrtFactory("Windows.Media.Audio.EqualizerBand")
interface IEqualizerBand : IInspectable
{
extern(Windows):
	HRESULT get_Bandwidth(double* return_value);
	HRESULT set_Bandwidth(double value);
	HRESULT get_FrequencyCenter(double* return_value);
	HRESULT set_FrequencyCenter(double value);
	HRESULT get_Gain(double* return_value);
	HRESULT set_Gain(double value);
}

@uuid("023f6f1f-83fe-449a-a822-c696442d16b0")
@WinrtFactory("Windows.Media.Audio.EqualizerEffectDefinition")
interface IEqualizerEffectDefinition_Base : IInspectable
{
extern(Windows):
	HRESULT get_Bands(Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.EqualizerBand)* return_value);
}
@uuid("023f6f1f-83fe-449a-a822-c696442d16b0")
@WinrtFactory("Windows.Media.Audio.EqualizerEffectDefinition")
interface IEqualizerEffectDefinition : IEqualizerEffectDefinition_Base, Windows.Media.Effects.IAudioEffectDefinition {}

@uuid("d2876fc4-d410-4eb5-9e69-c9aa1277eaf0")
@WinrtFactory("Windows.Media.Audio.EqualizerEffectDefinition")
interface IEqualizerEffectDefinitionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.Audio.AudioGraph audioGraph, Windows.Media.Audio.EqualizerEffectDefinition* return_value);
}

@uuid("3d9bd498-a306-4f06-bd9f-e9efc8226304")
@WinrtFactory("Windows.Media.Audio.FrameInputNodeQuantumStartedEventArgs")
interface IFrameInputNodeQuantumStartedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_RequiredSamples(INT32* return_value);
}

@uuid("6b755d19-2603-47ba-bdeb-39055e3486dc")
@WinrtFactory("Windows.Media.Audio.LimiterEffectDefinition")
interface ILimiterEffectDefinition_Base : IInspectable
{
extern(Windows):
	HRESULT set_Release(UINT32 value);
	HRESULT get_Release(UINT32* return_value);
	HRESULT set_Loudness(UINT32 value);
	HRESULT get_Loudness(UINT32* return_value);
}
@uuid("6b755d19-2603-47ba-bdeb-39055e3486dc")
@WinrtFactory("Windows.Media.Audio.LimiterEffectDefinition")
interface ILimiterEffectDefinition : ILimiterEffectDefinition_Base, Windows.Media.Effects.IAudioEffectDefinition {}

@uuid("ecbae6f1-61ff-45ef-b8f5-48659a57c72d")
@WinrtFactory("Windows.Media.Audio.LimiterEffectDefinition")
interface ILimiterEffectDefinitionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.Audio.AudioGraph audioGraph, Windows.Media.Audio.LimiterEffectDefinition* return_value);
}

@uuid("4606aa89-f563-4d0a-8f6e-f0cddff35d84")
@WinrtFactory("Windows.Media.Audio.ReverbEffectDefinition")
interface IReverbEffectDefinition_Base : IInspectable
{
extern(Windows):
	HRESULT set_WetDryMix(double value);
	HRESULT get_WetDryMix(double* return_value);
	HRESULT set_ReflectionsDelay(UINT32 value);
	HRESULT get_ReflectionsDelay(UINT32* return_value);
	HRESULT set_ReverbDelay(ubyte value);
	HRESULT get_ReverbDelay(ubyte* return_value);
	HRESULT set_RearDelay(ubyte value);
	HRESULT get_RearDelay(ubyte* return_value);
	HRESULT set_PositionLeft(ubyte value);
	HRESULT get_PositionLeft(ubyte* return_value);
	HRESULT set_PositionRight(ubyte value);
	HRESULT get_PositionRight(ubyte* return_value);
	HRESULT set_PositionMatrixLeft(ubyte value);
	HRESULT get_PositionMatrixLeft(ubyte* return_value);
	HRESULT set_PositionMatrixRight(ubyte value);
	HRESULT get_PositionMatrixRight(ubyte* return_value);
	HRESULT set_EarlyDiffusion(ubyte value);
	HRESULT get_EarlyDiffusion(ubyte* return_value);
	HRESULT set_LateDiffusion(ubyte value);
	HRESULT get_LateDiffusion(ubyte* return_value);
	HRESULT set_LowEQGain(ubyte value);
	HRESULT get_LowEQGain(ubyte* return_value);
	HRESULT set_LowEQCutoff(ubyte value);
	HRESULT get_LowEQCutoff(ubyte* return_value);
	HRESULT set_HighEQGain(ubyte value);
	HRESULT get_HighEQGain(ubyte* return_value);
	HRESULT set_HighEQCutoff(ubyte value);
	HRESULT get_HighEQCutoff(ubyte* return_value);
	HRESULT set_RoomFilterFreq(double value);
	HRESULT get_RoomFilterFreq(double* return_value);
	HRESULT set_RoomFilterMain(double value);
	HRESULT get_RoomFilterMain(double* return_value);
	HRESULT set_RoomFilterHF(double value);
	HRESULT get_RoomFilterHF(double* return_value);
	HRESULT set_ReflectionsGain(double value);
	HRESULT get_ReflectionsGain(double* return_value);
	HRESULT set_ReverbGain(double value);
	HRESULT get_ReverbGain(double* return_value);
	HRESULT set_DecayTime(double value);
	HRESULT get_DecayTime(double* return_value);
	HRESULT set_Density(double value);
	HRESULT get_Density(double* return_value);
	HRESULT set_RoomSize(double value);
	HRESULT get_RoomSize(double* return_value);
	HRESULT set_DisableLateField(bool value);
	HRESULT get_DisableLateField(bool* return_value);
}
@uuid("4606aa89-f563-4d0a-8f6e-f0cddff35d84")
@WinrtFactory("Windows.Media.Audio.ReverbEffectDefinition")
interface IReverbEffectDefinition : IReverbEffectDefinition_Base, Windows.Media.Effects.IAudioEffectDefinition {}

@uuid("a7d5cbfe-100b-4ff0-9da6-dc4e05a759f0")
@WinrtFactory("Windows.Media.Audio.ReverbEffectDefinition")
interface IReverbEffectDefinitionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.Audio.AudioGraph audioGraph, Windows.Media.Audio.ReverbEffectDefinition* return_value);
}

interface AudioDeviceInputNode : Windows.Media.Audio.IAudioDeviceInputNode, Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioInputNode2
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceInformation Device()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioDeviceInputNode).get_Device(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.AudioGraphConnection) OutgoingConnections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.AudioGraphConnection) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).get_OutgoingConnections(&_ret));
		return _ret;
	}
	final void AddOutgoingConnection(Windows.Media.Audio.IAudioNode destination)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_AddOutgoingConnection(destination));
	}
	final void AddOutgoingConnectionWithGain(Windows.Media.Audio.IAudioNode destination, double gain)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_AddOutgoingConnectionWithGain(destination, gain));
	}
	final void RemoveOutgoingConnection(Windows.Media.Audio.IAudioNode destination)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_RemoveOutgoingConnection(destination));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) EffectDefinitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EffectDefinitions(&_ret));
		return _ret;
	}
	final void OutgoingGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_OutgoingGain(value));
	}
	final double OutgoingGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_OutgoingGain(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EncodingProperties(&_ret));
		return _ret;
	}
	final bool ConsumeInput()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_ConsumeInput(&_ret));
		return _ret;
	}
	final void ConsumeInput(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_ConsumeInput(value));
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Stop());
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Reset());
	}
	final void DisableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_DisableEffectsByDefinition(definition));
	}
	final void EnableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_EnableEffectsByDefinition(definition));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Media.Audio.AudioNodeEmitter Emitter()
	{
		Windows.Media.Audio.AudioNodeEmitter _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode2).get_Emitter(&_ret));
		return _ret;
	}
}

interface AudioDeviceOutputNode : Windows.Media.Audio.IAudioDeviceOutputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioNodeWithListener
{
extern(Windows):
	final Windows.Devices.Enumeration.DeviceInformation Device()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioDeviceOutputNode).get_Device(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) EffectDefinitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EffectDefinitions(&_ret));
		return _ret;
	}
	final void OutgoingGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_OutgoingGain(value));
	}
	final double OutgoingGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_OutgoingGain(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EncodingProperties(&_ret));
		return _ret;
	}
	final bool ConsumeInput()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_ConsumeInput(&_ret));
		return _ret;
	}
	final void ConsumeInput(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_ConsumeInput(value));
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Stop());
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Reset());
	}
	final void DisableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_DisableEffectsByDefinition(definition));
	}
	final void EnableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_EnableEffectsByDefinition(definition));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final void Listener(Windows.Media.Audio.AudioNodeListener value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeWithListener).set_Listener(value));
	}
	final Windows.Media.Audio.AudioNodeListener Listener()
	{
		Windows.Media.Audio.AudioNodeListener _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeWithListener).get_Listener(&_ret));
		return _ret;
	}
}

interface AudioFileInputNode : Windows.Media.Audio.IAudioFileInputNode, Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioInputNode2
{
extern(Windows):
	final void PlaybackSpeedFactor(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).set_PlaybackSpeedFactor(value));
	}
	final double PlaybackSpeedFactor()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).get_PlaybackSpeedFactor(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Position()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).get_Position(&_ret));
		return _ret;
	}
	final void Seek(Windows.Foundation.TimeSpan position)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).abi_Seek(position));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) StartTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).get_StartTime(&_ret));
		return _ret;
	}
	final void StartTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).set_StartTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) EndTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).get_EndTime(&_ret));
		return _ret;
	}
	final void EndTime(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).set_EndTime(value));
	}
	final Windows.Foundation.IReference!(INT32) LoopCount()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).get_LoopCount(&_ret));
		return _ret;
	}
	final void LoopCount(Windows.Foundation.IReference!(INT32) value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).set_LoopCount(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).get_Duration(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFile SourceFile()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).get_SourceFile(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnFileCompleted(void delegate(Windows.Media.Audio.AudioFileInputNode, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).add_FileCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioFileInputNode, IInspectable), Windows.Media.Audio.AudioFileInputNode, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeFileCompleted(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileInputNode).remove_FileCompleted(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.AudioGraphConnection) OutgoingConnections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.AudioGraphConnection) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).get_OutgoingConnections(&_ret));
		return _ret;
	}
	final void AddOutgoingConnection(Windows.Media.Audio.IAudioNode destination)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_AddOutgoingConnection(destination));
	}
	final void AddOutgoingConnectionWithGain(Windows.Media.Audio.IAudioNode destination, double gain)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_AddOutgoingConnectionWithGain(destination, gain));
	}
	final void RemoveOutgoingConnection(Windows.Media.Audio.IAudioNode destination)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_RemoveOutgoingConnection(destination));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) EffectDefinitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EffectDefinitions(&_ret));
		return _ret;
	}
	final void OutgoingGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_OutgoingGain(value));
	}
	final double OutgoingGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_OutgoingGain(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EncodingProperties(&_ret));
		return _ret;
	}
	final bool ConsumeInput()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_ConsumeInput(&_ret));
		return _ret;
	}
	final void ConsumeInput(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_ConsumeInput(value));
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Stop());
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Reset());
	}
	final void DisableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_DisableEffectsByDefinition(definition));
	}
	final void EnableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_EnableEffectsByDefinition(definition));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Media.Audio.AudioNodeEmitter Emitter()
	{
		Windows.Media.Audio.AudioNodeEmitter _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode2).get_Emitter(&_ret));
		return _ret;
	}
}

interface AudioFileOutputNode : Windows.Media.Audio.IAudioFileOutputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Storage.IStorageFile File()
	{
		Windows.Storage.IStorageFile _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileOutputNode).get_File(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaEncodingProfile FileEncodingProfile()
	{
		Windows.Media.MediaProperties.MediaEncodingProfile _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileOutputNode).get_FileEncodingProfile(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.TranscodeFailureReason) FinalizeAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.TranscodeFailureReason) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFileOutputNode).abi_FinalizeAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) EffectDefinitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EffectDefinitions(&_ret));
		return _ret;
	}
	final void OutgoingGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_OutgoingGain(value));
	}
	final double OutgoingGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_OutgoingGain(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EncodingProperties(&_ret));
		return _ret;
	}
	final bool ConsumeInput()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_ConsumeInput(&_ret));
		return _ret;
	}
	final void ConsumeInput(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_ConsumeInput(value));
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Stop());
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Reset());
	}
	final void DisableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_DisableEffectsByDefinition(definition));
	}
	final void EnableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_EnableEffectsByDefinition(definition));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface AudioFrameCompletedEventArgs : Windows.Media.Audio.IAudioFrameCompletedEventArgs
{
extern(Windows):
	final Windows.Media.AudioFrame Frame()
	{
		Windows.Media.AudioFrame _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameCompletedEventArgs).get_Frame(&_ret));
		return _ret;
	}
}

interface AudioFrameInputNode : Windows.Media.Audio.IAudioFrameInputNode, Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioInputNode2
{
extern(Windows):
	final void PlaybackSpeedFactor(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameInputNode).set_PlaybackSpeedFactor(value));
	}
	final double PlaybackSpeedFactor()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameInputNode).get_PlaybackSpeedFactor(&_ret));
		return _ret;
	}
	final void AddFrame(Windows.Media.AudioFrame frame)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameInputNode).abi_AddFrame(frame));
	}
	final void DiscardQueuedFrames()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameInputNode).abi_DiscardQueuedFrames());
	}
	final ulong QueuedSampleCount()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameInputNode).get_QueuedSampleCount(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAudioFrameCompleted(void delegate(Windows.Media.Audio.AudioFrameInputNode, Windows.Media.Audio.AudioFrameCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameInputNode).add_AudioFrameCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioFrameInputNode, Windows.Media.Audio.AudioFrameCompletedEventArgs), Windows.Media.Audio.AudioFrameInputNode, Windows.Media.Audio.AudioFrameCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAudioFrameCompleted(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameInputNode).remove_AudioFrameCompleted(token));
	}
	final EventRegistrationToken OnQuantumStarted(void delegate(Windows.Media.Audio.AudioFrameInputNode, Windows.Media.Audio.FrameInputNodeQuantumStartedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameInputNode).add_QuantumStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioFrameInputNode, Windows.Media.Audio.FrameInputNodeQuantumStartedEventArgs), Windows.Media.Audio.AudioFrameInputNode, Windows.Media.Audio.FrameInputNodeQuantumStartedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeQuantumStarted(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameInputNode).remove_QuantumStarted(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.AudioGraphConnection) OutgoingConnections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.AudioGraphConnection) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).get_OutgoingConnections(&_ret));
		return _ret;
	}
	final void AddOutgoingConnection(Windows.Media.Audio.IAudioNode destination)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_AddOutgoingConnection(destination));
	}
	final void AddOutgoingConnectionWithGain(Windows.Media.Audio.IAudioNode destination, double gain)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_AddOutgoingConnectionWithGain(destination, gain));
	}
	final void RemoveOutgoingConnection(Windows.Media.Audio.IAudioNode destination)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_RemoveOutgoingConnection(destination));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) EffectDefinitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EffectDefinitions(&_ret));
		return _ret;
	}
	final void OutgoingGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_OutgoingGain(value));
	}
	final double OutgoingGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_OutgoingGain(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EncodingProperties(&_ret));
		return _ret;
	}
	final bool ConsumeInput()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_ConsumeInput(&_ret));
		return _ret;
	}
	final void ConsumeInput(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_ConsumeInput(value));
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Stop());
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Reset());
	}
	final void DisableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_DisableEffectsByDefinition(definition));
	}
	final void EnableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_EnableEffectsByDefinition(definition));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Media.Audio.AudioNodeEmitter Emitter()
	{
		Windows.Media.Audio.AudioNodeEmitter _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode2).get_Emitter(&_ret));
		return _ret;
	}
}

interface AudioFrameOutputNode : Windows.Media.Audio.IAudioFrameOutputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Media.AudioFrame GetFrame()
	{
		Windows.Media.AudioFrame _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioFrameOutputNode).abi_GetFrame(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) EffectDefinitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EffectDefinitions(&_ret));
		return _ret;
	}
	final void OutgoingGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_OutgoingGain(value));
	}
	final double OutgoingGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_OutgoingGain(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EncodingProperties(&_ret));
		return _ret;
	}
	final bool ConsumeInput()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_ConsumeInput(&_ret));
		return _ret;
	}
	final void ConsumeInput(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_ConsumeInput(value));
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Stop());
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Reset());
	}
	final void DisableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_DisableEffectsByDefinition(definition));
	}
	final void EnableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_EnableEffectsByDefinition(definition));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface AudioGraph : Windows.Media.Audio.IAudioGraph, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioGraph2
{
extern(Windows):
	final Windows.Media.Audio.AudioFrameInputNode CreateFrameInputNode()
	{
		Windows.Media.Audio.AudioFrameInputNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateFrameInputNode(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioFrameInputNode CreateFrameInputNodeWithFormat(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties)
	{
		Windows.Media.Audio.AudioFrameInputNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateFrameInputNodeWithFormat(encodingProperties, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult) CreateDeviceInputNodeAsync(Windows.Media.Capture.MediaCategory category)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateDeviceInputNodeAsync(category, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult) CreateDeviceInputNodeWithFormatAsync(Windows.Media.Capture.MediaCategory category, Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateDeviceInputNodeWithFormatAsync(category, encodingProperties, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult) CreateDeviceInputNodeWithFormatOnDeviceAsync(Windows.Media.Capture.MediaCategory category, Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Devices.Enumeration.DeviceInformation device)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateDeviceInputNodeWithFormatOnDeviceAsync(category, encodingProperties, device, &_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioFrameOutputNode CreateFrameOutputNode()
	{
		Windows.Media.Audio.AudioFrameOutputNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateFrameOutputNode(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioFrameOutputNode CreateFrameOutputNodeWithFormat(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties)
	{
		Windows.Media.Audio.AudioFrameOutputNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateFrameOutputNodeWithFormat(encodingProperties, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceOutputNodeResult) CreateDeviceOutputNodeAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceOutputNodeResult) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateDeviceOutputNodeAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileInputNodeResult) CreateFileInputNodeAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileInputNodeResult) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateFileInputNodeAsync(file, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileOutputNodeResult) CreateFileOutputNodeAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileOutputNodeResult) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateFileOutputNodeAsync(file, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileOutputNodeResult) CreateFileOutputNodeWithFileProfileAsync(Windows.Storage.IStorageFile file, Windows.Media.MediaProperties.MediaEncodingProfile fileEncodingProfile)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileOutputNodeResult) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateFileOutputNodeWithFileProfileAsync(file, fileEncodingProfile, &_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioSubmixNode CreateSubmixNode()
	{
		Windows.Media.Audio.AudioSubmixNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateSubmixNode(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioSubmixNode CreateSubmixNodeWithFormat(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties)
	{
		Windows.Media.Audio.AudioSubmixNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_CreateSubmixNodeWithFormat(encodingProperties, &_ret));
		return _ret;
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_Stop());
	}
	final void ResetAllNodes()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).abi_ResetAllNodes());
	}
	final EventRegistrationToken OnQuantumStarted(void delegate(Windows.Media.Audio.AudioGraph, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).add_QuantumStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioGraph, IInspectable), Windows.Media.Audio.AudioGraph, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeQuantumStarted(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).remove_QuantumStarted(token));
	}
	final EventRegistrationToken OnQuantumProcessed(void delegate(Windows.Media.Audio.AudioGraph, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).add_QuantumProcessed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioGraph, IInspectable), Windows.Media.Audio.AudioGraph, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeQuantumProcessed(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).remove_QuantumProcessed(token));
	}
	final EventRegistrationToken OnUnrecoverableErrorOccurred(void delegate(Windows.Media.Audio.AudioGraph, Windows.Media.Audio.AudioGraphUnrecoverableErrorOccurredEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).add_UnrecoverableErrorOccurred(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioGraph, Windows.Media.Audio.AudioGraphUnrecoverableErrorOccurredEventArgs), Windows.Media.Audio.AudioGraph, Windows.Media.Audio.AudioGraphUnrecoverableErrorOccurredEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUnrecoverableErrorOccurred(EventRegistrationToken token)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).remove_UnrecoverableErrorOccurred(token));
	}
	final ulong CompletedQuantumCount()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).get_CompletedQuantumCount(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).get_EncodingProperties(&_ret));
		return _ret;
	}
	final INT32 LatencyInSamples()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).get_LatencyInSamples(&_ret));
		return _ret;
	}
	final Windows.Devices.Enumeration.DeviceInformation PrimaryRenderDevice()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).get_PrimaryRenderDevice(&_ret));
		return _ret;
	}
	final Windows.Media.AudioProcessing RenderDeviceAudioProcessing()
	{
		Windows.Media.AudioProcessing _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).get_RenderDeviceAudioProcessing(&_ret));
		return _ret;
	}
	final INT32 SamplesPerQuantum()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph).get_SamplesPerQuantum(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Media.Audio.AudioFrameInputNode CreateFrameInputNodeWithFormatAndEmitter(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Media.Audio.AudioNodeEmitter emitter)
	{
		Windows.Media.Audio.AudioFrameInputNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph2).abi_CreateFrameInputNodeWithFormatAndEmitter(encodingProperties, emitter, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult) CreateDeviceInputNodeWithFormatAndEmitterOnDeviceAsync(Windows.Media.Capture.MediaCategory category, Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Devices.Enumeration.DeviceInformation device, Windows.Media.Audio.AudioNodeEmitter emitter)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph2).abi_CreateDeviceInputNodeWithFormatAndEmitterOnDeviceAsync(category, encodingProperties, device, emitter, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileInputNodeResult) CreateFileInputNodeWithEmitterAsync(Windows.Storage.IStorageFile file, Windows.Media.Audio.AudioNodeEmitter emitter)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileInputNodeResult) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph2).abi_CreateFileInputNodeWithEmitterAsync(file, emitter, &_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioSubmixNode CreateSubmixNodeWithFormatAndEmitter(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Media.Audio.AudioNodeEmitter emitter)
	{
		Windows.Media.Audio.AudioSubmixNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph2).abi_CreateSubmixNodeWithFormatAndEmitter(encodingProperties, emitter, &_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioGraphBatchUpdater CreateBatchUpdater()
	{
		Windows.Media.Audio.AudioGraphBatchUpdater _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraph2).abi_CreateBatchUpdater(&_ret));
		return _ret;
	}

	private static Windows.Media.Audio.IAudioGraphStatics _staticInstance;
	public static Windows.Media.Audio.IAudioGraphStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Audio.IAudioGraphStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioGraphResult) CreateAsync(Windows.Media.Audio.AudioGraphSettings settings)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioGraphResult) _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Audio.IAudioGraphStatics).abi_CreateAsync(settings, &_ret));
		return _ret;
	}
}

interface AudioGraphBatchUpdater : Windows.Foundation.IClosable
{
extern(Windows):
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface AudioGraphConnection : Windows.Media.Audio.IAudioGraphConnection
{
extern(Windows):
	final Windows.Media.Audio.IAudioNode Destination()
	{
		Windows.Media.Audio.IAudioNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphConnection).get_Destination(&_ret));
		return _ret;
	}
	final void Gain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphConnection).set_Gain(value));
	}
	final double Gain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphConnection).get_Gain(&_ret));
		return _ret;
	}
}

interface AudioGraphSettings : Windows.Media.Audio.IAudioGraphSettings
{
extern(Windows):
	final Windows.Media.MediaProperties.AudioEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).get_EncodingProperties(&_ret));
		return _ret;
	}
	final void EncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).set_EncodingProperties(value));
	}
	final Windows.Devices.Enumeration.DeviceInformation PrimaryRenderDevice()
	{
		Windows.Devices.Enumeration.DeviceInformation _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).get_PrimaryRenderDevice(&_ret));
		return _ret;
	}
	final void PrimaryRenderDevice(Windows.Devices.Enumeration.DeviceInformation value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).set_PrimaryRenderDevice(value));
	}
	final Windows.Media.Audio.QuantumSizeSelectionMode QuantumSizeSelectionMode()
	{
		Windows.Media.Audio.QuantumSizeSelectionMode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).get_QuantumSizeSelectionMode(&_ret));
		return _ret;
	}
	final void QuantumSizeSelectionMode(Windows.Media.Audio.QuantumSizeSelectionMode value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).set_QuantumSizeSelectionMode(value));
	}
	final INT32 DesiredSamplesPerQuantum()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).get_DesiredSamplesPerQuantum(&_ret));
		return _ret;
	}
	final void DesiredSamplesPerQuantum(INT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).set_DesiredSamplesPerQuantum(value));
	}
	final Windows.Media.Render.AudioRenderCategory AudioRenderCategory()
	{
		Windows.Media.Render.AudioRenderCategory _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).get_AudioRenderCategory(&_ret));
		return _ret;
	}
	final void AudioRenderCategory(Windows.Media.Render.AudioRenderCategory value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).set_AudioRenderCategory(value));
	}
	final Windows.Media.AudioProcessing DesiredRenderDeviceAudioProcessing()
	{
		Windows.Media.AudioProcessing _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).get_DesiredRenderDeviceAudioProcessing(&_ret));
		return _ret;
	}
	final void DesiredRenderDeviceAudioProcessing(Windows.Media.AudioProcessing value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphSettings).set_DesiredRenderDeviceAudioProcessing(value));
	}
	static Windows.Media.Audio.AudioGraphSettings New(Windows.Media.Render.AudioRenderCategory audioRenderCategory)
	{
		auto factory = factory!(Windows.Media.Audio.IAudioGraphSettingsFactory);
		Windows.Media.Audio.AudioGraphSettings _ret;
		Debug.OK(factory.as!(Windows.Media.Audio.IAudioGraphSettingsFactory).abi_Create(audioRenderCategory, &_ret));
		return _ret;
	}
}

interface AudioGraphUnrecoverableErrorOccurredEventArgs : Windows.Media.Audio.IAudioGraphUnrecoverableErrorOccurredEventArgs
{
extern(Windows):
	final Windows.Media.Audio.AudioGraphUnrecoverableError Error()
	{
		Windows.Media.Audio.AudioGraphUnrecoverableError _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioGraphUnrecoverableErrorOccurredEventArgs).get_Error(&_ret));
		return _ret;
	}
}

interface AudioNodeEmitter : Windows.Media.Audio.IAudioNodeEmitter, Windows.Media.Audio.IAudioNodeEmitter2
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).set_Position(value));
	}
	final Windows.Foundation.Numerics.Vector3 Direction()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).get_Direction(&_ret));
		return _ret;
	}
	final void Direction(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).set_Direction(value));
	}
	final Windows.Media.Audio.AudioNodeEmitterShape Shape()
	{
		Windows.Media.Audio.AudioNodeEmitterShape _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).get_Shape(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioNodeEmitterDecayModel DecayModel()
	{
		Windows.Media.Audio.AudioNodeEmitterDecayModel _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).get_DecayModel(&_ret));
		return _ret;
	}
	final double Gain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).get_Gain(&_ret));
		return _ret;
	}
	final void Gain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).set_Gain(value));
	}
	final double DistanceScale()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).get_DistanceScale(&_ret));
		return _ret;
	}
	final void DistanceScale(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).set_DistanceScale(value));
	}
	final double DopplerScale()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).get_DopplerScale(&_ret));
		return _ret;
	}
	final void DopplerScale(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).set_DopplerScale(value));
	}
	final Windows.Foundation.Numerics.Vector3 DopplerVelocity()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).get_DopplerVelocity(&_ret));
		return _ret;
	}
	final void DopplerVelocity(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).set_DopplerVelocity(value));
	}
	final bool IsDopplerDisabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter).get_IsDopplerDisabled(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.SpatialAudioModel SpatialAudioModel()
	{
		Windows.Media.Audio.SpatialAudioModel _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter2).get_SpatialAudioModel(&_ret));
		return _ret;
	}
	final void SpatialAudioModel(Windows.Media.Audio.SpatialAudioModel value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitter2).set_SpatialAudioModel(value));
	}
	static AudioNodeEmitter New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(AudioNodeEmitter).abi_ActivateInstance(&ret));
		return ret.as!(AudioNodeEmitter);
	}
	static Windows.Media.Audio.AudioNodeEmitter New(Windows.Media.Audio.AudioNodeEmitterShape shape, Windows.Media.Audio.AudioNodeEmitterDecayModel decayModel, Windows.Media.Audio.AudioNodeEmitterSettings settings)
	{
		auto factory = factory!(Windows.Media.Audio.IAudioNodeEmitterFactory);
		Windows.Media.Audio.AudioNodeEmitter _ret;
		Debug.OK(factory.as!(Windows.Media.Audio.IAudioNodeEmitterFactory).abi_CreateAudioNodeEmitter(shape, decayModel, settings, &_ret));
		return _ret;
	}
}

interface AudioNodeEmitterConeProperties : Windows.Media.Audio.IAudioNodeEmitterConeProperties
{
extern(Windows):
	final double InnerAngle()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterConeProperties).get_InnerAngle(&_ret));
		return _ret;
	}
	final double OuterAngle()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterConeProperties).get_OuterAngle(&_ret));
		return _ret;
	}
	final double OuterAngleGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterConeProperties).get_OuterAngleGain(&_ret));
		return _ret;
	}
}

interface AudioNodeEmitterDecayModel : Windows.Media.Audio.IAudioNodeEmitterDecayModel
{
extern(Windows):
	final Windows.Media.Audio.AudioNodeEmitterDecayKind Kind()
	{
		Windows.Media.Audio.AudioNodeEmitterDecayKind _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterDecayModel).get_Kind(&_ret));
		return _ret;
	}
	final double MinGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterDecayModel).get_MinGain(&_ret));
		return _ret;
	}
	final double MaxGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterDecayModel).get_MaxGain(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioNodeEmitterNaturalDecayModelProperties NaturalProperties()
	{
		Windows.Media.Audio.AudioNodeEmitterNaturalDecayModelProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterDecayModel).get_NaturalProperties(&_ret));
		return _ret;
	}

	private static Windows.Media.Audio.IAudioNodeEmitterDecayModelStatics _staticInstance;
	public static Windows.Media.Audio.IAudioNodeEmitterDecayModelStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Audio.IAudioNodeEmitterDecayModelStatics);
		return _staticInstance;
	}
	static Windows.Media.Audio.AudioNodeEmitterDecayModel CreateNatural(double minGain, double maxGain, double unityGainDistance, double cutoffDistance)
	{
		Windows.Media.Audio.AudioNodeEmitterDecayModel _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Audio.IAudioNodeEmitterDecayModelStatics).abi_CreateNatural(minGain, maxGain, unityGainDistance, cutoffDistance, &_ret));
		return _ret;
	}
	static Windows.Media.Audio.AudioNodeEmitterDecayModel CreateCustom(double minGain, double maxGain)
	{
		Windows.Media.Audio.AudioNodeEmitterDecayModel _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Audio.IAudioNodeEmitterDecayModelStatics).abi_CreateCustom(minGain, maxGain, &_ret));
		return _ret;
	}
}

interface AudioNodeEmitterNaturalDecayModelProperties : Windows.Media.Audio.IAudioNodeEmitterNaturalDecayModelProperties
{
extern(Windows):
	final double UnityGainDistance()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterNaturalDecayModelProperties).get_UnityGainDistance(&_ret));
		return _ret;
	}
	final double CutoffDistance()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterNaturalDecayModelProperties).get_CutoffDistance(&_ret));
		return _ret;
	}
}

interface AudioNodeEmitterShape : Windows.Media.Audio.IAudioNodeEmitterShape
{
extern(Windows):
	final Windows.Media.Audio.AudioNodeEmitterShapeKind Kind()
	{
		Windows.Media.Audio.AudioNodeEmitterShapeKind _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterShape).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioNodeEmitterConeProperties ConeProperties()
	{
		Windows.Media.Audio.AudioNodeEmitterConeProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeEmitterShape).get_ConeProperties(&_ret));
		return _ret;
	}

	private static Windows.Media.Audio.IAudioNodeEmitterShapeStatics _staticInstance;
	public static Windows.Media.Audio.IAudioNodeEmitterShapeStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Audio.IAudioNodeEmitterShapeStatics);
		return _staticInstance;
	}
	static Windows.Media.Audio.AudioNodeEmitterShape CreateCone(double innerAngle, double outerAngle, double outerAngleGain)
	{
		Windows.Media.Audio.AudioNodeEmitterShape _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Audio.IAudioNodeEmitterShapeStatics).abi_CreateCone(innerAngle, outerAngle, outerAngleGain, &_ret));
		return _ret;
	}
	static Windows.Media.Audio.AudioNodeEmitterShape CreateOmnidirectional()
	{
		Windows.Media.Audio.AudioNodeEmitterShape _ret;
		Debug.OK(staticInstance.as!(Windows.Media.Audio.IAudioNodeEmitterShapeStatics).abi_CreateOmnidirectional(&_ret));
		return _ret;
	}
}

interface AudioNodeListener : Windows.Media.Audio.IAudioNodeListener
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeListener).get_Position(&_ret));
		return _ret;
	}
	final void Position(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeListener).set_Position(value));
	}
	final Windows.Foundation.Numerics.Quaternion Orientation()
	{
		Windows.Foundation.Numerics.Quaternion _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeListener).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeListener).set_Orientation(value));
	}
	final double SpeedOfSound()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeListener).get_SpeedOfSound(&_ret));
		return _ret;
	}
	final void SpeedOfSound(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeListener).set_SpeedOfSound(value));
	}
	final Windows.Foundation.Numerics.Vector3 DopplerVelocity()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeListener).get_DopplerVelocity(&_ret));
		return _ret;
	}
	final void DopplerVelocity(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNodeListener).set_DopplerVelocity(value));
	}
	static AudioNodeListener New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(AudioNodeListener).abi_ActivateInstance(&ret));
		return ret.as!(AudioNodeListener);
	}
}

interface AudioSubmixNode : Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioInputNode2
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.AudioGraphConnection) OutgoingConnections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.AudioGraphConnection) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).get_OutgoingConnections(&_ret));
		return _ret;
	}
	final void AddOutgoingConnection(Windows.Media.Audio.IAudioNode destination)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_AddOutgoingConnection(destination));
	}
	final void AddOutgoingConnectionWithGain(Windows.Media.Audio.IAudioNode destination, double gain)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_AddOutgoingConnectionWithGain(destination, gain));
	}
	final void RemoveOutgoingConnection(Windows.Media.Audio.IAudioNode destination)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode).abi_RemoveOutgoingConnection(destination));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) EffectDefinitions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Media.Effects.IAudioEffectDefinition) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EffectDefinitions(&_ret));
		return _ret;
	}
	final void OutgoingGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_OutgoingGain(value));
	}
	final double OutgoingGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_OutgoingGain(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.AudioEncodingProperties EncodingProperties()
	{
		Windows.Media.MediaProperties.AudioEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_EncodingProperties(&_ret));
		return _ret;
	}
	final bool ConsumeInput()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).get_ConsumeInput(&_ret));
		return _ret;
	}
	final void ConsumeInput(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).set_ConsumeInput(value));
	}
	final void Start()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Start());
	}
	final void Stop()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Stop());
	}
	final void Reset()
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_Reset());
	}
	final void DisableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_DisableEffectsByDefinition(definition));
	}
	final void EnableEffectsByDefinition(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IAudioNode).abi_EnableEffectsByDefinition(definition));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Media.Audio.AudioNodeEmitter Emitter()
	{
		Windows.Media.Audio.AudioNodeEmitter _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IAudioInputNode2).get_Emitter(&_ret));
		return _ret;
	}
}

interface CreateAudioDeviceInputNodeResult : Windows.Media.Audio.ICreateAudioDeviceInputNodeResult
{
extern(Windows):
	final Windows.Media.Audio.AudioDeviceNodeCreationStatus Status()
	{
		Windows.Media.Audio.AudioDeviceNodeCreationStatus _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ICreateAudioDeviceInputNodeResult).get_Status(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioDeviceInputNode DeviceInputNode()
	{
		Windows.Media.Audio.AudioDeviceInputNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ICreateAudioDeviceInputNodeResult).get_DeviceInputNode(&_ret));
		return _ret;
	}
}

interface CreateAudioDeviceOutputNodeResult : Windows.Media.Audio.ICreateAudioDeviceOutputNodeResult
{
extern(Windows):
	final Windows.Media.Audio.AudioDeviceNodeCreationStatus Status()
	{
		Windows.Media.Audio.AudioDeviceNodeCreationStatus _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ICreateAudioDeviceOutputNodeResult).get_Status(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioDeviceOutputNode DeviceOutputNode()
	{
		Windows.Media.Audio.AudioDeviceOutputNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ICreateAudioDeviceOutputNodeResult).get_DeviceOutputNode(&_ret));
		return _ret;
	}
}

interface CreateAudioFileInputNodeResult : Windows.Media.Audio.ICreateAudioFileInputNodeResult
{
extern(Windows):
	final Windows.Media.Audio.AudioFileNodeCreationStatus Status()
	{
		Windows.Media.Audio.AudioFileNodeCreationStatus _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ICreateAudioFileInputNodeResult).get_Status(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioFileInputNode FileInputNode()
	{
		Windows.Media.Audio.AudioFileInputNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ICreateAudioFileInputNodeResult).get_FileInputNode(&_ret));
		return _ret;
	}
}

interface CreateAudioFileOutputNodeResult : Windows.Media.Audio.ICreateAudioFileOutputNodeResult
{
extern(Windows):
	final Windows.Media.Audio.AudioFileNodeCreationStatus Status()
	{
		Windows.Media.Audio.AudioFileNodeCreationStatus _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ICreateAudioFileOutputNodeResult).get_Status(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioFileOutputNode FileOutputNode()
	{
		Windows.Media.Audio.AudioFileOutputNode _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ICreateAudioFileOutputNodeResult).get_FileOutputNode(&_ret));
		return _ret;
	}
}

interface CreateAudioGraphResult : Windows.Media.Audio.ICreateAudioGraphResult
{
extern(Windows):
	final Windows.Media.Audio.AudioGraphCreationStatus Status()
	{
		Windows.Media.Audio.AudioGraphCreationStatus _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ICreateAudioGraphResult).get_Status(&_ret));
		return _ret;
	}
	final Windows.Media.Audio.AudioGraph Graph()
	{
		Windows.Media.Audio.AudioGraph _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ICreateAudioGraphResult).get_Graph(&_ret));
		return _ret;
	}
}

interface EchoEffectDefinition : Windows.Media.Audio.IEchoEffectDefinition, Windows.Media.Effects.IAudioEffectDefinition
{
extern(Windows):
	final void WetDryMix(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IEchoEffectDefinition).set_WetDryMix(value));
	}
	final double WetDryMix()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IEchoEffectDefinition).get_WetDryMix(&_ret));
		return _ret;
	}
	final void Feedback(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IEchoEffectDefinition).set_Feedback(value));
	}
	final double Feedback()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IEchoEffectDefinition).get_Feedback(&_ret));
		return _ret;
	}
	final void Delay(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IEchoEffectDefinition).set_Delay(value));
	}
	final double Delay()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IEchoEffectDefinition).get_Delay(&_ret));
		return _ret;
	}
	final HSTRING ActivatableClassId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffectDefinition).get_ActivatableClassId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffectDefinition).get_Properties(&_ret));
		return _ret;
	}
	static Windows.Media.Audio.EchoEffectDefinition New(Windows.Media.Audio.AudioGraph audioGraph)
	{
		auto factory = factory!(Windows.Media.Audio.IEchoEffectDefinitionFactory);
		Windows.Media.Audio.EchoEffectDefinition _ret;
		Debug.OK(factory.as!(Windows.Media.Audio.IEchoEffectDefinitionFactory).abi_Create(audioGraph, &_ret));
		return _ret;
	}
}

interface EqualizerBand : Windows.Media.Audio.IEqualizerBand
{
extern(Windows):
	final double Bandwidth()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IEqualizerBand).get_Bandwidth(&_ret));
		return _ret;
	}
	final void Bandwidth(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IEqualizerBand).set_Bandwidth(value));
	}
	final double FrequencyCenter()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IEqualizerBand).get_FrequencyCenter(&_ret));
		return _ret;
	}
	final void FrequencyCenter(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IEqualizerBand).set_FrequencyCenter(value));
	}
	final double Gain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IEqualizerBand).get_Gain(&_ret));
		return _ret;
	}
	final void Gain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IEqualizerBand).set_Gain(value));
	}
}

interface EqualizerEffectDefinition : Windows.Media.Audio.IEqualizerEffectDefinition, Windows.Media.Effects.IAudioEffectDefinition
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.EqualizerBand) Bands()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.EqualizerBand) _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IEqualizerEffectDefinition).get_Bands(&_ret));
		return _ret;
	}
	final HSTRING ActivatableClassId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffectDefinition).get_ActivatableClassId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffectDefinition).get_Properties(&_ret));
		return _ret;
	}
	static Windows.Media.Audio.EqualizerEffectDefinition New(Windows.Media.Audio.AudioGraph audioGraph)
	{
		auto factory = factory!(Windows.Media.Audio.IEqualizerEffectDefinitionFactory);
		Windows.Media.Audio.EqualizerEffectDefinition _ret;
		Debug.OK(factory.as!(Windows.Media.Audio.IEqualizerEffectDefinitionFactory).abi_Create(audioGraph, &_ret));
		return _ret;
	}
}

interface FrameInputNodeQuantumStartedEventArgs : Windows.Media.Audio.IFrameInputNodeQuantumStartedEventArgs
{
extern(Windows):
	final INT32 RequiredSamples()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IFrameInputNodeQuantumStartedEventArgs).get_RequiredSamples(&_ret));
		return _ret;
	}
}

interface LimiterEffectDefinition : Windows.Media.Audio.ILimiterEffectDefinition, Windows.Media.Effects.IAudioEffectDefinition
{
extern(Windows):
	final void Release(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.ILimiterEffectDefinition).set_Release(value));
	}
	final UINT32 Release()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ILimiterEffectDefinition).get_Release(&_ret));
		return _ret;
	}
	final void Loudness(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.ILimiterEffectDefinition).set_Loudness(value));
	}
	final UINT32 Loudness()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.ILimiterEffectDefinition).get_Loudness(&_ret));
		return _ret;
	}
	final HSTRING ActivatableClassId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffectDefinition).get_ActivatableClassId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffectDefinition).get_Properties(&_ret));
		return _ret;
	}
	static Windows.Media.Audio.LimiterEffectDefinition New(Windows.Media.Audio.AudioGraph audioGraph)
	{
		auto factory = factory!(Windows.Media.Audio.ILimiterEffectDefinitionFactory);
		Windows.Media.Audio.LimiterEffectDefinition _ret;
		Debug.OK(factory.as!(Windows.Media.Audio.ILimiterEffectDefinitionFactory).abi_Create(audioGraph, &_ret));
		return _ret;
	}
}

interface ReverbEffectDefinition : Windows.Media.Audio.IReverbEffectDefinition, Windows.Media.Effects.IAudioEffectDefinition
{
extern(Windows):
	final void WetDryMix(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_WetDryMix(value));
	}
	final double WetDryMix()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_WetDryMix(&_ret));
		return _ret;
	}
	final void ReflectionsDelay(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_ReflectionsDelay(value));
	}
	final UINT32 ReflectionsDelay()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_ReflectionsDelay(&_ret));
		return _ret;
	}
	final void ReverbDelay(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_ReverbDelay(value));
	}
	final ubyte ReverbDelay()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_ReverbDelay(&_ret));
		return _ret;
	}
	final void RearDelay(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_RearDelay(value));
	}
	final ubyte RearDelay()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_RearDelay(&_ret));
		return _ret;
	}
	final void PositionLeft(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_PositionLeft(value));
	}
	final ubyte PositionLeft()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_PositionLeft(&_ret));
		return _ret;
	}
	final void PositionRight(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_PositionRight(value));
	}
	final ubyte PositionRight()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_PositionRight(&_ret));
		return _ret;
	}
	final void PositionMatrixLeft(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_PositionMatrixLeft(value));
	}
	final ubyte PositionMatrixLeft()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_PositionMatrixLeft(&_ret));
		return _ret;
	}
	final void PositionMatrixRight(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_PositionMatrixRight(value));
	}
	final ubyte PositionMatrixRight()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_PositionMatrixRight(&_ret));
		return _ret;
	}
	final void EarlyDiffusion(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_EarlyDiffusion(value));
	}
	final ubyte EarlyDiffusion()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_EarlyDiffusion(&_ret));
		return _ret;
	}
	final void LateDiffusion(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_LateDiffusion(value));
	}
	final ubyte LateDiffusion()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_LateDiffusion(&_ret));
		return _ret;
	}
	final void LowEQGain(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_LowEQGain(value));
	}
	final ubyte LowEQGain()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_LowEQGain(&_ret));
		return _ret;
	}
	final void LowEQCutoff(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_LowEQCutoff(value));
	}
	final ubyte LowEQCutoff()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_LowEQCutoff(&_ret));
		return _ret;
	}
	final void HighEQGain(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_HighEQGain(value));
	}
	final ubyte HighEQGain()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_HighEQGain(&_ret));
		return _ret;
	}
	final void HighEQCutoff(ubyte value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_HighEQCutoff(value));
	}
	final ubyte HighEQCutoff()
	{
		ubyte _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_HighEQCutoff(&_ret));
		return _ret;
	}
	final void RoomFilterFreq(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_RoomFilterFreq(value));
	}
	final double RoomFilterFreq()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_RoomFilterFreq(&_ret));
		return _ret;
	}
	final void RoomFilterMain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_RoomFilterMain(value));
	}
	final double RoomFilterMain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_RoomFilterMain(&_ret));
		return _ret;
	}
	final void RoomFilterHF(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_RoomFilterHF(value));
	}
	final double RoomFilterHF()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_RoomFilterHF(&_ret));
		return _ret;
	}
	final void ReflectionsGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_ReflectionsGain(value));
	}
	final double ReflectionsGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_ReflectionsGain(&_ret));
		return _ret;
	}
	final void ReverbGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_ReverbGain(value));
	}
	final double ReverbGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_ReverbGain(&_ret));
		return _ret;
	}
	final void DecayTime(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_DecayTime(value));
	}
	final double DecayTime()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_DecayTime(&_ret));
		return _ret;
	}
	final void Density(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_Density(value));
	}
	final double Density()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_Density(&_ret));
		return _ret;
	}
	final void RoomSize(double value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_RoomSize(value));
	}
	final double RoomSize()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_RoomSize(&_ret));
		return _ret;
	}
	final void DisableLateField(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).set_DisableLateField(value));
	}
	final bool DisableLateField()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Audio.IReverbEffectDefinition).get_DisableLateField(&_ret));
		return _ret;
	}
	final HSTRING ActivatableClassId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffectDefinition).get_ActivatableClassId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Media.Effects.IAudioEffectDefinition).get_Properties(&_ret));
		return _ret;
	}
	static Windows.Media.Audio.ReverbEffectDefinition New(Windows.Media.Audio.AudioGraph audioGraph)
	{
		auto factory = factory!(Windows.Media.Audio.IReverbEffectDefinitionFactory);
		Windows.Media.Audio.ReverbEffectDefinition _ret;
		Debug.OK(factory.as!(Windows.Media.Audio.IReverbEffectDefinitionFactory).abi_Create(audioGraph, &_ret));
		return _ret;
	}
}

enum AudioDeviceNodeCreationStatus
{
	Success = 0,
	DeviceNotAvailable = 1,
	FormatNotSupported = 2,
	UnknownFailure = 3,
	AccessDenied = 4
}

enum AudioFileNodeCreationStatus
{
	Success = 0,
	FileNotFound = 1,
	InvalidFileType = 2,
	FormatNotSupported = 3,
	UnknownFailure = 4
}

enum AudioGraphCreationStatus
{
	Success = 0,
	DeviceNotAvailable = 1,
	FormatNotSupported = 2,
	UnknownFailure = 3
}

enum AudioGraphUnrecoverableError
{
	None = 0,
	AudioDeviceLost = 1,
	AudioSessionDisconnected = 2,
	UnknownFailure = 3
}

enum AudioNodeEmitterDecayKind
{
	Natural = 0,
	Custom = 1
}

@bitflags
enum AudioNodeEmitterSettings
{
	None = 0x0,
	DisableDoppler = 0x1
}

enum AudioNodeEmitterShapeKind
{
	Omnidirectional = 0,
	Cone = 1
}

enum QuantumSizeSelectionMode
{
	SystemDefault = 0,
	LowestLatency = 1,
	ClosestToDesired = 2
}

enum SpatialAudioModel
{
	ObjectBased = 0,
	FoldDown = 1
}