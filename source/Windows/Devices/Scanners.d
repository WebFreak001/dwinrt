module Windows.Devices.Scanners;

import dwinrt;

@uuid("53a88f78-5298-48a0-8da3-8087519665e0")
@WinrtFactory("Windows.Devices.Scanners.ImageScanner")
interface IImageScanner : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_DefaultScanSource(Windows.Devices.Scanners.ImageScannerScanSource* return_value);
	HRESULT abi_IsScanSourceSupported(Windows.Devices.Scanners.ImageScannerScanSource value, bool* return_result);
	HRESULT get_FlatbedConfiguration(Windows.Devices.Scanners.ImageScannerFlatbedConfiguration* return_value);
	HRESULT get_FeederConfiguration(Windows.Devices.Scanners.ImageScannerFeederConfiguration* return_value);
	HRESULT get_AutoConfiguration(Windows.Devices.Scanners.ImageScannerAutoConfiguration* return_value);
	HRESULT abi_IsPreviewSupported(Windows.Devices.Scanners.ImageScannerScanSource scanSource, bool* return_result);
	HRESULT abi_ScanPreviewToStreamAsync(Windows.Devices.Scanners.ImageScannerScanSource scanSource, Windows.Storage.Streams.IRandomAccessStream targetStream, Windows.Foundation.IAsyncOperation!(Windows.Devices.Scanners.ImageScannerPreviewResult)* return_operation);
	HRESULT abi_ScanFilesToFolderAsync(Windows.Devices.Scanners.ImageScannerScanSource scanSource, Windows.Storage.StorageFolder storageFolder, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Devices.Scanners.ImageScannerScanResult*,UINT32)* return_operation);
}

@uuid("74bdacee-fa97-4c17-8280-40e39c6dcc67")
@WinrtFactory("Windows.Devices.Scanners.ImageScannerFeederConfiguration")
interface IImageScannerFeederConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CanAutoDetectPageSize(bool* return_value);
	HRESULT get_AutoDetectPageSize(bool* return_value);
	HRESULT set_AutoDetectPageSize(bool value);
	HRESULT get_PageSize(Windows.Graphics.Printing.PrintMediaSize* return_value);
	HRESULT set_PageSize(Windows.Graphics.Printing.PrintMediaSize value);
	HRESULT get_PageOrientation(Windows.Graphics.Printing.PrintOrientation* return_value);
	HRESULT set_PageOrientation(Windows.Graphics.Printing.PrintOrientation value);
	HRESULT get_PageSizeDimensions(Windows.Foundation.Size* return_value);
	HRESULT abi_IsPageSizeSupported(Windows.Graphics.Printing.PrintMediaSize pageSize, Windows.Graphics.Printing.PrintOrientation pageOrientation, bool* return_result);
	HRESULT get_MaxNumberOfPages(UINT32* return_value);
	HRESULT set_MaxNumberOfPages(UINT32 value);
	HRESULT get_CanScanDuplex(bool* return_value);
	HRESULT get_Duplex(bool* return_value);
	HRESULT set_Duplex(bool value);
	HRESULT get_CanScanAhead(bool* return_value);
	HRESULT get_ScanAhead(bool* return_value);
	HRESULT set_ScanAhead(bool value);
}

@uuid("ae275d11-dadf-4010-bf10-cca5c83dcbb0")
interface IImageScannerFormatConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DefaultFormat(Windows.Devices.Scanners.ImageScannerFormat* return_value);
	HRESULT get_Format(Windows.Devices.Scanners.ImageScannerFormat* return_value);
	HRESULT set_Format(Windows.Devices.Scanners.ImageScannerFormat value);
	HRESULT abi_IsFormatSupported(Windows.Devices.Scanners.ImageScannerFormat value, bool* return_result);
}

@uuid("08b7fe8e-8891-441d-be9c-176fa109c8bb")
@WinrtFactory("Windows.Devices.Scanners.ImageScannerPreviewResult")
interface IImageScannerPreviewResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Succeeded(bool* return_value);
	HRESULT get_Format(Windows.Devices.Scanners.ImageScannerFormat* return_value);
}

@uuid("c91624cd-9037-4e48-84c1-ac0975076bc5")
@WinrtFactory("Windows.Devices.Scanners.ImageScannerScanResult")
interface IImageScannerScanResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ScannedFiles(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)* return_value);
}

@uuid("bfb50055-0b44-4c82-9e89-205f9c234e59")
interface IImageScannerSourceConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_MinScanArea(Windows.Foundation.Size* return_value);
	HRESULT get_MaxScanArea(Windows.Foundation.Size* return_value);
	HRESULT get_SelectedScanRegion(Windows.Foundation.Rect* return_value);
	HRESULT set_SelectedScanRegion(Windows.Foundation.Rect value);
	HRESULT get_AutoCroppingMode(Windows.Devices.Scanners.ImageScannerAutoCroppingMode* return_value);
	HRESULT set_AutoCroppingMode(Windows.Devices.Scanners.ImageScannerAutoCroppingMode value);
	HRESULT abi_IsAutoCroppingModeSupported(Windows.Devices.Scanners.ImageScannerAutoCroppingMode value, bool* return_result);
	HRESULT get_MinResolution(Windows.Devices.Scanners.ImageScannerResolution* return_value);
	HRESULT get_MaxResolution(Windows.Devices.Scanners.ImageScannerResolution* return_value);
	HRESULT get_OpticalResolution(Windows.Devices.Scanners.ImageScannerResolution* return_value);
	HRESULT get_DesiredResolution(Windows.Devices.Scanners.ImageScannerResolution* return_value);
	HRESULT set_DesiredResolution(Windows.Devices.Scanners.ImageScannerResolution value);
	HRESULT get_ActualResolution(Windows.Devices.Scanners.ImageScannerResolution* return_value);
	HRESULT get_DefaultColorMode(Windows.Devices.Scanners.ImageScannerColorMode* return_value);
	HRESULT get_ColorMode(Windows.Devices.Scanners.ImageScannerColorMode* return_value);
	HRESULT set_ColorMode(Windows.Devices.Scanners.ImageScannerColorMode value);
	HRESULT abi_IsColorModeSupported(Windows.Devices.Scanners.ImageScannerColorMode value, bool* return_result);
	HRESULT get_MinBrightness(INT32* return_value);
	HRESULT get_MaxBrightness(INT32* return_value);
	HRESULT get_BrightnessStep(UINT32* return_value);
	HRESULT get_DefaultBrightness(INT32* return_value);
	HRESULT get_Brightness(INT32* return_value);
	HRESULT set_Brightness(INT32 value);
	HRESULT get_MinContrast(INT32* return_value);
	HRESULT get_MaxContrast(INT32* return_value);
	HRESULT get_ContrastStep(UINT32* return_value);
	HRESULT get_DefaultContrast(INT32* return_value);
	HRESULT get_Contrast(INT32* return_value);
	HRESULT set_Contrast(INT32 value);
}

@uuid("bc57e70e-d804-4477-9fb5-b911b5473897")
@WinrtFactory("Windows.Devices.Scanners.ImageScanner")
interface IImageScannerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Scanners.ImageScanner)* return_asyncInfo);
	HRESULT abi_GetDeviceSelector(HSTRING* return_selector);
}

interface ImageScanner
{
}

interface ImageScannerAutoConfiguration
{
}

interface ImageScannerFeederConfiguration
{
}

interface ImageScannerFlatbedConfiguration
{
}

interface ImageScannerPreviewResult
{
}

interface ImageScannerScanResult
{
}

enum ImageScannerAutoCroppingMode
{
	Disabled = 0,
	SingleRegion = 1,
	MultipleRegion = 2
}

enum ImageScannerColorMode
{
	Color = 0,
	Grayscale = 1,
	Monochrome = 2,
	AutoColor = 3
}

enum ImageScannerFormat
{
	Jpeg = 0,
	Png = 1,
	DeviceIndependentBitmap = 2,
	Tiff = 3,
	Xps = 4,
	OpenXps = 5,
	Pdf = 6
}

enum ImageScannerScanSource
{
	Default = 0,
	Flatbed = 1,
	Feeder = 2,
	AutoConfigured = 3
}