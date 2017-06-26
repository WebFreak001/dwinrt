module Windows.Devices.Scanners;

import dwinrt;

struct ImageScannerResolution
{
	float DpiX;
	float DpiY;
}

@uuid("53a88f78-5298-48a0-8da3-8087519665e0")
@WinrtFactory("Windows.Devices.Scanners.ImageScanner")
interface IImageScanner : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_DefaultScanSource(Windows.Devices.Scanners.ImageScannerScanSource* return_value);
	HRESULT abi_IsScanSourceSupported(Windows.Devices.Scanners.ImageScannerScanSource value, bool* return_result);
	HRESULT get_FlatbedConfiguration(Windows.Devices.Scanners.ImageScannerFlatbedConfiguration* return_value);
	HRESULT get_FeederConfiguration(Windows.Devices.Scanners.ImageScannerFeederConfiguration* return_value);
	HRESULT get_AutoConfiguration(Windows.Devices.Scanners.ImageScannerAutoConfiguration* return_value);
	HRESULT abi_IsPreviewSupported(Windows.Devices.Scanners.ImageScannerScanSource scanSource, bool* return_result);
	HRESULT abi_ScanPreviewToStreamAsync(Windows.Devices.Scanners.ImageScannerScanSource scanSource, Windows.Storage.Streams.IRandomAccessStream targetStream, Windows.Foundation.IAsyncOperation!(Windows.Devices.Scanners.ImageScannerPreviewResult)* return_operation);
	HRESULT abi_ScanFilesToFolderAsync(Windows.Devices.Scanners.ImageScannerScanSource scanSource, Windows.Storage.StorageFolder storageFolder, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Devices.Scanners.ImageScannerScanResult, UINT32)* return_operation);
}

@uuid("74bdacee-fa97-4c17-8280-40e39c6dcc67")
@WinrtFactory("Windows.Devices.Scanners.ImageScannerFeederConfiguration")
interface IImageScannerFeederConfiguration_Base : IInspectable
{
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
@uuid("74bdacee-fa97-4c17-8280-40e39c6dcc67")
@WinrtFactory("Windows.Devices.Scanners.ImageScannerFeederConfiguration")
interface IImageScannerFeederConfiguration : IImageScannerFeederConfiguration_Base, Windows.Devices.Scanners.IImageScannerFormatConfiguration, Windows.Devices.Scanners.IImageScannerSourceConfiguration {}

@uuid("ae275d11-dadf-4010-bf10-cca5c83dcbb0")
interface IImageScannerFormatConfiguration : IInspectable
{
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
extern(Windows):
	HRESULT get_Succeeded(bool* return_value);
	HRESULT get_Format(Windows.Devices.Scanners.ImageScannerFormat* return_value);
}

@uuid("c91624cd-9037-4e48-84c1-ac0975076bc5")
@WinrtFactory("Windows.Devices.Scanners.ImageScannerScanResult")
interface IImageScannerScanResult : IInspectable
{
extern(Windows):
	HRESULT get_ScannedFiles(Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile)* return_value);
}

@uuid("bfb50055-0b44-4c82-9e89-205f9c234e59")
interface IImageScannerSourceConfiguration_Base : IInspectable
{
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
@uuid("bfb50055-0b44-4c82-9e89-205f9c234e59")
interface IImageScannerSourceConfiguration : IImageScannerSourceConfiguration_Base, Windows.Devices.Scanners.IImageScannerFormatConfiguration {}

@uuid("bc57e70e-d804-4477-9fb5-b911b5473897")
@WinrtFactory("Windows.Devices.Scanners.ImageScanner")
interface IImageScannerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.Devices.Scanners.ImageScanner)* return_asyncInfo);
	HRESULT abi_GetDeviceSelector(HSTRING* return_selector);
}

interface ImageScanner : Windows.Devices.Scanners.IImageScanner
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScanner).get_DeviceId(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerScanSource DefaultScanSource()
	{
		Windows.Devices.Scanners.ImageScannerScanSource _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScanner).get_DefaultScanSource(&_ret));
		return _ret;
	}
	final bool IsScanSourceSupported(Windows.Devices.Scanners.ImageScannerScanSource value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScanner).abi_IsScanSourceSupported(value, &_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerFlatbedConfiguration FlatbedConfiguration()
	{
		Windows.Devices.Scanners.ImageScannerFlatbedConfiguration _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScanner).get_FlatbedConfiguration(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerFeederConfiguration FeederConfiguration()
	{
		Windows.Devices.Scanners.ImageScannerFeederConfiguration _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScanner).get_FeederConfiguration(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerAutoConfiguration AutoConfiguration()
	{
		Windows.Devices.Scanners.ImageScannerAutoConfiguration _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScanner).get_AutoConfiguration(&_ret));
		return _ret;
	}
	final bool IsPreviewSupported(Windows.Devices.Scanners.ImageScannerScanSource scanSource)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScanner).abi_IsPreviewSupported(scanSource, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Devices.Scanners.ImageScannerPreviewResult) ScanPreviewToStreamAsync(Windows.Devices.Scanners.ImageScannerScanSource scanSource, Windows.Storage.Streams.IRandomAccessStream targetStream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Scanners.ImageScannerPreviewResult) _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScanner).abi_ScanPreviewToStreamAsync(scanSource, targetStream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Devices.Scanners.ImageScannerScanResult, UINT32) ScanFilesToFolderAsync(Windows.Devices.Scanners.ImageScannerScanSource scanSource, Windows.Storage.StorageFolder storageFolder)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Devices.Scanners.ImageScannerScanResult, UINT32) _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScanner).abi_ScanFilesToFolderAsync(scanSource, storageFolder, &_ret));
		return _ret;
	}

	private static Windows.Devices.Scanners.IImageScannerStatics _staticInstance;
	public static Windows.Devices.Scanners.IImageScannerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Scanners.IImageScannerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Devices.Scanners.ImageScanner) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Devices.Scanners.ImageScanner) _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Scanners.IImageScannerStatics).abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
	static HSTRING GetDeviceSelector()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Devices.Scanners.IImageScannerStatics).abi_GetDeviceSelector(&_ret));
		return _ret;
	}
}

interface ImageScannerAutoConfiguration : Windows.Devices.Scanners.IImageScannerFormatConfiguration
{
extern(Windows):
	final Windows.Devices.Scanners.ImageScannerFormat DefaultFormat()
	{
		Windows.Devices.Scanners.ImageScannerFormat _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).get_DefaultFormat(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerFormat Format()
	{
		Windows.Devices.Scanners.ImageScannerFormat _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).get_Format(&_ret));
		return _ret;
	}
	final void Format(Windows.Devices.Scanners.ImageScannerFormat value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).set_Format(value));
	}
	final bool IsFormatSupported(Windows.Devices.Scanners.ImageScannerFormat value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).abi_IsFormatSupported(value, &_ret));
		return _ret;
	}
}

interface ImageScannerFeederConfiguration : Windows.Devices.Scanners.IImageScannerFormatConfiguration, Windows.Devices.Scanners.IImageScannerSourceConfiguration, Windows.Devices.Scanners.IImageScannerFeederConfiguration
{
extern(Windows):
	final Windows.Devices.Scanners.ImageScannerFormat DefaultFormat()
	{
		Windows.Devices.Scanners.ImageScannerFormat _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).get_DefaultFormat(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerFormat Format()
	{
		Windows.Devices.Scanners.ImageScannerFormat _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).get_Format(&_ret));
		return _ret;
	}
	final void Format(Windows.Devices.Scanners.ImageScannerFormat value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).set_Format(value));
	}
	final bool IsFormatSupported(Windows.Devices.Scanners.ImageScannerFormat value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).abi_IsFormatSupported(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Size MinScanArea()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MinScanArea(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size MaxScanArea()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MaxScanArea(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect SelectedScanRegion()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_SelectedScanRegion(&_ret));
		return _ret;
	}
	final void SelectedScanRegion(Windows.Foundation.Rect value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_SelectedScanRegion(value));
	}
	final Windows.Devices.Scanners.ImageScannerAutoCroppingMode AutoCroppingMode()
	{
		Windows.Devices.Scanners.ImageScannerAutoCroppingMode _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_AutoCroppingMode(&_ret));
		return _ret;
	}
	final void AutoCroppingMode(Windows.Devices.Scanners.ImageScannerAutoCroppingMode value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_AutoCroppingMode(value));
	}
	final bool IsAutoCroppingModeSupported(Windows.Devices.Scanners.ImageScannerAutoCroppingMode value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).abi_IsAutoCroppingModeSupported(value, &_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerResolution MinResolution()
	{
		Windows.Devices.Scanners.ImageScannerResolution _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MinResolution(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerResolution MaxResolution()
	{
		Windows.Devices.Scanners.ImageScannerResolution _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MaxResolution(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerResolution OpticalResolution()
	{
		Windows.Devices.Scanners.ImageScannerResolution _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_OpticalResolution(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerResolution DesiredResolution()
	{
		Windows.Devices.Scanners.ImageScannerResolution _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_DesiredResolution(&_ret));
		return _ret;
	}
	final void DesiredResolution(Windows.Devices.Scanners.ImageScannerResolution value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_DesiredResolution(value));
	}
	final Windows.Devices.Scanners.ImageScannerResolution ActualResolution()
	{
		Windows.Devices.Scanners.ImageScannerResolution _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_ActualResolution(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerColorMode DefaultColorMode()
	{
		Windows.Devices.Scanners.ImageScannerColorMode _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_DefaultColorMode(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerColorMode ColorMode()
	{
		Windows.Devices.Scanners.ImageScannerColorMode _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_ColorMode(&_ret));
		return _ret;
	}
	final void ColorMode(Windows.Devices.Scanners.ImageScannerColorMode value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_ColorMode(value));
	}
	final bool IsColorModeSupported(Windows.Devices.Scanners.ImageScannerColorMode value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).abi_IsColorModeSupported(value, &_ret));
		return _ret;
	}
	final INT32 MinBrightness()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MinBrightness(&_ret));
		return _ret;
	}
	final INT32 MaxBrightness()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MaxBrightness(&_ret));
		return _ret;
	}
	final UINT32 BrightnessStep()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_BrightnessStep(&_ret));
		return _ret;
	}
	final INT32 DefaultBrightness()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_DefaultBrightness(&_ret));
		return _ret;
	}
	final INT32 Brightness()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_Brightness(&_ret));
		return _ret;
	}
	final void Brightness(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_Brightness(value));
	}
	final INT32 MinContrast()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MinContrast(&_ret));
		return _ret;
	}
	final INT32 MaxContrast()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MaxContrast(&_ret));
		return _ret;
	}
	final UINT32 ContrastStep()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_ContrastStep(&_ret));
		return _ret;
	}
	final INT32 DefaultContrast()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_DefaultContrast(&_ret));
		return _ret;
	}
	final INT32 Contrast()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_Contrast(&_ret));
		return _ret;
	}
	final void Contrast(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_Contrast(value));
	}
	final bool CanAutoDetectPageSize()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).get_CanAutoDetectPageSize(&_ret));
		return _ret;
	}
	final bool AutoDetectPageSize()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).get_AutoDetectPageSize(&_ret));
		return _ret;
	}
	final void AutoDetectPageSize(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).set_AutoDetectPageSize(value));
	}
	final Windows.Graphics.Printing.PrintMediaSize PageSize()
	{
		Windows.Graphics.Printing.PrintMediaSize _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).get_PageSize(&_ret));
		return _ret;
	}
	final void PageSize(Windows.Graphics.Printing.PrintMediaSize value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).set_PageSize(value));
	}
	final Windows.Graphics.Printing.PrintOrientation PageOrientation()
	{
		Windows.Graphics.Printing.PrintOrientation _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).get_PageOrientation(&_ret));
		return _ret;
	}
	final void PageOrientation(Windows.Graphics.Printing.PrintOrientation value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).set_PageOrientation(value));
	}
	final Windows.Foundation.Size PageSizeDimensions()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).get_PageSizeDimensions(&_ret));
		return _ret;
	}
	final bool IsPageSizeSupported(Windows.Graphics.Printing.PrintMediaSize pageSize, Windows.Graphics.Printing.PrintOrientation pageOrientation)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).abi_IsPageSizeSupported(pageSize, pageOrientation, &_ret));
		return _ret;
	}
	final UINT32 MaxNumberOfPages()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).get_MaxNumberOfPages(&_ret));
		return _ret;
	}
	final void MaxNumberOfPages(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).set_MaxNumberOfPages(value));
	}
	final bool CanScanDuplex()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).get_CanScanDuplex(&_ret));
		return _ret;
	}
	final bool Duplex()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).get_Duplex(&_ret));
		return _ret;
	}
	final void Duplex(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).set_Duplex(value));
	}
	final bool CanScanAhead()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).get_CanScanAhead(&_ret));
		return _ret;
	}
	final bool ScanAhead()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).get_ScanAhead(&_ret));
		return _ret;
	}
	final void ScanAhead(bool value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFeederConfiguration).set_ScanAhead(value));
	}
}

interface ImageScannerFlatbedConfiguration : Windows.Devices.Scanners.IImageScannerFormatConfiguration, Windows.Devices.Scanners.IImageScannerSourceConfiguration
{
extern(Windows):
	final Windows.Devices.Scanners.ImageScannerFormat DefaultFormat()
	{
		Windows.Devices.Scanners.ImageScannerFormat _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).get_DefaultFormat(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerFormat Format()
	{
		Windows.Devices.Scanners.ImageScannerFormat _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).get_Format(&_ret));
		return _ret;
	}
	final void Format(Windows.Devices.Scanners.ImageScannerFormat value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).set_Format(value));
	}
	final bool IsFormatSupported(Windows.Devices.Scanners.ImageScannerFormat value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerFormatConfiguration).abi_IsFormatSupported(value, &_ret));
		return _ret;
	}
	final Windows.Foundation.Size MinScanArea()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MinScanArea(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size MaxScanArea()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MaxScanArea(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect SelectedScanRegion()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_SelectedScanRegion(&_ret));
		return _ret;
	}
	final void SelectedScanRegion(Windows.Foundation.Rect value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_SelectedScanRegion(value));
	}
	final Windows.Devices.Scanners.ImageScannerAutoCroppingMode AutoCroppingMode()
	{
		Windows.Devices.Scanners.ImageScannerAutoCroppingMode _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_AutoCroppingMode(&_ret));
		return _ret;
	}
	final void AutoCroppingMode(Windows.Devices.Scanners.ImageScannerAutoCroppingMode value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_AutoCroppingMode(value));
	}
	final bool IsAutoCroppingModeSupported(Windows.Devices.Scanners.ImageScannerAutoCroppingMode value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).abi_IsAutoCroppingModeSupported(value, &_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerResolution MinResolution()
	{
		Windows.Devices.Scanners.ImageScannerResolution _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MinResolution(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerResolution MaxResolution()
	{
		Windows.Devices.Scanners.ImageScannerResolution _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MaxResolution(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerResolution OpticalResolution()
	{
		Windows.Devices.Scanners.ImageScannerResolution _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_OpticalResolution(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerResolution DesiredResolution()
	{
		Windows.Devices.Scanners.ImageScannerResolution _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_DesiredResolution(&_ret));
		return _ret;
	}
	final void DesiredResolution(Windows.Devices.Scanners.ImageScannerResolution value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_DesiredResolution(value));
	}
	final Windows.Devices.Scanners.ImageScannerResolution ActualResolution()
	{
		Windows.Devices.Scanners.ImageScannerResolution _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_ActualResolution(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerColorMode DefaultColorMode()
	{
		Windows.Devices.Scanners.ImageScannerColorMode _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_DefaultColorMode(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerColorMode ColorMode()
	{
		Windows.Devices.Scanners.ImageScannerColorMode _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_ColorMode(&_ret));
		return _ret;
	}
	final void ColorMode(Windows.Devices.Scanners.ImageScannerColorMode value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_ColorMode(value));
	}
	final bool IsColorModeSupported(Windows.Devices.Scanners.ImageScannerColorMode value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).abi_IsColorModeSupported(value, &_ret));
		return _ret;
	}
	final INT32 MinBrightness()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MinBrightness(&_ret));
		return _ret;
	}
	final INT32 MaxBrightness()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MaxBrightness(&_ret));
		return _ret;
	}
	final UINT32 BrightnessStep()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_BrightnessStep(&_ret));
		return _ret;
	}
	final INT32 DefaultBrightness()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_DefaultBrightness(&_ret));
		return _ret;
	}
	final INT32 Brightness()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_Brightness(&_ret));
		return _ret;
	}
	final void Brightness(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_Brightness(value));
	}
	final INT32 MinContrast()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MinContrast(&_ret));
		return _ret;
	}
	final INT32 MaxContrast()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_MaxContrast(&_ret));
		return _ret;
	}
	final UINT32 ContrastStep()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_ContrastStep(&_ret));
		return _ret;
	}
	final INT32 DefaultContrast()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_DefaultContrast(&_ret));
		return _ret;
	}
	final INT32 Contrast()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).get_Contrast(&_ret));
		return _ret;
	}
	final void Contrast(INT32 value)
	{
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerSourceConfiguration).set_Contrast(value));
	}
}

interface ImageScannerPreviewResult : Windows.Devices.Scanners.IImageScannerPreviewResult
{
extern(Windows):
	final bool Succeeded()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerPreviewResult).get_Succeeded(&_ret));
		return _ret;
	}
	final Windows.Devices.Scanners.ImageScannerFormat Format()
	{
		Windows.Devices.Scanners.ImageScannerFormat _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerPreviewResult).get_Format(&_ret));
		return _ret;
	}
}

interface ImageScannerScanResult : Windows.Devices.Scanners.IImageScannerScanResult
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile) ScannedFiles()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Storage.StorageFile) _ret;
		Debug.OK(this.as!(Windows.Devices.Scanners.IImageScannerScanResult).get_ScannedFiles(&_ret));
		return _ret;
	}
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