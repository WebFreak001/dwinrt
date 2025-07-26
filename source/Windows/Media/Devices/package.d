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
extern(Windows):
	HRESULT get_Mode(Windows.Media.Devices.AdvancedPhotoMode* return_value);
	HRESULT set_Mode(Windows.Media.Devices.AdvancedPhotoMode value);
}

@uuid("c5b15486-9001-4682-9309-68eae0080eec")
@WinrtFactory("Windows.Media.Devices.AdvancedPhotoControl")
interface IAdvancedPhotoControl : IInspectable
{
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
extern(Windows):
	HRESULT abi_SetDeviceProperty(HSTRING propertyId, IInspectable propertyValue);
	HRESULT abi_GetDeviceProperty(HSTRING propertyId, IInspectable* return_propertyValue);
}

@uuid("8bb94f8f-f11a-43db-b402-11930b80ae56")
@WinrtFactory("Windows.Media.Devices.VideoDeviceController")
interface IAdvancedVideoCaptureDeviceController2 : IInspectable
{
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
extern(Windows):
	HRESULT get_VariablePhotoSequenceController(Windows.Media.Devices.Core.VariablePhotoSequenceController* return_value);
	HRESULT get_PhotoConfirmationControl(Windows.Media.Devices.PhotoConfirmationControl* return_value);
	HRESULT get_ZoomControl(Windows.Media.Devices.ZoomControl* return_value);
}

@uuid("ea9fbfaf-d371-41c3-9a17-824a87ebdfd2")
@WinrtFactory("Windows.Media.Devices.VideoDeviceController")
interface IAdvancedVideoCaptureDeviceController4 : IInspectable
{
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
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT abi_GetDevicePropertyById(HSTRING propertyId, Windows.Foundation.IReference!(UINT32) maxPropertyValueSize, Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult* return_value);
	HRESULT abi_SetDevicePropertyById(HSTRING propertyId, IInspectable propertyValue, Windows.Media.Devices.VideoDeviceControllerSetDevicePropertyStatus* return_value);
	HRESULT abi_GetDevicePropertyByExtendedId(UINT32 __extendedPropertyIdSize, ubyte* extendedPropertyId, Windows.Foundation.IReference!(UINT32) maxPropertyValueSize, Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult* return_value);
	HRESULT abi_SetDevicePropertyByExtendedId(UINT32 __extendedPropertyIdSize, ubyte* extendedPropertyId, UINT32 __propertyValueSize, ubyte* propertyValue, Windows.Media.Devices.VideoDeviceControllerSetDevicePropertyStatus* return_value);
}

@uuid("edd4a388-79c7-4f7c-90e8-ef934b21580a")
@WinrtFactory("Windows.Media.Devices.AudioDeviceController")
interface IAudioDeviceController_Base : IInspectable
{
extern(Windows):
	HRESULT set_Muted(bool value);
	HRESULT get_Muted(bool* return_value);
	HRESULT set_VolumePercent(float value);
	HRESULT get_VolumePercent(float* return_value);
}
@uuid("edd4a388-79c7-4f7c-90e8-ef934b21580a")
@WinrtFactory("Windows.Media.Devices.AudioDeviceController")
interface IAudioDeviceController : IAudioDeviceController_Base, Windows.Media.Devices.IMediaDeviceController {}

@uuid("86cfac36-47c1-4b33-9852-8773ec4be123")
@WinrtFactory("Windows.Media.Devices.AudioDeviceModule")
interface IAudioDeviceModule : IInspectable
{
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
extern(Windows):
	HRESULT get_Module(Windows.Media.Devices.AudioDeviceModule* return_value);
	HRESULT get_NotificationData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("6aa40c4d-960a-4d1c-b318-0022604547ed")
@WinrtFactory("Windows.Media.Devices.AudioDeviceModulesManager")
interface IAudioDeviceModulesManager : IInspectable
{
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
extern(Windows):
	HRESULT abi_Create(HSTRING deviceId, Windows.Media.Devices.AudioDeviceModulesManager* return_result);
}

@uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578")
@WinrtFactory("Windows.Media.Devices.CallControl")
interface ICallControl : IInspectable
{
extern(Windows):
	HRESULT abi_IndicateNewIncomingCall(bool enableRinger, HSTRING callerId, ulong* return_callToken);
	HRESULT abi_IndicateNewOutgoingCall(ulong* return_callToken);
	HRESULT abi_IndicateActiveCall(ulong callToken);
	HRESULT abi_EndCall(ulong callToken);
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
extern(Windows):
	HRESULT abi_GetDefault(Windows.Media.Devices.CallControl* return_callControl);
	HRESULT abi_FromId(HSTRING deviceId, Windows.Media.Devices.CallControl* return_callControl);
}

@uuid("110f882f-1c05-4657-a18e-47c9b69f07ab")
interface IDefaultAudioDeviceChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Role(Windows.Media.Devices.AudioDeviceRole* return_value);
}

@uuid("037b929e-953c-4286-8866-4f0f376c855a")
@WinrtFactory("Windows.Media.Devices.DialRequestedEventArgs")
interface IDialRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_Handled();
	HRESULT get_Contact(IInspectable* return_value);
}

@uuid("81c8e834-dcec-4011-a610-1f3847e64aca")
@WinrtFactory("Windows.Media.Devices.ExposureCompensationControl")
interface IExposureCompensationControl : IInspectable
{
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(float* return_value);
	HRESULT get_Max(float* return_value);
	HRESULT get_Step(float* return_value);
	HRESULT get_Value(float* return_value);
	HRESULT abi_SetValueAsync(float value, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2")
@WinrtFactory("Windows.Media.Devices.ExposureControl")
interface IExposureControl : IInspectable
{
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
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Enabled(bool* return_value);
	HRESULT set_Enabled(bool value);
}

@uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0")
@WinrtFactory("Windows.Media.Devices.FlashControl")
interface IFlashControl : IInspectable
{
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
	HRESULT get_PowerPercent(float* return_value);
	HRESULT set_PowerPercent(float value);
}

@uuid("7d29cc9e-75e1-4af7-bd7d-4e38e1c06cd6")
@WinrtFactory("Windows.Media.Devices.FlashControl")
interface IFlashControl2 : IInspectable
{
extern(Windows):
	HRESULT get_AssistantLightSupported(bool* return_value);
	HRESULT get_AssistantLightEnabled(bool* return_value);
	HRESULT set_AssistantLightEnabled(bool value);
}

@uuid("c0d889f6-5228-4453-b153-85606592b238")
@WinrtFactory("Windows.Media.Devices.FocusControl")
interface IFocusControl : IInspectable
{
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
extern(Windows):
	HRESULT get_TelephonyKey(Windows.Media.Devices.TelephonyKey* return_telephonyKey);
}

@uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9")
@WinrtFactory("Windows.Media.Devices.LowLagPhotoControl")
interface ILowLagPhotoControl : IInspectable
{
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
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_MaxPastPhotos(UINT32* return_value);
	HRESULT get_MaxPhotosPerSecond(float* return_value);
	HRESULT get_PastPhotoLimit(UINT32* return_value);
	HRESULT set_PastPhotoLimit(UINT32 value);
	HRESULT get_PhotosPerSecondLimit(float* return_value);
	HRESULT set_PhotosPerSecondLimit(float value);
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
extern(Windows):
	HRESULT abi_GetAvailableMediaStreamProperties(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaProperties.IMediaEncodingProperties)* return_value);
	HRESULT abi_GetMediaStreamProperties(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Media.MediaProperties.IMediaEncodingProperties* return_value);
	HRESULT abi_SetMediaStreamPropertiesAsync(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Media.MediaProperties.IMediaEncodingProperties mediaEncodingProperties, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("aa2d9a40-909f-4bba-bf8b-0c0d296f14f0")
@WinrtFactory("Windows.Media.Devices.MediaDevice")
interface IMediaDeviceStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_Status(Windows.Media.Devices.SendCommandStatus* return_value);
	HRESULT get_Result(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("bfad9c1d-00bc-423b-8eb2-a0178ca94247")
@WinrtFactory("Windows.Media.Devices.OpticalImageStabilizationControl")
interface IOpticalImageStabilizationControl : IInspectable
{
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
extern(Windows):
	HRESULT abi_Handled();
}

@uuid("e5ecc834-ce66-4e05-a78f-cf391a5ec2d1")
@WinrtFactory("Windows.Media.Devices.RegionOfInterest")
interface IRegionOfInterest : IInspectable
{
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
extern(Windows):
	HRESULT get_SupportedModes(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.CaptureSceneMode)* return_value);
	HRESULT get_Value(Windows.Media.Devices.CaptureSceneMode* return_value);
	HRESULT abi_SetValueAsync(Windows.Media.Devices.CaptureSceneMode sceneMode, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("a6053665-8250-416c-919a-724296afa306")
@WinrtFactory("Windows.Media.Devices.TorchControl")
interface ITorchControl : IInspectable
{
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_PowerSupported(bool* return_value);
	HRESULT get_Enabled(bool* return_value);
	HRESULT set_Enabled(bool value);
	HRESULT get_PowerPercent(float* return_value);
	HRESULT set_PowerPercent(float value);
}

@uuid("99555575-2e2e-40b8-b6c7-f82d10013210")
@WinrtFactory("Windows.Media.Devices.VideoDeviceController")
interface IVideoDeviceController_Base : IInspectable
{
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
@uuid("99555575-2e2e-40b8-b6c7-f82d10013210")
@WinrtFactory("Windows.Media.Devices.VideoDeviceController")
interface IVideoDeviceController : IVideoDeviceController_Base, Windows.Media.Devices.IMediaDeviceController {}

@uuid("c5d88395-6ed5-4790-8b5d-0ef13935d0f8")
@WinrtFactory("Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult")
interface IVideoDeviceControllerGetDevicePropertyResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyStatus* return_value);
	HRESULT get_Value(IInspectable* return_value);
}

@uuid("781f047e-7162-49c8-a8f9-9481c565363e")
@WinrtFactory("Windows.Media.Devices.WhiteBalanceControl")
interface IWhiteBalanceControl : IInspectable
{
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
extern(Windows):
	HRESULT get_Supported(bool* return_value);
	HRESULT get_Min(float* return_value);
	HRESULT get_Max(float* return_value);
	HRESULT get_Step(float* return_value);
	HRESULT get_Value(float* return_value);
	HRESULT set_Value(float value);
}

@uuid("69843db0-2e99-4641-8529-184f319d1671")
@WinrtFactory("Windows.Media.Devices.ZoomControl")
interface IZoomControl2 : IInspectable
{
extern(Windows):
	HRESULT get_SupportedModes(Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.ZoomTransitionMode)* return_value);
	HRESULT get_Mode(Windows.Media.Devices.ZoomTransitionMode* return_value);
	HRESULT abi_Configure(Windows.Media.Devices.ZoomSettings settings);
}

@uuid("6ad66b24-14b4-4bfd-b18f-88fe24463b52")
@WinrtFactory("Windows.Media.Devices.ZoomSettings")
interface IZoomSettings : IInspectable
{
extern(Windows):
	HRESULT get_Mode(Windows.Media.Devices.ZoomTransitionMode* return_value);
	HRESULT set_Mode(Windows.Media.Devices.ZoomTransitionMode value);
	HRESULT get_Value(float* return_value);
	HRESULT set_Value(float value);
}

interface AdvancedPhotoCaptureSettings : Windows.Media.Devices.IAdvancedPhotoCaptureSettings
{
extern(Windows):
	final Windows.Media.Devices.AdvancedPhotoMode Mode()
	{
		Windows.Media.Devices.AdvancedPhotoMode _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedPhotoCaptureSettings)this.asInterface(uuid("08f3863a-0018-445b-93d2-646d1c5ed05c"))).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Media.Devices.AdvancedPhotoMode value)
	{
		Debug.OK((cast(Windows.Media.Devices.IAdvancedPhotoCaptureSettings)this.asInterface(uuid("08f3863a-0018-445b-93d2-646d1c5ed05c"))).set_Mode(value));
	}
	static AdvancedPhotoCaptureSettings New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(AdvancedPhotoCaptureSettings).abi_ActivateInstance(&ret));
		return cast(AdvancedPhotoCaptureSettings) ret;
	}
}

interface AdvancedPhotoControl : Windows.Media.Devices.IAdvancedPhotoControl
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedPhotoControl)this.asInterface(uuid("c5b15486-9001-4682-9309-68eae0080eec"))).get_Supported(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AdvancedPhotoMode) SupportedModes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AdvancedPhotoMode) _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedPhotoControl)this.asInterface(uuid("c5b15486-9001-4682-9309-68eae0080eec"))).get_SupportedModes(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.AdvancedPhotoMode Mode()
	{
		Windows.Media.Devices.AdvancedPhotoMode _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedPhotoControl)this.asInterface(uuid("c5b15486-9001-4682-9309-68eae0080eec"))).get_Mode(&_ret));
		return _ret;
	}
	final void Configure(Windows.Media.Devices.AdvancedPhotoCaptureSettings settings)
	{
		Debug.OK((cast(Windows.Media.Devices.IAdvancedPhotoControl)this.asInterface(uuid("c5b15486-9001-4682-9309-68eae0080eec"))).abi_Configure(settings));
	}
}

interface AudioDeviceController : Windows.Media.Devices.IAudioDeviceController, Windows.Media.Devices.IMediaDeviceController
{
extern(Windows):
	final void Muted(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceController)this.asInterface(uuid("edd4a388-79c7-4f7c-90e8-ef934b21580a"))).set_Muted(value));
	}
	final bool Muted()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceController)this.asInterface(uuid("edd4a388-79c7-4f7c-90e8-ef934b21580a"))).get_Muted(&_ret));
		return _ret;
	}
	final void VolumePercent(float value)
	{
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceController)this.asInterface(uuid("edd4a388-79c7-4f7c-90e8-ef934b21580a"))).set_VolumePercent(value));
	}
	final float VolumePercent()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceController)this.asInterface(uuid("edd4a388-79c7-4f7c-90e8-ef934b21580a"))).get_VolumePercent(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaProperties.IMediaEncodingProperties) GetAvailableMediaStreamProperties(Windows.Media.Capture.MediaStreamType mediaStreamType)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaProperties.IMediaEncodingProperties) _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceController)this.asInterface(uuid("f6f8f5ce-209a-48fb-86fc-d44578f317e6"))).abi_GetAvailableMediaStreamProperties(mediaStreamType, &_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.IMediaEncodingProperties GetMediaStreamProperties(Windows.Media.Capture.MediaStreamType mediaStreamType)
	{
		Windows.Media.MediaProperties.IMediaEncodingProperties _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceController)this.asInterface(uuid("f6f8f5ce-209a-48fb-86fc-d44578f317e6"))).abi_GetMediaStreamProperties(mediaStreamType, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetMediaStreamPropertiesAsync(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Media.MediaProperties.IMediaEncodingProperties mediaEncodingProperties)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceController)this.asInterface(uuid("f6f8f5ce-209a-48fb-86fc-d44578f317e6"))).abi_SetMediaStreamPropertiesAsync(mediaStreamType, mediaEncodingProperties, &_ret));
		return _ret;
	}
}

interface AudioDeviceModule : Windows.Media.Devices.IAudioDeviceModule
{
extern(Windows):
	final HSTRING ClassId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModule)this.asInterface(uuid("86cfac36-47c1-4b33-9852-8773ec4be123"))).get_ClassId(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModule)this.asInterface(uuid("86cfac36-47c1-4b33-9852-8773ec4be123"))).get_DisplayName(&_ret));
		return _ret;
	}
	final UINT32 InstanceId()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModule)this.asInterface(uuid("86cfac36-47c1-4b33-9852-8773ec4be123"))).get_InstanceId(&_ret));
		return _ret;
	}
	final UINT32 MajorVersion()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModule)this.asInterface(uuid("86cfac36-47c1-4b33-9852-8773ec4be123"))).get_MajorVersion(&_ret));
		return _ret;
	}
	final UINT32 MinorVersion()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModule)this.asInterface(uuid("86cfac36-47c1-4b33-9852-8773ec4be123"))).get_MinorVersion(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Devices.ModuleCommandResult) SendCommandAsync(Windows.Storage.Streams.IBuffer Command)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Devices.ModuleCommandResult) _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModule)this.asInterface(uuid("86cfac36-47c1-4b33-9852-8773ec4be123"))).abi_SendCommandAsync(Command, &_ret));
		return _ret;
	}
}

interface AudioDeviceModuleNotificationEventArgs : Windows.Media.Devices.IAudioDeviceModuleNotificationEventArgs
{
extern(Windows):
	final Windows.Media.Devices.AudioDeviceModule Module()
	{
		Windows.Media.Devices.AudioDeviceModule _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModuleNotificationEventArgs)this.asInterface(uuid("e3e3ccaf-224c-48be-956b-9a13134e96e8"))).get_Module(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer NotificationData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModuleNotificationEventArgs)this.asInterface(uuid("e3e3ccaf-224c-48be-956b-9a13134e96e8"))).get_NotificationData(&_ret));
		return _ret;
	}
}

interface AudioDeviceModulesManager : Windows.Media.Devices.IAudioDeviceModulesManager
{
extern(Windows):
	final EventRegistrationToken OnModuleNotificationReceived(void delegate(Windows.Media.Devices.AudioDeviceModulesManager, Windows.Media.Devices.AudioDeviceModuleNotificationEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModulesManager)this.asInterface(uuid("6aa40c4d-960a-4d1c-b318-0022604547ed"))).add_ModuleNotificationReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Devices.AudioDeviceModulesManager, Windows.Media.Devices.AudioDeviceModuleNotificationEventArgs), Windows.Media.Devices.AudioDeviceModulesManager, Windows.Media.Devices.AudioDeviceModuleNotificationEventArgs)(fn), &tok));
		return tok;
	}
	final void removeModuleNotificationReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModulesManager)this.asInterface(uuid("6aa40c4d-960a-4d1c-b318-0022604547ed"))).remove_ModuleNotificationReceived(token));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AudioDeviceModule) FindAllById(HSTRING moduleId)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AudioDeviceModule) _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModulesManager)this.asInterface(uuid("6aa40c4d-960a-4d1c-b318-0022604547ed"))).abi_FindAllById(moduleId, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AudioDeviceModule) FindAll()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AudioDeviceModule) _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModulesManager)this.asInterface(uuid("6aa40c4d-960a-4d1c-b318-0022604547ed"))).abi_FindAll(&_ret));
		return _ret;
	}
	static Windows.Media.Devices.AudioDeviceModulesManager New(HSTRING deviceId)
	{
		auto factory = factory!(Windows.Media.Devices.IAudioDeviceModulesManagerFactory);
		Windows.Media.Devices.AudioDeviceModulesManager _ret;
		Debug.OK((cast(Windows.Media.Devices.IAudioDeviceModulesManagerFactory)factory.asInterface(uuid("8db03670-e64d-4773-96c0-bc7ebf0e063f"))).abi_Create(deviceId, &_ret));
		return _ret;
	}
}

interface CallControl : Windows.Media.Devices.ICallControl
{
extern(Windows):
	final ulong IndicateNewIncomingCall(bool enableRinger, HSTRING callerId)
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).abi_IndicateNewIncomingCall(enableRinger, callerId, &_ret));
		return _ret;
	}
	final ulong IndicateNewOutgoingCall()
	{
		ulong _ret;
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).abi_IndicateNewOutgoingCall(&_ret));
		return _ret;
	}
	final void IndicateActiveCall(ulong callToken)
	{
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).abi_IndicateActiveCall(callToken));
	}
	final void EndCall(ulong callToken)
	{
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).abi_EndCall(callToken));
	}
	final bool HasRinger()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).get_HasRinger(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAnswerRequested(void delegate(Windows.Media.Devices.CallControl) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).add_AnswerRequested(event!(Windows.Media.Devices.CallControlEventHandler, Windows.Media.Devices.CallControl)(fn), &tok));
		return tok;
	}
	final void removeAnswerRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).remove_AnswerRequested(token));
	}
	final EventRegistrationToken OnHangUpRequested(void delegate(Windows.Media.Devices.CallControl) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).add_HangUpRequested(event!(Windows.Media.Devices.CallControlEventHandler, Windows.Media.Devices.CallControl)(fn), &tok));
		return tok;
	}
	final void removeHangUpRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).remove_HangUpRequested(token));
	}
	final EventRegistrationToken OnDialRequested(void delegate(Windows.Media.Devices.CallControl, Windows.Media.Devices.DialRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).add_DialRequested(event!(Windows.Media.Devices.DialRequestedEventHandler, Windows.Media.Devices.CallControl, Windows.Media.Devices.DialRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDialRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).remove_DialRequested(token));
	}
	final EventRegistrationToken OnRedialRequested(void delegate(Windows.Media.Devices.CallControl, Windows.Media.Devices.RedialRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).add_RedialRequested(event!(Windows.Media.Devices.RedialRequestedEventHandler, Windows.Media.Devices.CallControl, Windows.Media.Devices.RedialRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRedialRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).remove_RedialRequested(token));
	}
	final EventRegistrationToken OnKeypadPressed(void delegate(Windows.Media.Devices.CallControl, Windows.Media.Devices.KeypadPressedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).add_KeypadPressed(event!(Windows.Media.Devices.KeypadPressedEventHandler, Windows.Media.Devices.CallControl, Windows.Media.Devices.KeypadPressedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeKeypadPressed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).remove_KeypadPressed(token));
	}
	final EventRegistrationToken OnAudioTransferRequested(void delegate(Windows.Media.Devices.CallControl) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).add_AudioTransferRequested(event!(Windows.Media.Devices.CallControlEventHandler, Windows.Media.Devices.CallControl)(fn), &tok));
		return tok;
	}
	final void removeAudioTransferRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Devices.ICallControl)this.asInterface(uuid("a520d0d6-ae8d-45db-8011-ca49d3b3e578"))).remove_AudioTransferRequested(token));
	}

	private static Windows.Media.Devices.ICallControlStatics _staticInstance;
	public static Windows.Media.Devices.ICallControlStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Devices.ICallControlStatics);
		return _staticInstance;
	}
	static Windows.Media.Devices.CallControl GetDefault()
	{
		Windows.Media.Devices.CallControl _ret;
		Debug.OK(staticInstance.abi_GetDefault(&_ret));
		return _ret;
	}
	static Windows.Media.Devices.CallControl FromId(HSTRING deviceId)
	{
		Windows.Media.Devices.CallControl _ret;
		Debug.OK(staticInstance.abi_FromId(deviceId, &_ret));
		return _ret;
	}
}

interface DefaultAudioCaptureDeviceChangedEventArgs : Windows.Media.Devices.IDefaultAudioDeviceChangedEventArgs
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Devices.IDefaultAudioDeviceChangedEventArgs)this.asInterface(uuid("110f882f-1c05-4657-a18e-47c9b69f07ab"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.AudioDeviceRole Role()
	{
		Windows.Media.Devices.AudioDeviceRole _ret;
		Debug.OK((cast(Windows.Media.Devices.IDefaultAudioDeviceChangedEventArgs)this.asInterface(uuid("110f882f-1c05-4657-a18e-47c9b69f07ab"))).get_Role(&_ret));
		return _ret;
	}
}

interface DefaultAudioRenderDeviceChangedEventArgs : Windows.Media.Devices.IDefaultAudioDeviceChangedEventArgs
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Devices.IDefaultAudioDeviceChangedEventArgs)this.asInterface(uuid("110f882f-1c05-4657-a18e-47c9b69f07ab"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.AudioDeviceRole Role()
	{
		Windows.Media.Devices.AudioDeviceRole _ret;
		Debug.OK((cast(Windows.Media.Devices.IDefaultAudioDeviceChangedEventArgs)this.asInterface(uuid("110f882f-1c05-4657-a18e-47c9b69f07ab"))).get_Role(&_ret));
		return _ret;
	}
}

interface DialRequestedEventArgs : Windows.Media.Devices.IDialRequestedEventArgs
{
extern(Windows):
	final void Handled()
	{
		Debug.OK((cast(Windows.Media.Devices.IDialRequestedEventArgs)this.asInterface(uuid("037b929e-953c-4286-8866-4f0f376c855a"))).abi_Handled());
	}
	final IInspectable Contact()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Media.Devices.IDialRequestedEventArgs)this.asInterface(uuid("037b929e-953c-4286-8866-4f0f376c855a"))).get_Contact(&_ret));
		return _ret;
	}
}

interface ExposureCompensationControl : Windows.Media.Devices.IExposureCompensationControl
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureCompensationControl)this.asInterface(uuid("81c8e834-dcec-4011-a610-1f3847e64aca"))).get_Supported(&_ret));
		return _ret;
	}
	final float Min()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureCompensationControl)this.asInterface(uuid("81c8e834-dcec-4011-a610-1f3847e64aca"))).get_Min(&_ret));
		return _ret;
	}
	final float Max()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureCompensationControl)this.asInterface(uuid("81c8e834-dcec-4011-a610-1f3847e64aca"))).get_Max(&_ret));
		return _ret;
	}
	final float Step()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureCompensationControl)this.asInterface(uuid("81c8e834-dcec-4011-a610-1f3847e64aca"))).get_Step(&_ret));
		return _ret;
	}
	final float Value()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureCompensationControl)this.asInterface(uuid("81c8e834-dcec-4011-a610-1f3847e64aca"))).get_Value(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetValueAsync(float value)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureCompensationControl)this.asInterface(uuid("81c8e834-dcec-4011-a610-1f3847e64aca"))).abi_SetValueAsync(value, &_ret));
		return _ret;
	}
}

interface ExposureControl : Windows.Media.Devices.IExposureControl
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureControl)this.asInterface(uuid("09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2"))).get_Supported(&_ret));
		return _ret;
	}
	final bool Auto()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureControl)this.asInterface(uuid("09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2"))).get_Auto(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetAutoAsync(bool value)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureControl)this.asInterface(uuid("09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2"))).abi_SetAutoAsync(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Min()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureControl)this.asInterface(uuid("09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2"))).get_Min(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Max()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureControl)this.asInterface(uuid("09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2"))).get_Max(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Step()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureControl)this.asInterface(uuid("09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2"))).get_Step(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Value()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureControl)this.asInterface(uuid("09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2"))).get_Value(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetValueAsync(Windows.Foundation.TimeSpan shutterDuration)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposureControl)this.asInterface(uuid("09e8cbe2-ad96-4f28-a0e0-96ed7e1b5fd2"))).abi_SetValueAsync(shutterDuration, &_ret));
		return _ret;
	}
}

interface ExposurePriorityVideoControl : Windows.Media.Devices.IExposurePriorityVideoControl
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposurePriorityVideoControl)this.asInterface(uuid("2cb240a3-5168-4271-9ea5-47621a98a352"))).get_Supported(&_ret));
		return _ret;
	}
	final bool Enabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IExposurePriorityVideoControl)this.asInterface(uuid("2cb240a3-5168-4271-9ea5-47621a98a352"))).get_Enabled(&_ret));
		return _ret;
	}
	final void Enabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IExposurePriorityVideoControl)this.asInterface(uuid("2cb240a3-5168-4271-9ea5-47621a98a352"))).set_Enabled(value));
	}
}

interface FlashControl : Windows.Media.Devices.IFlashControl, Windows.Media.Devices.IFlashControl2
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).get_Supported(&_ret));
		return _ret;
	}
	final bool PowerSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).get_PowerSupported(&_ret));
		return _ret;
	}
	final bool RedEyeReductionSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).get_RedEyeReductionSupported(&_ret));
		return _ret;
	}
	final bool Enabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).get_Enabled(&_ret));
		return _ret;
	}
	final void Enabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).set_Enabled(value));
	}
	final bool Auto()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).get_Auto(&_ret));
		return _ret;
	}
	final void Auto(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).set_Auto(value));
	}
	final bool RedEyeReduction()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).get_RedEyeReduction(&_ret));
		return _ret;
	}
	final void RedEyeReduction(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).set_RedEyeReduction(value));
	}
	final float PowerPercent()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).get_PowerPercent(&_ret));
		return _ret;
	}
	final void PowerPercent(float value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFlashControl)this.asInterface(uuid("def41dbe-7d68-45e3-8c0f-be7bb32837d0"))).set_PowerPercent(value));
	}
	final bool AssistantLightSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFlashControl2)this.asInterface(uuid("7d29cc9e-75e1-4af7-bd7d-4e38e1c06cd6"))).get_AssistantLightSupported(&_ret));
		return _ret;
	}
	final bool AssistantLightEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFlashControl2)this.asInterface(uuid("7d29cc9e-75e1-4af7-bd7d-4e38e1c06cd6"))).get_AssistantLightEnabled(&_ret));
		return _ret;
	}
	final void AssistantLightEnabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFlashControl2)this.asInterface(uuid("7d29cc9e-75e1-4af7-bd7d-4e38e1c06cd6"))).set_AssistantLightEnabled(value));
	}
}

interface FocusControl : Windows.Media.Devices.IFocusControl, Windows.Media.Devices.IFocusControl2
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).get_Supported(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.FocusPreset) SupportedPresets()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.FocusPreset) _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).get_SupportedPresets(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.FocusPreset Preset()
	{
		Windows.Media.Devices.FocusPreset _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).get_Preset(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetPresetAsync(Windows.Media.Devices.FocusPreset preset)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).abi_SetPresetAsync(preset, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetPresetWithCompletionOptionAsync(Windows.Media.Devices.FocusPreset preset, bool completeBeforeFocus)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).abi_SetPresetWithCompletionOptionAsync(preset, completeBeforeFocus, &_ret));
		return _ret;
	}
	alias SetPresetAsync = SetPresetWithCompletionOptionAsync;
	final UINT32 Min()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).get_Min(&_ret));
		return _ret;
	}
	final UINT32 Max()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).get_Max(&_ret));
		return _ret;
	}
	final UINT32 Step()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).get_Step(&_ret));
		return _ret;
	}
	final UINT32 Value()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).get_Value(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetValueAsync(UINT32 focus)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).abi_SetValueAsync(focus, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction FocusAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl)this.asInterface(uuid("c0d889f6-5228-4453-b153-85606592b238"))).abi_FocusAsync(&_ret));
		return _ret;
	}
	final bool FocusChangedSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl2)this.asInterface(uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07"))).get_FocusChangedSupported(&_ret));
		return _ret;
	}
	final bool WaitForFocusSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl2)this.asInterface(uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07"))).get_WaitForFocusSupported(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.FocusMode) SupportedFocusModes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.FocusMode) _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl2)this.asInterface(uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07"))).get_SupportedFocusModes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.ManualFocusDistance) SupportedFocusDistances()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.ManualFocusDistance) _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl2)this.asInterface(uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07"))).get_SupportedFocusDistances(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AutoFocusRange) SupportedFocusRanges()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.AutoFocusRange) _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl2)this.asInterface(uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07"))).get_SupportedFocusRanges(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.FocusMode Mode()
	{
		Windows.Media.Devices.FocusMode _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl2)this.asInterface(uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07"))).get_Mode(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaCaptureFocusState FocusState()
	{
		Windows.Media.Devices.MediaCaptureFocusState _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl2)this.asInterface(uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07"))).get_FocusState(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UnlockAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl2)this.asInterface(uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07"))).abi_UnlockAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction LockAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusControl2)this.asInterface(uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07"))).abi_LockAsync(&_ret));
		return _ret;
	}
	final void Configure(Windows.Media.Devices.FocusSettings settings)
	{
		Debug.OK((cast(Windows.Media.Devices.IFocusControl2)this.asInterface(uuid("3f7cff48-c534-4e9e-94c3-52ef2afd5d07"))).abi_Configure(settings));
	}
}

interface FocusSettings : Windows.Media.Devices.IFocusSettings
{
extern(Windows):
	final Windows.Media.Devices.FocusMode Mode()
	{
		Windows.Media.Devices.FocusMode _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Media.Devices.FocusMode value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).set_Mode(value));
	}
	final Windows.Media.Devices.AutoFocusRange AutoFocusRange()
	{
		Windows.Media.Devices.AutoFocusRange _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).get_AutoFocusRange(&_ret));
		return _ret;
	}
	final void AutoFocusRange(Windows.Media.Devices.AutoFocusRange value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).set_AutoFocusRange(value));
	}
	final Windows.Foundation.IReference!(UINT32) Value()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(Windows.Foundation.IReference!(UINT32) value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).set_Value(value));
	}
	final Windows.Foundation.IReference!(Windows.Media.Devices.ManualFocusDistance) Distance()
	{
		Windows.Foundation.IReference!(Windows.Media.Devices.ManualFocusDistance) _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).get_Distance(&_ret));
		return _ret;
	}
	final void Distance(Windows.Foundation.IReference!(Windows.Media.Devices.ManualFocusDistance) value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).set_Distance(value));
	}
	final bool WaitForFocus()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).get_WaitForFocus(&_ret));
		return _ret;
	}
	final void WaitForFocus(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).set_WaitForFocus(value));
	}
	final bool DisableDriverFallback()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).get_DisableDriverFallback(&_ret));
		return _ret;
	}
	final void DisableDriverFallback(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IFocusSettings)this.asInterface(uuid("79958f6b-3263-4275-85d6-aeae891c96ee"))).set_DisableDriverFallback(value));
	}
	static FocusSettings New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(FocusSettings).abi_ActivateInstance(&ret));
		return cast(FocusSettings) ret;
	}
}

interface HdrVideoControl : Windows.Media.Devices.IHdrVideoControl
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IHdrVideoControl)this.asInterface(uuid("55d8e2d0-30c0-43bf-9b9a-9799d70ced94"))).get_Supported(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.HdrVideoMode) SupportedModes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.HdrVideoMode) _ret;
		Debug.OK((cast(Windows.Media.Devices.IHdrVideoControl)this.asInterface(uuid("55d8e2d0-30c0-43bf-9b9a-9799d70ced94"))).get_SupportedModes(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.HdrVideoMode Mode()
	{
		Windows.Media.Devices.HdrVideoMode _ret;
		Debug.OK((cast(Windows.Media.Devices.IHdrVideoControl)this.asInterface(uuid("55d8e2d0-30c0-43bf-9b9a-9799d70ced94"))).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Media.Devices.HdrVideoMode value)
	{
		Debug.OK((cast(Windows.Media.Devices.IHdrVideoControl)this.asInterface(uuid("55d8e2d0-30c0-43bf-9b9a-9799d70ced94"))).set_Mode(value));
	}
}

interface IsoSpeedControl : Windows.Media.Devices.IIsoSpeedControl, Windows.Media.Devices.IIsoSpeedControl2
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl)this.asInterface(uuid("27b6c322-25ad-4f1b-aaab-524ab376ca33"))).get_Supported(&_ret));
		return _ret;
	}
	deprecated("SupportedPresets may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.IsoSpeedPreset) SupportedPresets()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.IsoSpeedPreset) _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl)this.asInterface(uuid("27b6c322-25ad-4f1b-aaab-524ab376ca33"))).get_SupportedPresets(&_ret));
		return _ret;
	}
	deprecated("Preset may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
	final Windows.Media.Devices.IsoSpeedPreset Preset()
	{
		Windows.Media.Devices.IsoSpeedPreset _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl)this.asInterface(uuid("27b6c322-25ad-4f1b-aaab-524ab376ca33"))).get_Preset(&_ret));
		return _ret;
	}
	deprecated("SetPresetAsync may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
	final Windows.Foundation.IAsyncAction SetPresetAsync(Windows.Media.Devices.IsoSpeedPreset preset)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl)this.asInterface(uuid("27b6c322-25ad-4f1b-aaab-524ab376ca33"))).abi_SetPresetAsync(preset, &_ret));
		return _ret;
	}
	final UINT32 Min()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl2)this.asInterface(uuid("6f1578f2-6d77-4f8a-8c2f-6130b6395053"))).get_Min(&_ret));
		return _ret;
	}
	final UINT32 Max()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl2)this.asInterface(uuid("6f1578f2-6d77-4f8a-8c2f-6130b6395053"))).get_Max(&_ret));
		return _ret;
	}
	final UINT32 Step()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl2)this.asInterface(uuid("6f1578f2-6d77-4f8a-8c2f-6130b6395053"))).get_Step(&_ret));
		return _ret;
	}
	final UINT32 Value()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl2)this.asInterface(uuid("6f1578f2-6d77-4f8a-8c2f-6130b6395053"))).get_Value(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetValueAsync(UINT32 isoSpeed)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl2)this.asInterface(uuid("6f1578f2-6d77-4f8a-8c2f-6130b6395053"))).abi_SetValueAsync(isoSpeed, &_ret));
		return _ret;
	}
	final bool Auto()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl2)this.asInterface(uuid("6f1578f2-6d77-4f8a-8c2f-6130b6395053"))).get_Auto(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetAutoAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IIsoSpeedControl2)this.asInterface(uuid("6f1578f2-6d77-4f8a-8c2f-6130b6395053"))).abi_SetAutoAsync(&_ret));
		return _ret;
	}
}

interface KeypadPressedEventArgs : Windows.Media.Devices.IKeypadPressedEventArgs
{
extern(Windows):
	final Windows.Media.Devices.TelephonyKey TelephonyKey()
	{
		Windows.Media.Devices.TelephonyKey _ret;
		Debug.OK((cast(Windows.Media.Devices.IKeypadPressedEventArgs)this.asInterface(uuid("d3a43900-b4fa-49cd-9442-89af6568f601"))).get_TelephonyKey(&_ret));
		return _ret;
	}
}

interface LowLagPhotoControl : Windows.Media.Devices.ILowLagPhotoControl
{
extern(Windows):
	final Windows.Media.MediaProperties.MediaRatio GetHighestConcurrentFrameRate(Windows.Media.MediaProperties.IMediaEncodingProperties captureProperties)
	{
		Windows.Media.MediaProperties.MediaRatio _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoControl)this.asInterface(uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9"))).abi_GetHighestConcurrentFrameRate(captureProperties, &_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaRatio GetCurrentFrameRate()
	{
		Windows.Media.MediaProperties.MediaRatio _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoControl)this.asInterface(uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9"))).abi_GetCurrentFrameRate(&_ret));
		return _ret;
	}
	final bool ThumbnailEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoControl)this.asInterface(uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9"))).get_ThumbnailEnabled(&_ret));
		return _ret;
	}
	final void ThumbnailEnabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoControl)this.asInterface(uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9"))).set_ThumbnailEnabled(value));
	}
	final Windows.Media.MediaProperties.MediaThumbnailFormat ThumbnailFormat()
	{
		Windows.Media.MediaProperties.MediaThumbnailFormat _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoControl)this.asInterface(uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9"))).get_ThumbnailFormat(&_ret));
		return _ret;
	}
	final void ThumbnailFormat(Windows.Media.MediaProperties.MediaThumbnailFormat value)
	{
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoControl)this.asInterface(uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9"))).set_ThumbnailFormat(value));
	}
	final UINT32 DesiredThumbnailSize()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoControl)this.asInterface(uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9"))).get_DesiredThumbnailSize(&_ret));
		return _ret;
	}
	final void DesiredThumbnailSize(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoControl)this.asInterface(uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9"))).set_DesiredThumbnailSize(value));
	}
	final UINT32 HardwareAcceleratedThumbnailSupported()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoControl)this.asInterface(uuid("6d5c4dd0-fadf-415d-aee6-3baa529300c9"))).get_HardwareAcceleratedThumbnailSupported(&_ret));
		return _ret;
	}
}

interface LowLagPhotoSequenceControl : Windows.Media.Devices.ILowLagPhotoSequenceControl
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).get_Supported(&_ret));
		return _ret;
	}
	final UINT32 MaxPastPhotos()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).get_MaxPastPhotos(&_ret));
		return _ret;
	}
	final float MaxPhotosPerSecond()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).get_MaxPhotosPerSecond(&_ret));
		return _ret;
	}
	final UINT32 PastPhotoLimit()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).get_PastPhotoLimit(&_ret));
		return _ret;
	}
	final void PastPhotoLimit(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).set_PastPhotoLimit(value));
	}
	final float PhotosPerSecondLimit()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).get_PhotosPerSecondLimit(&_ret));
		return _ret;
	}
	final void PhotosPerSecondLimit(float value)
	{
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).set_PhotosPerSecondLimit(value));
	}
	final Windows.Media.MediaProperties.MediaRatio GetHighestConcurrentFrameRate(Windows.Media.MediaProperties.IMediaEncodingProperties captureProperties)
	{
		Windows.Media.MediaProperties.MediaRatio _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).abi_GetHighestConcurrentFrameRate(captureProperties, &_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaRatio GetCurrentFrameRate()
	{
		Windows.Media.MediaProperties.MediaRatio _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).abi_GetCurrentFrameRate(&_ret));
		return _ret;
	}
	final bool ThumbnailEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).get_ThumbnailEnabled(&_ret));
		return _ret;
	}
	final void ThumbnailEnabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).set_ThumbnailEnabled(value));
	}
	final Windows.Media.MediaProperties.MediaThumbnailFormat ThumbnailFormat()
	{
		Windows.Media.MediaProperties.MediaThumbnailFormat _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).get_ThumbnailFormat(&_ret));
		return _ret;
	}
	final void ThumbnailFormat(Windows.Media.MediaProperties.MediaThumbnailFormat value)
	{
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).set_ThumbnailFormat(value));
	}
	final UINT32 DesiredThumbnailSize()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).get_DesiredThumbnailSize(&_ret));
		return _ret;
	}
	final void DesiredThumbnailSize(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).set_DesiredThumbnailSize(value));
	}
	final UINT32 HardwareAcceleratedThumbnailSupported()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.ILowLagPhotoSequenceControl)this.asInterface(uuid("3dcf909d-6d16-409c-bafe-b9a594c6fde6"))).get_HardwareAcceleratedThumbnailSupported(&_ret));
		return _ret;
	}
}

interface MediaDevice
{
	private static Windows.Media.Devices.IMediaDeviceStatics _staticInstance;
	public static Windows.Media.Devices.IMediaDeviceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Devices.IMediaDeviceStatics);
		return _staticInstance;
	}
	static HSTRING GetAudioCaptureSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetAudioCaptureSelector(&_ret));
		return _ret;
	}
	static HSTRING GetAudioRenderSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetAudioRenderSelector(&_ret));
		return _ret;
	}
	static HSTRING GetVideoCaptureSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetVideoCaptureSelector(&_ret));
		return _ret;
	}
	static HSTRING GetDefaultAudioCaptureId(Windows.Media.Devices.AudioDeviceRole role)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDefaultAudioCaptureId(role, &_ret));
		return _ret;
	}
	static HSTRING GetDefaultAudioRenderId(Windows.Media.Devices.AudioDeviceRole role)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDefaultAudioRenderId(role, &_ret));
		return _ret;
	}
	static EventRegistrationToken OnDefaultAudioCaptureDeviceChanged(void delegate(IInspectable, Windows.Media.Devices.DefaultAudioCaptureDeviceChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_DefaultAudioCaptureDeviceChanged(event!(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.Media.Devices.DefaultAudioCaptureDeviceChangedEventArgs), IInspectable, Windows.Media.Devices.DefaultAudioCaptureDeviceChangedEventArgs)(fn), &tok));
		return tok;
	}
	static void removeDefaultAudioCaptureDeviceChanged(EventRegistrationToken cookie)
	{
		Debug.OK(staticInstance.remove_DefaultAudioCaptureDeviceChanged(cookie));
	}
	static EventRegistrationToken OnDefaultAudioRenderDeviceChanged(void delegate(IInspectable, Windows.Media.Devices.DefaultAudioRenderDeviceChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_DefaultAudioRenderDeviceChanged(event!(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.Media.Devices.DefaultAudioRenderDeviceChangedEventArgs), IInspectable, Windows.Media.Devices.DefaultAudioRenderDeviceChangedEventArgs)(fn), &tok));
		return tok;
	}
	static void removeDefaultAudioRenderDeviceChanged(EventRegistrationToken cookie)
	{
		Debug.OK(staticInstance.remove_DefaultAudioRenderDeviceChanged(cookie));
	}
}

interface MediaDeviceControl : Windows.Media.Devices.IMediaDeviceControl
{
extern(Windows):
	final Windows.Media.Devices.MediaDeviceControlCapabilities Capabilities()
	{
		Windows.Media.Devices.MediaDeviceControlCapabilities _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControl)this.asInterface(uuid("efa8dfa9-6f75-4863-ba0b-583f3036b4de"))).get_Capabilities(&_ret));
		return _ret;
	}
	final bool TryGetValue(double* out_value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControl)this.asInterface(uuid("efa8dfa9-6f75-4863-ba0b-583f3036b4de"))).abi_TryGetValue(out_value, &_ret));
		return _ret;
	}
	final bool TrySetValue(double value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControl)this.asInterface(uuid("efa8dfa9-6f75-4863-ba0b-583f3036b4de"))).abi_TrySetValue(value, &_ret));
		return _ret;
	}
	final bool TryGetAuto(bool* out_value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControl)this.asInterface(uuid("efa8dfa9-6f75-4863-ba0b-583f3036b4de"))).abi_TryGetAuto(out_value, &_ret));
		return _ret;
	}
	final bool TrySetAuto(bool value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControl)this.asInterface(uuid("efa8dfa9-6f75-4863-ba0b-583f3036b4de"))).abi_TrySetAuto(value, &_ret));
		return _ret;
	}
}

interface MediaDeviceControlCapabilities : Windows.Media.Devices.IMediaDeviceControlCapabilities
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControlCapabilities)this.asInterface(uuid("23005816-eb85-43e2-b92b-8240d5ee70ec"))).get_Supported(&_ret));
		return _ret;
	}
	final double Min()
	{
		double _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControlCapabilities)this.asInterface(uuid("23005816-eb85-43e2-b92b-8240d5ee70ec"))).get_Min(&_ret));
		return _ret;
	}
	final double Max()
	{
		double _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControlCapabilities)this.asInterface(uuid("23005816-eb85-43e2-b92b-8240d5ee70ec"))).get_Max(&_ret));
		return _ret;
	}
	final double Step()
	{
		double _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControlCapabilities)this.asInterface(uuid("23005816-eb85-43e2-b92b-8240d5ee70ec"))).get_Step(&_ret));
		return _ret;
	}
	final double Default()
	{
		double _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControlCapabilities)this.asInterface(uuid("23005816-eb85-43e2-b92b-8240d5ee70ec"))).get_Default(&_ret));
		return _ret;
	}
	final bool AutoModeSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceControlCapabilities)this.asInterface(uuid("23005816-eb85-43e2-b92b-8240d5ee70ec"))).get_AutoModeSupported(&_ret));
		return _ret;
	}
}

interface ModuleCommandResult : Windows.Media.Devices.IModuleCommandResult
{
extern(Windows):
	final Windows.Media.Devices.SendCommandStatus Status()
	{
		Windows.Media.Devices.SendCommandStatus _ret;
		Debug.OK((cast(Windows.Media.Devices.IModuleCommandResult)this.asInterface(uuid("520d1eb4-1374-4c7d-b1e4-39dcdf3eae4e"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer Result()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Media.Devices.IModuleCommandResult)this.asInterface(uuid("520d1eb4-1374-4c7d-b1e4-39dcdf3eae4e"))).get_Result(&_ret));
		return _ret;
	}
}

interface OpticalImageStabilizationControl : Windows.Media.Devices.IOpticalImageStabilizationControl
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IOpticalImageStabilizationControl)this.asInterface(uuid("bfad9c1d-00bc-423b-8eb2-a0178ca94247"))).get_Supported(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.OpticalImageStabilizationMode) SupportedModes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.OpticalImageStabilizationMode) _ret;
		Debug.OK((cast(Windows.Media.Devices.IOpticalImageStabilizationControl)this.asInterface(uuid("bfad9c1d-00bc-423b-8eb2-a0178ca94247"))).get_SupportedModes(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.OpticalImageStabilizationMode Mode()
	{
		Windows.Media.Devices.OpticalImageStabilizationMode _ret;
		Debug.OK((cast(Windows.Media.Devices.IOpticalImageStabilizationControl)this.asInterface(uuid("bfad9c1d-00bc-423b-8eb2-a0178ca94247"))).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Media.Devices.OpticalImageStabilizationMode value)
	{
		Debug.OK((cast(Windows.Media.Devices.IOpticalImageStabilizationControl)this.asInterface(uuid("bfad9c1d-00bc-423b-8eb2-a0178ca94247"))).set_Mode(value));
	}
}

interface PhotoConfirmationControl : Windows.Media.Devices.IPhotoConfirmationControl
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IPhotoConfirmationControl)this.asInterface(uuid("c8f3f363-ff5e-4582-a9a8-0550f85a4a76"))).get_Supported(&_ret));
		return _ret;
	}
	final bool Enabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IPhotoConfirmationControl)this.asInterface(uuid("c8f3f363-ff5e-4582-a9a8-0550f85a4a76"))).get_Enabled(&_ret));
		return _ret;
	}
	final void Enabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IPhotoConfirmationControl)this.asInterface(uuid("c8f3f363-ff5e-4582-a9a8-0550f85a4a76"))).set_Enabled(value));
	}
	final Windows.Media.MediaProperties.MediaPixelFormat PixelFormat()
	{
		Windows.Media.MediaProperties.MediaPixelFormat _ret;
		Debug.OK((cast(Windows.Media.Devices.IPhotoConfirmationControl)this.asInterface(uuid("c8f3f363-ff5e-4582-a9a8-0550f85a4a76"))).get_PixelFormat(&_ret));
		return _ret;
	}
	final void PixelFormat(Windows.Media.MediaProperties.MediaPixelFormat format)
	{
		Debug.OK((cast(Windows.Media.Devices.IPhotoConfirmationControl)this.asInterface(uuid("c8f3f363-ff5e-4582-a9a8-0550f85a4a76"))).set_PixelFormat(format));
	}
}

interface RedialRequestedEventArgs : Windows.Media.Devices.IRedialRequestedEventArgs
{
extern(Windows):
	final void Handled()
	{
		Debug.OK((cast(Windows.Media.Devices.IRedialRequestedEventArgs)this.asInterface(uuid("7eb55209-76ab-4c31-b40e-4b58379d580c"))).abi_Handled());
	}
}

interface RegionOfInterest : Windows.Media.Devices.IRegionOfInterest, Windows.Media.Devices.IRegionOfInterest2
{
extern(Windows):
	final bool AutoFocusEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest)this.asInterface(uuid("e5ecc834-ce66-4e05-a78f-cf391a5ec2d1"))).get_AutoFocusEnabled(&_ret));
		return _ret;
	}
	final void AutoFocusEnabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest)this.asInterface(uuid("e5ecc834-ce66-4e05-a78f-cf391a5ec2d1"))).set_AutoFocusEnabled(value));
	}
	final bool AutoWhiteBalanceEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest)this.asInterface(uuid("e5ecc834-ce66-4e05-a78f-cf391a5ec2d1"))).get_AutoWhiteBalanceEnabled(&_ret));
		return _ret;
	}
	final void AutoWhiteBalanceEnabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest)this.asInterface(uuid("e5ecc834-ce66-4e05-a78f-cf391a5ec2d1"))).set_AutoWhiteBalanceEnabled(value));
	}
	final bool AutoExposureEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest)this.asInterface(uuid("e5ecc834-ce66-4e05-a78f-cf391a5ec2d1"))).get_AutoExposureEnabled(&_ret));
		return _ret;
	}
	final void AutoExposureEnabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest)this.asInterface(uuid("e5ecc834-ce66-4e05-a78f-cf391a5ec2d1"))).set_AutoExposureEnabled(value));
	}
	final Windows.Foundation.Rect Bounds()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest)this.asInterface(uuid("e5ecc834-ce66-4e05-a78f-cf391a5ec2d1"))).get_Bounds(&_ret));
		return _ret;
	}
	final void Bounds(Windows.Foundation.Rect value)
	{
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest)this.asInterface(uuid("e5ecc834-ce66-4e05-a78f-cf391a5ec2d1"))).set_Bounds(value));
	}
	final Windows.Media.Devices.RegionOfInterestType Type()
	{
		Windows.Media.Devices.RegionOfInterestType _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest2)this.asInterface(uuid("19fe2a91-73aa-4d51-8a9d-56ccf7db7f54"))).get_Type(&_ret));
		return _ret;
	}
	final void Type(Windows.Media.Devices.RegionOfInterestType value)
	{
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest2)this.asInterface(uuid("19fe2a91-73aa-4d51-8a9d-56ccf7db7f54"))).set_Type(value));
	}
	final bool BoundsNormalized()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest2)this.asInterface(uuid("19fe2a91-73aa-4d51-8a9d-56ccf7db7f54"))).get_BoundsNormalized(&_ret));
		return _ret;
	}
	final void BoundsNormalized(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest2)this.asInterface(uuid("19fe2a91-73aa-4d51-8a9d-56ccf7db7f54"))).set_BoundsNormalized(value));
	}
	final UINT32 Weight()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest2)this.asInterface(uuid("19fe2a91-73aa-4d51-8a9d-56ccf7db7f54"))).get_Weight(&_ret));
		return _ret;
	}
	final void Weight(UINT32 value)
	{
		Debug.OK((cast(Windows.Media.Devices.IRegionOfInterest2)this.asInterface(uuid("19fe2a91-73aa-4d51-8a9d-56ccf7db7f54"))).set_Weight(value));
	}
	static RegionOfInterest New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RegionOfInterest).abi_ActivateInstance(&ret));
		return cast(RegionOfInterest) ret;
	}
}

interface RegionsOfInterestControl : Windows.Media.Devices.IRegionsOfInterestControl
{
extern(Windows):
	final UINT32 MaxRegions()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionsOfInterestControl)this.asInterface(uuid("c323f527-ab0b-4558-8b5b-df5693db0378"))).get_MaxRegions(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetRegionsAsync(Windows.Foundation.Collections.IIterable!(Windows.Media.Devices.RegionOfInterest) regions)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionsOfInterestControl)this.asInterface(uuid("c323f527-ab0b-4558-8b5b-df5693db0378"))).abi_SetRegionsAsync(regions, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetRegionsWithLockAsync(Windows.Foundation.Collections.IIterable!(Windows.Media.Devices.RegionOfInterest) regions, bool lockValues)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionsOfInterestControl)this.asInterface(uuid("c323f527-ab0b-4558-8b5b-df5693db0378"))).abi_SetRegionsWithLockAsync(regions, lockValues, &_ret));
		return _ret;
	}
	alias SetRegionsAsync = SetRegionsWithLockAsync;
	final Windows.Foundation.IAsyncAction ClearRegionsAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionsOfInterestControl)this.asInterface(uuid("c323f527-ab0b-4558-8b5b-df5693db0378"))).abi_ClearRegionsAsync(&_ret));
		return _ret;
	}
	final bool AutoFocusSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionsOfInterestControl)this.asInterface(uuid("c323f527-ab0b-4558-8b5b-df5693db0378"))).get_AutoFocusSupported(&_ret));
		return _ret;
	}
	final bool AutoWhiteBalanceSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionsOfInterestControl)this.asInterface(uuid("c323f527-ab0b-4558-8b5b-df5693db0378"))).get_AutoWhiteBalanceSupported(&_ret));
		return _ret;
	}
	final bool AutoExposureSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IRegionsOfInterestControl)this.asInterface(uuid("c323f527-ab0b-4558-8b5b-df5693db0378"))).get_AutoExposureSupported(&_ret));
		return _ret;
	}
}

interface SceneModeControl : Windows.Media.Devices.ISceneModeControl
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.CaptureSceneMode) SupportedModes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.CaptureSceneMode) _ret;
		Debug.OK((cast(Windows.Media.Devices.ISceneModeControl)this.asInterface(uuid("d48e5af7-8d59-4854-8c62-12c70ba89b7c"))).get_SupportedModes(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.CaptureSceneMode Value()
	{
		Windows.Media.Devices.CaptureSceneMode _ret;
		Debug.OK((cast(Windows.Media.Devices.ISceneModeControl)this.asInterface(uuid("d48e5af7-8d59-4854-8c62-12c70ba89b7c"))).get_Value(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetValueAsync(Windows.Media.Devices.CaptureSceneMode sceneMode)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.ISceneModeControl)this.asInterface(uuid("d48e5af7-8d59-4854-8c62-12c70ba89b7c"))).abi_SetValueAsync(sceneMode, &_ret));
		return _ret;
	}
}

interface TorchControl : Windows.Media.Devices.ITorchControl
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.ITorchControl)this.asInterface(uuid("a6053665-8250-416c-919a-724296afa306"))).get_Supported(&_ret));
		return _ret;
	}
	final bool PowerSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.ITorchControl)this.asInterface(uuid("a6053665-8250-416c-919a-724296afa306"))).get_PowerSupported(&_ret));
		return _ret;
	}
	final bool Enabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.ITorchControl)this.asInterface(uuid("a6053665-8250-416c-919a-724296afa306"))).get_Enabled(&_ret));
		return _ret;
	}
	final void Enabled(bool value)
	{
		Debug.OK((cast(Windows.Media.Devices.ITorchControl)this.asInterface(uuid("a6053665-8250-416c-919a-724296afa306"))).set_Enabled(value));
	}
	final float PowerPercent()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.ITorchControl)this.asInterface(uuid("a6053665-8250-416c-919a-724296afa306"))).get_PowerPercent(&_ret));
		return _ret;
	}
	final void PowerPercent(float value)
	{
		Debug.OK((cast(Windows.Media.Devices.ITorchControl)this.asInterface(uuid("a6053665-8250-416c-919a-724296afa306"))).set_PowerPercent(value));
	}
}

interface VideoDeviceController : Windows.Media.Devices.IVideoDeviceController, Windows.Media.Devices.IMediaDeviceController, Windows.Media.Devices.IAdvancedVideoCaptureDeviceController, Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2, Windows.Media.Devices.IAdvancedVideoCaptureDeviceController3, Windows.Media.Devices.IAdvancedVideoCaptureDeviceController4, Windows.Media.Devices.IAdvancedVideoCaptureDeviceController5
{
extern(Windows):
	final Windows.Media.Devices.MediaDeviceControl Brightness()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_Brightness(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaDeviceControl Contrast()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_Contrast(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaDeviceControl Hue()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_Hue(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaDeviceControl WhiteBalance()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_WhiteBalance(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaDeviceControl BacklightCompensation()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_BacklightCompensation(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaDeviceControl Pan()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_Pan(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaDeviceControl Tilt()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_Tilt(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaDeviceControl Zoom()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_Zoom(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaDeviceControl Roll()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_Roll(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaDeviceControl Exposure()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_Exposure(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaDeviceControl Focus()
	{
		Windows.Media.Devices.MediaDeviceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).get_Focus(&_ret));
		return _ret;
	}
	final bool TrySetPowerlineFrequency(Windows.Media.Capture.PowerlineFrequency value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).abi_TrySetPowerlineFrequency(value, &_ret));
		return _ret;
	}
	final bool TryGetPowerlineFrequency(Windows.Media.Capture.PowerlineFrequency* out_value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceController)this.asInterface(uuid("99555575-2e2e-40b8-b6c7-f82d10013210"))).abi_TryGetPowerlineFrequency(out_value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaProperties.IMediaEncodingProperties) GetAvailableMediaStreamProperties(Windows.Media.Capture.MediaStreamType mediaStreamType)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.MediaProperties.IMediaEncodingProperties) _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceController)this.asInterface(uuid("f6f8f5ce-209a-48fb-86fc-d44578f317e6"))).abi_GetAvailableMediaStreamProperties(mediaStreamType, &_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.IMediaEncodingProperties GetMediaStreamProperties(Windows.Media.Capture.MediaStreamType mediaStreamType)
	{
		Windows.Media.MediaProperties.IMediaEncodingProperties _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceController)this.asInterface(uuid("f6f8f5ce-209a-48fb-86fc-d44578f317e6"))).abi_GetMediaStreamProperties(mediaStreamType, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetMediaStreamPropertiesAsync(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Media.MediaProperties.IMediaEncodingProperties mediaEncodingProperties)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IMediaDeviceController)this.asInterface(uuid("f6f8f5ce-209a-48fb-86fc-d44578f317e6"))).abi_SetMediaStreamPropertiesAsync(mediaStreamType, mediaEncodingProperties, &_ret));
		return _ret;
	}
	final void SetDeviceProperty(HSTRING propertyId, IInspectable propertyValue)
	{
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController)this.asInterface(uuid("de6ff4d3-2b96-4583-80ab-b5b01dc6a8d7"))).abi_SetDeviceProperty(propertyId, propertyValue));
	}
	final IInspectable GetDeviceProperty(HSTRING propertyId)
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController)this.asInterface(uuid("de6ff4d3-2b96-4583-80ab-b5b01dc6a8d7"))).abi_GetDeviceProperty(propertyId, &_ret));
		return _ret;
	}
	final Windows.Media.Devices.LowLagPhotoSequenceControl LowLagPhotoSequence()
	{
		Windows.Media.Devices.LowLagPhotoSequenceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_LowLagPhotoSequence(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.LowLagPhotoControl LowLagPhoto()
	{
		Windows.Media.Devices.LowLagPhotoControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_LowLagPhoto(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.SceneModeControl SceneModeControl()
	{
		Windows.Media.Devices.SceneModeControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_SceneModeControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.TorchControl TorchControl()
	{
		Windows.Media.Devices.TorchControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_TorchControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.FlashControl FlashControl()
	{
		Windows.Media.Devices.FlashControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_FlashControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.WhiteBalanceControl WhiteBalanceControl()
	{
		Windows.Media.Devices.WhiteBalanceControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_WhiteBalanceControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.ExposureControl ExposureControl()
	{
		Windows.Media.Devices.ExposureControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_ExposureControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.FocusControl FocusControl()
	{
		Windows.Media.Devices.FocusControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_FocusControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.ExposureCompensationControl ExposureCompensationControl()
	{
		Windows.Media.Devices.ExposureCompensationControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_ExposureCompensationControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.IsoSpeedControl IsoSpeedControl()
	{
		Windows.Media.Devices.IsoSpeedControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_IsoSpeedControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.RegionsOfInterestControl RegionsOfInterestControl()
	{
		Windows.Media.Devices.RegionsOfInterestControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_RegionsOfInterestControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.CaptureUse PrimaryUse()
	{
		Windows.Media.Devices.CaptureUse _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).get_PrimaryUse(&_ret));
		return _ret;
	}
	final void PrimaryUse(Windows.Media.Devices.CaptureUse value)
	{
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController2)this.asInterface(uuid("8bb94f8f-f11a-43db-b402-11930b80ae56"))).set_PrimaryUse(value));
	}
	final Windows.Media.Devices.Core.VariablePhotoSequenceController VariablePhotoSequenceController()
	{
		Windows.Media.Devices.Core.VariablePhotoSequenceController _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController3)this.asInterface(uuid("a98b8f34-ee0d-470c-b9f0-4229c4bbd089"))).get_VariablePhotoSequenceController(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.PhotoConfirmationControl PhotoConfirmationControl()
	{
		Windows.Media.Devices.PhotoConfirmationControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController3)this.asInterface(uuid("a98b8f34-ee0d-470c-b9f0-4229c4bbd089"))).get_PhotoConfirmationControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.ZoomControl ZoomControl()
	{
		Windows.Media.Devices.ZoomControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController3)this.asInterface(uuid("a98b8f34-ee0d-470c-b9f0-4229c4bbd089"))).get_ZoomControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.ExposurePriorityVideoControl ExposurePriorityVideoControl()
	{
		Windows.Media.Devices.ExposurePriorityVideoControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController4)this.asInterface(uuid("ea9fbfaf-d371-41c3-9a17-824a87ebdfd2"))).get_ExposurePriorityVideoControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.MediaCaptureOptimization DesiredOptimization()
	{
		Windows.Media.Devices.MediaCaptureOptimization _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController4)this.asInterface(uuid("ea9fbfaf-d371-41c3-9a17-824a87ebdfd2"))).get_DesiredOptimization(&_ret));
		return _ret;
	}
	final void DesiredOptimization(Windows.Media.Devices.MediaCaptureOptimization value)
	{
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController4)this.asInterface(uuid("ea9fbfaf-d371-41c3-9a17-824a87ebdfd2"))).set_DesiredOptimization(value));
	}
	final Windows.Media.Devices.HdrVideoControl HdrVideoControl()
	{
		Windows.Media.Devices.HdrVideoControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController4)this.asInterface(uuid("ea9fbfaf-d371-41c3-9a17-824a87ebdfd2"))).get_HdrVideoControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.OpticalImageStabilizationControl OpticalImageStabilizationControl()
	{
		Windows.Media.Devices.OpticalImageStabilizationControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController4)this.asInterface(uuid("ea9fbfaf-d371-41c3-9a17-824a87ebdfd2"))).get_OpticalImageStabilizationControl(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.AdvancedPhotoControl AdvancedPhotoControl()
	{
		Windows.Media.Devices.AdvancedPhotoControl _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController4)this.asInterface(uuid("ea9fbfaf-d371-41c3-9a17-824a87ebdfd2"))).get_AdvancedPhotoControl(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController5)this.asInterface(uuid("33512b17-b9cb-4a23-b875-f9eaab535492"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult GetDevicePropertyById(HSTRING propertyId, Windows.Foundation.IReference!(UINT32) maxPropertyValueSize)
	{
		Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController5)this.asInterface(uuid("33512b17-b9cb-4a23-b875-f9eaab535492"))).abi_GetDevicePropertyById(propertyId, maxPropertyValueSize, &_ret));
		return _ret;
	}
	final Windows.Media.Devices.VideoDeviceControllerSetDevicePropertyStatus SetDevicePropertyById(HSTRING propertyId, IInspectable propertyValue)
	{
		Windows.Media.Devices.VideoDeviceControllerSetDevicePropertyStatus _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController5)this.asInterface(uuid("33512b17-b9cb-4a23-b875-f9eaab535492"))).abi_SetDevicePropertyById(propertyId, propertyValue, &_ret));
		return _ret;
	}
	final Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult GetDevicePropertyByExtendedId(UINT32 __extendedPropertyIdSize, ubyte* extendedPropertyId, Windows.Foundation.IReference!(UINT32) maxPropertyValueSize)
	{
		Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyResult _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController5)this.asInterface(uuid("33512b17-b9cb-4a23-b875-f9eaab535492"))).abi_GetDevicePropertyByExtendedId(__extendedPropertyIdSize, extendedPropertyId, maxPropertyValueSize, &_ret));
		return _ret;
	}
	final Windows.Media.Devices.VideoDeviceControllerSetDevicePropertyStatus SetDevicePropertyByExtendedId(UINT32 __extendedPropertyIdSize, ubyte* extendedPropertyId, UINT32 __propertyValueSize, ubyte* propertyValue)
	{
		Windows.Media.Devices.VideoDeviceControllerSetDevicePropertyStatus _ret;
		Debug.OK((cast(Windows.Media.Devices.IAdvancedVideoCaptureDeviceController5)this.asInterface(uuid("33512b17-b9cb-4a23-b875-f9eaab535492"))).abi_SetDevicePropertyByExtendedId(__extendedPropertyIdSize, extendedPropertyId, __propertyValueSize, propertyValue, &_ret));
		return _ret;
	}
}

interface VideoDeviceControllerGetDevicePropertyResult : Windows.Media.Devices.IVideoDeviceControllerGetDevicePropertyResult
{
extern(Windows):
	final Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyStatus Status()
	{
		Windows.Media.Devices.VideoDeviceControllerGetDevicePropertyStatus _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceControllerGetDevicePropertyResult)this.asInterface(uuid("c5d88395-6ed5-4790-8b5d-0ef13935d0f8"))).get_Status(&_ret));
		return _ret;
	}
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Media.Devices.IVideoDeviceControllerGetDevicePropertyResult)this.asInterface(uuid("c5d88395-6ed5-4790-8b5d-0ef13935d0f8"))).get_Value(&_ret));
		return _ret;
	}
}

interface WhiteBalanceControl : Windows.Media.Devices.IWhiteBalanceControl
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IWhiteBalanceControl)this.asInterface(uuid("781f047e-7162-49c8-a8f9-9481c565363e"))).get_Supported(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.ColorTemperaturePreset Preset()
	{
		Windows.Media.Devices.ColorTemperaturePreset _ret;
		Debug.OK((cast(Windows.Media.Devices.IWhiteBalanceControl)this.asInterface(uuid("781f047e-7162-49c8-a8f9-9481c565363e"))).get_Preset(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetPresetAsync(Windows.Media.Devices.ColorTemperaturePreset preset)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IWhiteBalanceControl)this.asInterface(uuid("781f047e-7162-49c8-a8f9-9481c565363e"))).abi_SetPresetAsync(preset, &_ret));
		return _ret;
	}
	final UINT32 Min()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IWhiteBalanceControl)this.asInterface(uuid("781f047e-7162-49c8-a8f9-9481c565363e"))).get_Min(&_ret));
		return _ret;
	}
	final UINT32 Max()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IWhiteBalanceControl)this.asInterface(uuid("781f047e-7162-49c8-a8f9-9481c565363e"))).get_Max(&_ret));
		return _ret;
	}
	final UINT32 Step()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IWhiteBalanceControl)this.asInterface(uuid("781f047e-7162-49c8-a8f9-9481c565363e"))).get_Step(&_ret));
		return _ret;
	}
	final UINT32 Value()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Devices.IWhiteBalanceControl)this.asInterface(uuid("781f047e-7162-49c8-a8f9-9481c565363e"))).get_Value(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetValueAsync(UINT32 temperature)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Devices.IWhiteBalanceControl)this.asInterface(uuid("781f047e-7162-49c8-a8f9-9481c565363e"))).abi_SetValueAsync(temperature, &_ret));
		return _ret;
	}
}

interface ZoomControl : Windows.Media.Devices.IZoomControl, Windows.Media.Devices.IZoomControl2
{
extern(Windows):
	final bool Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Devices.IZoomControl)this.asInterface(uuid("3a1e0b12-32da-4c17-bfd7-8d0c73c8f5a5"))).get_Supported(&_ret));
		return _ret;
	}
	final float Min()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IZoomControl)this.asInterface(uuid("3a1e0b12-32da-4c17-bfd7-8d0c73c8f5a5"))).get_Min(&_ret));
		return _ret;
	}
	final float Max()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IZoomControl)this.asInterface(uuid("3a1e0b12-32da-4c17-bfd7-8d0c73c8f5a5"))).get_Max(&_ret));
		return _ret;
	}
	final float Step()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IZoomControl)this.asInterface(uuid("3a1e0b12-32da-4c17-bfd7-8d0c73c8f5a5"))).get_Step(&_ret));
		return _ret;
	}
	final float Value()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IZoomControl)this.asInterface(uuid("3a1e0b12-32da-4c17-bfd7-8d0c73c8f5a5"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(float value)
	{
		Debug.OK((cast(Windows.Media.Devices.IZoomControl)this.asInterface(uuid("3a1e0b12-32da-4c17-bfd7-8d0c73c8f5a5"))).set_Value(value));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.ZoomTransitionMode) SupportedModes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Devices.ZoomTransitionMode) _ret;
		Debug.OK((cast(Windows.Media.Devices.IZoomControl2)this.asInterface(uuid("69843db0-2e99-4641-8529-184f319d1671"))).get_SupportedModes(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.ZoomTransitionMode Mode()
	{
		Windows.Media.Devices.ZoomTransitionMode _ret;
		Debug.OK((cast(Windows.Media.Devices.IZoomControl2)this.asInterface(uuid("69843db0-2e99-4641-8529-184f319d1671"))).get_Mode(&_ret));
		return _ret;
	}
	final void Configure(Windows.Media.Devices.ZoomSettings settings)
	{
		Debug.OK((cast(Windows.Media.Devices.IZoomControl2)this.asInterface(uuid("69843db0-2e99-4641-8529-184f319d1671"))).abi_Configure(settings));
	}
}

interface ZoomSettings : Windows.Media.Devices.IZoomSettings
{
extern(Windows):
	final Windows.Media.Devices.ZoomTransitionMode Mode()
	{
		Windows.Media.Devices.ZoomTransitionMode _ret;
		Debug.OK((cast(Windows.Media.Devices.IZoomSettings)this.asInterface(uuid("6ad66b24-14b4-4bfd-b18f-88fe24463b52"))).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.Media.Devices.ZoomTransitionMode value)
	{
		Debug.OK((cast(Windows.Media.Devices.IZoomSettings)this.asInterface(uuid("6ad66b24-14b4-4bfd-b18f-88fe24463b52"))).set_Mode(value));
	}
	final float Value()
	{
		float _ret;
		Debug.OK((cast(Windows.Media.Devices.IZoomSettings)this.asInterface(uuid("6ad66b24-14b4-4bfd-b18f-88fe24463b52"))).get_Value(&_ret));
		return _ret;
	}
	final void Value(float value)
	{
		Debug.OK((cast(Windows.Media.Devices.IZoomSettings)this.asInterface(uuid("6ad66b24-14b4-4bfd-b18f-88fe24463b52"))).set_Value(value));
	}
	static ZoomSettings New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ZoomSettings).abi_ActivateInstance(&ret));
		return cast(ZoomSettings) ret;
	}
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