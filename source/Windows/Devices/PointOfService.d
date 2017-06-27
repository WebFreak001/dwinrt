module Windows.Devices.PointOfService;

import dwinrt;

@uuid("bea33e06-b264-4f03-a9c1-45b20f01134f")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScanner")
interface IBarcodeScanner : IInspectable
{
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
	HRESULT add_StatusUpdated(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.BarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerStatusUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusUpdated(EventRegistrationToken token);
}

@uuid("89215167-8cee-436d-89ab-8dfb43bb4286")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScanner")
interface IBarcodeScanner2 : IInspectable
{
extern(Windows):
	HRESULT get_VideoDeviceId(HSTRING* return_value);
}

@uuid("c60691e4-f2c8-4420-a307-b12ef6622857")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerCapabilities")
interface IBarcodeScannerCapabilities : IInspectable
{
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
extern(Windows):
	HRESULT get_IsSoftwareTriggerSupported(bool* return_value);
}

@uuid("4234a7e2-ed97-467d-ad2b-01e44313a929")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerDataReceivedEventArgs")
interface IBarcodeScannerDataReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Report(Windows.Devices.PointOfService.BarcodeScannerReport* return_value);
}

@uuid("2cd2602f-cf3a-4002-a75a-c5ec468f0a20")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerErrorOccurredEventArgs")
interface IBarcodeScannerErrorOccurredEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PartialInputData(Windows.Devices.PointOfService.BarcodeScannerReport* return_value);
	HRESULT get_IsRetriable(bool* return_value);
	HRESULT get_ErrorData(Windows.Devices.PointOfService.UnifiedPosErrorData* return_value);
}

@uuid("f3b7de85-6e8b-434e-9f58-06ef26bc4baf")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerImagePreviewReceivedEventArgs")
interface IBarcodeScannerImagePreviewReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Preview(Windows.Storage.Streams.IRandomAccessStreamWithContentType* return_preview);
}

@uuid("5ce4d8b0-a489-4b96-86c4-f0bf8a37753d")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerReport")
interface IBarcodeScannerReport : IInspectable
{
extern(Windows):
	HRESULT get_ScanDataType(UINT32* return_value);
	HRESULT get_ScanData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_ScanDataLabel(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("5d115f6f-da49-41e8-8c8c-f0cb62a9c4fc")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScanner")
interface IBarcodeScannerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeScanner)* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeScanner)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("b8652473-a36f-4007-b1d0-279ebe92a656")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScanner")
interface IBarcodeScannerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("355d8586-9c43-462b-a91a-816dc97f452c")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeScannerStatusUpdatedEventArgs")
interface IBarcodeScannerStatusUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.PointOfService.BarcodeScannerStatus* return_value);
	HRESULT get_ExtendedStatus(UINT32* return_value);
}

@uuid("ca8549bb-06d2-43f4-a44b-c620679fd8d0")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeSymbologies")
interface IBarcodeSymbologiesStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_Gs1DWCode(UINT32* return_value);
}

@uuid("66413a78-ab7a-4ada-8ece-936014b2ead7")
@WinrtFactory("Windows.Devices.PointOfService.BarcodeSymbologyAttributes")
interface IBarcodeSymbologyAttributes : IInspectable
{
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
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Capabilities(Windows.Devices.PointOfService.CashDrawerCapabilities* return_value);
	HRESULT get_Status(Windows.Devices.PointOfService.CashDrawerStatus* return_value);
	HRESULT get_IsDrawerOpen(bool* return_value);
	HRESULT get_DrawerEventSource(Windows.Devices.PointOfService.CashDrawerEventSource* return_value);
	HRESULT abi_ClaimDrawerAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedCashDrawer)* return_operation);
	HRESULT abi_CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT add_StatusUpdated(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawer, Windows.Devices.PointOfService.CashDrawerStatusUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusUpdated(EventRegistrationToken token);
}

@uuid("0bc6de0b-e8e7-4b1f-b1d1-3e501ad08247")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawerCapabilities")
interface ICashDrawerCapabilities : IInspectable
{
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
extern(Windows):
	HRESULT set_AlarmTimeout(Windows.Foundation.TimeSpan value);
	HRESULT get_AlarmTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_BeepFrequency(UINT32 value);
	HRESULT get_BeepFrequency(UINT32* return_value);
	HRESULT set_BeepDuration(Windows.Foundation.TimeSpan value);
	HRESULT get_BeepDuration(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_BeepDelay(Windows.Foundation.TimeSpan value);
	HRESULT get_BeepDelay(Windows.Foundation.TimeSpan* return_value);
	HRESULT add_AlarmTimeoutExpired(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawerCloseAlarm, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_AlarmTimeoutExpired(EventRegistrationToken token);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
}

@uuid("e006e46c-f2f9-442f-8dd6-06c10a4227ba")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawerEventSource")
interface ICashDrawerEventSource : IInspectable
{
extern(Windows):
	HRESULT add_DrawerClosed(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawerEventSource, Windows.Devices.PointOfService.CashDrawerClosedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DrawerClosed(EventRegistrationToken token);
	HRESULT add_DrawerOpened(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawerEventSource, Windows.Devices.PointOfService.CashDrawerOpenedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DrawerOpened(EventRegistrationToken token);
}

@uuid("69cb3bc1-147f-421c-9c23-090123bb786c")
interface ICashDrawerEventSourceEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_CashDrawer(Windows.Devices.PointOfService.CashDrawer* return_drawer);
}

@uuid("dfa0955a-d437-4fff-b547-dda969a4f883")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawer")
interface ICashDrawerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.CashDrawer)* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.CashDrawer)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("3e818121-8c42-40e8-9c0e-40297048104c")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawer")
interface ICashDrawerStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("6bbd78bf-dca1-4e06-99eb-5af6a5aec108")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawerStatus")
interface ICashDrawerStatus : IInspectable
{
extern(Windows):
	HRESULT get_StatusKind(Windows.Devices.PointOfService.CashDrawerStatusKind* return_value);
	HRESULT get_ExtendedStatus(UINT32* return_value);
}

@uuid("30aae98a-0d70-459c-9553-87e124c52488")
@WinrtFactory("Windows.Devices.PointOfService.CashDrawerStatusUpdatedEventArgs")
interface ICashDrawerStatusUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.PointOfService.CashDrawerStatus* return_value);
}

@uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedBarcodeScanner")
interface IClaimedBarcodeScanner_Base : IInspectable
{
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
	HRESULT abi_UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) statistics, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_SetActiveProfileAsync(HSTRING profile, Windows.Foundation.IAsyncAction* return_result);
	HRESULT add_DataReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerDataReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_DataReceived(EventRegistrationToken token);
	HRESULT add_TriggerPressed(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner) handler, EventRegistrationToken* return_token);
	HRESULT remove_TriggerPressed(EventRegistrationToken token);
	HRESULT add_TriggerReleased(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner) handler, EventRegistrationToken* return_token);
	HRESULT remove_TriggerReleased(EventRegistrationToken token);
	HRESULT add_ReleaseDeviceRequested(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReleaseDeviceRequested(EventRegistrationToken token);
	HRESULT add_ImagePreviewReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerImagePreviewReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ImagePreviewReceived(EventRegistrationToken token);
	HRESULT add_ErrorOccurred(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerErrorOccurredEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ErrorOccurred(EventRegistrationToken token);
}
@uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedBarcodeScanner")
interface IClaimedBarcodeScanner : IClaimedBarcodeScanner_Base, Windows.Foundation.IClosable {}

@uuid("f61aad0c-8551-42b4-998c-970c20210a22")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedBarcodeScanner")
interface IClaimedBarcodeScanner1_Base : IInspectable
{
extern(Windows):
	HRESULT abi_StartSoftwareTriggerAsync(Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_StopSoftwareTriggerAsync(Windows.Foundation.IAsyncAction* return_result);
}
@uuid("f61aad0c-8551-42b4-998c-970c20210a22")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedBarcodeScanner")
interface IClaimedBarcodeScanner1 : IClaimedBarcodeScanner1_Base, Windows.Foundation.IClosable {}

@uuid("e3b59e8c-2d8b-4f70-8af3-3448bedd5fe2")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedBarcodeScanner")
interface IClaimedBarcodeScanner2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetSymbologyAttributesAsync(UINT32 barcodeSymbology, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeSymbologyAttributes)* return_result);
	HRESULT abi_SetSymbologyAttributesAsync(UINT32 barcodeSymbology, Windows.Devices.PointOfService.BarcodeSymbologyAttributes attributes, Windows.Foundation.IAsyncOperation!(bool)* return_result);
}
@uuid("e3b59e8c-2d8b-4f70-8af3-3448bedd5fe2")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedBarcodeScanner")
interface IClaimedBarcodeScanner2 : IClaimedBarcodeScanner2_Base, Windows.Foundation.IClosable {}

@uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedCashDrawer")
interface IClaimedCashDrawer_Base : IInspectable
{
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
	HRESULT abi_UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) statistics, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT add_ReleaseDeviceRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedCashDrawer, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReleaseDeviceRequested(EventRegistrationToken token);
}
@uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedCashDrawer")
interface IClaimedCashDrawer : IClaimedCashDrawer_Base, Windows.Foundation.IClosable {}

@uuid("67ea0630-517d-487f-9fdf-d2e0a0a264a5")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedJournalPrinter")
interface IClaimedJournalPrinter_Base : IInspectable
{
extern(Windows):
	HRESULT abi_CreateJob(Windows.Devices.PointOfService.JournalPrintJob* return_value);
}
@uuid("67ea0630-517d-487f-9fdf-d2e0a0a264a5")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedJournalPrinter")
interface IClaimedJournalPrinter : IClaimedJournalPrinter_Base, Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation {}

@uuid("120ac970-9a75-4acf-aae7-09972bcf8794")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedLineDisplay")
interface IClaimedLineDisplay_Base : IInspectable
{
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
	HRESULT add_ReleaseDeviceRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedLineDisplay, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReleaseDeviceRequested(EventRegistrationToken token);
}
@uuid("120ac970-9a75-4acf-aae7-09972bcf8794")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedLineDisplay")
interface IClaimedLineDisplay : IClaimedLineDisplay_Base, Windows.Foundation.IClosable {}

@uuid("78ca98fb-8b6b-4973-86f0-3e570c351825")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedLineDisplay")
interface IClaimedLineDisplayStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedLineDisplay)* return_operation);
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedMagneticStripeReader")
interface IClaimedMagneticStripeReader_Base : IInspectable
{
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
	HRESULT abi_AuthenticateDeviceAsync(UINT32 __responseTokenSize, ubyte* responseToken, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_DeAuthenticateDeviceAsync(UINT32 __responseTokenSize, ubyte* responseToken, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_UpdateKeyAsync(HSTRING key, HSTRING keyName, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_ResetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncAction* return_result);
	HRESULT abi_UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) statistics, Windows.Foundation.IAsyncAction* return_result);
	HRESULT add_BankCardDataReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderBankCardDataReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_BankCardDataReceived(EventRegistrationToken token);
	HRESULT add_AamvaCardDataReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderAamvaCardDataReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_AamvaCardDataReceived(EventRegistrationToken token);
	HRESULT add_VendorSpecificDataReceived(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_VendorSpecificDataReceived(EventRegistrationToken token);
	HRESULT add_ReleaseDeviceRequested(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReleaseDeviceRequested(EventRegistrationToken token);
	HRESULT add_ErrorOccurred(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderErrorOccurredEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ErrorOccurred(EventRegistrationToken token);
}
@uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedMagneticStripeReader")
interface IClaimedMagneticStripeReader : IClaimedMagneticStripeReader_Base, Windows.Foundation.IClosable {}

@uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedPosPrinter")
interface IClaimedPosPrinter_Base : IInspectable
{
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
	HRESULT abi_UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) statistics, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT add_ReleaseDeviceRequested(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedPosPrinter, Windows.Devices.PointOfService.PosPrinterReleaseDeviceRequestedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_ReleaseDeviceRequested(EventRegistrationToken token);
}
@uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedPosPrinter")
interface IClaimedPosPrinter : IClaimedPosPrinter_Base, Windows.Foundation.IClosable {}

@uuid("9ad27a74-dd61-4ee2-9837-5b5d72d538b9")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedReceiptPrinter")
interface IClaimedReceiptPrinter_Base : IInspectable
{
extern(Windows):
	HRESULT get_SidewaysMaxLines(UINT32* return_value);
	HRESULT get_SidewaysMaxChars(UINT32* return_value);
	HRESULT get_LinesToPaperCut(UINT32* return_value);
	HRESULT get_PageSize(Windows.Foundation.Size* return_value);
	HRESULT get_PrintArea(Windows.Foundation.Rect* return_value);
	HRESULT abi_CreateJob(Windows.Devices.PointOfService.ReceiptPrintJob* return_value);
}
@uuid("9ad27a74-dd61-4ee2-9837-5b5d72d538b9")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedReceiptPrinter")
interface IClaimedReceiptPrinter : IClaimedReceiptPrinter_Base, Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation {}

@uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedSlipPrinter")
interface IClaimedSlipPrinter_Base : IInspectable
{
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
@uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f")
@WinrtFactory("Windows.Devices.PointOfService.ClaimedSlipPrinter")
interface IClaimedSlipPrinter : IClaimedSlipPrinter_Base, Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation {}

@uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c")
interface ICommonClaimedPosPrinterStation : IInspectable
{
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
interface ICommonReceiptSlipCapabilities_Base : IInspectable
{
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
@uuid("09286b8b-9873-4d05-bfbe-4727a6038f69")
interface ICommonReceiptSlipCapabilities : ICommonReceiptSlipCapabilities_Base, Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities {}

@uuid("3b5ccc43-e047-4463-bb58-17b5ba1d8056")
@WinrtFactory("Windows.Devices.PointOfService.JournalPrinterCapabilities")
interface IJournalPrinterCapabilities_Base : IInspectable
{
}
@uuid("3b5ccc43-e047-4463-bb58-17b5ba1d8056")
@WinrtFactory("Windows.Devices.PointOfService.JournalPrinterCapabilities")
interface IJournalPrinterCapabilities : IJournalPrinterCapabilities_Base, Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities {}

@uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c")
@WinrtFactory("Windows.Devices.PointOfService.LineDisplay")
interface ILineDisplay_Base : IInspectable
{
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
@uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c")
@WinrtFactory("Windows.Devices.PointOfService.LineDisplay")
interface ILineDisplay : ILineDisplay_Base, Windows.Foundation.IClosable {}

@uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55")
@WinrtFactory("Windows.Devices.PointOfService.LineDisplayCapabilities")
interface ILineDisplayCapabilities : IInspectable
{
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
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.LineDisplay)* return_operation);
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.LineDisplay)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_result);
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("d21feef4-2364-4be5-bee1-851680af4964")
@WinrtFactory("Windows.Devices.PointOfService.LineDisplayWindow")
interface ILineDisplayWindow_Base : IInspectable
{
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
@uuid("d21feef4-2364-4be5-bee1-851680af4964")
@WinrtFactory("Windows.Devices.PointOfService.LineDisplayWindow")
interface ILineDisplayWindow : ILineDisplayWindow_Base, Windows.Foundation.IClosable {}

@uuid("1a92b015-47c3-468a-9333-0c6517574883")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReader")
interface IMagneticStripeReader : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Capabilities(Windows.Devices.PointOfService.MagneticStripeReaderCapabilities* return_value);
	HRESULT get_SupportedCardTypes(UINT32* out___valueSize, UINT32** return_value);
	HRESULT get_DeviceAuthenticationProtocol(Windows.Devices.PointOfService.MagneticStripeReaderAuthenticationProtocol* return_value);
	HRESULT abi_CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_ClaimReaderAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader)* return_operation);
	HRESULT abi_RetrieveStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_operation);
	HRESULT abi_GetErrorReportingType(Windows.Devices.PointOfService.MagneticStripeReaderErrorReportingType* return_value);
	HRESULT add_StatusUpdated(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.MagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderStatusUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusUpdated(EventRegistrationToken token);
}

@uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderAamvaCardDataReceivedEventArgs")
interface IMagneticStripeReaderAamvaCardDataReceivedEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_None(UINT32* return_value);
	HRESULT get_TripleDesDukpt(UINT32* return_value);
	HRESULT get_ExtendedBase(UINT32* return_value);
}

@uuid("1fedf95d-2c84-41ad-b778-f2356a789ab1")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderErrorOccurredEventArgs")
interface IMagneticStripeReaderErrorOccurredEventArgs : IInspectable
{
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
extern(Windows):
	HRESULT get_CardType(UINT32* return_value);
	HRESULT get_Track1(Windows.Devices.PointOfService.MagneticStripeReaderTrackData* return_value);
	HRESULT get_Track2(Windows.Devices.PointOfService.MagneticStripeReaderTrackData* return_value);
	HRESULT get_Track3(Windows.Devices.PointOfService.MagneticStripeReaderTrackData* return_value);
	HRESULT get_Track4(Windows.Devices.PointOfService.MagneticStripeReaderTrackData* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING)* return_value);
	HRESULT get_CardAuthenticationData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_CardAuthenticationDataLength(UINT32* return_value);
	HRESULT get_AdditionalSecurityInformation(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("c45fab4a-efd7-4760-a5ce-15b0e47e94eb")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReader")
interface IMagneticStripeReaderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.MagneticStripeReader)* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.MagneticStripeReader)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("8cadc362-d667-48fa-86bc-f5ae1189262b")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReader")
interface IMagneticStripeReaderStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("09cc6bb0-3262-401d-9e8a-e80d6358906b")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderStatusUpdatedEventArgs")
interface IMagneticStripeReaderStatusUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.PointOfService.MagneticStripeReaderStatus* return_value);
	HRESULT get_ExtendedStatus(UINT32* return_value);
}

@uuid("104cf671-4a9d-446e-abc5-20402307ba36")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderTrackData")
interface IMagneticStripeReaderTrackData : IInspectable
{
extern(Windows):
	HRESULT get_Data(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_DiscretionaryData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_EncryptedData(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("af0a5514-59cc-4a60-99e8-99a53dace5aa")
@WinrtFactory("Windows.Devices.PointOfService.MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs")
interface IMagneticStripeReaderVendorSpecificCardDataReceivedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Report(Windows.Devices.PointOfService.MagneticStripeReaderReport* return_value);
}

@uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinter")
interface IPosPrinter : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_Capabilities(Windows.Devices.PointOfService.PosPrinterCapabilities* return_value);
	HRESULT get_SupportedCharacterSets(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_SupportedTypeFaces(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Status(Windows.Devices.PointOfService.PosPrinterStatus* return_value);
	HRESULT abi_ClaimPrinterAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedPosPrinter)* return_operation);
	HRESULT abi_CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT abi_GetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories, Windows.Foundation.IAsyncOperation!(HSTRING)* return_operation);
	HRESULT add_StatusUpdated(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.PosPrinter, Windows.Devices.PointOfService.PosPrinterStatusUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_StatusUpdated(EventRegistrationToken token);
}

@uuid("cde95721-4380-4985-adc5-39db30cd93bc")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinterCapabilities")
interface IPosPrinterCapabilities : IInspectable
{
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
extern(Windows):
	HRESULT get_Utf16LE(UINT32* return_value);
	HRESULT get_Ascii(UINT32* return_value);
	HRESULT get_Ansi(UINT32* return_value);
}

@uuid("9a94005c-0615-4591-a58f-30f87edfe2e4")
interface IPosPrinterJob : IInspectable
{
extern(Windows):
	HRESULT abi_Print(HSTRING data);
	HRESULT abi_PrintLine(HSTRING data);
	HRESULT abi_PrintNewline();
	HRESULT abi_ExecuteAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
}

@uuid("2bcba359-1cef-40b2-9ecb-f927f856ae3c")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinterReleaseDeviceRequestedEventArgs")
interface IPosPrinterReleaseDeviceRequestedEventArgs : IInspectable
{
}

@uuid("8ce0d4ea-132f-4cdf-a64a-2d0d7c96a85b")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinter")
interface IPosPrinterStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefaultAsync(Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.PosPrinter)* return_result);
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.PosPrinter)* return_result);
	HRESULT abi_GetDeviceSelector(HSTRING* return_value);
}

@uuid("eecd2c1c-b0d0-42e7-b137-b89b16244d41")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinter")
interface IPosPrinterStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes, HSTRING* return_value);
}

@uuid("d1f0c730-da40-4328-bf76-5156fa33b747")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinterStatus")
interface IPosPrinterStatus : IInspectable
{
extern(Windows):
	HRESULT get_StatusKind(Windows.Devices.PointOfService.PosPrinterStatusKind* return_value);
	HRESULT get_ExtendedStatus(UINT32* return_value);
}

@uuid("2edb87df-13a6-428d-ba81-b0e7c3e5a3cd")
@WinrtFactory("Windows.Devices.PointOfService.PosPrinterStatusUpdatedEventArgs")
interface IPosPrinterStatusUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Devices.PointOfService.PosPrinterStatus* return_value);
}

@uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc")
interface IReceiptOrSlipJob_Base : IInspectable
{
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
@uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc")
interface IReceiptOrSlipJob : IReceiptOrSlipJob_Base, Windows.Devices.PointOfService.IPosPrinterJob {}

@uuid("aa96066e-acad-4b79-9d0f-c0cfc08dc77b")
@WinrtFactory("Windows.Devices.PointOfService.ReceiptPrintJob")
interface IReceiptPrintJob_Base : IInspectable
{
extern(Windows):
	HRESULT abi_MarkFeed(Windows.Devices.PointOfService.PosPrinterMarkFeedKind kind);
	HRESULT abi_CutPaper(double percentage);
	HRESULT abi_CutPaperDefault();
}
@uuid("aa96066e-acad-4b79-9d0f-c0cfc08dc77b")
@WinrtFactory("Windows.Devices.PointOfService.ReceiptPrintJob")
interface IReceiptPrintJob : IReceiptPrintJob_Base, Windows.Devices.PointOfService.IReceiptOrSlipJob, Windows.Devices.PointOfService.IPosPrinterJob {}

@uuid("b8f0b58f-51a8-43fc-9bd5-8de272a6415b")
@WinrtFactory("Windows.Devices.PointOfService.ReceiptPrinterCapabilities")
interface IReceiptPrinterCapabilities_Base : IInspectable
{
extern(Windows):
	HRESULT get_CanCutPaper(bool* return_value);
	HRESULT get_IsStampSupported(bool* return_value);
	HRESULT get_MarkFeedCapabilities(Windows.Devices.PointOfService.PosPrinterMarkFeedCapabilities* return_value);
}
@uuid("b8f0b58f-51a8-43fc-9bd5-8de272a6415b")
@WinrtFactory("Windows.Devices.PointOfService.ReceiptPrinterCapabilities")
interface IReceiptPrinterCapabilities : IReceiptPrinterCapabilities_Base, Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities, Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities {}

@uuid("99b16399-488c-4157-8ac2-9f57f708d3db")
@WinrtFactory("Windows.Devices.PointOfService.SlipPrinterCapabilities")
interface ISlipPrinterCapabilities_Base : IInspectable
{
extern(Windows):
	HRESULT get_IsFullLengthSupported(bool* return_value);
	HRESULT get_IsBothSidesPrintingSupported(bool* return_value);
}
@uuid("99b16399-488c-4157-8ac2-9f57f708d3db")
@WinrtFactory("Windows.Devices.PointOfService.SlipPrinterCapabilities")
interface ISlipPrinterCapabilities : ISlipPrinterCapabilities_Base, Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities, Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities {}

@uuid("2b998c3a-555c-4889-8ed8-c599bb3a712a")
@WinrtFactory("Windows.Devices.PointOfService.UnifiedPosErrorData")
interface IUnifiedPosErrorData : IInspectable
{
extern(Windows):
	HRESULT get_Message(HSTRING* return_value);
	HRESULT get_Severity(Windows.Devices.PointOfService.UnifiedPosErrorSeverity* return_value);
	HRESULT get_Reason(Windows.Devices.PointOfService.UnifiedPosErrorReason* return_value);
	HRESULT get_ExtendedReason(UINT32* return_value);
}

interface BarcodeScanner : Windows.Devices.PointOfService.IBarcodeScanner, Windows.Devices.PointOfService.IBarcodeScanner2, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.BarcodeScannerCapabilities Capabilities()
	{
		Windows.Devices.PointOfService.BarcodeScannerCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).get_Capabilities(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedBarcodeScanner) ClaimScannerAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedBarcodeScanner) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).abi_ClaimScannerAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).abi_CheckHealthAsync(level, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(UINT32)) GetSupportedSymbologiesAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(UINT32)) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).abi_GetSupportedSymbologiesAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) IsSymbologySupportedAsync(UINT32 barcodeSymbology)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).abi_IsSymbologySupportedAsync(barcodeSymbology, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) RetrieveStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).abi_RetrieveStatisticsAsync(statisticsCategories, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) GetSupportedProfiles()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).abi_GetSupportedProfiles(&_ret));
		return _ret;
	}
	final bool IsProfileSupported(HSTRING profile)
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).abi_IsProfileSupported(profile, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnStatusUpdated(void delegate(Windows.Devices.PointOfService.BarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerStatusUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).add_StatusUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.BarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerStatusUpdatedEventArgs), Windows.Devices.PointOfService.BarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerStatusUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStatusUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner)this.asInterface(uuid("bea33e06-b264-4f03-a9c1-45b20f01134f"))).remove_StatusUpdated(token));
	}
	final HSTRING VideoDeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScanner2)this.asInterface(uuid("89215167-8cee-436d-89ab-8dfb43bb4286"))).get_VideoDeviceId(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.PointOfService.IBarcodeScannerStatics _staticInstance;
	public static Windows.Devices.PointOfService.IBarcodeScannerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.PointOfService.IBarcodeScannerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeScanner) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeScanner) _ret;
		Debug.OK(staticInstance.abi_GetDefaultAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeScanner) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeScanner) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
}

interface BarcodeScannerCapabilities : Windows.Devices.PointOfService.IBarcodeScannerCapabilities, Windows.Devices.PointOfService.IBarcodeScannerCapabilities1
{
extern(Windows):
	final Windows.Devices.PointOfService.UnifiedPosPowerReportingType PowerReportingType()
	{
		Windows.Devices.PointOfService.UnifiedPosPowerReportingType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerCapabilities)this.asInterface(uuid("c60691e4-f2c8-4420-a307-b12ef6622857"))).get_PowerReportingType(&_ret));
		return _ret;
	}
	final bool IsStatisticsReportingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerCapabilities)this.asInterface(uuid("c60691e4-f2c8-4420-a307-b12ef6622857"))).get_IsStatisticsReportingSupported(&_ret));
		return _ret;
	}
	final bool IsStatisticsUpdatingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerCapabilities)this.asInterface(uuid("c60691e4-f2c8-4420-a307-b12ef6622857"))).get_IsStatisticsUpdatingSupported(&_ret));
		return _ret;
	}
	final bool IsImagePreviewSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerCapabilities)this.asInterface(uuid("c60691e4-f2c8-4420-a307-b12ef6622857"))).get_IsImagePreviewSupported(&_ret));
		return _ret;
	}
	final bool IsSoftwareTriggerSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerCapabilities1)this.asInterface(uuid("8e5ab3e9-0e2c-472f-a1cc-ee8054b6a684"))).get_IsSoftwareTriggerSupported(&_ret));
		return _ret;
	}
}

interface BarcodeScannerDataReceivedEventArgs : Windows.Devices.PointOfService.IBarcodeScannerDataReceivedEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.BarcodeScannerReport Report()
	{
		Windows.Devices.PointOfService.BarcodeScannerReport _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerDataReceivedEventArgs)this.asInterface(uuid("4234a7e2-ed97-467d-ad2b-01e44313a929"))).get_Report(&_ret));
		return _ret;
	}
}

interface BarcodeScannerErrorOccurredEventArgs : Windows.Devices.PointOfService.IBarcodeScannerErrorOccurredEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.BarcodeScannerReport PartialInputData()
	{
		Windows.Devices.PointOfService.BarcodeScannerReport _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerErrorOccurredEventArgs)this.asInterface(uuid("2cd2602f-cf3a-4002-a75a-c5ec468f0a20"))).get_PartialInputData(&_ret));
		return _ret;
	}
	final bool IsRetriable()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerErrorOccurredEventArgs)this.asInterface(uuid("2cd2602f-cf3a-4002-a75a-c5ec468f0a20"))).get_IsRetriable(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.UnifiedPosErrorData ErrorData()
	{
		Windows.Devices.PointOfService.UnifiedPosErrorData _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerErrorOccurredEventArgs)this.asInterface(uuid("2cd2602f-cf3a-4002-a75a-c5ec468f0a20"))).get_ErrorData(&_ret));
		return _ret;
	}
}

interface BarcodeScannerImagePreviewReceivedEventArgs : Windows.Devices.PointOfService.IBarcodeScannerImagePreviewReceivedEventArgs
{
extern(Windows):
	final Windows.Storage.Streams.IRandomAccessStreamWithContentType Preview()
	{
		Windows.Storage.Streams.IRandomAccessStreamWithContentType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerImagePreviewReceivedEventArgs)this.asInterface(uuid("f3b7de85-6e8b-434e-9f58-06ef26bc4baf"))).get_Preview(&_ret));
		return _ret;
	}
}

interface BarcodeScannerReport : Windows.Devices.PointOfService.IBarcodeScannerReport
{
extern(Windows):
	final UINT32 ScanDataType()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerReport)this.asInterface(uuid("5ce4d8b0-a489-4b96-86c4-f0bf8a37753d"))).get_ScanDataType(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer ScanData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerReport)this.asInterface(uuid("5ce4d8b0-a489-4b96-86c4-f0bf8a37753d"))).get_ScanData(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer ScanDataLabel()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerReport)this.asInterface(uuid("5ce4d8b0-a489-4b96-86c4-f0bf8a37753d"))).get_ScanDataLabel(&_ret));
		return _ret;
	}
}

interface BarcodeScannerStatusUpdatedEventArgs : Windows.Devices.PointOfService.IBarcodeScannerStatusUpdatedEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.BarcodeScannerStatus Status()
	{
		Windows.Devices.PointOfService.BarcodeScannerStatus _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerStatusUpdatedEventArgs)this.asInterface(uuid("355d8586-9c43-462b-a91a-816dc97f452c"))).get_Status(&_ret));
		return _ret;
	}
	final UINT32 ExtendedStatus()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeScannerStatusUpdatedEventArgs)this.asInterface(uuid("355d8586-9c43-462b-a91a-816dc97f452c"))).get_ExtendedStatus(&_ret));
		return _ret;
	}
}

interface BarcodeSymbologies
{
	private static Windows.Devices.PointOfService.IBarcodeSymbologiesStatics _staticInstance;
	public static Windows.Devices.PointOfService.IBarcodeSymbologiesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.PointOfService.IBarcodeSymbologiesStatics);
		return _staticInstance;
	}
	static UINT32 Unknown()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Unknown(&_ret));
		return _ret;
	}
	static UINT32 Ean8()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ean8(&_ret));
		return _ret;
	}
	static UINT32 Ean8Add2()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ean8Add2(&_ret));
		return _ret;
	}
	static UINT32 Ean8Add5()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ean8Add5(&_ret));
		return _ret;
	}
	static UINT32 Eanv()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Eanv(&_ret));
		return _ret;
	}
	static UINT32 EanvAdd2()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_EanvAdd2(&_ret));
		return _ret;
	}
	static UINT32 EanvAdd5()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_EanvAdd5(&_ret));
		return _ret;
	}
	static UINT32 Ean13()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ean13(&_ret));
		return _ret;
	}
	static UINT32 Ean13Add2()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ean13Add2(&_ret));
		return _ret;
	}
	static UINT32 Ean13Add5()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ean13Add5(&_ret));
		return _ret;
	}
	static UINT32 Isbn()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Isbn(&_ret));
		return _ret;
	}
	static UINT32 IsbnAdd5()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_IsbnAdd5(&_ret));
		return _ret;
	}
	static UINT32 Ismn()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ismn(&_ret));
		return _ret;
	}
	static UINT32 IsmnAdd2()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_IsmnAdd2(&_ret));
		return _ret;
	}
	static UINT32 IsmnAdd5()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_IsmnAdd5(&_ret));
		return _ret;
	}
	static UINT32 Issn()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Issn(&_ret));
		return _ret;
	}
	static UINT32 IssnAdd2()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_IssnAdd2(&_ret));
		return _ret;
	}
	static UINT32 IssnAdd5()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_IssnAdd5(&_ret));
		return _ret;
	}
	static UINT32 Ean99()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ean99(&_ret));
		return _ret;
	}
	static UINT32 Ean99Add2()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ean99Add2(&_ret));
		return _ret;
	}
	static UINT32 Ean99Add5()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ean99Add5(&_ret));
		return _ret;
	}
	static UINT32 Upca()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Upca(&_ret));
		return _ret;
	}
	static UINT32 UpcaAdd2()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UpcaAdd2(&_ret));
		return _ret;
	}
	static UINT32 UpcaAdd5()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UpcaAdd5(&_ret));
		return _ret;
	}
	static UINT32 Upce()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Upce(&_ret));
		return _ret;
	}
	static UINT32 UpceAdd2()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UpceAdd2(&_ret));
		return _ret;
	}
	static UINT32 UpceAdd5()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UpceAdd5(&_ret));
		return _ret;
	}
	static UINT32 UpcCoupon()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UpcCoupon(&_ret));
		return _ret;
	}
	static UINT32 TfStd()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_TfStd(&_ret));
		return _ret;
	}
	static UINT32 TfDis()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_TfDis(&_ret));
		return _ret;
	}
	static UINT32 TfInt()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_TfInt(&_ret));
		return _ret;
	}
	static UINT32 TfInd()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_TfInd(&_ret));
		return _ret;
	}
	static UINT32 TfMat()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_TfMat(&_ret));
		return _ret;
	}
	static UINT32 TfIata()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_TfIata(&_ret));
		return _ret;
	}
	static UINT32 Gs1DatabarType1()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Gs1DatabarType1(&_ret));
		return _ret;
	}
	static UINT32 Gs1DatabarType2()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Gs1DatabarType2(&_ret));
		return _ret;
	}
	static UINT32 Gs1DatabarType3()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Gs1DatabarType3(&_ret));
		return _ret;
	}
	static UINT32 Code39()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Code39(&_ret));
		return _ret;
	}
	static UINT32 Code39Ex()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Code39Ex(&_ret));
		return _ret;
	}
	static UINT32 Trioptic39()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Trioptic39(&_ret));
		return _ret;
	}
	static UINT32 Code32()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Code32(&_ret));
		return _ret;
	}
	static UINT32 Pzn()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Pzn(&_ret));
		return _ret;
	}
	static UINT32 Code93()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Code93(&_ret));
		return _ret;
	}
	static UINT32 Code93Ex()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Code93Ex(&_ret));
		return _ret;
	}
	static UINT32 Code128()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Code128(&_ret));
		return _ret;
	}
	static UINT32 Gs1128()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Gs1128(&_ret));
		return _ret;
	}
	static UINT32 Gs1128Coupon()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Gs1128Coupon(&_ret));
		return _ret;
	}
	static UINT32 UccEan128()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UccEan128(&_ret));
		return _ret;
	}
	static UINT32 Sisac()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Sisac(&_ret));
		return _ret;
	}
	static UINT32 Isbt()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Isbt(&_ret));
		return _ret;
	}
	static UINT32 Codabar()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Codabar(&_ret));
		return _ret;
	}
	static UINT32 Code11()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Code11(&_ret));
		return _ret;
	}
	static UINT32 Msi()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Msi(&_ret));
		return _ret;
	}
	static UINT32 Plessey()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Plessey(&_ret));
		return _ret;
	}
	static UINT32 Telepen()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Telepen(&_ret));
		return _ret;
	}
	static UINT32 Code16k()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Code16k(&_ret));
		return _ret;
	}
	static UINT32 CodablockA()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_CodablockA(&_ret));
		return _ret;
	}
	static UINT32 CodablockF()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_CodablockF(&_ret));
		return _ret;
	}
	static UINT32 Codablock128()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Codablock128(&_ret));
		return _ret;
	}
	static UINT32 Code49()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Code49(&_ret));
		return _ret;
	}
	static UINT32 Aztec()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Aztec(&_ret));
		return _ret;
	}
	static UINT32 DataCode()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_DataCode(&_ret));
		return _ret;
	}
	static UINT32 DataMatrix()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_DataMatrix(&_ret));
		return _ret;
	}
	static UINT32 HanXin()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_HanXin(&_ret));
		return _ret;
	}
	static UINT32 Maxicode()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Maxicode(&_ret));
		return _ret;
	}
	static UINT32 MicroPdf417()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_MicroPdf417(&_ret));
		return _ret;
	}
	static UINT32 MicroQr()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_MicroQr(&_ret));
		return _ret;
	}
	static UINT32 Pdf417()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Pdf417(&_ret));
		return _ret;
	}
	static UINT32 Qr()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Qr(&_ret));
		return _ret;
	}
	static UINT32 MsTag()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_MsTag(&_ret));
		return _ret;
	}
	static UINT32 Ccab()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ccab(&_ret));
		return _ret;
	}
	static UINT32 Ccc()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ccc(&_ret));
		return _ret;
	}
	static UINT32 Tlc39()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Tlc39(&_ret));
		return _ret;
	}
	static UINT32 AusPost()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_AusPost(&_ret));
		return _ret;
	}
	static UINT32 CanPost()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_CanPost(&_ret));
		return _ret;
	}
	static UINT32 ChinaPost()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_ChinaPost(&_ret));
		return _ret;
	}
	static UINT32 DutchKix()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_DutchKix(&_ret));
		return _ret;
	}
	static UINT32 InfoMail()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_InfoMail(&_ret));
		return _ret;
	}
	static UINT32 ItalianPost25()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_ItalianPost25(&_ret));
		return _ret;
	}
	static UINT32 ItalianPost39()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_ItalianPost39(&_ret));
		return _ret;
	}
	static UINT32 JapanPost()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_JapanPost(&_ret));
		return _ret;
	}
	static UINT32 KoreanPost()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_KoreanPost(&_ret));
		return _ret;
	}
	static UINT32 SwedenPost()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_SwedenPost(&_ret));
		return _ret;
	}
	static UINT32 UkPost()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UkPost(&_ret));
		return _ret;
	}
	static UINT32 UsIntelligent()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UsIntelligent(&_ret));
		return _ret;
	}
	static UINT32 UsIntelligentPkg()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UsIntelligentPkg(&_ret));
		return _ret;
	}
	static UINT32 UsPlanet()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UsPlanet(&_ret));
		return _ret;
	}
	static UINT32 UsPostNet()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_UsPostNet(&_ret));
		return _ret;
	}
	static UINT32 Us4StateFics()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Us4StateFics(&_ret));
		return _ret;
	}
	static UINT32 OcrA()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_OcrA(&_ret));
		return _ret;
	}
	static UINT32 OcrB()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_OcrB(&_ret));
		return _ret;
	}
	static UINT32 Micr()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Micr(&_ret));
		return _ret;
	}
	static UINT32 ExtendedBase()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_ExtendedBase(&_ret));
		return _ret;
	}
	static HSTRING GetName(UINT32 scanDataType)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetName(scanDataType, &_ret));
		return _ret;
	}
}

interface BarcodeSymbologyAttributes : Windows.Devices.PointOfService.IBarcodeSymbologyAttributes
{
extern(Windows):
	final bool IsCheckDigitValidationEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).get_IsCheckDigitValidationEnabled(&_ret));
		return _ret;
	}
	final void IsCheckDigitValidationEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).set_IsCheckDigitValidationEnabled(value));
	}
	final bool IsCheckDigitValidationSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).get_IsCheckDigitValidationSupported(&_ret));
		return _ret;
	}
	final bool IsCheckDigitTransmissionEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).get_IsCheckDigitTransmissionEnabled(&_ret));
		return _ret;
	}
	final void IsCheckDigitTransmissionEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).set_IsCheckDigitTransmissionEnabled(value));
	}
	final bool IsCheckDigitTransmissionSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).get_IsCheckDigitTransmissionSupported(&_ret));
		return _ret;
	}
	final UINT32 DecodeLength1()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).get_DecodeLength1(&_ret));
		return _ret;
	}
	final void DecodeLength1(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).set_DecodeLength1(value));
	}
	final UINT32 DecodeLength2()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).get_DecodeLength2(&_ret));
		return _ret;
	}
	final void DecodeLength2(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).set_DecodeLength2(value));
	}
	final Windows.Devices.PointOfService.BarcodeSymbologyDecodeLengthKind DecodeLengthKind()
	{
		Windows.Devices.PointOfService.BarcodeSymbologyDecodeLengthKind _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).get_DecodeLengthKind(&_ret));
		return _ret;
	}
	final void DecodeLengthKind(Windows.Devices.PointOfService.BarcodeSymbologyDecodeLengthKind value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).set_DecodeLengthKind(value));
	}
	final bool IsDecodeLengthSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IBarcodeSymbologyAttributes)this.asInterface(uuid("66413a78-ab7a-4ada-8ece-936014b2ead7"))).get_IsDecodeLengthSupported(&_ret));
		return _ret;
	}
}

interface CashDrawer : Windows.Devices.PointOfService.ICashDrawer, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawer)this.asInterface(uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc"))).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.CashDrawerCapabilities Capabilities()
	{
		Windows.Devices.PointOfService.CashDrawerCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawer)this.asInterface(uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc"))).get_Capabilities(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.CashDrawerStatus Status()
	{
		Windows.Devices.PointOfService.CashDrawerStatus _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawer)this.asInterface(uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc"))).get_Status(&_ret));
		return _ret;
	}
	final bool IsDrawerOpen()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawer)this.asInterface(uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc"))).get_IsDrawerOpen(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.CashDrawerEventSource DrawerEventSource()
	{
		Windows.Devices.PointOfService.CashDrawerEventSource _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawer)this.asInterface(uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc"))).get_DrawerEventSource(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedCashDrawer) ClaimDrawerAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedCashDrawer) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawer)this.asInterface(uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc"))).abi_ClaimDrawerAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawer)this.asInterface(uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc"))).abi_CheckHealthAsync(level, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) GetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawer)this.asInterface(uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc"))).abi_GetStatisticsAsync(statisticsCategories, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnStatusUpdated(void delegate(Windows.Devices.PointOfService.CashDrawer, Windows.Devices.PointOfService.CashDrawerStatusUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawer)this.asInterface(uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc"))).add_StatusUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawer, Windows.Devices.PointOfService.CashDrawerStatusUpdatedEventArgs), Windows.Devices.PointOfService.CashDrawer, Windows.Devices.PointOfService.CashDrawerStatusUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStatusUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawer)this.asInterface(uuid("9f88f5c8-de54-4aee-a890-920bcbfe30fc"))).remove_StatusUpdated(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.PointOfService.ICashDrawerStatics _staticInstance;
	public static Windows.Devices.PointOfService.ICashDrawerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.PointOfService.ICashDrawerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.CashDrawer) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.CashDrawer) _ret;
		Debug.OK(staticInstance.abi_GetDefaultAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.CashDrawer) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.CashDrawer) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
}

interface CashDrawerCapabilities : Windows.Devices.PointOfService.ICashDrawerCapabilities
{
extern(Windows):
	final Windows.Devices.PointOfService.UnifiedPosPowerReportingType PowerReportingType()
	{
		Windows.Devices.PointOfService.UnifiedPosPowerReportingType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCapabilities)this.asInterface(uuid("0bc6de0b-e8e7-4b1f-b1d1-3e501ad08247"))).get_PowerReportingType(&_ret));
		return _ret;
	}
	final bool IsStatisticsReportingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCapabilities)this.asInterface(uuid("0bc6de0b-e8e7-4b1f-b1d1-3e501ad08247"))).get_IsStatisticsReportingSupported(&_ret));
		return _ret;
	}
	final bool IsStatisticsUpdatingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCapabilities)this.asInterface(uuid("0bc6de0b-e8e7-4b1f-b1d1-3e501ad08247"))).get_IsStatisticsUpdatingSupported(&_ret));
		return _ret;
	}
	final bool IsStatusReportingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCapabilities)this.asInterface(uuid("0bc6de0b-e8e7-4b1f-b1d1-3e501ad08247"))).get_IsStatusReportingSupported(&_ret));
		return _ret;
	}
	final bool IsStatusMultiDrawerDetectSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCapabilities)this.asInterface(uuid("0bc6de0b-e8e7-4b1f-b1d1-3e501ad08247"))).get_IsStatusMultiDrawerDetectSupported(&_ret));
		return _ret;
	}
	final bool IsDrawerOpenSensorAvailable()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCapabilities)this.asInterface(uuid("0bc6de0b-e8e7-4b1f-b1d1-3e501ad08247"))).get_IsDrawerOpenSensorAvailable(&_ret));
		return _ret;
	}
}

interface CashDrawerCloseAlarm : Windows.Devices.PointOfService.ICashDrawerCloseAlarm
{
extern(Windows):
	final void AlarmTimeout(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).set_AlarmTimeout(value));
	}
	final Windows.Foundation.TimeSpan AlarmTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).get_AlarmTimeout(&_ret));
		return _ret;
	}
	final void BeepFrequency(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).set_BeepFrequency(value));
	}
	final UINT32 BeepFrequency()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).get_BeepFrequency(&_ret));
		return _ret;
	}
	final void BeepDuration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).set_BeepDuration(value));
	}
	final Windows.Foundation.TimeSpan BeepDuration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).get_BeepDuration(&_ret));
		return _ret;
	}
	final void BeepDelay(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).set_BeepDelay(value));
	}
	final Windows.Foundation.TimeSpan BeepDelay()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).get_BeepDelay(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAlarmTimeoutExpired(void delegate(Windows.Devices.PointOfService.CashDrawerCloseAlarm, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).add_AlarmTimeoutExpired(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawerCloseAlarm, IInspectable), Windows.Devices.PointOfService.CashDrawerCloseAlarm, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeAlarmTimeoutExpired(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).remove_AlarmTimeoutExpired(token));
	}
	final Windows.Foundation.IAsyncOperation!(bool) StartAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerCloseAlarm)this.asInterface(uuid("6bf88cc7-6f63-430e-ab3b-95d75ffbe87f"))).abi_StartAsync(&_ret));
		return _ret;
	}
}

interface CashDrawerClosedEventArgs : Windows.Devices.PointOfService.ICashDrawerEventSourceEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.CashDrawer CashDrawer()
	{
		Windows.Devices.PointOfService.CashDrawer _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerEventSourceEventArgs)this.asInterface(uuid("69cb3bc1-147f-421c-9c23-090123bb786c"))).get_CashDrawer(&_ret));
		return _ret;
	}
}

interface CashDrawerEventSource : Windows.Devices.PointOfService.ICashDrawerEventSource
{
extern(Windows):
	final EventRegistrationToken OnDrawerClosed(void delegate(Windows.Devices.PointOfService.CashDrawerEventSource, Windows.Devices.PointOfService.CashDrawerClosedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerEventSource)this.asInterface(uuid("e006e46c-f2f9-442f-8dd6-06c10a4227ba"))).add_DrawerClosed(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawerEventSource, Windows.Devices.PointOfService.CashDrawerClosedEventArgs), Windows.Devices.PointOfService.CashDrawerEventSource, Windows.Devices.PointOfService.CashDrawerClosedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDrawerClosed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerEventSource)this.asInterface(uuid("e006e46c-f2f9-442f-8dd6-06c10a4227ba"))).remove_DrawerClosed(token));
	}
	final EventRegistrationToken OnDrawerOpened(void delegate(Windows.Devices.PointOfService.CashDrawerEventSource, Windows.Devices.PointOfService.CashDrawerOpenedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerEventSource)this.asInterface(uuid("e006e46c-f2f9-442f-8dd6-06c10a4227ba"))).add_DrawerOpened(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.CashDrawerEventSource, Windows.Devices.PointOfService.CashDrawerOpenedEventArgs), Windows.Devices.PointOfService.CashDrawerEventSource, Windows.Devices.PointOfService.CashDrawerOpenedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDrawerOpened(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerEventSource)this.asInterface(uuid("e006e46c-f2f9-442f-8dd6-06c10a4227ba"))).remove_DrawerOpened(token));
	}
}

interface CashDrawerOpenedEventArgs : Windows.Devices.PointOfService.ICashDrawerEventSourceEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.CashDrawer CashDrawer()
	{
		Windows.Devices.PointOfService.CashDrawer _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerEventSourceEventArgs)this.asInterface(uuid("69cb3bc1-147f-421c-9c23-090123bb786c"))).get_CashDrawer(&_ret));
		return _ret;
	}
}

interface CashDrawerStatus : Windows.Devices.PointOfService.ICashDrawerStatus
{
extern(Windows):
	final Windows.Devices.PointOfService.CashDrawerStatusKind StatusKind()
	{
		Windows.Devices.PointOfService.CashDrawerStatusKind _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerStatus)this.asInterface(uuid("6bbd78bf-dca1-4e06-99eb-5af6a5aec108"))).get_StatusKind(&_ret));
		return _ret;
	}
	final UINT32 ExtendedStatus()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerStatus)this.asInterface(uuid("6bbd78bf-dca1-4e06-99eb-5af6a5aec108"))).get_ExtendedStatus(&_ret));
		return _ret;
	}
}

interface CashDrawerStatusUpdatedEventArgs : Windows.Devices.PointOfService.ICashDrawerStatusUpdatedEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.CashDrawerStatus Status()
	{
		Windows.Devices.PointOfService.CashDrawerStatus _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICashDrawerStatusUpdatedEventArgs)this.asInterface(uuid("30aae98a-0d70-459c-9553-87e124c52488"))).get_Status(&_ret));
		return _ret;
	}
}

interface ClaimedBarcodeScanner : Windows.Devices.PointOfService.IClaimedBarcodeScanner, Windows.Foundation.IClosable, Windows.Devices.PointOfService.IClaimedBarcodeScanner1, Windows.Devices.PointOfService.IClaimedBarcodeScanner2
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).get_DeviceId(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsDisabledOnDataReceived(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).set_IsDisabledOnDataReceived(value));
	}
	final bool IsDisabledOnDataReceived()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).get_IsDisabledOnDataReceived(&_ret));
		return _ret;
	}
	final void IsDecodeDataEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).set_IsDecodeDataEnabled(value));
	}
	final bool IsDecodeDataEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).get_IsDecodeDataEnabled(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction EnableAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).abi_EnableAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DisableAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).abi_DisableAsync(&_ret));
		return _ret;
	}
	final void RetainDevice()
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).abi_RetainDevice());
	}
	final Windows.Foundation.IAsyncAction SetActiveSymbologiesAsync(Windows.Foundation.Collections.IIterable!(UINT32) symbologies)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).abi_SetActiveSymbologiesAsync(symbologies, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ResetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).abi_ResetStatisticsAsync(statisticsCategories, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) statistics)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).abi_UpdateStatisticsAsync(statistics, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetActiveProfileAsync(HSTRING profile)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).abi_SetActiveProfileAsync(profile, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnDataReceived(void delegate(Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerDataReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).add_DataReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerDataReceivedEventArgs), Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerDataReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeDataReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).remove_DataReceived(token));
	}
	final EventRegistrationToken OnTriggerPressed(void delegate(IInspectable, Windows.Devices.PointOfService.ClaimedBarcodeScanner) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).add_TriggerPressed(event!(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner), IInspectable, Windows.Devices.PointOfService.ClaimedBarcodeScanner)(fn), &tok));
		return tok;
	}
	final void removeTriggerPressed(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).remove_TriggerPressed(token));
	}
	final EventRegistrationToken OnTriggerReleased(void delegate(IInspectable, Windows.Devices.PointOfService.ClaimedBarcodeScanner) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).add_TriggerReleased(event!(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner), IInspectable, Windows.Devices.PointOfService.ClaimedBarcodeScanner)(fn), &tok));
		return tok;
	}
	final void removeTriggerReleased(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).remove_TriggerReleased(token));
	}
	final EventRegistrationToken OnReleaseDeviceRequested(void delegate(IInspectable, Windows.Devices.PointOfService.ClaimedBarcodeScanner) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).add_ReleaseDeviceRequested(event!(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner), IInspectable, Windows.Devices.PointOfService.ClaimedBarcodeScanner)(fn), &tok));
		return tok;
	}
	final void removeReleaseDeviceRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).remove_ReleaseDeviceRequested(token));
	}
	final EventRegistrationToken OnImagePreviewReceived(void delegate(Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerImagePreviewReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).add_ImagePreviewReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerImagePreviewReceivedEventArgs), Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerImagePreviewReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeImagePreviewReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).remove_ImagePreviewReceived(token));
	}
	final EventRegistrationToken OnErrorOccurred(void delegate(Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerErrorOccurredEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).add_ErrorOccurred(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerErrorOccurredEventArgs), Windows.Devices.PointOfService.ClaimedBarcodeScanner, Windows.Devices.PointOfService.BarcodeScannerErrorOccurredEventArgs)(fn), &tok));
		return tok;
	}
	final void removeErrorOccurred(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner)this.asInterface(uuid("4a63b49c-8fa4-4332-bb26-945d11d81e0f"))).remove_ErrorOccurred(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final Windows.Foundation.IAsyncAction StartSoftwareTriggerAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner1)this.asInterface(uuid("f61aad0c-8551-42b4-998c-970c20210a22"))).abi_StartSoftwareTriggerAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction StopSoftwareTriggerAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner1)this.asInterface(uuid("f61aad0c-8551-42b4-998c-970c20210a22"))).abi_StopSoftwareTriggerAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeSymbologyAttributes) GetSymbologyAttributesAsync(UINT32 barcodeSymbology)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.BarcodeSymbologyAttributes) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner2)this.asInterface(uuid("e3b59e8c-2d8b-4f70-8af3-3448bedd5fe2"))).abi_GetSymbologyAttributesAsync(barcodeSymbology, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) SetSymbologyAttributesAsync(UINT32 barcodeSymbology, Windows.Devices.PointOfService.BarcodeSymbologyAttributes attributes)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedBarcodeScanner2)this.asInterface(uuid("e3b59e8c-2d8b-4f70-8af3-3448bedd5fe2"))).abi_SetSymbologyAttributesAsync(barcodeSymbology, attributes, &_ret));
		return _ret;
	}
}

interface ClaimedCashDrawer : Windows.Devices.PointOfService.IClaimedCashDrawer, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).get_DeviceId(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).get_IsEnabled(&_ret));
		return _ret;
	}
	final bool IsDrawerOpen()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).get_IsDrawerOpen(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.CashDrawerCloseAlarm CloseAlarm()
	{
		Windows.Devices.PointOfService.CashDrawerCloseAlarm _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).get_CloseAlarm(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) OpenDrawerAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).abi_OpenDrawerAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) EnableAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).abi_EnableAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) DisableAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).abi_DisableAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RetainDeviceAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).abi_RetainDeviceAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) ResetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).abi_ResetStatisticsAsync(statisticsCategories, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) statistics)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).abi_UpdateStatisticsAsync(statistics, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnReleaseDeviceRequested(void delegate(Windows.Devices.PointOfService.ClaimedCashDrawer, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).add_ReleaseDeviceRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedCashDrawer, IInspectable), Windows.Devices.PointOfService.ClaimedCashDrawer, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeReleaseDeviceRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedCashDrawer)this.asInterface(uuid("ca3f99af-abb8-42c1-8a84-5c66512f5a75"))).remove_ReleaseDeviceRequested(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface ClaimedJournalPrinter : Windows.Devices.PointOfService.IClaimedJournalPrinter, Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation
{
extern(Windows):
	final Windows.Devices.PointOfService.JournalPrintJob CreateJob()
	{
		Windows.Devices.PointOfService.JournalPrintJob _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedJournalPrinter)this.asInterface(uuid("67ea0630-517d-487f-9fdf-d2e0a0a264a5"))).abi_CreateJob(&_ret));
		return _ret;
	}
	final void CharactersPerLine(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_CharactersPerLine(value));
	}
	final UINT32 CharactersPerLine()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_CharactersPerLine(&_ret));
		return _ret;
	}
	final void LineHeight(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_LineHeight(value));
	}
	final UINT32 LineHeight()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_LineHeight(&_ret));
		return _ret;
	}
	final void LineSpacing(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_LineSpacing(value));
	}
	final UINT32 LineSpacing()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_LineSpacing(&_ret));
		return _ret;
	}
	final UINT32 LineWidth()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_LineWidth(&_ret));
		return _ret;
	}
	final void IsLetterQuality(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_IsLetterQuality(value));
	}
	final bool IsLetterQuality()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsLetterQuality(&_ret));
		return _ret;
	}
	final bool IsPaperNearEnd()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsPaperNearEnd(&_ret));
		return _ret;
	}
	final void ColorCartridge(Windows.Devices.PointOfService.PosPrinterColorCartridge value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_ColorCartridge(value));
	}
	final Windows.Devices.PointOfService.PosPrinterColorCartridge ColorCartridge()
	{
		Windows.Devices.PointOfService.PosPrinterColorCartridge _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_ColorCartridge(&_ret));
		return _ret;
	}
	final bool IsCoverOpen()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsCoverOpen(&_ret));
		return _ret;
	}
	final bool IsCartridgeRemoved()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsCartridgeRemoved(&_ret));
		return _ret;
	}
	final bool IsCartridgeEmpty()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsCartridgeEmpty(&_ret));
		return _ret;
	}
	final bool IsHeadCleaning()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsHeadCleaning(&_ret));
		return _ret;
	}
	final bool IsPaperEmpty()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsPaperEmpty(&_ret));
		return _ret;
	}
	final bool IsReadyToPrint()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsReadyToPrint(&_ret));
		return _ret;
	}
	final bool ValidateData(HSTRING data)
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).abi_ValidateData(data, &_ret));
		return _ret;
	}
}

interface ClaimedLineDisplay : Windows.Devices.PointOfService.IClaimedLineDisplay, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.LineDisplayCapabilities Capabilities()
	{
		Windows.Devices.PointOfService.LineDisplayCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).get_Capabilities(&_ret));
		return _ret;
	}
	final HSTRING PhysicalDeviceName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).get_PhysicalDeviceName(&_ret));
		return _ret;
	}
	final HSTRING PhysicalDeviceDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).get_PhysicalDeviceDescription(&_ret));
		return _ret;
	}
	final HSTRING DeviceControlDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).get_DeviceControlDescription(&_ret));
		return _ret;
	}
	final HSTRING DeviceControlVersion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).get_DeviceControlVersion(&_ret));
		return _ret;
	}
	final HSTRING DeviceServiceVersion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).get_DeviceServiceVersion(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.LineDisplayWindow DefaultWindow()
	{
		Windows.Devices.PointOfService.LineDisplayWindow _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).get_DefaultWindow(&_ret));
		return _ret;
	}
	final void RetainDevice()
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).abi_RetainDevice());
	}
	final EventRegistrationToken OnReleaseDeviceRequested(void delegate(Windows.Devices.PointOfService.ClaimedLineDisplay, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).add_ReleaseDeviceRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedLineDisplay, IInspectable), Windows.Devices.PointOfService.ClaimedLineDisplay, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeReleaseDeviceRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedLineDisplay)this.asInterface(uuid("120ac970-9a75-4acf-aae7-09972bcf8794"))).remove_ReleaseDeviceRequested(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.PointOfService.IClaimedLineDisplayStatics _staticInstance;
	public static Windows.Devices.PointOfService.IClaimedLineDisplayStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.PointOfService.IClaimedLineDisplayStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedLineDisplay) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedLineDisplay) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelectorWithConnectionTypes(connectionTypes, &_ret));
		return _ret;
	}
}

interface ClaimedMagneticStripeReader : Windows.Devices.PointOfService.IClaimedMagneticStripeReader, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).get_DeviceId(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).get_IsEnabled(&_ret));
		return _ret;
	}
	final void IsDisabledOnDataReceived(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).set_IsDisabledOnDataReceived(value));
	}
	final bool IsDisabledOnDataReceived()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).get_IsDisabledOnDataReceived(&_ret));
		return _ret;
	}
	final void IsDecodeDataEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).set_IsDecodeDataEnabled(value));
	}
	final bool IsDecodeDataEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).get_IsDecodeDataEnabled(&_ret));
		return _ret;
	}
	final bool IsDeviceAuthenticated()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).get_IsDeviceAuthenticated(&_ret));
		return _ret;
	}
	final void DataEncryptionAlgorithm(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).set_DataEncryptionAlgorithm(value));
	}
	final UINT32 DataEncryptionAlgorithm()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).get_DataEncryptionAlgorithm(&_ret));
		return _ret;
	}
	final void TracksToRead(Windows.Devices.PointOfService.MagneticStripeReaderTrackIds value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).set_TracksToRead(value));
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderTrackIds TracksToRead()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderTrackIds _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).get_TracksToRead(&_ret));
		return _ret;
	}
	final void IsTransmitSentinelsEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).set_IsTransmitSentinelsEnabled(value));
	}
	final bool IsTransmitSentinelsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).get_IsTransmitSentinelsEnabled(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction EnableAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).abi_EnableAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DisableAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).abi_DisableAsync(&_ret));
		return _ret;
	}
	final void RetainDevice()
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).abi_RetainDevice());
	}
	final void SetErrorReportingType(Windows.Devices.PointOfService.MagneticStripeReaderErrorReportingType value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).abi_SetErrorReportingType(value));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) RetrieveDeviceAuthenticationDataAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).abi_RetrieveDeviceAuthenticationDataAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction AuthenticateDeviceAsync(UINT32 __responseTokenSize, ubyte* responseToken)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).abi_AuthenticateDeviceAsync(__responseTokenSize, responseToken, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction DeAuthenticateDeviceAsync(UINT32 __responseTokenSize, ubyte* responseToken)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).abi_DeAuthenticateDeviceAsync(__responseTokenSize, responseToken, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UpdateKeyAsync(HSTRING key, HSTRING keyName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).abi_UpdateKeyAsync(key, keyName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ResetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).abi_ResetStatisticsAsync(statisticsCategories, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) statistics)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).abi_UpdateStatisticsAsync(statistics, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnBankCardDataReceived(void delegate(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderBankCardDataReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).add_BankCardDataReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderBankCardDataReceivedEventArgs), Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderBankCardDataReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBankCardDataReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).remove_BankCardDataReceived(token));
	}
	final EventRegistrationToken OnAamvaCardDataReceived(void delegate(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderAamvaCardDataReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).add_AamvaCardDataReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderAamvaCardDataReceivedEventArgs), Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderAamvaCardDataReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAamvaCardDataReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).remove_AamvaCardDataReceived(token));
	}
	final EventRegistrationToken OnVendorSpecificDataReceived(void delegate(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).add_VendorSpecificDataReceived(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs), Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeVendorSpecificDataReceived(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).remove_VendorSpecificDataReceived(token));
	}
	final EventRegistrationToken OnReleaseDeviceRequested(void delegate(IInspectable, Windows.Devices.PointOfService.ClaimedMagneticStripeReader) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).add_ReleaseDeviceRequested(event!(Windows.Foundation.EventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader), IInspectable, Windows.Devices.PointOfService.ClaimedMagneticStripeReader)(fn), &tok));
		return tok;
	}
	final void removeReleaseDeviceRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).remove_ReleaseDeviceRequested(token));
	}
	final EventRegistrationToken OnErrorOccurred(void delegate(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderErrorOccurredEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).add_ErrorOccurred(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderErrorOccurredEventArgs), Windows.Devices.PointOfService.ClaimedMagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderErrorOccurredEventArgs)(fn), &tok));
		return tok;
	}
	final void removeErrorOccurred(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedMagneticStripeReader)this.asInterface(uuid("475ca8f3-9417-48bc-b9d7-4163a7844c02"))).remove_ErrorOccurred(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface ClaimedPosPrinter : Windows.Devices.PointOfService.IClaimedPosPrinter, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).get_DeviceId(&_ret));
		return _ret;
	}
	final bool IsEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).get_IsEnabled(&_ret));
		return _ret;
	}
	final void CharacterSet(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).set_CharacterSet(value));
	}
	final UINT32 CharacterSet()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).get_CharacterSet(&_ret));
		return _ret;
	}
	final bool IsCoverOpen()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).get_IsCoverOpen(&_ret));
		return _ret;
	}
	final void IsCharacterSetMappingEnabled(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).set_IsCharacterSetMappingEnabled(value));
	}
	final bool IsCharacterSetMappingEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).get_IsCharacterSetMappingEnabled(&_ret));
		return _ret;
	}
	final void MapMode(Windows.Devices.PointOfService.PosPrinterMapMode value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).set_MapMode(value));
	}
	final Windows.Devices.PointOfService.PosPrinterMapMode MapMode()
	{
		Windows.Devices.PointOfService.PosPrinterMapMode _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).get_MapMode(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.ClaimedReceiptPrinter Receipt()
	{
		Windows.Devices.PointOfService.ClaimedReceiptPrinter _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).get_Receipt(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.ClaimedSlipPrinter Slip()
	{
		Windows.Devices.PointOfService.ClaimedSlipPrinter _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).get_Slip(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.ClaimedJournalPrinter Journal()
	{
		Windows.Devices.PointOfService.ClaimedJournalPrinter _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).get_Journal(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) EnableAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).abi_EnableAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) DisableAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).abi_DisableAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RetainDeviceAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).abi_RetainDeviceAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) ResetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).abi_ResetStatisticsAsync(statisticsCategories, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) UpdateStatisticsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, HSTRING)) statistics)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).abi_UpdateStatisticsAsync(statistics, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnReleaseDeviceRequested(void delegate(Windows.Devices.PointOfService.ClaimedPosPrinter, Windows.Devices.PointOfService.PosPrinterReleaseDeviceRequestedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).add_ReleaseDeviceRequested(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.ClaimedPosPrinter, Windows.Devices.PointOfService.PosPrinterReleaseDeviceRequestedEventArgs), Windows.Devices.PointOfService.ClaimedPosPrinter, Windows.Devices.PointOfService.PosPrinterReleaseDeviceRequestedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeReleaseDeviceRequested(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedPosPrinter)this.asInterface(uuid("6d64ce0c-e03e-4b14-a38e-c28c34b86353"))).remove_ReleaseDeviceRequested(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface ClaimedReceiptPrinter : Windows.Devices.PointOfService.IClaimedReceiptPrinter, Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation
{
extern(Windows):
	final UINT32 SidewaysMaxLines()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedReceiptPrinter)this.asInterface(uuid("9ad27a74-dd61-4ee2-9837-5b5d72d538b9"))).get_SidewaysMaxLines(&_ret));
		return _ret;
	}
	final UINT32 SidewaysMaxChars()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedReceiptPrinter)this.asInterface(uuid("9ad27a74-dd61-4ee2-9837-5b5d72d538b9"))).get_SidewaysMaxChars(&_ret));
		return _ret;
	}
	final UINT32 LinesToPaperCut()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedReceiptPrinter)this.asInterface(uuid("9ad27a74-dd61-4ee2-9837-5b5d72d538b9"))).get_LinesToPaperCut(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size PageSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedReceiptPrinter)this.asInterface(uuid("9ad27a74-dd61-4ee2-9837-5b5d72d538b9"))).get_PageSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect PrintArea()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedReceiptPrinter)this.asInterface(uuid("9ad27a74-dd61-4ee2-9837-5b5d72d538b9"))).get_PrintArea(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.ReceiptPrintJob CreateJob()
	{
		Windows.Devices.PointOfService.ReceiptPrintJob _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedReceiptPrinter)this.asInterface(uuid("9ad27a74-dd61-4ee2-9837-5b5d72d538b9"))).abi_CreateJob(&_ret));
		return _ret;
	}
	final void CharactersPerLine(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_CharactersPerLine(value));
	}
	final UINT32 CharactersPerLine()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_CharactersPerLine(&_ret));
		return _ret;
	}
	final void LineHeight(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_LineHeight(value));
	}
	final UINT32 LineHeight()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_LineHeight(&_ret));
		return _ret;
	}
	final void LineSpacing(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_LineSpacing(value));
	}
	final UINT32 LineSpacing()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_LineSpacing(&_ret));
		return _ret;
	}
	final UINT32 LineWidth()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_LineWidth(&_ret));
		return _ret;
	}
	final void IsLetterQuality(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_IsLetterQuality(value));
	}
	final bool IsLetterQuality()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsLetterQuality(&_ret));
		return _ret;
	}
	final bool IsPaperNearEnd()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsPaperNearEnd(&_ret));
		return _ret;
	}
	final void ColorCartridge(Windows.Devices.PointOfService.PosPrinterColorCartridge value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_ColorCartridge(value));
	}
	final Windows.Devices.PointOfService.PosPrinterColorCartridge ColorCartridge()
	{
		Windows.Devices.PointOfService.PosPrinterColorCartridge _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_ColorCartridge(&_ret));
		return _ret;
	}
	final bool IsCoverOpen()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsCoverOpen(&_ret));
		return _ret;
	}
	final bool IsCartridgeRemoved()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsCartridgeRemoved(&_ret));
		return _ret;
	}
	final bool IsCartridgeEmpty()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsCartridgeEmpty(&_ret));
		return _ret;
	}
	final bool IsHeadCleaning()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsHeadCleaning(&_ret));
		return _ret;
	}
	final bool IsPaperEmpty()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsPaperEmpty(&_ret));
		return _ret;
	}
	final bool IsReadyToPrint()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsReadyToPrint(&_ret));
		return _ret;
	}
	final bool ValidateData(HSTRING data)
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).abi_ValidateData(data, &_ret));
		return _ret;
	}
}

interface ClaimedSlipPrinter : Windows.Devices.PointOfService.IClaimedSlipPrinter, Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation
{
extern(Windows):
	final UINT32 SidewaysMaxLines()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).get_SidewaysMaxLines(&_ret));
		return _ret;
	}
	final UINT32 SidewaysMaxChars()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).get_SidewaysMaxChars(&_ret));
		return _ret;
	}
	final UINT32 MaxLines()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).get_MaxLines(&_ret));
		return _ret;
	}
	final UINT32 LinesNearEndToEnd()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).get_LinesNearEndToEnd(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterPrintSide PrintSide()
	{
		Windows.Devices.PointOfService.PosPrinterPrintSide _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).get_PrintSide(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size PageSize()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).get_PageSize(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect PrintArea()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).get_PrintArea(&_ret));
		return _ret;
	}
	final void OpenJaws()
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).abi_OpenJaws());
	}
	final void CloseJaws()
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).abi_CloseJaws());
	}
	final Windows.Foundation.IAsyncOperation!(bool) InsertSlipAsync(Windows.Foundation.TimeSpan timeout)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).abi_InsertSlipAsync(timeout, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RemoveSlipAsync(Windows.Foundation.TimeSpan timeout)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).abi_RemoveSlipAsync(timeout, &_ret));
		return _ret;
	}
	final void ChangePrintSide(Windows.Devices.PointOfService.PosPrinterPrintSide printSide)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).abi_ChangePrintSide(printSide));
	}
	final Windows.Devices.PointOfService.SlipPrintJob CreateJob()
	{
		Windows.Devices.PointOfService.SlipPrintJob _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IClaimedSlipPrinter)this.asInterface(uuid("bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f"))).abi_CreateJob(&_ret));
		return _ret;
	}
	final void CharactersPerLine(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_CharactersPerLine(value));
	}
	final UINT32 CharactersPerLine()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_CharactersPerLine(&_ret));
		return _ret;
	}
	final void LineHeight(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_LineHeight(value));
	}
	final UINT32 LineHeight()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_LineHeight(&_ret));
		return _ret;
	}
	final void LineSpacing(UINT32 value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_LineSpacing(value));
	}
	final UINT32 LineSpacing()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_LineSpacing(&_ret));
		return _ret;
	}
	final UINT32 LineWidth()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_LineWidth(&_ret));
		return _ret;
	}
	final void IsLetterQuality(bool value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_IsLetterQuality(value));
	}
	final bool IsLetterQuality()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsLetterQuality(&_ret));
		return _ret;
	}
	final bool IsPaperNearEnd()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsPaperNearEnd(&_ret));
		return _ret;
	}
	final void ColorCartridge(Windows.Devices.PointOfService.PosPrinterColorCartridge value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).set_ColorCartridge(value));
	}
	final Windows.Devices.PointOfService.PosPrinterColorCartridge ColorCartridge()
	{
		Windows.Devices.PointOfService.PosPrinterColorCartridge _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_ColorCartridge(&_ret));
		return _ret;
	}
	final bool IsCoverOpen()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsCoverOpen(&_ret));
		return _ret;
	}
	final bool IsCartridgeRemoved()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsCartridgeRemoved(&_ret));
		return _ret;
	}
	final bool IsCartridgeEmpty()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsCartridgeEmpty(&_ret));
		return _ret;
	}
	final bool IsHeadCleaning()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsHeadCleaning(&_ret));
		return _ret;
	}
	final bool IsPaperEmpty()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsPaperEmpty(&_ret));
		return _ret;
	}
	final bool IsReadyToPrint()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).get_IsReadyToPrint(&_ret));
		return _ret;
	}
	final bool ValidateData(HSTRING data)
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation)this.asInterface(uuid("b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c"))).abi_ValidateData(data, &_ret));
		return _ret;
	}
}

interface JournalPrintJob : Windows.Devices.PointOfService.IPosPrinterJob
{
extern(Windows):
	final void Print(HSTRING data)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_Print(data));
	}
	final void PrintLine(HSTRING data)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_PrintLine(data));
	}
	final void PrintNewline()
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_PrintNewline());
	}
	final Windows.Foundation.IAsyncOperation!(bool) ExecuteAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_ExecuteAsync(&_ret));
		return _ret;
	}
}

interface JournalPrinterCapabilities : Windows.Devices.PointOfService.IJournalPrinterCapabilities, Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities
{
extern(Windows):
	final bool IsPrinterPresent()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsPrinterPresent(&_ret));
		return _ret;
	}
	final bool IsDualColorSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDualColorSupported(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterColorCapabilities ColorCartridgeCapabilities()
	{
		Windows.Devices.PointOfService.PosPrinterColorCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_ColorCartridgeCapabilities(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterCartridgeSensors CartridgeSensors()
	{
		Windows.Devices.PointOfService.PosPrinterCartridgeSensors _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_CartridgeSensors(&_ret));
		return _ret;
	}
	final bool IsBoldSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsBoldSupported(&_ret));
		return _ret;
	}
	final bool IsItalicSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsItalicSupported(&_ret));
		return _ret;
	}
	final bool IsUnderlineSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsUnderlineSupported(&_ret));
		return _ret;
	}
	final bool IsDoubleHighPrintSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDoubleHighPrintSupported(&_ret));
		return _ret;
	}
	final bool IsDoubleWidePrintSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDoubleWidePrintSupported(&_ret));
		return _ret;
	}
	final bool IsDoubleHighDoubleWidePrintSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDoubleHighDoubleWidePrintSupported(&_ret));
		return _ret;
	}
	final bool IsPaperEmptySensorSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsPaperEmptySensorSupported(&_ret));
		return _ret;
	}
	final bool IsPaperNearEndSensorSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsPaperNearEndSensorSupported(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) SupportedCharactersPerLine()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_SupportedCharactersPerLine(&_ret));
		return _ret;
	}
}

interface LineDisplay : Windows.Devices.PointOfService.ILineDisplay, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplay)this.asInterface(uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c"))).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.LineDisplayCapabilities Capabilities()
	{
		Windows.Devices.PointOfService.LineDisplayCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplay)this.asInterface(uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c"))).get_Capabilities(&_ret));
		return _ret;
	}
	final HSTRING PhysicalDeviceName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplay)this.asInterface(uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c"))).get_PhysicalDeviceName(&_ret));
		return _ret;
	}
	final HSTRING PhysicalDeviceDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplay)this.asInterface(uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c"))).get_PhysicalDeviceDescription(&_ret));
		return _ret;
	}
	final HSTRING DeviceControlDescription()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplay)this.asInterface(uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c"))).get_DeviceControlDescription(&_ret));
		return _ret;
	}
	final HSTRING DeviceControlVersion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplay)this.asInterface(uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c"))).get_DeviceControlVersion(&_ret));
		return _ret;
	}
	final HSTRING DeviceServiceVersion()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplay)this.asInterface(uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c"))).get_DeviceServiceVersion(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedLineDisplay) ClaimAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedLineDisplay) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplay)this.asInterface(uuid("24f5df4e-3c99-44e2-b73f-e51be3637a8c"))).abi_ClaimAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.PointOfService.ILineDisplayStatics _staticInstance;
	public static Windows.Devices.PointOfService.ILineDisplayStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.PointOfService.ILineDisplayStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.LineDisplay) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.LineDisplay) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.LineDisplay) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.LineDisplay) _ret;
		Debug.OK(staticInstance.abi_GetDefaultAsync(&_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelectorWithConnectionTypes(Windows.Devices.PointOfService.PosConnectionTypes connectionTypes)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelectorWithConnectionTypes(connectionTypes, &_ret));
		return _ret;
	}
}

interface LineDisplayCapabilities : Windows.Devices.PointOfService.ILineDisplayCapabilities
{
extern(Windows):
	final bool IsStatisticsReportingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_IsStatisticsReportingSupported(&_ret));
		return _ret;
	}
	final bool IsStatisticsUpdatingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_IsStatisticsUpdatingSupported(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.UnifiedPosPowerReportingType PowerReportingType()
	{
		Windows.Devices.PointOfService.UnifiedPosPowerReportingType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_PowerReportingType(&_ret));
		return _ret;
	}
	final bool CanChangeScreenSize()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_CanChangeScreenSize(&_ret));
		return _ret;
	}
	final bool CanDisplayBitmaps()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_CanDisplayBitmaps(&_ret));
		return _ret;
	}
	final bool CanReadCharacterAtCursor()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_CanReadCharacterAtCursor(&_ret));
		return _ret;
	}
	final bool CanMapCharacterSets()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_CanMapCharacterSets(&_ret));
		return _ret;
	}
	final bool CanDisplayCustomGlyphs()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_CanDisplayCustomGlyphs(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.LineDisplayTextAttributeGranularity CanReverse()
	{
		Windows.Devices.PointOfService.LineDisplayTextAttributeGranularity _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_CanReverse(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.LineDisplayTextAttributeGranularity CanBlink()
	{
		Windows.Devices.PointOfService.LineDisplayTextAttributeGranularity _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_CanBlink(&_ret));
		return _ret;
	}
	final bool CanChangeBlinkRate()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_CanChangeBlinkRate(&_ret));
		return _ret;
	}
	final bool IsBrightnessSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_IsBrightnessSupported(&_ret));
		return _ret;
	}
	final bool IsCursorSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_IsCursorSupported(&_ret));
		return _ret;
	}
	final bool IsHorizontalMarqueeSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_IsHorizontalMarqueeSupported(&_ret));
		return _ret;
	}
	final bool IsVerticalMarqueeSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_IsVerticalMarqueeSupported(&_ret));
		return _ret;
	}
	final bool IsInterCharacterWaitSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_IsInterCharacterWaitSupported(&_ret));
		return _ret;
	}
	final UINT32 SupportedDescriptors()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_SupportedDescriptors(&_ret));
		return _ret;
	}
	final UINT32 SupportedWindows()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayCapabilities)this.asInterface(uuid("5a15b5d1-8dc5-4b9c-9172-303e47b70c55"))).get_SupportedWindows(&_ret));
		return _ret;
	}
}

interface LineDisplayWindow : Windows.Devices.PointOfService.ILineDisplayWindow, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.Size SizeInCharacters()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayWindow)this.asInterface(uuid("d21feef4-2364-4be5-bee1-851680af4964"))).get_SizeInCharacters(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan InterCharacterWaitInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayWindow)this.asInterface(uuid("d21feef4-2364-4be5-bee1-851680af4964"))).get_InterCharacterWaitInterval(&_ret));
		return _ret;
	}
	final void InterCharacterWaitInterval(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayWindow)this.asInterface(uuid("d21feef4-2364-4be5-bee1-851680af4964"))).set_InterCharacterWaitInterval(value));
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryRefreshAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayWindow)this.asInterface(uuid("d21feef4-2364-4be5-bee1-851680af4964"))).abi_TryRefreshAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryDisplayTextAsync(HSTRING text, Windows.Devices.PointOfService.LineDisplayTextAttribute displayAttribute)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayWindow)this.asInterface(uuid("d21feef4-2364-4be5-bee1-851680af4964"))).abi_TryDisplayTextAsync(text, displayAttribute, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryDisplayTextAtPositionAsync(HSTRING text, Windows.Devices.PointOfService.LineDisplayTextAttribute displayAttribute, Windows.Foundation.Point startPosition)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayWindow)this.asInterface(uuid("d21feef4-2364-4be5-bee1-851680af4964"))).abi_TryDisplayTextAtPositionAsync(text, displayAttribute, startPosition, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryDisplayTextNormalAsync(HSTRING text)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayWindow)this.asInterface(uuid("d21feef4-2364-4be5-bee1-851680af4964"))).abi_TryDisplayTextNormalAsync(text, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryScrollTextAsync(Windows.Devices.PointOfService.LineDisplayScrollDirection direction, UINT32 numberOfColumnsOrRows)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayWindow)this.asInterface(uuid("d21feef4-2364-4be5-bee1-851680af4964"))).abi_TryScrollTextAsync(direction, numberOfColumnsOrRows, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) TryClearTextAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ILineDisplayWindow)this.asInterface(uuid("d21feef4-2364-4be5-bee1-851680af4964"))).abi_TryClearTextAsync(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface MagneticStripeReader : Windows.Devices.PointOfService.IMagneticStripeReader, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReader)this.asInterface(uuid("1a92b015-47c3-468a-9333-0c6517574883"))).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderCapabilities Capabilities()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReader)this.asInterface(uuid("1a92b015-47c3-468a-9333-0c6517574883"))).get_Capabilities(&_ret));
		return _ret;
	}
	final UINT32* SupportedCardTypes(UINT32* out___valueSize)
	{
		UINT32* _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReader)this.asInterface(uuid("1a92b015-47c3-468a-9333-0c6517574883"))).get_SupportedCardTypes(out___valueSize, &_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderAuthenticationProtocol DeviceAuthenticationProtocol()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderAuthenticationProtocol _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReader)this.asInterface(uuid("1a92b015-47c3-468a-9333-0c6517574883"))).get_DeviceAuthenticationProtocol(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReader)this.asInterface(uuid("1a92b015-47c3-468a-9333-0c6517574883"))).abi_CheckHealthAsync(level, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader) ClaimReaderAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedMagneticStripeReader) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReader)this.asInterface(uuid("1a92b015-47c3-468a-9333-0c6517574883"))).abi_ClaimReaderAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) RetrieveStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReader)this.asInterface(uuid("1a92b015-47c3-468a-9333-0c6517574883"))).abi_RetrieveStatisticsAsync(statisticsCategories, &_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderErrorReportingType GetErrorReportingType()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderErrorReportingType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReader)this.asInterface(uuid("1a92b015-47c3-468a-9333-0c6517574883"))).abi_GetErrorReportingType(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnStatusUpdated(void delegate(Windows.Devices.PointOfService.MagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderStatusUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReader)this.asInterface(uuid("1a92b015-47c3-468a-9333-0c6517574883"))).add_StatusUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.MagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderStatusUpdatedEventArgs), Windows.Devices.PointOfService.MagneticStripeReader, Windows.Devices.PointOfService.MagneticStripeReaderStatusUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStatusUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReader)this.asInterface(uuid("1a92b015-47c3-468a-9333-0c6517574883"))).remove_StatusUpdated(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.PointOfService.IMagneticStripeReaderStatics _staticInstance;
	public static Windows.Devices.PointOfService.IMagneticStripeReaderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.PointOfService.IMagneticStripeReaderStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.MagneticStripeReader) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.MagneticStripeReader) _ret;
		Debug.OK(staticInstance.abi_GetDefaultAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.MagneticStripeReader) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.MagneticStripeReader) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
}

interface MagneticStripeReaderAamvaCardDataReceivedEventArgs : Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.MagneticStripeReaderReport Report()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderReport _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_Report(&_ret));
		return _ret;
	}
	final HSTRING LicenseNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_LicenseNumber(&_ret));
		return _ret;
	}
	final HSTRING ExpirationDate()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_ExpirationDate(&_ret));
		return _ret;
	}
	final HSTRING Restrictions()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_Restrictions(&_ret));
		return _ret;
	}
	final HSTRING Class()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_Class(&_ret));
		return _ret;
	}
	final HSTRING Endorsements()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_Endorsements(&_ret));
		return _ret;
	}
	final HSTRING BirthDate()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_BirthDate(&_ret));
		return _ret;
	}
	final HSTRING FirstName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_FirstName(&_ret));
		return _ret;
	}
	final HSTRING Surname()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_Surname(&_ret));
		return _ret;
	}
	final HSTRING Suffix()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_Suffix(&_ret));
		return _ret;
	}
	final HSTRING Gender()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_Gender(&_ret));
		return _ret;
	}
	final HSTRING HairColor()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_HairColor(&_ret));
		return _ret;
	}
	final HSTRING EyeColor()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_EyeColor(&_ret));
		return _ret;
	}
	final HSTRING Height()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_Height(&_ret));
		return _ret;
	}
	final HSTRING Weight()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_Weight(&_ret));
		return _ret;
	}
	final HSTRING Address()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_Address(&_ret));
		return _ret;
	}
	final HSTRING City()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_City(&_ret));
		return _ret;
	}
	final HSTRING State()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_State(&_ret));
		return _ret;
	}
	final HSTRING PostalCode()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs)this.asInterface(uuid("0a4bbd51-c316-4910-87f3-7a62ba862d31"))).get_PostalCode(&_ret));
		return _ret;
	}
}

interface MagneticStripeReaderBankCardDataReceivedEventArgs : Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.MagneticStripeReaderReport Report()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderReport _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs)this.asInterface(uuid("2e958823-a31a-4763-882c-23725e39b08e"))).get_Report(&_ret));
		return _ret;
	}
	final HSTRING AccountNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs)this.asInterface(uuid("2e958823-a31a-4763-882c-23725e39b08e"))).get_AccountNumber(&_ret));
		return _ret;
	}
	final HSTRING ExpirationDate()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs)this.asInterface(uuid("2e958823-a31a-4763-882c-23725e39b08e"))).get_ExpirationDate(&_ret));
		return _ret;
	}
	final HSTRING ServiceCode()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs)this.asInterface(uuid("2e958823-a31a-4763-882c-23725e39b08e"))).get_ServiceCode(&_ret));
		return _ret;
	}
	final HSTRING Title()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs)this.asInterface(uuid("2e958823-a31a-4763-882c-23725e39b08e"))).get_Title(&_ret));
		return _ret;
	}
	final HSTRING FirstName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs)this.asInterface(uuid("2e958823-a31a-4763-882c-23725e39b08e"))).get_FirstName(&_ret));
		return _ret;
	}
	final HSTRING MiddleInitial()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs)this.asInterface(uuid("2e958823-a31a-4763-882c-23725e39b08e"))).get_MiddleInitial(&_ret));
		return _ret;
	}
	final HSTRING Surname()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs)this.asInterface(uuid("2e958823-a31a-4763-882c-23725e39b08e"))).get_Surname(&_ret));
		return _ret;
	}
	final HSTRING Suffix()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs)this.asInterface(uuid("2e958823-a31a-4763-882c-23725e39b08e"))).get_Suffix(&_ret));
		return _ret;
	}
}

interface MagneticStripeReaderCapabilities : Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities
{
extern(Windows):
	final HSTRING CardAuthentication()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_CardAuthentication(&_ret));
		return _ret;
	}
	final UINT32 SupportedEncryptionAlgorithms()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_SupportedEncryptionAlgorithms(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderAuthenticationLevel AuthenticationLevel()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderAuthenticationLevel _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_AuthenticationLevel(&_ret));
		return _ret;
	}
	final bool IsIsoSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_IsIsoSupported(&_ret));
		return _ret;
	}
	final bool IsJisOneSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_IsJisOneSupported(&_ret));
		return _ret;
	}
	final bool IsJisTwoSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_IsJisTwoSupported(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.UnifiedPosPowerReportingType PowerReportingType()
	{
		Windows.Devices.PointOfService.UnifiedPosPowerReportingType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_PowerReportingType(&_ret));
		return _ret;
	}
	final bool IsStatisticsReportingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_IsStatisticsReportingSupported(&_ret));
		return _ret;
	}
	final bool IsStatisticsUpdatingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_IsStatisticsUpdatingSupported(&_ret));
		return _ret;
	}
	final bool IsTrackDataMaskingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_IsTrackDataMaskingSupported(&_ret));
		return _ret;
	}
	final bool IsTransmitSentinelsSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities)this.asInterface(uuid("7128809c-c440-44a2-a467-469175d02896"))).get_IsTransmitSentinelsSupported(&_ret));
		return _ret;
	}
}

interface MagneticStripeReaderCardTypes
{
	private static Windows.Devices.PointOfService.IMagneticStripeReaderCardTypesStatics _staticInstance;
	public static Windows.Devices.PointOfService.IMagneticStripeReaderCardTypesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.PointOfService.IMagneticStripeReaderCardTypesStatics);
		return _staticInstance;
	}
	static UINT32 Unknown()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Unknown(&_ret));
		return _ret;
	}
	static UINT32 Bank()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Bank(&_ret));
		return _ret;
	}
	static UINT32 Aamva()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Aamva(&_ret));
		return _ret;
	}
	static UINT32 ExtendedBase()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_ExtendedBase(&_ret));
		return _ret;
	}
}

interface MagneticStripeReaderEncryptionAlgorithms
{
	private static Windows.Devices.PointOfService.IMagneticStripeReaderEncryptionAlgorithmsStatics _staticInstance;
	public static Windows.Devices.PointOfService.IMagneticStripeReaderEncryptionAlgorithmsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.PointOfService.IMagneticStripeReaderEncryptionAlgorithmsStatics);
		return _staticInstance;
	}
	static UINT32 None()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_None(&_ret));
		return _ret;
	}
	static UINT32 TripleDesDukpt()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_TripleDesDukpt(&_ret));
		return _ret;
	}
	static UINT32 ExtendedBase()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_ExtendedBase(&_ret));
		return _ret;
	}
}

interface MagneticStripeReaderErrorOccurredEventArgs : Windows.Devices.PointOfService.IMagneticStripeReaderErrorOccurredEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType Track1Status()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderErrorOccurredEventArgs)this.asInterface(uuid("1fedf95d-2c84-41ad-b778-f2356a789ab1"))).get_Track1Status(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType Track2Status()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderErrorOccurredEventArgs)this.asInterface(uuid("1fedf95d-2c84-41ad-b778-f2356a789ab1"))).get_Track2Status(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType Track3Status()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderErrorOccurredEventArgs)this.asInterface(uuid("1fedf95d-2c84-41ad-b778-f2356a789ab1"))).get_Track3Status(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType Track4Status()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderTrackErrorType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderErrorOccurredEventArgs)this.asInterface(uuid("1fedf95d-2c84-41ad-b778-f2356a789ab1"))).get_Track4Status(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.UnifiedPosErrorData ErrorData()
	{
		Windows.Devices.PointOfService.UnifiedPosErrorData _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderErrorOccurredEventArgs)this.asInterface(uuid("1fedf95d-2c84-41ad-b778-f2356a789ab1"))).get_ErrorData(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderReport PartialInputData()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderReport _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderErrorOccurredEventArgs)this.asInterface(uuid("1fedf95d-2c84-41ad-b778-f2356a789ab1"))).get_PartialInputData(&_ret));
		return _ret;
	}
}

interface MagneticStripeReaderReport : Windows.Devices.PointOfService.IMagneticStripeReaderReport
{
extern(Windows):
	final UINT32 CardType()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderReport)this.asInterface(uuid("6a5b6047-99b0-4188-bef1-eddf79f78fe6"))).get_CardType(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderTrackData Track1()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderTrackData _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderReport)this.asInterface(uuid("6a5b6047-99b0-4188-bef1-eddf79f78fe6"))).get_Track1(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderTrackData Track2()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderTrackData _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderReport)this.asInterface(uuid("6a5b6047-99b0-4188-bef1-eddf79f78fe6"))).get_Track2(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderTrackData Track3()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderTrackData _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderReport)this.asInterface(uuid("6a5b6047-99b0-4188-bef1-eddf79f78fe6"))).get_Track3(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.MagneticStripeReaderTrackData Track4()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderTrackData _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderReport)this.asInterface(uuid("6a5b6047-99b0-4188-bef1-eddf79f78fe6"))).get_Track4(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderReport)this.asInterface(uuid("6a5b6047-99b0-4188-bef1-eddf79f78fe6"))).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer CardAuthenticationData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderReport)this.asInterface(uuid("6a5b6047-99b0-4188-bef1-eddf79f78fe6"))).get_CardAuthenticationData(&_ret));
		return _ret;
	}
	final UINT32 CardAuthenticationDataLength()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderReport)this.asInterface(uuid("6a5b6047-99b0-4188-bef1-eddf79f78fe6"))).get_CardAuthenticationDataLength(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer AdditionalSecurityInformation()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderReport)this.asInterface(uuid("6a5b6047-99b0-4188-bef1-eddf79f78fe6"))).get_AdditionalSecurityInformation(&_ret));
		return _ret;
	}
}

interface MagneticStripeReaderStatusUpdatedEventArgs : Windows.Devices.PointOfService.IMagneticStripeReaderStatusUpdatedEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.MagneticStripeReaderStatus Status()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderStatus _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderStatusUpdatedEventArgs)this.asInterface(uuid("09cc6bb0-3262-401d-9e8a-e80d6358906b"))).get_Status(&_ret));
		return _ret;
	}
	final UINT32 ExtendedStatus()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderStatusUpdatedEventArgs)this.asInterface(uuid("09cc6bb0-3262-401d-9e8a-e80d6358906b"))).get_ExtendedStatus(&_ret));
		return _ret;
	}
}

interface MagneticStripeReaderTrackData : Windows.Devices.PointOfService.IMagneticStripeReaderTrackData
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Data()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderTrackData)this.asInterface(uuid("104cf671-4a9d-446e-abc5-20402307ba36"))).get_Data(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer DiscretionaryData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderTrackData)this.asInterface(uuid("104cf671-4a9d-446e-abc5-20402307ba36"))).get_DiscretionaryData(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer EncryptedData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderTrackData)this.asInterface(uuid("104cf671-4a9d-446e-abc5-20402307ba36"))).get_EncryptedData(&_ret));
		return _ret;
	}
}

interface MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs : Windows.Devices.PointOfService.IMagneticStripeReaderVendorSpecificCardDataReceivedEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.MagneticStripeReaderReport Report()
	{
		Windows.Devices.PointOfService.MagneticStripeReaderReport _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IMagneticStripeReaderVendorSpecificCardDataReceivedEventArgs)this.asInterface(uuid("af0a5514-59cc-4a60-99e8-99a53dace5aa"))).get_Report(&_ret));
		return _ret;
	}
}

interface PosPrinter : Windows.Devices.PointOfService.IPosPrinter, Windows.Foundation.IClosable
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinter)this.asInterface(uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf"))).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterCapabilities Capabilities()
	{
		Windows.Devices.PointOfService.PosPrinterCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinter)this.asInterface(uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf"))).get_Capabilities(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) SupportedCharacterSets()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinter)this.asInterface(uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf"))).get_SupportedCharacterSets(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) SupportedTypeFaces()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinter)this.asInterface(uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf"))).get_SupportedTypeFaces(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterStatus Status()
	{
		Windows.Devices.PointOfService.PosPrinterStatus _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinter)this.asInterface(uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf"))).get_Status(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedPosPrinter) ClaimPrinterAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.ClaimedPosPrinter) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinter)this.asInterface(uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf"))).abi_ClaimPrinterAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) CheckHealthAsync(Windows.Devices.PointOfService.UnifiedPosHealthCheckLevel level)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinter)this.asInterface(uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf"))).abi_CheckHealthAsync(level, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(HSTRING) GetStatisticsAsync(Windows.Foundation.Collections.IIterable!(HSTRING) statisticsCategories)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinter)this.asInterface(uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf"))).abi_GetStatisticsAsync(statisticsCategories, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnStatusUpdated(void delegate(Windows.Devices.PointOfService.PosPrinter, Windows.Devices.PointOfService.PosPrinterStatusUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinter)this.asInterface(uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf"))).add_StatusUpdated(event!(Windows.Foundation.TypedEventHandler!(Windows.Devices.PointOfService.PosPrinter, Windows.Devices.PointOfService.PosPrinterStatusUpdatedEventArgs), Windows.Devices.PointOfService.PosPrinter, Windows.Devices.PointOfService.PosPrinterStatusUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStatusUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinter)this.asInterface(uuid("2a03c10e-9a19-4a01-994f-12dfad6adcbf"))).remove_StatusUpdated(token));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}

	private static Windows.Devices.PointOfService.IPosPrinterStatics _staticInstance;
	public static Windows.Devices.PointOfService.IPosPrinterStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.PointOfService.IPosPrinterStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.PosPrinter) GetDefaultAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.PosPrinter) _ret;
		Debug.OK(staticInstance.abi_GetDefaultAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.PosPrinter) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.PointOfService.PosPrinter) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.abi_GetDeviceSelector(&_ret));
		return _ret;
	}
}

interface PosPrinterCapabilities : Windows.Devices.PointOfService.IPosPrinterCapabilities
{
extern(Windows):
	final Windows.Devices.PointOfService.UnifiedPosPowerReportingType PowerReportingType()
	{
		Windows.Devices.PointOfService.UnifiedPosPowerReportingType _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterCapabilities)this.asInterface(uuid("cde95721-4380-4985-adc5-39db30cd93bc"))).get_PowerReportingType(&_ret));
		return _ret;
	}
	final bool IsStatisticsReportingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterCapabilities)this.asInterface(uuid("cde95721-4380-4985-adc5-39db30cd93bc"))).get_IsStatisticsReportingSupported(&_ret));
		return _ret;
	}
	final bool IsStatisticsUpdatingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterCapabilities)this.asInterface(uuid("cde95721-4380-4985-adc5-39db30cd93bc"))).get_IsStatisticsUpdatingSupported(&_ret));
		return _ret;
	}
	final UINT32 DefaultCharacterSet()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterCapabilities)this.asInterface(uuid("cde95721-4380-4985-adc5-39db30cd93bc"))).get_DefaultCharacterSet(&_ret));
		return _ret;
	}
	final bool HasCoverSensor()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterCapabilities)this.asInterface(uuid("cde95721-4380-4985-adc5-39db30cd93bc"))).get_HasCoverSensor(&_ret));
		return _ret;
	}
	final bool CanMapCharacterSet()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterCapabilities)this.asInterface(uuid("cde95721-4380-4985-adc5-39db30cd93bc"))).get_CanMapCharacterSet(&_ret));
		return _ret;
	}
	final bool IsTransactionSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterCapabilities)this.asInterface(uuid("cde95721-4380-4985-adc5-39db30cd93bc"))).get_IsTransactionSupported(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.ReceiptPrinterCapabilities Receipt()
	{
		Windows.Devices.PointOfService.ReceiptPrinterCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterCapabilities)this.asInterface(uuid("cde95721-4380-4985-adc5-39db30cd93bc"))).get_Receipt(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.SlipPrinterCapabilities Slip()
	{
		Windows.Devices.PointOfService.SlipPrinterCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterCapabilities)this.asInterface(uuid("cde95721-4380-4985-adc5-39db30cd93bc"))).get_Slip(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.JournalPrinterCapabilities Journal()
	{
		Windows.Devices.PointOfService.JournalPrinterCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterCapabilities)this.asInterface(uuid("cde95721-4380-4985-adc5-39db30cd93bc"))).get_Journal(&_ret));
		return _ret;
	}
}

interface PosPrinterCharacterSetIds
{
	private static Windows.Devices.PointOfService.IPosPrinterCharacterSetIdsStatics _staticInstance;
	public static Windows.Devices.PointOfService.IPosPrinterCharacterSetIdsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.PointOfService.IPosPrinterCharacterSetIdsStatics);
		return _staticInstance;
	}
	static UINT32 Utf16LE()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Utf16LE(&_ret));
		return _ret;
	}
	static UINT32 Ascii()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ascii(&_ret));
		return _ret;
	}
	static UINT32 Ansi()
	{
		UINT32 _ret;
		Debug.OK(staticInstance.get_Ansi(&_ret));
		return _ret;
	}
}

interface PosPrinterReleaseDeviceRequestedEventArgs : Windows.Devices.PointOfService.IPosPrinterReleaseDeviceRequestedEventArgs
{
}

interface PosPrinterStatus : Windows.Devices.PointOfService.IPosPrinterStatus
{
extern(Windows):
	final Windows.Devices.PointOfService.PosPrinterStatusKind StatusKind()
	{
		Windows.Devices.PointOfService.PosPrinterStatusKind _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterStatus)this.asInterface(uuid("d1f0c730-da40-4328-bf76-5156fa33b747"))).get_StatusKind(&_ret));
		return _ret;
	}
	final UINT32 ExtendedStatus()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterStatus)this.asInterface(uuid("d1f0c730-da40-4328-bf76-5156fa33b747"))).get_ExtendedStatus(&_ret));
		return _ret;
	}
}

interface PosPrinterStatusUpdatedEventArgs : Windows.Devices.PointOfService.IPosPrinterStatusUpdatedEventArgs
{
extern(Windows):
	final Windows.Devices.PointOfService.PosPrinterStatus Status()
	{
		Windows.Devices.PointOfService.PosPrinterStatus _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterStatusUpdatedEventArgs)this.asInterface(uuid("2edb87df-13a6-428d-ba81-b0e7c3e5a3cd"))).get_Status(&_ret));
		return _ret;
	}
}

interface ReceiptPrintJob : Windows.Devices.PointOfService.IReceiptPrintJob, Windows.Devices.PointOfService.IReceiptOrSlipJob, Windows.Devices.PointOfService.IPosPrinterJob
{
extern(Windows):
	final void MarkFeed(Windows.Devices.PointOfService.PosPrinterMarkFeedKind kind)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptPrintJob)this.asInterface(uuid("aa96066e-acad-4b79-9d0f-c0cfc08dc77b"))).abi_MarkFeed(kind));
	}
	final void CutPaper(double percentage)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptPrintJob)this.asInterface(uuid("aa96066e-acad-4b79-9d0f-c0cfc08dc77b"))).abi_CutPaper(percentage));
	}
	final void CutPaperDefault()
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptPrintJob)this.asInterface(uuid("aa96066e-acad-4b79-9d0f-c0cfc08dc77b"))).abi_CutPaperDefault());
	}
	final void SetBarcodeRotation(Windows.Devices.PointOfService.PosPrinterRotation value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetBarcodeRotation(value));
	}
	final void SetPrintRotation(Windows.Devices.PointOfService.PosPrinterRotation value, bool includeBitmaps)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetPrintRotation(value, includeBitmaps));
	}
	final void SetPrintArea(Windows.Foundation.Rect value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetPrintArea(value));
	}
	final void SetBitmap(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetBitmap(bitmapNumber, bitmap, alignment));
	}
	final void SetBitmapCustomWidthStandardAlign(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment, UINT32 width)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetBitmapCustomWidthStandardAlign(bitmapNumber, bitmap, alignment, width));
	}
	final void SetCustomAlignedBitmap(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetCustomAlignedBitmap(bitmapNumber, bitmap, alignmentDistance));
	}
	final void SetBitmapCustomWidthCustomAlign(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance, UINT32 width)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetBitmapCustomWidthCustomAlign(bitmapNumber, bitmap, alignmentDistance, width));
	}
	final void PrintSavedBitmap(UINT32 bitmapNumber)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintSavedBitmap(bitmapNumber));
	}
	final void DrawRuledLine(HSTRING positionList, Windows.Devices.PointOfService.PosPrinterLineDirection lineDirection, UINT32 lineWidth, Windows.Devices.PointOfService.PosPrinterLineStyle lineStyle, UINT32 lineColor)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_DrawRuledLine(positionList, lineDirection, lineWidth, lineStyle, lineColor));
	}
	final void PrintBarcode(HSTRING data, UINT32 symbology, UINT32 height, UINT32 width, Windows.Devices.PointOfService.PosPrinterBarcodeTextPosition textPosition, Windows.Devices.PointOfService.PosPrinterAlignment alignment)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintBarcode(data, symbology, height, width, textPosition, alignment));
	}
	final void PrintBarcodeCustomAlign(HSTRING data, UINT32 symbology, UINT32 height, UINT32 width, Windows.Devices.PointOfService.PosPrinterBarcodeTextPosition textPosition, UINT32 alignmentDistance)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintBarcodeCustomAlign(data, symbology, height, width, textPosition, alignmentDistance));
	}
	final void PrintBitmap(Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintBitmap(bitmap, alignment));
	}
	final void PrintBitmapCustomWidthStandardAlign(Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment, UINT32 width)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintBitmapCustomWidthStandardAlign(bitmap, alignment, width));
	}
	final void PrintCustomAlignedBitmap(Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintCustomAlignedBitmap(bitmap, alignmentDistance));
	}
	final void PrintBitmapCustomWidthCustomAlign(Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance, UINT32 width)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintBitmapCustomWidthCustomAlign(bitmap, alignmentDistance, width));
	}
	final void Print(HSTRING data)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_Print(data));
	}
	final void PrintLine(HSTRING data)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_PrintLine(data));
	}
	final void PrintNewline()
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_PrintNewline());
	}
	final Windows.Foundation.IAsyncOperation!(bool) ExecuteAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_ExecuteAsync(&_ret));
		return _ret;
	}
}

interface ReceiptPrinterCapabilities : Windows.Devices.PointOfService.IReceiptPrinterCapabilities, Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities, Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities
{
extern(Windows):
	final bool CanCutPaper()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptPrinterCapabilities)this.asInterface(uuid("b8f0b58f-51a8-43fc-9bd5-8de272a6415b"))).get_CanCutPaper(&_ret));
		return _ret;
	}
	final bool IsStampSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptPrinterCapabilities)this.asInterface(uuid("b8f0b58f-51a8-43fc-9bd5-8de272a6415b"))).get_IsStampSupported(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterMarkFeedCapabilities MarkFeedCapabilities()
	{
		Windows.Devices.PointOfService.PosPrinterMarkFeedCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptPrinterCapabilities)this.asInterface(uuid("b8f0b58f-51a8-43fc-9bd5-8de272a6415b"))).get_MarkFeedCapabilities(&_ret));
		return _ret;
	}
	final bool IsBarcodeSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_IsBarcodeSupported(&_ret));
		return _ret;
	}
	final bool IsBitmapSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_IsBitmapSupported(&_ret));
		return _ret;
	}
	final bool IsLeft90RotationSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_IsLeft90RotationSupported(&_ret));
		return _ret;
	}
	final bool IsRight90RotationSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_IsRight90RotationSupported(&_ret));
		return _ret;
	}
	final bool Is180RotationSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_Is180RotationSupported(&_ret));
		return _ret;
	}
	final bool IsPrintAreaSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_IsPrintAreaSupported(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterRuledLineCapabilities RuledLineCapabilities()
	{
		Windows.Devices.PointOfService.PosPrinterRuledLineCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_RuledLineCapabilities(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation) SupportedBarcodeRotations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_SupportedBarcodeRotations(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation) SupportedBitmapRotations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_SupportedBitmapRotations(&_ret));
		return _ret;
	}
	final bool IsPrinterPresent()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsPrinterPresent(&_ret));
		return _ret;
	}
	final bool IsDualColorSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDualColorSupported(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterColorCapabilities ColorCartridgeCapabilities()
	{
		Windows.Devices.PointOfService.PosPrinterColorCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_ColorCartridgeCapabilities(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterCartridgeSensors CartridgeSensors()
	{
		Windows.Devices.PointOfService.PosPrinterCartridgeSensors _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_CartridgeSensors(&_ret));
		return _ret;
	}
	final bool IsBoldSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsBoldSupported(&_ret));
		return _ret;
	}
	final bool IsItalicSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsItalicSupported(&_ret));
		return _ret;
	}
	final bool IsUnderlineSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsUnderlineSupported(&_ret));
		return _ret;
	}
	final bool IsDoubleHighPrintSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDoubleHighPrintSupported(&_ret));
		return _ret;
	}
	final bool IsDoubleWidePrintSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDoubleWidePrintSupported(&_ret));
		return _ret;
	}
	final bool IsDoubleHighDoubleWidePrintSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDoubleHighDoubleWidePrintSupported(&_ret));
		return _ret;
	}
	final bool IsPaperEmptySensorSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsPaperEmptySensorSupported(&_ret));
		return _ret;
	}
	final bool IsPaperNearEndSensorSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsPaperNearEndSensorSupported(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) SupportedCharactersPerLine()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_SupportedCharactersPerLine(&_ret));
		return _ret;
	}
}

interface SlipPrintJob : Windows.Devices.PointOfService.IReceiptOrSlipJob, Windows.Devices.PointOfService.IPosPrinterJob
{
extern(Windows):
	final void SetBarcodeRotation(Windows.Devices.PointOfService.PosPrinterRotation value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetBarcodeRotation(value));
	}
	final void SetPrintRotation(Windows.Devices.PointOfService.PosPrinterRotation value, bool includeBitmaps)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetPrintRotation(value, includeBitmaps));
	}
	final void SetPrintArea(Windows.Foundation.Rect value)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetPrintArea(value));
	}
	final void SetBitmap(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetBitmap(bitmapNumber, bitmap, alignment));
	}
	final void SetBitmapCustomWidthStandardAlign(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment, UINT32 width)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetBitmapCustomWidthStandardAlign(bitmapNumber, bitmap, alignment, width));
	}
	final void SetCustomAlignedBitmap(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetCustomAlignedBitmap(bitmapNumber, bitmap, alignmentDistance));
	}
	final void SetBitmapCustomWidthCustomAlign(UINT32 bitmapNumber, Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance, UINT32 width)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_SetBitmapCustomWidthCustomAlign(bitmapNumber, bitmap, alignmentDistance, width));
	}
	final void PrintSavedBitmap(UINT32 bitmapNumber)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintSavedBitmap(bitmapNumber));
	}
	final void DrawRuledLine(HSTRING positionList, Windows.Devices.PointOfService.PosPrinterLineDirection lineDirection, UINT32 lineWidth, Windows.Devices.PointOfService.PosPrinterLineStyle lineStyle, UINT32 lineColor)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_DrawRuledLine(positionList, lineDirection, lineWidth, lineStyle, lineColor));
	}
	final void PrintBarcode(HSTRING data, UINT32 symbology, UINT32 height, UINT32 width, Windows.Devices.PointOfService.PosPrinterBarcodeTextPosition textPosition, Windows.Devices.PointOfService.PosPrinterAlignment alignment)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintBarcode(data, symbology, height, width, textPosition, alignment));
	}
	final void PrintBarcodeCustomAlign(HSTRING data, UINT32 symbology, UINT32 height, UINT32 width, Windows.Devices.PointOfService.PosPrinterBarcodeTextPosition textPosition, UINT32 alignmentDistance)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintBarcodeCustomAlign(data, symbology, height, width, textPosition, alignmentDistance));
	}
	final void PrintBitmap(Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintBitmap(bitmap, alignment));
	}
	final void PrintBitmapCustomWidthStandardAlign(Windows.Graphics.Imaging.BitmapFrame bitmap, Windows.Devices.PointOfService.PosPrinterAlignment alignment, UINT32 width)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintBitmapCustomWidthStandardAlign(bitmap, alignment, width));
	}
	final void PrintCustomAlignedBitmap(Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintCustomAlignedBitmap(bitmap, alignmentDistance));
	}
	final void PrintBitmapCustomWidthCustomAlign(Windows.Graphics.Imaging.BitmapFrame bitmap, UINT32 alignmentDistance, UINT32 width)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IReceiptOrSlipJob)this.asInterface(uuid("532199be-c8c3-4dc2-89e9-5c4a37b34ddc"))).abi_PrintBitmapCustomWidthCustomAlign(bitmap, alignmentDistance, width));
	}
	final void Print(HSTRING data)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_Print(data));
	}
	final void PrintLine(HSTRING data)
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_PrintLine(data));
	}
	final void PrintNewline()
	{
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_PrintNewline());
	}
	final Windows.Foundation.IAsyncOperation!(bool) ExecuteAsync()
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IPosPrinterJob)this.asInterface(uuid("9a94005c-0615-4591-a58f-30f87edfe2e4"))).abi_ExecuteAsync(&_ret));
		return _ret;
	}
}

interface SlipPrinterCapabilities : Windows.Devices.PointOfService.ISlipPrinterCapabilities, Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities, Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities
{
extern(Windows):
	final bool IsFullLengthSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ISlipPrinterCapabilities)this.asInterface(uuid("99b16399-488c-4157-8ac2-9f57f708d3db"))).get_IsFullLengthSupported(&_ret));
		return _ret;
	}
	final bool IsBothSidesPrintingSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ISlipPrinterCapabilities)this.asInterface(uuid("99b16399-488c-4157-8ac2-9f57f708d3db"))).get_IsBothSidesPrintingSupported(&_ret));
		return _ret;
	}
	final bool IsBarcodeSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_IsBarcodeSupported(&_ret));
		return _ret;
	}
	final bool IsBitmapSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_IsBitmapSupported(&_ret));
		return _ret;
	}
	final bool IsLeft90RotationSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_IsLeft90RotationSupported(&_ret));
		return _ret;
	}
	final bool IsRight90RotationSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_IsRight90RotationSupported(&_ret));
		return _ret;
	}
	final bool Is180RotationSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_Is180RotationSupported(&_ret));
		return _ret;
	}
	final bool IsPrintAreaSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_IsPrintAreaSupported(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterRuledLineCapabilities RuledLineCapabilities()
	{
		Windows.Devices.PointOfService.PosPrinterRuledLineCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_RuledLineCapabilities(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation) SupportedBarcodeRotations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_SupportedBarcodeRotations(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation) SupportedBitmapRotations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities)this.asInterface(uuid("09286b8b-9873-4d05-bfbe-4727a6038f69"))).get_SupportedBitmapRotations(&_ret));
		return _ret;
	}
	final bool IsPrinterPresent()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsPrinterPresent(&_ret));
		return _ret;
	}
	final bool IsDualColorSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDualColorSupported(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterColorCapabilities ColorCartridgeCapabilities()
	{
		Windows.Devices.PointOfService.PosPrinterColorCapabilities _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_ColorCartridgeCapabilities(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.PosPrinterCartridgeSensors CartridgeSensors()
	{
		Windows.Devices.PointOfService.PosPrinterCartridgeSensors _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_CartridgeSensors(&_ret));
		return _ret;
	}
	final bool IsBoldSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsBoldSupported(&_ret));
		return _ret;
	}
	final bool IsItalicSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsItalicSupported(&_ret));
		return _ret;
	}
	final bool IsUnderlineSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsUnderlineSupported(&_ret));
		return _ret;
	}
	final bool IsDoubleHighPrintSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDoubleHighPrintSupported(&_ret));
		return _ret;
	}
	final bool IsDoubleWidePrintSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDoubleWidePrintSupported(&_ret));
		return _ret;
	}
	final bool IsDoubleHighDoubleWidePrintSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsDoubleHighDoubleWidePrintSupported(&_ret));
		return _ret;
	}
	final bool IsPaperEmptySensorSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsPaperEmptySensorSupported(&_ret));
		return _ret;
	}
	final bool IsPaperNearEndSensorSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_IsPaperNearEndSensorSupported(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) SupportedCharactersPerLine()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities)this.asInterface(uuid("de5b52ca-e02e-40e9-9e5e-1b488e6aacfc"))).get_SupportedCharactersPerLine(&_ret));
		return _ret;
	}
}

interface UnifiedPosErrorData : Windows.Devices.PointOfService.IUnifiedPosErrorData
{
extern(Windows):
	final HSTRING Message()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IUnifiedPosErrorData)this.asInterface(uuid("2b998c3a-555c-4889-8ed8-c599bb3a712a"))).get_Message(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.UnifiedPosErrorSeverity Severity()
	{
		Windows.Devices.PointOfService.UnifiedPosErrorSeverity _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IUnifiedPosErrorData)this.asInterface(uuid("2b998c3a-555c-4889-8ed8-c599bb3a712a"))).get_Severity(&_ret));
		return _ret;
	}
	final Windows.Devices.PointOfService.UnifiedPosErrorReason Reason()
	{
		Windows.Devices.PointOfService.UnifiedPosErrorReason _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IUnifiedPosErrorData)this.asInterface(uuid("2b998c3a-555c-4889-8ed8-c599bb3a712a"))).get_Reason(&_ret));
		return _ret;
	}
	final UINT32 ExtendedReason()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Devices.PointOfService.IUnifiedPosErrorData)this.asInterface(uuid("2b998c3a-555c-4889-8ed8-c599bb3a712a"))).get_ExtendedReason(&_ret));
		return _ret;
	}
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