module Windows.UI.Input.Inking;

import dwinrt;

@uuid("97a2176c-6774-48ad-84f0-48f5a9be74f9")
@WinrtFactory("Windows.UI.Input.Inking.InkDrawingAttributes")
interface IInkDrawingAttributes : IInspectable
{
extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
	HRESULT get_PenTip(Windows.UI.Input.Inking.PenTipShape* return_value);
	HRESULT set_PenTip(Windows.UI.Input.Inking.PenTipShape value);
	HRESULT get_Size(Windows.Foundation.Size* return_value);
	HRESULT set_Size(Windows.Foundation.Size value);
	HRESULT get_IgnorePressure(bool* return_value);
	HRESULT set_IgnorePressure(bool value);
	HRESULT get_FitToCurve(bool* return_value);
	HRESULT set_FitToCurve(bool value);
}

@uuid("7cab6508-8ec4-42fd-a5a5-e4b7d1d5316d")
@WinrtFactory("Windows.UI.Input.Inking.InkDrawingAttributes")
interface IInkDrawingAttributes2 : IInspectable
{
extern(Windows):
	HRESULT get_PenTipTransform(Windows.Foundation.Numerics.Matrix3x2* return_value);
	HRESULT set_PenTipTransform(Windows.Foundation.Numerics.Matrix3x2 value);
	HRESULT get_DrawAsHighlighter(bool* return_value);
	HRESULT set_DrawAsHighlighter(bool value);
}

@uuid("72020002-7d5b-4690-8af4-e664cbe2b74f")
@WinrtFactory("Windows.UI.Input.Inking.InkDrawingAttributes")
interface IInkDrawingAttributes3 : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.UI.Input.Inking.InkDrawingAttributesKind* return_value);
	HRESULT get_PencilProperties(Windows.UI.Input.Inking.InkDrawingAttributesPencilProperties* return_value);
}

@uuid("ef65dc25-9f19-456d-91a3-bc3a3d91c5fb")
@WinrtFactory("Windows.UI.Input.Inking.InkDrawingAttributes")
interface IInkDrawingAttributes4 : IInspectable
{
extern(Windows):
	HRESULT get_IgnoreTilt(bool* return_value);
	HRESULT set_IgnoreTilt(bool value);
}

@uuid("4f2534cb-2d86-41bb-b0e8-e4c2a0253c52")
@WinrtFactory("Windows.UI.Input.Inking.InkDrawingAttributesPencilProperties")
interface IInkDrawingAttributesPencilProperties : IInspectable
{
extern(Windows):
	HRESULT get_Opacity(double* return_value);
	HRESULT set_Opacity(double value);
}

@uuid("f731e03f-1a65-4862-96cb-6e1665e17f6d")
@WinrtFactory("Windows.UI.Input.Inking.InkDrawingAttributes")
interface IInkDrawingAttributesStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateForPencil(Windows.UI.Input.Inking.InkDrawingAttributes* return_result);
}

@uuid("2778d85e-33ca-4b06-a6d3-ac3945116d37")
@WinrtFactory("Windows.UI.Input.Inking.InkInputProcessingConfiguration")
interface IInkInputProcessingConfiguration : IInspectable
{
extern(Windows):
	HRESULT get_Mode(Windows.UI.Input.Inking.InkInputProcessingMode* return_value);
	HRESULT set_Mode(Windows.UI.Input.Inking.InkInputProcessingMode value);
	HRESULT get_RightDragAction(Windows.UI.Input.Inking.InkInputRightDragAction* return_value);
	HRESULT set_RightDragAction(Windows.UI.Input.Inking.InkInputRightDragAction value);
}

@uuid("4744737d-671b-4163-9c95-4e8d7a035fe1")
@WinrtFactory("Windows.UI.Input.Inking.InkManager")
interface IInkManager_Base : IInspectable
{
extern(Windows):
	HRESULT get_Mode(Windows.UI.Input.Inking.InkManipulationMode* return_value);
	HRESULT set_Mode(Windows.UI.Input.Inking.InkManipulationMode value);
	HRESULT abi_ProcessPointerDown(Windows.UI.Input.PointerPoint pointerPoint);
	HRESULT abi_ProcessPointerUpdate(Windows.UI.Input.PointerPoint pointerPoint, IInspectable* return_updateInformation);
	HRESULT abi_ProcessPointerUp(Windows.UI.Input.PointerPoint pointerPoint, Windows.Foundation.Rect* return_updateRectangle);
	HRESULT abi_SetDefaultDrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes drawingAttributes);
	HRESULT abi_RecognizeAsync2(Windows.UI.Input.Inking.InkRecognitionTarget recognitionTarget, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult))* return_recognitionResults);
}
interface IInkManager : IInkManager_Base, Windows.UI.Input.Inking.IInkStrokeContainer, Windows.UI.Input.Inking.IInkRecognizerContainer {}

@uuid("9f87272b-858c-46a5-9b41-d195970459fd")
@WinrtFactory("Windows.UI.Input.Inking.InkPoint")
interface IInkPoint : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Pressure(FLOAT* return_value);
}

@uuid("fba9c3f7-ae56-4d5c-bd2f-0ac45f5e4af9")
@WinrtFactory("Windows.UI.Input.Inking.InkPoint")
interface IInkPoint2 : IInspectable
{
extern(Windows):
	HRESULT get_TiltX(FLOAT* return_value);
	HRESULT get_TiltY(FLOAT* return_value);
	HRESULT get_Timestamp(UINT64* return_value);
}

@uuid("29e5d51c-c98f-405d-9f3b-e53e31068d4d")
interface IInkPointFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInkPoint(Windows.Foundation.Point position, FLOAT pressure, Windows.UI.Input.Inking.InkPoint* return_result);
}

@uuid("e0145e85-daff-45f2-ad69-050d8256a209")
@WinrtFactory("Windows.UI.Input.Inking.InkPoint")
interface IInkPointFactory2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInkPointWithTiltAndTimestamp(Windows.Foundation.Point position, FLOAT pressure, FLOAT tiltX, FLOAT tiltY, UINT64 timestamp, Windows.UI.Input.Inking.InkPoint* return_result);
}

@uuid("a69b70e2-887b-458f-b173-4fe4438930a3")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenter")
interface IInkPresenter : IInspectable
{
extern(Windows):
	HRESULT get_IsInputEnabled(bool* return_value);
	HRESULT set_IsInputEnabled(bool value);
	HRESULT get_InputDeviceTypes(Windows.UI.Core.CoreInputDeviceTypes* return_value);
	HRESULT set_InputDeviceTypes(Windows.UI.Core.CoreInputDeviceTypes value);
	HRESULT get_UnprocessedInput(Windows.UI.Input.Inking.InkUnprocessedInput* return_value);
	HRESULT get_StrokeInput(Windows.UI.Input.Inking.InkStrokeInput* return_value);
	HRESULT get_InputProcessingConfiguration(Windows.UI.Input.Inking.InkInputProcessingConfiguration* return_value);
	HRESULT get_StrokeContainer(Windows.UI.Input.Inking.InkStrokeContainer* return_value);
	HRESULT set_StrokeContainer(Windows.UI.Input.Inking.InkStrokeContainer value);
	HRESULT abi_CopyDefaultDrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes* return_value);
	HRESULT abi_UpdateDefaultDrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes value);
	HRESULT abi_ActivateCustomDrying(Windows.UI.Input.Inking.InkSynchronizer* return_inkSynchronizer);
	HRESULT abi_SetPredefinedConfiguration(Windows.UI.Input.Inking.InkPresenterPredefinedConfiguration value);
	HRESULT add_StrokesCollected(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkPresenter, Windows.UI.Input.Inking.InkStrokesCollectedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_StrokesCollected(EventRegistrationToken cookie);
	HRESULT add_StrokesErased(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkPresenter, Windows.UI.Input.Inking.InkStrokesErasedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_StrokesErased(EventRegistrationToken cookie);
}

@uuid("cf53e612-9a34-11e6-9f33-a24fc0d9649c")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenter")
interface IInkPresenter2_Base : IInspectable
{
extern(Windows):
	HRESULT get_HighContrastAdjustment(Windows.UI.Input.Inking.InkHighContrastAdjustment* return_value);
	HRESULT set_HighContrastAdjustment(Windows.UI.Input.Inking.InkHighContrastAdjustment value);
}
interface IInkPresenter2 : IInkPresenter2_Base, Windows.UI.Input.Inking.IInkPresenter {}

@uuid("7de3f2aa-ef6c-4e91-a73b-5b70d56fbd17")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenterProtractor")
interface IInkPresenterProtractor_Base : IInspectable
{
extern(Windows):
	HRESULT get_AreTickMarksVisible(bool* return_value);
	HRESULT set_AreTickMarksVisible(bool value);
	HRESULT get_AreRaysVisible(bool* return_value);
	HRESULT set_AreRaysVisible(bool value);
	HRESULT get_IsCenterMarkerVisible(bool* return_value);
	HRESULT set_IsCenterMarkerVisible(bool value);
	HRESULT get_IsAngleReadoutVisible(bool* return_value);
	HRESULT set_IsAngleReadoutVisible(bool value);
	HRESULT get_IsResizable(bool* return_value);
	HRESULT set_IsResizable(bool value);
	HRESULT get_Radius(double* return_value);
	HRESULT set_Radius(double value);
	HRESULT get_AccentColor(Windows.UI.Color* return_value);
	HRESULT set_AccentColor(Windows.UI.Color value);
}
interface IInkPresenterProtractor : IInkPresenterProtractor_Base, Windows.UI.Input.Inking.IInkPresenterStencil {}

@uuid("320103c9-68fa-47e9-8127-8370711fc46c")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenterProtractor")
interface IInkPresenterProtractorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Input.Inking.InkPresenter inkPresenter, Windows.UI.Input.Inking.InkPresenterProtractor* return_inkPresenterProtractor);
}

@uuid("6cda7d5a-dec7-4dd7-877a-2133f183d48a")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenterRuler")
interface IInkPresenterRuler_Base : IInspectable
{
extern(Windows):
	HRESULT get_Length(double* return_value);
	HRESULT set_Length(double value);
	HRESULT get_Width(double* return_value);
	HRESULT set_Width(double value);
}
interface IInkPresenterRuler : IInkPresenterRuler_Base, Windows.UI.Input.Inking.IInkPresenterStencil {}

@uuid("45130dc1-bc61-44d4-a423-54712ae671c4")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenterRuler")
interface IInkPresenterRuler2 : IInspectable
{
extern(Windows):
	HRESULT get_AreTickMarksVisible(bool* return_value);
	HRESULT set_AreTickMarksVisible(bool value);
	HRESULT get_IsCompassVisible(bool* return_value);
	HRESULT set_IsCompassVisible(bool value);
}

@uuid("34361beb-9001-4a4b-a690-69dbaf63e501")
interface IInkPresenterRulerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Input.Inking.InkPresenter inkPresenter, Windows.UI.Input.Inking.InkPresenterRuler* return_inkPresenterRuler);
}

@uuid("30d12d6d-3e06-4d02-b116-277fb5d8addc")
interface IInkPresenterStencil : IInspectable
{
extern(Windows):
	HRESULT get_Kind(Windows.UI.Input.Inking.InkPresenterStencilKind* return_value);
	HRESULT get_IsVisible(bool* return_value);
	HRESULT set_IsVisible(bool value);
	HRESULT get_BackgroundColor(Windows.UI.Color* return_value);
	HRESULT set_BackgroundColor(Windows.UI.Color value);
	HRESULT get_ForegroundColor(Windows.UI.Color* return_value);
	HRESULT set_ForegroundColor(Windows.UI.Color value);
	HRESULT get_Transform(Windows.Foundation.Numerics.Matrix3x2* return_value);
	HRESULT set_Transform(Windows.Foundation.Numerics.Matrix3x2 value);
}

@uuid("36461a94-5068-40ef-8a05-2c2fb60908a2")
@WinrtFactory("Windows.UI.Input.Inking.InkRecognitionResult")
interface IInkRecognitionResult : IInspectable
{
extern(Windows):
	HRESULT get_BoundingRect(Windows.Foundation.Rect* return_boundingRect);
	HRESULT abi_GetTextCandidates(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_textCandidates);
	HRESULT abi_GetStrokes(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke)* return_strokes);
}

@uuid("077ccea3-904d-442a-b151-aaca3631c43b")
@WinrtFactory("Windows.UI.Input.Inking.InkRecognizer")
interface IInkRecognizer : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
}

@uuid("a74d9a31-8047-4698-a912-f82a5085012f")
interface IInkRecognizerContainer : IInspectable
{
extern(Windows):
	HRESULT abi_SetDefaultRecognizer(Windows.UI.Input.Inking.InkRecognizer recognizer);
	HRESULT abi_RecognizeAsync(Windows.UI.Input.Inking.InkStrokeContainer strokeCollection, Windows.UI.Input.Inking.InkRecognitionTarget recognitionTarget, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult))* return_recognitionResults);
	HRESULT abi_GetRecognizers(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognizer)* return_recognizerView);
}

@uuid("15144d60-cce3-4fcf-9d52-11518ab6afd4")
@WinrtFactory("Windows.UI.Input.Inking.InkStroke")
interface IInkStroke : IInspectable
{
extern(Windows):
	HRESULT get_DrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes* return_value);
	HRESULT set_DrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes value);
	HRESULT get_BoundingRect(Windows.Foundation.Rect* return_value);
	HRESULT get_Selected(bool* return_value);
	HRESULT set_Selected(bool value);
	HRESULT get_Recognized(bool* return_value);
	HRESULT abi_GetRenderingSegments(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStrokeRenderingSegment)* return_renderingSegments);
	HRESULT abi_Clone(Windows.UI.Input.Inking.InkStroke* return_clonedStroke);
}

@uuid("5db9e4f4-bafa-4de1-89d3-201b1ed7d89b")
@WinrtFactory("Windows.UI.Input.Inking.InkStroke")
interface IInkStroke2 : IInspectable
{
extern(Windows):
	HRESULT get_PointTransform(Windows.Foundation.Numerics.Matrix3x2* return_value);
	HRESULT set_PointTransform(Windows.Foundation.Numerics.Matrix3x2 value);
	HRESULT abi_GetInkPoints(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkPoint)* return_inkPoints);
}

@uuid("4a807374-9499-411d-a1c4-68855d03d65f")
@WinrtFactory("Windows.UI.Input.Inking.InkStroke")
interface IInkStroke3 : IInspectable
{
extern(Windows):
	HRESULT get_Id(UINT32* return_value);
	HRESULT get_StrokeStartedTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT set_StrokeStartedTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value);
	HRESULT get_StrokeDuration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan)* return_value);
	HRESULT set_StrokeDuration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value);
}

@uuid("82bbd1dc-1c63-41dc-9e07-4b4a70ced801")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokeBuilder")
interface IInkStrokeBuilder : IInspectable
{
extern(Windows):
	HRESULT abi_BeginStroke(Windows.UI.Input.PointerPoint pointerPoint);
	HRESULT abi_AppendToStroke(Windows.UI.Input.PointerPoint pointerPoint, Windows.UI.Input.PointerPoint* return_previousPointerPoint);
	HRESULT abi_EndStroke(Windows.UI.Input.PointerPoint pointerPoint, Windows.UI.Input.Inking.InkStroke* return_stroke);
	HRESULT abi_CreateStroke(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point) points, Windows.UI.Input.Inking.InkStroke* return_stroke);
	HRESULT abi_SetDefaultDrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes drawingAttributes);
}

@uuid("bd82bc27-731f-4cbc-bbbf-6d468044f1e5")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokeBuilder")
interface IInkStrokeBuilder2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateStrokeFromInkPoints(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkPoint) inkPoints, Windows.Foundation.Numerics.Matrix3x2 transform, Windows.UI.Input.Inking.InkStroke* return_result);
}

@uuid("b2c71fcd-5472-46b1-a81d-c37a3d169441")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokeBuilder")
interface IInkStrokeBuilder3 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateStrokeFromInkPoints(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkPoint) inkPoints, Windows.Foundation.Numerics.Matrix3x2 transform, Windows.Foundation.IReference!(Windows.Foundation.DateTime) strokeStartedTime, Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) strokeDuration, Windows.UI.Input.Inking.InkStroke* return_result);
}

@uuid("22accbc6-faa9-4f14-b68c-f6cee670ae16")
interface IInkStrokeContainer : IInspectable
{
extern(Windows):
	HRESULT get_BoundingRect(Windows.Foundation.Rect* return_value);
	HRESULT abi_AddStroke(Windows.UI.Input.Inking.InkStroke stroke);
	HRESULT abi_DeleteSelected(Windows.Foundation.Rect* return_invalidatedRect);
	HRESULT abi_MoveSelected(Windows.Foundation.Point translation, Windows.Foundation.Rect* return_invalidatedRectangle);
	HRESULT abi_SelectWithPolyLine(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point) polyline, Windows.Foundation.Rect* return_invalidatedRectangle);
	HRESULT abi_SelectWithLine(Windows.Foundation.Point from, Windows.Foundation.Point to, Windows.Foundation.Rect* return_invalidatedRectangle);
	HRESULT abi_CopySelectedToClipboard();
	HRESULT abi_PasteFromClipboard(Windows.Foundation.Point position, Windows.Foundation.Rect* return_invalidatedRectangle);
	HRESULT abi_CanPasteFromClipboard(bool* return_canPaste);
	HRESULT abi_LoadAsync(Windows.Storage.Streams.IInputStream inputStream, Windows.Foundation.IAsyncActionWithProgress!(UINT64)* return_loadAction);
	HRESULT abi_SaveAsync(Windows.Storage.Streams.IOutputStream outputStream, Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32)* return_outputStreamOperation);
	HRESULT abi_UpdateRecognitionResults(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult) recognitionResults);
	HRESULT abi_GetStrokes(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke)* return_strokeView);
	HRESULT abi_GetRecognitionResults(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult)* return_recognitionResults);
}

@uuid("8901d364-da36-4bcf-9e5c-d195825995b4")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokeContainer")
interface IInkStrokeContainer2 : IInspectable
{
extern(Windows):
	HRESULT abi_AddStrokes(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkStroke) strokes);
	HRESULT abi_Clear();
}

@uuid("3d07bea5-baea-4c82-a719-7b83da1067d2")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokeContainer")
interface IInkStrokeContainer3 : IInspectable
{
extern(Windows):
	HRESULT abi_SaveWithFormatAsync(Windows.Storage.Streams.IOutputStream outputStream, Windows.UI.Input.Inking.InkPersistenceFormat inkPersistenceFormat, Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32)* return_outputStreamOperation);
	HRESULT abi_GetStrokeById(UINT32 id, Windows.UI.Input.Inking.InkStroke* return_stroke);
}

@uuid("cf2ffe7b-5e10-43c6-a080-88f26e1dc67d")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokeInput")
interface IInkStrokeInput : IInspectable
{
extern(Windows):
	HRESULT add_StrokeStarted(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_StrokeStarted(EventRegistrationToken cookie);
	HRESULT add_StrokeContinued(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_StrokeContinued(EventRegistrationToken cookie);
	HRESULT add_StrokeEnded(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_StrokeEnded(EventRegistrationToken cookie);
	HRESULT add_StrokeCanceled(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_StrokeCanceled(EventRegistrationToken cookie);
	HRESULT get_InkPresenter(Windows.UI.Input.Inking.InkPresenter* return_value);
}

@uuid("68510f1f-88e3-477a-a2fa-569f5f1f9bd5")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokeRenderingSegment")
interface IInkStrokeRenderingSegment : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_BezierControlPoint1(Windows.Foundation.Point* return_value);
	HRESULT get_BezierControlPoint2(Windows.Foundation.Point* return_value);
	HRESULT get_Pressure(FLOAT* return_value);
	HRESULT get_TiltX(FLOAT* return_value);
	HRESULT get_TiltY(FLOAT* return_value);
	HRESULT get_Twist(FLOAT* return_value);
}

@uuid("c4f3f229-1938-495c-b4d9-6de4b08d4811")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokesCollectedEventArgs")
interface IInkStrokesCollectedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Strokes(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke)* return_value);
}

@uuid("a4216a22-1503-4ebf-8ff5-2de84584a8aa")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokesErasedEventArgs")
interface IInkStrokesErasedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Strokes(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke)* return_value);
}

@uuid("9b9ea160-ae9b-45f9-8407-4b493b163661")
@WinrtFactory("Windows.UI.Input.Inking.InkSynchronizer")
interface IInkSynchronizer : IInspectable
{
extern(Windows):
	HRESULT abi_BeginDry(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke)* return_inkStrokes);
	HRESULT abi_EndDry();
}

@uuid("db4445e0-8398-4921-ac3b-ab978c5ba256")
@WinrtFactory("Windows.UI.Input.Inking.InkUnprocessedInput")
interface IInkUnprocessedInput : IInspectable
{
extern(Windows):
	HRESULT add_PointerEntered(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerEntered(EventRegistrationToken cookie);
	HRESULT add_PointerHovered(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerHovered(EventRegistrationToken cookie);
	HRESULT add_PointerExited(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerExited(EventRegistrationToken cookie);
	HRESULT add_PointerPressed(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerPressed(EventRegistrationToken cookie);
	HRESULT add_PointerMoved(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerMoved(EventRegistrationToken cookie);
	HRESULT add_PointerReleased(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerReleased(EventRegistrationToken cookie);
	HRESULT add_PointerLost(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PointerLost(EventRegistrationToken cookie);
	HRESULT get_InkPresenter(Windows.UI.Input.Inking.InkPresenter* return_value);
}

interface InkDrawingAttributes : Windows.UI.Input.Inking.IInkDrawingAttributes, Windows.UI.Input.Inking.IInkDrawingAttributes2, Windows.UI.Input.Inking.IInkDrawingAttributes3, Windows.UI.Input.Inking.IInkDrawingAttributes4
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes).set_Color(value));
	}
	final Windows.UI.Input.Inking.PenTipShape PenTip()
	{
		Windows.UI.Input.Inking.PenTipShape _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes).get_PenTip(&_ret));
		return _ret;
	}
	final void PenTip(Windows.UI.Input.Inking.PenTipShape value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes).set_PenTip(value));
	}
	final Windows.Foundation.Size Size()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes).get_Size(&_ret));
		return _ret;
	}
	final void Size(Windows.Foundation.Size value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes).set_Size(value));
	}
	final bool IgnorePressure()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes).get_IgnorePressure(&_ret));
		return _ret;
	}
	final void IgnorePressure(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes).set_IgnorePressure(value));
	}
	final bool FitToCurve()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes).get_FitToCurve(&_ret));
		return _ret;
	}
	final void FitToCurve(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes).set_FitToCurve(value));
	}
	final Windows.Foundation.Numerics.Matrix3x2 PenTipTransform()
	{
		Windows.Foundation.Numerics.Matrix3x2 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes2).get_PenTipTransform(&_ret));
		return _ret;
	}
	final void PenTipTransform(Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes2).set_PenTipTransform(value));
	}
	final bool DrawAsHighlighter()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes2).get_DrawAsHighlighter(&_ret));
		return _ret;
	}
	final void DrawAsHighlighter(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes2).set_DrawAsHighlighter(value));
	}
	final Windows.UI.Input.Inking.InkDrawingAttributesKind Kind()
	{
		Windows.UI.Input.Inking.InkDrawingAttributesKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes3).get_Kind(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkDrawingAttributesPencilProperties PencilProperties()
	{
		Windows.UI.Input.Inking.InkDrawingAttributesPencilProperties _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes3).get_PencilProperties(&_ret));
		return _ret;
	}
	final bool IgnoreTilt()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes4).get_IgnoreTilt(&_ret));
		return _ret;
	}
	final void IgnoreTilt(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributes4).set_IgnoreTilt(value));
	}
}

interface InkDrawingAttributesPencilProperties : Windows.UI.Input.Inking.IInkDrawingAttributesPencilProperties
{
extern(Windows):
	final double Opacity()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributesPencilProperties).get_Opacity(&_ret));
		return _ret;
	}
	final void Opacity(double value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkDrawingAttributesPencilProperties).set_Opacity(value));
	}
}

interface InkInputProcessingConfiguration : Windows.UI.Input.Inking.IInkInputProcessingConfiguration
{
extern(Windows):
	final Windows.UI.Input.Inking.InkInputProcessingMode Mode()
	{
		Windows.UI.Input.Inking.InkInputProcessingMode _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkInputProcessingConfiguration).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.UI.Input.Inking.InkInputProcessingMode value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkInputProcessingConfiguration).set_Mode(value));
	}
	final Windows.UI.Input.Inking.InkInputRightDragAction RightDragAction()
	{
		Windows.UI.Input.Inking.InkInputRightDragAction _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkInputProcessingConfiguration).get_RightDragAction(&_ret));
		return _ret;
	}
	final void RightDragAction(Windows.UI.Input.Inking.InkInputRightDragAction value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkInputProcessingConfiguration).set_RightDragAction(value));
	}
}

interface InkManager : Windows.UI.Input.Inking.IInkManager, Windows.UI.Input.Inking.IInkRecognizerContainer, Windows.UI.Input.Inking.IInkStrokeContainer
{
extern(Windows):
	final Windows.UI.Input.Inking.InkManipulationMode Mode()
	{
		Windows.UI.Input.Inking.InkManipulationMode _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkManager).get_Mode(&_ret));
		return _ret;
	}
	final void Mode(Windows.UI.Input.Inking.InkManipulationMode value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkManager).set_Mode(value));
	}
	final void ProcessPointerDown(Windows.UI.Input.PointerPoint pointerPoint)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkManager).abi_ProcessPointerDown(pointerPoint));
	}
	final IInspectable ProcessPointerUpdate(Windows.UI.Input.PointerPoint pointerPoint)
	{
		IInspectable _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkManager).abi_ProcessPointerUpdate(pointerPoint, &_ret));
		return _ret;
	}
	final Windows.Foundation.Rect ProcessPointerUp(Windows.UI.Input.PointerPoint pointerPoint)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkManager).abi_ProcessPointerUp(pointerPoint, &_ret));
		return _ret;
	}
	final void SetDefaultDrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes drawingAttributes)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkManager).abi_SetDefaultDrawingAttributes(drawingAttributes));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult)) RecognizeAsync2(Windows.UI.Input.Inking.InkRecognitionTarget recognitionTarget)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult)) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkManager).abi_RecognizeAsync2(recognitionTarget, &_ret));
		return _ret;
	}
	final void SetDefaultRecognizer(Windows.UI.Input.Inking.InkRecognizer recognizer)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkRecognizerContainer).abi_SetDefaultRecognizer(recognizer));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult)) RecognizeAsync(Windows.UI.Input.Inking.InkStrokeContainer strokeCollection, Windows.UI.Input.Inking.InkRecognitionTarget recognitionTarget)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult)) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkRecognizerContainer).abi_RecognizeAsync(strokeCollection, recognitionTarget, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognizer) GetRecognizers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognizer) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkRecognizerContainer).abi_GetRecognizers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).get_BoundingRect(&_ret));
		return _ret;
	}
	final void AddStroke(Windows.UI.Input.Inking.InkStroke stroke)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_AddStroke(stroke));
	}
	final Windows.Foundation.Rect DeleteSelected()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_DeleteSelected(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect MoveSelected(Windows.Foundation.Point translation)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_MoveSelected(translation, &_ret));
		return _ret;
	}
	final Windows.Foundation.Rect SelectWithPolyLine(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point) polyline)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_SelectWithPolyLine(polyline, &_ret));
		return _ret;
	}
	final Windows.Foundation.Rect SelectWithLine(Windows.Foundation.Point from, Windows.Foundation.Point to)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_SelectWithLine(from, to, &_ret));
		return _ret;
	}
	final void CopySelectedToClipboard()
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_CopySelectedToClipboard());
	}
	final Windows.Foundation.Rect PasteFromClipboard(Windows.Foundation.Point position)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_PasteFromClipboard(position, &_ret));
		return _ret;
	}
	final bool CanPasteFromClipboard()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_CanPasteFromClipboard(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncActionWithProgress!(UINT64) LoadAsync(Windows.Storage.Streams.IInputStream inputStream)
	{
		Windows.Foundation.IAsyncActionWithProgress!(UINT64) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_LoadAsync(inputStream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) SaveAsync(Windows.Storage.Streams.IOutputStream outputStream)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_SaveAsync(outputStream, &_ret));
		return _ret;
	}
	final void UpdateRecognitionResults(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult) recognitionResults)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_UpdateRecognitionResults(recognitionResults));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) GetStrokes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_GetStrokes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult) GetRecognitionResults()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_GetRecognitionResults(&_ret));
		return _ret;
	}
}

interface InkPoint : Windows.UI.Input.Inking.IInkPoint, Windows.UI.Input.Inking.IInkPoint2
{
extern(Windows):
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPoint).get_Position(&_ret));
		return _ret;
	}
	final FLOAT Pressure()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPoint).get_Pressure(&_ret));
		return _ret;
	}
	final FLOAT TiltX()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPoint2).get_TiltX(&_ret));
		return _ret;
	}
	final FLOAT TiltY()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPoint2).get_TiltY(&_ret));
		return _ret;
	}
	final UINT64 Timestamp()
	{
		UINT64 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPoint2).get_Timestamp(&_ret));
		return _ret;
	}
}

interface InkPresenter : Windows.UI.Input.Inking.IInkPresenter, Windows.UI.Input.Inking.IInkPresenter2
{
extern(Windows):
	final bool IsInputEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).get_IsInputEnabled(&_ret));
		return _ret;
	}
	final void IsInputEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).set_IsInputEnabled(value));
	}
	final Windows.UI.Core.CoreInputDeviceTypes InputDeviceTypes()
	{
		Windows.UI.Core.CoreInputDeviceTypes _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).get_InputDeviceTypes(&_ret));
		return _ret;
	}
	final void InputDeviceTypes(Windows.UI.Core.CoreInputDeviceTypes value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).set_InputDeviceTypes(value));
	}
	final Windows.UI.Input.Inking.InkUnprocessedInput UnprocessedInput()
	{
		Windows.UI.Input.Inking.InkUnprocessedInput _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).get_UnprocessedInput(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkStrokeInput StrokeInput()
	{
		Windows.UI.Input.Inking.InkStrokeInput _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).get_StrokeInput(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkInputProcessingConfiguration InputProcessingConfiguration()
	{
		Windows.UI.Input.Inking.InkInputProcessingConfiguration _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).get_InputProcessingConfiguration(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkStrokeContainer StrokeContainer()
	{
		Windows.UI.Input.Inking.InkStrokeContainer _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).get_StrokeContainer(&_ret));
		return _ret;
	}
	final void StrokeContainer(Windows.UI.Input.Inking.InkStrokeContainer value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).set_StrokeContainer(value));
	}
	final Windows.UI.Input.Inking.InkDrawingAttributes CopyDefaultDrawingAttributes()
	{
		Windows.UI.Input.Inking.InkDrawingAttributes _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).abi_CopyDefaultDrawingAttributes(&_ret));
		return _ret;
	}
	final void UpdateDefaultDrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).abi_UpdateDefaultDrawingAttributes(value));
	}
	final Windows.UI.Input.Inking.InkSynchronizer ActivateCustomDrying()
	{
		Windows.UI.Input.Inking.InkSynchronizer _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).abi_ActivateCustomDrying(&_ret));
		return _ret;
	}
	final void SetPredefinedConfiguration(Windows.UI.Input.Inking.InkPresenterPredefinedConfiguration value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter).abi_SetPredefinedConfiguration(value));
	}
	final EventRegistrationToken OnStrokesCollected(void delegate(Windows.UI.Input.Inking.InkPresenter, Windows.UI.Input.Inking.InkStrokesCollectedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StrokesCollected(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkPresenter, Windows.UI.Input.Inking.InkStrokesCollectedEventArgs), Windows.UI.Input.Inking.InkPresenter, Windows.UI.Input.Inking.InkStrokesCollectedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStrokesCollected(EventRegistrationToken cookie)
	{
		Debug.OK(remove_StrokesCollected(cookie));
	}
	final EventRegistrationToken OnStrokesErased(void delegate(Windows.UI.Input.Inking.InkPresenter, Windows.UI.Input.Inking.InkStrokesErasedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StrokesErased(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkPresenter, Windows.UI.Input.Inking.InkStrokesErasedEventArgs), Windows.UI.Input.Inking.InkPresenter, Windows.UI.Input.Inking.InkStrokesErasedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStrokesErased(EventRegistrationToken cookie)
	{
		Debug.OK(remove_StrokesErased(cookie));
	}
	final Windows.UI.Input.Inking.InkHighContrastAdjustment HighContrastAdjustment()
	{
		Windows.UI.Input.Inking.InkHighContrastAdjustment _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter2).get_HighContrastAdjustment(&_ret));
		return _ret;
	}
	final void HighContrastAdjustment(Windows.UI.Input.Inking.InkHighContrastAdjustment value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenter2).set_HighContrastAdjustment(value));
	}
}

interface InkPresenterProtractor : Windows.UI.Input.Inking.IInkPresenterProtractor, Windows.UI.Input.Inking.IInkPresenterStencil
{
extern(Windows):
	final bool AreTickMarksVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).get_AreTickMarksVisible(&_ret));
		return _ret;
	}
	final void AreTickMarksVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).set_AreTickMarksVisible(value));
	}
	final bool AreRaysVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).get_AreRaysVisible(&_ret));
		return _ret;
	}
	final void AreRaysVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).set_AreRaysVisible(value));
	}
	final bool IsCenterMarkerVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).get_IsCenterMarkerVisible(&_ret));
		return _ret;
	}
	final void IsCenterMarkerVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).set_IsCenterMarkerVisible(value));
	}
	final bool IsAngleReadoutVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).get_IsAngleReadoutVisible(&_ret));
		return _ret;
	}
	final void IsAngleReadoutVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).set_IsAngleReadoutVisible(value));
	}
	final bool IsResizable()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).get_IsResizable(&_ret));
		return _ret;
	}
	final void IsResizable(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).set_IsResizable(value));
	}
	final double Radius()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).get_Radius(&_ret));
		return _ret;
	}
	final void Radius(double value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).set_Radius(value));
	}
	final Windows.UI.Color AccentColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).get_AccentColor(&_ret));
		return _ret;
	}
	final void AccentColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterProtractor).set_AccentColor(value));
	}
	final Windows.UI.Input.Inking.InkPresenterStencilKind Kind()
	{
		Windows.UI.Input.Inking.InkPresenterStencilKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).get_Kind(&_ret));
		return _ret;
	}
	final bool IsVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).get_IsVisible(&_ret));
		return _ret;
	}
	final void IsVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).set_IsVisible(value));
	}
	final Windows.UI.Color BackgroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).get_BackgroundColor(&_ret));
		return _ret;
	}
	final void BackgroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).set_BackgroundColor(value));
	}
	final Windows.UI.Color ForegroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).get_ForegroundColor(&_ret));
		return _ret;
	}
	final void ForegroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).set_ForegroundColor(value));
	}
	final Windows.Foundation.Numerics.Matrix3x2 Transform()
	{
		Windows.Foundation.Numerics.Matrix3x2 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).get_Transform(&_ret));
		return _ret;
	}
	final void Transform(Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).set_Transform(value));
	}
}

interface InkPresenterRuler : Windows.UI.Input.Inking.IInkPresenterRuler, Windows.UI.Input.Inking.IInkPresenterStencil, Windows.UI.Input.Inking.IInkPresenterRuler2
{
extern(Windows):
	final double Length()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterRuler).get_Length(&_ret));
		return _ret;
	}
	final void Length(double value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterRuler).set_Length(value));
	}
	final double Width()
	{
		double _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterRuler).get_Width(&_ret));
		return _ret;
	}
	final void Width(double value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterRuler).set_Width(value));
	}
	final Windows.UI.Input.Inking.InkPresenterStencilKind Kind()
	{
		Windows.UI.Input.Inking.InkPresenterStencilKind _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).get_Kind(&_ret));
		return _ret;
	}
	final bool IsVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).get_IsVisible(&_ret));
		return _ret;
	}
	final void IsVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).set_IsVisible(value));
	}
	final Windows.UI.Color BackgroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).get_BackgroundColor(&_ret));
		return _ret;
	}
	final void BackgroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).set_BackgroundColor(value));
	}
	final Windows.UI.Color ForegroundColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).get_ForegroundColor(&_ret));
		return _ret;
	}
	final void ForegroundColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).set_ForegroundColor(value));
	}
	final Windows.Foundation.Numerics.Matrix3x2 Transform()
	{
		Windows.Foundation.Numerics.Matrix3x2 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).get_Transform(&_ret));
		return _ret;
	}
	final void Transform(Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterStencil).set_Transform(value));
	}
	final bool AreTickMarksVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterRuler2).get_AreTickMarksVisible(&_ret));
		return _ret;
	}
	final void AreTickMarksVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterRuler2).set_AreTickMarksVisible(value));
	}
	final bool IsCompassVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterRuler2).get_IsCompassVisible(&_ret));
		return _ret;
	}
	final void IsCompassVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkPresenterRuler2).set_IsCompassVisible(value));
	}
}

interface InkRecognitionResult : Windows.UI.Input.Inking.IInkRecognitionResult
{
extern(Windows):
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkRecognitionResult).get_BoundingRect(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) GetTextCandidates()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkRecognitionResult).abi_GetTextCandidates(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) GetStrokes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkRecognitionResult).abi_GetStrokes(&_ret));
		return _ret;
	}
}

interface InkRecognizer : Windows.UI.Input.Inking.IInkRecognizer
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkRecognizer).get_Name(&_ret));
		return _ret;
	}
}

interface InkRecognizerContainer : Windows.UI.Input.Inking.IInkRecognizerContainer
{
extern(Windows):
	final void SetDefaultRecognizer(Windows.UI.Input.Inking.InkRecognizer recognizer)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkRecognizerContainer).abi_SetDefaultRecognizer(recognizer));
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult)) RecognizeAsync(Windows.UI.Input.Inking.InkStrokeContainer strokeCollection, Windows.UI.Input.Inking.InkRecognitionTarget recognitionTarget)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult)) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkRecognizerContainer).abi_RecognizeAsync(strokeCollection, recognitionTarget, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognizer) GetRecognizers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognizer) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkRecognizerContainer).abi_GetRecognizers(&_ret));
		return _ret;
	}
}

interface InkStroke : Windows.UI.Input.Inking.IInkStroke, Windows.UI.Input.Inking.IInkStroke2, Windows.UI.Input.Inking.IInkStroke3
{
extern(Windows):
	final Windows.UI.Input.Inking.InkDrawingAttributes DrawingAttributes()
	{
		Windows.UI.Input.Inking.InkDrawingAttributes _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke).get_DrawingAttributes(&_ret));
		return _ret;
	}
	final void DrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke).set_DrawingAttributes(value));
	}
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke).get_BoundingRect(&_ret));
		return _ret;
	}
	final bool Selected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke).get_Selected(&_ret));
		return _ret;
	}
	final void Selected(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke).set_Selected(value));
	}
	final bool Recognized()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke).get_Recognized(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStrokeRenderingSegment) GetRenderingSegments()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStrokeRenderingSegment) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke).abi_GetRenderingSegments(&_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkStroke Clone()
	{
		Windows.UI.Input.Inking.InkStroke _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke).abi_Clone(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Matrix3x2 PointTransform()
	{
		Windows.Foundation.Numerics.Matrix3x2 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke2).get_PointTransform(&_ret));
		return _ret;
	}
	final void PointTransform(Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke2).set_PointTransform(value));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkPoint) GetInkPoints()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkPoint) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke2).abi_GetInkPoints(&_ret));
		return _ret;
	}
	final UINT32 Id()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke3).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) StrokeStartedTime()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke3).get_StrokeStartedTime(&_ret));
		return _ret;
	}
	final void StrokeStartedTime(Windows.Foundation.IReference!(Windows.Foundation.DateTime) value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke3).set_StrokeStartedTime(value));
	}
	final Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) StrokeDuration()
	{
		Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke3).get_StrokeDuration(&_ret));
		return _ret;
	}
	final void StrokeDuration(Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) value)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStroke3).set_StrokeDuration(value));
	}
}

interface InkStrokeBuilder : Windows.UI.Input.Inking.IInkStrokeBuilder, Windows.UI.Input.Inking.IInkStrokeBuilder2, Windows.UI.Input.Inking.IInkStrokeBuilder3
{
extern(Windows):
	final void BeginStroke(Windows.UI.Input.PointerPoint pointerPoint)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeBuilder).abi_BeginStroke(pointerPoint));
	}
	final Windows.UI.Input.PointerPoint AppendToStroke(Windows.UI.Input.PointerPoint pointerPoint)
	{
		Windows.UI.Input.PointerPoint _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeBuilder).abi_AppendToStroke(pointerPoint, &_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkStroke EndStroke(Windows.UI.Input.PointerPoint pointerPoint)
	{
		Windows.UI.Input.Inking.InkStroke _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeBuilder).abi_EndStroke(pointerPoint, &_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkStroke CreateStroke(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point) points)
	{
		Windows.UI.Input.Inking.InkStroke _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeBuilder).abi_CreateStroke(points, &_ret));
		return _ret;
	}
	final void SetDefaultDrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes drawingAttributes)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeBuilder).abi_SetDefaultDrawingAttributes(drawingAttributes));
	}
	final Windows.UI.Input.Inking.InkStroke CreateStrokeFromInkPoints(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkPoint) inkPoints, Windows.Foundation.Numerics.Matrix3x2 transform)
	{
		Windows.UI.Input.Inking.InkStroke _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeBuilder2).abi_CreateStrokeFromInkPoints(inkPoints, transform, &_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkStroke CreateStrokeFromInkPoints(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkPoint) inkPoints, Windows.Foundation.Numerics.Matrix3x2 transform, Windows.Foundation.IReference!(Windows.Foundation.DateTime) strokeStartedTime, Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) strokeDuration)
	{
		Windows.UI.Input.Inking.InkStroke _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeBuilder3).abi_CreateStrokeFromInkPoints(inkPoints, transform, strokeStartedTime, strokeDuration, &_ret));
		return _ret;
	}
}

interface InkStrokeContainer : Windows.UI.Input.Inking.IInkStrokeContainer, Windows.UI.Input.Inking.IInkStrokeContainer2, Windows.UI.Input.Inking.IInkStrokeContainer3
{
extern(Windows):
	final Windows.Foundation.Rect BoundingRect()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).get_BoundingRect(&_ret));
		return _ret;
	}
	final void AddStroke(Windows.UI.Input.Inking.InkStroke stroke)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_AddStroke(stroke));
	}
	final Windows.Foundation.Rect DeleteSelected()
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_DeleteSelected(&_ret));
		return _ret;
	}
	final Windows.Foundation.Rect MoveSelected(Windows.Foundation.Point translation)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_MoveSelected(translation, &_ret));
		return _ret;
	}
	final Windows.Foundation.Rect SelectWithPolyLine(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Point) polyline)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_SelectWithPolyLine(polyline, &_ret));
		return _ret;
	}
	final Windows.Foundation.Rect SelectWithLine(Windows.Foundation.Point from, Windows.Foundation.Point to)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_SelectWithLine(from, to, &_ret));
		return _ret;
	}
	final void CopySelectedToClipboard()
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_CopySelectedToClipboard());
	}
	final Windows.Foundation.Rect PasteFromClipboard(Windows.Foundation.Point position)
	{
		Windows.Foundation.Rect _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_PasteFromClipboard(position, &_ret));
		return _ret;
	}
	final bool CanPasteFromClipboard()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_CanPasteFromClipboard(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncActionWithProgress!(UINT64) LoadAsync(Windows.Storage.Streams.IInputStream inputStream)
	{
		Windows.Foundation.IAsyncActionWithProgress!(UINT64) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_LoadAsync(inputStream, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) SaveAsync(Windows.Storage.Streams.IOutputStream outputStream)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_SaveAsync(outputStream, &_ret));
		return _ret;
	}
	final void UpdateRecognitionResults(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult) recognitionResults)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_UpdateRecognitionResults(recognitionResults));
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) GetStrokes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_GetStrokes(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult) GetRecognitionResults()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer).abi_GetRecognitionResults(&_ret));
		return _ret;
	}
	final void AddStrokes(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkStroke) strokes)
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer2).abi_AddStrokes(strokes));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer2).abi_Clear());
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) SaveWithFormatAsync(Windows.Storage.Streams.IOutputStream outputStream, Windows.UI.Input.Inking.InkPersistenceFormat inkPersistenceFormat)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer3).abi_SaveWithFormatAsync(outputStream, inkPersistenceFormat, &_ret));
		return _ret;
	}
	final Windows.UI.Input.Inking.InkStroke GetStrokeById(UINT32 id)
	{
		Windows.UI.Input.Inking.InkStroke _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeContainer3).abi_GetStrokeById(id, &_ret));
		return _ret;
	}
}

interface InkStrokeInput : Windows.UI.Input.Inking.IInkStrokeInput
{
extern(Windows):
	final EventRegistrationToken OnStrokeStarted(void delegate(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StrokeStarted(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStrokeStarted(EventRegistrationToken cookie)
	{
		Debug.OK(remove_StrokeStarted(cookie));
	}
	final EventRegistrationToken OnStrokeContinued(void delegate(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StrokeContinued(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStrokeContinued(EventRegistrationToken cookie)
	{
		Debug.OK(remove_StrokeContinued(cookie));
	}
	final EventRegistrationToken OnStrokeEnded(void delegate(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StrokeEnded(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStrokeEnded(EventRegistrationToken cookie)
	{
		Debug.OK(remove_StrokeEnded(cookie));
	}
	final EventRegistrationToken OnStrokeCanceled(void delegate(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_StrokeCanceled(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkStrokeInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStrokeCanceled(EventRegistrationToken cookie)
	{
		Debug.OK(remove_StrokeCanceled(cookie));
	}
	final Windows.UI.Input.Inking.InkPresenter InkPresenter()
	{
		Windows.UI.Input.Inking.InkPresenter _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeInput).get_InkPresenter(&_ret));
		return _ret;
	}
}

interface InkStrokeRenderingSegment : Windows.UI.Input.Inking.IInkStrokeRenderingSegment
{
extern(Windows):
	final Windows.Foundation.Point Position()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeRenderingSegment).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point BezierControlPoint1()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeRenderingSegment).get_BezierControlPoint1(&_ret));
		return _ret;
	}
	final Windows.Foundation.Point BezierControlPoint2()
	{
		Windows.Foundation.Point _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeRenderingSegment).get_BezierControlPoint2(&_ret));
		return _ret;
	}
	final FLOAT Pressure()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeRenderingSegment).get_Pressure(&_ret));
		return _ret;
	}
	final FLOAT TiltX()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeRenderingSegment).get_TiltX(&_ret));
		return _ret;
	}
	final FLOAT TiltY()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeRenderingSegment).get_TiltY(&_ret));
		return _ret;
	}
	final FLOAT Twist()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokeRenderingSegment).get_Twist(&_ret));
		return _ret;
	}
}

interface InkStrokesCollectedEventArgs : Windows.UI.Input.Inking.IInkStrokesCollectedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) Strokes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokesCollectedEventArgs).get_Strokes(&_ret));
		return _ret;
	}
}

interface InkStrokesErasedEventArgs : Windows.UI.Input.Inking.IInkStrokesErasedEventArgs
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) Strokes()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkStrokesErasedEventArgs).get_Strokes(&_ret));
		return _ret;
	}
}

interface InkSynchronizer : Windows.UI.Input.Inking.IInkSynchronizer
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) BeginDry()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke) _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkSynchronizer).abi_BeginDry(&_ret));
		return _ret;
	}
	final void EndDry()
	{
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkSynchronizer).abi_EndDry());
	}
}

interface InkUnprocessedInput : Windows.UI.Input.Inking.IInkUnprocessedInput
{
extern(Windows):
	final EventRegistrationToken OnPointerEntered(void delegate(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PointerEntered(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerEntered(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerEntered(cookie));
	}
	final EventRegistrationToken OnPointerHovered(void delegate(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PointerHovered(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerHovered(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerHovered(cookie));
	}
	final EventRegistrationToken OnPointerExited(void delegate(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PointerExited(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerExited(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerExited(cookie));
	}
	final EventRegistrationToken OnPointerPressed(void delegate(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PointerPressed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerPressed(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerPressed(cookie));
	}
	final EventRegistrationToken OnPointerMoved(void delegate(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PointerMoved(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerMoved(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerMoved(cookie));
	}
	final EventRegistrationToken OnPointerReleased(void delegate(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PointerReleased(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerReleased(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerReleased(cookie));
	}
	final EventRegistrationToken OnPointerLost(void delegate(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_PointerLost(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs), Windows.UI.Input.Inking.InkUnprocessedInput, Windows.UI.Core.PointerEventArgs)(fn), &tok));
		return tok;
	}
	final void removePointerLost(EventRegistrationToken cookie)
	{
		Debug.OK(remove_PointerLost(cookie));
	}
	final Windows.UI.Input.Inking.InkPresenter InkPresenter()
	{
		Windows.UI.Input.Inking.InkPresenter _ret;
		Debug.OK(this.as!(Windows.UI.Input.Inking.IInkUnprocessedInput).get_InkPresenter(&_ret));
		return _ret;
	}
}

enum InkDrawingAttributesKind
{
	Default = 0,
	Pencil = 1
}

enum InkHighContrastAdjustment
{
	UseSystemColorsWhenNecessary = 0,
	UseSystemColors = 1,
	UseOriginalColors = 2
}

enum InkInputProcessingMode
{
	None = 0,
	Inking = 1,
	Erasing = 2
}

enum InkInputRightDragAction
{
	LeaveUnprocessed = 0,
	AllowProcessing = 1
}

enum InkManipulationMode
{
	Inking = 0,
	Erasing = 1,
	Selecting = 2
}

enum InkPersistenceFormat
{
	GifWithEmbeddedIsf = 0,
	Isf = 1
}

enum InkPresenterPredefinedConfiguration
{
	SimpleSinglePointer = 0,
	SimpleMultiplePointer = 1
}

enum InkPresenterStencilKind
{
	Other = 0,
	Ruler = 1,
	Protractor = 2
}

enum InkRecognitionTarget
{
	All = 0,
	Selected = 1,
	Recent = 2
}

enum PenTipShape
{
	Circle = 0,
	Rectangle = 1
}