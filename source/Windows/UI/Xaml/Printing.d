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
extern(Windows):
	HRESULT get_PrintTaskOptions(Windows.Graphics.Printing.PrintTaskOptions* return_value);
}

@uuid("a43d703d-dea9-4df6-a7ed-35049cd485c7")
@WinrtFactory("Windows.UI.Xaml.Printing.GetPreviewPageEventArgs")
interface IGetPreviewPageEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PageNumber(INT32* return_value);
}

@uuid("ed945fd6-79ab-42b7-930a-3d6e09011d21")
@WinrtFactory("Windows.UI.Xaml.Printing.PaginateEventArgs")
interface IPaginateEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_PrintTaskOptions(Windows.Graphics.Printing.PrintTaskOptions* return_value);
	HRESULT get_CurrentPreviewPageNumber(INT32* return_value);
}

@uuid("e44327c3-a999-485b-b1d8-72dc517821e6")
@WinrtFactory("Windows.UI.Xaml.Printing.PrintDocument")
interface IPrintDocument : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateInstance(IInspectable outer, IInspectable* out_inner, Windows.UI.Xaml.Printing.PrintDocument* return_instance);
}

@uuid("fd970a3c-b152-49e0-a6bd-6aa6477e43c7")
@WinrtFactory("Windows.UI.Xaml.Printing.PrintDocument")
interface IPrintDocumentStatics : IInspectable
{
extern(Windows):
	HRESULT get_DocumentSourceProperty(Windows.UI.Xaml.DependencyProperty* return_value);
}

interface AddPagesEventArgs : Windows.UI.Xaml.Printing.IAddPagesEventArgs
{
extern(Windows):
	final Windows.Graphics.Printing.PrintTaskOptions PrintTaskOptions()
	{
		Windows.Graphics.Printing.PrintTaskOptions _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Printing.IAddPagesEventArgs).get_PrintTaskOptions(&_ret));
		return _ret;
	}
}

interface GetPreviewPageEventArgs : Windows.UI.Xaml.Printing.IGetPreviewPageEventArgs
{
extern(Windows):
	final INT32 PageNumber()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Printing.IGetPreviewPageEventArgs).get_PageNumber(&_ret));
		return _ret;
	}
}

interface PaginateEventArgs : Windows.UI.Xaml.Printing.IPaginateEventArgs
{
extern(Windows):
	final Windows.Graphics.Printing.PrintTaskOptions PrintTaskOptions()
	{
		Windows.Graphics.Printing.PrintTaskOptions _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Printing.IPaginateEventArgs).get_PrintTaskOptions(&_ret));
		return _ret;
	}
	final INT32 CurrentPreviewPageNumber()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Printing.IPaginateEventArgs).get_CurrentPreviewPageNumber(&_ret));
		return _ret;
	}
}

interface PrintDocument : Windows.UI.Xaml.DependencyObject, Windows.UI.Xaml.Printing.IPrintDocument
{
extern(Windows):
	final Windows.Graphics.Printing.IPrintDocumentSource DocumentSource()
	{
		Windows.Graphics.Printing.IPrintDocumentSource _ret;
		Debug.OK(this.as!(Windows.UI.Xaml.Printing.IPrintDocument).get_DocumentSource(&_ret));
		return _ret;
	}
	final void removePaginate(EventRegistrationToken token)
	{
		Debug.OK(remove_Paginate(token));
	}
	final void removeGetPreviewPage(EventRegistrationToken token)
	{
		Debug.OK(remove_GetPreviewPage(token));
	}
	final void removeAddPages(EventRegistrationToken token)
	{
		Debug.OK(remove_AddPages(token));
	}
	final void AddPage(Windows.UI.Xaml.UIElement pageVisual)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Printing.IPrintDocument).abi_AddPage(pageVisual));
	}
	final void AddPagesComplete()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Printing.IPrintDocument).abi_AddPagesComplete());
	}
	final void SetPreviewPageCount(INT32 count, Windows.UI.Xaml.Printing.PreviewPageCountType type)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Printing.IPrintDocument).abi_SetPreviewPageCount(count, type));
	}
	final void SetPreviewPage(INT32 pageNumber, Windows.UI.Xaml.UIElement pageVisual)
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Printing.IPrintDocument).abi_SetPreviewPage(pageNumber, pageVisual));
	}
	final void InvalidatePreview()
	{
		Debug.OK(this.as!(Windows.UI.Xaml.Printing.IPrintDocument).abi_InvalidatePreview());
	}
}
@makable!(PrintDocument, PrintDocument, Windows.UI.Xaml.Printing.IPrintDocumentFactory)
class PrintDocumentT(Base) : AgileObject!Base, PrintDocument
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_DocumentSource(Windows.Graphics.Printing.IPrintDocumentSource* return_value) { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).get_DocumentSource(return_value); }
	override HRESULT add_Paginate(Windows.UI.Xaml.Printing.PaginateEventHandler value, EventRegistrationToken* return_token) { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).add_Paginate(value, return_token); }
	override HRESULT remove_Paginate(EventRegistrationToken token) { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).remove_Paginate(token); }
	override HRESULT add_GetPreviewPage(Windows.UI.Xaml.Printing.GetPreviewPageEventHandler value, EventRegistrationToken* return_token) { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).add_GetPreviewPage(value, return_token); }
	override HRESULT remove_GetPreviewPage(EventRegistrationToken token) { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).remove_GetPreviewPage(token); }
	override HRESULT add_AddPages(Windows.UI.Xaml.Printing.AddPagesEventHandler value, EventRegistrationToken* return_token) { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).add_AddPages(value, return_token); }
	override HRESULT remove_AddPages(EventRegistrationToken token) { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).remove_AddPages(token); }
	override HRESULT abi_AddPage(Windows.UI.Xaml.UIElement pageVisual) { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).abi_AddPage(pageVisual); }
	override HRESULT abi_AddPagesComplete() { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).abi_AddPagesComplete(); }
	override HRESULT abi_SetPreviewPageCount(INT32 count, Windows.UI.Xaml.Printing.PreviewPageCountType type) { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).abi_SetPreviewPageCount(count, type); }
	override HRESULT abi_SetPreviewPage(INT32 pageNumber, Windows.UI.Xaml.UIElement pageVisual) { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).abi_SetPreviewPage(pageNumber, pageVisual); }
	override HRESULT abi_InvalidatePreview() { return m_inner.as!(Windows.UI.Xaml.Printing.IPrintDocument).abi_InvalidatePreview(); }

	this() {}
	IInspectable m_inner;
}

enum PreviewPageCountType
{
	Final = 0,
	Intermediate = 1
}