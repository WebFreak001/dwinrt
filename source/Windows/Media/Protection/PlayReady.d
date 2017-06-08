module Windows.Media.Protection.PlayReady;

import dwinrt;

@uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6")
@WinrtFactory("Windows.Media.Protection.PlayReady.NDClient")
interface INDClient : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT add_RegistrationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDRegistrationCompletedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT remove_RegistrationCompleted(EventRegistrationToken token);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT add_ProximityDetectionCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDProximityDetectionCompletedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT remove_ProximityDetectionCompleted(EventRegistrationToken token);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT add_LicenseFetchCompleted(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDLicenseFetchCompletedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT remove_LicenseFetchCompleted(EventRegistrationToken token);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT add_ReRegistrationNeeded(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.PlayReady.NDClient, IInspectable) handler, EventRegistrationToken* return_token);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT remove_ReRegistrationNeeded(EventRegistrationToken token);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT add_ClosedCaptionDataReceived(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDClosedCaptionDataReceivedEventArgs) handler, EventRegistrationToken* return_token);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT remove_ClosedCaptionDataReceived(EventRegistrationToken token);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_StartAsync(Windows.Foundation.Uri contentUrl, UINT32 startAsyncOptions, Windows.Media.Protection.PlayReady.INDCustomData registrationCustomData, Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor licenseFetchDescriptor, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDStartResult)* return_result);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_LicenseFetchAsync(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor licenseFetchDescriptor, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDLicenseFetchResult)* return_result);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_ReRegistrationAsync(Windows.Media.Protection.PlayReady.INDCustomData registrationCustomData, Windows.Foundation.IAsyncAction* return_result);
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_Close();
}

@uuid("3e53dd62-fee8-451f-b0d4-f706cca3e037")
@WinrtFactory("Windows.Media.Protection.PlayReady.NDClient")
interface INDClientFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDClientFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CreateInstance(Windows.Media.Protection.PlayReady.INDDownloadEngine downloadEngine, Windows.Media.Protection.PlayReady.INDStreamParser streamParser, Windows.Media.Protection.PlayReady.INDMessenger pMessenger, Windows.Media.Protection.PlayReady.NDClient* return_instance);
}

@uuid("4738d29f-c345-4649-8468-b8c5fc357190")
interface INDClosedCaptionDataReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDClosedCaptionDataReceivedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ClosedCaptionDataFormat(Windows.Media.Protection.PlayReady.NDClosedCaptionFormat* return_ccForamt);
	deprecated("INDClosedCaptionDataReceivedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_PresentationTimestamp(INT64* return_presentationTimestamp);
	deprecated("INDClosedCaptionDataReceivedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ClosedCaptionData(UINT32* out___ccDataBytesSize, BYTE** return_ccDataBytes);
}

@uuid("f5cb0fdc-2d09-4f19-b5e1-76a0b3ee9267")
interface INDCustomData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDCustomData is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_CustomDataTypeID(UINT32* out___customDataTypeIDBytesSize, BYTE** return_customDataTypeIDBytes);
	deprecated("INDCustomData is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_CustomData(UINT32* out___customDataBytesSize, BYTE** return_customDataBytes);
}

@uuid("d65405ab-3424-4833-8c9a-af5fdeb22872")
@WinrtFactory("Windows.Media.Protection.PlayReady.NDCustomData")
interface INDCustomDataFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDCustomDataFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CreateInstance(UINT32 __customDataTypeIDBytesSize, BYTE* customDataTypeIDBytes, UINT32 __customDataBytesSize, BYTE* customDataBytes, Windows.Media.Protection.PlayReady.NDCustomData* return_instance);
}

@uuid("2d223d65-c4b6-4438-8d46-b96e6d0fb21f")
interface INDDownloadEngine : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDDownloadEngine is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_Open(Windows.Foundation.Uri uri, UINT32 __sessionIDBytesSize, BYTE* sessionIDBytes);
	deprecated("INDDownloadEngine is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_Pause();
	deprecated("INDDownloadEngine is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_Resume();
	deprecated("INDDownloadEngine is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_Close();
	deprecated("INDDownloadEngine is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_Seek(Windows.Foundation.TimeSpan startPosition);
	deprecated("INDDownloadEngine is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_CanSeek(bool* return_canSeek);
	deprecated("INDDownloadEngine is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_BufferFullMinThresholdInSamples(UINT32* return_bufferFullMinThreshold);
	deprecated("INDDownloadEngine is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_BufferFullMaxThresholdInSamples(UINT32* return_bufferFullMaxThreshold);
	deprecated("INDDownloadEngine is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Notifier(Windows.Media.Protection.PlayReady.NDDownloadEngineNotifier* return_instance);
}

@uuid("d720b4d4-f4b8-4530-a809-9193a571e7fc")
interface INDDownloadEngineNotifier : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnStreamOpened();
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnPlayReadyObjectReceived(UINT32 __dataBytesSize, BYTE* dataBytes);
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnContentIDReceived(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor licenseFetchDescriptor);
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnDataReceived(UINT32 __dataBytesSize, BYTE* dataBytes, UINT32 bytesReceived);
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnEndOfStream();
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnNetworkError();
}

@uuid("1ee30a1a-11b2-4558-8865-e3a516922517")
interface INDLicenseFetchCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDLicenseFetchCompletedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ResponseCustomData(Windows.Media.Protection.PlayReady.INDCustomData* return_customData);
}

@uuid("5498d33a-e686-4935-a567-7ca77ad20fa4")
interface INDLicenseFetchDescriptor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ContentIDType(Windows.Media.Protection.PlayReady.NDContentIDType* return_contentIDType);
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ContentID(UINT32* out___contentIDBytesSize, BYTE** return_contentIDBytes);
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_LicenseFetchChallengeCustomData(Windows.Media.Protection.PlayReady.INDCustomData* return_licenseFetchChallengeCustomData);
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_LicenseFetchChallengeCustomData(Windows.Media.Protection.PlayReady.INDCustomData licenseFetchChallengeCustomData);
}

@uuid("d0031202-cfac-4f00-ae6a-97af80b848f2")
@WinrtFactory("Windows.Media.Protection.PlayReady.NDLicenseFetchDescriptor")
interface INDLicenseFetchDescriptorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDLicenseFetchDescriptorFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CreateInstance(Windows.Media.Protection.PlayReady.NDContentIDType contentIDType, UINT32 __contentIDBytesSize, BYTE* contentIDBytes, Windows.Media.Protection.PlayReady.INDCustomData licenseFetchChallengeCustomData, Windows.Media.Protection.PlayReady.NDLicenseFetchDescriptor* return_instance);
}

@uuid("21d39698-aa62-45ff-a5ff-8037e5433825")
interface INDLicenseFetchResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDLicenseFetchResult is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ResponseCustomData(Windows.Media.Protection.PlayReady.INDCustomData* return_customData);
}

@uuid("d42df95d-a75b-47bf-8249-bc83820da38a")
interface INDMessenger : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_SendRegistrationRequestAsync(UINT32 __sessionIDBytesSize, BYTE* sessionIDBytes, UINT32 __challengeDataBytesSize, BYTE* challengeDataBytes, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult)* return_result);
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_SendProximityDetectionStartAsync(Windows.Media.Protection.PlayReady.NDProximityDetectionType pdType, UINT32 __transmitterChannelBytesSize, BYTE* transmitterChannelBytes, UINT32 __sessionIDBytesSize, BYTE* sessionIDBytes, UINT32 __challengeDataBytesSize, BYTE* challengeDataBytes, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult)* return_result);
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_SendProximityDetectionResponseAsync(Windows.Media.Protection.PlayReady.NDProximityDetectionType pdType, UINT32 __transmitterChannelBytesSize, BYTE* transmitterChannelBytes, UINT32 __sessionIDBytesSize, BYTE* sessionIDBytes, UINT32 __responseDataBytesSize, BYTE* responseDataBytes, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult)* return_result);
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_SendLicenseFetchRequestAsync(UINT32 __sessionIDBytesSize, BYTE* sessionIDBytes, UINT32 __challengeDataBytesSize, BYTE* challengeDataBytes, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult)* return_result);
}

@uuid("2a706328-da25-4f8c-9eb7-5d0fc3658bca")
interface INDProximityDetectionCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDProximityDetectionCompletedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ProximityDetectionRetryCount(UINT32* return_retryCount);
}

@uuid("9e39b64d-ab5b-4905-acdc-787a77c6374d")
interface INDRegistrationCompletedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDRegistrationCompletedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ResponseCustomData(Windows.Media.Protection.PlayReady.INDCustomData* return_customData);
	deprecated("INDRegistrationCompletedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_TransmitterProperties(Windows.Media.Protection.PlayReady.INDTransmitterProperties* return_transmitterProperties);
	deprecated("INDRegistrationCompletedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_TransmitterCertificateAccepted(bool* return_acceptpt);
	deprecated("INDRegistrationCompletedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_TransmitterCertificateAccepted(bool accept);
}

@uuid("e3685517-a584-479d-90b7-d689c7bf7c80")
interface INDSendResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDSendResult is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Response(UINT32* out___responseDataBytesSize, BYTE** return_responseDataBytes);
}

@uuid("79f6e96e-f50f-4015-8ba4-c2bc344ebd4e")
interface INDStartResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDStartResult is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_MediaStreamSource(Windows.Media.Core.MediaStreamSource* return_mediaStreamSource);
}

@uuid("d8f0bef8-91d2-4d47-a3f9-eaff4edb729f")
interface INDStorageFileHelper : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDStorageFileHelper is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_GetFileURLs(Windows.Storage.IStorageFile file, Windows.Foundation.Collections.IVector!(HSTRING)* return_fileURLs);
}

@uuid("e0baa198-9796-41c9-8695-59437e67e66a")
interface INDStreamParser : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDStreamParser is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_ParseData(UINT32 __dataBytesSize, BYTE* dataBytes);
	deprecated("INDStreamParser is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_GetStreamInformation(Windows.Media.Core.IMediaStreamDescriptor descriptor, Windows.Media.Protection.PlayReady.NDMediaStreamType* out_streamType, UINT32* return_streamID);
	deprecated("INDStreamParser is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_BeginOfStream();
	deprecated("INDStreamParser is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_EndOfStream();
	deprecated("INDStreamParser is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Notifier(Windows.Media.Protection.PlayReady.NDStreamParserNotifier* return_instance);
}

@uuid("c167acd0-2ce6-426c-ace5-5e9275fea715")
interface INDStreamParserNotifier : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnContentIDReceived(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor licenseFetchDescriptor);
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnMediaStreamDescriptorCreated(Windows.Foundation.Collections.IVector!(Windows.Media.Core.AudioStreamDescriptor) audioStreamDescriptors, Windows.Foundation.Collections.IVector!(Windows.Media.Core.VideoStreamDescriptor) videoStreamDescriptors);
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnSampleParsed(UINT32 streamID, Windows.Media.Protection.PlayReady.NDMediaStreamType streamType, Windows.Media.Core.MediaStreamSample streamSample, INT64 pts, Windows.Media.Protection.PlayReady.NDClosedCaptionFormat ccFormat, UINT32 __ccDataBytesSize, BYTE* ccDataBytes);
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnBeginSetupDecryptor(Windows.Media.Core.IMediaStreamDescriptor descriptor, GUID keyID, UINT32 __proBytesSize, BYTE* proBytes);
}

@uuid("7dd85cfe-1b99-4f68-8f82-8177f7cedf2b")
@WinrtFactory("Windows.Media.Protection.PlayReady.NDTCPMessenger")
interface INDTCPMessengerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDTCPMessengerFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CreateInstance(HSTRING remoteHostName, UINT32 remoteHostPort, Windows.Media.Protection.PlayReady.NDTCPMessenger* return_instance);
}

@uuid("e536af23-ac4f-4adc-8c66-4ff7c2702dd6")
interface INDTransmitterProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_CertificateType(Windows.Media.Protection.PlayReady.NDCertificateType* return_type);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_PlatformIdentifier(Windows.Media.Protection.PlayReady.NDCertificatePlatformID* return_identifier);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_SupportedFeatures(UINT32* out___featureSetsSize, Windows.Media.Protection.PlayReady.NDCertificateFeature** return_featureSets);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_SecurityLevel(UINT32* return_level);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_SecurityVersion(UINT32* return_securityVersion);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ExpirationDate(Windows.Foundation.DateTime* return_expirationDate);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ClientID(UINT32* out___clientIDBytesSize, BYTE** return_clientIDBytes);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ModelDigest(UINT32* out___modelDigestBytesSize, BYTE** return_modelDigestBytes);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ModelManufacturerName(HSTRING* return_modelManufacturerName);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ModelName(HSTRING* return_modelName);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ModelNumber(HSTRING* return_modelNumber);
}

@uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyContentHeader")
interface IPlayReadyContentHeader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeyId(GUID* return_value);
	HRESULT get_KeyIdString(HSTRING* return_value);
	HRESULT get_LicenseAcquisitionUrl(Windows.Foundation.Uri* return_value);
	HRESULT get_LicenseAcquisitionUserInterfaceUrl(Windows.Foundation.Uri* return_value);
	HRESULT get_DomainServiceId(GUID* return_value);
	HRESULT get_EncryptionType(Windows.Media.Protection.PlayReady.PlayReadyEncryptionAlgorithm* return_value);
	HRESULT get_CustomAttributes(HSTRING* return_value);
	HRESULT get_DecryptorSetup(Windows.Media.Protection.PlayReady.PlayReadyDecryptorSetup* return_value);
	HRESULT abi_GetSerializedHeader(UINT32* out___headerBytesSize, BYTE** return_headerBytes);
	HRESULT get_HeaderWithEmbeddedUpdates(Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_value);
}

@uuid("359c79f4-2180-498c-965b-e754d875eab2")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyContentHeader")
interface IPlayReadyContentHeader2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_KeyIds(UINT32* out___contentKeyIdsSize, GUID** return_contentKeyIds);
	HRESULT get_KeyIdStrings(UINT32* out___contentKeyIdStringsSize, HSTRING** return_contentKeyIdStrings);
}

@uuid("cb97c8ff-b758-4776-bf01-217a8b510b2c")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyContentHeader")
interface IPlayReadyContentHeaderFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceFromWindowsMediaDrmHeader(UINT32 __headerBytesSize, BYTE* headerBytes, Windows.Foundation.Uri licenseAcquisitionUrl, Windows.Foundation.Uri licenseAcquisitionUserInterfaceUrl, HSTRING customAttributes, GUID domainServiceId, Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_instance);
	HRESULT abi_CreateInstanceFromComponents(GUID contentKeyId, HSTRING contentKeyIdString, Windows.Media.Protection.PlayReady.PlayReadyEncryptionAlgorithm contentEncryptionAlgorithm, Windows.Foundation.Uri licenseAcquisitionUrl, Windows.Foundation.Uri licenseAcquisitionUserInterfaceUrl, HSTRING customAttributes, GUID domainServiceId, Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_instance);
	HRESULT abi_CreateInstanceFromPlayReadyHeader(UINT32 __headerBytesSize, BYTE* headerBytes, Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_instance);
}

@uuid("d1239cf5-ae6d-4778-97fd-6e3a2eeadbeb")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyContentHeader")
interface IPlayReadyContentHeaderFactory2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstanceFromComponents2(UINT32 dwFlags, UINT32 __contentKeyIdsSize, GUID* contentKeyIds, UINT32 __contentKeyIdStringsSize, HSTRING* contentKeyIdStrings, Windows.Media.Protection.PlayReady.PlayReadyEncryptionAlgorithm contentEncryptionAlgorithm, Windows.Foundation.Uri licenseAcquisitionUrl, Windows.Foundation.Uri licenseAcquisitionUserInterfaceUrl, HSTRING customAttributes, GUID domainServiceId, Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_instance);
}

@uuid("fbfd2523-906d-4982-a6b8-6849565a7ce8")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyContentResolver")
interface IPlayReadyContentResolver : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ServiceRequest(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest* return_serviceRequest);
}

@uuid("adcc93ac-97e6-43ef-95e4-d7868f3b16a9")
interface IPlayReadyDomain : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AccountId(GUID* return_value);
	HRESULT get_ServiceId(GUID* return_value);
	HRESULT get_Revision(UINT32* return_value);
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT get_DomainJoinUrl(Windows.Foundation.Uri* return_value);
}

@uuid("4df384ee-3121-4df3-a5e8-d0c24c0500fc")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyDomainIterable")
interface IPlayReadyDomainIterableFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(GUID domainAccountId, Windows.Media.Protection.PlayReady.PlayReadyDomainIterable* return_domainIterable);
}

@uuid("171b4a5a-405f-4739-b040-67b9f0c38758")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyDomainJoinServiceRequest")
interface IPlayReadyDomainJoinServiceRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DomainAccountId(GUID* return_value);
	HRESULT set_DomainAccountId(GUID value);
	HRESULT get_DomainFriendlyName(HSTRING* return_value);
	HRESULT set_DomainFriendlyName(HSTRING value);
	HRESULT get_DomainServiceId(GUID* return_value);
	HRESULT set_DomainServiceId(GUID value);
}

@uuid("062d58be-97ad-4917-aa03-46d4c252d464")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyDomainLeaveServiceRequest")
interface IPlayReadyDomainLeaveServiceRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DomainAccountId(GUID* return_value);
	HRESULT set_DomainAccountId(GUID value);
	HRESULT get_DomainServiceId(GUID* return_value);
	HRESULT set_DomainServiceId(GUID value);
}

@uuid("24446b8e-10b9-4530-b25b-901a8029a9b2")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyITADataGenerator")
interface IPlayReadyITADataGenerator : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GenerateData(GUID guidCPSystemId, UINT32 countOfStreams, Windows.Foundation.Collections.IPropertySet configuration, Windows.Media.Protection.PlayReady.PlayReadyITADataFormat format, UINT32* out___dataBytesSize, BYTE** return_dataBytes);
}

@uuid("21f5a86b-008c-4611-ab2f-aaa6c69f0e24")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyIndividualizationServiceRequest")
interface IPlayReadyIndividualizationServiceRequest : IInspectable
{
}

@uuid("ee474c4e-fa3c-414d-a9f2-3ffc1ef832d4")
interface IPlayReadyLicense : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FullyEvaluated(bool* return_value);
	HRESULT get_UsableForPlay(bool* return_value);
	HRESULT get_ExpirationDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_ExpireAfterFirstPlay(UINT32* return_value);
	HRESULT get_DomainAccountID(GUID* return_value);
	HRESULT get_ChainDepth(UINT32* return_value);
	HRESULT abi_GetKIDAtChainDepth(UINT32 chainDepth, GUID* return_kid);
}

@uuid("30f4e7a7-d8e3-48a0-bcda-ff9f40530436")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicense")
interface IPlayReadyLicense2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SecureStopId(GUID* return_value);
	HRESULT get_SecurityLevel(UINT32* return_value);
	HRESULT get_InMemoryOnly(bool* return_value);
	HRESULT get_ExpiresInRealTime(bool* return_value);
}

@uuid("5d85ff45-3e9f-4f48-93e1-9530c8d58c3e")
interface IPlayReadyLicenseAcquisitionServiceRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ContentHeader(Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_value);
	HRESULT set_ContentHeader(Windows.Media.Protection.PlayReady.PlayReadyContentHeader value);
	HRESULT get_DomainServiceId(GUID* return_value);
	HRESULT set_DomainServiceId(GUID value);
}

@uuid("b7fa5eb5-fe0c-b225-bc60-5a9edd32ceb5")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseAcquisitionServiceRequest")
interface IPlayReadyLicenseAcquisitionServiceRequest2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SessionId(GUID* return_value);
}

@uuid("394e5f4d-7f75-430d-b2e7-7f75f34b2d75")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseAcquisitionServiceRequest")
interface IPlayReadyLicenseAcquisitionServiceRequest3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateLicenseIterable(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, bool fullyEvaluated, Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable* return_result);
}

@uuid("d4179f08-0837-4978-8e68-be4293c8d7a6")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable")
interface IPlayReadyLicenseIterableFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, bool fullyEvaluated, Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable* return_instance);
}

@uuid("aaeb2141-0957-4405-b892-8bf3ec5dadd9")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseManagement")
interface IPlayReadyLicenseManagement : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_DeleteLicenses(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("a1723a39-87fa-4fdd-abbb-a9720e845259")
interface IPlayReadyLicenseSession : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateLAServiceRequest(Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest* return_serviceRequest);
	HRESULT abi_ConfigureMediaProtectionManager(Windows.Media.Protection.MediaProtectionManager mpm);
}

@uuid("4909be3a-3aed-4656-8ad7-ee0fd7799510")
interface IPlayReadyLicenseSession2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateLicenseIterable(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, bool fullyEvaluated, Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable* return_licenseIterable);
}

@uuid("62492699-6527-429e-98be-48d798ac2739")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseSession")
interface IPlayReadyLicenseSessionFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(Windows.Foundation.Collections.IPropertySet configuration, Windows.Media.Protection.PlayReady.PlayReadyLicenseSession* return_instance);
}

@uuid("c12b231c-0ecd-4f11-a185-1e24a4a67fb7")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyMeteringReportServiceRequest")
interface IPlayReadyMeteringReportServiceRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MeteringCertificate(UINT32* out___meteringCertBytesSize, BYTE** return_meteringCertBytes);
	HRESULT set_MeteringCertificate(UINT32 __meteringCertBytesSize, BYTE* meteringCertBytes);
}

@uuid("543d66ac-faf0-4560-84a5-0e4acec939e4")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyRevocationServiceRequest")
interface IPlayReadyRevocationServiceRequest : IInspectable
{
}

@uuid("5f1f0165-4214-4d9e-81eb-e89f9d294aee")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadySecureStopIterable")
interface IPlayReadySecureStopIterableFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(UINT32 __publisherCertBytesSize, BYTE* publisherCertBytes, Windows.Media.Protection.PlayReady.PlayReadySecureStopIterable* return_instance);
}

@uuid("b5501ee5-01bf-4401-9677-05630a6a4cc8")
interface IPlayReadySecureStopServiceRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SessionID(GUID* return_value);
	HRESULT get_StartTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_UpdateTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_Stopped(bool* return_value);
	HRESULT get_PublisherCertificate(UINT32* out___publisherCertBytesSize, BYTE** return_publisherCertBytes);
}

@uuid("0e448ac9-e67e-494e-9f49-6285438c76cf")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest")
interface IPlayReadySecureStopServiceRequestFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(UINT32 __publisherCertBytesSize, BYTE* publisherCertBytes, Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest* return_instance);
	HRESULT abi_CreateInstanceFromSessionID(GUID sessionID, UINT32 __publisherCertBytesSize, BYTE* publisherCertBytes, Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest* return_instance);
}

@uuid("8bad2836-a703-45a6-a180-76f3565aa725")
interface IPlayReadyServiceRequest : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
	HRESULT get_ResponseCustomData(HSTRING* return_value);
	HRESULT get_ChallengeCustomData(HSTRING* return_value);
	HRESULT set_ChallengeCustomData(HSTRING value);
	HRESULT abi_BeginServiceRequest(Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_NextServiceRequest(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest* return_serviceRequest);
	HRESULT abi_GenerateManualEnablingChallenge(Windows.Media.Protection.PlayReady.PlayReadySoapMessage* return_challengeMessage);
	HRESULT abi_ProcessManualEnablingResponse(UINT32 __responseBytesSize, BYTE* responseBytes, HRESULT* return_result);
}

@uuid("b659fcb5-ce41-41ba-8a0d-61df5fffa139")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadySoapMessage")
interface IPlayReadySoapMessage : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetMessageBody(UINT32* out___messageBodyBytesSize, BYTE** return_messageBodyBytes);
	HRESULT get_MessageHeaders(Windows.Foundation.Collections.IPropertySet* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_messageUri);
}

@uuid("5e69c00d-247c-469a-8f31-5c1a1571d9c6")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyStatics")
interface IPlayReadyStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DomainJoinServiceRequestType(GUID* return_value);
	HRESULT get_DomainLeaveServiceRequestType(GUID* return_value);
	HRESULT get_IndividualizationServiceRequestType(GUID* return_value);
	HRESULT get_LicenseAcquirerServiceRequestType(GUID* return_value);
	HRESULT get_MeteringReportServiceRequestType(GUID* return_value);
	HRESULT get_RevocationServiceRequestType(GUID* return_value);
	HRESULT get_MediaProtectionSystemId(GUID* return_value);
	HRESULT get_PlayReadySecurityVersion(UINT32* return_value);
}

@uuid("1f8d6a92-5f9a-423e-9466-b33969af7a3d")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyStatics")
interface IPlayReadyStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PlayReadyCertificateSecurityLevel(UINT32* return_value);
}

@uuid("3fa33f71-2dd3-4bed-ae49-f7148e63e710")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyStatics")
interface IPlayReadyStatics3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SecureStopServiceRequestType(GUID* return_value);
	HRESULT abi_CheckSupportedHardware(Windows.Media.Protection.PlayReady.PlayReadyHardwareDRMFeatures hwdrmFeature, bool* return_value);
}

@uuid("50a91300-d824-4231-9d5e-78ef8844c7d7")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyStatics")
interface IPlayReadyStatics4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InputTrustAuthorityToCreate(HSTRING* return_value);
	HRESULT get_ProtectionSystemId(GUID* return_value);
}

interface NDClient : Windows.Media.Protection.PlayReady.INDClient
{
}

interface NDCustomData : Windows.Media.Protection.PlayReady.INDCustomData
{
}

interface NDDownloadEngineNotifier : Windows.Media.Protection.PlayReady.INDDownloadEngineNotifier
{
}

interface NDLicenseFetchDescriptor : Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor
{
}

interface NDStorageFileHelper : Windows.Media.Protection.PlayReady.INDStorageFileHelper
{
}

interface NDStreamParserNotifier : Windows.Media.Protection.PlayReady.INDStreamParserNotifier
{
}

interface NDTCPMessenger : Windows.Media.Protection.PlayReady.INDMessenger
{
}

interface PlayReadyContentHeader : Windows.Media.Protection.PlayReady.IPlayReadyContentHeader, Windows.Media.Protection.PlayReady.IPlayReadyContentHeader2
{
}

interface PlayReadyContentResolver
{
}

interface PlayReadyDomain : Windows.Media.Protection.PlayReady.IPlayReadyDomain
{
}

interface PlayReadyDomainIterable : Windows.Foundation.Collections.IIterable!(Windows.Media.Protection.PlayReady.IPlayReadyDomain)
{
}

interface PlayReadyDomainIterator : Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyDomain)
{
}

interface PlayReadyDomainJoinServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyDomainJoinServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
}

interface PlayReadyDomainLeaveServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyDomainLeaveServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
}

interface PlayReadyITADataGenerator : Windows.Media.Protection.PlayReady.IPlayReadyITADataGenerator
{
}

interface PlayReadyIndividualizationServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyIndividualizationServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
}

interface PlayReadyLicense : Windows.Media.Protection.PlayReady.IPlayReadyLicense, Windows.Media.Protection.PlayReady.IPlayReadyLicense2
{
}

interface PlayReadyLicenseAcquisitionServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest2, Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest3
{
}

interface PlayReadyLicenseIterable : Windows.Foundation.Collections.IIterable!(Windows.Media.Protection.PlayReady.IPlayReadyLicense)
{
}

interface PlayReadyLicenseIterator : Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyLicense)
{
}

interface PlayReadyLicenseManagement
{
}

interface PlayReadyLicenseSession : Windows.Media.Protection.PlayReady.IPlayReadyLicenseSession, Windows.Media.Protection.PlayReady.IPlayReadyLicenseSession2
{
}

interface PlayReadyMeteringReportServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyMeteringReportServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
}

interface PlayReadyRevocationServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyRevocationServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
}

interface PlayReadySecureStopIterable : Windows.Foundation.Collections.IIterable!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest)
{
}

interface PlayReadySecureStopIterator : Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest)
{
}

interface PlayReadySecureStopServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
}

interface PlayReadySoapMessage : Windows.Media.Protection.PlayReady.IPlayReadySoapMessage
{
}

interface PlayReadyStatics
{
}

enum NDCertificateFeature
{
	Transmitter = 1,
	Receiver = 2,
	SharedCertificate = 3,
	SecureClock = 4,
	AntiRollBackClock = 5,
	CRLS = 9,
	PlayReady3Features = 13
}

enum NDCertificatePlatformID
{
	Windows = 0,
	OSX = 1,
	WindowsOnARM = 2,
	WindowsMobile7 = 5,
	iOSOnARM = 6,
	XBoxOnPPC = 7,
	WindowsPhone8OnARM = 8,
	WindowsPhone8OnX86 = 9,
	XboxOne = 10,
	AndroidOnARM = 11,
	WindowsPhone81OnARM = 12,
	WindowsPhone81OnX86 = 13
}

enum NDCertificateType
{
	Unknown = 0,
	PC = 1,
	Device = 2,
	Domain = 3,
	Issuer = 4,
	CrlSigner = 5,
	Service = 6,
	Silverlight = 7,
	Application = 8,
	Metering = 9,
	KeyFileSigner = 10,
	Server = 11,
	LicenseSigner = 12
}

enum NDClosedCaptionFormat
{
	ATSC = 0,
	SCTE20 = 1,
	Unknown = 2
}

enum NDContentIDType
{
	KeyID = 1,
	PlayReadyObject = 2,
	Custom = 3
}

enum NDMediaStreamType
{
	Audio = 1,
	Video = 2
}

enum NDProximityDetectionType
{
	UDP = 1,
	TCP = 2,
	TransportAgnostic = 4
}

enum NDStartAsyncOptions
{
	MutualAuthentication = 1,
	WaitForLicenseDescriptor = 2
}

enum PlayReadyDecryptorSetup
{
	Uninitialized = 0,
	OnDemand = 1
}

enum PlayReadyEncryptionAlgorithm
{
	Unprotected = 0,
	Aes128Ctr = 1,
	Cocktail = 4,
	Uninitialized = 2147483647
}

enum PlayReadyHardwareDRMFeatures
{
	HardwareDRM = 1,
	HEVC = 2
}

enum PlayReadyITADataFormat
{
	SerializedProperties = 0,
	SerializedProperties_WithContentProtectionWrapper = 1
}