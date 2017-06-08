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
	HRESULT get_PreferredZoom(FLOAT* return_value);
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
}

interface PdfPage : Windows.Data.Pdf.IPdfPage, Windows.Foundation.IClosable
{
}

interface PdfPageDimensions : Windows.Data.Pdf.IPdfPageDimensions
{
}

interface PdfPageRenderOptions : Windows.Data.Pdf.IPdfPageRenderOptions
{
}

enum PdfPageRotation
{
	Normal = 0,
	Rotate90 = 1,
	Rotate180 = 2,
	Rotate270 = 3
}