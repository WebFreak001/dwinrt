module Windows.Media.Capture;

import dwinrt;

struct WhiteBalanceGain
{
	double R;
	double G;
	double B;
}

@uuid("2014effb-5cd8-4f08-a314-0d360da59f14")
interface MediaCaptureFailedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Capture.MediaCapture sender, Windows.Media.Capture.MediaCaptureFailedEventArgs errorEventArgs);
}

@uuid("3fae8f2e-4fe1-4ffd-aaba-e1f1337d4e53")
interface RecordLimitationExceededEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Media.Capture.MediaCapture sender);
}

@uuid("f072728b-b292-4491-9d41-99807a550bbf")
@WinrtFactory("Windows.Media.Capture.AdvancedCapturedPhoto")
interface IAdvancedCapturedPhoto : IInspectable
{
extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_Mode(Windows.Media.Devices.AdvancedPhotoMode* return_value);
	HRESULT get_Context(IInspectable* return_value);
}

@uuid("18cf6cd8-cffe-42d8-8104-017bb318f4a1")
@WinrtFactory("Windows.Media.Capture.AdvancedCapturedPhoto")
interface IAdvancedCapturedPhoto2 : IInspectable
{
extern(Windows):
	HRESULT get_FrameBoundsRelativeToReferencePhoto(Windows.Foundation.IReference!(Windows.Foundation.Rect)* return_value);
}

@uuid("83ffaafa-6667-44dc-973c-a6bce596aa0f")
@WinrtFactory("Windows.Media.Capture.AdvancedPhotoCapture")
interface IAdvancedPhotoCapture : IInspectable
{
extern(Windows):
	HRESULT abi_CaptureAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.AdvancedCapturedPhoto)* return_operation);
	HRESULT abi_CaptureWithContextAsync(IInspectable context, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.AdvancedCapturedPhoto)* return_operation);
	HRESULT add_OptionalReferencePhotoCaptured(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AdvancedPhotoCapture, Windows.Media.Capture.OptionalReferencePhotoCapturedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_OptionalReferencePhotoCaptured(EventRegistrationToken token);
	HRESULT add_AllPhotosCaptured(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AdvancedPhotoCapture, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_AllPhotosCaptured(EventRegistrationToken token);
	HRESULT abi_FinishAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("bad1e72a-fa94-46f9-95fc-d71511cda70b")
@WinrtFactory("Windows.Media.Capture.AppBroadcastBackgroundService")
interface IAppBroadcastBackgroundService : IInspectable
{
extern(Windows):
	HRESULT set_PlugInState(Windows.Media.Capture.AppBroadcastPlugInState value);
	HRESULT get_PlugInState(Windows.Media.Capture.AppBroadcastPlugInState* return_value);
	HRESULT set_SignInInfo(Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo value);
	HRESULT get_SignInInfo(Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo* return_value);
	HRESULT set_StreamInfo(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo value);
	HRESULT get_StreamInfo(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo* return_value);
	HRESULT get_AppId(HSTRING* return_value);
	HRESULT get_BroadcastTitle(HSTRING* return_value);
	HRESULT set_ViewerCount(UINT32 value);
	HRESULT get_ViewerCount(UINT32* return_value);
	HRESULT abi_TerminateBroadcast(Windows.Media.Capture.AppBroadcastTerminationReason reason, UINT32 providerSpecificReason);
	HRESULT add_HeartbeatRequested(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastBackgroundService, Windows.Media.Capture.AppBroadcastHeartbeatRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_HeartbeatRequested(EventRegistrationToken token);
	HRESULT get_TitleId(HSTRING* return_value);
}

@uuid("5e735275-88c8-4eca-89ba-4825985db880")
@WinrtFactory("Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo")
interface IAppBroadcastBackgroundServiceSignInInfo : IInspectable
{
extern(Windows):
	HRESULT get_SignInState(Windows.Media.Capture.AppBroadcastSignInState* return_value);
	HRESULT set_OAuthRequestUri(Windows.Foundation.Uri value);
	HRESULT get_OAuthRequestUri(Windows.Foundation.Uri* return_value);
	HRESULT set_OAuthCallbackUri(Windows.Foundation.Uri value);
	HRESULT get_OAuthCallbackUri(Windows.Foundation.Uri* return_value);
	HRESULT get_AuthenticationResult(Windows.Security.Authentication.Web.WebAuthenticationResult* return_value);
	HRESULT set_UserName(HSTRING value);
	HRESULT get_UserName(HSTRING* return_value);
	HRESULT add_SignInStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo, Windows.Media.Capture.AppBroadcastSignInStateChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_SignInStateChanged(EventRegistrationToken token);
}

@uuid("31dc02bc-990a-4904-aa96-fe364381f136")
@WinrtFactory("Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo")
interface IAppBroadcastBackgroundServiceStreamInfo : IInspectable
{
extern(Windows):
	HRESULT get_StreamState(Windows.Media.Capture.AppBroadcastStreamState* return_value);
	HRESULT set_DesiredVideoEncodingBitrate(ulong value);
	HRESULT get_DesiredVideoEncodingBitrate(ulong* return_value);
	HRESULT set_BandwidthTestBitrate(ulong value);
	HRESULT get_BandwidthTestBitrate(ulong* return_value);
	HRESULT set_AudioCodec(HSTRING value);
	HRESULT get_AudioCodec(HSTRING* return_value);
	HRESULT get_BroadcastStreamReader(Windows.Media.Capture.AppBroadcastStreamReader* return_value);
	HRESULT add_StreamStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, Windows.Media.Capture.AppBroadcastStreamStateChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StreamStateChanged(EventRegistrationToken token);
	HRESULT add_VideoEncodingResolutionChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_VideoEncodingResolutionChanged(EventRegistrationToken token);
	HRESULT add_VideoEncodingBitrateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_VideoEncodingBitrateChanged(EventRegistrationToken token);
}

@uuid("1e334cd0-b882-4b88-8692-05999aceb70f")
@WinrtFactory("Windows.Media.Capture.AppBroadcastCameraCaptureStateChangedEventArgs")
interface IAppBroadcastCameraCaptureStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_State(Windows.Media.Capture.AppBroadcastCameraCaptureState* return_value);
	HRESULT get_ErrorCode(UINT32* return_value);
}

@uuid("b2cb27a5-70fc-4e17-80bd-6ba0fd3ff3a0")
@WinrtFactory("Windows.Media.Capture.AppBroadcastGlobalSettings")
interface IAppBroadcastGlobalSettings : IInspectable
{
extern(Windows):
	HRESULT get_IsBroadcastEnabled(bool* return_value);
	HRESULT get_IsDisabledByPolicy(bool* return_value);
	HRESULT get_IsGpuConstrained(bool* return_value);
	HRESULT get_HasHardwareEncoder(bool* return_value);
	HRESULT set_IsAudioCaptureEnabled(bool value);
	HRESULT get_IsAudioCaptureEnabled(bool* return_value);
	HRESULT set_IsMicrophoneCaptureEnabledByDefault(bool value);
	HRESULT get_IsMicrophoneCaptureEnabledByDefault(bool* return_value);
	HRESULT set_IsEchoCancellationEnabled(bool value);
	HRESULT get_IsEchoCancellationEnabled(bool* return_value);
	HRESULT set_SystemAudioGain(double value);
	HRESULT get_SystemAudioGain(double* return_value);
	HRESULT set_MicrophoneGain(double value);
	HRESULT get_MicrophoneGain(double* return_value);
	HRESULT set_IsCameraCaptureEnabledByDefault(bool value);
	HRESULT get_IsCameraCaptureEnabledByDefault(bool* return_value);
	HRESULT set_SelectedCameraId(HSTRING value);
	HRESULT get_SelectedCameraId(HSTRING* return_value);
	HRESULT set_CameraOverlayLocation(Windows.Media.Capture.AppBroadcastCameraOverlayLocation value);
	HRESULT get_CameraOverlayLocation(Windows.Media.Capture.AppBroadcastCameraOverlayLocation* return_value);
	HRESULT set_CameraOverlaySize(Windows.Media.Capture.AppBroadcastCameraOverlaySize value);
	HRESULT get_CameraOverlaySize(Windows.Media.Capture.AppBroadcastCameraOverlaySize* return_value);
	HRESULT set_IsCursorImageCaptureEnabled(bool value);
	HRESULT get_IsCursorImageCaptureEnabled(bool* return_value);
}

@uuid("cea54283-ee51-4dbf-9472-79a9ed4e2165")
@WinrtFactory("Windows.Media.Capture.AppBroadcastHeartbeatRequestedEventArgs")
interface IAppBroadcastHeartbeatRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT set_Handled(bool value);
	HRESULT get_Handled(bool* return_value);
}

@uuid("364e018b-1e4e-411f-ab3e-92959844c156")
@WinrtFactory("Windows.Media.Capture.AppBroadcastManager")
interface IAppBroadcastManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetGlobalSettings(Windows.Media.Capture.AppBroadcastGlobalSettings* return_value);
	HRESULT abi_ApplyGlobalSettings(Windows.Media.Capture.AppBroadcastGlobalSettings value);
	HRESULT abi_GetProviderSettings(Windows.Media.Capture.AppBroadcastProviderSettings* return_value);
	HRESULT abi_ApplyProviderSettings(Windows.Media.Capture.AppBroadcastProviderSettings value);
}

@uuid("a86ad5e9-9440-4908-9d09-65b7e315d795")
@WinrtFactory("Windows.Media.Capture.AppBroadcastMicrophoneCaptureStateChangedEventArgs")
interface IAppBroadcastMicrophoneCaptureStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_State(Windows.Media.Capture.AppBroadcastMicrophoneCaptureState* return_value);
	HRESULT get_ErrorCode(UINT32* return_value);
}

@uuid("520c1e66-6513-4574-ac54-23b79729615b")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPlugIn")
interface IAppBroadcastPlugIn : IInspectable
{
extern(Windows):
	HRESULT get_AppId(HSTRING* return_value);
	HRESULT get_ProviderSettings(Windows.Media.Capture.AppBroadcastProviderSettings* return_value);
	HRESULT get_Logo(Windows.Storage.Streams.IRandomAccessStreamReference* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
}

@uuid("e550d979-27a1-49a7-bbf4-d7a9e9d07668")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPlugInManager")
interface IAppBroadcastPlugInManager : IInspectable
{
extern(Windows):
	HRESULT get_IsBroadcastProviderAvailable(bool* return_value);
	HRESULT get_PlugInList(Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.AppBroadcastPlugIn)* return_value);
	HRESULT get_DefaultPlugIn(Windows.Media.Capture.AppBroadcastPlugIn* return_value);
	HRESULT set_DefaultPlugIn(Windows.Media.Capture.AppBroadcastPlugIn value);
}

@uuid("f2645c20-5c76-4cdc-9364-82fe9eb6534d")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPlugInManager")
interface IAppBroadcastPlugInManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Media.Capture.AppBroadcastPlugInManager* return_ppInstance);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.Media.Capture.AppBroadcastPlugInManager* return_ppInstance);
}

@uuid("4881d0f2-abc5-4fc6-84b0-89370bb47212")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPlugInStateChangedEventArgs")
interface IAppBroadcastPlugInStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PlugInState(Windows.Media.Capture.AppBroadcastPlugInState* return_value);
}

@uuid("14b60f5a-6e4a-4b80-a14f-67ee77d153e7")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPreview")
interface IAppBroadcastPreview : IInspectable
{
extern(Windows):
	HRESULT abi_StopPreview();
	HRESULT get_PreviewState(Windows.Media.Capture.AppBroadcastPreviewState* return_value);
	HRESULT get_ErrorCode(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT add_PreviewStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastPreview, Windows.Media.Capture.AppBroadcastPreviewStateChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_PreviewStateChanged(EventRegistrationToken token);
	HRESULT get_PreviewStreamReader(Windows.Media.Capture.AppBroadcastPreviewStreamReader* return_value);
}

@uuid("5a57f2de-8dea-4e86-90ad-03fc26b9653c")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPreviewStateChangedEventArgs")
interface IAppBroadcastPreviewStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PreviewState(Windows.Media.Capture.AppBroadcastPreviewState* return_value);
	HRESULT get_ErrorCode(UINT32* return_value);
}

@uuid("92228d50-db3f-40a8-8cd4-f4e371ddab37")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPreviewStreamReader")
interface IAppBroadcastPreviewStreamReader : IInspectable
{
extern(Windows):
	HRESULT get_VideoWidth(UINT32* return_value);
	HRESULT get_VideoHeight(UINT32* return_value);
	HRESULT get_VideoStride(UINT32* return_value);
	HRESULT get_VideoBitmapPixelFormat(Windows.Graphics.Imaging.BitmapPixelFormat* return_value);
	HRESULT get_VideoBitmapAlphaMode(Windows.Graphics.Imaging.BitmapAlphaMode* return_value);
	HRESULT abi_TryGetNextVideoFrame(Windows.Media.Capture.AppBroadcastPreviewStreamVideoFrame* return_frame);
	HRESULT add_VideoFrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastPreviewStreamReader, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_VideoFrameArrived(EventRegistrationToken token);
}

@uuid("010fbea1-94fe-4499-b8c0-8d244279fb12")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPreviewStreamVideoFrame")
interface IAppBroadcastPreviewStreamVideoFrame : IInspectable
{
extern(Windows):
	HRESULT get_VideoHeader(Windows.Media.Capture.AppBroadcastPreviewStreamVideoHeader* return_value);
	HRESULT get_VideoBuffer(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("8bef6113-da84-4499-a7ab-87118cb4a157")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPreviewStreamVideoHeader")
interface IAppBroadcastPreviewStreamVideoHeader : IInspectable
{
extern(Windows):
	HRESULT get_AbsoluteTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_RelativeTimestamp(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_FrameId(ulong* return_value);
}

@uuid("c30bdf62-9948-458f-ad50-aa06ec03da08")
@WinrtFactory("Windows.Media.Capture.AppBroadcastProviderSettings")
interface IAppBroadcastProviderSettings : IInspectable
{
extern(Windows):
	HRESULT set_DefaultBroadcastTitle(HSTRING value);
	HRESULT get_DefaultBroadcastTitle(HSTRING* return_value);
	HRESULT set_AudioEncodingBitrate(UINT32 value);
	HRESULT get_AudioEncodingBitrate(UINT32* return_value);
	HRESULT set_CustomVideoEncodingBitrate(UINT32 value);
	HRESULT get_CustomVideoEncodingBitrate(UINT32* return_value);
	HRESULT set_CustomVideoEncodingHeight(UINT32 value);
	HRESULT get_CustomVideoEncodingHeight(UINT32* return_value);
	HRESULT set_CustomVideoEncodingWidth(UINT32 value);
	HRESULT get_CustomVideoEncodingWidth(UINT32* return_value);
	HRESULT set_VideoEncodingBitrateMode(Windows.Media.Capture.AppBroadcastVideoEncodingBitrateMode value);
	HRESULT get_VideoEncodingBitrateMode(Windows.Media.Capture.AppBroadcastVideoEncodingBitrateMode* return_value);
	HRESULT set_VideoEncodingResolutionMode(Windows.Media.Capture.AppBroadcastVideoEncodingResolutionMode value);
	HRESULT get_VideoEncodingResolutionMode(Windows.Media.Capture.AppBroadcastVideoEncodingResolutionMode* return_value);
}

@uuid("8660b4d6-969b-4e3c-ac3a-8b042ee4ee63")
@WinrtFactory("Windows.Media.Capture.AppBroadcastServices")
interface IAppBroadcastServices : IInspectable
{
extern(Windows):
	HRESULT get_CaptureTargetType(Windows.Media.Capture.AppBroadcastCaptureTargetType* return_value);
	HRESULT set_CaptureTargetType(Windows.Media.Capture.AppBroadcastCaptureTargetType value);
	HRESULT get_BroadcastTitle(HSTRING* return_value);
	HRESULT set_BroadcastTitle(HSTRING value);
	HRESULT get_BroadcastLanguage(HSTRING* return_value);
	HRESULT set_BroadcastLanguage(HSTRING value);
	HRESULT get_UserName(HSTRING* return_value);
	HRESULT get_CanCapture(bool* return_value);
	HRESULT abi_EnterBroadcastModeAsync(Windows.Media.Capture.AppBroadcastPlugIn plugIn, Windows.Foundation.IAsyncOperation!(UINT32)* return_operation);
	HRESULT abi_ExitBroadcastMode(Windows.Media.Capture.AppBroadcastExitBroadcastModeReason reason);
	HRESULT abi_StartBroadcast();
	HRESULT abi_PauseBroadcast();
	HRESULT abi_ResumeBroadcast();
	HRESULT abi_StartPreview(Windows.Foundation.Size desiredSize, Windows.Media.Capture.AppBroadcastPreview* return_preview);
	HRESULT get_State(Windows.Media.Capture.AppBroadcastState* return_value);
}

@uuid("02b692a4-5919-4a9e-8d5e-c9bb0dd3377a")
@WinrtFactory("Windows.Media.Capture.AppBroadcastSignInStateChangedEventArgs")
interface IAppBroadcastSignInStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_SignInState(Windows.Media.Capture.AppBroadcastSignInState* return_value);
	HRESULT get_Result(Windows.Media.Capture.AppBroadcastSignInResult* return_value);
}

@uuid("ee08056d-8099-4ddd-922e-c56dac58abfb")
@WinrtFactory("Windows.Media.Capture.AppBroadcastState")
interface IAppBroadcastState : IInspectable
{
extern(Windows):
	HRESULT get_IsCaptureTargetRunning(bool* return_value);
	HRESULT get_ViewerCount(UINT32* return_value);
	HRESULT get_ShouldCaptureMicrophone(bool* return_value);
	HRESULT set_ShouldCaptureMicrophone(bool value);
	HRESULT abi_RestartMicrophoneCapture();
	HRESULT get_ShouldCaptureCamera(bool* return_value);
	HRESULT set_ShouldCaptureCamera(bool value);
	HRESULT abi_RestartCameraCapture();
	HRESULT get_EncodedVideoSize(Windows.Foundation.Size* return_value);
	HRESULT get_MicrophoneCaptureState(Windows.Media.Capture.AppBroadcastMicrophoneCaptureState* return_value);
	HRESULT get_MicrophoneCaptureError(UINT32* return_value);
	HRESULT get_CameraCaptureState(Windows.Media.Capture.AppBroadcastCameraCaptureState* return_value);
	HRESULT get_CameraCaptureError(UINT32* return_value);
	HRESULT get_StreamState(Windows.Media.Capture.AppBroadcastStreamState* return_value);
	HRESULT get_PlugInState(Windows.Media.Capture.AppBroadcastPlugInState* return_value);
	HRESULT get_OAuthRequestUri(Windows.Foundation.Uri* return_value);
	HRESULT get_OAuthCallbackUri(Windows.Foundation.Uri* return_value);
	HRESULT get_AuthenticationResult(Windows.Security.Authentication.Web.WebAuthenticationResult* return_value);
	HRESULT set_AuthenticationResult(Windows.Security.Authentication.Web.WebAuthenticationResult value);
	HRESULT set_SignInState(Windows.Media.Capture.AppBroadcastSignInState value);
	HRESULT get_SignInState(Windows.Media.Capture.AppBroadcastSignInState* return_value);
	HRESULT get_TerminationReason(Windows.Media.Capture.AppBroadcastTerminationReason* return_value);
	HRESULT get_TerminationReasonPlugInSpecific(UINT32* return_value);
	HRESULT add_ViewerCountChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastViewerCountChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_ViewerCountChanged(EventRegistrationToken token);
	HRESULT add_MicrophoneCaptureStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastMicrophoneCaptureStateChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MicrophoneCaptureStateChanged(EventRegistrationToken token);
	HRESULT add_CameraCaptureStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastCameraCaptureStateChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_CameraCaptureStateChanged(EventRegistrationToken token);
	HRESULT add_PlugInStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastPlugInStateChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PlugInStateChanged(EventRegistrationToken token);
	HRESULT add_StreamStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastStreamStateChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StreamStateChanged(EventRegistrationToken token);
	HRESULT add_CaptureTargetClosed(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_CaptureTargetClosed(EventRegistrationToken token);
}

@uuid("efab4ac8-21ba-453f-8bb7-5e938a2e9a74")
@WinrtFactory("Windows.Media.Capture.AppBroadcastStreamAudioFrame")
interface IAppBroadcastStreamAudioFrame : IInspectable
{
extern(Windows):
	HRESULT get_AudioHeader(Windows.Media.Capture.AppBroadcastStreamAudioHeader* return_value);
	HRESULT get_AudioBuffer(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("bf21a570-6b78-4216-9f07-5aff5256f1b7")
@WinrtFactory("Windows.Media.Capture.AppBroadcastStreamAudioHeader")
interface IAppBroadcastStreamAudioHeader : IInspectable
{
extern(Windows):
	HRESULT get_AbsoluteTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_RelativeTimestamp(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_HasDiscontinuity(bool* return_value);
	HRESULT get_FrameId(ulong* return_value);
}

@uuid("b338bcf9-3364-4460-b5f1-3cc2796a8aa2")
@WinrtFactory("Windows.Media.Capture.AppBroadcastStreamReader")
interface IAppBroadcastStreamReader : IInspectable
{
extern(Windows):
	HRESULT get_AudioChannels(UINT32* return_value);
	HRESULT get_AudioSampleRate(UINT32* return_value);
	HRESULT get_AudioAacSequence(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_AudioBitrate(UINT32* return_value);
	HRESULT abi_TryGetNextAudioFrame(Windows.Media.Capture.AppBroadcastStreamAudioFrame* return_frame);
	HRESULT get_VideoWidth(UINT32* return_value);
	HRESULT get_VideoHeight(UINT32* return_value);
	HRESULT get_VideoBitrate(UINT32* return_value);
	HRESULT abi_TryGetNextVideoFrame(Windows.Media.Capture.AppBroadcastStreamVideoFrame* return_frame);
	HRESULT add_AudioFrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastStreamReader, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_AudioFrameArrived(EventRegistrationToken token);
	HRESULT add_VideoFrameArrived(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastStreamReader, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_VideoFrameArrived(EventRegistrationToken token);
}

@uuid("5108a733-d008-4a89-93be-58aed961374e")
@WinrtFactory("Windows.Media.Capture.AppBroadcastStreamStateChangedEventArgs")
interface IAppBroadcastStreamStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_StreamState(Windows.Media.Capture.AppBroadcastStreamState* return_value);
}

@uuid("0f97cf2b-c9e4-4e88-8194-d814cbd585d8")
@WinrtFactory("Windows.Media.Capture.AppBroadcastStreamVideoFrame")
interface IAppBroadcastStreamVideoFrame : IInspectable
{
extern(Windows):
	HRESULT get_VideoHeader(Windows.Media.Capture.AppBroadcastStreamVideoHeader* return_value);
	HRESULT get_VideoBuffer(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("0b9ebece-7e32-432d-8ca2-36bf10b9f462")
@WinrtFactory("Windows.Media.Capture.AppBroadcastStreamVideoHeader")
interface IAppBroadcastStreamVideoHeader : IInspectable
{
extern(Windows):
	HRESULT get_AbsoluteTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_RelativeTimestamp(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_IsKeyFrame(bool* return_value);
	HRESULT get_HasDiscontinuity(bool* return_value);
	HRESULT get_FrameId(ulong* return_value);
}

@uuid("deebab35-ec5e-4d8f-b1c0-5da6e8c75638")
@WinrtFactory("Windows.Media.Capture.AppBroadcastTriggerDetails")
interface IAppBroadcastTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_BackgroundService(Windows.Media.Capture.AppBroadcastBackgroundService* return_value);
}

@uuid("e6e11825-5401-4ade-8bd2-c14ecee6807d")
@WinrtFactory("Windows.Media.Capture.AppBroadcastViewerCountChangedEventArgs")
interface IAppBroadcastViewerCountChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ViewerCount(UINT32* return_value);
}

@uuid("9749d453-a29a-45ed-8f29-22d09942cff7")
@WinrtFactory("Windows.Media.Capture.AppCapture")
interface IAppCapture : IInspectable
{
extern(Windows):
	HRESULT get_IsCapturingAudio(bool* return_value);
	HRESULT get_IsCapturingVideo(bool* return_value);
	HRESULT add_CapturingChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCapture, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_CapturingChanged(EventRegistrationToken token);
}

@uuid("19e8e0ef-236c-40f9-b38f-9b7dd65d1ccc")
@WinrtFactory("Windows.Media.Capture.AppCaptureAlternateShortcutKeys")
interface IAppCaptureAlternateShortcutKeys : IInspectable
{
extern(Windows):
	HRESULT set_ToggleGameBarKey(Windows.System.VirtualKey value);
	HRESULT get_ToggleGameBarKey(Windows.System.VirtualKey* return_value);
	HRESULT set_ToggleGameBarKeyModifiers(Windows.System.VirtualKeyModifiers value);
	HRESULT get_ToggleGameBarKeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
	HRESULT set_SaveHistoricalVideoKey(Windows.System.VirtualKey value);
	HRESULT get_SaveHistoricalVideoKey(Windows.System.VirtualKey* return_value);
	HRESULT set_SaveHistoricalVideoKeyModifiers(Windows.System.VirtualKeyModifiers value);
	HRESULT get_SaveHistoricalVideoKeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
	HRESULT set_ToggleRecordingKey(Windows.System.VirtualKey value);
	HRESULT get_ToggleRecordingKey(Windows.System.VirtualKey* return_value);
	HRESULT set_ToggleRecordingKeyModifiers(Windows.System.VirtualKeyModifiers value);
	HRESULT get_ToggleRecordingKeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
	HRESULT set_TakeScreenshotKey(Windows.System.VirtualKey value);
	HRESULT get_TakeScreenshotKey(Windows.System.VirtualKey* return_value);
	HRESULT set_TakeScreenshotKeyModifiers(Windows.System.VirtualKeyModifiers value);
	HRESULT get_TakeScreenshotKeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
	HRESULT set_ToggleRecordingIndicatorKey(Windows.System.VirtualKey value);
	HRESULT get_ToggleRecordingIndicatorKey(Windows.System.VirtualKey* return_value);
	HRESULT set_ToggleRecordingIndicatorKeyModifiers(Windows.System.VirtualKeyModifiers value);
	HRESULT get_ToggleRecordingIndicatorKeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
}

@uuid("c3669090-dd17-47f0-95e5-ce42286cf338")
@WinrtFactory("Windows.Media.Capture.AppCaptureAlternateShortcutKeys")
interface IAppCaptureAlternateShortcutKeys2 : IInspectable
{
extern(Windows):
	HRESULT set_ToggleMicrophoneCaptureKey(Windows.System.VirtualKey value);
	HRESULT get_ToggleMicrophoneCaptureKey(Windows.System.VirtualKey* return_value);
	HRESULT set_ToggleMicrophoneCaptureKeyModifiers(Windows.System.VirtualKeyModifiers value);
	HRESULT get_ToggleMicrophoneCaptureKeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
}

@uuid("7b81448c-418e-469c-a49a-45b597c826b6")
@WinrtFactory("Windows.Media.Capture.AppCaptureAlternateShortcutKeys")
interface IAppCaptureAlternateShortcutKeys3 : IInspectable
{
extern(Windows):
	HRESULT set_ToggleCameraCaptureKey(Windows.System.VirtualKey value);
	HRESULT get_ToggleCameraCaptureKey(Windows.System.VirtualKey* return_value);
	HRESULT set_ToggleCameraCaptureKeyModifiers(Windows.System.VirtualKeyModifiers value);
	HRESULT get_ToggleCameraCaptureKeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
	HRESULT set_ToggleBroadcastKey(Windows.System.VirtualKey value);
	HRESULT get_ToggleBroadcastKey(Windows.System.VirtualKey* return_value);
	HRESULT set_ToggleBroadcastKeyModifiers(Windows.System.VirtualKeyModifiers value);
	HRESULT get_ToggleBroadcastKeyModifiers(Windows.System.VirtualKeyModifiers* return_value);
}

@uuid("c1f5563b-ffa1-44c9-975f-27fbeb553b35")
@WinrtFactory("Windows.Media.Capture.AppCaptureDurationGeneratedEventArgs")
interface IAppCaptureDurationGeneratedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("4189fbf4-465e-45bf-907f-165b3fb23758")
@WinrtFactory("Windows.Media.Capture.AppCaptureFileGeneratedEventArgs")
interface IAppCaptureFileGeneratedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_File(Windows.Storage.StorageFile* return_value);
}

@uuid("7d9e3ea7-6282-4735-8d4e-aa45f90f6723")
@WinrtFactory("Windows.Media.Capture.AppCaptureManager")
interface IAppCaptureManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetCurrentSettings(Windows.Media.Capture.AppCaptureSettings* return_value);
	HRESULT abi_ApplySettings(Windows.Media.Capture.AppCaptureSettings appCaptureSettings);
}

@uuid("324d249e-45bc-4c35-bc35-e469fc7a69e0")
@WinrtFactory("Windows.Media.Capture.AppCaptureMicrophoneCaptureStateChangedEventArgs")
interface IAppCaptureMicrophoneCaptureStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_State(Windows.Media.Capture.AppCaptureMicrophoneCaptureState* return_value);
	HRESULT get_ErrorCode(UINT32* return_value);
}

@uuid("c66020a9-1538-495c-9bbb-2ba870ec5861")
@WinrtFactory("Windows.Media.Capture.AppCaptureRecordOperation")
interface IAppCaptureRecordOperation : IInspectable
{
extern(Windows):
	HRESULT abi_StopRecording();
	HRESULT get_State(Windows.Media.Capture.AppCaptureRecordingState* return_value);
	HRESULT get_ErrorCode(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_Duration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_File(Windows.Storage.StorageFile* return_value);
	HRESULT get_IsFileTruncated(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureRecordingStateChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_StateChanged(EventRegistrationToken token);
	HRESULT add_DurationGenerated(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureDurationGeneratedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_DurationGenerated(EventRegistrationToken token);
	HRESULT add_FileGenerated(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureFileGeneratedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_FileGenerated(EventRegistrationToken token);
}

@uuid("24fc8712-e305-490d-b415-6b1c9049736b")
@WinrtFactory("Windows.Media.Capture.AppCaptureRecordingStateChangedEventArgs")
interface IAppCaptureRecordingStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_State(Windows.Media.Capture.AppCaptureRecordingState* return_value);
	HRESULT get_ErrorCode(UINT32* return_value);
}

@uuid("44fec0b5-34f5-4f18-ae8c-b9123abbfc0d")
@WinrtFactory("Windows.Media.Capture.AppCaptureServices")
interface IAppCaptureServices : IInspectable
{
extern(Windows):
	HRESULT abi_Record(Windows.Media.Capture.AppCaptureRecordOperation* return_operation);
	HRESULT abi_RecordTimeSpan(Windows.Foundation.DateTime startTime, Windows.Foundation.TimeSpan duration, Windows.Media.Capture.AppCaptureRecordOperation* return_operation);
	HRESULT get_CanCapture(bool* return_value);
	HRESULT get_State(Windows.Media.Capture.AppCaptureState* return_value);
}

@uuid("14683a86-8807-48d3-883a-970ee4532a39")
@WinrtFactory("Windows.Media.Capture.AppCaptureSettings")
interface IAppCaptureSettings : IInspectable
{
extern(Windows):
	HRESULT set_AppCaptureDestinationFolder(Windows.Storage.StorageFolder value);
	HRESULT get_AppCaptureDestinationFolder(Windows.Storage.StorageFolder* return_value);
	HRESULT set_AudioEncodingBitrate(UINT32 value);
	HRESULT get_AudioEncodingBitrate(UINT32* return_value);
	HRESULT set_IsAudioCaptureEnabled(bool value);
	HRESULT get_IsAudioCaptureEnabled(bool* return_value);
	HRESULT set_CustomVideoEncodingBitrate(UINT32 value);
	HRESULT get_CustomVideoEncodingBitrate(UINT32* return_value);
	HRESULT set_CustomVideoEncodingHeight(UINT32 value);
	HRESULT get_CustomVideoEncodingHeight(UINT32* return_value);
	HRESULT set_CustomVideoEncodingWidth(UINT32 value);
	HRESULT get_CustomVideoEncodingWidth(UINT32* return_value);
	HRESULT set_HistoricalBufferLength(UINT32 value);
	HRESULT get_HistoricalBufferLength(UINT32* return_value);
	HRESULT set_HistoricalBufferLengthUnit(Windows.Media.Capture.AppCaptureHistoricalBufferLengthUnit value);
	HRESULT get_HistoricalBufferLengthUnit(Windows.Media.Capture.AppCaptureHistoricalBufferLengthUnit* return_value);
	HRESULT set_IsHistoricalCaptureEnabled(bool value);
	HRESULT get_IsHistoricalCaptureEnabled(bool* return_value);
	HRESULT set_IsHistoricalCaptureOnBatteryAllowed(bool value);
	HRESULT get_IsHistoricalCaptureOnBatteryAllowed(bool* return_value);
	HRESULT set_IsHistoricalCaptureOnWirelessDisplayAllowed(bool value);
	HRESULT get_IsHistoricalCaptureOnWirelessDisplayAllowed(bool* return_value);
	HRESULT set_MaximumRecordLength(Windows.Foundation.TimeSpan value);
	HRESULT get_MaximumRecordLength(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_ScreenshotDestinationFolder(Windows.Storage.StorageFolder value);
	HRESULT get_ScreenshotDestinationFolder(Windows.Storage.StorageFolder* return_value);
	HRESULT set_VideoEncodingBitrateMode(Windows.Media.Capture.AppCaptureVideoEncodingBitrateMode value);
	HRESULT get_VideoEncodingBitrateMode(Windows.Media.Capture.AppCaptureVideoEncodingBitrateMode* return_value);
	HRESULT set_VideoEncodingResolutionMode(Windows.Media.Capture.AppCaptureVideoEncodingResolutionMode value);
	HRESULT get_VideoEncodingResolutionMode(Windows.Media.Capture.AppCaptureVideoEncodingResolutionMode* return_value);
	HRESULT set_IsAppCaptureEnabled(bool value);
	HRESULT get_IsAppCaptureEnabled(bool* return_value);
	HRESULT get_IsCpuConstrained(bool* return_value);
	HRESULT get_IsDisabledByPolicy(bool* return_value);
	HRESULT get_IsMemoryConstrained(bool* return_value);
	HRESULT get_HasHardwareEncoder(bool* return_value);
}

@uuid("fcb8cee7-e26b-476f-9b1a-ec342d2a8fde")
@WinrtFactory("Windows.Media.Capture.AppCaptureSettings")
interface IAppCaptureSettings2 : IInspectable
{
extern(Windows):
	HRESULT get_IsGpuConstrained(bool* return_value);
	HRESULT get_AlternateShortcutKeys(Windows.Media.Capture.AppCaptureAlternateShortcutKeys* return_value);
}

@uuid("a93502fe-88c2-42d6-aaaa-40feffd75aec")
@WinrtFactory("Windows.Media.Capture.AppCaptureSettings")
interface IAppCaptureSettings3 : IInspectable
{
extern(Windows):
	HRESULT set_IsMicrophoneCaptureEnabled(bool value);
	HRESULT get_IsMicrophoneCaptureEnabled(bool* return_value);
}

@uuid("07c2774c-1a81-482f-a244-049d95f25b0b")
@WinrtFactory("Windows.Media.Capture.AppCaptureSettings")
interface IAppCaptureSettings4 : IInspectable
{
extern(Windows):
	HRESULT set_IsMicrophoneCaptureEnabledByDefault(bool value);
	HRESULT get_IsMicrophoneCaptureEnabledByDefault(bool* return_value);
	HRESULT set_SystemAudioGain(double value);
	HRESULT get_SystemAudioGain(double* return_value);
	HRESULT set_MicrophoneGain(double value);
	HRESULT get_MicrophoneGain(double* return_value);
	HRESULT set_VideoEncodingFrameRateMode(Windows.Media.Capture.AppCaptureVideoEncodingFrameRateMode value);
	HRESULT get_VideoEncodingFrameRateMode(Windows.Media.Capture.AppCaptureVideoEncodingFrameRateMode* return_value);
}

@uuid("18894522-b0e8-4ba0-8f13-3eaa5fa4013b")
@WinrtFactory("Windows.Media.Capture.AppCaptureSettings")
interface IAppCaptureSettings5 : IInspectable
{
extern(Windows):
	HRESULT set_IsEchoCancellationEnabled(bool value);
	HRESULT get_IsEchoCancellationEnabled(bool* return_value);
	HRESULT set_IsCursorImageCaptureEnabled(bool value);
	HRESULT get_IsCursorImageCaptureEnabled(bool* return_value);
}

@uuid("73134372-d4eb-44ce-9538-465f506ac4ea")
@WinrtFactory("Windows.Media.Capture.AppCaptureState")
interface IAppCaptureState : IInspectable
{
extern(Windows):
	HRESULT get_IsTargetRunning(bool* return_value);
	HRESULT get_IsHistoricalCaptureEnabled(bool* return_value);
	HRESULT get_ShouldCaptureMicrophone(bool* return_value);
	HRESULT set_ShouldCaptureMicrophone(bool value);
	HRESULT abi_RestartMicrophoneCapture();
	HRESULT get_MicrophoneCaptureState(Windows.Media.Capture.AppCaptureMicrophoneCaptureState* return_value);
	HRESULT get_MicrophoneCaptureError(UINT32* return_value);
	HRESULT add_MicrophoneCaptureStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCaptureState, Windows.Media.Capture.AppCaptureMicrophoneCaptureStateChangedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_MicrophoneCaptureStateChanged(EventRegistrationToken token);
	HRESULT add_CaptureTargetClosed(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCaptureState, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_CaptureTargetClosed(EventRegistrationToken token);
}

@uuid("f922dd6c-0a7e-4e74-8b20-9c1f902d08a1")
@WinrtFactory("Windows.Media.Capture.AppCapture")
interface IAppCaptureStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.Media.Capture.AppCapture* return_value);
}

@uuid("48587540-6f93-4bb4-b8f3-e89e48948c91")
@WinrtFactory("Windows.Media.Capture.CameraCaptureUI")
interface ICameraCaptureUI : IInspectable
{
extern(Windows):
	HRESULT get_PhotoSettings(Windows.Media.Capture.CameraCaptureUIPhotoCaptureSettings* return_value);
	HRESULT get_VideoSettings(Windows.Media.Capture.CameraCaptureUIVideoCaptureSettings* return_value);
	HRESULT abi_CaptureFileAsync(Windows.Media.Capture.CameraCaptureUIMode mode, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_asyncInfo);
}

@uuid("b9f5be97-3472-46a8-8a9e-04ce42ccc97d")
@WinrtFactory("Windows.Media.Capture.CameraCaptureUIPhotoCaptureSettings")
interface ICameraCaptureUIPhotoCaptureSettings : IInspectable
{
extern(Windows):
	HRESULT get_Format(Windows.Media.Capture.CameraCaptureUIPhotoFormat* return_value);
	HRESULT set_Format(Windows.Media.Capture.CameraCaptureUIPhotoFormat value);
	HRESULT get_MaxResolution(Windows.Media.Capture.CameraCaptureUIMaxPhotoResolution* return_value);
	HRESULT set_MaxResolution(Windows.Media.Capture.CameraCaptureUIMaxPhotoResolution value);
	HRESULT get_CroppedSizeInPixels(Windows.Foundation.Size* return_value);
	HRESULT set_CroppedSizeInPixels(Windows.Foundation.Size value);
	HRESULT get_CroppedAspectRatio(Windows.Foundation.Size* return_value);
	HRESULT set_CroppedAspectRatio(Windows.Foundation.Size value);
	HRESULT get_AllowCropping(bool* return_value);
	HRESULT set_AllowCropping(bool value);
}

@uuid("64e92d1f-a28d-425a-b84f-e568335ff24e")
@WinrtFactory("Windows.Media.Capture.CameraCaptureUIVideoCaptureSettings")
interface ICameraCaptureUIVideoCaptureSettings : IInspectable
{
extern(Windows):
	HRESULT get_Format(Windows.Media.Capture.CameraCaptureUIVideoFormat* return_value);
	HRESULT set_Format(Windows.Media.Capture.CameraCaptureUIVideoFormat value);
	HRESULT get_MaxResolution(Windows.Media.Capture.CameraCaptureUIMaxVideoResolution* return_value);
	HRESULT set_MaxResolution(Windows.Media.Capture.CameraCaptureUIMaxVideoResolution value);
	HRESULT get_MaxDurationInSeconds(float* return_value);
	HRESULT set_MaxDurationInSeconds(float value);
	HRESULT get_AllowTrimming(bool* return_value);
	HRESULT set_AllowTrimming(bool value);
}

@uuid("3b0d5e34-3906-4b7d-946c-7bde844499ae")
@WinrtFactory("Windows.Media.Capture.CameraOptionsUI")
interface ICameraOptionsUIStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Show(Windows.Media.Capture.MediaCapture mediaCapture);
}

@uuid("1dd2de1f-571b-44d8-8e80-a08a1578766e")
@WinrtFactory("Windows.Media.Capture.CapturedFrame")
interface ICapturedFrame_Base : IInspectable
{
extern(Windows):
	HRESULT get_Width(UINT32* return_value);
	HRESULT get_Height(UINT32* return_value);
}
@uuid("1dd2de1f-571b-44d8-8e80-a08a1578766e")
@WinrtFactory("Windows.Media.Capture.CapturedFrame")
interface ICapturedFrame : ICapturedFrame_Base, Windows.Storage.Streams.IRandomAccessStreamWithContentType, Windows.Storage.Streams.IRandomAccessStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream, Windows.Storage.Streams.IOutputStream, Windows.Storage.Streams.IContentTypeProvider {}

@uuid("90c65b7f-4e0d-4ca4-882d-7a144fed0a90")
@WinrtFactory("Windows.Media.Capture.CapturedFrameControlValues")
interface ICapturedFrameControlValues : IInspectable
{
extern(Windows):
	HRESULT get_Exposure(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_ExposureCompensation(Windows.Foundation.IReference!(float)* return_value);
	HRESULT get_IsoSpeed(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_Focus(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_SceneMode(Windows.Foundation.IReference!(Windows.Media.Devices.CaptureSceneMode)* return_value);
	HRESULT get_Flashed(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT get_FlashPowerPercent(Windows.Foundation.IReference!(float)* return_value);
	HRESULT get_WhiteBalance(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_ZoomFactor(Windows.Foundation.IReference!(float)* return_value);
}

@uuid("500b2b88-06d2-4aa7-a7db-d37af73321d8")
@WinrtFactory("Windows.Media.Capture.CapturedFrameControlValues")
interface ICapturedFrameControlValues2 : IInspectable
{
extern(Windows):
	HRESULT get_FocusState(Windows.Foundation.IReference!(Windows.Media.Devices.MediaCaptureFocusState)* return_value);
	HRESULT get_IsoDigitalGain(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_IsoAnalogGain(Windows.Foundation.IReference!(double)* return_value);
	HRESULT get_SensorFrameRate(Windows.Media.MediaProperties.MediaRatio* return_value);
	HRESULT get_WhiteBalanceGain(Windows.Foundation.IReference!(Windows.Media.Capture.WhiteBalanceGain)* return_value);
}

@uuid("b58e8b6e-8503-49b5-9e86-897d26a3ff3d")
@WinrtFactory("Windows.Media.Capture.CapturedFrame")
interface ICapturedFrameWithSoftwareBitmap : IInspectable
{
extern(Windows):
	HRESULT get_SoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap* return_value);
}

@uuid("b0ce7e5a-cfcc-4d6c-8ad1-0869208aca16")
@WinrtFactory("Windows.Media.Capture.CapturedPhoto")
interface ICapturedPhoto : IInspectable
{
extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_Thumbnail(Windows.Media.Capture.CapturedFrame* return_value);
}

@uuid("2dbead57-50a6-499e-8c6c-d330a7311796")
@WinrtFactory("Windows.Media.Capture.GameBarServices")
interface IGameBarServices : IInspectable
{
extern(Windows):
	HRESULT get_TargetCapturePolicy(Windows.Media.Capture.GameBarTargetCapturePolicy* return_value);
	HRESULT abi_EnableCapture();
	HRESULT abi_DisableCapture();
	HRESULT get_TargetInfo(Windows.Media.Capture.GameBarServicesTargetInfo* return_value);
	HRESULT get_SessionId(HSTRING* return_value);
	HRESULT get_AppBroadcastServices(Windows.Media.Capture.AppBroadcastServices* return_value);
	HRESULT get_AppCaptureServices(Windows.Media.Capture.AppCaptureServices* return_value);
	HRESULT add_CommandReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.GameBarServices, Windows.Media.Capture.GameBarServicesCommandEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_CommandReceived(EventRegistrationToken token);
}

@uuid("a74226b2-f176-4fcf-8fbb-cf698b2eb8e0")
@WinrtFactory("Windows.Media.Capture.GameBarServicesCommandEventArgs")
interface IGameBarServicesCommandEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Command(Windows.Media.Capture.GameBarCommand* return_value);
	HRESULT get_Origin(Windows.Media.Capture.GameBarCommandOrigin* return_value);
}

@uuid("3a4b9cfa-7f8b-4c60-9dbb-0bcd262dffc6")
@WinrtFactory("Windows.Media.Capture.GameBarServicesManager")
interface IGameBarServicesManager : IInspectable
{
extern(Windows):
	HRESULT add_GameBarServicesCreated(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.GameBarServicesManager, Windows.Media.Capture.GameBarServicesManagerGameBarServicesCreatedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_GameBarServicesCreated(EventRegistrationToken token);
}

@uuid("ededbd9c-143e-49a3-a5ea-0b1995c8d46e")
@WinrtFactory("Windows.Media.Capture.GameBarServicesManagerGameBarServicesCreatedEventArgs")
interface IGameBarServicesManagerGameBarServicesCreatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_GameBarServices(Windows.Media.Capture.GameBarServices* return_value);
}

@uuid("34c1b616-ff25-4792-98f2-d3753f15ac13")
@WinrtFactory("Windows.Media.Capture.GameBarServicesManager")
interface IGameBarServicesManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Media.Capture.GameBarServicesManager* return_ppInstance);
}

@uuid("b4202f92-1611-4e05-b6ef-dfd737ae33b0")
@WinrtFactory("Windows.Media.Capture.GameBarServicesTargetInfo")
interface IGameBarServicesTargetInfo : IInspectable
{
extern(Windows):
	HRESULT get_DisplayName(HSTRING* return_value);
	HRESULT get_AppId(HSTRING* return_value);
	HRESULT get_TitleId(HSTRING* return_value);
	HRESULT get_DisplayMode(Windows.Media.Capture.GameBarServicesDisplayMode* return_value);
}

@uuid("41c8baf7-ff3f-49f0-a477-f195e3ce5108")
@WinrtFactory("Windows.Media.Capture.LowLagMediaRecording")
interface ILowLagMediaRecording : IInspectable
{
extern(Windows):
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_FinishAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("6369c758-5644-41e2-97af-8ef56a25e225")
@WinrtFactory("Windows.Media.Capture.LowLagMediaRecording")
interface ILowLagMediaRecording2 : IInspectable
{
extern(Windows):
	HRESULT abi_PauseAsync(Windows.Media.Devices.MediaCapturePauseBehavior behavior, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ResumeAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("5c33ab12-48f7-47da-b41e-90880a5fe0ec")
@WinrtFactory("Windows.Media.Capture.LowLagMediaRecording")
interface ILowLagMediaRecording3 : IInspectable
{
extern(Windows):
	HRESULT abi_PauseWithResultAsync(Windows.Media.Devices.MediaCapturePauseBehavior behavior, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCapturePauseResult)* return_operation);
	HRESULT abi_StopWithResultAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCaptureStopResult)* return_operation);
}

@uuid("a37251b7-6b44-473d-8f24-f703d6c0ec44")
@WinrtFactory("Windows.Media.Capture.LowLagPhotoCapture")
interface ILowLagPhotoCapture : IInspectable
{
extern(Windows):
	HRESULT abi_CaptureAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.CapturedPhoto)* return_operation);
	HRESULT abi_FinishAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("7cc346bb-b9a9-4c91-8ffa-287e9c668669")
@WinrtFactory("Windows.Media.Capture.LowLagPhotoSequenceCapture")
interface ILowLagPhotoSequenceCapture : IInspectable
{
extern(Windows):
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_FinishAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT add_PhotoCaptured(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.LowLagPhotoSequenceCapture, Windows.Media.Capture.PhotoCapturedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PhotoCaptured(EventRegistrationToken token);
}

@uuid("c61afbb4-fb10-4a34-ac18-ca80d9c8e7ee")
@WinrtFactory("Windows.Media.Capture.MediaCapture")
interface IMediaCapture : IInspectable
{
extern(Windows):
	HRESULT abi_InitializeAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_InitializeWithSettingsAsync(Windows.Media.Capture.MediaCaptureInitializationSettings mediaCaptureInitializationSettings, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_StartRecordToStorageFileAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_StartRecordToStreamAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_StartRecordToCustomSinkAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Media.IMediaExtension customMediaSink, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_StartRecordToCustomSinkIdAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, HSTRING customSinkActivationId, Windows.Foundation.Collections.IPropertySet customSinkSettings, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_StopRecordAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_CapturePhotoToStorageFileAsync(Windows.Media.MediaProperties.ImageEncodingProperties type, Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_CapturePhotoToStreamAsync(Windows.Media.MediaProperties.ImageEncodingProperties type, Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.IAsyncAction* return_asyncInfo);
	deprecated("AddEffectAsync might not be available in future versions of Windows. Starting with Windows Threshold, use AddAudioEffectAsync and AddVideoEffectAsync instead")
	HRESULT abi_AddEffectAsync(Windows.Media.Capture.MediaStreamType mediaStreamType, HSTRING effectActivationID, Windows.Foundation.Collections.IPropertySet effectSettings, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_ClearEffectsAsync(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_SetEncoderProperty(Windows.Media.Capture.MediaStreamType mediaStreamType, GUID propertyId, IInspectable propertyValue);
	HRESULT abi_GetEncoderProperty(Windows.Media.Capture.MediaStreamType mediaStreamType, GUID propertyId, IInspectable* return_propertyValue);
	HRESULT add_Failed(Windows.Media.Capture.MediaCaptureFailedEventHandler errorEventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_Failed(EventRegistrationToken eventCookie);
	HRESULT add_RecordLimitationExceeded(Windows.Media.Capture.RecordLimitationExceededEventHandler recordLimitationExceededEventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_RecordLimitationExceeded(EventRegistrationToken eventCookie);
	HRESULT get_MediaCaptureSettings(Windows.Media.Capture.MediaCaptureSettings* return_value);
	HRESULT get_AudioDeviceController(Windows.Media.Devices.AudioDeviceController* return_value);
	HRESULT get_VideoDeviceController(Windows.Media.Devices.VideoDeviceController* return_value);
	HRESULT abi_SetPreviewMirroring(bool value);
	HRESULT abi_GetPreviewMirroring(bool* return_value);
	HRESULT abi_SetPreviewRotation(Windows.Media.Capture.VideoRotation value);
	HRESULT abi_GetPreviewRotation(Windows.Media.Capture.VideoRotation* return_value);
	HRESULT abi_SetRecordRotation(Windows.Media.Capture.VideoRotation value);
	HRESULT abi_GetRecordRotation(Windows.Media.Capture.VideoRotation* return_value);
}

@uuid("9cc68260-7da1-4043-b652-21b8878daff9")
@WinrtFactory("Windows.Media.Capture.MediaCapture")
interface IMediaCapture2 : IInspectable
{
extern(Windows):
	HRESULT abi_PrepareLowLagRecordToStorageFileAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording)* return_operation);
	HRESULT abi_PrepareLowLagRecordToStreamAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Storage.Streams.IRandomAccessStream stream, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording)* return_operation);
	HRESULT abi_PrepareLowLagRecordToCustomSinkAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Media.IMediaExtension customMediaSink, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording)* return_operation);
	HRESULT abi_PrepareLowLagRecordToCustomSinkIdAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, HSTRING customSinkActivationId, Windows.Foundation.Collections.IPropertySet customSinkSettings, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording)* return_operation);
	HRESULT abi_PrepareLowLagPhotoCaptureAsync(Windows.Media.MediaProperties.ImageEncodingProperties type, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagPhotoCapture)* return_operation);
	HRESULT abi_PrepareLowLagPhotoSequenceCaptureAsync(Windows.Media.MediaProperties.ImageEncodingProperties type, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagPhotoSequenceCapture)* return_operation);
	HRESULT abi_SetEncodingPropertiesAsync(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Media.MediaProperties.IMediaEncodingProperties mediaEncodingProperties, Windows.Media.MediaProperties.MediaPropertySet encoderProperties, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("d4136f30-1564-466e-bc0a-af94e02ab016")
@WinrtFactory("Windows.Media.Capture.MediaCapture")
interface IMediaCapture3 : IInspectable
{
extern(Windows):
	HRESULT abi_PrepareVariablePhotoSequenceCaptureAsync(Windows.Media.MediaProperties.ImageEncodingProperties type, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Core.VariablePhotoSequenceCapture)* return_operation);
	HRESULT add_FocusChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, Windows.Media.Capture.MediaCaptureFocusChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_FocusChanged(EventRegistrationToken token);
	HRESULT add_PhotoConfirmationCaptured(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, Windows.Media.Capture.PhotoConfirmationCapturedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_PhotoConfirmationCaptured(EventRegistrationToken token);
}

@uuid("bacd6fd6-fb08-4947-aea2-ce14eff0ce13")
@WinrtFactory("Windows.Media.Capture.MediaCapture")
interface IMediaCapture4 : IInspectable
{
extern(Windows):
	HRESULT abi_AddAudioEffectAsync(Windows.Media.Effects.IAudioEffectDefinition definition, Windows.Foundation.IAsyncOperation!(Windows.Media.IMediaExtension)* return_op);
	HRESULT abi_AddVideoEffectAsync(Windows.Media.Effects.IVideoEffectDefinition definition, Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Foundation.IAsyncOperation!(Windows.Media.IMediaExtension)* return_op);
	HRESULT abi_PauseRecordAsync(Windows.Media.Devices.MediaCapturePauseBehavior behavior, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_ResumeRecordAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT add_CameraStreamStateChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_CameraStreamStateChanged(EventRegistrationToken token);
	HRESULT get_CameraStreamState(Windows.Media.Devices.CameraStreamState* return_streamState);
	HRESULT abi_GetPreviewFrameAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.VideoFrame)* return_operation);
	HRESULT abi_GetPreviewFrameCopyAsync(Windows.Media.VideoFrame destination, Windows.Foundation.IAsyncOperation!(Windows.Media.VideoFrame)* return_operation);
	HRESULT add_ThermalStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ThermalStatusChanged(EventRegistrationToken token);
	HRESULT get_ThermalStatus(Windows.Media.Capture.MediaCaptureThermalStatus* return_value);
	HRESULT abi_PrepareAdvancedPhotoCaptureAsync(Windows.Media.MediaProperties.ImageEncodingProperties encodingProperties, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.AdvancedPhotoCapture)* return_operation);
}

@uuid("da787c22-3a9b-4720-a71e-97900a316e5a")
@WinrtFactory("Windows.Media.Capture.MediaCapture")
interface IMediaCapture5 : IInspectable
{
extern(Windows):
	HRESULT abi_RemoveEffectAsync(Windows.Media.IMediaExtension effect, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_PauseRecordWithResultAsync(Windows.Media.Devices.MediaCapturePauseBehavior behavior, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCapturePauseResult)* return_operation);
	HRESULT abi_StopRecordWithResultAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCaptureStopResult)* return_operation);
	HRESULT get_FrameSources(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Media.Capture.Frames.MediaFrameSource)* return_value);
	HRESULT abi_CreateFrameReaderAsync(Windows.Media.Capture.Frames.MediaFrameSource inputSource, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReader)* return_value);
	HRESULT abi_CreateFrameReaderWithSubtypeAsync(Windows.Media.Capture.Frames.MediaFrameSource inputSource, HSTRING outputSubtype, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReader)* return_value);
	HRESULT abi_CreateFrameReaderWithSubtypeAndSizeAsync(Windows.Media.Capture.Frames.MediaFrameSource inputSource, HSTRING outputSubtype, Windows.Graphics.Imaging.BitmapSize outputSize, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReader)* return_value);
}

@uuid("228948bd-4b20-4bb1-9fd6-a583212a1012")
@WinrtFactory("Windows.Media.Capture.MediaCapture")
interface IMediaCapture6 : IInspectable
{
extern(Windows):
	HRESULT add_CaptureDeviceExclusiveControlStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatusChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CaptureDeviceExclusiveControlStatusChanged(EventRegistrationToken token);
	HRESULT abi_CreateMultiSourceFrameReaderAsync(Windows.Foundation.Collections.IIterable!(Windows.Media.Capture.Frames.MediaFrameSource) inputSources, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReader)* return_value);
}

@uuid("9d2f920d-a588-43c6-89d6-5ad322af006a")
@WinrtFactory("Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatusChangedEventArgs")
interface IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Status(Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatus* return_value);
}

@uuid("80fde3f4-54c4-42c0-8d19-cea1a87ca18b")
@WinrtFactory("Windows.Media.Capture.MediaCaptureFailedEventArgs")
interface IMediaCaptureFailedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Message(HSTRING* return_value);
	HRESULT get_Code(UINT32* return_value);
}

@uuid("81e1bc7f-2277-493e-abee-d3f44ff98c04")
@WinrtFactory("Windows.Media.Capture.MediaCaptureFocusChangedEventArgs")
interface IMediaCaptureFocusChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_FocusState(Windows.Media.Devices.MediaCaptureFocusState* return_value);
}

@uuid("9782ba70-ea65-4900-9356-8ca887726884")
@WinrtFactory("Windows.Media.Capture.MediaCaptureInitializationSettings")
interface IMediaCaptureInitializationSettings : IInspectable
{
extern(Windows):
	HRESULT set_AudioDeviceId(HSTRING value);
	HRESULT get_AudioDeviceId(HSTRING* return_value);
	HRESULT set_VideoDeviceId(HSTRING value);
	HRESULT get_VideoDeviceId(HSTRING* return_value);
	HRESULT set_StreamingCaptureMode(Windows.Media.Capture.StreamingCaptureMode value);
	HRESULT get_StreamingCaptureMode(Windows.Media.Capture.StreamingCaptureMode* return_value);
	HRESULT set_PhotoCaptureSource(Windows.Media.Capture.PhotoCaptureSource value);
	HRESULT get_PhotoCaptureSource(Windows.Media.Capture.PhotoCaptureSource* return_value);
}

@uuid("404e0626-c9dc-43e9-aee4-e6bf1b57b44c")
@WinrtFactory("Windows.Media.Capture.MediaCaptureInitializationSettings")
interface IMediaCaptureInitializationSettings2 : IInspectable
{
extern(Windows):
	HRESULT set_MediaCategory(Windows.Media.Capture.MediaCategory value);
	HRESULT get_MediaCategory(Windows.Media.Capture.MediaCategory* return_value);
	HRESULT set_AudioProcessing(Windows.Media.AudioProcessing value);
	HRESULT get_AudioProcessing(Windows.Media.AudioProcessing* return_value);
}

@uuid("4160519d-be48-4730-8104-0cf6e9e97948")
@WinrtFactory("Windows.Media.Capture.MediaCaptureInitializationSettings")
interface IMediaCaptureInitializationSettings3 : IInspectable
{
extern(Windows):
	HRESULT set_AudioSource(Windows.Media.Core.IMediaSource value);
	HRESULT get_AudioSource(Windows.Media.Core.IMediaSource* return_value);
	HRESULT set_VideoSource(Windows.Media.Core.IMediaSource value);
	HRESULT get_VideoSource(Windows.Media.Core.IMediaSource* return_value);
}

@uuid("f502a537-4cb7-4d28-95ed-4f9f012e0518")
@WinrtFactory("Windows.Media.Capture.MediaCaptureInitializationSettings")
interface IMediaCaptureInitializationSettings4 : IInspectable
{
extern(Windows):
	HRESULT get_VideoProfile(Windows.Media.Capture.MediaCaptureVideoProfile* return_value);
	HRESULT set_VideoProfile(Windows.Media.Capture.MediaCaptureVideoProfile value);
	HRESULT get_PreviewMediaDescription(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription* return_value);
	HRESULT set_PreviewMediaDescription(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription value);
	HRESULT get_RecordMediaDescription(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription* return_value);
	HRESULT set_RecordMediaDescription(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription value);
	HRESULT get_PhotoMediaDescription(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription* return_value);
	HRESULT set_PhotoMediaDescription(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription value);
}

@uuid("d5a2e3b8-2626-4e94-b7b3-5308a0f64b1a")
@WinrtFactory("Windows.Media.Capture.MediaCaptureInitializationSettings")
interface IMediaCaptureInitializationSettings5 : IInspectable
{
extern(Windows):
	HRESULT get_SourceGroup(Windows.Media.Capture.Frames.MediaFrameSourceGroup* return_value);
	HRESULT set_SourceGroup(Windows.Media.Capture.Frames.MediaFrameSourceGroup value);
	HRESULT get_SharingMode(Windows.Media.Capture.MediaCaptureSharingMode* return_value);
	HRESULT set_SharingMode(Windows.Media.Capture.MediaCaptureSharingMode value);
	HRESULT get_MemoryPreference(Windows.Media.Capture.MediaCaptureMemoryPreference* return_value);
	HRESULT set_MemoryPreference(Windows.Media.Capture.MediaCaptureMemoryPreference value);
}

@uuid("b2e26b47-3db1-4d33-ab63-0ffa09056585")
@WinrtFactory("Windows.Media.Capture.MediaCaptureInitializationSettings")
interface IMediaCaptureInitializationSettings6 : IInspectable
{
extern(Windows):
	HRESULT get_AlwaysPlaySystemShutterSound(bool* return_value);
	HRESULT set_AlwaysPlaySystemShutterSound(bool value);
}

@uuid("aec47ca3-4477-4b04-a06f-2c1c5182fe9d")
@WinrtFactory("Windows.Media.Capture.MediaCapturePauseResult")
interface IMediaCapturePauseResult : IInspectable
{
extern(Windows):
	HRESULT get_LastFrame(Windows.Media.VideoFrame* return_value);
	HRESULT get_RecordDuration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("1d83aafe-6d45-4477-8dc4-ac5bc01c4091")
@WinrtFactory("Windows.Media.Capture.MediaCaptureSettings")
interface IMediaCaptureSettings : IInspectable
{
extern(Windows):
	HRESULT get_AudioDeviceId(HSTRING* return_value);
	HRESULT get_VideoDeviceId(HSTRING* return_value);
	HRESULT get_StreamingCaptureMode(Windows.Media.Capture.StreamingCaptureMode* return_value);
	HRESULT get_PhotoCaptureSource(Windows.Media.Capture.PhotoCaptureSource* return_value);
	HRESULT get_VideoDeviceCharacteristic(Windows.Media.Capture.VideoDeviceCharacteristic* return_value);
}

@uuid("6f9e7cfb-fa9f-4b13-9cbe-5ab94f1f3493")
@WinrtFactory("Windows.Media.Capture.MediaCaptureSettings")
interface IMediaCaptureSettings2 : IInspectable
{
extern(Windows):
	HRESULT get_ConcurrentRecordAndPhotoSupported(bool* return_value);
	HRESULT get_ConcurrentRecordAndPhotoSequenceSupported(bool* return_value);
	HRESULT get_CameraSoundRequiredForRegion(bool* return_value);
	HRESULT get_Horizontal35mmEquivalentFocalLength(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_PitchOffsetDegrees(Windows.Foundation.IReference!(INT32)* return_value);
	HRESULT get_Vertical35mmEquivalentFocalLength(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_MediaCategory(Windows.Media.Capture.MediaCategory* return_value);
	HRESULT get_AudioProcessing(Windows.Media.AudioProcessing* return_value);
}

@uuid("acef81ff-99ed-4645-965e-1925cfc63834")
@WinrtFactory("Windows.Media.Capture.MediaCapture")
interface IMediaCaptureStatics : IInspectable
{
extern(Windows):
	HRESULT abi_IsVideoProfileSupported(HSTRING videoDeviceId, bool* return_value);
	HRESULT abi_FindAllVideoProfiles(HSTRING videoDeviceId, Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfile)* return_value);
	HRESULT abi_FindConcurrentProfiles(HSTRING videoDeviceId, Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfile)* return_value);
	HRESULT abi_FindKnownVideoProfiles(HSTRING videoDeviceId, Windows.Media.Capture.KnownVideoProfile name, Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfile)* return_value);
}

@uuid("f9db6a2a-a092-4ad1-97d4-f201f9d082db")
@WinrtFactory("Windows.Media.Capture.MediaCaptureStopResult")
interface IMediaCaptureStopResult : IInspectable
{
extern(Windows):
	HRESULT get_LastFrame(Windows.Media.VideoFrame* return_value);
	HRESULT get_RecordDuration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("27727073-549e-447f-a20a-4f03c479d8c0")
@WinrtFactory("Windows.Media.Capture.MediaCapture")
interface IMediaCaptureVideoPreview : IInspectable
{
extern(Windows):
	HRESULT abi_StartPreviewAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_StartPreviewToCustomSinkAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Media.IMediaExtension customMediaSink, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_StartPreviewToCustomSinkIdAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, HSTRING customSinkActivationId, Windows.Foundation.Collections.IPropertySet customSinkSettings, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_StopPreviewAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("21a073bf-a3ee-4ecf-9ef6-50b0bc4e1305")
@WinrtFactory("Windows.Media.Capture.MediaCaptureVideoProfile")
interface IMediaCaptureVideoProfile : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_VideoDeviceId(HSTRING* return_value);
	HRESULT get_SupportedPreviewMediaDescription(Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription)* return_value);
	HRESULT get_SupportedRecordMediaDescription(Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription)* return_value);
	HRESULT get_SupportedPhotoMediaDescription(Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription)* return_value);
	HRESULT abi_GetConcurrency(Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfile)* return_value);
}

@uuid("8012afef-b691-49ff-83f2-c1e76eaaea1b")
@WinrtFactory("Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription")
interface IMediaCaptureVideoProfileMediaDescription : IInspectable
{
extern(Windows):
	HRESULT get_Width(UINT32* return_value);
	HRESULT get_Height(UINT32* return_value);
	HRESULT get_FrameRate(double* return_value);
	HRESULT get_IsVariablePhotoSequenceSupported(bool* return_value);
	HRESULT get_IsHdrVideoSupported(bool* return_value);
}

@uuid("470f88b3-1e6d-4051-9c8b-f1d85af047b7")
@WinrtFactory("Windows.Media.Capture.OptionalReferencePhotoCapturedEventArgs")
interface IOptionalReferencePhotoCapturedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_Context(IInspectable* return_value);
}

@uuid("373bfbc1-984e-4ff0-bf85-1c00aabc5a45")
@WinrtFactory("Windows.Media.Capture.PhotoCapturedEventArgs")
interface IPhotoCapturedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_Thumbnail(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_CaptureTimeOffset(Windows.Foundation.TimeSpan* return_value);
}

@uuid("ab473672-c28a-4827-8f8d-3636d3beb51e")
@WinrtFactory("Windows.Media.Capture.PhotoConfirmationCapturedEventArgs")
interface IPhotoConfirmationCapturedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_CaptureTimeOffset(Windows.Foundation.TimeSpan* return_value);
}

@uuid("d8770a6f-4390-4b5e-ad3e-0f8af0963490")
@WinrtFactory("Windows.Media.Capture.VideoStreamConfiguration")
interface IVideoStreamConfiguration : IInspectable
{
extern(Windows):
	HRESULT get_InputProperties(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
	HRESULT get_OutputProperties(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
}

interface AdvancedCapturedPhoto : Windows.Media.Capture.IAdvancedCapturedPhoto, Windows.Media.Capture.IAdvancedCapturedPhoto2
{
extern(Windows):
	final Windows.Media.Capture.CapturedFrame Frame()
	{
		Windows.Media.Capture.CapturedFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAdvancedCapturedPhoto).get_Frame(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.AdvancedPhotoMode Mode()
	{
		Windows.Media.Devices.AdvancedPhotoMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAdvancedCapturedPhoto).get_Mode(&_ret));
		return _ret;
	}
	final IInspectable Context()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAdvancedCapturedPhoto).get_Context(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.Rect) FrameBoundsRelativeToReferencePhoto()
	{
		Windows.Foundation.IReference!(Windows.Foundation.Rect) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAdvancedCapturedPhoto2).get_FrameBoundsRelativeToReferencePhoto(&_ret));
		return _ret;
	}
}

interface AdvancedPhotoCapture : Windows.Media.Capture.IAdvancedPhotoCapture
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.AdvancedCapturedPhoto) CaptureAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.AdvancedCapturedPhoto) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAdvancedPhotoCapture).abi_CaptureAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.AdvancedCapturedPhoto) CaptureWithContextAsync(IInspectable context)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.AdvancedCapturedPhoto) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAdvancedPhotoCapture).abi_CaptureWithContextAsync(context, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnOptionalReferencePhotoCaptured(void delegate(Windows.Media.Capture.AdvancedPhotoCapture, Windows.Media.Capture.OptionalReferencePhotoCapturedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_OptionalReferencePhotoCaptured(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AdvancedPhotoCapture, Windows.Media.Capture.OptionalReferencePhotoCapturedEventArgs), Windows.Media.Capture.AdvancedPhotoCapture, Windows.Media.Capture.OptionalReferencePhotoCapturedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeOptionalReferencePhotoCaptured(EventRegistrationToken token)
	{
		Debug.OK(remove_OptionalReferencePhotoCaptured(token));
	}
	final EventRegistrationToken OnAllPhotosCaptured(void delegate(Windows.Media.Capture.AdvancedPhotoCapture, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_AllPhotosCaptured(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AdvancedPhotoCapture, IInspectable), Windows.Media.Capture.AdvancedPhotoCapture, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeAllPhotosCaptured(EventRegistrationToken token)
	{
		Debug.OK(remove_AllPhotosCaptured(token));
	}
	final Windows.Foundation.IAsyncAction FinishAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAdvancedPhotoCapture).abi_FinishAsync(&_ret));
		return _ret;
	}
}

interface AppBroadcastBackgroundService : Windows.Media.Capture.IAppBroadcastBackgroundService
{
extern(Windows):
	final void PlugInState(Windows.Media.Capture.AppBroadcastPlugInState value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).set_PlugInState(value));
	}
	final Windows.Media.Capture.AppBroadcastPlugInState PlugInState()
	{
		Windows.Media.Capture.AppBroadcastPlugInState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).get_PlugInState(&_ret));
		return _ret;
	}
	final void SignInInfo(Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).set_SignInInfo(value));
	}
	final Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo SignInInfo()
	{
		Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).get_SignInInfo(&_ret));
		return _ret;
	}
	final void StreamInfo(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).set_StreamInfo(value));
	}
	final Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo StreamInfo()
	{
		Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).get_StreamInfo(&_ret));
		return _ret;
	}
	final HSTRING AppId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).get_AppId(&_ret));
		return _ret;
	}
	final HSTRING BroadcastTitle()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).get_BroadcastTitle(&_ret));
		return _ret;
	}
	final void ViewerCount(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).set_ViewerCount(value));
	}
	final UINT32 ViewerCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).get_ViewerCount(&_ret));
		return _ret;
	}
	final void TerminateBroadcast(Windows.Media.Capture.AppBroadcastTerminationReason reason, UINT32 providerSpecificReason)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).abi_TerminateBroadcast(reason, providerSpecificReason));
	}
	final EventRegistrationToken OnHeartbeatRequested(void delegate(Windows.Media.Capture.AppBroadcastBackgroundService, Windows.Media.Capture.AppBroadcastHeartbeatRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_HeartbeatRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastBackgroundService, Windows.Media.Capture.AppBroadcastHeartbeatRequestedEventArgs), Windows.Media.Capture.AppBroadcastBackgroundService, Windows.Media.Capture.AppBroadcastHeartbeatRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeHeartbeatRequested(EventRegistrationToken token)
	{
		Debug.OK(remove_HeartbeatRequested(token));
	}
	final HSTRING TitleId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundService).get_TitleId(&_ret));
		return _ret;
	}
}

interface AppBroadcastBackgroundServiceSignInInfo : Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastSignInState SignInState()
	{
		Windows.Media.Capture.AppBroadcastSignInState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo).get_SignInState(&_ret));
		return _ret;
	}
	final void OAuthRequestUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo).set_OAuthRequestUri(value));
	}
	final Windows.Foundation.Uri OAuthRequestUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo).get_OAuthRequestUri(&_ret));
		return _ret;
	}
	final void OAuthCallbackUri(Windows.Foundation.Uri value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo).set_OAuthCallbackUri(value));
	}
	final Windows.Foundation.Uri OAuthCallbackUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo).get_OAuthCallbackUri(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Web.WebAuthenticationResult AuthenticationResult()
	{
		Windows.Security.Authentication.Web.WebAuthenticationResult _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo).get_AuthenticationResult(&_ret));
		return _ret;
	}
	final void UserName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo).set_UserName(value));
	}
	final HSTRING UserName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo).get_UserName(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnSignInStateChanged(void delegate(Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo, Windows.Media.Capture.AppBroadcastSignInStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_SignInStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo, Windows.Media.Capture.AppBroadcastSignInStateChangedEventArgs), Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo, Windows.Media.Capture.AppBroadcastSignInStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeSignInStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_SignInStateChanged(token));
	}
}

interface AppBroadcastBackgroundServiceStreamInfo : Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastStreamState StreamState()
	{
		Windows.Media.Capture.AppBroadcastStreamState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo).get_StreamState(&_ret));
		return _ret;
	}
	final void DesiredVideoEncodingBitrate(ulong value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo).set_DesiredVideoEncodingBitrate(value));
	}
	final ulong DesiredVideoEncodingBitrate()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo).get_DesiredVideoEncodingBitrate(&_ret));
		return _ret;
	}
	final void BandwidthTestBitrate(ulong value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo).set_BandwidthTestBitrate(value));
	}
	final ulong BandwidthTestBitrate()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo).get_BandwidthTestBitrate(&_ret));
		return _ret;
	}
	final void AudioCodec(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo).set_AudioCodec(value));
	}
	final HSTRING AudioCodec()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo).get_AudioCodec(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastStreamReader BroadcastStreamReader()
	{
		Windows.Media.Capture.AppBroadcastStreamReader _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo).get_BroadcastStreamReader(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnStreamStateChanged(void delegate(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, Windows.Media.Capture.AppBroadcastStreamStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StreamStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, Windows.Media.Capture.AppBroadcastStreamStateChangedEventArgs), Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, Windows.Media.Capture.AppBroadcastStreamStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStreamStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_StreamStateChanged(token));
	}
	final EventRegistrationToken OnVideoEncodingResolutionChanged(void delegate(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_VideoEncodingResolutionChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, IInspectable), Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVideoEncodingResolutionChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_VideoEncodingResolutionChanged(token));
	}
	final EventRegistrationToken OnVideoEncodingBitrateChanged(void delegate(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_VideoEncodingBitrateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, IInspectable), Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVideoEncodingBitrateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_VideoEncodingBitrateChanged(token));
	}
}

interface AppBroadcastCameraCaptureStateChangedEventArgs : Windows.Media.Capture.IAppBroadcastCameraCaptureStateChangedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastCameraCaptureState State()
	{
		Windows.Media.Capture.AppBroadcastCameraCaptureState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastCameraCaptureStateChangedEventArgs).get_State(&_ret));
		return _ret;
	}
	final UINT32 ErrorCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastCameraCaptureStateChangedEventArgs).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface AppBroadcastGlobalSettings : Windows.Media.Capture.IAppBroadcastGlobalSettings
{
extern(Windows):
	final bool IsBroadcastEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_IsBroadcastEnabled(&_ret));
		return _ret;
	}
	final bool IsDisabledByPolicy()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_IsDisabledByPolicy(&_ret));
		return _ret;
	}
	final bool IsGpuConstrained()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_IsGpuConstrained(&_ret));
		return _ret;
	}
	final bool HasHardwareEncoder()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_HasHardwareEncoder(&_ret));
		return _ret;
	}
	final void IsAudioCaptureEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).set_IsAudioCaptureEnabled(value));
	}
	final bool IsAudioCaptureEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_IsAudioCaptureEnabled(&_ret));
		return _ret;
	}
	final void IsMicrophoneCaptureEnabledByDefault(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).set_IsMicrophoneCaptureEnabledByDefault(value));
	}
	final bool IsMicrophoneCaptureEnabledByDefault()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_IsMicrophoneCaptureEnabledByDefault(&_ret));
		return _ret;
	}
	final void IsEchoCancellationEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).set_IsEchoCancellationEnabled(value));
	}
	final bool IsEchoCancellationEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_IsEchoCancellationEnabled(&_ret));
		return _ret;
	}
	final void SystemAudioGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).set_SystemAudioGain(value));
	}
	final double SystemAudioGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_SystemAudioGain(&_ret));
		return _ret;
	}
	final void MicrophoneGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).set_MicrophoneGain(value));
	}
	final double MicrophoneGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_MicrophoneGain(&_ret));
		return _ret;
	}
	final void IsCameraCaptureEnabledByDefault(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).set_IsCameraCaptureEnabledByDefault(value));
	}
	final bool IsCameraCaptureEnabledByDefault()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_IsCameraCaptureEnabledByDefault(&_ret));
		return _ret;
	}
	final void SelectedCameraId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).set_SelectedCameraId(value));
	}
	final HSTRING SelectedCameraId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_SelectedCameraId(&_ret));
		return _ret;
	}
	final void CameraOverlayLocation(Windows.Media.Capture.AppBroadcastCameraOverlayLocation value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).set_CameraOverlayLocation(value));
	}
	final Windows.Media.Capture.AppBroadcastCameraOverlayLocation CameraOverlayLocation()
	{
		Windows.Media.Capture.AppBroadcastCameraOverlayLocation _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_CameraOverlayLocation(&_ret));
		return _ret;
	}
	final void CameraOverlaySize(Windows.Media.Capture.AppBroadcastCameraOverlaySize value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).set_CameraOverlaySize(value));
	}
	final Windows.Media.Capture.AppBroadcastCameraOverlaySize CameraOverlaySize()
	{
		Windows.Media.Capture.AppBroadcastCameraOverlaySize _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_CameraOverlaySize(&_ret));
		return _ret;
	}
	final void IsCursorImageCaptureEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).set_IsCursorImageCaptureEnabled(value));
	}
	final bool IsCursorImageCaptureEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastGlobalSettings).get_IsCursorImageCaptureEnabled(&_ret));
		return _ret;
	}
}

interface AppBroadcastHeartbeatRequestedEventArgs : Windows.Media.Capture.IAppBroadcastHeartbeatRequestedEventArgs
{
extern(Windows):
	final void Handled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastHeartbeatRequestedEventArgs).set_Handled(value));
	}
	final bool Handled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastHeartbeatRequestedEventArgs).get_Handled(&_ret));
		return _ret;
	}
}

interface AppBroadcastManager
{
}

interface AppBroadcastMicrophoneCaptureStateChangedEventArgs : Windows.Media.Capture.IAppBroadcastMicrophoneCaptureStateChangedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastMicrophoneCaptureState State()
	{
		Windows.Media.Capture.AppBroadcastMicrophoneCaptureState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastMicrophoneCaptureStateChangedEventArgs).get_State(&_ret));
		return _ret;
	}
	final UINT32 ErrorCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastMicrophoneCaptureStateChangedEventArgs).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface AppBroadcastPlugIn : Windows.Media.Capture.IAppBroadcastPlugIn
{
extern(Windows):
	final HSTRING AppId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPlugIn).get_AppId(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastProviderSettings ProviderSettings()
	{
		Windows.Media.Capture.AppBroadcastProviderSettings _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPlugIn).get_ProviderSettings(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IRandomAccessStreamReference Logo()
	{
		Windows.Storage.Streams.IRandomAccessStreamReference _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPlugIn).get_Logo(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPlugIn).get_DisplayName(&_ret));
		return _ret;
	}
}

interface AppBroadcastPlugInManager : Windows.Media.Capture.IAppBroadcastPlugInManager
{
extern(Windows):
	final bool IsBroadcastProviderAvailable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPlugInManager).get_IsBroadcastProviderAvailable(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.AppBroadcastPlugIn) PlugInList()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.AppBroadcastPlugIn) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPlugInManager).get_PlugInList(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastPlugIn DefaultPlugIn()
	{
		Windows.Media.Capture.AppBroadcastPlugIn _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPlugInManager).get_DefaultPlugIn(&_ret));
		return _ret;
	}
	final void DefaultPlugIn(Windows.Media.Capture.AppBroadcastPlugIn value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPlugInManager).set_DefaultPlugIn(value));
	}
}

interface AppBroadcastPlugInStateChangedEventArgs : Windows.Media.Capture.IAppBroadcastPlugInStateChangedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastPlugInState PlugInState()
	{
		Windows.Media.Capture.AppBroadcastPlugInState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPlugInStateChangedEventArgs).get_PlugInState(&_ret));
		return _ret;
	}
}

interface AppBroadcastPreview : Windows.Media.Capture.IAppBroadcastPreview
{
extern(Windows):
	final void StopPreview()
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreview).abi_StopPreview());
	}
	final Windows.Media.Capture.AppBroadcastPreviewState PreviewState()
	{
		Windows.Media.Capture.AppBroadcastPreviewState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreview).get_PreviewState(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) ErrorCode()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreview).get_ErrorCode(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnPreviewStateChanged(void delegate(Windows.Media.Capture.AppBroadcastPreview, Windows.Media.Capture.AppBroadcastPreviewStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PreviewStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastPreview, Windows.Media.Capture.AppBroadcastPreviewStateChangedEventArgs), Windows.Media.Capture.AppBroadcastPreview, Windows.Media.Capture.AppBroadcastPreviewStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePreviewStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PreviewStateChanged(token));
	}
	final Windows.Media.Capture.AppBroadcastPreviewStreamReader PreviewStreamReader()
	{
		Windows.Media.Capture.AppBroadcastPreviewStreamReader _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreview).get_PreviewStreamReader(&_ret));
		return _ret;
	}
}

interface AppBroadcastPreviewStateChangedEventArgs : Windows.Media.Capture.IAppBroadcastPreviewStateChangedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastPreviewState PreviewState()
	{
		Windows.Media.Capture.AppBroadcastPreviewState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStateChangedEventArgs).get_PreviewState(&_ret));
		return _ret;
	}
	final UINT32 ErrorCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStateChangedEventArgs).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface AppBroadcastPreviewStreamReader : Windows.Media.Capture.IAppBroadcastPreviewStreamReader
{
extern(Windows):
	final UINT32 VideoWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamReader).get_VideoWidth(&_ret));
		return _ret;
	}
	final UINT32 VideoHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamReader).get_VideoHeight(&_ret));
		return _ret;
	}
	final UINT32 VideoStride()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamReader).get_VideoStride(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapPixelFormat VideoBitmapPixelFormat()
	{
		Windows.Graphics.Imaging.BitmapPixelFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamReader).get_VideoBitmapPixelFormat(&_ret));
		return _ret;
	}
	final Windows.Graphics.Imaging.BitmapAlphaMode VideoBitmapAlphaMode()
	{
		Windows.Graphics.Imaging.BitmapAlphaMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamReader).get_VideoBitmapAlphaMode(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastPreviewStreamVideoFrame TryGetNextVideoFrame()
	{
		Windows.Media.Capture.AppBroadcastPreviewStreamVideoFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamReader).abi_TryGetNextVideoFrame(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnVideoFrameArrived(void delegate(Windows.Media.Capture.AppBroadcastPreviewStreamReader, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_VideoFrameArrived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastPreviewStreamReader, IInspectable), Windows.Media.Capture.AppBroadcastPreviewStreamReader, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVideoFrameArrived(EventRegistrationToken token)
	{
		Debug.OK(remove_VideoFrameArrived(token));
	}
}

interface AppBroadcastPreviewStreamVideoFrame : Windows.Media.Capture.IAppBroadcastPreviewStreamVideoFrame
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastPreviewStreamVideoHeader VideoHeader()
	{
		Windows.Media.Capture.AppBroadcastPreviewStreamVideoHeader _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamVideoFrame).get_VideoHeader(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer VideoBuffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamVideoFrame).get_VideoBuffer(&_ret));
		return _ret;
	}
}

interface AppBroadcastPreviewStreamVideoHeader : Windows.Media.Capture.IAppBroadcastPreviewStreamVideoHeader
{
extern(Windows):
	final Windows.Foundation.DateTime AbsoluteTimestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamVideoHeader).get_AbsoluteTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan RelativeTimestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamVideoHeader).get_RelativeTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamVideoHeader).get_Duration(&_ret));
		return _ret;
	}
	final ulong FrameId()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastPreviewStreamVideoHeader).get_FrameId(&_ret));
		return _ret;
	}
}

interface AppBroadcastProviderSettings : Windows.Media.Capture.IAppBroadcastProviderSettings
{
extern(Windows):
	final void DefaultBroadcastTitle(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).set_DefaultBroadcastTitle(value));
	}
	final HSTRING DefaultBroadcastTitle()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).get_DefaultBroadcastTitle(&_ret));
		return _ret;
	}
	final void AudioEncodingBitrate(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).set_AudioEncodingBitrate(value));
	}
	final UINT32 AudioEncodingBitrate()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).get_AudioEncodingBitrate(&_ret));
		return _ret;
	}
	final void CustomVideoEncodingBitrate(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).set_CustomVideoEncodingBitrate(value));
	}
	final UINT32 CustomVideoEncodingBitrate()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).get_CustomVideoEncodingBitrate(&_ret));
		return _ret;
	}
	final void CustomVideoEncodingHeight(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).set_CustomVideoEncodingHeight(value));
	}
	final UINT32 CustomVideoEncodingHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).get_CustomVideoEncodingHeight(&_ret));
		return _ret;
	}
	final void CustomVideoEncodingWidth(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).set_CustomVideoEncodingWidth(value));
	}
	final UINT32 CustomVideoEncodingWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).get_CustomVideoEncodingWidth(&_ret));
		return _ret;
	}
	final void VideoEncodingBitrateMode(Windows.Media.Capture.AppBroadcastVideoEncodingBitrateMode value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).set_VideoEncodingBitrateMode(value));
	}
	final Windows.Media.Capture.AppBroadcastVideoEncodingBitrateMode VideoEncodingBitrateMode()
	{
		Windows.Media.Capture.AppBroadcastVideoEncodingBitrateMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).get_VideoEncodingBitrateMode(&_ret));
		return _ret;
	}
	final void VideoEncodingResolutionMode(Windows.Media.Capture.AppBroadcastVideoEncodingResolutionMode value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).set_VideoEncodingResolutionMode(value));
	}
	final Windows.Media.Capture.AppBroadcastVideoEncodingResolutionMode VideoEncodingResolutionMode()
	{
		Windows.Media.Capture.AppBroadcastVideoEncodingResolutionMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastProviderSettings).get_VideoEncodingResolutionMode(&_ret));
		return _ret;
	}
}

interface AppBroadcastServices : Windows.Media.Capture.IAppBroadcastServices
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastCaptureTargetType CaptureTargetType()
	{
		Windows.Media.Capture.AppBroadcastCaptureTargetType _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).get_CaptureTargetType(&_ret));
		return _ret;
	}
	final void CaptureTargetType(Windows.Media.Capture.AppBroadcastCaptureTargetType value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).set_CaptureTargetType(value));
	}
	final HSTRING BroadcastTitle()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).get_BroadcastTitle(&_ret));
		return _ret;
	}
	final void BroadcastTitle(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).set_BroadcastTitle(value));
	}
	final HSTRING BroadcastLanguage()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).get_BroadcastLanguage(&_ret));
		return _ret;
	}
	final void BroadcastLanguage(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).set_BroadcastLanguage(value));
	}
	final HSTRING UserName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).get_UserName(&_ret));
		return _ret;
	}
	final bool CanCapture()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).get_CanCapture(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(UINT32) EnterBroadcastModeAsync(Windows.Media.Capture.AppBroadcastPlugIn plugIn)
	{
		Windows.Foundation.IAsyncOperation!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).abi_EnterBroadcastModeAsync(plugIn, &_ret));
		return _ret;
	}
	final void ExitBroadcastMode(Windows.Media.Capture.AppBroadcastExitBroadcastModeReason reason)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).abi_ExitBroadcastMode(reason));
	}
	final void StartBroadcast()
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).abi_StartBroadcast());
	}
	final void PauseBroadcast()
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).abi_PauseBroadcast());
	}
	final void ResumeBroadcast()
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).abi_ResumeBroadcast());
	}
	final Windows.Media.Capture.AppBroadcastPreview StartPreview(Windows.Foundation.Size desiredSize)
	{
		Windows.Media.Capture.AppBroadcastPreview _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).abi_StartPreview(desiredSize, &_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastState State()
	{
		Windows.Media.Capture.AppBroadcastState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastServices).get_State(&_ret));
		return _ret;
	}
}

interface AppBroadcastSignInStateChangedEventArgs : Windows.Media.Capture.IAppBroadcastSignInStateChangedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastSignInState SignInState()
	{
		Windows.Media.Capture.AppBroadcastSignInState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastSignInStateChangedEventArgs).get_SignInState(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastSignInResult Result()
	{
		Windows.Media.Capture.AppBroadcastSignInResult _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastSignInStateChangedEventArgs).get_Result(&_ret));
		return _ret;
	}
}

interface AppBroadcastState : Windows.Media.Capture.IAppBroadcastState
{
extern(Windows):
	final bool IsCaptureTargetRunning()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_IsCaptureTargetRunning(&_ret));
		return _ret;
	}
	final UINT32 ViewerCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_ViewerCount(&_ret));
		return _ret;
	}
	final bool ShouldCaptureMicrophone()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_ShouldCaptureMicrophone(&_ret));
		return _ret;
	}
	final void ShouldCaptureMicrophone(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).set_ShouldCaptureMicrophone(value));
	}
	final void RestartMicrophoneCapture()
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).abi_RestartMicrophoneCapture());
	}
	final bool ShouldCaptureCamera()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_ShouldCaptureCamera(&_ret));
		return _ret;
	}
	final void ShouldCaptureCamera(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).set_ShouldCaptureCamera(value));
	}
	final void RestartCameraCapture()
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).abi_RestartCameraCapture());
	}
	final Windows.Foundation.Size EncodedVideoSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_EncodedVideoSize(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastMicrophoneCaptureState MicrophoneCaptureState()
	{
		Windows.Media.Capture.AppBroadcastMicrophoneCaptureState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_MicrophoneCaptureState(&_ret));
		return _ret;
	}
	final UINT32 MicrophoneCaptureError()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_MicrophoneCaptureError(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastCameraCaptureState CameraCaptureState()
	{
		Windows.Media.Capture.AppBroadcastCameraCaptureState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_CameraCaptureState(&_ret));
		return _ret;
	}
	final UINT32 CameraCaptureError()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_CameraCaptureError(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastStreamState StreamState()
	{
		Windows.Media.Capture.AppBroadcastStreamState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_StreamState(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastPlugInState PlugInState()
	{
		Windows.Media.Capture.AppBroadcastPlugInState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_PlugInState(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri OAuthRequestUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_OAuthRequestUri(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri OAuthCallbackUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_OAuthCallbackUri(&_ret));
		return _ret;
	}
	final Windows.Security.Authentication.Web.WebAuthenticationResult AuthenticationResult()
	{
		Windows.Security.Authentication.Web.WebAuthenticationResult _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_AuthenticationResult(&_ret));
		return _ret;
	}
	final void AuthenticationResult(Windows.Security.Authentication.Web.WebAuthenticationResult value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).set_AuthenticationResult(value));
	}
	final void SignInState(Windows.Media.Capture.AppBroadcastSignInState value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).set_SignInState(value));
	}
	final Windows.Media.Capture.AppBroadcastSignInState SignInState()
	{
		Windows.Media.Capture.AppBroadcastSignInState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_SignInState(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastTerminationReason TerminationReason()
	{
		Windows.Media.Capture.AppBroadcastTerminationReason _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_TerminationReason(&_ret));
		return _ret;
	}
	final UINT32 TerminationReasonPlugInSpecific()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastState).get_TerminationReasonPlugInSpecific(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnViewerCountChanged(void delegate(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastViewerCountChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ViewerCountChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastViewerCountChangedEventArgs), Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastViewerCountChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeViewerCountChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_ViewerCountChanged(token));
	}
	final EventRegistrationToken OnMicrophoneCaptureStateChanged(void delegate(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastMicrophoneCaptureStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MicrophoneCaptureStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastMicrophoneCaptureStateChangedEventArgs), Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastMicrophoneCaptureStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMicrophoneCaptureStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_MicrophoneCaptureStateChanged(token));
	}
	final EventRegistrationToken OnCameraCaptureStateChanged(void delegate(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastCameraCaptureStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CameraCaptureStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastCameraCaptureStateChangedEventArgs), Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastCameraCaptureStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCameraCaptureStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CameraCaptureStateChanged(token));
	}
	final EventRegistrationToken OnPlugInStateChanged(void delegate(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastPlugInStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PlugInStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastPlugInStateChangedEventArgs), Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastPlugInStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePlugInStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_PlugInStateChanged(token));
	}
	final EventRegistrationToken OnStreamStateChanged(void delegate(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastStreamStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StreamStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastStreamStateChangedEventArgs), Windows.Media.Capture.AppBroadcastState, Windows.Media.Capture.AppBroadcastStreamStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStreamStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_StreamStateChanged(token));
	}
	final EventRegistrationToken OnCaptureTargetClosed(void delegate(Windows.Media.Capture.AppBroadcastState, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CaptureTargetClosed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastState, IInspectable), Windows.Media.Capture.AppBroadcastState, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeCaptureTargetClosed(EventRegistrationToken token)
	{
		Debug.OK(remove_CaptureTargetClosed(token));
	}
}

interface AppBroadcastStreamAudioFrame : Windows.Media.Capture.IAppBroadcastStreamAudioFrame
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastStreamAudioHeader AudioHeader()
	{
		Windows.Media.Capture.AppBroadcastStreamAudioHeader _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamAudioFrame).get_AudioHeader(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer AudioBuffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamAudioFrame).get_AudioBuffer(&_ret));
		return _ret;
	}
}

interface AppBroadcastStreamAudioHeader : Windows.Media.Capture.IAppBroadcastStreamAudioHeader
{
extern(Windows):
	final Windows.Foundation.DateTime AbsoluteTimestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamAudioHeader).get_AbsoluteTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan RelativeTimestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamAudioHeader).get_RelativeTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamAudioHeader).get_Duration(&_ret));
		return _ret;
	}
	final bool HasDiscontinuity()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamAudioHeader).get_HasDiscontinuity(&_ret));
		return _ret;
	}
	final ulong FrameId()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamAudioHeader).get_FrameId(&_ret));
		return _ret;
	}
}

interface AppBroadcastStreamReader : Windows.Media.Capture.IAppBroadcastStreamReader
{
extern(Windows):
	final UINT32 AudioChannels()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamReader).get_AudioChannels(&_ret));
		return _ret;
	}
	final UINT32 AudioSampleRate()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamReader).get_AudioSampleRate(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer AudioAacSequence()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamReader).get_AudioAacSequence(&_ret));
		return _ret;
	}
	final UINT32 AudioBitrate()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamReader).get_AudioBitrate(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastStreamAudioFrame TryGetNextAudioFrame()
	{
		Windows.Media.Capture.AppBroadcastStreamAudioFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamReader).abi_TryGetNextAudioFrame(&_ret));
		return _ret;
	}
	final UINT32 VideoWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamReader).get_VideoWidth(&_ret));
		return _ret;
	}
	final UINT32 VideoHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamReader).get_VideoHeight(&_ret));
		return _ret;
	}
	final UINT32 VideoBitrate()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamReader).get_VideoBitrate(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastStreamVideoFrame TryGetNextVideoFrame()
	{
		Windows.Media.Capture.AppBroadcastStreamVideoFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamReader).abi_TryGetNextVideoFrame(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAudioFrameArrived(void delegate(Windows.Media.Capture.AppBroadcastStreamReader, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_AudioFrameArrived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastStreamReader, IInspectable), Windows.Media.Capture.AppBroadcastStreamReader, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeAudioFrameArrived(EventRegistrationToken token)
	{
		Debug.OK(remove_AudioFrameArrived(token));
	}
	final EventRegistrationToken OnVideoFrameArrived(void delegate(Windows.Media.Capture.AppBroadcastStreamReader, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_VideoFrameArrived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppBroadcastStreamReader, IInspectable), Windows.Media.Capture.AppBroadcastStreamReader, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeVideoFrameArrived(EventRegistrationToken token)
	{
		Debug.OK(remove_VideoFrameArrived(token));
	}
}

interface AppBroadcastStreamStateChangedEventArgs : Windows.Media.Capture.IAppBroadcastStreamStateChangedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastStreamState StreamState()
	{
		Windows.Media.Capture.AppBroadcastStreamState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamStateChangedEventArgs).get_StreamState(&_ret));
		return _ret;
	}
}

interface AppBroadcastStreamVideoFrame : Windows.Media.Capture.IAppBroadcastStreamVideoFrame
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastStreamVideoHeader VideoHeader()
	{
		Windows.Media.Capture.AppBroadcastStreamVideoHeader _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamVideoFrame).get_VideoHeader(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer VideoBuffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamVideoFrame).get_VideoBuffer(&_ret));
		return _ret;
	}
}

interface AppBroadcastStreamVideoHeader : Windows.Media.Capture.IAppBroadcastStreamVideoHeader
{
extern(Windows):
	final Windows.Foundation.DateTime AbsoluteTimestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamVideoHeader).get_AbsoluteTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan RelativeTimestamp()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamVideoHeader).get_RelativeTimestamp(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamVideoHeader).get_Duration(&_ret));
		return _ret;
	}
	final bool IsKeyFrame()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamVideoHeader).get_IsKeyFrame(&_ret));
		return _ret;
	}
	final bool HasDiscontinuity()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamVideoHeader).get_HasDiscontinuity(&_ret));
		return _ret;
	}
	final ulong FrameId()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastStreamVideoHeader).get_FrameId(&_ret));
		return _ret;
	}
}

interface AppBroadcastTriggerDetails : Windows.Media.Capture.IAppBroadcastTriggerDetails
{
extern(Windows):
	final Windows.Media.Capture.AppBroadcastBackgroundService BackgroundService()
	{
		Windows.Media.Capture.AppBroadcastBackgroundService _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastTriggerDetails).get_BackgroundService(&_ret));
		return _ret;
	}
}

interface AppBroadcastViewerCountChangedEventArgs : Windows.Media.Capture.IAppBroadcastViewerCountChangedEventArgs
{
extern(Windows):
	final UINT32 ViewerCount()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppBroadcastViewerCountChangedEventArgs).get_ViewerCount(&_ret));
		return _ret;
	}
}

interface AppCapture : Windows.Media.Capture.IAppCapture
{
extern(Windows):
	final bool IsCapturingAudio()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCapture).get_IsCapturingAudio(&_ret));
		return _ret;
	}
	final bool IsCapturingVideo()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCapture).get_IsCapturingVideo(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCapturingChanged(void delegate(Windows.Media.Capture.AppCapture, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CapturingChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCapture, IInspectable), Windows.Media.Capture.AppCapture, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeCapturingChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CapturingChanged(token));
	}
}

interface AppCaptureAlternateShortcutKeys : Windows.Media.Capture.IAppCaptureAlternateShortcutKeys, Windows.Media.Capture.IAppCaptureAlternateShortcutKeys2, Windows.Media.Capture.IAppCaptureAlternateShortcutKeys3
{
extern(Windows):
	final void ToggleGameBarKey(Windows.System.VirtualKey value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).set_ToggleGameBarKey(value));
	}
	final Windows.System.VirtualKey ToggleGameBarKey()
	{
		Windows.System.VirtualKey _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).get_ToggleGameBarKey(&_ret));
		return _ret;
	}
	final void ToggleGameBarKeyModifiers(Windows.System.VirtualKeyModifiers value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).set_ToggleGameBarKeyModifiers(value));
	}
	final Windows.System.VirtualKeyModifiers ToggleGameBarKeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).get_ToggleGameBarKeyModifiers(&_ret));
		return _ret;
	}
	final void SaveHistoricalVideoKey(Windows.System.VirtualKey value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).set_SaveHistoricalVideoKey(value));
	}
	final Windows.System.VirtualKey SaveHistoricalVideoKey()
	{
		Windows.System.VirtualKey _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).get_SaveHistoricalVideoKey(&_ret));
		return _ret;
	}
	final void SaveHistoricalVideoKeyModifiers(Windows.System.VirtualKeyModifiers value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).set_SaveHistoricalVideoKeyModifiers(value));
	}
	final Windows.System.VirtualKeyModifiers SaveHistoricalVideoKeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).get_SaveHistoricalVideoKeyModifiers(&_ret));
		return _ret;
	}
	final void ToggleRecordingKey(Windows.System.VirtualKey value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).set_ToggleRecordingKey(value));
	}
	final Windows.System.VirtualKey ToggleRecordingKey()
	{
		Windows.System.VirtualKey _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).get_ToggleRecordingKey(&_ret));
		return _ret;
	}
	final void ToggleRecordingKeyModifiers(Windows.System.VirtualKeyModifiers value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).set_ToggleRecordingKeyModifiers(value));
	}
	final Windows.System.VirtualKeyModifiers ToggleRecordingKeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).get_ToggleRecordingKeyModifiers(&_ret));
		return _ret;
	}
	final void TakeScreenshotKey(Windows.System.VirtualKey value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).set_TakeScreenshotKey(value));
	}
	final Windows.System.VirtualKey TakeScreenshotKey()
	{
		Windows.System.VirtualKey _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).get_TakeScreenshotKey(&_ret));
		return _ret;
	}
	final void TakeScreenshotKeyModifiers(Windows.System.VirtualKeyModifiers value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).set_TakeScreenshotKeyModifiers(value));
	}
	final Windows.System.VirtualKeyModifiers TakeScreenshotKeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).get_TakeScreenshotKeyModifiers(&_ret));
		return _ret;
	}
	final void ToggleRecordingIndicatorKey(Windows.System.VirtualKey value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).set_ToggleRecordingIndicatorKey(value));
	}
	final Windows.System.VirtualKey ToggleRecordingIndicatorKey()
	{
		Windows.System.VirtualKey _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).get_ToggleRecordingIndicatorKey(&_ret));
		return _ret;
	}
	final void ToggleRecordingIndicatorKeyModifiers(Windows.System.VirtualKeyModifiers value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).set_ToggleRecordingIndicatorKeyModifiers(value));
	}
	final Windows.System.VirtualKeyModifiers ToggleRecordingIndicatorKeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys).get_ToggleRecordingIndicatorKeyModifiers(&_ret));
		return _ret;
	}
	final void ToggleMicrophoneCaptureKey(Windows.System.VirtualKey value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys2).set_ToggleMicrophoneCaptureKey(value));
	}
	final Windows.System.VirtualKey ToggleMicrophoneCaptureKey()
	{
		Windows.System.VirtualKey _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys2).get_ToggleMicrophoneCaptureKey(&_ret));
		return _ret;
	}
	final void ToggleMicrophoneCaptureKeyModifiers(Windows.System.VirtualKeyModifiers value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys2).set_ToggleMicrophoneCaptureKeyModifiers(value));
	}
	final Windows.System.VirtualKeyModifiers ToggleMicrophoneCaptureKeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys2).get_ToggleMicrophoneCaptureKeyModifiers(&_ret));
		return _ret;
	}
	final void ToggleCameraCaptureKey(Windows.System.VirtualKey value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys3).set_ToggleCameraCaptureKey(value));
	}
	final Windows.System.VirtualKey ToggleCameraCaptureKey()
	{
		Windows.System.VirtualKey _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys3).get_ToggleCameraCaptureKey(&_ret));
		return _ret;
	}
	final void ToggleCameraCaptureKeyModifiers(Windows.System.VirtualKeyModifiers value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys3).set_ToggleCameraCaptureKeyModifiers(value));
	}
	final Windows.System.VirtualKeyModifiers ToggleCameraCaptureKeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys3).get_ToggleCameraCaptureKeyModifiers(&_ret));
		return _ret;
	}
	final void ToggleBroadcastKey(Windows.System.VirtualKey value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys3).set_ToggleBroadcastKey(value));
	}
	final Windows.System.VirtualKey ToggleBroadcastKey()
	{
		Windows.System.VirtualKey _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys3).get_ToggleBroadcastKey(&_ret));
		return _ret;
	}
	final void ToggleBroadcastKeyModifiers(Windows.System.VirtualKeyModifiers value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys3).set_ToggleBroadcastKeyModifiers(value));
	}
	final Windows.System.VirtualKeyModifiers ToggleBroadcastKeyModifiers()
	{
		Windows.System.VirtualKeyModifiers _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureAlternateShortcutKeys3).get_ToggleBroadcastKeyModifiers(&_ret));
		return _ret;
	}
}

interface AppCaptureDurationGeneratedEventArgs : Windows.Media.Capture.IAppCaptureDurationGeneratedEventArgs
{
extern(Windows):
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureDurationGeneratedEventArgs).get_Duration(&_ret));
		return _ret;
	}
}

interface AppCaptureFileGeneratedEventArgs : Windows.Media.Capture.IAppCaptureFileGeneratedEventArgs
{
extern(Windows):
	final Windows.Storage.StorageFile File()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureFileGeneratedEventArgs).get_File(&_ret));
		return _ret;
	}
}

interface AppCaptureManager
{
}

interface AppCaptureMicrophoneCaptureStateChangedEventArgs : Windows.Media.Capture.IAppCaptureMicrophoneCaptureStateChangedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.AppCaptureMicrophoneCaptureState State()
	{
		Windows.Media.Capture.AppCaptureMicrophoneCaptureState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureMicrophoneCaptureStateChangedEventArgs).get_State(&_ret));
		return _ret;
	}
	final UINT32 ErrorCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureMicrophoneCaptureStateChangedEventArgs).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface AppCaptureRecordOperation : Windows.Media.Capture.IAppCaptureRecordOperation
{
extern(Windows):
	final void StopRecording()
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureRecordOperation).abi_StopRecording());
	}
	final Windows.Media.Capture.AppCaptureRecordingState State()
	{
		Windows.Media.Capture.AppCaptureRecordingState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureRecordOperation).get_State(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) ErrorCode()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureRecordOperation).get_ErrorCode(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Duration()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureRecordOperation).get_Duration(&_ret));
		return _ret;
	}
	final Windows.Storage.StorageFile File()
	{
		Windows.Storage.StorageFile _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureRecordOperation).get_File(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(bool) IsFileTruncated()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureRecordOperation).get_IsFileTruncated(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnStateChanged(void delegate(Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureRecordingStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureRecordingStateChangedEventArgs), Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureRecordingStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_StateChanged(token));
	}
	final EventRegistrationToken OnDurationGenerated(void delegate(Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureDurationGeneratedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_DurationGenerated(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureDurationGeneratedEventArgs), Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureDurationGeneratedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDurationGenerated(EventRegistrationToken token)
	{
		Debug.OK(remove_DurationGenerated(token));
	}
	final EventRegistrationToken OnFileGenerated(void delegate(Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureFileGeneratedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FileGenerated(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureFileGeneratedEventArgs), Windows.Media.Capture.AppCaptureRecordOperation, Windows.Media.Capture.AppCaptureFileGeneratedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFileGenerated(EventRegistrationToken token)
	{
		Debug.OK(remove_FileGenerated(token));
	}
}

interface AppCaptureRecordingStateChangedEventArgs : Windows.Media.Capture.IAppCaptureRecordingStateChangedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.AppCaptureRecordingState State()
	{
		Windows.Media.Capture.AppCaptureRecordingState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureRecordingStateChangedEventArgs).get_State(&_ret));
		return _ret;
	}
	final UINT32 ErrorCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureRecordingStateChangedEventArgs).get_ErrorCode(&_ret));
		return _ret;
	}
}

interface AppCaptureServices : Windows.Media.Capture.IAppCaptureServices
{
extern(Windows):
	final Windows.Media.Capture.AppCaptureRecordOperation Record()
	{
		Windows.Media.Capture.AppCaptureRecordOperation _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureServices).abi_Record(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppCaptureRecordOperation RecordTimeSpan(Windows.Foundation.DateTime startTime, Windows.Foundation.TimeSpan duration)
	{
		Windows.Media.Capture.AppCaptureRecordOperation _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureServices).abi_RecordTimeSpan(startTime, duration, &_ret));
		return _ret;
	}
	final bool CanCapture()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureServices).get_CanCapture(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppCaptureState State()
	{
		Windows.Media.Capture.AppCaptureState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureServices).get_State(&_ret));
		return _ret;
	}
}

interface AppCaptureSettings : Windows.Media.Capture.IAppCaptureSettings, Windows.Media.Capture.IAppCaptureSettings2, Windows.Media.Capture.IAppCaptureSettings3, Windows.Media.Capture.IAppCaptureSettings4, Windows.Media.Capture.IAppCaptureSettings5
{
extern(Windows):
	final void AppCaptureDestinationFolder(Windows.Storage.StorageFolder value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_AppCaptureDestinationFolder(value));
	}
	final Windows.Storage.StorageFolder AppCaptureDestinationFolder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_AppCaptureDestinationFolder(&_ret));
		return _ret;
	}
	final void AudioEncodingBitrate(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_AudioEncodingBitrate(value));
	}
	final UINT32 AudioEncodingBitrate()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_AudioEncodingBitrate(&_ret));
		return _ret;
	}
	final void IsAudioCaptureEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_IsAudioCaptureEnabled(value));
	}
	final bool IsAudioCaptureEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_IsAudioCaptureEnabled(&_ret));
		return _ret;
	}
	final void CustomVideoEncodingBitrate(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_CustomVideoEncodingBitrate(value));
	}
	final UINT32 CustomVideoEncodingBitrate()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_CustomVideoEncodingBitrate(&_ret));
		return _ret;
	}
	final void CustomVideoEncodingHeight(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_CustomVideoEncodingHeight(value));
	}
	final UINT32 CustomVideoEncodingHeight()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_CustomVideoEncodingHeight(&_ret));
		return _ret;
	}
	final void CustomVideoEncodingWidth(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_CustomVideoEncodingWidth(value));
	}
	final UINT32 CustomVideoEncodingWidth()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_CustomVideoEncodingWidth(&_ret));
		return _ret;
	}
	final void HistoricalBufferLength(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_HistoricalBufferLength(value));
	}
	final UINT32 HistoricalBufferLength()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_HistoricalBufferLength(&_ret));
		return _ret;
	}
	final void HistoricalBufferLengthUnit(Windows.Media.Capture.AppCaptureHistoricalBufferLengthUnit value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_HistoricalBufferLengthUnit(value));
	}
	final Windows.Media.Capture.AppCaptureHistoricalBufferLengthUnit HistoricalBufferLengthUnit()
	{
		Windows.Media.Capture.AppCaptureHistoricalBufferLengthUnit _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_HistoricalBufferLengthUnit(&_ret));
		return _ret;
	}
	final void IsHistoricalCaptureEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_IsHistoricalCaptureEnabled(value));
	}
	final bool IsHistoricalCaptureEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_IsHistoricalCaptureEnabled(&_ret));
		return _ret;
	}
	final void IsHistoricalCaptureOnBatteryAllowed(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_IsHistoricalCaptureOnBatteryAllowed(value));
	}
	final bool IsHistoricalCaptureOnBatteryAllowed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_IsHistoricalCaptureOnBatteryAllowed(&_ret));
		return _ret;
	}
	final void IsHistoricalCaptureOnWirelessDisplayAllowed(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_IsHistoricalCaptureOnWirelessDisplayAllowed(value));
	}
	final bool IsHistoricalCaptureOnWirelessDisplayAllowed()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_IsHistoricalCaptureOnWirelessDisplayAllowed(&_ret));
		return _ret;
	}
	final void MaximumRecordLength(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_MaximumRecordLength(value));
	}
	final Windows.Foundation.TimeSpan MaximumRecordLength()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_MaximumRecordLength(&_ret));
		return _ret;
	}
	final void ScreenshotDestinationFolder(Windows.Storage.StorageFolder value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_ScreenshotDestinationFolder(value));
	}
	final Windows.Storage.StorageFolder ScreenshotDestinationFolder()
	{
		Windows.Storage.StorageFolder _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_ScreenshotDestinationFolder(&_ret));
		return _ret;
	}
	final void VideoEncodingBitrateMode(Windows.Media.Capture.AppCaptureVideoEncodingBitrateMode value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_VideoEncodingBitrateMode(value));
	}
	final Windows.Media.Capture.AppCaptureVideoEncodingBitrateMode VideoEncodingBitrateMode()
	{
		Windows.Media.Capture.AppCaptureVideoEncodingBitrateMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_VideoEncodingBitrateMode(&_ret));
		return _ret;
	}
	final void VideoEncodingResolutionMode(Windows.Media.Capture.AppCaptureVideoEncodingResolutionMode value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_VideoEncodingResolutionMode(value));
	}
	final Windows.Media.Capture.AppCaptureVideoEncodingResolutionMode VideoEncodingResolutionMode()
	{
		Windows.Media.Capture.AppCaptureVideoEncodingResolutionMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_VideoEncodingResolutionMode(&_ret));
		return _ret;
	}
	final void IsAppCaptureEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).set_IsAppCaptureEnabled(value));
	}
	final bool IsAppCaptureEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_IsAppCaptureEnabled(&_ret));
		return _ret;
	}
	final bool IsCpuConstrained()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_IsCpuConstrained(&_ret));
		return _ret;
	}
	final bool IsDisabledByPolicy()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_IsDisabledByPolicy(&_ret));
		return _ret;
	}
	final bool IsMemoryConstrained()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_IsMemoryConstrained(&_ret));
		return _ret;
	}
	final bool HasHardwareEncoder()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings).get_HasHardwareEncoder(&_ret));
		return _ret;
	}
	final bool IsGpuConstrained()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings2).get_IsGpuConstrained(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppCaptureAlternateShortcutKeys AlternateShortcutKeys()
	{
		Windows.Media.Capture.AppCaptureAlternateShortcutKeys _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings2).get_AlternateShortcutKeys(&_ret));
		return _ret;
	}
	final void IsMicrophoneCaptureEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings3).set_IsMicrophoneCaptureEnabled(value));
	}
	final bool IsMicrophoneCaptureEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings3).get_IsMicrophoneCaptureEnabled(&_ret));
		return _ret;
	}
	final void IsMicrophoneCaptureEnabledByDefault(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings4).set_IsMicrophoneCaptureEnabledByDefault(value));
	}
	final bool IsMicrophoneCaptureEnabledByDefault()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings4).get_IsMicrophoneCaptureEnabledByDefault(&_ret));
		return _ret;
	}
	final void SystemAudioGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings4).set_SystemAudioGain(value));
	}
	final double SystemAudioGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings4).get_SystemAudioGain(&_ret));
		return _ret;
	}
	final void MicrophoneGain(double value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings4).set_MicrophoneGain(value));
	}
	final double MicrophoneGain()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings4).get_MicrophoneGain(&_ret));
		return _ret;
	}
	final void VideoEncodingFrameRateMode(Windows.Media.Capture.AppCaptureVideoEncodingFrameRateMode value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings4).set_VideoEncodingFrameRateMode(value));
	}
	final Windows.Media.Capture.AppCaptureVideoEncodingFrameRateMode VideoEncodingFrameRateMode()
	{
		Windows.Media.Capture.AppCaptureVideoEncodingFrameRateMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings4).get_VideoEncodingFrameRateMode(&_ret));
		return _ret;
	}
	final void IsEchoCancellationEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings5).set_IsEchoCancellationEnabled(value));
	}
	final bool IsEchoCancellationEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings5).get_IsEchoCancellationEnabled(&_ret));
		return _ret;
	}
	final void IsCursorImageCaptureEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings5).set_IsCursorImageCaptureEnabled(value));
	}
	final bool IsCursorImageCaptureEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureSettings5).get_IsCursorImageCaptureEnabled(&_ret));
		return _ret;
	}
}

interface AppCaptureState : Windows.Media.Capture.IAppCaptureState
{
extern(Windows):
	final bool IsTargetRunning()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureState).get_IsTargetRunning(&_ret));
		return _ret;
	}
	final bool IsHistoricalCaptureEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureState).get_IsHistoricalCaptureEnabled(&_ret));
		return _ret;
	}
	final bool ShouldCaptureMicrophone()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureState).get_ShouldCaptureMicrophone(&_ret));
		return _ret;
	}
	final void ShouldCaptureMicrophone(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureState).set_ShouldCaptureMicrophone(value));
	}
	final void RestartMicrophoneCapture()
	{
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureState).abi_RestartMicrophoneCapture());
	}
	final Windows.Media.Capture.AppCaptureMicrophoneCaptureState MicrophoneCaptureState()
	{
		Windows.Media.Capture.AppCaptureMicrophoneCaptureState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureState).get_MicrophoneCaptureState(&_ret));
		return _ret;
	}
	final UINT32 MicrophoneCaptureError()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IAppCaptureState).get_MicrophoneCaptureError(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnMicrophoneCaptureStateChanged(void delegate(Windows.Media.Capture.AppCaptureState, Windows.Media.Capture.AppCaptureMicrophoneCaptureStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_MicrophoneCaptureStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCaptureState, Windows.Media.Capture.AppCaptureMicrophoneCaptureStateChangedEventArgs), Windows.Media.Capture.AppCaptureState, Windows.Media.Capture.AppCaptureMicrophoneCaptureStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeMicrophoneCaptureStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_MicrophoneCaptureStateChanged(token));
	}
	final EventRegistrationToken OnCaptureTargetClosed(void delegate(Windows.Media.Capture.AppCaptureState, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CaptureTargetClosed(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.AppCaptureState, IInspectable), Windows.Media.Capture.AppCaptureState, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeCaptureTargetClosed(EventRegistrationToken token)
	{
		Debug.OK(remove_CaptureTargetClosed(token));
	}
}

interface CameraCaptureUI : Windows.Media.Capture.ICameraCaptureUI
{
extern(Windows):
	final Windows.Media.Capture.CameraCaptureUIPhotoCaptureSettings PhotoSettings()
	{
		Windows.Media.Capture.CameraCaptureUIPhotoCaptureSettings _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUI).get_PhotoSettings(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.CameraCaptureUIVideoCaptureSettings VideoSettings()
	{
		Windows.Media.Capture.CameraCaptureUIVideoCaptureSettings _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUI).get_VideoSettings(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) CaptureFileAsync(Windows.Media.Capture.CameraCaptureUIMode mode)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUI).abi_CaptureFileAsync(mode, &_ret));
		return _ret;
	}
}

interface CameraCaptureUIPhotoCaptureSettings : Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings
{
extern(Windows):
	final Windows.Media.Capture.CameraCaptureUIPhotoFormat Format()
	{
		Windows.Media.Capture.CameraCaptureUIPhotoFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings).get_Format(&_ret));
		return _ret;
	}
	final void Format(Windows.Media.Capture.CameraCaptureUIPhotoFormat value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings).set_Format(value));
	}
	final Windows.Media.Capture.CameraCaptureUIMaxPhotoResolution MaxResolution()
	{
		Windows.Media.Capture.CameraCaptureUIMaxPhotoResolution _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings).get_MaxResolution(&_ret));
		return _ret;
	}
	final void MaxResolution(Windows.Media.Capture.CameraCaptureUIMaxPhotoResolution value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings).set_MaxResolution(value));
	}
	final Windows.Foundation.Size CroppedSizeInPixels()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings).get_CroppedSizeInPixels(&_ret));
		return _ret;
	}
	final void CroppedSizeInPixels(Windows.Foundation.Size value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings).set_CroppedSizeInPixels(value));
	}
	final Windows.Foundation.Size CroppedAspectRatio()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings).get_CroppedAspectRatio(&_ret));
		return _ret;
	}
	final void CroppedAspectRatio(Windows.Foundation.Size value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings).set_CroppedAspectRatio(value));
	}
	final bool AllowCropping()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings).get_AllowCropping(&_ret));
		return _ret;
	}
	final void AllowCropping(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings).set_AllowCropping(value));
	}
}

interface CameraCaptureUIVideoCaptureSettings : Windows.Media.Capture.ICameraCaptureUIVideoCaptureSettings
{
extern(Windows):
	final Windows.Media.Capture.CameraCaptureUIVideoFormat Format()
	{
		Windows.Media.Capture.CameraCaptureUIVideoFormat _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIVideoCaptureSettings).get_Format(&_ret));
		return _ret;
	}
	final void Format(Windows.Media.Capture.CameraCaptureUIVideoFormat value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIVideoCaptureSettings).set_Format(value));
	}
	final Windows.Media.Capture.CameraCaptureUIMaxVideoResolution MaxResolution()
	{
		Windows.Media.Capture.CameraCaptureUIMaxVideoResolution _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIVideoCaptureSettings).get_MaxResolution(&_ret));
		return _ret;
	}
	final void MaxResolution(Windows.Media.Capture.CameraCaptureUIMaxVideoResolution value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIVideoCaptureSettings).set_MaxResolution(value));
	}
	final float MaxDurationInSeconds()
	{
		float _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIVideoCaptureSettings).get_MaxDurationInSeconds(&_ret));
		return _ret;
	}
	final void MaxDurationInSeconds(float value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIVideoCaptureSettings).set_MaxDurationInSeconds(value));
	}
	final bool AllowTrimming()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIVideoCaptureSettings).get_AllowTrimming(&_ret));
		return _ret;
	}
	final void AllowTrimming(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.ICameraCaptureUIVideoCaptureSettings).set_AllowTrimming(value));
	}
}

interface CameraOptionsUI
{
}

interface CapturedFrame : Windows.Media.Capture.ICapturedFrame, Windows.Storage.Streams.IRandomAccessStreamWithContentType, Windows.Storage.Streams.IContentTypeProvider, Windows.Storage.Streams.IRandomAccessStream, Windows.Storage.Streams.IOutputStream, Windows.Foundation.IClosable, Windows.Storage.Streams.IInputStream, Windows.Media.Capture.ICapturedFrameWithSoftwareBitmap
{
extern(Windows):
	final UINT32 Width()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrame).get_Width(&_ret));
		return _ret;
	}
	final UINT32 Height()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrame).get_Height(&_ret));
		return _ret;
	}
	final HSTRING ContentType()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IContentTypeProvider).get_ContentType(&_ret));
		return _ret;
	}
	final ulong Size()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Size(&_ret));
		return _ret;
	}
	final void Size(ulong value)
	{
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).set_Size(value));
	}
	final Windows.Storage.Streams.IInputStream GetInputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IInputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetInputStreamAt(position, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IOutputStream GetOutputStreamAt(ulong position)
	{
		Windows.Storage.Streams.IOutputStream _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).abi_GetOutputStreamAt(position, &_ret));
		return _ret;
	}
	final ulong Position()
	{
		ulong _ret;
		Debug.OK(this.as!(Windows.Storage.Streams.IRandomAccessStream).get_Position(&_ret));
		return _ret;
	}
	final void Seek(ulong position)
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
	final Windows.Graphics.Imaging.SoftwareBitmap SoftwareBitmap()
	{
		Windows.Graphics.Imaging.SoftwareBitmap _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameWithSoftwareBitmap).get_SoftwareBitmap(&_ret));
		return _ret;
	}
}

interface CapturedFrameControlValues : Windows.Media.Capture.ICapturedFrameControlValues, Windows.Media.Capture.ICapturedFrameControlValues2
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) Exposure()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues).get_Exposure(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(float) ExposureCompensation()
	{
		Windows.Foundation.IReference!(float) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues).get_ExposureCompensation(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) IsoSpeed()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues).get_IsoSpeed(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) Focus()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues).get_Focus(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Media.Devices.CaptureSceneMode) SceneMode()
	{
		Windows.Foundation.IReference!(Windows.Media.Devices.CaptureSceneMode) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues).get_SceneMode(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(bool) Flashed()
	{
		Windows.Foundation.IReference!(bool) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues).get_Flashed(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(float) FlashPowerPercent()
	{
		Windows.Foundation.IReference!(float) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues).get_FlashPowerPercent(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) WhiteBalance()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues).get_WhiteBalance(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(float) ZoomFactor()
	{
		Windows.Foundation.IReference!(float) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues).get_ZoomFactor(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Media.Devices.MediaCaptureFocusState) FocusState()
	{
		Windows.Foundation.IReference!(Windows.Media.Devices.MediaCaptureFocusState) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues2).get_FocusState(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) IsoDigitalGain()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues2).get_IsoDigitalGain(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) IsoAnalogGain()
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues2).get_IsoAnalogGain(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.MediaRatio SensorFrameRate()
	{
		Windows.Media.MediaProperties.MediaRatio _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues2).get_SensorFrameRate(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Media.Capture.WhiteBalanceGain) WhiteBalanceGain()
	{
		Windows.Foundation.IReference!(Windows.Media.Capture.WhiteBalanceGain) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedFrameControlValues2).get_WhiteBalanceGain(&_ret));
		return _ret;
	}
}

interface CapturedPhoto : Windows.Media.Capture.ICapturedPhoto
{
extern(Windows):
	final Windows.Media.Capture.CapturedFrame Frame()
	{
		Windows.Media.Capture.CapturedFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedPhoto).get_Frame(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.CapturedFrame Thumbnail()
	{
		Windows.Media.Capture.CapturedFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ICapturedPhoto).get_Thumbnail(&_ret));
		return _ret;
	}
}

interface GameBarServices : Windows.Media.Capture.IGameBarServices
{
extern(Windows):
	final Windows.Media.Capture.GameBarTargetCapturePolicy TargetCapturePolicy()
	{
		Windows.Media.Capture.GameBarTargetCapturePolicy _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServices).get_TargetCapturePolicy(&_ret));
		return _ret;
	}
	final void EnableCapture()
	{
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServices).abi_EnableCapture());
	}
	final void DisableCapture()
	{
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServices).abi_DisableCapture());
	}
	final Windows.Media.Capture.GameBarServicesTargetInfo TargetInfo()
	{
		Windows.Media.Capture.GameBarServicesTargetInfo _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServices).get_TargetInfo(&_ret));
		return _ret;
	}
	final HSTRING SessionId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServices).get_SessionId(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppBroadcastServices AppBroadcastServices()
	{
		Windows.Media.Capture.AppBroadcastServices _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServices).get_AppBroadcastServices(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.AppCaptureServices AppCaptureServices()
	{
		Windows.Media.Capture.AppCaptureServices _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServices).get_AppCaptureServices(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCommandReceived(void delegate(Windows.Media.Capture.GameBarServices, Windows.Media.Capture.GameBarServicesCommandEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CommandReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.GameBarServices, Windows.Media.Capture.GameBarServicesCommandEventArgs), Windows.Media.Capture.GameBarServices, Windows.Media.Capture.GameBarServicesCommandEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCommandReceived(EventRegistrationToken token)
	{
		Debug.OK(remove_CommandReceived(token));
	}
}

interface GameBarServicesCommandEventArgs : Windows.Media.Capture.IGameBarServicesCommandEventArgs
{
extern(Windows):
	final Windows.Media.Capture.GameBarCommand Command()
	{
		Windows.Media.Capture.GameBarCommand _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServicesCommandEventArgs).get_Command(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.GameBarCommandOrigin Origin()
	{
		Windows.Media.Capture.GameBarCommandOrigin _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServicesCommandEventArgs).get_Origin(&_ret));
		return _ret;
	}
}

interface GameBarServicesManager : Windows.Media.Capture.IGameBarServicesManager
{
extern(Windows):
	final EventRegistrationToken OnGameBarServicesCreated(void delegate(Windows.Media.Capture.GameBarServicesManager, Windows.Media.Capture.GameBarServicesManagerGameBarServicesCreatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_GameBarServicesCreated(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.GameBarServicesManager, Windows.Media.Capture.GameBarServicesManagerGameBarServicesCreatedEventArgs), Windows.Media.Capture.GameBarServicesManager, Windows.Media.Capture.GameBarServicesManagerGameBarServicesCreatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeGameBarServicesCreated(EventRegistrationToken token)
	{
		Debug.OK(remove_GameBarServicesCreated(token));
	}
}

interface GameBarServicesManagerGameBarServicesCreatedEventArgs : Windows.Media.Capture.IGameBarServicesManagerGameBarServicesCreatedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.GameBarServices GameBarServices()
	{
		Windows.Media.Capture.GameBarServices _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServicesManagerGameBarServicesCreatedEventArgs).get_GameBarServices(&_ret));
		return _ret;
	}
}

interface GameBarServicesTargetInfo : Windows.Media.Capture.IGameBarServicesTargetInfo
{
extern(Windows):
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServicesTargetInfo).get_DisplayName(&_ret));
		return _ret;
	}
	final HSTRING AppId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServicesTargetInfo).get_AppId(&_ret));
		return _ret;
	}
	final HSTRING TitleId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServicesTargetInfo).get_TitleId(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.GameBarServicesDisplayMode DisplayMode()
	{
		Windows.Media.Capture.GameBarServicesDisplayMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IGameBarServicesTargetInfo).get_DisplayMode(&_ret));
		return _ret;
	}
}

interface LowLagMediaRecording : Windows.Media.Capture.ILowLagMediaRecording, Windows.Media.Capture.ILowLagMediaRecording2, Windows.Media.Capture.ILowLagMediaRecording3
{
extern(Windows):
	final Windows.Foundation.IAsyncAction StartAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagMediaRecording).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagMediaRecording).abi_StopAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction FinishAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagMediaRecording).abi_FinishAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction PauseAsync(Windows.Media.Devices.MediaCapturePauseBehavior behavior)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagMediaRecording2).abi_PauseAsync(behavior, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ResumeAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagMediaRecording2).abi_ResumeAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCapturePauseResult) PauseWithResultAsync(Windows.Media.Devices.MediaCapturePauseBehavior behavior)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCapturePauseResult) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagMediaRecording3).abi_PauseWithResultAsync(behavior, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCaptureStopResult) StopWithResultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCaptureStopResult) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagMediaRecording3).abi_StopWithResultAsync(&_ret));
		return _ret;
	}
}

interface LowLagPhotoCapture : Windows.Media.Capture.ILowLagPhotoCapture
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.CapturedPhoto) CaptureAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.CapturedPhoto) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagPhotoCapture).abi_CaptureAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction FinishAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagPhotoCapture).abi_FinishAsync(&_ret));
		return _ret;
	}
}

interface LowLagPhotoSequenceCapture : Windows.Media.Capture.ILowLagPhotoSequenceCapture
{
extern(Windows):
	final Windows.Foundation.IAsyncAction StartAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagPhotoSequenceCapture).abi_StartAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagPhotoSequenceCapture).abi_StopAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction FinishAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.ILowLagPhotoSequenceCapture).abi_FinishAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnPhotoCaptured(void delegate(Windows.Media.Capture.LowLagPhotoSequenceCapture, Windows.Media.Capture.PhotoCapturedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PhotoCaptured(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.LowLagPhotoSequenceCapture, Windows.Media.Capture.PhotoCapturedEventArgs), Windows.Media.Capture.LowLagPhotoSequenceCapture, Windows.Media.Capture.PhotoCapturedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePhotoCaptured(EventRegistrationToken token)
	{
		Debug.OK(remove_PhotoCaptured(token));
	}
}

interface MediaCapture : Windows.Media.Capture.IMediaCapture, Windows.Media.Capture.IMediaCaptureVideoPreview, Windows.Media.Capture.IMediaCapture2, Windows.Foundation.IClosable, Windows.Media.Capture.IMediaCapture3, Windows.Media.Capture.IMediaCapture4, Windows.Media.Capture.IMediaCapture5, Windows.Media.Capture.IMediaCapture6
{
extern(Windows):
	final Windows.Foundation.IAsyncAction InitializeAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_InitializeAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction InitializeWithSettingsAsync(Windows.Media.Capture.MediaCaptureInitializationSettings mediaCaptureInitializationSettings)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_InitializeWithSettingsAsync(mediaCaptureInitializationSettings, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StartRecordToStorageFileAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_StartRecordToStorageFileAsync(encodingProfile, file, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StartRecordToStreamAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Storage.Streams.IRandomAccessStream stream)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_StartRecordToStreamAsync(encodingProfile, stream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StartRecordToCustomSinkAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Media.IMediaExtension customMediaSink)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_StartRecordToCustomSinkAsync(encodingProfile, customMediaSink, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StartRecordToCustomSinkIdAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, HSTRING customSinkActivationId, Windows.Foundation.Collections.IPropertySet customSinkSettings)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_StartRecordToCustomSinkIdAsync(encodingProfile, customSinkActivationId, customSinkSettings, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopRecordAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_StopRecordAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction CapturePhotoToStorageFileAsync(Windows.Media.MediaProperties.ImageEncodingProperties type, Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_CapturePhotoToStorageFileAsync(type, file, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction CapturePhotoToStreamAsync(Windows.Media.MediaProperties.ImageEncodingProperties type, Windows.Storage.Streams.IRandomAccessStream stream)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_CapturePhotoToStreamAsync(type, stream, &_ret));
		return _ret;
	}
	deprecated("AddEffectAsync might not be available in future versions of Windows. Starting with Windows Threshold, use AddAudioEffectAsync and AddVideoEffectAsync instead")
	final Windows.Foundation.IAsyncAction AddEffectAsync(Windows.Media.Capture.MediaStreamType mediaStreamType, HSTRING effectActivationID, Windows.Foundation.Collections.IPropertySet effectSettings)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_AddEffectAsync(mediaStreamType, effectActivationID, effectSettings, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ClearEffectsAsync(Windows.Media.Capture.MediaStreamType mediaStreamType)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_ClearEffectsAsync(mediaStreamType, &_ret));
		return _ret;
	}
	final void SetEncoderProperty(Windows.Media.Capture.MediaStreamType mediaStreamType, GUID propertyId, IInspectable propertyValue)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_SetEncoderProperty(mediaStreamType, propertyId, propertyValue));
	}
	final IInspectable GetEncoderProperty(Windows.Media.Capture.MediaStreamType mediaStreamType, GUID propertyId)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_GetEncoderProperty(mediaStreamType, propertyId, &_ret));
		return _ret;
	}
	final void removeFailed(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_Failed(eventCookie));
	}
	final void removeRecordLimitationExceeded(EventRegistrationToken eventCookie)
	{
		Debug.OK(remove_RecordLimitationExceeded(eventCookie));
	}
	final Windows.Media.Capture.MediaCaptureSettings MediaCaptureSettings()
	{
		Windows.Media.Capture.MediaCaptureSettings _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).get_MediaCaptureSettings(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.AudioDeviceController AudioDeviceController()
	{
		Windows.Media.Devices.AudioDeviceController _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).get_AudioDeviceController(&_ret));
		return _ret;
	}
	final Windows.Media.Devices.VideoDeviceController VideoDeviceController()
	{
		Windows.Media.Devices.VideoDeviceController _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).get_VideoDeviceController(&_ret));
		return _ret;
	}
	final void SetPreviewMirroring(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_SetPreviewMirroring(value));
	}
	final bool GetPreviewMirroring()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_GetPreviewMirroring(&_ret));
		return _ret;
	}
	final void SetPreviewRotation(Windows.Media.Capture.VideoRotation value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_SetPreviewRotation(value));
	}
	final Windows.Media.Capture.VideoRotation GetPreviewRotation()
	{
		Windows.Media.Capture.VideoRotation _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_GetPreviewRotation(&_ret));
		return _ret;
	}
	final void SetRecordRotation(Windows.Media.Capture.VideoRotation value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_SetRecordRotation(value));
	}
	final Windows.Media.Capture.VideoRotation GetRecordRotation()
	{
		Windows.Media.Capture.VideoRotation _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture).abi_GetRecordRotation(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StartPreviewAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoPreview).abi_StartPreviewAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StartPreviewToCustomSinkAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Media.IMediaExtension customMediaSink)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoPreview).abi_StartPreviewToCustomSinkAsync(encodingProfile, customMediaSink, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StartPreviewToCustomSinkIdAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, HSTRING customSinkActivationId, Windows.Foundation.Collections.IPropertySet customSinkSettings)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoPreview).abi_StartPreviewToCustomSinkIdAsync(encodingProfile, customSinkActivationId, customSinkSettings, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopPreviewAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoPreview).abi_StopPreviewAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording) PrepareLowLagRecordToStorageFileAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture2).abi_PrepareLowLagRecordToStorageFileAsync(encodingProfile, file, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording) PrepareLowLagRecordToStreamAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Storage.Streams.IRandomAccessStream stream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture2).abi_PrepareLowLagRecordToStreamAsync(encodingProfile, stream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording) PrepareLowLagRecordToCustomSinkAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, Windows.Media.IMediaExtension customMediaSink)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture2).abi_PrepareLowLagRecordToCustomSinkAsync(encodingProfile, customMediaSink, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording) PrepareLowLagRecordToCustomSinkIdAsync(Windows.Media.MediaProperties.MediaEncodingProfile encodingProfile, HSTRING customSinkActivationId, Windows.Foundation.Collections.IPropertySet customSinkSettings)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagMediaRecording) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture2).abi_PrepareLowLagRecordToCustomSinkIdAsync(encodingProfile, customSinkActivationId, customSinkSettings, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagPhotoCapture) PrepareLowLagPhotoCaptureAsync(Windows.Media.MediaProperties.ImageEncodingProperties type)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagPhotoCapture) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture2).abi_PrepareLowLagPhotoCaptureAsync(type, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagPhotoSequenceCapture) PrepareLowLagPhotoSequenceCaptureAsync(Windows.Media.MediaProperties.ImageEncodingProperties type)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.LowLagPhotoSequenceCapture) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture2).abi_PrepareLowLagPhotoSequenceCaptureAsync(type, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetEncodingPropertiesAsync(Windows.Media.Capture.MediaStreamType mediaStreamType, Windows.Media.MediaProperties.IMediaEncodingProperties mediaEncodingProperties, Windows.Media.MediaProperties.MediaPropertySet encoderProperties)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture2).abi_SetEncodingPropertiesAsync(mediaStreamType, mediaEncodingProperties, encoderProperties, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Core.VariablePhotoSequenceCapture) PrepareVariablePhotoSequenceCaptureAsync(Windows.Media.MediaProperties.ImageEncodingProperties type)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Core.VariablePhotoSequenceCapture) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture3).abi_PrepareVariablePhotoSequenceCaptureAsync(type, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnFocusChanged(void delegate(Windows.Media.Capture.MediaCapture, Windows.Media.Capture.MediaCaptureFocusChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_FocusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, Windows.Media.Capture.MediaCaptureFocusChangedEventArgs), Windows.Media.Capture.MediaCapture, Windows.Media.Capture.MediaCaptureFocusChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeFocusChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_FocusChanged(token));
	}
	final EventRegistrationToken OnPhotoConfirmationCaptured(void delegate(Windows.Media.Capture.MediaCapture, Windows.Media.Capture.PhotoConfirmationCapturedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PhotoConfirmationCaptured(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, Windows.Media.Capture.PhotoConfirmationCapturedEventArgs), Windows.Media.Capture.MediaCapture, Windows.Media.Capture.PhotoConfirmationCapturedEventArgs)(fn), &tok));
		return tok;
	}
	final void removePhotoConfirmationCaptured(EventRegistrationToken token)
	{
		Debug.OK(remove_PhotoConfirmationCaptured(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.IMediaExtension) AddAudioEffectAsync(Windows.Media.Effects.IAudioEffectDefinition definition)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.IMediaExtension) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture4).abi_AddAudioEffectAsync(definition, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.IMediaExtension) AddVideoEffectAsync(Windows.Media.Effects.IVideoEffectDefinition definition, Windows.Media.Capture.MediaStreamType mediaStreamType)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.IMediaExtension) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture4).abi_AddVideoEffectAsync(definition, mediaStreamType, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction PauseRecordAsync(Windows.Media.Devices.MediaCapturePauseBehavior behavior)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture4).abi_PauseRecordAsync(behavior, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ResumeRecordAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture4).abi_ResumeRecordAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCameraStreamStateChanged(void delegate(Windows.Media.Capture.MediaCapture, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CameraStreamStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, IInspectable), Windows.Media.Capture.MediaCapture, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeCameraStreamStateChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CameraStreamStateChanged(token));
	}
	final Windows.Media.Devices.CameraStreamState CameraStreamState()
	{
		Windows.Media.Devices.CameraStreamState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture4).get_CameraStreamState(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.VideoFrame) GetPreviewFrameAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.VideoFrame) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture4).abi_GetPreviewFrameAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.VideoFrame) GetPreviewFrameCopyAsync(Windows.Media.VideoFrame destination)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.VideoFrame) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture4).abi_GetPreviewFrameCopyAsync(destination, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnThermalStatusChanged(void delegate(Windows.Media.Capture.MediaCapture, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_ThermalStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, IInspectable), Windows.Media.Capture.MediaCapture, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeThermalStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_ThermalStatusChanged(token));
	}
	final Windows.Media.Capture.MediaCaptureThermalStatus ThermalStatus()
	{
		Windows.Media.Capture.MediaCaptureThermalStatus _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture4).get_ThermalStatus(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.AdvancedPhotoCapture) PrepareAdvancedPhotoCaptureAsync(Windows.Media.MediaProperties.ImageEncodingProperties encodingProperties)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.AdvancedPhotoCapture) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture4).abi_PrepareAdvancedPhotoCaptureAsync(encodingProperties, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RemoveEffectAsync(Windows.Media.IMediaExtension effect)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture5).abi_RemoveEffectAsync(effect, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCapturePauseResult) PauseRecordWithResultAsync(Windows.Media.Devices.MediaCapturePauseBehavior behavior)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCapturePauseResult) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture5).abi_PauseRecordWithResultAsync(behavior, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCaptureStopResult) StopRecordWithResultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCaptureStopResult) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture5).abi_StopRecordWithResultAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Media.Capture.Frames.MediaFrameSource) FrameSources()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Media.Capture.Frames.MediaFrameSource) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture5).get_FrameSources(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReader) CreateFrameReaderAsync(Windows.Media.Capture.Frames.MediaFrameSource inputSource)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReader) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture5).abi_CreateFrameReaderAsync(inputSource, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReader) CreateFrameReaderWithSubtypeAsync(Windows.Media.Capture.Frames.MediaFrameSource inputSource, HSTRING outputSubtype)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReader) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture5).abi_CreateFrameReaderWithSubtypeAsync(inputSource, outputSubtype, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReader) CreateFrameReaderWithSubtypeAndSizeAsync(Windows.Media.Capture.Frames.MediaFrameSource inputSource, HSTRING outputSubtype, Windows.Graphics.Imaging.BitmapSize outputSize)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReader) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture5).abi_CreateFrameReaderWithSubtypeAndSizeAsync(inputSource, outputSubtype, outputSize, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnCaptureDeviceExclusiveControlStatusChanged(void delegate(Windows.Media.Capture.MediaCapture, Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatusChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_CaptureDeviceExclusiveControlStatusChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatusChangedEventArgs), Windows.Media.Capture.MediaCapture, Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatusChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCaptureDeviceExclusiveControlStatusChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_CaptureDeviceExclusiveControlStatusChanged(token));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReader) CreateMultiSourceFrameReaderAsync(Windows.Foundation.Collections.IIterable!(Windows.Media.Capture.Frames.MediaFrameSource) inputSources)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReader) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapture6).abi_CreateMultiSourceFrameReaderAsync(inputSources, &_ret));
		return _ret;
	}
}

interface MediaCaptureDeviceExclusiveControlStatusChangedEventArgs : Windows.Media.Capture.IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatus Status()
	{
		Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatus _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs).get_Status(&_ret));
		return _ret;
	}
}

interface MediaCaptureFailedEventArgs : Windows.Media.Capture.IMediaCaptureFailedEventArgs
{
extern(Windows):
	final HSTRING Message()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureFailedEventArgs).get_Message(&_ret));
		return _ret;
	}
	final UINT32 Code()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureFailedEventArgs).get_Code(&_ret));
		return _ret;
	}
}

interface MediaCaptureFocusChangedEventArgs : Windows.Media.Capture.IMediaCaptureFocusChangedEventArgs
{
extern(Windows):
	final Windows.Media.Devices.MediaCaptureFocusState FocusState()
	{
		Windows.Media.Devices.MediaCaptureFocusState _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureFocusChangedEventArgs).get_FocusState(&_ret));
		return _ret;
	}
}

interface MediaCaptureInitializationSettings : Windows.Media.Capture.IMediaCaptureInitializationSettings, Windows.Media.Capture.IMediaCaptureInitializationSettings2, Windows.Media.Capture.IMediaCaptureInitializationSettings3, Windows.Media.Capture.IMediaCaptureInitializationSettings4, Windows.Media.Capture.IMediaCaptureInitializationSettings5, Windows.Media.Capture.IMediaCaptureInitializationSettings6
{
extern(Windows):
	final void AudioDeviceId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings).set_AudioDeviceId(value));
	}
	final HSTRING AudioDeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings).get_AudioDeviceId(&_ret));
		return _ret;
	}
	final void VideoDeviceId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings).set_VideoDeviceId(value));
	}
	final HSTRING VideoDeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings).get_VideoDeviceId(&_ret));
		return _ret;
	}
	final void StreamingCaptureMode(Windows.Media.Capture.StreamingCaptureMode value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings).set_StreamingCaptureMode(value));
	}
	final Windows.Media.Capture.StreamingCaptureMode StreamingCaptureMode()
	{
		Windows.Media.Capture.StreamingCaptureMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings).get_StreamingCaptureMode(&_ret));
		return _ret;
	}
	final void PhotoCaptureSource(Windows.Media.Capture.PhotoCaptureSource value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings).set_PhotoCaptureSource(value));
	}
	final Windows.Media.Capture.PhotoCaptureSource PhotoCaptureSource()
	{
		Windows.Media.Capture.PhotoCaptureSource _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings).get_PhotoCaptureSource(&_ret));
		return _ret;
	}
	final void MediaCategory(Windows.Media.Capture.MediaCategory value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings2).set_MediaCategory(value));
	}
	final Windows.Media.Capture.MediaCategory MediaCategory()
	{
		Windows.Media.Capture.MediaCategory _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings2).get_MediaCategory(&_ret));
		return _ret;
	}
	final void AudioProcessing(Windows.Media.AudioProcessing value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings2).set_AudioProcessing(value));
	}
	final Windows.Media.AudioProcessing AudioProcessing()
	{
		Windows.Media.AudioProcessing _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings2).get_AudioProcessing(&_ret));
		return _ret;
	}
	final void AudioSource(Windows.Media.Core.IMediaSource value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings3).set_AudioSource(value));
	}
	final Windows.Media.Core.IMediaSource AudioSource()
	{
		Windows.Media.Core.IMediaSource _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings3).get_AudioSource(&_ret));
		return _ret;
	}
	final void VideoSource(Windows.Media.Core.IMediaSource value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings3).set_VideoSource(value));
	}
	final Windows.Media.Core.IMediaSource VideoSource()
	{
		Windows.Media.Core.IMediaSource _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings3).get_VideoSource(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.MediaCaptureVideoProfile VideoProfile()
	{
		Windows.Media.Capture.MediaCaptureVideoProfile _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings4).get_VideoProfile(&_ret));
		return _ret;
	}
	final void VideoProfile(Windows.Media.Capture.MediaCaptureVideoProfile value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings4).set_VideoProfile(value));
	}
	final Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription PreviewMediaDescription()
	{
		Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings4).get_PreviewMediaDescription(&_ret));
		return _ret;
	}
	final void PreviewMediaDescription(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings4).set_PreviewMediaDescription(value));
	}
	final Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription RecordMediaDescription()
	{
		Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings4).get_RecordMediaDescription(&_ret));
		return _ret;
	}
	final void RecordMediaDescription(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings4).set_RecordMediaDescription(value));
	}
	final Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription PhotoMediaDescription()
	{
		Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings4).get_PhotoMediaDescription(&_ret));
		return _ret;
	}
	final void PhotoMediaDescription(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings4).set_PhotoMediaDescription(value));
	}
	final Windows.Media.Capture.Frames.MediaFrameSourceGroup SourceGroup()
	{
		Windows.Media.Capture.Frames.MediaFrameSourceGroup _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings5).get_SourceGroup(&_ret));
		return _ret;
	}
	final void SourceGroup(Windows.Media.Capture.Frames.MediaFrameSourceGroup value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings5).set_SourceGroup(value));
	}
	final Windows.Media.Capture.MediaCaptureSharingMode SharingMode()
	{
		Windows.Media.Capture.MediaCaptureSharingMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings5).get_SharingMode(&_ret));
		return _ret;
	}
	final void SharingMode(Windows.Media.Capture.MediaCaptureSharingMode value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings5).set_SharingMode(value));
	}
	final Windows.Media.Capture.MediaCaptureMemoryPreference MemoryPreference()
	{
		Windows.Media.Capture.MediaCaptureMemoryPreference _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings5).get_MemoryPreference(&_ret));
		return _ret;
	}
	final void MemoryPreference(Windows.Media.Capture.MediaCaptureMemoryPreference value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings5).set_MemoryPreference(value));
	}
	final bool AlwaysPlaySystemShutterSound()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings6).get_AlwaysPlaySystemShutterSound(&_ret));
		return _ret;
	}
	final void AlwaysPlaySystemShutterSound(bool value)
	{
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureInitializationSettings6).set_AlwaysPlaySystemShutterSound(value));
	}
}

interface MediaCapturePauseResult : Windows.Media.Capture.IMediaCapturePauseResult, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Media.VideoFrame LastFrame()
	{
		Windows.Media.VideoFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapturePauseResult).get_LastFrame(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan RecordDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCapturePauseResult).get_RecordDuration(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface MediaCaptureSettings : Windows.Media.Capture.IMediaCaptureSettings, Windows.Media.Capture.IMediaCaptureSettings2
{
extern(Windows):
	final HSTRING AudioDeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings).get_AudioDeviceId(&_ret));
		return _ret;
	}
	final HSTRING VideoDeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings).get_VideoDeviceId(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.StreamingCaptureMode StreamingCaptureMode()
	{
		Windows.Media.Capture.StreamingCaptureMode _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings).get_StreamingCaptureMode(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.PhotoCaptureSource PhotoCaptureSource()
	{
		Windows.Media.Capture.PhotoCaptureSource _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings).get_PhotoCaptureSource(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.VideoDeviceCharacteristic VideoDeviceCharacteristic()
	{
		Windows.Media.Capture.VideoDeviceCharacteristic _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings).get_VideoDeviceCharacteristic(&_ret));
		return _ret;
	}
	final bool ConcurrentRecordAndPhotoSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings2).get_ConcurrentRecordAndPhotoSupported(&_ret));
		return _ret;
	}
	final bool ConcurrentRecordAndPhotoSequenceSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings2).get_ConcurrentRecordAndPhotoSequenceSupported(&_ret));
		return _ret;
	}
	final bool CameraSoundRequiredForRegion()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings2).get_CameraSoundRequiredForRegion(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) Horizontal35mmEquivalentFocalLength()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings2).get_Horizontal35mmEquivalentFocalLength(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(INT32) PitchOffsetDegrees()
	{
		Windows.Foundation.IReference!(INT32) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings2).get_PitchOffsetDegrees(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(UINT32) Vertical35mmEquivalentFocalLength()
	{
		Windows.Foundation.IReference!(UINT32) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings2).get_Vertical35mmEquivalentFocalLength(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.MediaCategory MediaCategory()
	{
		Windows.Media.Capture.MediaCategory _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings2).get_MediaCategory(&_ret));
		return _ret;
	}
	final Windows.Media.AudioProcessing AudioProcessing()
	{
		Windows.Media.AudioProcessing _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureSettings2).get_AudioProcessing(&_ret));
		return _ret;
	}
}

interface MediaCaptureStopResult : Windows.Media.Capture.IMediaCaptureStopResult, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Media.VideoFrame LastFrame()
	{
		Windows.Media.VideoFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureStopResult).get_LastFrame(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan RecordDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureStopResult).get_RecordDuration(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
}

interface MediaCaptureVideoProfile : Windows.Media.Capture.IMediaCaptureVideoProfile
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfile).get_Id(&_ret));
		return _ret;
	}
	final HSTRING VideoDeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfile).get_VideoDeviceId(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription) SupportedPreviewMediaDescription()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfile).get_SupportedPreviewMediaDescription(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription) SupportedRecordMediaDescription()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfile).get_SupportedRecordMediaDescription(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription) SupportedPhotoMediaDescription()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfile).get_SupportedPhotoMediaDescription(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfile) GetConcurrency()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Media.Capture.MediaCaptureVideoProfile) _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfile).abi_GetConcurrency(&_ret));
		return _ret;
	}
}

interface MediaCaptureVideoProfileMediaDescription : Windows.Media.Capture.IMediaCaptureVideoProfileMediaDescription
{
extern(Windows):
	final UINT32 Width()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfileMediaDescription).get_Width(&_ret));
		return _ret;
	}
	final UINT32 Height()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfileMediaDescription).get_Height(&_ret));
		return _ret;
	}
	final double FrameRate()
	{
		double _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfileMediaDescription).get_FrameRate(&_ret));
		return _ret;
	}
	final bool IsVariablePhotoSequenceSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfileMediaDescription).get_IsVariablePhotoSequenceSupported(&_ret));
		return _ret;
	}
	final bool IsHdrVideoSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IMediaCaptureVideoProfileMediaDescription).get_IsHdrVideoSupported(&_ret));
		return _ret;
	}
}

interface OptionalReferencePhotoCapturedEventArgs : Windows.Media.Capture.IOptionalReferencePhotoCapturedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.CapturedFrame Frame()
	{
		Windows.Media.Capture.CapturedFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IOptionalReferencePhotoCapturedEventArgs).get_Frame(&_ret));
		return _ret;
	}
	final IInspectable Context()
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IOptionalReferencePhotoCapturedEventArgs).get_Context(&_ret));
		return _ret;
	}
}

interface PhotoCapturedEventArgs : Windows.Media.Capture.IPhotoCapturedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.CapturedFrame Frame()
	{
		Windows.Media.Capture.CapturedFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IPhotoCapturedEventArgs).get_Frame(&_ret));
		return _ret;
	}
	final Windows.Media.Capture.CapturedFrame Thumbnail()
	{
		Windows.Media.Capture.CapturedFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IPhotoCapturedEventArgs).get_Thumbnail(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan CaptureTimeOffset()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IPhotoCapturedEventArgs).get_CaptureTimeOffset(&_ret));
		return _ret;
	}
}

interface PhotoConfirmationCapturedEventArgs : Windows.Media.Capture.IPhotoConfirmationCapturedEventArgs
{
extern(Windows):
	final Windows.Media.Capture.CapturedFrame Frame()
	{
		Windows.Media.Capture.CapturedFrame _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IPhotoConfirmationCapturedEventArgs).get_Frame(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan CaptureTimeOffset()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IPhotoConfirmationCapturedEventArgs).get_CaptureTimeOffset(&_ret));
		return _ret;
	}
}

interface VideoStreamConfiguration : Windows.Media.Capture.IVideoStreamConfiguration
{
extern(Windows):
	final Windows.Media.MediaProperties.VideoEncodingProperties InputProperties()
	{
		Windows.Media.MediaProperties.VideoEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IVideoStreamConfiguration).get_InputProperties(&_ret));
		return _ret;
	}
	final Windows.Media.MediaProperties.VideoEncodingProperties OutputProperties()
	{
		Windows.Media.MediaProperties.VideoEncodingProperties _ret;
		Debug.OK(this.as!(Windows.Media.Capture.IVideoStreamConfiguration).get_OutputProperties(&_ret));
		return _ret;
	}
}

enum AppBroadcastCameraCaptureState
{
	Stopped = 0,
	Started = 1,
	Failed = 2
}

enum AppBroadcastCameraOverlayLocation
{
	TopLeft = 0,
	TopCenter = 1,
	TopRight = 2,
	MiddleLeft = 3,
	MiddleCenter = 4,
	MiddleRight = 5,
	BottomLeft = 6,
	BottomCenter = 7,
	BottomRight = 8
}

enum AppBroadcastCameraOverlaySize
{
	Small = 0,
	Medium = 1,
	Large = 2
}

enum AppBroadcastCaptureTargetType
{
	AppView = 0,
	EntireDisplay = 1
}

enum AppBroadcastExitBroadcastModeReason
{
	NormalExit = 0,
	UserCanceled = 1,
	AuthorizationFail = 2,
	ForegroundAppActivated = 3
}

enum AppBroadcastMicrophoneCaptureState
{
	Stopped = 0,
	Started = 1,
	Failed = 2
}

enum AppBroadcastPlugInState
{
	Unknown = 0,
	Initialized = 1,
	MicrosoftSignInRequired = 2,
	OAuthSignInRequired = 3,
	ProviderSignInRequired = 4,
	InBandwidthTest = 5,
	ReadyToBroadcast = 6
}

enum AppBroadcastPreviewState
{
	Started = 0,
	Stopped = 1,
	Failed = 2
}

enum AppBroadcastSignInResult
{
	Success = 0,
	AuthenticationFailed = 1,
	Unauthorized = 2,
	ServiceUnavailable = 3,
	Unknown = 4
}

enum AppBroadcastSignInState
{
	NotSignedIn = 0,
	MicrosoftSignInInProgress = 1,
	MicrosoftSignInComplete = 2,
	OAuthSignInInProgress = 3,
	OAuthSignInComplete = 4
}

enum AppBroadcastStreamState
{
	Initializing = 0,
	StreamReady = 1,
	Started = 2,
	Paused = 3,
	Terminated = 4
}

enum AppBroadcastTerminationReason
{
	NormalTermination = 0,
	LostConnectionToService = 1,
	NoNetworkConnectivity = 2,
	ServiceAbort = 3,
	ServiceError = 4,
	ServiceUnavailable = 5,
	InternalError = 6,
	UnsupportedFormat = 7,
	BackgroundTaskTerminated = 8,
	BackgroundTaskUnresponsive = 9
}

enum AppBroadcastVideoEncodingBitrateMode
{
	Custom = 0,
	Auto = 1
}

enum AppBroadcastVideoEncodingResolutionMode
{
	Custom = 0,
	Auto = 1
}

enum AppCaptureHistoricalBufferLengthUnit
{
	Megabytes = 0,
	Seconds = 1
}

enum AppCaptureMicrophoneCaptureState
{
	Stopped = 0,
	Started = 1,
	Failed = 2
}

enum AppCaptureRecordingState
{
	InProgress = 0,
	Completed = 1,
	Failed = 2
}

enum AppCaptureVideoEncodingBitrateMode
{
	Custom = 0,
	High = 1,
	Standard = 2
}

enum AppCaptureVideoEncodingFrameRateMode
{
	Standard = 0,
	High = 1
}

enum AppCaptureVideoEncodingResolutionMode
{
	Custom = 0,
	High = 1,
	Standard = 2
}

enum CameraCaptureUIMaxPhotoResolution
{
	HighestAvailable = 0,
	VerySmallQvga = 1,
	SmallVga = 2,
	MediumXga = 3,
	Large3M = 4,
	VeryLarge5M = 5
}

enum CameraCaptureUIMaxVideoResolution
{
	HighestAvailable = 0,
	LowDefinition = 1,
	StandardDefinition = 2,
	HighDefinition = 3
}

enum CameraCaptureUIMode
{
	PhotoOrVideo = 0,
	Photo = 1,
	Video = 2
}

enum CameraCaptureUIPhotoFormat
{
	Jpeg = 0,
	Png = 1,
	JpegXR = 2
}

enum CameraCaptureUIVideoFormat
{
	Mp4 = 0,
	Wmv = 1
}

enum ForegroundActivationArgument
{
	SignInRequired = 0,
	MoreSettings = 1
}

enum GameBarCommand
{
	OpenGameBar = 0,
	RecordHistoricalBuffer = 1,
	ToggleStartStopRecord = 2,
	StartRecord = 3,
	StopRecord = 4,
	TakeScreenshot = 5,
	StartBroadcast = 6,
	StopBroadcast = 7,
	PauseBroadcast = 8,
	ResumeBroadcast = 9,
	ToggleStartStopBroadcast = 10,
	ToggleMicrophoneCapture = 11,
	ToggleCameraCapture = 12,
	ToggleRecordingIndicator = 13
}

enum GameBarCommandOrigin
{
	ShortcutKey = 0,
	Cortana = 1,
	AppCommand = 2
}

enum GameBarServicesDisplayMode
{
	Windowed = 0,
	FullScreenExclusive = 1
}

enum GameBarTargetCapturePolicy
{
	EnabledBySystem = 0,
	EnabledByUser = 1,
	NotEnabled = 2,
	ProhibitedBySystem = 3,
	ProhibitedByPublisher = 4
}

enum KnownVideoProfile
{
	VideoRecording = 0,
	HighQualityPhoto = 1,
	BalancedVideoAndPhoto = 2,
	VideoConferencing = 3,
	PhotoSequence = 4
}

enum MediaCaptureDeviceExclusiveControlStatus
{
	ExclusiveControlAvailable = 0,
	SharedReadOnlyAvailable = 1
}

enum MediaCaptureMemoryPreference
{
	Auto = 0,
	Cpu = 1
}

enum MediaCaptureSharingMode
{
	ExclusiveControl = 0,
	SharedReadOnly = 1
}

enum MediaCaptureThermalStatus
{
	Normal = 0,
	Overheated = 1
}

enum MediaCategory
{
	Other = 0,
	Communications = 1,
	Media = 2,
	GameChat = 3,
	Speech = 4
}

enum MediaStreamType
{
	VideoPreview = 0,
	VideoRecord = 1,
	Audio = 2,
	Photo = 3
}

enum PhotoCaptureSource
{
	Auto = 0,
	VideoPreview = 1,
	Photo = 2
}

enum PowerlineFrequency
{
	Disabled = 0,
	FiftyHertz = 1,
	SixtyHertz = 2,
	Auto = 3
}

enum StreamingCaptureMode
{
	AudioAndVideo = 0,
	Audio = 1,
	Video = 2
}

enum VideoDeviceCharacteristic
{
	AllStreamsIndependent = 0,
	PreviewRecordStreamsIdentical = 1,
	PreviewPhotoStreamsIdentical = 2,
	RecordPhotoStreamsIdentical = 3,
	AllStreamsIdentical = 4
}

enum VideoRotation
{
	None = 0,
	Clockwise90Degrees = 1,
	Clockwise180Degrees = 2,
	Clockwise270Degrees = 3
}