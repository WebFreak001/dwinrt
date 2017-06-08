module Windows.Media.Devices;

import dwinrt;

@uuid("596f759f-50df-4454-bc63-4d3d01b61958")
interface CallControlEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Devices.CallControl sender);
}

@uuid("5abbffdb-c21f-4bc4-891b-257e28c1b1a4")
interface DialRequestedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Devices.CallControl sender, Windows.Media.Devices.DialRequestedEventArgs e);
}

@uuid("e637a454-c527-422c-8926-c9af83b559a0")
interface KeypadPressedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Devices.CallControl sender, Windows.Media.Devices.KeypadPressedEventArgs e);
}

@uuid("baf257d1-4ebd-4b84-9f47-6ec43d75d8b1")
interface RedialRequestedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Devices.CallControl sender, Windows.Media.Devices.RedialRequestedEventArgs e);
}

@uuid("08f3863a-0018-445b-93d2-646d1c5ed05c")
@WinrtFactory("Windows.Media.Devices.AdvancedPhotoCaptureSettings")
interface IAdvancedPhotoCaptureSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Mode(Windows.Media.Devices.AdvancedPhotoMode* return_value);
	HRESULT set_Mode(Windows.Media.Devices.AdvancedPhotoMode value);
}

@uuid("c5b15486-9001-4682-9309-68eae0080eec")
@WinrtFactory("Windows.Media.Devices.AdvancedPhotoControl")
interface IAdvancedPhotoControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_SupportedModes(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AdvancedPhotoMode)* return_value);
	HRESULT get_Mode(Windows.Media.Devices.AdvancedPhotoMode* return_value);
	HRESULT abi_Configure(Windows.Media.Devices.AdvancedPhotoCaptureSettings settings);
}

@uuid("de6ff4d3-2b96-4583-80ab-b5b01dc6a8d7")
@WinrtFactory("Windows.Media.Devices.VideoDeviceController")
interface IAdvancedVideoCaptureDeviceController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetDeviceProperty(HSTRING propertyId, IInspectable propertyValue);
	HRESULT abi_GetDeviceProperty(HSTRING propertyId, IInspectable* return_propertyValue);
}

@uuid("8bb94f8f-f11a-43db-b402-11930b80ae56")
@WinrtFactory("Windows.Media.Devices.VideoDeviceController")
interface IAdvancedVideoCaptureDeviceController2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LowLagPhotoSequence(Windows.Media.Devices.LowLagPhotoSequenceControl* return_value);
	HRESULT get_LowLagPhoto(Windows.Media.Devices.LowLagPhotoControl* return_value);
	HRESULT get_SceneModeControl(Windows.Media.Devices.SceneModeControl* return_value);
	HRESULT get_TorchControl(Windows.Media.Devices.TorchControl* return_value);
	HRESULT get_FlashControl(Windows.Media.Devices.FlashControl* return_value);
	HRESULT get_WhiteBalanceControl(Windows.Media.Devices.WhiteBalanceControl* return_value);
	HRESULT get_ExposureControl(Windows.Media.Devices.ExposureControl* return_value);
	HRESULT get_FocusControl(Windows.Media.Devices.FocusControl* return_value);
	HRESULT get_ExposureCompensationControl(Windows.Media.Devices.ExposureCompensationControl* return_value);
	HRESULT get_IsoSpeedControl(Windows.Media.Devices.IsoSpeedControl* return_value);
	HRESULT get_RegionsOfInterestControl(Windows.Media.Devices.RegionsOfInterestControl* return_value);
	HRESULT get_PrimaryUse(Windows.Media.Devices.CaptureUse* return_value);
	HRESULT set_PrimaryUse(Windows.Media.Devices.CaptureUse value);
}

@uuid("a98b8f34-ee0d-470c-b9f0-4229c4bbd089")
@WinrtFactory("Windows.Media.Devices.VideoDeviceController")
interface IAdvancedVideoCaptureDeviceController3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_VariablePhotoSequenceController(Windows.Media.Devices.Core.VariablePhotoSequenceController* return_value);
	HRESULT get_PhotoConfirmationControl(Windows.Media.Devices.PhotoConfirmationControl* return_value);
	HRESULT get_ZoomControl(Windows.Media.Devices.ZoomControl* return_value);
}

@uuid("ea9fbfaf-d371-41c3-9a17-824a87ebdfd2")
@WinrtFactory("Windows.Media.Devices.VideoDeviceController")
interface IAdvancedVideoCaptureDeviceController4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ExposurePriorityVideoControl(Windows.Media.Devices.ExposurePriorityVideoControl* return_value);
	HRESULT get_DesiredOptimization(Windows.Media.Devices.MediaCaptureOptimization* return_value);
	HRESULT set_DesiredOptimization(Windows.Media.Devices.MediaCaptureOptimization value);
	HRESULT get_HdrVideoControl(Windows.Media.Devices.HdrVideoControl* return_value);
	HRESULT get_OpticalImageStabilizationControl(Windows.Media.Devices.OpticalImageStabilizationControl* return_value);
	HRESULT get_AdvancedPhotoControl(Windows.Media.Devices.AdvancedPhotoControl* return_value);
}

@uuid("33512b17-b9cb-4a23-b875-f9eaab535492")
@WinrtFactory("Windows.Media.Devices.VideoDeviceController")
interface IAdvancedVideoCaptureDeviceController5 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT abi_GetDevicePropertyById(HSTRING propertyId, Windows.Foundation.IReference!(UINT32) maxPropertyValueSize, Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult* return_value);
	HRESULT abi_SetDevicePropertyById(HSTRING propertyId, IInspectable propertyValue, Windows.Media.Devices.VideoDeviceControllerSetDevicePropertyStatus* return_value);
	HRESULT abi_GetDevicePropertyByExtendedId(UINT32 __extendedPropertyIdSize, BYTE* extendedPropertyId, Windows.Foundation.IReference!(UINT32) maxPropertyValueSize, Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult* return_value);
	HRESULT abi_SetDevicePropertyByExtendedId(UINT32 __extendedPropertyIdSize, BYTE* extendedPropertyId, UINT32 __propertyValueSize, BYTE* propertyValue, Windows.Media.Devices.VideoDeviceControllerSetDevicePropertyStatus* return_value);
}

@uuid("edd4a388-79c7-4f7c-90e8-ef934b21580a")
@WinrtFactory("Windows.Media.Devices.AudioDeviceController")
interface IAudioDeviceController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Muted(bool value);
	HRESULT get_Muted(bool* return_value);
	HRESULT set_VolumePercent(FLOAT value);
	HRESULT get_VolumePercent(FLOAT* return_value);
}

@uuid("86cfac36-47c1-4b33-9852-8773ec4be123")
@WinrtFactory("Windows.Media.Devices.AudioDeviceModule")
interface IAudioDeviceModule : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ClassId(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_InstanceId(UINT32* return_value);
	HRESULT get_MajorVersion(UINT32* return_value);
	HRESULT get_MinorVersion(UINT32* return_value);
	HRESULT abi_SendCommandAsync(Windows.Storage.Streams.IBuffer Command, Windows.Foundation.IAsyncOperation!(Windows.Media.Devices.ModuleCommandResult)* return_operation);
}

@uuid("e3e3ccaf-224c-48be-956b-9a13134e96e8")
@WinrtFactory("Windows.Media.Devices.AudioDeviceModuleNotificationEventArgs")
interface IAudioDeviceModuleNotificationEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Module(Windows.Media.Devices.AudioDeviceModule* return_value);
	HRESULT get_NotificationData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("6aa40c4d-960a-4d1c-b318-0022604547ed")
@WinrtFactory("Windows.Media.Devices.AudioDeviceModulesManager")
interface IAudioDeviceModulesManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_ModuleNotificationReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Devices.AudioDeviceModulesManager, Windows.Media.Devices.AudioDeviceModuleNotificationEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ModuleNotificationReceived(EventRegistrationToken token);
	HRESULT abi_FindAllById(HSTRING moduleId, Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AudioDeviceModule)* return_modules);
	HRESULT abi_FindAll(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AudioDeviceModule)* return_modules);
}

@uuid("8db03670-e64d-4773-96c0-bc7ebf0e063f")
@WinrtFactory("Windows.Media.Devices.AudioDeviceModulesManager")
interface IAudioDeviceModulesManagerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING deviceId, Windows.Media.Devices.AudioDeviceModulesManager* return_result);
}

@uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578")
@WinrtFactory("Windows.Media.Devices.CallControl")
interface ICallControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IndicateNewIncomingCall(bool enableRinger, HSTRING callerId, UINT64* return_callToken);
	HRESULT abi_IndicateNewOutgoingCall(UINT64* return_callToken);
	HRESULT abi_IndicateActiveCall(UINT64 callToken);
	HRESULT abi_EndCall(UINT64 callToken);
	HRESULT get_HasRinger(bool* return_value);
	HRESULT add_AnswerRequested(Windows.Media.Devices.CallControlEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_AnswerRequested(EventRegistrationToken token);
	HRESULT add_HangUpRequested(Windows.Media.Devices.CallControlEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_HangUpRequested(EventRegistrationToken token);
	HRESULT add_DialRequested(Windows.Media.Devices.DialRequestedEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_DialRequested(EventRegistrationToken token);
	HRESULT add_RedialRequested(Windows.Media.Devices.RedialRequestedEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_RedialRequested(EventRegistrationToken token);
	HRESULT add_KeypadPressed(Windows.Media.Devices.KeypadPressedEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_KeypadPressed(EventRegistrationToken token);
	HRESULT add_AudioTransferRequested(Windows.Media.Devices.CallControlEventHandler handler, EventRegistrationToken* return_token);
	HRESULT remove_AudioTransferRequested(EventRegistrationToken token);
}

@uuid("03945ad5-85ab-40e1-af19-56c94303b019")
@WinrtFactory("Windows.Media.Devices.CallControl")
interface ICallControlStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.Media.Devices.CallControl* return_callControl);
	HRESULT abi_FromId(HSTRING deviceId, Windows.Media.Devices.CallControl* return_callControl);
}

@uuid("110f882f-1c05-4657-a18e-47c9b69f07ab")
interface IDefaultAudioDeviceChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Role(Windows.Media.Devices.AudioDeviceRole* return_value);
}

@uuid("037b929e-953c-4286-8866-4f0f376c855a")
@WinrtFactory("Windows.Media.Devices.DialRequestedEventArgs")
interface IDialRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Handled();
	HRESULT get_Contact(IInspectable* return_value);
}

@uuid("81c8e834-dcec-4011-a610-1f3847e64aca")
@WinrtFactory("Windows.Media.Devices.ExposureCompensationControl")
interface IExposureCompensationControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(FLOAT* return_value);
	HRESULT get_Max(FLOAT* return_value);
	HRESULT get_Step(FLOAT* return_value);
	HRESULT get_Value(FLOAT* return_value);
	HRESULT abi_SetValueAsync(FLOAT value, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2")
@WinrtFactory("Windows.Media.Devices.ExposureControl")
interface IExposureControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Auto(bool* return_value);
	HRESULT abi_SetAutoAsync(bool value, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT get_Min(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Max(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Step(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Value(Windows.Foundation.TimeSpan* return_value);
	HRESULT abi_SetValueAsync(Windows.Foundation.TimeSpan shutterDuration, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("2cb240a3-5168-4271-9ea5-47621a98a352")
@WinrtFactory("Windows.Media.Devices.ExposurePriorityVideoControl")
interface IExposurePriorityVideoControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Enabled(bool* return_value);
	HRESULT set_Enabled(bool value);
}

@uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0")
@WinrtFactory("Windows.Media.Devices.FlashControl")
interface IFlashControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_PowerSupported(bool* return_value);
	HRESULT get_RedEyeReductionSupported(bool* return_value);
	HRESULT get_Enabled(bool* return_value);
	HRESULT set_Enabled(bool value);
	HRESULT get_Auto(bool* return_value);
	HRESULT set_Auto(bool value);
	HRESULT get_RedEyeReduction(bool* return_value);
	HRESULT set_RedEyeReduction(bool value);
	HRESULT get_PowerPercent(FLOAT* return_value);
	HRESULT set_PowerPercent(FLOAT value);
}

@uuid("7d29cc9e-75e1-4af7-bd7d-4e38e1c06cd6")
@WinrtFactory("Windows.Media.Devices.FlashControl")
interface IFlashControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AssistantLightSupported(bool* return_value);
	HRESULT get_AssistantLightEnabled(bool* return_value);
	HRESULT set_AssistantLightEnabled(bool value);
}

@uuid("c0d889f6-5228-4453-b153-85606592b238")
@WinrtFactory("Windows.Media.Devices.FocusControl")
interface IFocusControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_SupportedPresets(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.FocusPreset)* return_value);
	HRESULT get_Preset(Windows.Media.Devices.FocusPreset* return_value);
	HRESULT abi_SetPresetAsync(Windows.Media.Devices.FocusPreset preset, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_SetPresetWithCompletionOptionAsync(Windows.Media.Devices.FocusPreset preset, bool completeBeforeFocus, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT get_Min(UINT32* return_value);
	HRESULT get_Max(UINT32* return_value);
	HRESULT get_Step(UINT32* return_value);
	HRESULT get_Value(UINT32* return_value);
	HRESULT abi_SetValueAsync(UINT32 focus, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_FocusAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07")
@WinrtFactory("Windows.Media.Devices.FocusControl")
interface IFocusControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FocusChangedSupported(bool* return_value);
	HRESULT get_WaitForFocusSupported(bool* return_value);
	HRESULT get_SupportedFocusModes(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.FocusMode)* return_value);
	HRESULT get_SupportedFocusDistances(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.ManualFocusDistance)* return_value);
	HRESULT get_SupportedFocusRanges(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AutoFocusRange)* return_value);
	HRESULT get_Mode(Windows.Media.Devices.FocusMode* return_value);
	HRESULT get_FocusState(Windows.Media.Devices.MediaCaptureFocusState* return_value);
	HRESULT abi_UnlockAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_LockAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_Configure(Windows.Media.Devices.FocusSettings settings);
}

@uuid("79958f6b-3263-4275-85d6-aeae891c96ee")
@WinrtFactory("Windows.Media.Devices.FocusSettings")
interface IFocusSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Mode(Windows.Media.Devices.FocusMode* return_value);
	HRESULT set_Mode(Windows.Media.Devices.FocusMode value);
	HRESULT get_AutoFocusRange(Windows.Media.Devices.AutoFocusRange* return_value);
	HRESULT set_AutoFocusRange(Windows.Media.Devices.AutoFocusRange value);
	HRESULT get_Value(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT set_Value(Windows.Foundation.IReference!(UINT32) value);
	HRESULT get_Distance(Windows.Foundation.IReference!(Windows.Media.Devices.ManualFocusDistance)* return_value);
	HRESULT set_Distance(Windows.Foundation.IReference!(Windows.Media.Devices.ManualFocusDistance) value);
	HRESULT get_WaitForFocus(bool* return_value);
	HRESULT set_WaitForFocus(bool value);
	HRESULT get_DisableDriverFallback(bool* return_value);
	HRESULT set_DisableDriverFallback(bool value);
}

@uuid("55d8e2d0-30c0-43bf-9b9a-9799d70ced94")
@WinrtFactory("Windows.Media.Devices.HdrVideoControl")
interface IHdrVideoControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_SupportedModes(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.HdrVideoMode)* return_value);
	HRESULT get_Mode(Windows.Media.Devices.HdrVideoMode* return_value);
	HRESULT set_Mode(Windows.Media.Devices.HdrVideoMode value);
}

@uuid("27b6c322-25ad-4f1b-aaab-524ab376ca33")
@WinrtFactory("Windows.Media.Devices.IsoSpeedControl")
interface IIsoSpeedControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	deprecated("SupportedPresets may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
	HRESULT get_SupportedPresets(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.IsoSpeedPreset)* return_value);
	deprecated("Preset may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
	HRESULT get_Preset(Windows.Media.Devices.IsoSpeedPreset* return_value);
	deprecated("SetPresetAsync may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
	HRESULT abi_SetPresetAsync(Windows.Media.Devices.IsoSpeedPreset preset, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("6f1578f2-6d77-4f8a-8c2f-6130b6395053")
@WinrtFactory("Windows.Media.Devices.IsoSpeedControl")
interface IIsoSpeedControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Min(UINT32* return_value);
	HRESULT get_Max(UINT32* return_value);
	HRESULT get_Step(UINT32* return_value);
	HRESULT get_Value(UINT32* return_value);
	HRESULT abi_SetValueAsync(UINT32 isoSpeed, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT get_Auto(bool* return_value);
	HRESULT abi_SetAutoAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("d3a43900-b4fa-49cd-9442-89af6568f601")
@WinrtFactory("Windows.Media.Devices.KeypadPressedEventArgs")
interface IKeypadPressedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TelephonyKey(Windows.Media.Devices.TelephonyKey* return_telephonyKey);
}

@uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9")
@WinrtFactory("Windows.Media.Devices.LowLagPhotoControl")
interface ILowLagPhotoControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetHighestConcurrentFrameRate(Windows.Media.MediaProperties.IMediaEncodingProperties captureProperties, Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT abi_GetCurrentFrameRate(Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT get_ThumbnailEnabled(bool* return_value);
	HRESULT set_ThumbnailEnabled(bool value);
	HRESULT get_ThumbnailFormat(Windows.Media.MediaProperties.MediaThumbnailFormat* return_value);
	HRESULT set_ThumbnailFormat(Windows.Media.MediaProperties.MediaThumbnailFormat value);
	HRESULT get_DesiredThumbnailSize(UINT32* return_value);
	HRESULT set_DesiredThumbnailSize(UINT32 value);
	HRESULT get_HardwareAcceleratedThumbnailSupported(UINT32* return_value);
}

@uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6")
@WinrtFactory("Windows.Media.Devices.LowLagPhotoSequenceControl")
interface ILowLagPhotoSequenceControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_MaxPastPhotos(UINT32* return_value);
	HRESULT get_MaxPhotosPerSecond(FLOAT* return_value);
	HRESULT get_PastPhotoLimit(UINT32* return_value);
	HRESULT set_PastPhotoLimit(UINT32 value);
	HRESULT get_PhotosPerSecondLimit(FLOAT* return_value);
	HRESULT set_PhotosPerSecondLimit(FLOAT value);
	HRESULT abi_GetHighestConcurrentFrameRate(Windows.Media.MediaProperties.IMediaEncodingProperties captureProperties, Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT abi_GetCurrentFrameRate(Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT get_ThumbnailEnabled(bool* return_value);
	HRESULT set_ThumbnailEnabled(bool value);
	HRESULT get_ThumbnailFormat(Windows.Media.MediaProperties.MediaThumbnailFormat* return_value);
	HRESULT set_ThumbnailFormat(Windows.Media.MediaProperties.MediaThumbnailFormat value);
	HRESULT get_DesiredThumbnailSize(UINT32* return_value);
	HRESULT set_DesiredThumbnailSize(UINT32 value);
	HRESULT get_HardwareAcceleratedThumbnailSupported(UINT32* return_value);
}

@uuid("efa8dfa9-6f75-4863-ba0b-583f3036b4de")
@WinrtFactory("Windows.Media.Devices.MediaDeviceControl")
interface IMediaDeviceControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Capabilities(Windows.Media.Devices.MediaDeviceControlCapabilities* return_value);
	HRESULT abi_TryGetValue(double* out_value, bool* return_succeeded);
	HRESULT abi_TrySetValue(double value, bool* return_succeeded);
	HRESULT abi_TryGetAuto(bool* out_value, bool* return_succeeded);
	HRESULT abi_TrySetAuto(bool value, bool* return_succeeded);
}

@uuid("23005816-eb85-43e2-b92b-8240d5ee70ec")
@WinrtFactory("Windows.Media.Devices.MediaDeviceControlCapabilities")
interface IMediaDeviceControlCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(double* return_value);
	HRESULT get_Max(double* return_value);
	HRESULT get_Step(double* return_value);
	HRESULT get_Default(double* return_value);
	HRESULT get_AutoModeSupported(bool* return_value);
}

@uuid("f6f8f5ce-209a-48fb-86fc-d44578f317e6")
interface IMediaDeviceController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAvailableMediaStreamProperties(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaProperties.IMediaEncodingProperties)* return_value);
	HRESULT abi_GetMediaStreamProperties(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Media.MediaProperties.IMediaEncodingProperties* return_value);
	HRESULT abi_SetMediaStreamPropertiesAsync(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Media.MediaProperties.IMediaEncodingProperties mediaEncodingProperties, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("aa2d9a40-909f-4bba-bf8b-0c0d296f14f0")
@WinrtFactory("Windows.Media.Devices.MediaDevice")
interface IMediaDeviceStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetAudioCaptureSelector(HSTRING* return_selector);
	HRESULT abi_GetAudioRenderSelector(HSTRING* return_selector);
	HRESULT abi_GetVideoCaptureSelector(HSTRING* return_selector);
	HRESULT abi_GetDefaultAudioCaptureId(Windows.Media.Devices.AudioDeviceRole role, HSTRING* return_deviceId);
	HRESULT abi_GetDefaultAudioRenderId(Windows.Media.Devices.AudioDeviceRole role, HSTRING* return_deviceId);
	HRESULT add_DefaultAudioCaptureDeviceChanged(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.Media.Devices.DefaultAudioCaptureDeviceChangedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_DefaultAudioCaptureDeviceChanged(EventRegistrationToken cookie);
	HRESULT add_DefaultAudioRenderDeviceChanged(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.Media.Devices.DefaultAudioRenderDeviceChangedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_DefaultAudioRenderDeviceChanged(EventRegistrationToken cookie);
}

@uuid("520d1eb4-1374-4c7d-b1e4-39dcdf3eae4e")
@WinrtFactory("Windows.Media.Devices.ModuleCommandResult")
interface IModuleCommandResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Media.Devices.SendCommandStatus* return_value);
	HRESULT get_Result(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("bfad9c1d-00bc-423b-8eb2-a0178ca94247")
@WinrtFactory("Windows.Media.Devices.OpticalImageStabilizationControl")
interface IOpticalImageStabilizationControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_SupportedModes(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.OpticalImageStabilizationMode)* return_value);
	HRESULT get_Mode(Windows.Media.Devices.OpticalImageStabilizationMode* return_value);
	HRESULT set_Mode(Windows.Media.Devices.OpticalImageStabilizationMode value);
}

@uuid("c8f3f363-ff5e-4582-a9a8-0550f85a4a76")
@WinrtFactory("Windows.Media.Devices.PhotoConfirmationControl")
interface IPhotoConfirmationControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_pbSupported);
	HRESULT get_Enabled(bool* return_value);
	HRESULT set_Enabled(bool value);
	HRESULT get_PixelFormat(Windows.Media.MediaProperties.MediaPixelFormat* return_format);
	HRESULT set_PixelFormat(Windows.Media.MediaProperties.MediaPixelFormat format);
}

@uuid("7eb55209-76ab-4c31-b40e-4b58379d580c")
@WinrtFactory("Windows.Media.Devices.RedialRequestedEventArgs")
interface IRedialRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Handled();
}

@uuid("e5ecc834-ce66-4e05-a78f-cf391a5ec2d1")
@WinrtFactory("Windows.Media.Devices.RegionOfInterest")
interface IRegionOfInterest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AutoFocusEnabled(bool* return_value);
	HRESULT set_AutoFocusEnabled(bool value);
	HRESULT get_AutoWhiteBalanceEnabled(bool* return_value);
	HRESULT set_AutoWhiteBalanceEnabled(bool value);
	HRESULT get_AutoExposureEnabled(bool* return_value);
	HRESULT set_AutoExposureEnabled(bool value);
	HRESULT get_Bounds(Windows.Foundation.Rect* return_value);
	HRESULT set_Bounds(Windows.Foundation.Rect value);
}

@uuid("19fe2a91-73aa-4d51-8a9d-56ccf7db7f54")
@WinrtFactory("Windows.Media.Devices.RegionOfInterest")
interface IRegionOfInterest2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Type(Windows.Media.Devices.RegionOfInterestType* return_value);
	HRESULT set_Type(Windows.Media.Devices.RegionOfInterestType value);
	HRESULT get_BoundsNormalized(bool* return_value);
	HRESULT set_BoundsNormalized(bool value);
	HRESULT get_Weight(UINT32* return_value);
	HRESULT set_Weight(UINT32 value);
}

@uuid("c323f527-ab0b-4558-8b5b-df5693db0378")
@WinrtFactory("Windows.Media.Devices.RegionsOfInterestControl")
interface IRegionsOfInterestControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MaxRegions(UINT32* return_value);
	HRESULT abi_SetRegionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Media.Devices.RegionOfInterest) regions, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_SetRegionsWithLockAsync(Windows.Foundation.Collections.IIterable!(Windows.Media.Devices.RegionOfInterest) regions, bool lockValues, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_ClearRegionsAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT get_AutoFocusSupported(bool* return_value);
	HRESULT get_AutoWhiteBalanceSupported(bool* return_value);
	HRESULT get_AutoExposureSupported(bool* return_value);
}

@uuid("d48e5af7-8d59-4854-8c62-12c70ba89b7c")
@WinrtFactory("Windows.Media.Devices.SceneModeControl")
interface ISceneModeControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SupportedModes(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.CaptureSceneMode)* return_value);
	HRESULT get_Value(Windows.Media.Devices.CaptureSceneMode* return_value);
	HRESULT abi_SetValueAsync(Windows.Media.Devices.CaptureSceneMode sceneMode, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("a6053665-8250-416c-919a-724296afa306")
@WinrtFactory("Windows.Media.Devices.TorchControl")
interface ITorchControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_PowerSupported(bool* return_value);
	HRESULT get_Enabled(bool* return_value);
	HRESULT set_Enabled(bool value);
	HRESULT get_PowerPercent(FLOAT* return_value);
	HRESULT set_PowerPercent(FLOAT value);
}

@uuid("99555575-2e2e-40b8-b6c7-f82d10013210")
@WinrtFactory("Windows.Media.Devices.VideoDeviceController")
interface IVideoDeviceController : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Brightness(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT get_Contrast(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT get_Hue(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT get_WhiteBalance(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT get_BacklightCompensation(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT get_Pan(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT get_Tilt(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT get_Zoom(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT get_Roll(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT get_Exposure(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT get_Focus(Windows.Media.Devices.MediaDeviceControl* return_value);
	HRESULT abi_TrySetPowerlineFrequency(Windows.Media.Capture.PowerlineFrequency value, bool* return_succeeded);
	HRESULT abi_TryGetPowerlineFrequency(Windows.Media.Capture.PowerlineFrequency* out_value, bool* return_succeeded);
}

@uuid("c5d88395-6ed5-4790-8b5d-0ef13935d0f8")
@WinrtFactory("Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult")
interface IVideoDeviceControllerGetDevicePropertyResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyStatus* return_value);
	HRESULT get_Value(IInspectable* return_value);
}

@uuid("781f047e-7162-49c8-a8f9-9481c565363e")
@WinrtFactory("Windows.Media.Devices.WhiteBalanceControl")
interface IWhiteBalanceControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Preset(Windows.Media.Devices.ColorTemperaturePreset* return_value);
	HRESULT abi_SetPresetAsync(Windows.Media.Devices.ColorTemperaturePreset preset, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT get_Min(UINT32* return_value);
	HRESULT get_Max(UINT32* return_value);
	HRESULT get_Step(UINT32* return_value);
	HRESULT get_Value(UINT32* return_value);
	HRESULT abi_SetValueAsync(UINT32 temperature, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("3a1e0b12-32da-4c17-bfd7-8d0c73c8f5a5")
@WinrtFactory("Windows.Media.Devices.ZoomControl")
interface IZoomControl : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(FLOAT* return_value);
	HRESULT get_Max(FLOAT* return_value);
	HRESULT get_Step(FLOAT* return_value);
	HRESULT get_Value(FLOAT* return_value);
	HRESULT set_Value(FLOAT value);
}

@uuid("69843db0-2e99-4641-8529-184f319d1671")
@WinrtFactory("Windows.Media.Devices.ZoomControl")
interface IZoomControl2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SupportedModes(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.ZoomTransitionMode)* return_value);
	HRESULT get_Mode(Windows.Media.Devices.ZoomTransitionMode* return_value);
	HRESULT abi_Configure(Windows.Media.Devices.ZoomSettings settings);
}

@uuid("6ad66b24-14b4-4bfd-b18f-88fe24463b52")
@WinrtFactory("Windows.Media.Devices.ZoomSettings")
interface IZoomSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Mode(Windows.Media.Devices.ZoomTransitionMode* return_value);
	HRESULT set_Mode(Windows.Media.Devices.ZoomTransitionMode value);
	HRESULT get_Value(FLOAT* return_value);
	HRESULT set_Value(FLOAT value);
}

interface AdvancedPhotoCaptureSettings
{
}

interface AdvancedPhotoControl
{
}

interface AudioDeviceController
{
}

interface AudioDeviceModule
{
}

interface AudioDeviceModuleNotificationEventArgs
{
}

interface AudioDeviceModulesManager
{
}

interface CallControl
{
}

interface DefaultAudioCaptureDeviceChangedEventArgs
{
}

interface DefaultAudioRenderDeviceChangedEventArgs
{
}

interface DialRequestedEventArgs
{
}

interface ExposureCompensationControl
{
}

interface ExposureControl
{
}

interface ExposurePriorityVideoControl
{
}

interface FlashControl
{
}

interface FocusControl
{
}

interface FocusSettings
{
}

interface HdrVideoControl
{
}

interface IsoSpeedControl
{
}

interface KeypadPressedEventArgs
{
}

interface LowLagPhotoControl
{
}

interface LowLagPhotoSequenceControl
{
}

interface MediaDeviceControl
{
}

interface MediaDeviceControlCapabilities
{
}

interface ModuleCommandResult
{
}

interface OpticalImageStabilizationControl
{
}

interface PhotoConfirmationControl
{
}

interface RedialRequestedEventArgs
{
}

interface RegionOfInterest
{
}

interface RegionsOfInterestControl
{
}

interface SceneModeControl
{
}

interface TorchControl
{
}

interface VideoDeviceController
{
}

interface VideoDeviceControllerGetDevicePropertyResult
{
}

interface WhiteBalanceControl
{
}

interface ZoomControl
{
}

interface ZoomSettings
{
}

enum AdvancedPhotoMode
{
	Auto = 0,
	Standard = 1,
	Hdr = 2,
	LowLight = 3
}

enum AudioDeviceRole
{
	Default = 0,
	Communications = 1
}

enum AutoFocusRange
{
	FullRange = 0,
	Macro = 1,
	Normal = 2
}

enum CameraStreamState
{
	NotStreaming = 0,
	Streaming = 1,
	BlockedForPrivacy = 2,
	Shutdown = 3
}

enum CaptureSceneMode
{
	Auto = 0,
	Manual = 1,
	Macro = 2,
	Portrait = 3,
	Sport = 4,
	Snow = 5,
	Night = 6,
	Beach = 7,
	Sunset = 8,
	Candlelight = 9,
	Landscape = 10,
	NightPortrait = 11,
	Backlit = 12
}

enum CaptureUse
{
	None = 0,
	Photo = 1,
	Video = 2
}

enum ColorTemperaturePreset
{
	Auto = 0,
	Manual = 1,
	Cloudy = 2,
	Daylight = 3,
	Flash = 4,
	Fluorescent = 5,
	Tungsten = 6,
	Candlelight = 7
}

enum FocusMode
{
	Auto = 0,
	Single = 1,
	Continuous = 2,
	Manual = 3
}

enum FocusPreset
{
	Auto = 0,
	Manual = 1,
	AutoMacro = 2,
	AutoNormal = 3,
	AutoInfinity = 4,
	AutoHyperfocal = 5
}

enum HdrVideoMode
{
	Off = 0,
	On = 1,
	Auto = 2
}

enum IsoSpeedPreset
{
	Auto = 0,
	Iso50 = 1,
	Iso80 = 2,
	Iso100 = 3,
	Iso200 = 4,
	Iso400 = 5,
	Iso800 = 6,
	Iso1600 = 7,
	Iso3200 = 8,
	Iso6400 = 9,
	Iso12800 = 10,
	Iso25600 = 11
}

enum ManualFocusDistance
{
	Infinity = 0,
	Hyperfocal = 1,
	Nearest = 2
}

enum MediaCaptureFocusState
{
	Uninitialized = 0,
	Lost = 1,
	Searching = 2,
	Focused = 3,
	Failed = 4
}

enum MediaCaptureOptimization
{
	Default = 0,
	Quality = 1,
	Latency = 2,
	Power = 3,
	LatencyThenQuality = 4,
	LatencyThenPower = 5,
	PowerAndQuality = 6
}

enum MediaCapturePauseBehavior
{
	RetainHardwareResources = 0,
	ReleaseHardwareResources = 1
}

enum OpticalImageStabilizationMode
{
	Off = 0,
	On = 1,
	Auto = 2
}

enum RegionOfInterestType
{
	Unknown = 0,
	Face = 1
}

enum SendCommandStatus
{
	Success = 0,
	DeviceNotAvailable = 1
}

enum TelephonyKey
{
	D0 = 0,
	D1 = 1,
	D2 = 2,
	D3 = 3,
	D4 = 4,
	D5 = 5,
	D6 = 6,
	D7 = 7,
	D8 = 8,
	D9 = 9,
	Star = 10,
	Pound = 11,
	A = 12,
	B = 13,
	C = 14,
	D = 15
}

enum VideoDeviceControllerGetDevicePropertyStatus
{
	Success = 0,
	UnknownFailure = 1,
	BufferTooSmall = 2,
	NotSupported = 3,
	DeviceNotAvailable = 4,
	MaxPropertyValueSizeTooSmall = 5,
	MaxPropertyValueSizeRequired = 6
}

enum VideoDeviceControllerSetDevicePropertyStatus
{
	Success = 0,
	UnknownFailure = 1,
	NotSupported = 2,
	InvalidValue = 3,
	DeviceNotAvailable = 4,
	NotInControl = 5
}

enum ZoomTransitionMode
{
	Auto = 0,
	Direct = 1,
	Smooth = 2
}