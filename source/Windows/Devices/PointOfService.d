module Windows.Devices.PointOfService;

import dwinrt;

@uuid("bea33e06-b264-4f03-a9c1-45b20f01134f")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScanner")
interface IBarcodeScanner : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Capabilities(Windows.Devices.PointOfService.BarcodeScannerCapabilities* return_value);
	HRESULT abi_ClaimScannerAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedBarcodeScanner)* return_operation);
	HRESULT abi_CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetSupportedSymbologiesAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(UINT32))* return_operation);
	HRESULT abi_IsSymbologySupportedAsync(UINT32 barcodeSymbology, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RetrieveStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_operation);
	HRESULT abi_GetSupportedProfiles(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT abi_IsProfileSupported(HSTRING profile, bool* return_isSupported);
	HRESULT add_StatusUpdated(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.BarcodeScanner*,Windows.Devices.PointOfService.BarcodeScannerStatusUpdatedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusUpdated(EventRegistrationToken token);
}

@uuid("89215167-8cee-436d-89ab-8dfb43bb4286")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScanner")
interface IBarcodeScanner2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_VideoDeviceId(HSTRING* return_value);
}

@uuid("c60691e4-f2c8-4420-a307-b12ef6622857")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerCapabilities")
interface IBarcodeScannerCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PowerReportingType(Windows.Devices.PointOfService.UnifiedPosPowerReportingType* return_value);
	HRESULT get_IsStatisticsReportingSupported(bool* return_value);
	HRESULT get_IsStatisticsUpdatingSupported(bool* return_value);
	HRESULT get_IsImagePreviewSupported(bool* return_value);
}

@uuid("8e5ab3e9-0e2c-472f-a1cc-ee8054b6a684")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerCapabilities")
interface IBarcodeScannerCapabilities1 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsSoftwareTriggerSupported(bool* return_value);
}

@uuid("4234a7e2-ed97-467d-ad2b-01e44313a929")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerDataReceivedEventArgs")
interface IBarcodeScannerDataReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Report(Windows.Devices.PointOfService.BarcodeScannerReport* return_value);
}

@uuid("2cd2602f-cf3a-4002-a75a-c5ec468f0a20")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerErrorOccurredEventArgs")
interface IBarcodeScannerErrorOccurredEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PartialInputData(Windows.Devices.PointOfService.BarcodeScannerReport* return_value);
	HRESULT get_IsRetriable(bool* return_value);
	HRESULT get_ErrorData(Windows.Devices.PointOfService.UnifiedPosErrorData* return_value);
}

@uuid("f3b7de85-6e8b-434e-9f58-06ef26bc4baf")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerImagePreviewReceivedEventArgs")
interface IBarcodeScannerImagePreviewReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Preview(Windows.Storage.Streams.IRandomAccessStreamWithContentType* return_preview);
}

@uuid("5ce4d8b0-a489-4b96-86c4-f0bf8a37753d")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerReport")
interface IBarcodeScannerReport : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ScanDataType(UINT32* return_value);
	HRESULT get_ScanData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_ScanDataLabel(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("5d115f6f-da49-41e8-8c8c-f0cb62a9c4fc")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScanner")
interface IBarcodeScannerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeScanner)* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeScanner)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("b8652473-a36f-4007-b1d0-279ebe92a656")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScanner")
interface IBarcodeScannerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("355d8586-9c43-462b-a91a-816dc97f452c")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerStatusUpdatedEventArgs")
interface IBarcodeScannerStatusUpdatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.PointOfService.BarcodeScannerStatus* return_value);
	HRESULT get_ExtendedStatus(UINT32* return_value);
}

@uuid("ca8549bb-06d2-43f4-a44b-c620679fd8d0")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeSymbologies")
interface IBarcodeSymbologiesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Unknown(UINT32* return_value);
	HRESULT get_Ean8(UINT32* return_value);
	HRESULT get_Ean8Add2(UINT32* return_value);
	HRESULT get_Ean8Add5(UINT32* return_value);
	HRESULT get_Eanv(UINT32* return_value);
	HRESULT get_EanvAdd2(UINT32* return_value);
	HRESULT get_EanvAdd5(UINT32* return_value);
	HRESULT get_Ean13(UINT32* return_value);
	HRESULT get_Ean13Add2(UINT32* return_value);
	HRESULT get_Ean13Add5(UINT32* return_value);
	HRESULT get_Isbn(UINT32* return_value);
	HRESULT get_IsbnAdd5(UINT32* return_value);
	HRESULT get_Ismn(UINT32* return_value);
	HRESULT get_IsmnAdd2(UINT32* return_value);
	HRESULT get_IsmnAdd5(UINT32* return_value);
	HRESULT get_Issn(UINT32* return_value);
	HRESULT get_IssnAdd2(UINT32* return_value);
	HRESULT get_IssnAdd5(UINT32* return_value);
	HRESULT get_Ean99(UINT32* return_value);
	HRESULT get_Ean99Add2(UINT32* return_value);
	HRESULT get_Ean99Add5(UINT32* return_value);
	HRESULT get_Upca(UINT32* return_value);
	HRESULT get_UpcaAdd2(UINT32* return_value);
	HRESULT get_UpcaAdd5(UINT32* return_value);
	HRESULT get_Upce(UINT32* return_value);
	HRESULT get_UpceAdd2(UINT32* return_value);
	HRESULT get_UpceAdd5(UINT32* return_value);
	HRESULT get_UpcCoupon(UINT32* return_value);
	HRESULT get_TfStd(UINT32* return_value);
	HRESULT get_TfDis(UINT32* return_value);
	HRESULT get_TfInt(UINT32* return_value);
	HRESULT get_TfInd(UINT32* return_value);
	HRESULT get_TfMat(UINT32* return_value);
	HRESULT get_TfIata(UINT32* return_value);
	HRESULT get_Gs1DatabarType1(UINT32* return_value);
	HRESULT get_Gs1DatabarType2(UINT32* return_value);
	HRESULT get_Gs1DatabarType3(UINT32* return_value);
	HRESULT get_Code39(UINT32* return_value);
	HRESULT get_Code39Ex(UINT32* return_value);
	HRESULT get_Trioptic39(UINT32* return_value);
	HRESULT get_Code32(UINT32* return_value);
	HRESULT get_Pzn(UINT32* return_value);
	HRESULT get_Code93(UINT32* return_value);
	HRESULT get_Code93Ex(UINT32* return_value);
	HRESULT get_Code128(UINT32* return_value);
	HRESULT get_Gs1128(UINT32* return_value);
	HRESULT get_Gs1128Coupon(UINT32* return_value);
	HRESULT get_UccEan128(UINT32* return_value);
	HRESULT get_Sisac(UINT32* return_value);
	HRESULT get_Isbt(UINT32* return_value);
	HRESULT get_Codabar(UINT32* return_value);
	HRESULT get_Code11(UINT32* return_value);
	HRESULT get_Msi(UINT32* return_value);
	HRESULT get_Plessey(UINT32* return_value);
	HRESULT get_Telepen(UINT32* return_value);
	HRESULT get_Code16k(UINT32* return_value);
	HRESULT get_CodablockA(UINT32* return_value);
	HRESULT get_CodablockF(UINT32* return_value);
	HRESULT get_Codablock128(UINT32* return_value);
	HRESULT get_Code49(UINT32* return_value);
	HRESULT get_Aztec(UINT32* return_value);
	HRESULT get_DataCode(UINT32* return_value);
	HRESULT get_DataMatrix(UINT32* return_value);
	HRESULT get_HanXin(UINT32* return_value);
	HRESULT get_Maxicode(UINT32* return_value);
	HRESULT get_MicroPdf417(UINT32* return_value);
	HRESULT get_MicroQr(UINT32* return_value);
	HRESULT get_Pdf417(UINT32* return_value);
	HRESULT get_Qr(UINT32* return_value);
	HRESULT get_MsTag(UINT32* return_value);
	HRESULT get_Ccab(UINT32* return_value);
	HRESULT get_Ccc(UINT32* return_value);
	HRESULT get_Tlc39(UINT32* return_value);
	HRESULT get_AusPost(UINT32* return_value);
	HRESULT get_CanPost(UINT32* return_value);
	HRESULT get_ChinaPost(UINT32* return_value);
	HRESULT get_DutchKix(UINT32* return_value);
	HRESULT get_InfoMail(UINT32* return_value);
	HRESULT get_ItalianPost25(UINT32* return_value);
	HRESULT get_ItalianPost39(UINT32* return_value);
	HRESULT get_JapanPost(UINT32* return_value);
	HRESULT get_KoreanPost(UINT32* return_value);
	HRESULT get_SwedenPost(UINT32* return_value);
	HRESULT get_UkPost(UINT32* return_value);
	HRESULT get_UsIntelligent(UINT32* return_value);
	HRESULT get_UsIntelligentPkg(UINT32* return_value);
	HRESULT get_UsPlanet(UINT32* return_value);
	HRESULT get_UsPostNet(UINT32* return_value);
	HRESULT get_Us4StateFics(UINT32* return_value);
	HRESULT get_OcrA(UINT32* return_value);
	HRESULT get_OcrB(UINT32* return_value);
	HRESULT get_Micr(UINT32* return_value);
	HRESULT get_ExtendedBase(UINT32* return_value);
	HRESULT abi_GetName(UINT32 scanDataType, HSTRING* return_value);
}

@uuid("8b7518f4-99d0-40bf-9424-b91d6dd4c6e0")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeSymbologies")
interface IBarcodeSymbologiesStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Gs1DWCode(UINT32* return_value);
}

@uuid("66413a78-ab7a-4ada-8ece-936014b2ead7")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeSymbologyAttributes")
interface IBarcodeSymbologyAttributes : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsCheckDigitValidationEnabled(bool* return_value);
	HRESULT set_IsCheckDigitValidationEnabled(bool value);
	HRESULT get_IsCheckDigitValidationSupported(bool* return_value);
	HRESULT get_IsCheckDigitTransmissionEnabled(bool* return_value);
	HRESULT set_IsCheckDigitTransmissionEnabled(bool value);
	HRESULT get_IsCheckDigitTransmissionSupported(bool* return_value);
	HRESULT get_DecodeLength1(UINT32* return_value);
	HRESULT set_DecodeLength1(UINT32 value);
	HRESULT get_DecodeLength2(UINT32* return_value);
	HRESULT set_DecodeLength2(UINT32 value);
	HRESULT get_DecodeLengthKind(Windows.Devices.PointOfService.BarcodeSymbologyDecodeLengthKind* return_value);
	HRESULT set_DecodeLengthKind(Windows.Devices.PointOfService.BarcodeSymbologyDecodeLengthKind value);
	HRESULT get_IsDecodeLengthSupported(bool* return_value);
}

@uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawer")
interface ICashDrawer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Capabilities(Windows.Devices.PointOfService.CashDrawerCapabilities* return_value);
	HRESULT get_Status(Windows.Devices.PointOfService.CashDrawerStatus* return_value);
	HRESULT get_IsDrawerOpen(bool* return_value);
	HRESULT get_DrawerEventSource(Windows.Devices.PointOfService.CashDrawerEventSource* return_value);
	HRESULT abi_ClaimDrawerAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedCashDrawer)* return_operation);
	HRESULT abi_CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT add_StatusUpdated(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawer*,Windows.Devices.PointOfService.CashDrawerStatusUpdatedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusUpdated(EventRegistrationToken token);
}

@uuid("0bc6de0b-e8e7-4b1f-b1d1-3e501ad08247")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawerCapabilities")
interface ICashDrawerCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PowerReportingType(Windows.Devices.PointOfService.UnifiedPosPowerReportingType* return_value);
	HRESULT get_IsStatisticsReportingSupported(bool* return_value);
	HRESULT get_IsStatisticsUpdatingSupported(bool* return_value);
	HRESULT get_IsStatusReportingSupported(bool* return_value);
	HRESULT get_IsStatusMultiDrawerDetectSupported(bool* return_value);
	HRESULT get_IsDrawerOpenSensorAvailable(bool* return_value);
}

@uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawerCloseAlarm")
interface ICashDrawerCloseAlarm : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_AlarmTimeout(Windows.Foundation.TimeSpan value);
	HRESULT get_AlarmTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_BeepFrequency(UINT32 value);
	HRESULT get_BeepFrequency(UINT32* return_value);
	HRESULT set_BeepDuration(Windows.Foundation.TimeSpan value);
	HRESULT get_BeepDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_BeepDelay(Windows.Foundation.TimeSpan value);
	HRESULT get_BeepDelay(Windows.Foundation.TimeSpan* return_value);
	HRESULT add_AlarmTimeoutExpired(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawerCloseAlarm*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_AlarmTimeoutExpired(EventRegistrationToken token);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
}

@uuid("e006e46c-f2f9-442f-8dd6-06c10a4227ba")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawerEventSource")
interface ICashDrawerEventSource : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_DrawerClosed(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawerEventSource*,Windows.Devices.PointOfService.CashDrawerClosedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DrawerClosed(EventRegistrationToken token);
	HRESULT add_DrawerOpened(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawerEventSource*,Windows.Devices.PointOfService.CashDrawerOpenedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DrawerOpened(EventRegistrationToken token);
}

@uuid("69cb3bc1-147f-421c-9c23-090123bb786c")
interface ICashDrawerEventSourceEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CashDrawer(Windows.Devices.PointOfService.CashDrawer* return_drawer);
}

@uuid("dfa0955a-d437-4fff-b547-dda969a4f883")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawer")
interface ICashDrawerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.CashDrawer)* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.CashDrawer)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("3e818121-8c42-40e8-9c0e-40297048104c")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawer")
interface ICashDrawerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("6bbd78bf-dca1-4e06-99eb-5af6a5aec108")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawerStatus")
interface ICashDrawerStatus : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StatusKind(Windows.Devices.PointOfService.CashDrawerStatusKind* return_value);
	HRESULT get_ExtendedStatus(UINT32* return_value);
}

@uuid("30aae98a-0d70-459c-9553-87e124c52488")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawerStatusUpdatedEventArgs")
interface ICashDrawerStatusUpdatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.PointOfService.CashDrawerStatus* return_value);
}

@uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedBarcodeScanner")
interface IClaimedBarcodeScanner : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsDisabledOnDataReceived(bool value);
	HRESULT get_IsDisabledOnDataReceived(bool* return_value);
	HRESULT set_IsDecodeDataEnabled(bool value);
	HRESULT get_IsDecodeDataEnabled(bool* return_value);
	HRESULT abi_EnableAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_DisableAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_RetainDevice();
	HRESULT abi_SetActiveSymbologiesAsync(Windows.Foundation.Collections.IIterable!(UINT32) symbologies, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ResetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING,HSTRING)) statistics, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_SetActiveProfileAsync(HSTRING profile, Windows.Foundation.IAsyncAction* return_result);
	HRESULT add_DataReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner*,Windows.Devices.PointOfService.BarcodeScannerDataReceivedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_DataReceived(EventRegistrationToken token);
	HRESULT add_TriggerPressed(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner) handler, EventRegistrationToken* return_token);
	HRESULT remove_TriggerPressed(EventRegistrationToken token);
	HRESULT add_TriggerReleased(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner) handler, EventRegistrationToken* return_token);
	HRESULT remove_TriggerReleased(EventRegistrationToken token);
	HRESULT add_ReleaseDeviceRequested(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReleaseDeviceRequested(EventRegistrationToken token);
	HRESULT add_ImagePreviewReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner*,Windows.Devices.PointOfService.BarcodeScannerImagePreviewReceivedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_ImagePreviewReceived(EventRegistrationToken token);
	HRESULT add_ErrorOccurred(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner*,Windows.Devices.PointOfService.BarcodeScannerErrorOccurredEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_ErrorOccurred(EventRegistrationToken token);
}

@uuid("f61aad0c-8551-42b4-998c-970c20210a22")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedBarcodeScanner")
interface IClaimedBarcodeScanner1 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_StartSoftwareTriggerAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_StopSoftwareTriggerAsync(Windows.Foundation.IAsyncAction* return_result);
}

@uuid("e3b59e8c-2d8b-4f70-8af3-3448bedd5fe2")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedBarcodeScanner")
interface IClaimedBarcodeScanner2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetSymbologyAttributesAsync(UINT32 barcodeSymbology, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeSymbologyAttributes)* return_result);
	HRESULT abi_SetSymbologyAttributesAsync(UINT32 barcodeSymbology, Windows.Devices.PointOfService.BarcodeSymbologyAttributes attributes, Windows.Foundation.IAsyncOperation!(bool)* return_result);
}

@uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedCashDrawer")
interface IClaimedCashDrawer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT get_IsDrawerOpen(bool* return_value);
	HRESULT get_CloseAlarm(Windows.Devices.PointOfService.CashDrawerCloseAlarm* return_value);
	HRESULT abi_OpenDrawerAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_EnableAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_DisableAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_RetainDeviceAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_ResetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING,HSTRING)) statistics, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT add_ReleaseDeviceRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedCashDrawer*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReleaseDeviceRequested(EventRegistrationToken token);
}

@uuid("67ea0630-517d-487f-9fdf-d2e0a0a264a5")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedJournalPrinter")
interface IClaimedJournalPrinter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateJob(Windows.Devices.PointOfService.JournalPrintJob* return_value);
}

@uuid("120ac970-9a75-4acf-aae7-09972bcf8794")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedLineDisplay")
interface IClaimedLineDisplay : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Capabilities(Windows.Devices.PointOfService.LineDisplayCapabilities* return_value);
	HRESULT get_PhysicalDeviceName(HSTRING* return_value);
	HRESULT get_PhysicalDeviceDescription(HSTRING* return_value);
	HRESULT get_DeviceControlDescription(HSTRING* return_value);
	HRESULT get_DeviceControlVersion(HSTRING* return_value);
	HRESULT get_DeviceServiceVersion(HSTRING* return_value);
	HRESULT get_DefaultWindow(Windows.Devices.PointOfService.LineDisplayWindow* return_value);
	HRESULT abi_RetainDevice();
	HRESULT add_ReleaseDeviceRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedLineDisplay*,IInspectable*) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReleaseDeviceRequested(EventRegistrationToken token);
}

@uuid("78ca98fb-8b6b-4973-86f0-3e570c351825")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedLineDisplay")
interface IClaimedLineDisplayStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedLineDisplay)* return_operation);
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedMagneticStripeReader")
interface IClaimedMagneticStripeReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_IsDisabledOnDataReceived(bool value);
	HRESULT get_IsDisabledOnDataReceived(bool* return_value);
	HRESULT set_IsDecodeDataEnabled(bool value);
	HRESULT get_IsDecodeDataEnabled(bool* return_value);
	HRESULT get_IsDeviceAuthenticated(bool* return_value);
	HRESULT set_DataEncryptionAlgorithm(UINT32 value);
	HRESULT get_DataEncryptionAlgorithm(UINT32* return_value);
	HRESULT set_TracksToRead(Windows.Devices.PointOfService.MagneticStripeReaderTrackIds value);
	HRESULT get_TracksToRead(Windows.Devices.PointOfService.MagneticStripeReaderTrackIds* return_value);
	HRESULT set_IsTransmitSentinelsEnabled(bool value);
	HRESULT get_IsTransmitSentinelsEnabled(bool* return_value);
	HRESULT abi_EnableAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_DisableAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_RetainDevice();
	HRESULT abi_SetErrorReportingType(Windows.Devices.PointOfService.MagneticStripeReaderErrorReportingType value);
	HRESULT abi_RetrieveDeviceAuthenticationDataAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_operation);
	HRESULT abi_AuthenticateDeviceAsync(UINT32 __responseTokenSize, BYTE* responseToken, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_DeAuthenticateDeviceAsync(UINT32 __responseTokenSize, BYTE* responseToken, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_UpdateKeyAsync(HSTRING key, HSTRING keyName, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ResetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING,HSTRING)) statistics, Windows.Foundation.IAsyncAction* return_result);
	HRESULT add_BankCardDataReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader*,Windows.Devices.PointOfService.MagneticStripeReaderBankCardDataReceivedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_BankCardDataReceived(EventRegistrationToken token);
	HRESULT add_AamvaCardDataReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader*,Windows.Devices.PointOfService.MagneticStripeReaderAamvaCardDataReceivedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_AamvaCardDataReceived(EventRegistrationToken token);
	HRESULT add_VendorSpecificDataReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader*,Windows.Devices.PointOfService.MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_VendorSpecificDataReceived(EventRegistrationToken token);
	HRESULT add_ReleaseDeviceRequested(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReleaseDeviceRequested(EventRegistrationToken token);
	HRESULT add_ErrorOccurred(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader*,Windows.Devices.PointOfService.MagneticStripeReaderErrorOccurredEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_ErrorOccurred(EventRegistrationToken token);
}

@uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedPosPrinter")
interface IClaimedPosPrinter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_IsEnabled(bool* return_value);
	HRESULT set_CharacterSet(UINT32 value);
	HRESULT get_CharacterSet(UINT32* return_value);
	HRESULT get_IsCoverOpen(bool* return_value);
	HRESULT set_IsCharacterSetMappingEnabled(bool value);
	HRESULT get_IsCharacterSetMappingEnabled(bool* return_value);
	HRESULT set_MapMode(Windows.Devices.PointOfService.PosPrinterMapMode value);
	HRESULT get_MapMode(Windows.Devices.PointOfService.PosPrinterMapMode* return_value);
	HRESULT get_Receipt(Windows.Devices.PointOfService.ClaimedReceiptPrinter* return_value);
	HRESULT get_Slip(Windows.Devices.PointOfService.ClaimedSlipPrinter* return_value);
	HRESULT get_Journal(Windows.Devices.PointOfService.ClaimedJournalPrinter* return_value);
	HRESULT abi_EnableAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_DisableAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_RetainDeviceAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_ResetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING,HSTRING)) statistics, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT add_ReleaseDeviceRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedPosPrinter*,Windows.Devices.PointOfService.PosPrinterReleaseDeviceRequestedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReleaseDeviceRequested(EventRegistrationToken token);
}

@uuid("9ad27a74-dd61-4ee2-9837-5b5d72d538b9")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedReceiptPrinter")
interface IClaimedReceiptPrinter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SidewaysMaxLines(UINT32* return_value);
	HRESULT get_SidewaysMaxChars(UINT32* return_value);
	HRESULT get_LinesToPaperCut(UINT32* return_value);
	HRESULT get_PageSize(Windows.Foundation.Size* return_value);
	HRESULT get_PrintArea(Windows.Foundation.Rect* return_value);
	HRESULT abi_CreateJob(Windows.Devices.PointOfService.ReceiptPrintJob* return_value);
}

@uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedSlipPrinter")
interface IClaimedSlipPrinter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SidewaysMaxLines(UINT32* return_value);
	HRESULT get_SidewaysMaxChars(UINT32* return_value);
	HRESULT get_MaxLines(UINT32* return_value);
	HRESULT get_LinesNearEndToEnd(UINT32* return_value);
	HRESULT get_PrintSide(Windows.Devices.PointOfService.PosPrinterPrintSide* return_value);
	HRESULT get_PageSize(Windows.Foundation.Size* return_value);
	HRESULT get_PrintArea(Windows.Foundation.Rect* return_value);
	HRESULT abi_OpenJaws();
	HRESULT abi_CloseJaws();
	HRESULT abi_InsertSlipAsync(Windows.Foundation.TimeSpan timeout, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_RemoveSlipAsync(Windows.Foundation.TimeSpan timeout, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_ChangePrintSide(Windows.Devices.PointOfService.PosPrinterPrintSide printSide);
	HRESULT abi_CreateJob(Windows.Devices.PointOfService.SlipPrintJob* return_value);
}

@uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c")
interface ICommonClaimedPosPrinterStation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT set_CharactersPerLine(UINT32 value);
	HRESULT get_CharactersPerLine(UINT32* return_value);
	HRESULT set_LineHeight(UINT32 value);
	HRESULT get_LineHeight(UINT32* return_value);
	HRESULT set_LineSpacing(UINT32 value);
	HRESULT get_LineSpacing(UINT32* return_value);
	HRESULT get_LineWidth(UINT32* return_value);
	HRESULT set_IsLetterQuality(bool value);
	HRESULT get_IsLetterQuality(bool* return_value);
	HRESULT get_IsPaperNearEnd(bool* return_value);
	HRESULT set_ColorCartridge(Windows.Devices.PointOfService.PosPrinterColorCartridge value);
	HRESULT get_ColorCartridge(Windows.Devices.PointOfService.PosPrinterColorCartridge* return_value);
	HRESULT get_IsCoverOpen(bool* return_value);
	HRESULT get_IsCartridgeRemoved(bool* return_value);
	HRESULT get_IsCartridgeEmpty(bool* return_value);
	HRESULT get_IsHeadCleaning(bool* return_value);
	HRESULT get_IsPaperEmpty(bool* return_value);
	HRESULT get_IsReadyToPrint(bool* return_value);
	HRESULT abi_ValidateData(HSTRING data, bool* return_result);
}

@uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc")
interface ICommonPosPrintStationCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsPrinterPresent(bool* return_value);
	HRESULT get_IsDualColorSupported(bool* return_value);
	HRESULT get_ColorCartridgeCapabilities(Windows.Devices.PointOfService.PosPrinterColorCapabilities* return_value);
	HRESULT get_CartridgeSensors(Windows.Devices.PointOfService.PosPrinterCartridgeSensors* return_value);
	HRESULT get_IsBoldSupported(bool* return_value);
	HRESULT get_IsItalicSupported(bool* return_value);
	HRESULT get_IsUnderlineSupported(bool* return_value);
	HRESULT get_IsDoubleHighPrintSupported(bool* return_value);
	HRESULT get_IsDoubleWidePrintSupported(bool* return_value);
	HRESULT get_IsDoubleHighDoubleWidePrintSupported(bool* return_value);
	HRESULT get_IsPaperEmptySensorSupported(bool* return_value);
	HRESULT get_IsPaperNearEndSensorSupported(bool* return_value);
	HRESULT get_SupportedCharactersPerLine(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
}

@uuid("09286b8b-9873-4d05-bfbe-4727a6038f69")
interface ICommonReceiptSlipCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsBarcodeSupported(bool* return_value);
	HRESULT get_IsBitmapSupported(bool* return_value);
	HRESULT get_IsLeft90RotationSupported(bool* return_value);
	HRESULT get_IsRight90RotationSupported(bool* return_value);
	HRESULT get_Is180RotationSupported(bool* return_value);
	HRESULT get_IsPrintAreaSupported(bool* return_value);
	HRESULT get_RuledLineCapabilities(Windows.Devices.PointOfService.PosPrinterRuledLineCapabilities* return_value);
	HRESULT get_SupportedBarcodeRotations(Windows.Foundation.Collections.IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation)* return_value);
	HRESULT get_SupportedBitmapRotations(Windows.Foundation.Collections.IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation)* return_value);
}

@uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c")
@WinrtFactory("Windows.Devices.PointOfService.LineDisplay")
interface ILineDisplay : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Capabilities(Windows.Devices.PointOfService.LineDisplayCapabilities* return_value);
	HRESULT get_PhysicalDeviceName(HSTRING* return_value);
	HRESULT get_PhysicalDeviceDescription(HSTRING* return_value);
	HRESULT get_DeviceControlDescription(HSTRING* return_value);
	HRESULT get_DeviceControlVersion(HSTRING* return_value);
	HRESULT get_DeviceServiceVersion(HSTRING* return_value);
	HRESULT abi_ClaimAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedLineDisplay)* return_result);
}

@uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55")
@WinrtFactory("Windows.Devices.PointOfService.LineDisplayCapabilities")
interface ILineDisplayCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsStatisticsReportingSupported(bool* return_value);
	HRESULT get_IsStatisticsUpdatingSupported(bool* return_value);
	HRESULT get_PowerReportingType(Windows.Devices.PointOfService.UnifiedPosPowerReportingType* return_value);
	HRESULT get_CanChangeScreenSize(bool* return_value);
	HRESULT get_CanDisplayBitmaps(bool* return_value);
	HRESULT get_CanReadCharacterAtCursor(bool* return_value);
	HRESULT get_CanMapCharacterSets(bool* return_value);
	HRESULT get_CanDisplayCustomGlyphs(bool* return_value);
	HRESULT get_CanReverse(Windows.Devices.PointOfService.LineDisplayTextAttributeGranularity* return_value);
	HRESULT get_CanBlink(Windows.Devices.PointOfService.LineDisplayTextAttributeGranularity* return_value);
	HRESULT get_CanChangeBlinkRate(bool* return_value);
	HRESULT get_IsBrightnessSupported(bool* return_value);
	HRESULT get_IsCursorSupported(bool* return_value);
	HRESULT get_IsHorizontalMarqueeSupported(bool* return_value);
	HRESULT get_IsVerticalMarqueeSupported(bool* return_value);
	HRESULT get_IsInterCharacterWaitSupported(bool* return_value);
	HRESULT get_SupportedDescriptors(UINT32* return_value);
	HRESULT get_SupportedWindows(UINT32* return_value);
}

@uuid("022dc0b6-11b0-4690-9547-0b39c5af2114")
@WinrtFactory("Windows.Devices.PointOfService.LineDisplay")
interface ILineDisplayStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.LineDisplay)* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.LineDisplay)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("d21feef4-2364-4be5-bee1-851680af4964")
@WinrtFactory("Windows.Devices.PointOfService.LineDisplayWindow")
interface ILineDisplayWindow : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SizeInCharacters(Windows.Foundation.Size* return_value);
	HRESULT get_InterCharacterWaitInterval(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_InterCharacterWaitInterval(Windows.Foundation.TimeSpan value);
	HRESULT abi_TryRefreshAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryDisplayTextAsync(HSTRING text, Windows.Devices.PointOfService.LineDisplayTextAttribute displayAttribute, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryDisplayTextAtPositionAsync(HSTRING text, Windows.Devices.PointOfService.LineDisplayTextAttribute displayAttribute, Windows.Foundation.Point startPosition, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryDisplayTextNormalAsync(HSTRING text, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryScrollTextAsync(Windows.Devices.PointOfService.LineDisplayScrollDirection direction, UINT32 numberOfColumnsOrRows, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryClearTextAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("1a92b015-47c3-468a-9333-0c6517574883")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReader")
interface IMagneticStripeReader : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Capabilities(Windows.Devices.PointOfService.MagneticStripeReaderCapabilities* return_value);
	HRESULT get_SupportedCardTypes(UINT32* out___valueSize, UINT32** return_value);
	HRESULT get_DeviceAuthenticationProtocol(Windows.Devices.PointOfService.MagneticStripeReaderAuthenticationProtocol* return_value);
	HRESULT abi_CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_ClaimReaderAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader)* return_operation);
	HRESULT abi_RetrieveStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_operation);
	HRESULT abi_GetErrorReportingType(Windows.Devices.PointOfService.MagneticStripeReaderErrorReportingType* return_value);
	HRESULT add_StatusUpdated(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.MagneticStripeReader*,Windows.Devices.PointOfService.MagneticStripeReaderStatusUpdatedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusUpdated(EventRegistrationToken token);
}

@uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderAamvaCardDataReceivedEventArgs")
interface IMagneticStripeReaderAamvaCardDataReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Report(Windows.Devices.PointOfService.MagneticStripeReaderReport* return_value);
	HRESULT get_LicenseNumber(HSTRING* return_value);
	HRESULT get_ExpirationDate(HSTRING* return_value);
	HRESULT get_Restrictions(HSTRING* return_value);
	HRESULT get_Class(HSTRING* return_value);
	HRESULT get_Endorsements(HSTRING* return_value);
	HRESULT get_BirthDate(HSTRING* return_value);
	HRESULT get_FirstName(HSTRING* return_value);
	HRESULT get_Surname(HSTRING* return_value);
	HRESULT get_Suffix(HSTRING* return_value);
	HRESULT get_Gender(HSTRING* return_value);
	HRESULT get_HairColor(HSTRING* return_value);
	HRESULT get_EyeColor(HSTRING* return_value);
	HRESULT get_Height(HSTRING* return_value);
	HRESULT get_Weight(HSTRING* return_value);
	HRESULT get_Address(HSTRING* return_value);
	HRESULT get_City(HSTRING* return_value);
	HRESULT get_State(HSTRING* return_value);
	HRESULT get_PostalCode(HSTRING* return_value);
}

@uuid("2e958823-a31a-4763-882c-23725e39b08e")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderBankCardDataReceivedEventArgs")
interface IMagneticStripeReaderBankCardDataReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Report(Windows.Devices.PointOfService.MagneticStripeReaderReport* return_value);
	HRESULT get_AccountNumber(HSTRING* return_value);
	HRESULT get_ExpirationDate(HSTRING* return_value);
	HRESULT get_ServiceCode(HSTRING* return_value);
	HRESULT get_Title(HSTRING* return_value);
	HRESULT get_FirstName(HSTRING* return_value);
	HRESULT get_MiddleInitial(HSTRING* return_value);
	HRESULT get_Surname(HSTRING* return_value);
	HRESULT get_Suffix(HSTRING* return_value);
}

@uuid("7128809c-c440-44a2-a467-469175d02896")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderCapabilities")
interface IMagneticStripeReaderCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CardAuthentication(HSTRING* return_value);
	HRESULT get_SupportedEncryptionAlgorithms(UINT32* return_value);
	HRESULT get_AuthenticationLevel(Windows.Devices.PointOfService.MagneticStripeReaderAuthenticationLevel* return_value);
	HRESULT get_IsIsoSupported(bool* return_value);
	HRESULT get_IsJisOneSupported(bool* return_value);
	HRESULT get_IsJisTwoSupported(bool* return_value);
	HRESULT get_PowerReportingType(Windows.Devices.PointOfService.UnifiedPosPowerReportingType* return_value);
	HRESULT get_IsStatisticsReportingSupported(bool* return_value);
	HRESULT get_IsStatisticsUpdatingSupported(bool* return_value);
	HRESULT get_IsTrackDataMaskingSupported(bool* return_value);
	HRESULT get_IsTransmitSentinelsSupported(bool* return_value);
}

@uuid("528f2c5d-2986-474f-8454-7ccd05928d5f")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderCardTypes")
interface IMagneticStripeReaderCardTypesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Unknown(UINT32* return_value);
	HRESULT get_Bank(UINT32* return_value);
	HRESULT get_Aamva(UINT32* return_value);
	HRESULT get_ExtendedBase(UINT32* return_value);
}

@uuid("53b57350-c3db-4754-9c00-41392374a109")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderEncryptionAlgorithms")
interface IMagneticStripeReaderEncryptionAlgorithmsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_None(UINT32* return_value);
	HRESULT get_TripleDesDukpt(UINT32* return_value);
	HRESULT get_ExtendedBase(UINT32* return_value);
}

@uuid("1fedf95d-2c84-41ad-b778-f2356a789ab1")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderErrorOccurredEventArgs")
interface IMagneticStripeReaderErrorOccurredEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Track1Status(Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType* return_value);
	HRESULT get_Track2Status(Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType* return_value);
	HRESULT get_Track3Status(Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType* return_value);
	HRESULT get_Track4Status(Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType* return_value);
	HRESULT get_ErrorData(Windows.Devices.PointOfService.UnifiedPosErrorData* return_value);
	HRESULT get_PartialInputData(Windows.Devices.PointOfService.MagneticStripeReaderReport* return_value);
}

@uuid("6a5b6047-99b0-4188-bef1-eddf79f78fe6")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderReport")
interface IMagneticStripeReaderReport : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CardType(UINT32* return_value);
	HRESULT get_Track1(Windows.Devices.PointOfService.MagneticStripeReaderTrackData* return_value);
	HRESULT get_Track2(Windows.Devices.PointOfService.MagneticStripeReaderTrackData* return_value);
	HRESULT get_Track3(Windows.Devices.PointOfService.MagneticStripeReaderTrackData* return_value);
	HRESULT get_Track4(Windows.Devices.PointOfService.MagneticStripeReaderTrackData* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING,HSTRING)* return_value);
	HRESULT get_CardAuthenticationData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_CardAuthenticationDataLength(UINT32* return_value);
	HRESULT get_AdditionalSecurityInformation(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("c45fab4a-efd7-4760-a5ce-15b0e47e94eb")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReader")
interface IMagneticStripeReaderStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.MagneticStripeReader)* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.MagneticStripeReader)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("8cadc362-d667-48fa-86bc-f5ae1189262b")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReader")
interface IMagneticStripeReaderStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("09cc6bb0-3262-401d-9e8a-e80d6358906b")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderStatusUpdatedEventArgs")
interface IMagneticStripeReaderStatusUpdatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.PointOfService.MagneticStripeReaderStatus* return_value);
	HRESULT get_ExtendedStatus(UINT32* return_value);
}

@uuid("104cf671-4a9d-446e-abc5-20402307ba36")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderTrackData")
interface IMagneticStripeReaderTrackData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_DiscretionaryData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_EncryptedData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("af0a5514-59cc-4a60-99e8-99a53dace5aa")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs")
interface IMagneticStripeReaderVendorSpecificCardDataReceivedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Report(Windows.Devices.PointOfService.MagneticStripeReaderReport* return_value);
}

@uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinter")
interface IPosPrinter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Capabilities(Windows.Devices.PointOfService.PosPrinterCapabilities* return_value);
	HRESULT get_SupportedCharacterSets(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_SupportedTypeFaces(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Status(Windows.Devices.PointOfService.PosPrinterStatus* return_value);
	HRESULT abi_ClaimPrinterAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedPosPrinter)* return_operation);
	HRESULT abi_CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT add_StatusUpdated(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.PosPrinter*,Windows.Devices.PointOfService.PosPrinterStatusUpdatedEventArgs*) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusUpdated(EventRegistrationToken token);
}

@uuid("cde95721-4380-4985-adc5-39db30cd93bc")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinterCapabilities")
interface IPosPrinterCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PowerReportingType(Windows.Devices.PointOfService.UnifiedPosPowerReportingType* return_value);
	HRESULT get_IsStatisticsReportingSupported(bool* return_value);
	HRESULT get_IsStatisticsUpdatingSupported(bool* return_value);
	HRESULT get_DefaultCharacterSet(UINT32* return_value);
	HRESULT get_HasCoverSensor(bool* return_value);
	HRESULT get_CanMapCharacterSet(bool* return_value);
	HRESULT get_IsTransactionSupported(bool* return_value);
	HRESULT get_Receipt(Windows.Devices.PointOfService.ReceiptPrinterCapabilities* return_value);
	HRESULT get_Slip(Windows.Devices.PointOfService.SlipPrinterCapabilities* return_value);
	HRESULT get_Journal(Windows.Devices.PointOfService.JournalPrinterCapabilities* return_value);
}

@uuid("5c709eff-709a-4fe7-b215-06a748a38b39")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinterCharacterSetIds")
interface IPosPrinterCharacterSetIdsStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Utf16LE(UINT32* return_value);
	HRESULT get_Ascii(UINT32* return_value);
	HRESULT get_Ansi(UINT32* return_value);
}

@uuid("9a94005c-0615-4591-a58f-30f87edfe2e4")
interface IPosPrinterJob : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Print(HSTRING data);
	HRESULT abi_PrintLine(HSTRING data);
	HRESULT abi_PrintNewline();
	HRESULT abi_ExecuteAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("8ce0d4ea-132f-4cdf-a64a-2d0d7c96a85b")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinter")
interface IPosPrinterStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.PosPrinter)* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.PosPrinter)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("eecd2c1c-b0d0-42e7-b137-b89b16244d41")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinter")
interface IPosPrinterStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("d1f0c730-da40-4328-bf76-5156fa33b747")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinterStatus")
interface IPosPrinterStatus : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_StatusKind(Windows.Devices.PointOfService.PosPrinterStatusKind* return_value);
	HRESULT get_ExtendedStatus(UINT32* return_value);
}

@uuid("2edb87df-13a6-428d-ba81-b0e7c3e5a3cd")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinterStatusUpdatedEventArgs")
interface IPosPrinterStatusUpdatedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.Devices.PointOfService.PosPrinterStatus* return_value);
}

@uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc")
interface IReceiptOrSlipJob : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetBarcodeRotation(Windows.Devices.PointOfService.PosPrinterRotation value);
	HRESULT abi_SetPrintRotation(Windows.Devices.PointOfService.PosPrinterRotation value, bool includeBitmaps);
	HRESULT abi_SetPrintArea(Windows.Foundation.Rect value);
	HRESULT abi_SetBitmap(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment);
	HRESULT abi_SetBitmapCustomWidthStandardAlign(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment, UINT32 width);
	HRESULT abi_SetCustomAlignedBitmap(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance);
	HRESULT abi_SetBitmapCustomWidthCustomAlign(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance, UINT32 width);
	HRESULT abi_PrintSavedBitmap(UINT32 bitmapNumber);
	HRESULT abi_DrawRuledLine(HSTRING positionList, Windows.Devices.PointOfService.PosPrinterLineDirection lineDirection, UINT32 lineWidth, Windows.Devices.PointOfService.PosPrinterLineStyle lineStyle, UINT32 lineColor);
	HRESULT abi_PrintBarcode(HSTRING data, UINT32 symbology, UINT32 height, UINT32 width, Windows.Devices.PointOfService.PosPrinterBarcodeTextPosition textPosition, Windows.Devices.PointOfService.PosPrinterAlignment alignment);
	HRESULT abi_PrintBarcodeCustomAlign(HSTRING data, UINT32 symbology, UINT32 height, UINT32 width, Windows.Devices.PointOfService.PosPrinterBarcodeTextPosition textPosition, UINT32 alignmentDistance);
	HRESULT abi_PrintBitmap(Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment);
	HRESULT abi_PrintBitmapCustomWidthStandardAlign(Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment, UINT32 width);
	HRESULT abi_PrintCustomAlignedBitmap(Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance);
	HRESULT abi_PrintBitmapCustomWidthCustomAlign(Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance, UINT32 width);
}

@uuid("aa96066e-acad-4b79-9d0f-c0cfc08dc77b")
@WinrtFactory("Windows.Devices.PointOfService.ReceiptPrintJob")
interface IReceiptPrintJob : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_MarkFeed(Windows.Devices.PointOfService.PosPrinterMarkFeedKind kind);
	HRESULT abi_CutPaper(double percentage);
	HRESULT abi_CutPaperDefault();
}

@uuid("b8f0b58f-51a8-43fc-9bd5-8de272a6415b")
@WinrtFactory("Windows.Devices.PointOfService.ReceiptPrinterCapabilities")
interface IReceiptPrinterCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanCutPaper(bool* return_value);
	HRESULT get_IsStampSupported(bool* return_value);
	HRESULT get_MarkFeedCapabilities(Windows.Devices.PointOfService.PosPrinterMarkFeedCapabilities* return_value);
}

@uuid("99b16399-488c-4157-8ac2-9f57f708d3db")
@WinrtFactory("Windows.Devices.PointOfService.SlipPrinterCapabilities")
interface ISlipPrinterCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsFullLengthSupported(bool* return_value);
	HRESULT get_IsBothSidesPrintingSupported(bool* return_value);
}

@uuid("2b998c3a-555c-4889-8ed8-c599bb3a712a")
@WinrtFactory("Windows.Devices.PointOfService.UnifiedPosErrorData")
interface IUnifiedPosErrorData : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Message(HSTRING* return_value);
	HRESULT get_Severity(Windows.Devices.PointOfService.UnifiedPosErrorSeverity* return_value);
	HRESULT get_Reason(Windows.Devices.PointOfService.UnifiedPosErrorReason* return_value);
	HRESULT get_ExtendedReason(UINT32* return_value);
}

interface BarcodeScanner
{
}

interface BarcodeScannerCapabilities
{
}

interface BarcodeScannerDataReceivedEventArgs
{
}

interface BarcodeScannerErrorOccurredEventArgs
{
}

interface BarcodeScannerImagePreviewReceivedEventArgs
{
}

interface BarcodeScannerReport
{
}

interface BarcodeScannerStatusUpdatedEventArgs
{
}

interface BarcodeSymbologyAttributes
{
}

interface CashDrawer
{
}

interface CashDrawerCapabilities
{
}

interface CashDrawerCloseAlarm
{
}

interface CashDrawerClosedEventArgs
{
}

interface CashDrawerEventSource
{
}

interface CashDrawerOpenedEventArgs
{
}

interface CashDrawerStatus
{
}

interface CashDrawerStatusUpdatedEventArgs
{
}

interface ClaimedBarcodeScanner
{
}

interface ClaimedCashDrawer
{
}

interface ClaimedJournalPrinter
{
}

interface ClaimedLineDisplay
{
}

interface ClaimedMagneticStripeReader
{
}

interface ClaimedPosPrinter
{
}

interface ClaimedReceiptPrinter
{
}

interface ClaimedSlipPrinter
{
}

interface JournalPrintJob
{
}

interface JournalPrinterCapabilities
{
}

interface LineDisplay
{
}

interface LineDisplayCapabilities
{
}

interface LineDisplayWindow
{
}

interface MagneticStripeReader
{
}

interface MagneticStripeReaderAamvaCardDataReceivedEventArgs
{
}

interface MagneticStripeReaderBankCardDataReceivedEventArgs
{
}

interface MagneticStripeReaderCapabilities
{
}

interface MagneticStripeReaderErrorOccurredEventArgs
{
}

interface MagneticStripeReaderReport
{
}

interface MagneticStripeReaderStatusUpdatedEventArgs
{
}

interface MagneticStripeReaderTrackData
{
}

interface MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs
{
}

interface PosPrinter
{
}

interface PosPrinterCapabilities
{
}

interface PosPrinterReleaseDeviceRequestedEventArgs
{
}

interface PosPrinterStatus
{
}

interface PosPrinterStatusUpdatedEventArgs
{
}

interface ReceiptPrintJob
{
}

interface ReceiptPrinterCapabilities
{
}

interface SlipPrintJob
{
}

interface SlipPrinterCapabilities
{
}

interface UnifiedPosErrorData
{
}

enum BarcodeScannerStatus
{
	Online = 0,
	Off = 1,
	Offline = 2,
	OffOrOffline = 3,
	Extended = 4
}

enum BarcodeSymbologyDecodeLengthKind
{
	AnyLength = 0,
	Discrete = 1,
	Range = 2
}

enum CashDrawerStatusKind
{
	Online = 0,
	Off = 1,
	Offline = 2,
	OffOrOffline = 3,
	Extended = 4
}

enum LineDisplayScrollDirection
{
	Up = 0,
	Down = 1,
	Left = 2,
	Right = 3
}

enum LineDisplayTextAttribute
{
	Normal = 0,
	Blink = 1,
	Reverse = 2,
	ReverseBlink = 3
}

enum LineDisplayTextAttributeGranularity
{
	NotSupported = 0,
	EntireDisplay = 1,
	PerCharacter = 2
}

enum MagneticStripeReaderAuthenticationLevel
{
	NotSupported = 0,
	Optional = 1,
	Required = 2
}

enum MagneticStripeReaderAuthenticationProtocol
{
	None = 0,
	ChallengeResponse = 1
}

enum MagneticStripeReaderErrorReportingType
{
	CardLevel = 0,
	TrackLevel = 1
}

enum MagneticStripeReaderStatus
{
	Unauthenticated = 0,
	Authenticated = 1,
	Extended = 2
}

enum MagneticStripeReaderTrackErrorType
{
	None = 0,
	StartSentinelError = 1,
	EndSentinelError = 2,
	ParityError = 3,
	LrcError = 4,
	Unknown = -1
}

enum MagneticStripeReaderTrackIds
{
	None = 0,
	Track1 = 1,
	Track2 = 2,
	Track3 = 4,
	Track4 = 8
}

@bitflags
enum PosConnectionTypes
{
	Local = 0x1,
	IP = 0x2,
	Bluetooth = 0x4,
	All = 0xFFFFFFFF
}

enum PosPrinterAlignment
{
	Left = 0,
	Center = 1,
	Right = 2
}

enum PosPrinterBarcodeTextPosition
{
	None = 0,
	Above = 1,
	Below = 2
}

@bitflags
enum PosPrinterCartridgeSensors
{
	None = 0x0,
	Removed = 0x1,
	Empty = 0x2,
	HeadCleaning = 0x4,
	NearEnd = 0x8
}

@bitflags
enum PosPrinterColorCapabilities
{
	None = 0x0,
	Primary = 0x1,
	Custom1 = 0x2,
	Custom2 = 0x4,
	Custom3 = 0x8,
	Custom4 = 0x10,
	Custom5 = 0x20,
	Custom6 = 0x40,
	Cyan = 0x80,
	Magenta = 0x100,
	Yellow = 0x200,
	Full = 0x400
}

enum PosPrinterColorCartridge
{
	Unknown = 0,
	Primary = 1,
	Custom1 = 2,
	Custom2 = 3,
	Custom3 = 4,
	Custom4 = 5,
	Custom5 = 6,
	Custom6 = 7,
	Cyan = 8,
	Magenta = 9,
	Yellow = 10
}

enum PosPrinterLineDirection
{
	Horizontal = 0,
	Vertical = 1
}

enum PosPrinterLineStyle
{
	SingleSolid = 0,
	DoubleSolid = 1,
	Broken = 2,
	Chain = 3
}

enum PosPrinterMapMode
{
	Dots = 0,
	Twips = 1,
	English = 2,
	Metric = 3
}

@bitflags
enum PosPrinterMarkFeedCapabilities
{
	None = 0x0,
	ToTakeUp = 0x1,
	ToCutter = 0x2,
	ToCurrentTopOfForm = 0x4,
	ToNextTopOfForm = 0x8
}

enum PosPrinterMarkFeedKind
{
	ToTakeUp = 0,
	ToCutter = 1,
	ToCurrentTopOfForm = 2,
	ToNextTopOfForm = 3
}

enum PosPrinterPrintSide
{
	Unknown = 0,
	Side1 = 1,
	Side2 = 2
}

enum PosPrinterRotation
{
	Normal = 0,
	Right90 = 1,
	Left90 = 2,
	Rotate180 = 3
}

@bitflags
enum PosPrinterRuledLineCapabilities
{
	None = 0x0,
	Horizontal = 0x1,
	Vertical = 0x2
}

enum PosPrinterStatusKind
{
	Online = 0,
	Off = 1,
	Offline = 2,
	OffOrOffline = 3,
	Extended = 4
}

enum UnifiedPosErrorReason
{
	UnknownErrorReason = 0,
	NoService = 1,
	Disabled = 2,
	Illegal = 3,
	NoHardware = 4,
	Closed = 5,
	Offline = 6,
	Failure = 7,
	Timeout = 8,
	Busy = 9,
	Extended = 10
}

enum UnifiedPosErrorSeverity
{
	UnknownErrorSeverity = 0,
	Warning = 1,
	Recoverable = 2,
	Unrecoverable = 3,
	AssistanceRequired = 4,
	Fatal = 5
}

enum UnifiedPosHealthCheckLevel
{
	UnknownHealthCheckLevel = 0,
	POSInternal = 1,
	External = 2,
	Interactive = 3
}

enum UnifiedPosPowerReportingType
{
	UnknownPowerReportingType = 0,
	Standard = 1,
	Advanced = 2
}