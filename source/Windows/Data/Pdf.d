module Windows.Data.Pdf;

import dwinrt;

@uuid("ac7ebedd-80fa-4089-846e-81b77ff5a86c")
@WinrtFactory("Windows.Data.Pdf.PdfDocument")
interface IPdfDocument : IInspectable
{
extern(Windows):
	HRESULT abi_GetPage(UINT32 pageIndex, Windows.Data.Pdf.PdfPage* return_pdfPage);
	HRESULT get_PageCount(UINT32* return_value);
	HRESULT get_IsPasswordProtected(bool* return_value);
}

@uuid("433a0b5f-c007-4788-90f2-08143d922599")
@WinrtFactory("Windows.Data.Pdf.PdfDocument")
interface IPdfDocumentStatics : IInspectable
{
extern(Windows):
	HRESULT abi_LoadFromFileAsync(Windows.Storage.IStorageFile file, Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument)* return_asyncInfo);
	HRESULT abi_LoadFromFileWithPasswordAsync(Windows.Storage.IStorageFile file, HSTRING password, Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument)* return_asyncInfo);
	HRESULT abi_LoadFromStreamAsync(Windows.Storage.Streams.IRandomAccessStream inputStream, Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument)* return_asyncInfo);
	HRESULT abi_LoadFromStreamWithPasswordAsync(Windows.Storage.Streams.IRandomAccessStream inputStream, HSTRING password, Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument)* return_asyncInfo);
}

@uuid("9db4b0c8-5320-4cfc-ad76-493fdad0e594")
@WinrtFactory("Windows.Data.Pdf.PdfPage")
interface IPdfPage : IInspectable
{
extern(Windows):
	HRESULT abi_RenderToStreamAsync(Windows.Storage.Streams.IRandomAccessStream outputStream, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_RenderWithOptionsToStreamAsync(Windows.Storage.Streams.IRandomAccessStream outputStream, Windows.Data.Pdf.PdfPageRenderOptions options, Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_PreparePageAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT get_Index(UINT32* return_value);
	HRESULT get_Size(Windows.Foundation.Size* return_value);
	HRESULT get_Dimensions(Windows.Data.Pdf.PdfPageDimensions* return_value);
	HRESULT get_Rotation(Windows.Data.Pdf.PdfPageRotation* return_value);
	HRESULT get_PreferredZoom(float* return_value);
}

@uuid("22170471-313e-44e8-835d-63a3e7624a10")
@WinrtFactory("Windows.Data.Pdf.PdfPageDimensions")
interface IPdfPageDimensions : IInspectable
{
extern(Windows):
	HRESULT get_MediaBox(Windows.Foundation.Rect* return_value);
	HRESULT get_CropBox(Windows.Foundation.Rect* return_value);
	HRESULT get_BleedBox(Windows.Foundation.Rect* return_value);
	HRESULT get_TrimBox(Windows.Foundation.Rect* return_value);
	HRESULT get_ArtBox(Windows.Foundation.Rect* return_value);
}

@uuid("3c98056f-b7cf-4c29-9a04-52d90267f425")
@WinrtFactory("Windows.Data.Pdf.PdfPageRenderOptions")
interface IPdfPageRenderOptions : IInspectable
{
extern(Windows):
	HRESULT get_SourceRect(Windows.Foundation.Rect* return_value);
	HRESULT set_SourceRect(Windows.Foundation.Rect value);
	HRESULT get_DestinationWidth(UINT32* return_value);
	HRESULT set_DestinationWidth(UINT32 value);
	HRESULT get_DestinationHeight(UINT32* return_value);
	HRESULT set_DestinationHeight(UINT32 value);
	HRESULT get_BackgroundColor(Windows.UI.Color* return_value);
	HRESULT set_BackgroundColor(Windows.UI.Color value);
	HRESULT get_IsIgnoringHighContrast(bool* return_value);
	HRESULT set_IsIgnoringHighContrast(bool value);
	HRESULT get_BitmapEncoderId(GUID* return_value);
	HRESULT set_BitmapEncoderId(GUID value);
}

interface PdfDocument : Windows.Data.Pdf.IPdfDocument
{
extern(Windows):
	final Windows.Data.Pdf.PdfPage GetPage(UINT32 pageIndex)
	{
		Windows.Data.Pdf.PdfPage _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfDocument)this.asInterface(uuid("ac7ebedd-80fa-4089-846e-81b77ff5a86c"))).abi_GetPage(pageIndex, &_ret));
		return _ret;
	}
	final UINT32 PageCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfDocument)this.asInterface(uuid("ac7ebedd-80fa-4089-846e-81b77ff5a86c"))).get_PageCount(&_ret));
		return _ret;
	}
	final bool IsPasswordProtected()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfDocument)this.asInterface(uuid("ac7ebedd-80fa-4089-846e-81b77ff5a86c"))).get_IsPasswordProtected(&_ret));
		return _ret;
	}

	private static Windows.Data.Pdf.IPdfDocumentStatics _staticInstance;
	public static Windows.Data.Pdf.IPdfDocumentStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Data.Pdf.IPdfDocumentStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument) LoadFromFileAsync(Windows.Storage.IStorageFile file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument) _ret;
		Debug.OK(staticInstance.abi_LoadFromFileAsync(file, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument) LoadFromFileWithPasswordAsync(Windows.Storage.IStorageFile file, HSTRING password)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument) _ret;
		Debug.OK(staticInstance.abi_LoadFromFileWithPasswordAsync(file, password, &_ret));
		return _ret;
	}
	alias LoadFromFileAsync = LoadFromFileWithPasswordAsync;
	static Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument) LoadFromStreamAsync(Windows.Storage.Streams.IRandomAccessStream inputStream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument) _ret;
		Debug.OK(staticInstance.abi_LoadFromStreamAsync(inputStream, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument) LoadFromStreamWithPasswordAsync(Windows.Storage.Streams.IRandomAccessStream inputStream, HSTRING password)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Data.Pdf.PdfDocument) _ret;
		Debug.OK(staticInstance.abi_LoadFromStreamWithPasswordAsync(inputStream, password, &_ret));
		return _ret;
	}
	alias LoadFromStreamAsync = LoadFromStreamWithPasswordAsync;
}

interface PdfPage : Windows.Data.Pdf.IPdfPage, Windows.Foundation.IClosable
{
extern(Windows):
	final Windows.Foundation.IAsyncAction RenderToStreamAsync(Windows.Storage.Streams.IRandomAccessStream outputStream)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPage)this.asInterface(uuid("9db4b0c8-5320-4cfc-ad76-493fdad0e594"))).abi_RenderToStreamAsync(outputStream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RenderWithOptionsToStreamAsync(Windows.Storage.Streams.IRandomAccessStream outputStream, Windows.Data.Pdf.PdfPageRenderOptions options)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPage)this.asInterface(uuid("9db4b0c8-5320-4cfc-ad76-493fdad0e594"))).abi_RenderWithOptionsToStreamAsync(outputStream, options, &_ret));
		return _ret;
	}
	alias RenderToStreamAsync = RenderWithOptionsToStreamAsync;
	final Windows.Foundation.IAsyncAction PreparePageAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPage)this.asInterface(uuid("9db4b0c8-5320-4cfc-ad76-493fdad0e594"))).abi_PreparePageAsync(&_ret));
		return _ret;
	}
	final UINT32 Index()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPage)this.asInterface(uuid("9db4b0c8-5320-4cfc-ad76-493fdad0e594"))).get_Index(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size Size()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPage)this.asInterface(uuid("9db4b0c8-5320-4cfc-ad76-493fdad0e594"))).get_Size(&_ret));
		return _ret;
	}
	final Windows.Data.Pdf.PdfPageDimensions Dimensions()
	{
		Windows.Data.Pdf.PdfPageDimensions _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPage)this.asInterface(uuid("9db4b0c8-5320-4cfc-ad76-493fdad0e594"))).get_Dimensions(&_ret));
		return _ret;
	}
	final Windows.Data.Pdf.PdfPageRotation Rotation()
	{
		Windows.Data.Pdf.PdfPageRotation _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPage)this.asInterface(uuid("9db4b0c8-5320-4cfc-ad76-493fdad0e594"))).get_Rotation(&_ret));
		return _ret;
	}
	final float PreferredZoom()
	{
		float _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPage)this.asInterface(uuid("9db4b0c8-5320-4cfc-ad76-493fdad0e594"))).get_PreferredZoom(&_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
}

interface PdfPageDimensions : Windows.Data.Pdf.IPdfPageDimensions
{
extern(Windows):
	final Windows.Foundation.Rect MediaBox()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageDimensions)this.asInterface(uuid("22170471-313e-44e8-835d-63a3e7624a10"))).get_MediaBox(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect CropBox()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageDimensions)this.asInterface(uuid("22170471-313e-44e8-835d-63a3e7624a10"))).get_CropBox(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BleedBox()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageDimensions)this.asInterface(uuid("22170471-313e-44e8-835d-63a3e7624a10"))).get_BleedBox(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect TrimBox()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageDimensions)this.asInterface(uuid("22170471-313e-44e8-835d-63a3e7624a10"))).get_TrimBox(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect ArtBox()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageDimensions)this.asInterface(uuid("22170471-313e-44e8-835d-63a3e7624a10"))).get_ArtBox(&_ret));
		return _ret;
	}
}

interface PdfPageRenderOptions : Windows.Data.Pdf.IPdfPageRenderOptions
{
extern(Windows):
	final Windows.Foundation.Rect SourceRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).get_SourceRect(&_ret));
		return _ret;
	}
	final void SourceRect(Windows.Foundation.Rect value)
	{
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).set_SourceRect(value));
	}
	final UINT32 DestinationWidth()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).get_DestinationWidth(&_ret));
		return _ret;
	}
	final void DestinationWidth(UINT32 value)
	{
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).set_DestinationWidth(value));
	}
	final UINT32 DestinationHeight()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).get_DestinationHeight(&_ret));
		return _ret;
	}
	final void DestinationHeight(UINT32 value)
	{
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).set_DestinationHeight(value));
	}
	final Windows.UI.Color BackgroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).get_BackgroundColor(&_ret));
		return _ret;
	}
	final void BackgroundColor(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).set_BackgroundColor(value));
	}
	final bool IsIgnoringHighContrast()
	{
		bool _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).get_IsIgnoringHighContrast(&_ret));
		return _ret;
	}
	final void IsIgnoringHighContrast(bool value)
	{
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).set_IsIgnoringHighContrast(value));
	}
	final GUID BitmapEncoderId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).get_BitmapEncoderId(&_ret));
		return _ret;
	}
	final void BitmapEncoderId(GUID value)
	{
		Debug.OK((cast(Windows.Data.Pdf.IPdfPageRenderOptions)this.asInterface(uuid("3c98056f-b7cf-4c29-9a04-52d90267f425"))).set_BitmapEncoderId(value));
	}
	static PdfPageRenderOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PdfPageRenderOptions).abi_ActivateInstance(&ret));
		return cast(PdfPageRenderOptions) ret;
	}
}

enum PdfPageRotation
{
	Normal = 0,
	Rotate90 = 1,
	Rotate180 = 2,
	Rotate270 = 3
}