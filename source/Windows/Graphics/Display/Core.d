module Windows.Graphics.Display.Core;

import dwinrt;

struct HdmiDisplayHdr2086Metadata
{
	UINT16 RedPrimaryX;
	UINT16 RedPrimaryY;
	UINT16 GreenPrimaryX;
	UINT16 GreenPrimaryY;
	UINT16 BluePrimaryX;
	UINT16 BluePrimaryY;
	UINT16 WhitePointX;
	UINT16 WhitePointY;
	UINT16 MaxMasteringLuminance;
	UINT16 MinMasteringLuminance;
	UINT16 MaxContentLightLevel;
	UINT16 MaxFrameAverageLightLevel;
}

@uuid("130b3c0a-f565-476e-abd5-ea05aee74c69")
@WinrtFactory("Windows.Graphics.Display.Core.HdmiDisplayInformation")
interface IHdmiDisplayInformation : IInspectable
{
extern(Windows):
	HRESULT abi_GetSupportedDisplayModes(Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Display.Core.HdmiDisplayMode)* return_result);
	HRESULT abi_GetCurrentDisplayMode(Windows.Graphics.Display.Core.HdmiDisplayMode* return_result);
	HRESULT abi_SetDefaultDisplayModeAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_RequestSetCurrentDisplayModeAsync(Windows.Graphics.Display.Core.HdmiDisplayMode mode, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestSetCurrentDisplayModeWithHdrAsync(Windows.Graphics.Display.Core.HdmiDisplayMode mode, Windows.Graphics.Display.Core.HdmiDisplayHdrOption hdrOption, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_RequestSetCurrentDisplayModeWithHdrAndMetadataAsync(Windows.Graphics.Display.Core.HdmiDisplayMode mode, Windows.Graphics.Display.Core.HdmiDisplayHdrOption hdrOption, Windows.Graphics.Display.Core.HdmiDisplayHdr2086Metadata hdrMetadata, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT add_DisplayModesChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.Core.HdmiDisplayInformation, IInspectable) value, EventRegistrationToken* return_token);
	HRESULT remove_DisplayModesChanged(EventRegistrationToken token);
}

@uuid("6ce6b260-f42a-4a15-914c-7b8e2a5a65df")
@WinrtFactory("Windows.Graphics.Display.Core.HdmiDisplayInformation")
interface IHdmiDisplayInformationStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.Graphics.Display.Core.HdmiDisplayInformation* return_result);
}

@uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66")
@WinrtFactory("Windows.Graphics.Display.Core.HdmiDisplayMode")
interface IHdmiDisplayMode : IInspectable
{
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

interface HdmiDisplayInformation : Windows.Graphics.Display.Core.IHdmiDisplayInformation
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Display.Core.HdmiDisplayMode) GetSupportedDisplayModes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Graphics.Display.Core.HdmiDisplayMode) _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayInformation)this.asInterface(uuid("130b3c0a-f565-476e-abd5-ea05aee74c69"))).abi_GetSupportedDisplayModes(&_ret));
		return _ret;
	}
	final Windows.Graphics.Display.Core.HdmiDisplayMode GetCurrentDisplayMode()
	{
		Windows.Graphics.Display.Core.HdmiDisplayMode _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayInformation)this.asInterface(uuid("130b3c0a-f565-476e-abd5-ea05aee74c69"))).abi_GetCurrentDisplayMode(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SetDefaultDisplayModeAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayInformation)this.asInterface(uuid("130b3c0a-f565-476e-abd5-ea05aee74c69"))).abi_SetDefaultDisplayModeAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestSetCurrentDisplayModeAsync(Windows.Graphics.Display.Core.HdmiDisplayMode mode)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayInformation)this.asInterface(uuid("130b3c0a-f565-476e-abd5-ea05aee74c69"))).abi_RequestSetCurrentDisplayModeAsync(mode, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestSetCurrentDisplayModeWithHdrAsync(Windows.Graphics.Display.Core.HdmiDisplayMode mode, Windows.Graphics.Display.Core.HdmiDisplayHdrOption hdrOption)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayInformation)this.asInterface(uuid("130b3c0a-f565-476e-abd5-ea05aee74c69"))).abi_RequestSetCurrentDisplayModeWithHdrAsync(mode, hdrOption, &_ret));
		return _ret;
	}
	alias RequestSetCurrentDisplayModeAsync = RequestSetCurrentDisplayModeWithHdrAsync;
	final Windows.Foundation.IAsyncOperation!(bool) RequestSetCurrentDisplayModeWithHdrAndMetadataAsync(Windows.Graphics.Display.Core.HdmiDisplayMode mode, Windows.Graphics.Display.Core.HdmiDisplayHdrOption hdrOption, Windows.Graphics.Display.Core.HdmiDisplayHdr2086Metadata hdrMetadata)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayInformation)this.asInterface(uuid("130b3c0a-f565-476e-abd5-ea05aee74c69"))).abi_RequestSetCurrentDisplayModeWithHdrAndMetadataAsync(mode, hdrOption, hdrMetadata, &_ret));
		return _ret;
	}
	alias RequestSetCurrentDisplayModeAsync = RequestSetCurrentDisplayModeWithHdrAndMetadataAsync;
	final EventRegistrationToken OnDisplayModesChanged(void delegate(Windows.Graphics.Display.Core.HdmiDisplayInformation, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayInformation)this.asInterface(uuid("130b3c0a-f565-476e-abd5-ea05aee74c69"))).add_DisplayModesChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Display.Core.HdmiDisplayInformation, IInspectable), Windows.Graphics.Display.Core.HdmiDisplayInformation, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeDisplayModesChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayInformation)this.asInterface(uuid("130b3c0a-f565-476e-abd5-ea05aee74c69"))).remove_DisplayModesChanged(token));
	}

	private static Windows.Graphics.Display.Core.IHdmiDisplayInformationStatics _staticInstance;
	public static Windows.Graphics.Display.Core.IHdmiDisplayInformationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Graphics.Display.Core.IHdmiDisplayInformationStatics);
		return _staticInstance;
	}
	static Windows.Graphics.Display.Core.HdmiDisplayInformation GetForCurrentView()
	{
		Windows.Graphics.Display.Core.HdmiDisplayInformation _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface HdmiDisplayMode : Windows.Graphics.Display.Core.IHdmiDisplayMode
{
extern(Windows):
	final UINT32 ResolutionWidthInRawPixels()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).get_ResolutionWidthInRawPixels(&_ret));
		return _ret;
	}
	final UINT32 ResolutionHeightInRawPixels()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).get_ResolutionHeightInRawPixels(&_ret));
		return _ret;
	}
	final double RefreshRate()
	{
		double _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).get_RefreshRate(&_ret));
		return _ret;
	}
	final bool StereoEnabled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).get_StereoEnabled(&_ret));
		return _ret;
	}
	final UINT16 BitsPerPixel()
	{
		UINT16 _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).get_BitsPerPixel(&_ret));
		return _ret;
	}
	final bool IsEqual(Windows.Graphics.Display.Core.HdmiDisplayMode mode)
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).abi_IsEqual(mode, &_ret));
		return _ret;
	}
	final Windows.Graphics.Display.Core.HdmiDisplayColorSpace ColorSpace()
	{
		Windows.Graphics.Display.Core.HdmiDisplayColorSpace _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).get_ColorSpace(&_ret));
		return _ret;
	}
	final Windows.Graphics.Display.Core.HdmiDisplayPixelEncoding PixelEncoding()
	{
		Windows.Graphics.Display.Core.HdmiDisplayPixelEncoding _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).get_PixelEncoding(&_ret));
		return _ret;
	}
	final bool IsSdrLuminanceSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).get_IsSdrLuminanceSupported(&_ret));
		return _ret;
	}
	final bool IsSmpte2084Supported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).get_IsSmpte2084Supported(&_ret));
		return _ret;
	}
	final bool Is2086MetadataSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.Graphics.Display.Core.IHdmiDisplayMode)this.asInterface(uuid("0c06d5ad-1b90-4f51-9981-ef5a1c0ddf66"))).get_Is2086MetadataSupported(&_ret));
		return _ret;
	}
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