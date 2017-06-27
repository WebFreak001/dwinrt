module Windows.Media.Protection.PlayReady;

import dwinrt;

@uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6")
@WinrtFactory("Windows.Media.Protection.PlayReady.NDClient")
interface INDClient : IInspectable
{
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
extern(Windows):
	deprecated("INDClientFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CreateInstance(Windows.Media.Protection.PlayReady.INDDownloadEngine downloadEngine, Windows.Media.Protection.PlayReady.INDStreamParser streamParser, Windows.Media.Protection.PlayReady.INDMessenger pMessenger, Windows.Media.Protection.PlayReady.NDClient* return_instance);
}

@uuid("4738d29f-c345-4649-8468-b8c5fc357190")
interface INDClosedCaptionDataReceivedEventArgs : IInspectable
{
extern(Windows):
	deprecated("INDClosedCaptionDataReceivedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ClosedCaptionDataFormat(Windows.Media.Protection.PlayReady.NDClosedCaptionFormat* return_ccForamt);
	deprecated("INDClosedCaptionDataReceivedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_PresentationTimestamp(INT64* return_presentationTimestamp);
	deprecated("INDClosedCaptionDataReceivedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ClosedCaptionData(UINT32* out___ccDataBytesSize, ubyte** return_ccDataBytes);
}

@uuid("f5cb0fdc-2d09-4f19-b5e1-76a0b3ee9267")
interface INDCustomData : IInspectable
{
extern(Windows):
	deprecated("INDCustomData is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_CustomDataTypeID(UINT32* out___customDataTypeIDBytesSize, ubyte** return_customDataTypeIDBytes);
	deprecated("INDCustomData is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_CustomData(UINT32* out___customDataBytesSize, ubyte** return_customDataBytes);
}

@uuid("d65405ab-3424-4833-8c9a-af5fdeb22872")
@WinrtFactory("Windows.Media.Protection.PlayReady.NDCustomData")
interface INDCustomDataFactory : IInspectable
{
extern(Windows):
	deprecated("INDCustomDataFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CreateInstance(UINT32 __customDataTypeIDBytesSize, ubyte* customDataTypeIDBytes, UINT32 __customDataBytesSize, ubyte* customDataBytes, Windows.Media.Protection.PlayReady.NDCustomData* return_instance);
}

@uuid("2d223d65-c4b6-4438-8d46-b96e6d0fb21f")
interface INDDownloadEngine : IInspectable
{
extern(Windows):
	deprecated("INDDownloadEngine is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_Open(Windows.Foundation.Uri uri, UINT32 __sessionIDBytesSize, ubyte* sessionIDBytes);
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
extern(Windows):
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnStreamOpened();
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnPlayReadyObjectReceived(UINT32 __dataBytesSize, ubyte* dataBytes);
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnContentIDReceived(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor licenseFetchDescriptor);
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnDataReceived(UINT32 __dataBytesSize, ubyte* dataBytes, UINT32 bytesReceived);
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnEndOfStream();
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnNetworkError();
}

@uuid("1ee30a1a-11b2-4558-8865-e3a516922517")
interface INDLicenseFetchCompletedEventArgs : IInspectable
{
extern(Windows):
	deprecated("INDLicenseFetchCompletedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ResponseCustomData(Windows.Media.Protection.PlayReady.INDCustomData* return_customData);
}

@uuid("5498d33a-e686-4935-a567-7ca77ad20fa4")
interface INDLicenseFetchDescriptor : IInspectable
{
extern(Windows):
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ContentIDType(Windows.Media.Protection.PlayReady.NDContentIDType* return_contentIDType);
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ContentID(UINT32* out___contentIDBytesSize, ubyte** return_contentIDBytes);
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_LicenseFetchChallengeCustomData(Windows.Media.Protection.PlayReady.INDCustomData* return_licenseFetchChallengeCustomData);
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT set_LicenseFetchChallengeCustomData(Windows.Media.Protection.PlayReady.INDCustomData licenseFetchChallengeCustomData);
}

@uuid("d0031202-cfac-4f00-ae6a-97af80b848f2")
@WinrtFactory("Windows.Media.Protection.PlayReady.NDLicenseFetchDescriptor")
interface INDLicenseFetchDescriptorFactory : IInspectable
{
extern(Windows):
	deprecated("INDLicenseFetchDescriptorFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CreateInstance(Windows.Media.Protection.PlayReady.NDContentIDType contentIDType, UINT32 __contentIDBytesSize, ubyte* contentIDBytes, Windows.Media.Protection.PlayReady.INDCustomData licenseFetchChallengeCustomData, Windows.Media.Protection.PlayReady.NDLicenseFetchDescriptor* return_instance);
}

@uuid("21d39698-aa62-45ff-a5ff-8037e5433825")
interface INDLicenseFetchResult : IInspectable
{
extern(Windows):
	deprecated("INDLicenseFetchResult is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ResponseCustomData(Windows.Media.Protection.PlayReady.INDCustomData* return_customData);
}

@uuid("d42df95d-a75b-47bf-8249-bc83820da38a")
interface INDMessenger : IInspectable
{
extern(Windows):
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_SendRegistrationRequestAsync(UINT32 __sessionIDBytesSize, ubyte* sessionIDBytes, UINT32 __challengeDataBytesSize, ubyte* challengeDataBytes, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult)* return_result);
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_SendProximityDetectionStartAsync(Windows.Media.Protection.PlayReady.NDProximityDetectionType pdType, UINT32 __transmitterChannelBytesSize, ubyte* transmitterChannelBytes, UINT32 __sessionIDBytesSize, ubyte* sessionIDBytes, UINT32 __challengeDataBytesSize, ubyte* challengeDataBytes, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult)* return_result);
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_SendProximityDetectionResponseAsync(Windows.Media.Protection.PlayReady.NDProximityDetectionType pdType, UINT32 __transmitterChannelBytesSize, ubyte* transmitterChannelBytes, UINT32 __sessionIDBytesSize, ubyte* sessionIDBytes, UINT32 __responseDataBytesSize, ubyte* responseDataBytes, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult)* return_result);
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_SendLicenseFetchRequestAsync(UINT32 __sessionIDBytesSize, ubyte* sessionIDBytes, UINT32 __challengeDataBytesSize, ubyte* challengeDataBytes, Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult)* return_result);
}

@uuid("2a706328-da25-4f8c-9eb7-5d0fc3658bca")
interface INDProximityDetectionCompletedEventArgs : IInspectable
{
extern(Windows):
	deprecated("INDProximityDetectionCompletedEventArgs is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ProximityDetectionRetryCount(UINT32* return_retryCount);
}

@uuid("9e39b64d-ab5b-4905-acdc-787a77c6374d")
interface INDRegistrationCompletedEventArgs : IInspectable
{
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
extern(Windows):
	deprecated("INDSendResult is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_Response(UINT32* out___responseDataBytesSize, ubyte** return_responseDataBytes);
}

@uuid("79f6e96e-f50f-4015-8ba4-c2bc344ebd4e")
interface INDStartResult : IInspectable
{
extern(Windows):
	deprecated("INDStartResult is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_MediaStreamSource(Windows.Media.Core.MediaStreamSource* return_mediaStreamSource);
}

@uuid("d8f0bef8-91d2-4d47-a3f9-eaff4edb729f")
interface INDStorageFileHelper : IInspectable
{
extern(Windows):
	deprecated("INDStorageFileHelper is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_GetFileURLs(Windows.Storage.IStorageFile file, Windows.Foundation.Collections.IVector!(HSTRING)* return_fileURLs);
}

@uuid("e0baa198-9796-41c9-8695-59437e67e66a")
interface INDStreamParser : IInspectable
{
extern(Windows):
	deprecated("INDStreamParser is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_ParseData(UINT32 __dataBytesSize, ubyte* dataBytes);
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
extern(Windows):
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnContentIDReceived(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor licenseFetchDescriptor);
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnMediaStreamDescriptorCreated(Windows.Foundation.Collections.IVector!(Windows.Media.Core.AudioStreamDescriptor) audioStreamDescriptors, Windows.Foundation.Collections.IVector!(Windows.Media.Core.VideoStreamDescriptor) videoStreamDescriptors);
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnSampleParsed(UINT32 streamID, Windows.Media.Protection.PlayReady.NDMediaStreamType streamType, Windows.Media.Core.MediaStreamSample streamSample, INT64 pts, Windows.Media.Protection.PlayReady.NDClosedCaptionFormat ccFormat, UINT32 __ccDataBytesSize, ubyte* ccDataBytes);
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_OnBeginSetupDecryptor(Windows.Media.Core.IMediaStreamDescriptor descriptor, GUID keyID, UINT32 __proBytesSize, ubyte* proBytes);
}

@uuid("7dd85cfe-1b99-4f68-8f82-8177f7cedf2b")
@WinrtFactory("Windows.Media.Protection.PlayReady.NDTCPMessenger")
interface INDTCPMessengerFactory : IInspectable
{
extern(Windows):
	deprecated("INDTCPMessengerFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT abi_CreateInstance(HSTRING remoteHostName, UINT32 remoteHostPort, Windows.Media.Protection.PlayReady.NDTCPMessenger* return_instance);
}

@uuid("e536af23-ac4f-4adc-8c66-4ff7c2702dd6")
interface INDTransmitterProperties : IInspectable
{
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
	HRESULT get_ClientID(UINT32* out___clientIDBytesSize, ubyte** return_clientIDBytes);
	deprecated("INDTransmitterProperties is deprecated and might not work on all platforms. For more info, see MSDN.")
	HRESULT get_ModelDigest(UINT32* out___modelDigestBytesSize, ubyte** return_modelDigestBytes);
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
extern(Windows):
	HRESULT get_KeyId(GUID* return_value);
	HRESULT get_KeyIdString(HSTRING* return_value);
	HRESULT get_LicenseAcquisitionUrl(Windows.Foundation.Uri* return_value);
	HRESULT get_LicenseAcquisitionUserInterfaceUrl(Windows.Foundation.Uri* return_value);
	HRESULT get_DomainServiceId(GUID* return_value);
	HRESULT get_EncryptionType(Windows.Media.Protection.PlayReady.PlayReadyEncryptionAlgorithm* return_value);
	HRESULT get_CustomAttributes(HSTRING* return_value);
	HRESULT get_DecryptorSetup(Windows.Media.Protection.PlayReady.PlayReadyDecryptorSetup* return_value);
	HRESULT abi_GetSerializedHeader(UINT32* out___headerBytesSize, ubyte** return_headerBytes);
	HRESULT get_HeaderWithEmbeddedUpdates(Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_value);
}

@uuid("359c79f4-2180-498c-965b-e754d875eab2")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyContentHeader")
interface IPlayReadyContentHeader2_Base : IInspectable
{
extern(Windows):
	HRESULT get_KeyIds(UINT32* out___contentKeyIdsSize, GUID** return_contentKeyIds);
	HRESULT get_KeyIdStrings(UINT32* out___contentKeyIdStringsSize, HSTRING** return_contentKeyIdStrings);
}
@uuid("359c79f4-2180-498c-965b-e754d875eab2")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyContentHeader")
interface IPlayReadyContentHeader2 : IPlayReadyContentHeader2_Base, Windows.Media.Protection.PlayReady.IPlayReadyContentHeader {}

@uuid("cb97c8ff-b758-4776-bf01-217a8b510b2c")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyContentHeader")
interface IPlayReadyContentHeaderFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceFromWindowsMediaDrmHeader(UINT32 __headerBytesSize, ubyte* headerBytes, Windows.Foundation.Uri licenseAcquisitionUrl, Windows.Foundation.Uri licenseAcquisitionUserInterfaceUrl, HSTRING customAttributes, GUID domainServiceId, Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_instance);
	HRESULT abi_CreateInstanceFromComponents(GUID contentKeyId, HSTRING contentKeyIdString, Windows.Media.Protection.PlayReady.PlayReadyEncryptionAlgorithm contentEncryptionAlgorithm, Windows.Foundation.Uri licenseAcquisitionUrl, Windows.Foundation.Uri licenseAcquisitionUserInterfaceUrl, HSTRING customAttributes, GUID domainServiceId, Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_instance);
	HRESULT abi_CreateInstanceFromPlayReadyHeader(UINT32 __headerBytesSize, ubyte* headerBytes, Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_instance);
}

@uuid("d1239cf5-ae6d-4778-97fd-6e3a2eeadbeb")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyContentHeader")
interface IPlayReadyContentHeaderFactory2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstanceFromComponents2(UINT32 dwFlags, UINT32 __contentKeyIdsSize, GUID* contentKeyIds, UINT32 __contentKeyIdStringsSize, HSTRING* contentKeyIdStrings, Windows.Media.Protection.PlayReady.PlayReadyEncryptionAlgorithm contentEncryptionAlgorithm, Windows.Foundation.Uri licenseAcquisitionUrl, Windows.Foundation.Uri licenseAcquisitionUserInterfaceUrl, HSTRING customAttributes, GUID domainServiceId, Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_instance);
}

@uuid("fbfd2523-906d-4982-a6b8-6849565a7ce8")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyContentResolver")
interface IPlayReadyContentResolver : IInspectable
{
extern(Windows):
	HRESULT abi_ServiceRequest(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest* return_serviceRequest);
}

@uuid("adcc93ac-97e6-43ef-95e4-d7868f3b16a9")
interface IPlayReadyDomain : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(GUID domainAccountId, Windows.Media.Protection.PlayReady.PlayReadyDomainIterable* return_domainIterable);
}

@uuid("171b4a5a-405f-4739-b040-67b9f0c38758")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyDomainJoinServiceRequest")
interface IPlayReadyDomainJoinServiceRequest_Base : IInspectable
{
extern(Windows):
	HRESULT get_DomainAccountId(GUID* return_value);
	HRESULT set_DomainAccountId(GUID value);
	HRESULT get_DomainFriendlyName(HSTRING* return_value);
	HRESULT set_DomainFriendlyName(HSTRING value);
	HRESULT get_DomainServiceId(GUID* return_value);
	HRESULT set_DomainServiceId(GUID value);
}
@uuid("171b4a5a-405f-4739-b040-67b9f0c38758")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyDomainJoinServiceRequest")
interface IPlayReadyDomainJoinServiceRequest : IPlayReadyDomainJoinServiceRequest_Base, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest {}

@uuid("062d58be-97ad-4917-aa03-46d4c252d464")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyDomainLeaveServiceRequest")
interface IPlayReadyDomainLeaveServiceRequest_Base : IInspectable
{
extern(Windows):
	HRESULT get_DomainAccountId(GUID* return_value);
	HRESULT set_DomainAccountId(GUID value);
	HRESULT get_DomainServiceId(GUID* return_value);
	HRESULT set_DomainServiceId(GUID value);
}
@uuid("062d58be-97ad-4917-aa03-46d4c252d464")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyDomainLeaveServiceRequest")
interface IPlayReadyDomainLeaveServiceRequest : IPlayReadyDomainLeaveServiceRequest_Base, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest {}

@uuid("24446b8e-10b9-4530-b25b-901a8029a9b2")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyITADataGenerator")
interface IPlayReadyITADataGenerator : IInspectable
{
extern(Windows):
	HRESULT abi_GenerateData(GUID guidCPSystemId, UINT32 countOfStreams, Windows.Foundation.Collections.IPropertySet configuration, Windows.Media.Protection.PlayReady.PlayReadyITADataFormat format, UINT32* out___dataBytesSize, ubyte** return_dataBytes);
}

@uuid("21f5a86b-008c-4611-ab2f-aaa6c69f0e24")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyIndividualizationServiceRequest")
interface IPlayReadyIndividualizationServiceRequest_Base : IInspectable
{
}
@uuid("21f5a86b-008c-4611-ab2f-aaa6c69f0e24")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyIndividualizationServiceRequest")
interface IPlayReadyIndividualizationServiceRequest : IPlayReadyIndividualizationServiceRequest_Base, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest {}

@uuid("ee474c4e-fa3c-414d-a9f2-3ffc1ef832d4")
interface IPlayReadyLicense : IInspectable
{
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
interface IPlayReadyLicense2_Base : IInspectable
{
extern(Windows):
	HRESULT get_SecureStopId(GUID* return_value);
	HRESULT get_SecurityLevel(UINT32* return_value);
	HRESULT get_InMemoryOnly(bool* return_value);
	HRESULT get_ExpiresInRealTime(bool* return_value);
}
@uuid("30f4e7a7-d8e3-48a0-bcda-ff9f40530436")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicense")
interface IPlayReadyLicense2 : IPlayReadyLicense2_Base, Windows.Media.Protection.PlayReady.IPlayReadyLicense {}

@uuid("5d85ff45-3e9f-4f48-93e1-9530c8d58c3e")
interface IPlayReadyLicenseAcquisitionServiceRequest_Base : IInspectable
{
extern(Windows):
	HRESULT get_ContentHeader(Windows.Media.Protection.PlayReady.PlayReadyContentHeader* return_value);
	HRESULT set_ContentHeader(Windows.Media.Protection.PlayReady.PlayReadyContentHeader value);
	HRESULT get_DomainServiceId(GUID* return_value);
	HRESULT set_DomainServiceId(GUID value);
}
@uuid("5d85ff45-3e9f-4f48-93e1-9530c8d58c3e")
interface IPlayReadyLicenseAcquisitionServiceRequest : IPlayReadyLicenseAcquisitionServiceRequest_Base, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest {}

@uuid("b7fa5eb5-fe0c-b225-bc60-5a9edd32ceb5")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseAcquisitionServiceRequest")
interface IPlayReadyLicenseAcquisitionServiceRequest2_Base : IInspectable
{
extern(Windows):
	HRESULT get_SessionId(GUID* return_value);
}
@uuid("b7fa5eb5-fe0c-b225-bc60-5a9edd32ceb5")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseAcquisitionServiceRequest")
interface IPlayReadyLicenseAcquisitionServiceRequest2 : IPlayReadyLicenseAcquisitionServiceRequest2_Base, Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest {}

@uuid("394e5f4d-7f75-430d-b2e7-7f75f34b2d75")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseAcquisitionServiceRequest")
interface IPlayReadyLicenseAcquisitionServiceRequest3_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateLicenseIterable(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, bool fullyEvaluated, Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable* return_result);
}
@uuid("394e5f4d-7f75-430d-b2e7-7f75f34b2d75")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseAcquisitionServiceRequest")
interface IPlayReadyLicenseAcquisitionServiceRequest3 : IPlayReadyLicenseAcquisitionServiceRequest3_Base, Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest2, Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest {}

@uuid("d4179f08-0837-4978-8e68-be4293c8d7a6")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable")
interface IPlayReadyLicenseIterableFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, bool fullyEvaluated, Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable* return_instance);
}

@uuid("aaeb2141-0957-4405-b892-8bf3ec5dadd9")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseManagement")
interface IPlayReadyLicenseManagement : IInspectable
{
extern(Windows):
	HRESULT abi_DeleteLicenses(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("a1723a39-87fa-4fdd-abbb-a9720e845259")
interface IPlayReadyLicenseSession : IInspectable
{
extern(Windows):
	HRESULT abi_CreateLAServiceRequest(Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest* return_serviceRequest);
	HRESULT abi_ConfigureMediaProtectionManager(Windows.Media.Protection.MediaProtectionManager mpm);
}

@uuid("4909be3a-3aed-4656-8ad7-ee0fd7799510")
interface IPlayReadyLicenseSession2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateLicenseIterable(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, bool fullyEvaluated, Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable* return_licenseIterable);
}
@uuid("4909be3a-3aed-4656-8ad7-ee0fd7799510")
interface IPlayReadyLicenseSession2 : IPlayReadyLicenseSession2_Base, Windows.Media.Protection.PlayReady.IPlayReadyLicenseSession {}

@uuid("62492699-6527-429e-98be-48d798ac2739")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyLicenseSession")
interface IPlayReadyLicenseSessionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.Foundation.Collections.IPropertySet configuration, Windows.Media.Protection.PlayReady.PlayReadyLicenseSession* return_instance);
}

@uuid("c12b231c-0ecd-4f11-a185-1e24a4a67fb7")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyMeteringReportServiceRequest")
interface IPlayReadyMeteringReportServiceRequest_Base : IInspectable
{
extern(Windows):
	HRESULT get_MeteringCertificate(UINT32* out___meteringCertBytesSize, ubyte** return_meteringCertBytes);
	HRESULT set_MeteringCertificate(UINT32 __meteringCertBytesSize, ubyte* meteringCertBytes);
}
@uuid("c12b231c-0ecd-4f11-a185-1e24a4a67fb7")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyMeteringReportServiceRequest")
interface IPlayReadyMeteringReportServiceRequest : IPlayReadyMeteringReportServiceRequest_Base, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest {}

@uuid("543d66ac-faf0-4560-84a5-0e4acec939e4")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyRevocationServiceRequest")
interface IPlayReadyRevocationServiceRequest_Base : IInspectable
{
}
@uuid("543d66ac-faf0-4560-84a5-0e4acec939e4")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyRevocationServiceRequest")
interface IPlayReadyRevocationServiceRequest : IPlayReadyRevocationServiceRequest_Base, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest {}

@uuid("5f1f0165-4214-4d9e-81eb-e89f9d294aee")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadySecureStopIterable")
interface IPlayReadySecureStopIterableFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(UINT32 __publisherCertBytesSize, ubyte* publisherCertBytes, Windows.Media.Protection.PlayReady.PlayReadySecureStopIterable* return_instance);
}

@uuid("b5501ee5-01bf-4401-9677-05630a6a4cc8")
interface IPlayReadySecureStopServiceRequest_Base : IInspectable
{
extern(Windows):
	HRESULT get_SessionID(GUID* return_value);
	HRESULT get_StartTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_UpdateTime(Windows.Foundation.DateTime* return_value);
	HRESULT get_Stopped(bool* return_value);
	HRESULT get_PublisherCertificate(UINT32* out___publisherCertBytesSize, ubyte** return_publisherCertBytes);
}
@uuid("b5501ee5-01bf-4401-9677-05630a6a4cc8")
interface IPlayReadySecureStopServiceRequest : IPlayReadySecureStopServiceRequest_Base, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest {}

@uuid("0e448ac9-e67e-494e-9f49-6285438c76cf")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest")
interface IPlayReadySecureStopServiceRequestFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(UINT32 __publisherCertBytesSize, ubyte* publisherCertBytes, Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest* return_instance);
	HRESULT abi_CreateInstanceFromSessionID(GUID sessionID, UINT32 __publisherCertBytesSize, ubyte* publisherCertBytes, Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest* return_instance);
}

@uuid("8bad2836-a703-45a6-a180-76f3565aa725")
interface IPlayReadyServiceRequest_Base : IInspectable
{
extern(Windows):
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT set_Uri(Windows.Foundation.Uri value);
	HRESULT get_ResponseCustomData(HSTRING* return_value);
	HRESULT get_ChallengeCustomData(HSTRING* return_value);
	HRESULT set_ChallengeCustomData(HSTRING value);
	HRESULT abi_BeginServiceRequest(Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_NextServiceRequest(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest* return_serviceRequest);
	HRESULT abi_GenerateManualEnablingChallenge(Windows.Media.Protection.PlayReady.PlayReadySoapMessage* return_challengeMessage);
	HRESULT abi_ProcessManualEnablingResponse(UINT32 __responseBytesSize, ubyte* responseBytes, HRESULT* return_result);
}
@uuid("8bad2836-a703-45a6-a180-76f3565aa725")
interface IPlayReadyServiceRequest : IPlayReadyServiceRequest_Base, Windows.Media.Protection.IMediaProtectionServiceRequest {}

@uuid("b659fcb5-ce41-41ba-8a0d-61df5fffa139")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadySoapMessage")
interface IPlayReadySoapMessage : IInspectable
{
extern(Windows):
	HRESULT abi_GetMessageBody(UINT32* out___messageBodyBytesSize, ubyte** return_messageBodyBytes);
	HRESULT get_MessageHeaders(Windows.Foundation.Collections.IPropertySet* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_messageUri);
}

@uuid("5e69c00d-247c-469a-8f31-5c1a1571d9c6")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyStatics")
interface IPlayReadyStatics : IInspectable
{
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
interface IPlayReadyStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT get_PlayReadyCertificateSecurityLevel(UINT32* return_value);
}
@uuid("1f8d6a92-5f9a-423e-9466-b33969af7a3d")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyStatics")
interface IPlayReadyStatics2 : IPlayReadyStatics2_Base, Windows.Media.Protection.PlayReady.IPlayReadyStatics {}

@uuid("3fa33f71-2dd3-4bed-ae49-f7148e63e710")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyStatics")
interface IPlayReadyStatics3_Base : IInspectable
{
extern(Windows):
	HRESULT get_SecureStopServiceRequestType(GUID* return_value);
	HRESULT abi_CheckSupportedHardware(Windows.Media.Protection.PlayReady.PlayReadyHardwareDRMFeatures hwdrmFeature, bool* return_value);
}
@uuid("3fa33f71-2dd3-4bed-ae49-f7148e63e710")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyStatics")
interface IPlayReadyStatics3 : IPlayReadyStatics3_Base, Windows.Media.Protection.PlayReady.IPlayReadyStatics2, Windows.Media.Protection.PlayReady.IPlayReadyStatics {}

@uuid("50a91300-d824-4231-9d5e-78ef8844c7d7")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyStatics")
interface IPlayReadyStatics4_Base : IInspectable
{
extern(Windows):
	HRESULT get_InputTrustAuthorityToCreate(HSTRING* return_value);
	HRESULT get_ProtectionSystemId(GUID* return_value);
}
@uuid("50a91300-d824-4231-9d5e-78ef8844c7d7")
@WinrtFactory("Windows.Media.Protection.PlayReady.PlayReadyStatics")
interface IPlayReadyStatics4 : IPlayReadyStatics4_Base, Windows.Media.Protection.PlayReady.IPlayReadyStatics3, Windows.Media.Protection.PlayReady.IPlayReadyStatics2, Windows.Media.Protection.PlayReady.IPlayReadyStatics {}

interface NDClient : Windows.Media.Protection.PlayReady.INDClient
{
extern(Windows):
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final EventRegistrationToken OnRegistrationCompleted(void delegate(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDRegistrationCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).add_RegistrationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDRegistrationCompletedEventArgs), Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDRegistrationCompletedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void removeRegistrationCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).remove_RegistrationCompleted(token));
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final EventRegistrationToken OnProximityDetectionCompleted(void delegate(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDProximityDetectionCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).add_ProximityDetectionCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDProximityDetectionCompletedEventArgs), Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDProximityDetectionCompletedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void removeProximityDetectionCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).remove_ProximityDetectionCompleted(token));
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final EventRegistrationToken OnLicenseFetchCompleted(void delegate(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDLicenseFetchCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).add_LicenseFetchCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDLicenseFetchCompletedEventArgs), Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDLicenseFetchCompletedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void removeLicenseFetchCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).remove_LicenseFetchCompleted(token));
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final EventRegistrationToken OnReRegistrationNeeded(void delegate(Windows.Media.Protection.PlayReady.NDClient, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).add_ReRegistrationNeeded(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.PlayReady.NDClient, IInspectable), Windows.Media.Protection.PlayReady.NDClient, IInspectable)(fn), &tok));
		return tok;
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void removeReRegistrationNeeded(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).remove_ReRegistrationNeeded(token));
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final EventRegistrationToken OnClosedCaptionDataReceived(void delegate(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDClosedCaptionDataReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).add_ClosedCaptionDataReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDClosedCaptionDataReceivedEventArgs), Windows.Media.Protection.PlayReady.NDClient, Windows.Media.Protection.PlayReady.INDClosedCaptionDataReceivedEventArgs)(fn), &tok));
		return tok;
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void removeClosedCaptionDataReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).remove_ClosedCaptionDataReceived(token));
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDStartResult) StartAsync(Windows.Foundation.Uri contentUrl, UINT32 startAsyncOptions, Windows.Media.Protection.PlayReady.INDCustomData registrationCustomData, Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor licenseFetchDescriptor)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDStartResult) _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).abi_StartAsync(contentUrl, startAsyncOptions, registrationCustomData, licenseFetchDescriptor, &_ret));
		return _ret;
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDLicenseFetchResult) LicenseFetchAsync(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor licenseFetchDescriptor)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDLicenseFetchResult) _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).abi_LicenseFetchAsync(licenseFetchDescriptor, &_ret));
		return _ret;
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.IAsyncAction ReRegistrationAsync(Windows.Media.Protection.PlayReady.INDCustomData registrationCustomData)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).abi_ReRegistrationAsync(registrationCustomData, &_ret));
		return _ret;
	}
	deprecated("INDClient is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void Close()
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClient)this.asInterface(uuid("3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6"))).abi_Close());
	}
	deprecated("INDClientFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	static Windows.Media.Protection.PlayReady.NDClient New(Windows.Media.Protection.PlayReady.INDDownloadEngine downloadEngine, Windows.Media.Protection.PlayReady.INDStreamParser streamParser, Windows.Media.Protection.PlayReady.INDMessenger pMessenger)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.INDClientFactory);
		Windows.Media.Protection.PlayReady.NDClient _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDClientFactory)factory.asInterface(uuid("3e53dd62-fee8-451f-b0d4-f706cca3e037"))).abi_CreateInstance(downloadEngine, streamParser, pMessenger, &_ret));
		return _ret;
	}
}

interface NDCustomData : Windows.Media.Protection.PlayReady.INDCustomData
{
extern(Windows):
	deprecated("INDCustomData is deprecated and might not work on all platforms. For more info, see MSDN.")
	final ubyte* CustomDataTypeID(UINT32* out___customDataTypeIDBytesSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDCustomData)this.asInterface(uuid("f5cb0fdc-2d09-4f19-b5e1-76a0b3ee9267"))).get_CustomDataTypeID(out___customDataTypeIDBytesSize, &_ret));
		return _ret;
	}
	deprecated("INDCustomData is deprecated and might not work on all platforms. For more info, see MSDN.")
	final ubyte* CustomData(UINT32* out___customDataBytesSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDCustomData)this.asInterface(uuid("f5cb0fdc-2d09-4f19-b5e1-76a0b3ee9267"))).get_CustomData(out___customDataBytesSize, &_ret));
		return _ret;
	}
	deprecated("INDCustomDataFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	static Windows.Media.Protection.PlayReady.NDCustomData New(UINT32 __customDataTypeIDBytesSize, ubyte* customDataTypeIDBytes, UINT32 __customDataBytesSize, ubyte* customDataBytes)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.INDCustomDataFactory);
		Windows.Media.Protection.PlayReady.NDCustomData _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDCustomDataFactory)factory.asInterface(uuid("d65405ab-3424-4833-8c9a-af5fdeb22872"))).abi_CreateInstance(__customDataTypeIDBytesSize, customDataTypeIDBytes, __customDataBytesSize, customDataBytes, &_ret));
		return _ret;
	}
}

interface NDDownloadEngineNotifier : Windows.Media.Protection.PlayReady.INDDownloadEngineNotifier
{
extern(Windows):
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OnStreamOpened()
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDDownloadEngineNotifier)this.asInterface(uuid("d720b4d4-f4b8-4530-a809-9193a571e7fc"))).abi_OnStreamOpened());
	}
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OnPlayReadyObjectReceived(UINT32 __dataBytesSize, ubyte* dataBytes)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDDownloadEngineNotifier)this.asInterface(uuid("d720b4d4-f4b8-4530-a809-9193a571e7fc"))).abi_OnPlayReadyObjectReceived(__dataBytesSize, dataBytes));
	}
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OnContentIDReceived(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor licenseFetchDescriptor)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDDownloadEngineNotifier)this.asInterface(uuid("d720b4d4-f4b8-4530-a809-9193a571e7fc"))).abi_OnContentIDReceived(licenseFetchDescriptor));
	}
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OnDataReceived(UINT32 __dataBytesSize, ubyte* dataBytes, UINT32 bytesReceived)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDDownloadEngineNotifier)this.asInterface(uuid("d720b4d4-f4b8-4530-a809-9193a571e7fc"))).abi_OnDataReceived(__dataBytesSize, dataBytes, bytesReceived));
	}
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OnEndOfStream()
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDDownloadEngineNotifier)this.asInterface(uuid("d720b4d4-f4b8-4530-a809-9193a571e7fc"))).abi_OnEndOfStream());
	}
	deprecated("INDDownloadEngineNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OnNetworkError()
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDDownloadEngineNotifier)this.asInterface(uuid("d720b4d4-f4b8-4530-a809-9193a571e7fc"))).abi_OnNetworkError());
	}
	static NDDownloadEngineNotifier New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(NDDownloadEngineNotifier).abi_ActivateInstance(&ret));
		return cast(NDDownloadEngineNotifier) ret;
	}
}

interface NDLicenseFetchDescriptor : Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor
{
extern(Windows):
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Media.Protection.PlayReady.NDContentIDType ContentIDType()
	{
		Windows.Media.Protection.PlayReady.NDContentIDType _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor)this.asInterface(uuid("5498d33a-e686-4935-a567-7ca77ad20fa4"))).get_ContentIDType(&_ret));
		return _ret;
	}
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	final ubyte* ContentID(UINT32* out___contentIDBytesSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor)this.asInterface(uuid("5498d33a-e686-4935-a567-7ca77ad20fa4"))).get_ContentID(out___contentIDBytesSize, &_ret));
		return _ret;
	}
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Media.Protection.PlayReady.INDCustomData LicenseFetchChallengeCustomData()
	{
		Windows.Media.Protection.PlayReady.INDCustomData _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor)this.asInterface(uuid("5498d33a-e686-4935-a567-7ca77ad20fa4"))).get_LicenseFetchChallengeCustomData(&_ret));
		return _ret;
	}
	deprecated("INDLicenseFetchDescriptor is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void LicenseFetchChallengeCustomData(Windows.Media.Protection.PlayReady.INDCustomData licenseFetchChallengeCustomData)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor)this.asInterface(uuid("5498d33a-e686-4935-a567-7ca77ad20fa4"))).set_LicenseFetchChallengeCustomData(licenseFetchChallengeCustomData));
	}
	deprecated("INDLicenseFetchDescriptorFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	static Windows.Media.Protection.PlayReady.NDLicenseFetchDescriptor New(Windows.Media.Protection.PlayReady.NDContentIDType contentIDType, UINT32 __contentIDBytesSize, ubyte* contentIDBytes, Windows.Media.Protection.PlayReady.INDCustomData licenseFetchChallengeCustomData)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptorFactory);
		Windows.Media.Protection.PlayReady.NDLicenseFetchDescriptor _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptorFactory)factory.asInterface(uuid("d0031202-cfac-4f00-ae6a-97af80b848f2"))).abi_CreateInstance(contentIDType, __contentIDBytesSize, contentIDBytes, licenseFetchChallengeCustomData, &_ret));
		return _ret;
	}
}

interface NDStorageFileHelper : Windows.Media.Protection.PlayReady.INDStorageFileHelper
{
extern(Windows):
	deprecated("INDStorageFileHelper is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.Collections.IVector!(HSTRING) GetFileURLs(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDStorageFileHelper)this.asInterface(uuid("d8f0bef8-91d2-4d47-a3f9-eaff4edb729f"))).abi_GetFileURLs(file, &_ret));
		return _ret;
	}
	static NDStorageFileHelper New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(NDStorageFileHelper).abi_ActivateInstance(&ret));
		return cast(NDStorageFileHelper) ret;
	}
}

interface NDStreamParserNotifier : Windows.Media.Protection.PlayReady.INDStreamParserNotifier
{
extern(Windows):
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OnContentIDReceived(Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor licenseFetchDescriptor)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDStreamParserNotifier)this.asInterface(uuid("c167acd0-2ce6-426c-ace5-5e9275fea715"))).abi_OnContentIDReceived(licenseFetchDescriptor));
	}
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OnMediaStreamDescriptorCreated(Windows.Foundation.Collections.IVector!(Windows.Media.Core.AudioStreamDescriptor) audioStreamDescriptors, Windows.Foundation.Collections.IVector!(Windows.Media.Core.VideoStreamDescriptor) videoStreamDescriptors)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDStreamParserNotifier)this.asInterface(uuid("c167acd0-2ce6-426c-ace5-5e9275fea715"))).abi_OnMediaStreamDescriptorCreated(audioStreamDescriptors, videoStreamDescriptors));
	}
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OnSampleParsed(UINT32 streamID, Windows.Media.Protection.PlayReady.NDMediaStreamType streamType, Windows.Media.Core.MediaStreamSample streamSample, INT64 pts, Windows.Media.Protection.PlayReady.NDClosedCaptionFormat ccFormat, UINT32 __ccDataBytesSize, ubyte* ccDataBytes)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDStreamParserNotifier)this.asInterface(uuid("c167acd0-2ce6-426c-ace5-5e9275fea715"))).abi_OnSampleParsed(streamID, streamType, streamSample, pts, ccFormat, __ccDataBytesSize, ccDataBytes));
	}
	deprecated("INDStreamParserNotifier is deprecated and might not work on all platforms. For more info, see MSDN.")
	final void OnBeginSetupDecryptor(Windows.Media.Core.IMediaStreamDescriptor descriptor, GUID keyID, UINT32 __proBytesSize, ubyte* proBytes)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDStreamParserNotifier)this.asInterface(uuid("c167acd0-2ce6-426c-ace5-5e9275fea715"))).abi_OnBeginSetupDecryptor(descriptor, keyID, __proBytesSize, proBytes));
	}
	static NDStreamParserNotifier New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(NDStreamParserNotifier).abi_ActivateInstance(&ret));
		return cast(NDStreamParserNotifier) ret;
	}
}

interface NDTCPMessenger : Windows.Media.Protection.PlayReady.INDMessenger
{
extern(Windows):
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult) SendRegistrationRequestAsync(UINT32 __sessionIDBytesSize, ubyte* sessionIDBytes, UINT32 __challengeDataBytesSize, ubyte* challengeDataBytes)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult) _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDMessenger)this.asInterface(uuid("d42df95d-a75b-47bf-8249-bc83820da38a"))).abi_SendRegistrationRequestAsync(__sessionIDBytesSize, sessionIDBytes, __challengeDataBytesSize, challengeDataBytes, &_ret));
		return _ret;
	}
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult) SendProximityDetectionStartAsync(Windows.Media.Protection.PlayReady.NDProximityDetectionType pdType, UINT32 __transmitterChannelBytesSize, ubyte* transmitterChannelBytes, UINT32 __sessionIDBytesSize, ubyte* sessionIDBytes, UINT32 __challengeDataBytesSize, ubyte* challengeDataBytes)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult) _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDMessenger)this.asInterface(uuid("d42df95d-a75b-47bf-8249-bc83820da38a"))).abi_SendProximityDetectionStartAsync(pdType, __transmitterChannelBytesSize, transmitterChannelBytes, __sessionIDBytesSize, sessionIDBytes, __challengeDataBytesSize, challengeDataBytes, &_ret));
		return _ret;
	}
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult) SendProximityDetectionResponseAsync(Windows.Media.Protection.PlayReady.NDProximityDetectionType pdType, UINT32 __transmitterChannelBytesSize, ubyte* transmitterChannelBytes, UINT32 __sessionIDBytesSize, ubyte* sessionIDBytes, UINT32 __responseDataBytesSize, ubyte* responseDataBytes)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult) _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDMessenger)this.asInterface(uuid("d42df95d-a75b-47bf-8249-bc83820da38a"))).abi_SendProximityDetectionResponseAsync(pdType, __transmitterChannelBytesSize, transmitterChannelBytes, __sessionIDBytesSize, sessionIDBytes, __responseDataBytesSize, responseDataBytes, &_ret));
		return _ret;
	}
	deprecated("INDMessenger is deprecated and might not work on all platforms. For more info, see MSDN.")
	final Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult) SendLicenseFetchRequestAsync(UINT32 __sessionIDBytesSize, ubyte* sessionIDBytes, UINT32 __challengeDataBytesSize, ubyte* challengeDataBytes)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Media.Protection.PlayReady.INDSendResult) _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDMessenger)this.asInterface(uuid("d42df95d-a75b-47bf-8249-bc83820da38a"))).abi_SendLicenseFetchRequestAsync(__sessionIDBytesSize, sessionIDBytes, __challengeDataBytesSize, challengeDataBytes, &_ret));
		return _ret;
	}
	deprecated("INDTCPMessengerFactory is deprecated and might not work on all platforms. For more info, see MSDN.")
	static Windows.Media.Protection.PlayReady.NDTCPMessenger New(HSTRING remoteHostName, UINT32 remoteHostPort)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.INDTCPMessengerFactory);
		Windows.Media.Protection.PlayReady.NDTCPMessenger _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.INDTCPMessengerFactory)factory.asInterface(uuid("7dd85cfe-1b99-4f68-8f82-8177f7cedf2b"))).abi_CreateInstance(remoteHostName, remoteHostPort, &_ret));
		return _ret;
	}
}

interface PlayReadyContentHeader : Windows.Media.Protection.PlayReady.IPlayReadyContentHeader, Windows.Media.Protection.PlayReady.IPlayReadyContentHeader2
{
extern(Windows):
	final GUID KeyId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader)this.asInterface(uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c"))).get_KeyId(&_ret));
		return _ret;
	}
	final HSTRING KeyIdString()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader)this.asInterface(uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c"))).get_KeyIdString(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri LicenseAcquisitionUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader)this.asInterface(uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c"))).get_LicenseAcquisitionUrl(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri LicenseAcquisitionUserInterfaceUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader)this.asInterface(uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c"))).get_LicenseAcquisitionUserInterfaceUrl(&_ret));
		return _ret;
	}
	final GUID DomainServiceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader)this.asInterface(uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c"))).get_DomainServiceId(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadyEncryptionAlgorithm EncryptionType()
	{
		Windows.Media.Protection.PlayReady.PlayReadyEncryptionAlgorithm _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader)this.asInterface(uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c"))).get_EncryptionType(&_ret));
		return _ret;
	}
	final HSTRING CustomAttributes()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader)this.asInterface(uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c"))).get_CustomAttributes(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadyDecryptorSetup DecryptorSetup()
	{
		Windows.Media.Protection.PlayReady.PlayReadyDecryptorSetup _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader)this.asInterface(uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c"))).get_DecryptorSetup(&_ret));
		return _ret;
	}
	final ubyte* GetSerializedHeader(UINT32* out___headerBytesSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader)this.asInterface(uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c"))).abi_GetSerializedHeader(out___headerBytesSize, &_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadyContentHeader HeaderWithEmbeddedUpdates()
	{
		Windows.Media.Protection.PlayReady.PlayReadyContentHeader _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader)this.asInterface(uuid("9a438a6a-7f4c-452e-88bd-0148c6387a2c"))).get_HeaderWithEmbeddedUpdates(&_ret));
		return _ret;
	}
	final GUID* KeyIds(UINT32* out___contentKeyIdsSize)
	{
		GUID* _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader2)this.asInterface(uuid("359c79f4-2180-498c-965b-e754d875eab2"))).get_KeyIds(out___contentKeyIdsSize, &_ret));
		return _ret;
	}
	final HSTRING* KeyIdStrings(UINT32* out___contentKeyIdStringsSize)
	{
		HSTRING* _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeader2)this.asInterface(uuid("359c79f4-2180-498c-965b-e754d875eab2"))).get_KeyIdStrings(out___contentKeyIdStringsSize, &_ret));
		return _ret;
	}
	static Windows.Media.Protection.PlayReady.PlayReadyContentHeader New(UINT32 __headerBytesSize, ubyte* headerBytes, Windows.Foundation.Uri licenseAcquisitionUrl, Windows.Foundation.Uri licenseAcquisitionUserInterfaceUrl, HSTRING customAttributes, GUID domainServiceId)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.IPlayReadyContentHeaderFactory);
		Windows.Media.Protection.PlayReady.PlayReadyContentHeader _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeaderFactory)factory.asInterface(uuid("cb97c8ff-b758-4776-bf01-217a8b510b2c"))).abi_CreateInstanceFromWindowsMediaDrmHeader(__headerBytesSize, headerBytes, licenseAcquisitionUrl, licenseAcquisitionUserInterfaceUrl, customAttributes, domainServiceId, &_ret));
		return _ret;
	}
	static Windows.Media.Protection.PlayReady.PlayReadyContentHeader New(GUID contentKeyId, HSTRING contentKeyIdString, Windows.Media.Protection.PlayReady.PlayReadyEncryptionAlgorithm contentEncryptionAlgorithm, Windows.Foundation.Uri licenseAcquisitionUrl, Windows.Foundation.Uri licenseAcquisitionUserInterfaceUrl, HSTRING customAttributes, GUID domainServiceId)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.IPlayReadyContentHeaderFactory);
		Windows.Media.Protection.PlayReady.PlayReadyContentHeader _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeaderFactory)factory.asInterface(uuid("cb97c8ff-b758-4776-bf01-217a8b510b2c"))).abi_CreateInstanceFromComponents(contentKeyId, contentKeyIdString, contentEncryptionAlgorithm, licenseAcquisitionUrl, licenseAcquisitionUserInterfaceUrl, customAttributes, domainServiceId, &_ret));
		return _ret;
	}
	static Windows.Media.Protection.PlayReady.PlayReadyContentHeader New(UINT32 __headerBytesSize, ubyte* headerBytes)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.IPlayReadyContentHeaderFactory);
		Windows.Media.Protection.PlayReady.PlayReadyContentHeader _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyContentHeaderFactory)factory.asInterface(uuid("cb97c8ff-b758-4776-bf01-217a8b510b2c"))).abi_CreateInstanceFromPlayReadyHeader(__headerBytesSize, headerBytes, &_ret));
		return _ret;
	}
}

interface PlayReadyContentResolver
{
	private static Windows.Media.Protection.PlayReady.IPlayReadyContentResolver _staticInstance;
	public static Windows.Media.Protection.PlayReady.IPlayReadyContentResolver staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Protection.PlayReady.IPlayReadyContentResolver);
		return _staticInstance;
	}
	static Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest ServiceRequest(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader)
	{
		Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest _ret;
		Debug.OK(staticInstance.abi_ServiceRequest(contentHeader, &_ret));
		return _ret;
	}
}

interface PlayReadyDomain : Windows.Media.Protection.PlayReady.IPlayReadyDomain
{
extern(Windows):
	final GUID AccountId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomain)this.asInterface(uuid("adcc93ac-97e6-43ef-95e4-d7868f3b16a9"))).get_AccountId(&_ret));
		return _ret;
	}
	final GUID ServiceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomain)this.asInterface(uuid("adcc93ac-97e6-43ef-95e4-d7868f3b16a9"))).get_ServiceId(&_ret));
		return _ret;
	}
	final UINT32 Revision()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomain)this.asInterface(uuid("adcc93ac-97e6-43ef-95e4-d7868f3b16a9"))).get_Revision(&_ret));
		return _ret;
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomain)this.asInterface(uuid("adcc93ac-97e6-43ef-95e4-d7868f3b16a9"))).get_FriendlyName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri DomainJoinUrl()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomain)this.asInterface(uuid("adcc93ac-97e6-43ef-95e4-d7868f3b16a9"))).get_DomainJoinUrl(&_ret));
		return _ret;
	}
}

interface PlayReadyDomainIterable : Windows.Foundation.Collections.IIterable!(Windows.Media.Protection.PlayReady.IPlayReadyDomain)
{
extern(Windows):
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyDomain)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Media.Protection.PlayReady.IPlayReadyDomain))this).abi_First(out_first));
	}
	static Windows.Media.Protection.PlayReady.PlayReadyDomainIterable New(GUID domainAccountId)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.IPlayReadyDomainIterableFactory);
		Windows.Media.Protection.PlayReady.PlayReadyDomainIterable _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainIterableFactory)factory.asInterface(uuid("4df384ee-3121-4df3-a5e8-d0c24c0500fc"))).abi_CreateInstance(domainAccountId, &_ret));
		return _ret;
	}
}

interface PlayReadyDomainIterator : Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyDomain)
{
extern(Windows):
	final Windows.Media.Protection.PlayReady.IPlayReadyDomain Current()
	{
		Windows.Media.Protection.PlayReady.IPlayReadyDomain _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyDomain))this).get_Current(&_ret));
		return _ret;
	}
	final bool HasCurrent()
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyDomain))this).get_HasCurrent(&_ret));
		return _ret;
	}
	final void MoveNext(bool* out_hasCurrent)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyDomain))this).abi_MoveNext(out_hasCurrent));
	}
	final void GetMany(uint capacity, Windows.Media.Protection.PlayReady.IPlayReadyDomain* value, uint* actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyDomain))this).abi_GetMany(capacity, value, actual));
	}
}

interface PlayReadyDomainJoinServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyDomainJoinServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
extern(Windows):
	final GUID DomainAccountId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainJoinServiceRequest)this.asInterface(uuid("171b4a5a-405f-4739-b040-67b9f0c38758"))).get_DomainAccountId(&_ret));
		return _ret;
	}
	final void DomainAccountId(GUID value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainJoinServiceRequest)this.asInterface(uuid("171b4a5a-405f-4739-b040-67b9f0c38758"))).set_DomainAccountId(value));
	}
	final HSTRING DomainFriendlyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainJoinServiceRequest)this.asInterface(uuid("171b4a5a-405f-4739-b040-67b9f0c38758"))).get_DomainFriendlyName(&_ret));
		return _ret;
	}
	final void DomainFriendlyName(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainJoinServiceRequest)this.asInterface(uuid("171b4a5a-405f-4739-b040-67b9f0c38758"))).set_DomainFriendlyName(value));
	}
	final GUID DomainServiceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainJoinServiceRequest)this.asInterface(uuid("171b4a5a-405f-4739-b040-67b9f0c38758"))).get_DomainServiceId(&_ret));
		return _ret;
	}
	final void DomainServiceId(GUID value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainJoinServiceRequest)this.asInterface(uuid("171b4a5a-405f-4739-b040-67b9f0c38758"))).set_DomainServiceId(value));
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_Uri(value));
	}
	final HSTRING ResponseCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ResponseCustomData(&_ret));
		return _ret;
	}
	final HSTRING ChallengeCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ChallengeCustomData(&_ret));
		return _ret;
	}
	final void ChallengeCustomData(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_ChallengeCustomData(value));
	}
	final Windows.Foundation.IAsyncAction BeginServiceRequest()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_BeginServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest NextServiceRequest()
	{
		Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_NextServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadySoapMessage GenerateManualEnablingChallenge()
	{
		Windows.Media.Protection.PlayReady.PlayReadySoapMessage _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_GenerateManualEnablingChallenge(&_ret));
		return _ret;
	}
	final HRESULT ProcessManualEnablingResponse(UINT32 __responseBytesSize, ubyte* responseBytes)
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_ProcessManualEnablingResponse(__responseBytesSize, responseBytes, &_ret));
		return _ret;
	}
	final GUID ProtectionSystem()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_ProtectionSystem(&_ret));
		return _ret;
	}
	final GUID Type()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_Type(&_ret));
		return _ret;
	}
	static PlayReadyDomainJoinServiceRequest New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PlayReadyDomainJoinServiceRequest).abi_ActivateInstance(&ret));
		return cast(PlayReadyDomainJoinServiceRequest) ret;
	}
}

interface PlayReadyDomainLeaveServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyDomainLeaveServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
extern(Windows):
	final GUID DomainAccountId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainLeaveServiceRequest)this.asInterface(uuid("062d58be-97ad-4917-aa03-46d4c252d464"))).get_DomainAccountId(&_ret));
		return _ret;
	}
	final void DomainAccountId(GUID value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainLeaveServiceRequest)this.asInterface(uuid("062d58be-97ad-4917-aa03-46d4c252d464"))).set_DomainAccountId(value));
	}
	final GUID DomainServiceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainLeaveServiceRequest)this.asInterface(uuid("062d58be-97ad-4917-aa03-46d4c252d464"))).get_DomainServiceId(&_ret));
		return _ret;
	}
	final void DomainServiceId(GUID value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyDomainLeaveServiceRequest)this.asInterface(uuid("062d58be-97ad-4917-aa03-46d4c252d464"))).set_DomainServiceId(value));
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_Uri(value));
	}
	final HSTRING ResponseCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ResponseCustomData(&_ret));
		return _ret;
	}
	final HSTRING ChallengeCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ChallengeCustomData(&_ret));
		return _ret;
	}
	final void ChallengeCustomData(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_ChallengeCustomData(value));
	}
	final Windows.Foundation.IAsyncAction BeginServiceRequest()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_BeginServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest NextServiceRequest()
	{
		Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_NextServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadySoapMessage GenerateManualEnablingChallenge()
	{
		Windows.Media.Protection.PlayReady.PlayReadySoapMessage _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_GenerateManualEnablingChallenge(&_ret));
		return _ret;
	}
	final HRESULT ProcessManualEnablingResponse(UINT32 __responseBytesSize, ubyte* responseBytes)
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_ProcessManualEnablingResponse(__responseBytesSize, responseBytes, &_ret));
		return _ret;
	}
	final GUID ProtectionSystem()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_ProtectionSystem(&_ret));
		return _ret;
	}
	final GUID Type()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_Type(&_ret));
		return _ret;
	}
	static PlayReadyDomainLeaveServiceRequest New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PlayReadyDomainLeaveServiceRequest).abi_ActivateInstance(&ret));
		return cast(PlayReadyDomainLeaveServiceRequest) ret;
	}
}

interface PlayReadyITADataGenerator : Windows.Media.Protection.PlayReady.IPlayReadyITADataGenerator
{
extern(Windows):
	final ubyte* GenerateData(GUID guidCPSystemId, UINT32 countOfStreams, Windows.Foundation.Collections.IPropertySet configuration, Windows.Media.Protection.PlayReady.PlayReadyITADataFormat format, UINT32* out___dataBytesSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyITADataGenerator)this.asInterface(uuid("24446b8e-10b9-4530-b25b-901a8029a9b2"))).abi_GenerateData(guidCPSystemId, countOfStreams, configuration, format, out___dataBytesSize, &_ret));
		return _ret;
	}
	static PlayReadyITADataGenerator New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PlayReadyITADataGenerator).abi_ActivateInstance(&ret));
		return cast(PlayReadyITADataGenerator) ret;
	}
}

interface PlayReadyIndividualizationServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyIndividualizationServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_Uri(value));
	}
	final HSTRING ResponseCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ResponseCustomData(&_ret));
		return _ret;
	}
	final HSTRING ChallengeCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ChallengeCustomData(&_ret));
		return _ret;
	}
	final void ChallengeCustomData(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_ChallengeCustomData(value));
	}
	final Windows.Foundation.IAsyncAction BeginServiceRequest()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_BeginServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest NextServiceRequest()
	{
		Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_NextServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadySoapMessage GenerateManualEnablingChallenge()
	{
		Windows.Media.Protection.PlayReady.PlayReadySoapMessage _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_GenerateManualEnablingChallenge(&_ret));
		return _ret;
	}
	final HRESULT ProcessManualEnablingResponse(UINT32 __responseBytesSize, ubyte* responseBytes)
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_ProcessManualEnablingResponse(__responseBytesSize, responseBytes, &_ret));
		return _ret;
	}
	final GUID ProtectionSystem()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_ProtectionSystem(&_ret));
		return _ret;
	}
	final GUID Type()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_Type(&_ret));
		return _ret;
	}
	static PlayReadyIndividualizationServiceRequest New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PlayReadyIndividualizationServiceRequest).abi_ActivateInstance(&ret));
		return cast(PlayReadyIndividualizationServiceRequest) ret;
	}
}

interface PlayReadyLicense : Windows.Media.Protection.PlayReady.IPlayReadyLicense, Windows.Media.Protection.PlayReady.IPlayReadyLicense2
{
extern(Windows):
	final bool FullyEvaluated()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense)this.asInterface(uuid("ee474c4e-fa3c-414d-a9f2-3ffc1ef832d4"))).get_FullyEvaluated(&_ret));
		return _ret;
	}
	final bool UsableForPlay()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense)this.asInterface(uuid("ee474c4e-fa3c-414d-a9f2-3ffc1ef832d4"))).get_UsableForPlay(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) ExpirationDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense)this.asInterface(uuid("ee474c4e-fa3c-414d-a9f2-3ffc1ef832d4"))).get_ExpirationDate(&_ret));
		return _ret;
	}
	final UINT32 ExpireAfterFirstPlay()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense)this.asInterface(uuid("ee474c4e-fa3c-414d-a9f2-3ffc1ef832d4"))).get_ExpireAfterFirstPlay(&_ret));
		return _ret;
	}
	final GUID DomainAccountID()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense)this.asInterface(uuid("ee474c4e-fa3c-414d-a9f2-3ffc1ef832d4"))).get_DomainAccountID(&_ret));
		return _ret;
	}
	final UINT32 ChainDepth()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense)this.asInterface(uuid("ee474c4e-fa3c-414d-a9f2-3ffc1ef832d4"))).get_ChainDepth(&_ret));
		return _ret;
	}
	final GUID GetKIDAtChainDepth(UINT32 chainDepth)
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense)this.asInterface(uuid("ee474c4e-fa3c-414d-a9f2-3ffc1ef832d4"))).abi_GetKIDAtChainDepth(chainDepth, &_ret));
		return _ret;
	}
	final GUID SecureStopId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense2)this.asInterface(uuid("30f4e7a7-d8e3-48a0-bcda-ff9f40530436"))).get_SecureStopId(&_ret));
		return _ret;
	}
	final UINT32 SecurityLevel()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense2)this.asInterface(uuid("30f4e7a7-d8e3-48a0-bcda-ff9f40530436"))).get_SecurityLevel(&_ret));
		return _ret;
	}
	final bool InMemoryOnly()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense2)this.asInterface(uuid("30f4e7a7-d8e3-48a0-bcda-ff9f40530436"))).get_InMemoryOnly(&_ret));
		return _ret;
	}
	final bool ExpiresInRealTime()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicense2)this.asInterface(uuid("30f4e7a7-d8e3-48a0-bcda-ff9f40530436"))).get_ExpiresInRealTime(&_ret));
		return _ret;
	}
}

interface PlayReadyLicenseAcquisitionServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest2, Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest3
{
extern(Windows):
	final Windows.Media.Protection.PlayReady.PlayReadyContentHeader ContentHeader()
	{
		Windows.Media.Protection.PlayReady.PlayReadyContentHeader _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest)this.asInterface(uuid("5d85ff45-3e9f-4f48-93e1-9530c8d58c3e"))).get_ContentHeader(&_ret));
		return _ret;
	}
	final void ContentHeader(Windows.Media.Protection.PlayReady.PlayReadyContentHeader value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest)this.asInterface(uuid("5d85ff45-3e9f-4f48-93e1-9530c8d58c3e"))).set_ContentHeader(value));
	}
	final GUID DomainServiceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest)this.asInterface(uuid("5d85ff45-3e9f-4f48-93e1-9530c8d58c3e"))).get_DomainServiceId(&_ret));
		return _ret;
	}
	final void DomainServiceId(GUID value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest)this.asInterface(uuid("5d85ff45-3e9f-4f48-93e1-9530c8d58c3e"))).set_DomainServiceId(value));
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_Uri(value));
	}
	final HSTRING ResponseCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ResponseCustomData(&_ret));
		return _ret;
	}
	final HSTRING ChallengeCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ChallengeCustomData(&_ret));
		return _ret;
	}
	final void ChallengeCustomData(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_ChallengeCustomData(value));
	}
	final Windows.Foundation.IAsyncAction BeginServiceRequest()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_BeginServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest NextServiceRequest()
	{
		Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_NextServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadySoapMessage GenerateManualEnablingChallenge()
	{
		Windows.Media.Protection.PlayReady.PlayReadySoapMessage _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_GenerateManualEnablingChallenge(&_ret));
		return _ret;
	}
	final HRESULT ProcessManualEnablingResponse(UINT32 __responseBytesSize, ubyte* responseBytes)
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_ProcessManualEnablingResponse(__responseBytesSize, responseBytes, &_ret));
		return _ret;
	}
	final GUID ProtectionSystem()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_ProtectionSystem(&_ret));
		return _ret;
	}
	final GUID Type()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_Type(&_ret));
		return _ret;
	}
	final GUID SessionId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest2)this.asInterface(uuid("b7fa5eb5-fe0c-b225-bc60-5a9edd32ceb5"))).get_SessionId(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable CreateLicenseIterable(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, bool fullyEvaluated)
	{
		Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest3)this.asInterface(uuid("394e5f4d-7f75-430d-b2e7-7f75f34b2d75"))).abi_CreateLicenseIterable(contentHeader, fullyEvaluated, &_ret));
		return _ret;
	}
	static PlayReadyLicenseAcquisitionServiceRequest New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PlayReadyLicenseAcquisitionServiceRequest).abi_ActivateInstance(&ret));
		return cast(PlayReadyLicenseAcquisitionServiceRequest) ret;
	}
}

interface PlayReadyLicenseIterable : Windows.Foundation.Collections.IIterable!(Windows.Media.Protection.PlayReady.IPlayReadyLicense)
{
extern(Windows):
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyLicense)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Media.Protection.PlayReady.IPlayReadyLicense))this).abi_First(out_first));
	}
	static PlayReadyLicenseIterable New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PlayReadyLicenseIterable).abi_ActivateInstance(&ret));
		return cast(PlayReadyLicenseIterable) ret;
	}
	static Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable New(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, bool fullyEvaluated)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.IPlayReadyLicenseIterableFactory);
		Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseIterableFactory)factory.asInterface(uuid("d4179f08-0837-4978-8e68-be4293c8d7a6"))).abi_CreateInstance(contentHeader, fullyEvaluated, &_ret));
		return _ret;
	}
}

interface PlayReadyLicenseIterator : Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyLicense)
{
extern(Windows):
	final Windows.Media.Protection.PlayReady.IPlayReadyLicense Current()
	{
		Windows.Media.Protection.PlayReady.IPlayReadyLicense _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyLicense))this).get_Current(&_ret));
		return _ret;
	}
	final bool HasCurrent()
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyLicense))this).get_HasCurrent(&_ret));
		return _ret;
	}
	final void MoveNext(bool* out_hasCurrent)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyLicense))this).abi_MoveNext(out_hasCurrent));
	}
	final void GetMany(uint capacity, Windows.Media.Protection.PlayReady.IPlayReadyLicense* value, uint* actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadyLicense))this).abi_GetMany(capacity, value, actual));
	}
}

interface PlayReadyLicenseManagement
{
	private static Windows.Media.Protection.PlayReady.IPlayReadyLicenseManagement _staticInstance;
	public static Windows.Media.Protection.PlayReady.IPlayReadyLicenseManagement staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Protection.PlayReady.IPlayReadyLicenseManagement);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncAction DeleteLicenses(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.abi_DeleteLicenses(contentHeader, &_ret));
		return _ret;
	}
}

interface PlayReadyLicenseSession : Windows.Media.Protection.PlayReady.IPlayReadyLicenseSession, Windows.Media.Protection.PlayReady.IPlayReadyLicenseSession2
{
extern(Windows):
	final Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest CreateLAServiceRequest()
	{
		Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseSession)this.asInterface(uuid("a1723a39-87fa-4fdd-abbb-a9720e845259"))).abi_CreateLAServiceRequest(&_ret));
		return _ret;
	}
	final void ConfigureMediaProtectionManager(Windows.Media.Protection.MediaProtectionManager mpm)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseSession)this.asInterface(uuid("a1723a39-87fa-4fdd-abbb-a9720e845259"))).abi_ConfigureMediaProtectionManager(mpm));
	}
	final Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable CreateLicenseIterable(Windows.Media.Protection.PlayReady.PlayReadyContentHeader contentHeader, bool fullyEvaluated)
	{
		Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseSession2)this.asInterface(uuid("4909be3a-3aed-4656-8ad7-ee0fd7799510"))).abi_CreateLicenseIterable(contentHeader, fullyEvaluated, &_ret));
		return _ret;
	}
	static Windows.Media.Protection.PlayReady.PlayReadyLicenseSession New(Windows.Foundation.Collections.IPropertySet configuration)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.IPlayReadyLicenseSessionFactory);
		Windows.Media.Protection.PlayReady.PlayReadyLicenseSession _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyLicenseSessionFactory)factory.asInterface(uuid("62492699-6527-429e-98be-48d798ac2739"))).abi_CreateInstance(configuration, &_ret));
		return _ret;
	}
}

interface PlayReadyMeteringReportServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyMeteringReportServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
extern(Windows):
	final ubyte* MeteringCertificate(UINT32* out___meteringCertBytesSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyMeteringReportServiceRequest)this.asInterface(uuid("c12b231c-0ecd-4f11-a185-1e24a4a67fb7"))).get_MeteringCertificate(out___meteringCertBytesSize, &_ret));
		return _ret;
	}
	final void MeteringCertificate(UINT32 __meteringCertBytesSize, ubyte* meteringCertBytes)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyMeteringReportServiceRequest)this.asInterface(uuid("c12b231c-0ecd-4f11-a185-1e24a4a67fb7"))).set_MeteringCertificate(__meteringCertBytesSize, meteringCertBytes));
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_Uri(value));
	}
	final HSTRING ResponseCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ResponseCustomData(&_ret));
		return _ret;
	}
	final HSTRING ChallengeCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ChallengeCustomData(&_ret));
		return _ret;
	}
	final void ChallengeCustomData(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_ChallengeCustomData(value));
	}
	final Windows.Foundation.IAsyncAction BeginServiceRequest()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_BeginServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest NextServiceRequest()
	{
		Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_NextServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadySoapMessage GenerateManualEnablingChallenge()
	{
		Windows.Media.Protection.PlayReady.PlayReadySoapMessage _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_GenerateManualEnablingChallenge(&_ret));
		return _ret;
	}
	final HRESULT ProcessManualEnablingResponse(UINT32 __responseBytesSize, ubyte* responseBytes)
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_ProcessManualEnablingResponse(__responseBytesSize, responseBytes, &_ret));
		return _ret;
	}
	final GUID ProtectionSystem()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_ProtectionSystem(&_ret));
		return _ret;
	}
	final GUID Type()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_Type(&_ret));
		return _ret;
	}
	static PlayReadyMeteringReportServiceRequest New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PlayReadyMeteringReportServiceRequest).abi_ActivateInstance(&ret));
		return cast(PlayReadyMeteringReportServiceRequest) ret;
	}
}

interface PlayReadyRevocationServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadyRevocationServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
extern(Windows):
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_Uri(value));
	}
	final HSTRING ResponseCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ResponseCustomData(&_ret));
		return _ret;
	}
	final HSTRING ChallengeCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ChallengeCustomData(&_ret));
		return _ret;
	}
	final void ChallengeCustomData(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_ChallengeCustomData(value));
	}
	final Windows.Foundation.IAsyncAction BeginServiceRequest()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_BeginServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest NextServiceRequest()
	{
		Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_NextServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadySoapMessage GenerateManualEnablingChallenge()
	{
		Windows.Media.Protection.PlayReady.PlayReadySoapMessage _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_GenerateManualEnablingChallenge(&_ret));
		return _ret;
	}
	final HRESULT ProcessManualEnablingResponse(UINT32 __responseBytesSize, ubyte* responseBytes)
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_ProcessManualEnablingResponse(__responseBytesSize, responseBytes, &_ret));
		return _ret;
	}
	final GUID ProtectionSystem()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_ProtectionSystem(&_ret));
		return _ret;
	}
	final GUID Type()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_Type(&_ret));
		return _ret;
	}
	static PlayReadyRevocationServiceRequest New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PlayReadyRevocationServiceRequest).abi_ActivateInstance(&ret));
		return cast(PlayReadyRevocationServiceRequest) ret;
	}
}

interface PlayReadySecureStopIterable : Windows.Foundation.Collections.IIterable!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest)
{
extern(Windows):
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest))this).abi_First(out_first));
	}
	static Windows.Media.Protection.PlayReady.PlayReadySecureStopIterable New(UINT32 __publisherCertBytesSize, ubyte* publisherCertBytes)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopIterableFactory);
		Windows.Media.Protection.PlayReady.PlayReadySecureStopIterable _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySecureStopIterableFactory)factory.asInterface(uuid("5f1f0165-4214-4d9e-81eb-e89f9d294aee"))).abi_CreateInstance(__publisherCertBytesSize, publisherCertBytes, &_ret));
		return _ret;
	}
}

interface PlayReadySecureStopIterator : Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest)
{
extern(Windows):
	final Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest Current()
	{
		Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest))this).get_Current(&_ret));
		return _ret;
	}
	final bool HasCurrent()
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest))this).get_HasCurrent(&_ret));
		return _ret;
	}
	final void MoveNext(bool* out_hasCurrent)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest))this).abi_MoveNext(out_hasCurrent));
	}
	final void GetMany(uint capacity, Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest* value, uint* actual)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterator!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest))this).abi_GetMany(capacity, value, actual));
	}
}

interface PlayReadySecureStopServiceRequest : Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest, Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest, Windows.Media.Protection.IMediaProtectionServiceRequest
{
extern(Windows):
	final GUID SessionID()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest)this.asInterface(uuid("b5501ee5-01bf-4401-9677-05630a6a4cc8"))).get_SessionID(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime StartTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest)this.asInterface(uuid("b5501ee5-01bf-4401-9677-05630a6a4cc8"))).get_StartTime(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime UpdateTime()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest)this.asInterface(uuid("b5501ee5-01bf-4401-9677-05630a6a4cc8"))).get_UpdateTime(&_ret));
		return _ret;
	}
	final bool Stopped()
	{
		bool _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest)this.asInterface(uuid("b5501ee5-01bf-4401-9677-05630a6a4cc8"))).get_Stopped(&_ret));
		return _ret;
	}
	final ubyte* PublisherCertificate(UINT32* out___publisherCertBytesSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest)this.asInterface(uuid("b5501ee5-01bf-4401-9677-05630a6a4cc8"))).get_PublisherCertificate(out___publisherCertBytesSize, &_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_Uri(&_ret));
		return _ret;
	}
	final void Uri(Windows.Foundation.Uri value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_Uri(value));
	}
	final HSTRING ResponseCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ResponseCustomData(&_ret));
		return _ret;
	}
	final HSTRING ChallengeCustomData()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).get_ChallengeCustomData(&_ret));
		return _ret;
	}
	final void ChallengeCustomData(HSTRING value)
	{
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).set_ChallengeCustomData(value));
	}
	final Windows.Foundation.IAsyncAction BeginServiceRequest()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_BeginServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest NextServiceRequest()
	{
		Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_NextServiceRequest(&_ret));
		return _ret;
	}
	final Windows.Media.Protection.PlayReady.PlayReadySoapMessage GenerateManualEnablingChallenge()
	{
		Windows.Media.Protection.PlayReady.PlayReadySoapMessage _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_GenerateManualEnablingChallenge(&_ret));
		return _ret;
	}
	final HRESULT ProcessManualEnablingResponse(UINT32 __responseBytesSize, ubyte* responseBytes)
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest)this.asInterface(uuid("8bad2836-a703-45a6-a180-76f3565aa725"))).abi_ProcessManualEnablingResponse(__responseBytesSize, responseBytes, &_ret));
		return _ret;
	}
	final GUID ProtectionSystem()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_ProtectionSystem(&_ret));
		return _ret;
	}
	final GUID Type()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Media.Protection.IMediaProtectionServiceRequest)this.asInterface(uuid("b1de0ea6-2094-478d-87a4-8b95200f85c6"))).get_Type(&_ret));
		return _ret;
	}
	static Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest New(UINT32 __publisherCertBytesSize, ubyte* publisherCertBytes)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequestFactory);
		Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequestFactory)factory.asInterface(uuid("0e448ac9-e67e-494e-9f49-6285438c76cf"))).abi_CreateInstance(__publisherCertBytesSize, publisherCertBytes, &_ret));
		return _ret;
	}
	static Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest New(GUID sessionID, UINT32 __publisherCertBytesSize, ubyte* publisherCertBytes)
	{
		auto factory = factory!(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequestFactory);
		Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequestFactory)factory.asInterface(uuid("0e448ac9-e67e-494e-9f49-6285438c76cf"))).abi_CreateInstanceFromSessionID(sessionID, __publisherCertBytesSize, publisherCertBytes, &_ret));
		return _ret;
	}
}

interface PlayReadySoapMessage : Windows.Media.Protection.PlayReady.IPlayReadySoapMessage
{
extern(Windows):
	final ubyte* GetMessageBody(UINT32* out___messageBodyBytesSize)
	{
		ubyte* _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySoapMessage)this.asInterface(uuid("b659fcb5-ce41-41ba-8a0d-61df5fffa139"))).abi_GetMessageBody(out___messageBodyBytesSize, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IPropertySet MessageHeaders()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySoapMessage)this.asInterface(uuid("b659fcb5-ce41-41ba-8a0d-61df5fffa139"))).get_MessageHeaders(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Media.Protection.PlayReady.IPlayReadySoapMessage)this.asInterface(uuid("b659fcb5-ce41-41ba-8a0d-61df5fffa139"))).get_Uri(&_ret));
		return _ret;
	}
}

interface PlayReadyStatics
{
	private static Windows.Media.Protection.PlayReady.IPlayReadyStatics _staticInstance;
	public static Windows.Media.Protection.PlayReady.IPlayReadyStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Media.Protection.PlayReady.IPlayReadyStatics);
		return _staticInstance;
	}
	static GUID DomainJoinServiceRequestType()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_DomainJoinServiceRequestType(&_ret));
		return _ret;
	}
	static GUID DomainLeaveServiceRequestType()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_DomainLeaveServiceRequestType(&_ret));
		return _ret;
	}
	static GUID IndividualizationServiceRequestType()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_IndividualizationServiceRequestType(&_ret));
		return _ret;
	}
	static GUID LicenseAcquirerServiceRequestType()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_LicenseAcquirerServiceRequestType(&_ret));
		return _ret;
	}
	static GUID MeteringReportServiceRequestType()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_MeteringReportServiceRequestType(&_ret));
		return _ret;
	}
	static GUID RevocationServiceRequestType()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_RevocationServiceRequestType(&_ret));
		return _ret;
	}
	static GUID MediaProtectionSystemId()
	{
		GUID _ret;
		Debug.OK(staticInstance.get_MediaProtectionSystemId(&_ret));
		return _ret;
	}
	static UINT32 PlayReadySecurityVersion()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_PlayReadySecurityVersion(&_ret));
		return _ret;
	}
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