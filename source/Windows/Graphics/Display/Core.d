module Windows.Graphics.Display.Core;

import dwinrt;

@uuid("130b3c0a-f565-476e-abd5-ea05aee74c69")
@WinrtFactory("Windows.Graphics.Display.Core.HdmiDisplayInformation")
interface IHdmiDisplayInformation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetSupportedDisplayModes(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Display.Core.HdmiDisplayMode)* return_result);
	HRESULT abi_GetCurrentDisplayMode(Windows.Graphics.Display.Core.HdmiDisplayMode* return_result);
	HRESULT abi_SetDefaultDisplayModeAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_RequestSetCurrentDisplayModeAsync(Windows.Graphics.Display.Core.HdmiDisplayMode mode, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestSetCurrentDisplayModeWithHdrAsync(Windows.Graphics.Display.Core.HdmiDisplayMode mode, Windows.Graphics.Display.Core.HdmiDisplayHdrOption hdrOption, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestSetCurrentDisplayModeWithHdrAndMetadataAsync(Windows.Graphics.Display.Core.HdmiDisplayMode mode, Windows.Graphics.Display.Core.HdmiDisplayHdrOption hdrOption, Windows.Graphics.Display.Core.HdmiDisplayHdr2086Metadata hdrMetadata, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT add_DisplayModesChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.Core.HdmiDisplayInformation*,IInspectable*) value, EventRegistrationToken* return_token);
	HRESULT remove_DisplayModesChanged(EventRegistrationToken token);
}

@uuid("6ce6b260-f42a-4a15-914c-7b8e2a5a65df")
@WinrtFactory("Windows.Graphics.Display.Core.HdmiDisplayInformation")
interface IHdmiDisplayInformationStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.Graphics.Display.Core.HdmiDisplayInformation* return_result);
}

@uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66")
@WinrtFactory("Windows.Graphics.Display.Core.HdmiDisplayMode")
interface IHdmiDisplayMode : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ResolutionWidthInRawPixels(UINT32* return_value);
	HRESULT get_ResolutionHeightInRawPixels(UINT32* return_value);
	HRESULT get_RefreshRate(double* return_value);
	HRESULT get_StereoEnabled(bool* return_value);
	HRESULT get_BitsPerPixel(UINT16* return_value);
	HRESULT abi_IsEqual(Windows.Graphics.Display.Core.HdmiDisplayMode mode, bool* return_result);
	HRESULT get_ColorSpace(Windows.Graphics.Display.Core.HdmiDisplayColorSpace* return_value);
	HRESULT get_PixelEncoding(Windows.Graphics.Display.Core.HdmiDisplayPixelEncoding* return_value);
	HRESULT get_IsSdrLuminanceSupported(bool* return_value);
	HRESULT get_IsSmpte2084Supported(bool* return_value);
	HRESULT get_Is2086MetadataSupported(bool* return_value);
}

interface HdmiDisplayInformation
{
}

interface HdmiDisplayMode
{
}

enum HdmiDisplayColorSpace
{
	RgbLimited = 0,
	RgbFull = 1,
	BT2020 = 2,
	BT709 = 3
}

enum HdmiDisplayHdrOption
{
	None = 0,
	EotfSdr = 1,
	Eotf2084 = 2
}

enum HdmiDisplayPixelEncoding
{
	Rgb444 = 0,
	Ycc444 = 1,
	Ycc422 = 2,
	Ycc420 = 3
}