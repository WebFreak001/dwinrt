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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_Mode(Windows.Media.Devices.AdvancedPhotoMode* return_value);
	HRESULT get_Context(IInspectable* return_value);
}

@uuid("18cf6cd8-cffe-42d8-8104-017bb318f4a1")
@WinrtFactory("Windows.Media.Capture.AdvancedCapturedPhoto")
interface IAdvancedCapturedPhoto2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FrameBoundsRelativeToReferencePhoto(Windows.Foundation.IReference!(Windows.Foundation.Rect)* return_value);
}

@uuid("83ffaafa-6667-44dc-973c-a6bce596aa0f")
@WinrtFactory("Windows.Media.Capture.AdvancedPhotoCapture")
interface IAdvancedPhotoCapture : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StreamState(Windows.Media.Capture.AppBroadcastStreamState* return_value);
	HRESULT set_DesiredVideoEncodingBitrate(UINT64 value);
	HRESULT get_DesiredVideoEncodingBitrate(UINT64* return_value);
	HRESULT set_BandwidthTestBitrate(UINT64 value);
	HRESULT get_BandwidthTestBitrate(UINT64* return_value);
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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_State(Windows.Media.Capture.AppBroadcastCameraCaptureState* return_value);
	HRESULT get_ErrorCode(UINT32* return_value);
}

@uuid("b2cb27a5-70fc-4e17-80bd-6ba0fd3ff3a0")
@WinrtFactory("Windows.Media.Capture.AppBroadcastGlobalSettings")
interface IAppBroadcastGlobalSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_Handled(bool value);
	HRESULT get_Handled(bool* return_value);
}

@uuid("364e018b-1e4e-411f-ab3e-92959844c156")
@WinrtFactory("Windows.Media.Capture.AppBroadcastManager")
interface IAppBroadcastManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_State(Windows.Media.Capture.AppBroadcastMicrophoneCaptureState* return_value);
	HRESULT get_ErrorCode(UINT32* return_value);
}

@uuid("520c1e66-6513-4574-ac54-23b79729615b")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPlugIn")
interface IAppBroadcastPlugIn : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.Media.Capture.AppBroadcastPlugInManager* return_ppInstance);
	HRESULT abi_GetForUser(Windows.System.User user, Windows.Media.Capture.AppBroadcastPlugInManager* return_ppInstance);
}

@uuid("4881d0f2-abc5-4fc6-84b0-89370bb47212")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPlugInStateChangedEventArgs")
interface IAppBroadcastPlugInStateChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PlugInState(Windows.Media.Capture.AppBroadcastPlugInState* return_value);
}

@uuid("14b60f5a-6e4a-4b80-a14f-67ee77d153e7")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPreview")
interface IAppBroadcastPreview : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PreviewState(Windows.Media.Capture.AppBroadcastPreviewState* return_value);
	HRESULT get_ErrorCode(UINT32* return_value);
}

@uuid("92228d50-db3f-40a8-8cd4-f4e371ddab37")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPreviewStreamReader")
interface IAppBroadcastPreviewStreamReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_VideoHeader(Windows.Media.Capture.AppBroadcastPreviewStreamVideoHeader* return_value);
	HRESULT get_VideoBuffer(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("8bef6113-da84-4499-a7ab-87118cb4a157")
@WinrtFactory("Windows.Media.Capture.AppBroadcastPreviewStreamVideoHeader")
interface IAppBroadcastPreviewStreamVideoHeader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AbsoluteTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_RelativeTimestamp(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_FrameId(UINT64* return_value);
}

@uuid("c30bdf62-9948-458f-ad50-aa06ec03da08")
@WinrtFactory("Windows.Media.Capture.AppBroadcastProviderSettings")
interface IAppBroadcastProviderSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SignInState(Windows.Media.Capture.AppBroadcastSignInState* return_value);
	HRESULT get_Result(Windows.Media.Capture.AppBroadcastSignInResult* return_value);
}

@uuid("ee08056d-8099-4ddd-922e-c56dac58abfb")
@WinrtFactory("Windows.Media.Capture.AppBroadcastState")
interface IAppBroadcastState : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AudioHeader(Windows.Media.Capture.AppBroadcastStreamAudioHeader* return_value);
	HRESULT get_AudioBuffer(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("bf21a570-6b78-4216-9f07-5aff5256f1b7")
@WinrtFactory("Windows.Media.Capture.AppBroadcastStreamAudioHeader")
interface IAppBroadcastStreamAudioHeader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AbsoluteTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_RelativeTimestamp(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_HasDiscontinuity(bool* return_value);
	HRESULT get_FrameId(UINT64* return_value);
}

@uuid("b338bcf9-3364-4460-b5f1-3cc2796a8aa2")
@WinrtFactory("Windows.Media.Capture.AppBroadcastStreamReader")
interface IAppBroadcastStreamReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StreamState(Windows.Media.Capture.AppBroadcastStreamState* return_value);
}

@uuid("0f97cf2b-c9e4-4e88-8194-d814cbd585d8")
@WinrtFactory("Windows.Media.Capture.AppBroadcastStreamVideoFrame")
interface IAppBroadcastStreamVideoFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_VideoHeader(Windows.Media.Capture.AppBroadcastStreamVideoHeader* return_value);
	HRESULT get_VideoBuffer(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("0b9ebece-7e32-432d-8ca2-36bf10b9f462")
@WinrtFactory("Windows.Media.Capture.AppBroadcastStreamVideoHeader")
interface IAppBroadcastStreamVideoHeader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AbsoluteTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_RelativeTimestamp(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_IsKeyFrame(bool* return_value);
	HRESULT get_HasDiscontinuity(bool* return_value);
	HRESULT get_FrameId(UINT64* return_value);
}

@uuid("deebab35-ec5e-4d8f-b1c0-5da6e8c75638")
@WinrtFactory("Windows.Media.Capture.AppBroadcastTriggerDetails")
interface IAppBroadcastTriggerDetails : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BackgroundService(Windows.Media.Capture.AppBroadcastBackgroundService* return_value);
}

@uuid("e6e11825-5401-4ade-8bd2-c14ecee6807d")
@WinrtFactory("Windows.Media.Capture.AppBroadcastViewerCountChangedEventArgs")
interface IAppBroadcastViewerCountChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ViewerCount(UINT32* return_value);
}

@uuid("9749d453-a29a-45ed-8f29-22d09942cff7")
@WinrtFactory("Windows.Media.Capture.AppCapture")
interface IAppCapture : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("4189fbf4-465e-45bf-907f-165b3fb23758")
@WinrtFactory("Windows.Media.Capture.AppCaptureFileGeneratedEventArgs")
interface IAppCaptureFileGeneratedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_File(Windows.Storage.StorageFile* return_value);
}

@uuid("7d9e3ea7-6282-4735-8d4e-aa45f90f6723")
@WinrtFactory("Windows.Media.Capture.AppCaptureManager")
interface IAppCaptureManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetCurrentSettings(Windows.Media.Capture.AppCaptureSettings* return_value);
	HRESULT abi_ApplySettings(Windows.Media.Capture.AppCaptureSettings appCaptureSettings);
}

@uuid("324d249e-45bc-4c35-bc35-e469fc7a69e0")
@WinrtFactory("Windows.Media.Capture.AppCaptureMicrophoneCaptureStateChangedEventArgs")
interface IAppCaptureMicrophoneCaptureStateChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_State(Windows.Media.Capture.AppCaptureMicrophoneCaptureState* return_value);
	HRESULT get_ErrorCode(UINT32* return_value);
}

@uuid("c66020a9-1538-495c-9bbb-2ba870ec5861")
@WinrtFactory("Windows.Media.Capture.AppCaptureRecordOperation")
interface IAppCaptureRecordOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_State(Windows.Media.Capture.AppCaptureRecordingState* return_value);
	HRESULT get_ErrorCode(UINT32* return_value);
}

@uuid("44fec0b5-34f5-4f18-ae8c-b9123abbfc0d")
@WinrtFactory("Windows.Media.Capture.AppCaptureServices")
interface IAppCaptureServices : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsGpuConstrained(bool* return_value);
	HRESULT get_AlternateShortcutKeys(Windows.Media.Capture.AppCaptureAlternateShortcutKeys* return_value);
}

@uuid("a93502fe-88c2-42d6-aaaa-40feffd75aec")
@WinrtFactory("Windows.Media.Capture.AppCaptureSettings")
interface IAppCaptureSettings3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_IsMicrophoneCaptureEnabled(bool value);
	HRESULT get_IsMicrophoneCaptureEnabled(bool* return_value);
}

@uuid("07c2774c-1a81-482f-a244-049d95f25b0b")
@WinrtFactory("Windows.Media.Capture.AppCaptureSettings")
interface IAppCaptureSettings4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.Media.Capture.AppCapture* return_value);
}

@uuid("48587540-6f93-4bb4-b8f3-e89e48948c91")
@WinrtFactory("Windows.Media.Capture.CameraCaptureUI")
interface ICameraCaptureUI : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PhotoSettings(Windows.Media.Capture.CameraCaptureUIPhotoCaptureSettings* return_value);
	HRESULT get_VideoSettings(Windows.Media.Capture.CameraCaptureUIVideoCaptureSettings* return_value);
	HRESULT abi_CaptureFileAsync(Windows.Media.Capture.CameraCaptureUIMode mode, Windows.Foundation.IAsyncOperation!(Windows.Storage.StorageFile)* return_asyncInfo);
}

@uuid("b9f5be97-3472-46a8-8a9e-04ce42ccc97d")
@WinrtFactory("Windows.Media.Capture.CameraCaptureUIPhotoCaptureSettings")
interface ICameraCaptureUIPhotoCaptureSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Format(Windows.Media.Capture.CameraCaptureUIVideoFormat* return_value);
	HRESULT set_Format(Windows.Media.Capture.CameraCaptureUIVideoFormat value);
	HRESULT get_MaxResolution(Windows.Media.Capture.CameraCaptureUIMaxVideoResolution* return_value);
	HRESULT set_MaxResolution(Windows.Media.Capture.CameraCaptureUIMaxVideoResolution value);
	HRESULT get_MaxDurationInSeconds(FLOAT* return_value);
	HRESULT set_MaxDurationInSeconds(FLOAT value);
	HRESULT get_AllowTrimming(bool* return_value);
	HRESULT set_AllowTrimming(bool value);
}

@uuid("3b0d5e34-3906-4b7d-946c-7bde844499ae")
@WinrtFactory("Windows.Media.Capture.CameraOptionsUI")
interface ICameraOptionsUIStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Show(Windows.Media.Capture.MediaCapture mediaCapture);
}

@uuid("1dd2de1f-571b-44d8-8e80-a08a1578766e")
@WinrtFactory("Windows.Media.Capture.CapturedFrame")
interface ICapturedFrame : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Width(UINT32* return_value);
	HRESULT get_Height(UINT32* return_value);
}

@uuid("90c65b7f-4e0d-4ca4-882d-7a144fed0a90")
@WinrtFactory("Windows.Media.Capture.CapturedFrameControlValues")
interface ICapturedFrameControlValues : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Exposure(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT get_ExposureCompensation(Windows.Foundation.IReference!(FLOAT)* return_value);
	HRESULT get_IsoSpeed(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_Focus(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_SceneMode(Windows.Foundation.IReference!(Windows.Media.Devices.CaptureSceneMode)* return_value);
	HRESULT get_Flashed(Windows.Foundation.IReference!(bool)* return_value);
	HRESULT get_FlashPowerPercent(Windows.Foundation.IReference!(FLOAT)* return_value);
	HRESULT get_WhiteBalance(Windows.Foundation.IReference!(UINT32)* return_value);
	HRESULT get_ZoomFactor(Windows.Foundation.IReference!(FLOAT)* return_value);
}

@uuid("500b2b88-06d2-4aa7-a7db-d37af73321d8")
@WinrtFactory("Windows.Media.Capture.CapturedFrameControlValues")
interface ICapturedFrameControlValues2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap* return_value);
}

@uuid("b0ce7e5a-cfcc-4d6c-8ad1-0869208aca16")
@WinrtFactory("Windows.Media.Capture.CapturedPhoto")
interface ICapturedPhoto : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_Thumbnail(Windows.Media.Capture.CapturedFrame* return_value);
}

@uuid("2dbead57-50a6-499e-8c6c-d330a7311796")
@WinrtFactory("Windows.Media.Capture.GameBarServices")
interface IGameBarServices : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Command(Windows.Media.Capture.GameBarCommand* return_value);
	HRESULT get_Origin(Windows.Media.Capture.GameBarCommandOrigin* return_value);
}

@uuid("3a4b9cfa-7f8b-4c60-9dbb-0bcd262dffc6")
@WinrtFactory("Windows.Media.Capture.GameBarServicesManager")
interface IGameBarServicesManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_GameBarServicesCreated(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.GameBarServicesManager, Windows.Media.Capture.GameBarServicesManagerGameBarServicesCreatedEventArgs) value, EventRegistrationToken* return_token);
	HRESULT remove_GameBarServicesCreated(EventRegistrationToken token);
}

@uuid("ededbd9c-143e-49a3-a5ea-0b1995c8d46e")
@WinrtFactory("Windows.Media.Capture.GameBarServicesManagerGameBarServicesCreatedEventArgs")
interface IGameBarServicesManagerGameBarServicesCreatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GameBarServices(Windows.Media.Capture.GameBarServices* return_value);
}

@uuid("34c1b616-ff25-4792-98f2-d3753f15ac13")
@WinrtFactory("Windows.Media.Capture.GameBarServicesManager")
interface IGameBarServicesManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefault(Windows.Media.Capture.GameBarServicesManager* return_ppInstance);
}

@uuid("b4202f92-1611-4e05-b6ef-dfd737ae33b0")
@WinrtFactory("Windows.Media.Capture.GameBarServicesTargetInfo")
interface IGameBarServicesTargetInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_StopAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_FinishAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("6369c758-5644-41e2-97af-8ef56a25e225")
@WinrtFactory("Windows.Media.Capture.LowLagMediaRecording")
interface ILowLagMediaRecording2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_PauseAsync(Windows.Media.Devices.MediaCapturePauseBehavior behavior, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_ResumeAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("5c33ab12-48f7-47da-b41e-90880a5fe0ec")
@WinrtFactory("Windows.Media.Capture.LowLagMediaRecording")
interface ILowLagMediaRecording3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_PauseWithResultAsync(Windows.Media.Devices.MediaCapturePauseBehavior behavior, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCapturePauseResult)* return_operation);
	HRESULT abi_StopWithResultAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.MediaCaptureStopResult)* return_operation);
}

@uuid("a37251b7-6b44-473d-8f24-f703d6c0ec44")
@WinrtFactory("Windows.Media.Capture.LowLagPhotoCapture")
interface ILowLagPhotoCapture : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CaptureAsync(Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.CapturedPhoto)* return_operation);
	HRESULT abi_FinishAsync(Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("7cc346bb-b9a9-4c91-8ffa-287e9c668669")
@WinrtFactory("Windows.Media.Capture.LowLagPhotoSequenceCapture")
interface ILowLagPhotoSequenceCapture : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_CaptureDeviceExclusiveControlStatusChanged(Windows.Foundation.TypedEventHandler!(Windows.Media.Capture.MediaCapture, Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatusChangedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_CaptureDeviceExclusiveControlStatusChanged(EventRegistrationToken token);
	HRESULT abi_CreateMultiSourceFrameReaderAsync(Windows.Foundation.Collections.IIterable!(Windows.Media.Capture.Frames.MediaFrameSource) inputSources, Windows.Foundation.IAsyncOperation!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReader)* return_value);
}

@uuid("9d2f920d-a588-43c6-89d6-5ad322af006a")
@WinrtFactory("Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatusChangedEventArgs")
interface IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Status(Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatus* return_value);
}

@uuid("80fde3f4-54c4-42c0-8d19-cea1a87ca18b")
@WinrtFactory("Windows.Media.Capture.MediaCaptureFailedEventArgs")
interface IMediaCaptureFailedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Message(HSTRING* return_value);
	HRESULT get_Code(UINT32* return_value);
}

@uuid("81e1bc7f-2277-493e-abee-d3f44ff98c04")
@WinrtFactory("Windows.Media.Capture.MediaCaptureFocusChangedEventArgs")
interface IMediaCaptureFocusChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FocusState(Windows.Media.Devices.MediaCaptureFocusState* return_value);
}

@uuid("9782ba70-ea65-4900-9356-8ca887726884")
@WinrtFactory("Windows.Media.Capture.MediaCaptureInitializationSettings")
interface IMediaCaptureInitializationSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AlwaysPlaySystemShutterSound(bool* return_value);
	HRESULT set_AlwaysPlaySystemShutterSound(bool value);
}

@uuid("aec47ca3-4477-4b04-a06f-2c1c5182fe9d")
@WinrtFactory("Windows.Media.Capture.MediaCapturePauseResult")
interface IMediaCapturePauseResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LastFrame(Windows.Media.VideoFrame* return_value);
	HRESULT get_RecordDuration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("1d83aafe-6d45-4477-8dc4-ac5bc01c4091")
@WinrtFactory("Windows.Media.Capture.MediaCaptureSettings")
interface IMediaCaptureSettings : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LastFrame(Windows.Media.VideoFrame* return_value);
	HRESULT get_RecordDuration(Windows.Foundation.TimeSpan* return_value);
}

@uuid("27727073-549e-447f-a20a-4f03c479d8c0")
@WinrtFactory("Windows.Media.Capture.MediaCapture")
interface IMediaCaptureVideoPreview : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_Context(IInspectable* return_value);
}

@uuid("373bfbc1-984e-4ff0-bf85-1c00aabc5a45")
@WinrtFactory("Windows.Media.Capture.PhotoCapturedEventArgs")
interface IPhotoCapturedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_Thumbnail(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_CaptureTimeOffset(Windows.Foundation.TimeSpan* return_value);
}

@uuid("ab473672-c28a-4827-8f8d-3636d3beb51e")
@WinrtFactory("Windows.Media.Capture.PhotoConfirmationCapturedEventArgs")
interface IPhotoConfirmationCapturedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Frame(Windows.Media.Capture.CapturedFrame* return_value);
	HRESULT get_CaptureTimeOffset(Windows.Foundation.TimeSpan* return_value);
}

@uuid("d8770a6f-4390-4b5e-ad3e-0f8af0963490")
@WinrtFactory("Windows.Media.Capture.VideoStreamConfiguration")
interface IVideoStreamConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InputProperties(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
	HRESULT get_OutputProperties(Windows.Media.MediaProperties.VideoEncodingProperties* return_value);
}

interface AdvancedCapturedPhoto
{
}

interface AdvancedPhotoCapture
{
}

interface AppBroadcastBackgroundService
{
}

interface AppBroadcastBackgroundServiceSignInInfo
{
}

interface AppBroadcastBackgroundServiceStreamInfo
{
}

interface AppBroadcastCameraCaptureStateChangedEventArgs
{
}

interface AppBroadcastGlobalSettings
{
}

interface AppBroadcastHeartbeatRequestedEventArgs
{
}

interface AppBroadcastMicrophoneCaptureStateChangedEventArgs
{
}

interface AppBroadcastPlugIn
{
}

interface AppBroadcastPlugInManager
{
}

interface AppBroadcastPlugInStateChangedEventArgs
{
}

interface AppBroadcastPreview
{
}

interface AppBroadcastPreviewStateChangedEventArgs
{
}

interface AppBroadcastPreviewStreamReader
{
}

interface AppBroadcastPreviewStreamVideoFrame
{
}

interface AppBroadcastPreviewStreamVideoHeader
{
}

interface AppBroadcastProviderSettings
{
}

interface AppBroadcastServices
{
}

interface AppBroadcastSignInStateChangedEventArgs
{
}

interface AppBroadcastState
{
}

interface AppBroadcastStreamAudioFrame
{
}

interface AppBroadcastStreamAudioHeader
{
}

interface AppBroadcastStreamReader
{
}

interface AppBroadcastStreamStateChangedEventArgs
{
}

interface AppBroadcastStreamVideoFrame
{
}

interface AppBroadcastStreamVideoHeader
{
}

interface AppBroadcastTriggerDetails
{
}

interface AppBroadcastViewerCountChangedEventArgs
{
}

interface AppCapture
{
}

interface AppCaptureAlternateShortcutKeys
{
}

interface AppCaptureDurationGeneratedEventArgs
{
}

interface AppCaptureFileGeneratedEventArgs
{
}

interface AppCaptureMicrophoneCaptureStateChangedEventArgs
{
}

interface AppCaptureRecordOperation
{
}

interface AppCaptureRecordingStateChangedEventArgs
{
}

interface AppCaptureServices
{
}

interface AppCaptureSettings
{
}

interface AppCaptureState
{
}

interface CameraCaptureUI
{
}

interface CameraCaptureUIPhotoCaptureSettings
{
}

interface CameraCaptureUIVideoCaptureSettings
{
}

interface CapturedFrame
{
}

interface CapturedFrameControlValues
{
}

interface CapturedPhoto
{
}

interface GameBarServices
{
}

interface GameBarServicesCommandEventArgs
{
}

interface GameBarServicesManager
{
}

interface GameBarServicesManagerGameBarServicesCreatedEventArgs
{
}

interface GameBarServicesTargetInfo
{
}

interface LowLagMediaRecording
{
}

interface LowLagPhotoCapture
{
}

interface LowLagPhotoSequenceCapture
{
}

interface MediaCapture
{
}

interface MediaCaptureDeviceExclusiveControlStatusChangedEventArgs
{
}

interface MediaCaptureFailedEventArgs
{
}

interface MediaCaptureFocusChangedEventArgs
{
}

interface MediaCaptureInitializationSettings
{
}

interface MediaCapturePauseResult
{
}

interface MediaCaptureSettings
{
}

interface MediaCaptureStopResult
{
}

interface MediaCaptureVideoProfile
{
}

interface MediaCaptureVideoProfileMediaDescription
{
}

interface OptionalReferencePhotoCapturedEventArgs
{
}

interface PhotoCapturedEventArgs
{
}

interface PhotoConfirmationCapturedEventArgs
{
}

interface VideoStreamConfiguration
{
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