module Windows.Media.Audio;

import dwinrt;

@uuid("b01b6be1-6f4e-49e2-ac01-559d62beb3a9")
@WinrtFactory("Windows.Media.Audio.AudioDeviceInputNode")
interface IAudioDeviceInputNode : IInspectable
{
extern(Windows):
	HRESULT get_Device(Windows.Devices.Enumeration.DeviceInformation* return_value);
}

@uuid("362edbff-ff1c-4434-9e0f-bd2ef522ac82")
@WinrtFactory("Windows.Media.Audio.AudioDeviceOutputNode")
interface IAudioDeviceOutputNode : IInspectable
{
extern(Windows):
	HRESULT get_Device(Windows.Devices.Enumeration.DeviceInformation* return_value);
}

@uuid("905b67c8-6f65-4cd4-8890-4694843c276d")
@WinrtFactory("Windows.Media.Audio.AudioFileInputNode")
interface IAudioFileInputNode : IInspectable
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

@uuid("50e01980-5166-4093-80f8-ada00089e9cf")
@WinrtFactory("Windows.Media.Audio.AudioFileOutputNode")
interface IAudioFileOutputNode : IInspectable
{
extern(Windows):
	HRESULT get_File(Windows.Storage.IStorageFile* return_value);
	HRESULT get_FileEncodingProfile(Windows.Media.MediaProperties.MediaEncodingProfile* return_value);
	HRESULT abi_FinalizeAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Transcoding.TranscodeFailureReason)* return_result);
}

@uuid("dc7c829e-0208-4504-a5a8-f0f268920a65")
@WinrtFactory("Windows.Media.Audio.AudioFrameCompletedEventArgs")
interface IAudioFrameCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Frame(Windows.Media.AudioFrame* return_value);
}

@uuid("01b266c7-fd96-4ff5-a3c5-d27a9bf44237")
@WinrtFactory("Windows.Media.Audio.AudioFrameInputNode")
interface IAudioFrameInputNode : IInspectable
{
extern(Windows):
	HRESULT set_PlaybackSpeedFactor(double value);
	HRESULT get_PlaybackSpeedFactor(double* return_value);
	HRESULT abi_AddFrame(Windows.Media.AudioFrame frame);
	HRESULT abi_DiscardQueuedFrames();
	HRESULT get_QueuedSampleCount(UINT64* return_value);
	HRESULT add_AudioFrameCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioFrameInputNode, Windows.Media.Audio.AudioFrameCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AudioFrameCompleted(EventRegistrationToken token);
	HRESULT add_QuantumStarted(Windows.Foundation.TypedEventHandler!(Windows.Media.Audio.AudioFrameInputNode, Windows.Media.Audio.FrameInputNodeQuantumStartedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_QuantumStarted(EventRegistrationToken token);
}

@uuid("b847371b-3299-45f5-88b3-c9d12a3f1cc8")
@WinrtFactory("Windows.Media.Audio.AudioFrameOutputNode")
interface IAudioFrameOutputNode : IInspectable
{
extern(Windows):
	HRESULT abi_GetFrame(Windows.Media.AudioFrame* return_audioFrame);
}

@uuid("1ad46eed-e48c-4e14-9660-2c4f83e9cdd8")
@WinrtFactory("Windows.Media.Audio.AudioGraph")
interface IAudioGraph : IInspectable
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
	HRESULT get_CompletedQuantumCount(UINT64* return_value);
	HRESULT get_EncodingProperties(Windows.Media.MediaProperties.AudioEncodingProperties* return_value);
	HRESULT get_LatencyInSamples(INT32* return_value);
	HRESULT get_PrimaryRenderDevice(Windows.Devices.Enumeration.DeviceInformation* return_value);
	HRESULT get_RenderDeviceAudioProcessing(Windows.Media.AudioProcessing* return_value);
	HRESULT get_SamplesPerQuantum(INT32* return_value);
}

@uuid("4e4c3bd5-4fc1-45f6-a947-3cd38f4fd839")
@WinrtFactory("Windows.Media.Audio.AudioGraph")
interface IAudioGraph2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateFrameInputNodeWithFormatAndEmitter(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Media.Audio.AudioNodeEmitter emitter, Windows.Media.Audio.AudioFrameInputNode* return_frameInputNode);
	HRESULT abi_CreateDeviceInputNodeWithFormatAndEmitterOnDeviceAsync(Windows.Media.Capture.MediaCategory category, Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Devices.Enumeration.DeviceInformation device, Windows.Media.Audio.AudioNodeEmitter emitter, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioDeviceInputNodeResult)* return_result);
	HRESULT abi_CreateFileInputNodeWithEmitterAsync(Windows.Storage.IStorageFile file, Windows.Media.Audio.AudioNodeEmitter emitter, Windows.Foundation.IAsyncOperation!(Windows.Media.Audio.CreateAudioFileInputNodeResult)* return_result);
	HRESULT abi_CreateSubmixNodeWithFormatAndEmitter(Windows.Media.MediaProperties.AudioEncodingProperties encodingProperties, Windows.Media.Audio.AudioNodeEmitter emitter, Windows.Media.Audio.AudioSubmixNode* return_submixNode);
	HRESULT abi_CreateBatchUpdater(Windows.Media.Audio.AudioGraphBatchUpdater* return_updater);
}

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
interface IAudioInputNode : IInspectable
{
extern(Windows):
	HRESULT get_OutgoingConnections(Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.AudioGraphConnection)* return_value);
	HRESULT abi_AddOutgoingConnection(Windows.Media.Audio.IAudioNode destination);
	HRESULT abi_AddOutgoingConnectionWithGain(Windows.Media.Audio.IAudioNode destination, double gain);
	HRESULT abi_RemoveOutgoingConnection(Windows.Media.Audio.IAudioNode destination);
}

@uuid("905156b7-ca68-4c6d-a8bc-e3ee17fe3fd2")
interface IAudioInputNode2 : IInspectable
{
extern(Windows):
	HRESULT get_Emitter(Windows.Media.Audio.AudioNodeEmitter* return_value);
}

@uuid("15389d7f-dbd8-4819-bf03-668e9357cd6d")
interface IAudioNode : IInspectable
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
interface IAudioNodeWithListener : IInspectable
{
extern(Windows):
	HRESULT set_Listener(Windows.Media.Audio.AudioNodeListener value);
	HRESULT get_Listener(Windows.Media.Audio.AudioNodeListener* return_value);
}

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
interface IEchoEffectDefinition : IInspectable
{
extern(Windows):
	HRESULT set_WetDryMix(double value);
	HRESULT get_WetDryMix(double* return_value);
	HRESULT set_Feedback(double value);
	HRESULT get_Feedback(double* return_value);
	HRESULT set_Delay(double value);
	HRESULT get_Delay(double* return_value);
}

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
interface IEqualizerEffectDefinition : IInspectable
{
extern(Windows):
	HRESULT get_Bands(Windows.Foundation.Collections.IVectorView!(Windows.Media.Audio.EqualizerBand)* return_value);
}

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
interface ILimiterEffectDefinition : IInspectable
{
extern(Windows):
	HRESULT set_Release(UINT32 value);
	HRESULT get_Release(UINT32* return_value);
	HRESULT set_Loudness(UINT32 value);
	HRESULT get_Loudness(UINT32* return_value);
}

@uuid("ecbae6f1-61ff-45ef-b8f5-48659a57c72d")
@WinrtFactory("Windows.Media.Audio.LimiterEffectDefinition")
interface ILimiterEffectDefinitionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.Audio.AudioGraph audioGraph, Windows.Media.Audio.LimiterEffectDefinition* return_value);
}

@uuid("4606aa89-f563-4d0a-8f6e-f0cddff35d84")
@WinrtFactory("Windows.Media.Audio.ReverbEffectDefinition")
interface IReverbEffectDefinition : IInspectable
{
extern(Windows):
	HRESULT set_WetDryMix(double value);
	HRESULT get_WetDryMix(double* return_value);
	HRESULT set_ReflectionsDelay(UINT32 value);
	HRESULT get_ReflectionsDelay(UINT32* return_value);
	HRESULT set_ReverbDelay(BYTE value);
	HRESULT get_ReverbDelay(BYTE* return_value);
	HRESULT set_RearDelay(BYTE value);
	HRESULT get_RearDelay(BYTE* return_value);
	HRESULT set_PositionLeft(BYTE value);
	HRESULT get_PositionLeft(BYTE* return_value);
	HRESULT set_PositionRight(BYTE value);
	HRESULT get_PositionRight(BYTE* return_value);
	HRESULT set_PositionMatrixLeft(BYTE value);
	HRESULT get_PositionMatrixLeft(BYTE* return_value);
	HRESULT set_PositionMatrixRight(BYTE value);
	HRESULT get_PositionMatrixRight(BYTE* return_value);
	HRESULT set_EarlyDiffusion(BYTE value);
	HRESULT get_EarlyDiffusion(BYTE* return_value);
	HRESULT set_LateDiffusion(BYTE value);
	HRESULT get_LateDiffusion(BYTE* return_value);
	HRESULT set_LowEQGain(BYTE value);
	HRESULT get_LowEQGain(BYTE* return_value);
	HRESULT set_LowEQCutoff(BYTE value);
	HRESULT get_LowEQCutoff(BYTE* return_value);
	HRESULT set_HighEQGain(BYTE value);
	HRESULT get_HighEQGain(BYTE* return_value);
	HRESULT set_HighEQCutoff(BYTE value);
	HRESULT get_HighEQCutoff(BYTE* return_value);
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

@uuid("a7d5cbfe-100b-4ff0-9da6-dc4e05a759f0")
@WinrtFactory("Windows.Media.Audio.ReverbEffectDefinition")
interface IReverbEffectDefinitionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Media.Audio.AudioGraph audioGraph, Windows.Media.Audio.ReverbEffectDefinition* return_value);
}

interface AudioDeviceInputNode : Windows.Media.Audio.IAudioDeviceInputNode, Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioInputNode2
{
}

interface AudioDeviceOutputNode : Windows.Media.Audio.IAudioDeviceOutputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioNodeWithListener
{
}

interface AudioFileInputNode : Windows.Media.Audio.IAudioFileInputNode, Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioInputNode2
{
}

interface AudioFileOutputNode : Windows.Media.Audio.IAudioFileOutputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable
{
}

interface AudioFrameCompletedEventArgs : Windows.Media.Audio.IAudioFrameCompletedEventArgs
{
}

interface AudioFrameInputNode : Windows.Media.Audio.IAudioFrameInputNode, Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioInputNode2
{
}

interface AudioFrameOutputNode : Windows.Media.Audio.IAudioFrameOutputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable
{
}

interface AudioGraph : Windows.Media.Audio.IAudioGraph, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioGraph2
{
}

interface AudioGraphBatchUpdater : Windows.Foundation.IClosable
{
}

interface AudioGraphConnection : Windows.Media.Audio.IAudioGraphConnection
{
}

interface AudioGraphSettings : Windows.Media.Audio.IAudioGraphSettings
{
}

interface AudioGraphUnrecoverableErrorOccurredEventArgs : Windows.Media.Audio.IAudioGraphUnrecoverableErrorOccurredEventArgs
{
}

interface AudioNodeEmitter : Windows.Media.Audio.IAudioNodeEmitter, Windows.Media.Audio.IAudioNodeEmitter2
{
}

interface AudioNodeEmitterConeProperties : Windows.Media.Audio.IAudioNodeEmitterConeProperties
{
}

interface AudioNodeEmitterDecayModel : Windows.Media.Audio.IAudioNodeEmitterDecayModel
{
}

interface AudioNodeEmitterNaturalDecayModelProperties : Windows.Media.Audio.IAudioNodeEmitterNaturalDecayModelProperties
{
}

interface AudioNodeEmitterShape : Windows.Media.Audio.IAudioNodeEmitterShape
{
}

interface AudioNodeListener : Windows.Media.Audio.IAudioNodeListener
{
}

interface AudioSubmixNode : Windows.Media.Audio.IAudioInputNode, Windows.Media.Audio.IAudioNode, Windows.Foundation.IClosable, Windows.Media.Audio.IAudioInputNode2
{
}

interface CreateAudioDeviceInputNodeResult : Windows.Media.Audio.ICreateAudioDeviceInputNodeResult
{
}

interface CreateAudioDeviceOutputNodeResult : Windows.Media.Audio.ICreateAudioDeviceOutputNodeResult
{
}

interface CreateAudioFileInputNodeResult : Windows.Media.Audio.ICreateAudioFileInputNodeResult
{
}

interface CreateAudioFileOutputNodeResult : Windows.Media.Audio.ICreateAudioFileOutputNodeResult
{
}

interface CreateAudioGraphResult : Windows.Media.Audio.ICreateAudioGraphResult
{
}

interface EchoEffectDefinition : Windows.Media.Audio.IEchoEffectDefinition, Windows.Media.Effects.IAudioEffectDefinition
{
}

interface EqualizerBand : Windows.Media.Audio.IEqualizerBand
{
}

interface EqualizerEffectDefinition : Windows.Media.Audio.IEqualizerEffectDefinition, Windows.Media.Effects.IAudioEffectDefinition
{
}

interface FrameInputNodeQuantumStartedEventArgs : Windows.Media.Audio.IFrameInputNodeQuantumStartedEventArgs
{
}

interface LimiterEffectDefinition : Windows.Media.Audio.ILimiterEffectDefinition, Windows.Media.Effects.IAudioEffectDefinition
{
}

interface ReverbEffectDefinition : Windows.Media.Audio.IReverbEffectDefinition, Windows.Media.Effects.IAudioEffectDefinition
{
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