module Windows.UI.Xaml.Printing;

import dwinrt;

@uuid("d4b57970-57a0-4209-847c-c093b54bc729")
interface AddPagesEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Printing.AddPagesEventArgs e);
}

@uuid("ccb3e9ed-9c11-4e50-ab49-e98086bbfdef")
interface GetPreviewPageEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Printing.GetPreviewPageEventArgs e);
}

@uuid("0cc05b61-811b-4a32-9965-13eb78dbb01b")
interface PaginateEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(IInspectable sender, Windows.UI.Xaml.Printing.PaginateEventArgs e);
}

@uuid("e2e52be5-056c-4420-9795-cb3526ce0c20")
@WinrtFactory("Windows.UI.Xaml.Printing.AddPagesEventArgs")
interface IAddPagesEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PrintTaskOptions(Windows.Graphics.Printing.PrintTaskOptions* return_value);
}

@uuid("a43d703d-dea9-4df6-a7ed-35049cd485c7")
@WinrtFactory("Windows.UI.Xaml.Printing.GetPreviewPageEventArgs")
interface IGetPreviewPageEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PageNumber(INT32* return_value);
}

@uuid("ed945fd6-79ab-42b7-930a-3d6e09011d21")
@WinrtFactory("Windows.UI.Xaml.Printing.PaginateEventArgs")
interface IPaginateEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PrintTaskOptions(Windows.Graphics.Printing.PrintTaskOptions* return_value);
	HRESULT get_CurrentPreviewPageNumber(INT32* return_value);
}

@uuid("e44327c3-a999-485b-b1d8-72dc517821e6")
@WinrtFactory("Windows.UI.Xaml.Printing.PrintDocument")
interface IPrintDocument : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DocumentSource(Windows.Graphics.Printing.IPrintDocumentSource* return_value);
	HRESULT add_Paginate(Windows.UI.Xaml.Printing.PaginateEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_Paginate(EventRegistrationToken token);
	HRESULT add_GetPreviewPage(Windows.UI.Xaml.Printing.GetPreviewPageEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_GetPreviewPage(EventRegistrationToken token);
	HRESULT add_AddPages(Windows.UI.Xaml.Printing.AddPagesEventHandler value, EventRegistrationToken* return_token);
	HRESULT remove_AddPages(EventRegistrationToken token);
	HRESULT abi_AddPage(Windows.UI.Xaml.UIElement pageVisual);
	HRESULT abi_AddPagesComplete();
	HRESULT abi_SetPreviewPageCount(INT32 count, Windows.UI.Xaml.Printing.PreviewPageCountType type);
	HRESULT abi_SetPreviewPage(INT32 pageNumber, Windows.UI.Xaml.UIElement pageVisual);
	HRESULT abi_InvalidatePreview();
}

@uuid("fb87b18f-2606-4a2f-99d4-a7cdbc35d7c7")
@WinrtFactory("Windows.UI.Xaml.Printing.PrintDocument")
interface IPrintDocumentFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Printing.PrintDocument* return_instance);
}

@uuid("fd970a3c-b152-49e0-a6bd-6aa6477e43c7")
@WinrtFactory("Windows.UI.Xaml.Printing.PrintDocument")
interface IPrintDocumentStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DocumentSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

interface AddPagesEventArgs : Windows.UI.Xaml.Printing.IAddPagesEventArgs
{
}

interface GetPreviewPageEventArgs : Windows.UI.Xaml.Printing.IGetPreviewPageEventArgs
{
}

interface PaginateEventArgs : Windows.UI.Xaml.Printing.IPaginateEventArgs
{
}

interface PrintDocument : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Printing.IPrintDocument
{
}

enum PreviewPageCountType
{
	Final = 0,
	Intermediate = 1
}