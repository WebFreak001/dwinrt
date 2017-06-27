module Windows.UI.Input.Inking.Analysis;

import dwinrt;

@uuid("ee049368-6110-4136-95f9-ee809fc20030")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisInkBullet")
interface IInkAnalysisInkBullet_Base : IInspectable
{
extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
}
@uuid("ee049368-6110-4136-95f9-ee809fc20030")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisInkBullet")
interface IInkAnalysisInkBullet : IInkAnalysisInkBullet_Base, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode {}

@uuid("6a85ed1f-1fe4-4e15-898c-8e112377e021")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisInkDrawing")
interface IInkAnalysisInkDrawing_Base : IInspectable
{
extern(Windows):
	HRESULT get_DrawingKind(Windows.UI.Input.Inking.Analysis.InkAnalysisDrawingKind* return_value);
	HRESULT get_Center(Windows.Foundation.Point* return_value);
	HRESULT get_Points(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point)* return_value);
}
@uuid("6a85ed1f-1fe4-4e15-898c-8e112377e021")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisInkDrawing")
interface IInkAnalysisInkDrawing : IInkAnalysisInkDrawing_Base, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode {}

@uuid("4bd228ad-83af-4034-8f3b-f8687dfff436")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisInkWord")
interface IInkAnalysisInkWord_Base : IInspectable
{
extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
	HRESULT get_TextAlternates(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}
@uuid("4bd228ad-83af-4034-8f3b-f8687dfff436")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisInkWord")
interface IInkAnalysisInkWord : IInkAnalysisInkWord_Base, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode {}

@uuid("a06d048d-2b8d-4754-ad5a-d0871193a956")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisLine")
interface IInkAnalysisLine_Base : IInspectable
{
extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
	HRESULT get_IndentLevel(INT32* return_value);
}
@uuid("a06d048d-2b8d-4754-ad5a-d0871193a956")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisLine")
interface IInkAnalysisLine : IInkAnalysisLine_Base, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode {}

@uuid("b4e3c23f-c4c3-4c3a-a1a6-9d85547ee586")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisListItem")
interface IInkAnalysisListItem_Base : IInspectable
{
extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
}
@uuid("b4e3c23f-c4c3-4c3a-a1a6-9d85547ee586")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisListItem")
interface IInkAnalysisListItem : IInkAnalysisListItem_Base, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode {}

@uuid("30831f05-5f64-4a2c-ba37-4f4887879574")
interface IInkAnalysisNode : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_Kind(Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind* return_value);
	HRESULT get_BoundingRect(Windows.Foundation.Rect* return_value);
	HRESULT get_RotatedBoundingRect(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point)* return_value);
	HRESULT get_Children(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)* return_value);
	HRESULT get_Parent(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode* return_value);
	HRESULT abi_GetStrokeIds(Windows.Foundation.Collections.IVectorView!(UINT32)* return_strokeIds);
}

@uuid("d9ad045c-0cd1-4dd4-a68b-eb1f12b3d727")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisParagraph")
interface IInkAnalysisParagraph_Base : IInspectable
{
extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
}
@uuid("d9ad045c-0cd1-4dd4-a68b-eb1f12b3d727")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisParagraph")
interface IInkAnalysisParagraph : IInkAnalysisParagraph_Base, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode {}

@uuid("8948ba79-a243-4aa3-a294-1f98bd0ff580")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisResult")
interface IInkAnalysisResult : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.UI.Input.Inking.Analysis.InkAnalysisStatus* return_value);
}

@uuid("3fb6a3c4-2fde-4061-8502-a90f32545b84")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisRoot")
interface IInkAnalysisRoot_Base : IInspectable
{
extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
	HRESULT abi_FindNodes(Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind nodeKind, Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)* return_result);
}
@uuid("3fb6a3c4-2fde-4061-8502-a90f32545b84")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisRoot")
interface IInkAnalysisRoot : IInkAnalysisRoot_Base, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode {}

@uuid("dd6d6231-bd16-4663-b5ae-941d3043ef5b")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisWritingRegion")
interface IInkAnalysisWritingRegion_Base : IInspectable
{
extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
}
@uuid("dd6d6231-bd16-4663-b5ae-941d3043ef5b")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisWritingRegion")
interface IInkAnalysisWritingRegion : IInkAnalysisWritingRegion_Base, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode {}

@uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalyzer")
interface IInkAnalyzer : IInspectable
{
extern(Windows):
	HRESULT get_AnalysisRoot(Windows.UI.Input.Inking.Analysis.InkAnalysisRoot* return_value);
	HRESULT get_IsAnalyzing(bool* return_value);
	HRESULT abi_AddDataForStroke(Windows.UI.Input.Inking.InkStroke stroke);
	HRESULT abi_AddDataForStrokes(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkStroke) strokes);
	HRESULT abi_ClearDataForAllStrokes();
	HRESULT abi_RemoveDataForStroke(UINT32 strokeId);
	HRESULT abi_RemoveDataForStrokes(Windows.Foundation.Collections.IIterable!(UINT32) strokeIds);
	HRESULT abi_ReplaceDataForStroke(Windows.UI.Input.Inking.InkStroke stroke);
	HRESULT abi_SetStrokeDataKind(UINT32 strokeId, Windows.UI.Input.Inking.Analysis.InkAnalysisStrokeKind strokeKind);
	HRESULT abi_AnalyzeAsync(Windows.Foundation.IAsyncOperation!(Windows.UI.Input.Inking.Analysis.InkAnalysisResult)* return_result);
}

@uuid("29138686-1963-49d8-9589-e14384c769e3")
interface IInkAnalyzerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAnalyzer(Windows.UI.Input.Inking.Analysis.InkAnalyzer* return_result);
}

interface InkAnalysisInkBullet : Windows.UI.Input.Inking.Analysis.IInkAnalysisInkBullet, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
extern(Windows):
	final HSTRING RecognizedText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisInkBullet)this.asInterface(uuid("ee049368-6110-4136-95f9-ee809fc20030"))).get_RecognizedText(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind Kind()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_BoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) RotatedBoundingRect()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_RotatedBoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) Children()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.IInkAnalysisNode Parent()
	{
		Windows.UI.Input.Inking.Analysis.IInkAnalysisNode _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Parent(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) GetStrokeIds()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).abi_GetStrokeIds(&_ret));
		return _ret;
	}
}

interface InkAnalysisInkDrawing : Windows.UI.Input.Inking.Analysis.IInkAnalysisInkDrawing, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
extern(Windows):
	final Windows.UI.Input.Inking.Analysis.InkAnalysisDrawingKind DrawingKind()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisDrawingKind _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisInkDrawing)this.asInterface(uuid("6a85ed1f-1fe4-4e15-898c-8e112377e021"))).get_DrawingKind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point Center()
	{
		Windows.Foundation.Point _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisInkDrawing)this.asInterface(uuid("6a85ed1f-1fe4-4e15-898c-8e112377e021"))).get_Center(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) Points()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisInkDrawing)this.asInterface(uuid("6a85ed1f-1fe4-4e15-898c-8e112377e021"))).get_Points(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind Kind()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_BoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) RotatedBoundingRect()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_RotatedBoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) Children()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.IInkAnalysisNode Parent()
	{
		Windows.UI.Input.Inking.Analysis.IInkAnalysisNode _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Parent(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) GetStrokeIds()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).abi_GetStrokeIds(&_ret));
		return _ret;
	}
}

interface InkAnalysisInkWord : Windows.UI.Input.Inking.Analysis.IInkAnalysisInkWord, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
extern(Windows):
	final HSTRING RecognizedText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisInkWord)this.asInterface(uuid("4bd228ad-83af-4034-8f3b-f8687dfff436"))).get_RecognizedText(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) TextAlternates()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisInkWord)this.asInterface(uuid("4bd228ad-83af-4034-8f3b-f8687dfff436"))).get_TextAlternates(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind Kind()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_BoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) RotatedBoundingRect()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_RotatedBoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) Children()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.IInkAnalysisNode Parent()
	{
		Windows.UI.Input.Inking.Analysis.IInkAnalysisNode _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Parent(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) GetStrokeIds()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).abi_GetStrokeIds(&_ret));
		return _ret;
	}
}

interface InkAnalysisLine : Windows.UI.Input.Inking.Analysis.IInkAnalysisLine, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
extern(Windows):
	final HSTRING RecognizedText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisLine)this.asInterface(uuid("a06d048d-2b8d-4754-ad5a-d0871193a956"))).get_RecognizedText(&_ret));
		return _ret;
	}
	final INT32 IndentLevel()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisLine)this.asInterface(uuid("a06d048d-2b8d-4754-ad5a-d0871193a956"))).get_IndentLevel(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind Kind()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_BoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) RotatedBoundingRect()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_RotatedBoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) Children()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.IInkAnalysisNode Parent()
	{
		Windows.UI.Input.Inking.Analysis.IInkAnalysisNode _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Parent(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) GetStrokeIds()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).abi_GetStrokeIds(&_ret));
		return _ret;
	}
}

interface InkAnalysisListItem : Windows.UI.Input.Inking.Analysis.IInkAnalysisListItem, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
extern(Windows):
	final HSTRING RecognizedText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisListItem)this.asInterface(uuid("b4e3c23f-c4c3-4c3a-a1a6-9d85547ee586"))).get_RecognizedText(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind Kind()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_BoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) RotatedBoundingRect()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_RotatedBoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) Children()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.IInkAnalysisNode Parent()
	{
		Windows.UI.Input.Inking.Analysis.IInkAnalysisNode _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Parent(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) GetStrokeIds()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).abi_GetStrokeIds(&_ret));
		return _ret;
	}
}

interface InkAnalysisNode : Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
extern(Windows):
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind Kind()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_BoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) RotatedBoundingRect()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_RotatedBoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) Children()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.IInkAnalysisNode Parent()
	{
		Windows.UI.Input.Inking.Analysis.IInkAnalysisNode _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Parent(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) GetStrokeIds()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).abi_GetStrokeIds(&_ret));
		return _ret;
	}
}

interface InkAnalysisParagraph : Windows.UI.Input.Inking.Analysis.IInkAnalysisParagraph, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
extern(Windows):
	final HSTRING RecognizedText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisParagraph)this.asInterface(uuid("d9ad045c-0cd1-4dd4-a68b-eb1f12b3d727"))).get_RecognizedText(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind Kind()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_BoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) RotatedBoundingRect()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_RotatedBoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) Children()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.IInkAnalysisNode Parent()
	{
		Windows.UI.Input.Inking.Analysis.IInkAnalysisNode _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Parent(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) GetStrokeIds()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).abi_GetStrokeIds(&_ret));
		return _ret;
	}
}

interface InkAnalysisResult : Windows.UI.Input.Inking.Analysis.IInkAnalysisResult
{
extern(Windows):
	final Windows.UI.Input.Inking.Analysis.InkAnalysisStatus Status()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisStatus _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisResult)this.asInterface(uuid("8948ba79-a243-4aa3-a294-1f98bd0ff580"))).get_Status(&_ret));
		return _ret;
	}
}

interface InkAnalysisRoot : Windows.UI.Input.Inking.Analysis.IInkAnalysisRoot, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
extern(Windows):
	final HSTRING RecognizedText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisRoot)this.asInterface(uuid("3fb6a3c4-2fde-4061-8502-a90f32545b84"))).get_RecognizedText(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) FindNodes(Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind nodeKind)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisRoot)this.asInterface(uuid("3fb6a3c4-2fde-4061-8502-a90f32545b84"))).abi_FindNodes(nodeKind, &_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind Kind()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_BoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) RotatedBoundingRect()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_RotatedBoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) Children()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.IInkAnalysisNode Parent()
	{
		Windows.UI.Input.Inking.Analysis.IInkAnalysisNode _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Parent(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) GetStrokeIds()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).abi_GetStrokeIds(&_ret));
		return _ret;
	}
}

interface InkAnalysisWritingRegion : Windows.UI.Input.Inking.Analysis.IInkAnalysisWritingRegion, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
extern(Windows):
	final HSTRING RecognizedText()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisWritingRegion)this.asInterface(uuid("dd6d6231-bd16-4663-b5ae-941d3043ef5b"))).get_RecognizedText(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind Kind()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Kind(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_BoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) RotatedBoundingRect()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_RotatedBoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) Children()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Children(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.Analysis.IInkAnalysisNode Parent()
	{
		Windows.UI.Input.Inking.Analysis.IInkAnalysisNode _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).get_Parent(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(UINT32) GetStrokeIds()
	{
		Windows.Foundation.Collections.IVectorView!(UINT32) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)this.asInterface(uuid("30831f05-5f64-4a2c-ba37-4f4887879574"))).abi_GetStrokeIds(&_ret));
		return _ret;
	}
}

interface InkAnalyzer : Windows.UI.Input.Inking.Analysis.IInkAnalyzer
{
extern(Windows):
	final Windows.UI.Input.Inking.Analysis.InkAnalysisRoot AnalysisRoot()
	{
		Windows.UI.Input.Inking.Analysis.InkAnalysisRoot _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalyzer)this.asInterface(uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c"))).get_AnalysisRoot(&_ret));
		return _ret;
	}
	final bool IsAnalyzing()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalyzer)this.asInterface(uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c"))).get_IsAnalyzing(&_ret));
		return _ret;
	}
	final void AddDataForStroke(Windows.UI.Input.Inking.InkStroke stroke)
	{
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalyzer)this.asInterface(uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c"))).abi_AddDataForStroke(stroke));
	}
	final void AddDataForStrokes(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkStroke) strokes)
	{
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalyzer)this.asInterface(uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c"))).abi_AddDataForStrokes(strokes));
	}
	final void ClearDataForAllStrokes()
	{
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalyzer)this.asInterface(uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c"))).abi_ClearDataForAllStrokes());
	}
	final void RemoveDataForStroke(UINT32 strokeId)
	{
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalyzer)this.asInterface(uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c"))).abi_RemoveDataForStroke(strokeId));
	}
	final void RemoveDataForStrokes(Windows.Foundation.Collections.IIterable!(UINT32) strokeIds)
	{
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalyzer)this.asInterface(uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c"))).abi_RemoveDataForStrokes(strokeIds));
	}
	final void ReplaceDataForStroke(Windows.UI.Input.Inking.InkStroke stroke)
	{
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalyzer)this.asInterface(uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c"))).abi_ReplaceDataForStroke(stroke));
	}
	final void SetStrokeDataKind(UINT32 strokeId, Windows.UI.Input.Inking.Analysis.InkAnalysisStrokeKind strokeKind)
	{
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalyzer)this.asInterface(uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c"))).abi_SetStrokeDataKind(strokeId, strokeKind));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.UI.Input.Inking.Analysis.InkAnalysisResult) AnalyzeAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.UI.Input.Inking.Analysis.InkAnalysisResult) _ret;
		Debug.OK((cast(Windows.UI.Input.Inking.Analysis.IInkAnalyzer)this.asInterface(uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c"))).abi_AnalyzeAsync(&_ret));
		return _ret;
	}
	static InkAnalyzer New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(InkAnalyzer).abi_ActivateInstance(&ret));
		return cast(InkAnalyzer) ret;
	}
}

enum InkAnalysisDrawingKind
{
	Drawing = 0,
	Circle = 1,
	Ellipse = 2,
	Triangle = 3,
	IsoscelesTriangle = 4,
	EquilateralTriangle = 5,
	RightTriangle = 6,
	Quadrilateral = 7,
	Rectangle = 8,
	Square = 9,
	Diamond = 10,
	Trapezoid = 11,
	Parallelogram = 12,
	Pentagon = 13,
	Hexagon = 14
}

enum InkAnalysisNodeKind
{
	UnclassifiedInk = 0,
	Root = 1,
	WritingRegion = 2,
	Paragraph = 3,
	Line = 4,
	InkWord = 5,
	InkBullet = 6,
	InkDrawing = 7,
	ListItem = 8
}

enum InkAnalysisStatus
{
	Updated = 0,
	Unchanged = 1
}

enum InkAnalysisStrokeKind
{
	Auto = 0,
	Writing = 1,
	Drawing = 2
}