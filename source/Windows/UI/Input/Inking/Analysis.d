module Windows.UI.Input.Inking.Analysis;

import dwinrt;

@uuid("ee049368-6110-4136-95f9-ee809fc20030")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisInkBullet")
interface IInkAnalysisInkBullet : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
}

@uuid("6a85ed1f-1fe4-4e15-898c-8e112377e021")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisInkDrawing")
interface IInkAnalysisInkDrawing : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DrawingKind(Windows.UI.Input.Inking.Analysis.InkAnalysisDrawingKind* return_value);
	HRESULT get_Center(Windows.Foundation.Point* return_value);
	HRESULT get_Points(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Point)* return_value);
}

@uuid("4bd228ad-83af-4034-8f3b-f8687dfff436")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisInkWord")
interface IInkAnalysisInkWord : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
	HRESULT get_TextAlternates(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("a06d048d-2b8d-4754-ad5a-d0871193a956")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisLine")
interface IInkAnalysisLine : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
	HRESULT get_IndentLevel(INT32* return_value);
}

@uuid("b4e3c23f-c4c3-4c3a-a1a6-9d85547ee586")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisListItem")
interface IInkAnalysisListItem : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
}

@uuid("30831f05-5f64-4a2c-ba37-4f4887879574")
interface IInkAnalysisNode : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IInkAnalysisParagraph : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
}

@uuid("8948ba79-a243-4aa3-a294-1f98bd0ff580")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisResult")
interface IInkAnalysisResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Status(Windows.UI.Input.Inking.Analysis.InkAnalysisStatus* return_value);
}

@uuid("3fb6a3c4-2fde-4061-8502-a90f32545b84")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisRoot")
interface IInkAnalysisRoot : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
	HRESULT abi_FindNodes(Windows.UI.Input.Inking.Analysis.InkAnalysisNodeKind nodeKind, Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.Analysis.IInkAnalysisNode)* return_result);
}

@uuid("dd6d6231-bd16-4663-b5ae-941d3043ef5b")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalysisWritingRegion")
interface IInkAnalysisWritingRegion : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_RecognizedText(HSTRING* return_value);
}

@uuid("f12b8f95-0866-4dc5-8c77-f88614dfe38c")
@WinrtFactory("Windows.UI.Input.Inking.Analysis.InkAnalyzer")
interface IInkAnalyzer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateAnalyzer(Windows.UI.Input.Inking.Analysis.InkAnalyzer* return_result);
}

interface InkAnalysisInkBullet : Windows.UI.Input.Inking.Analysis.IInkAnalysisInkBullet, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
}

interface InkAnalysisInkDrawing : Windows.UI.Input.Inking.Analysis.IInkAnalysisInkDrawing, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
}

interface InkAnalysisInkWord : Windows.UI.Input.Inking.Analysis.IInkAnalysisInkWord, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
}

interface InkAnalysisLine : Windows.UI.Input.Inking.Analysis.IInkAnalysisLine, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
}

interface InkAnalysisListItem : Windows.UI.Input.Inking.Analysis.IInkAnalysisListItem, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
}

interface InkAnalysisNode : Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
}

interface InkAnalysisParagraph : Windows.UI.Input.Inking.Analysis.IInkAnalysisParagraph, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
}

interface InkAnalysisResult : Windows.UI.Input.Inking.Analysis.IInkAnalysisResult
{
}

interface InkAnalysisRoot : Windows.UI.Input.Inking.Analysis.IInkAnalysisRoot, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
}

interface InkAnalysisWritingRegion : Windows.UI.Input.Inking.Analysis.IInkAnalysisWritingRegion, Windows.UI.Input.Inking.Analysis.IInkAnalysisNode
{
}

interface InkAnalyzer : Windows.UI.Input.Inking.Analysis.IInkAnalyzer
{
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