module Windows.UI.Input.Inking;

import dwinrt;

@uuid("97a2176c-6774-48ad-84f0-48f5a9be74f9")
@WinrtFactory("Windows.UI.Input.Inking.InkDrawingAttributes")
interface IInkDrawingAttributes : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Kind(Windows.UI.Input.Inking.InkDrawingAttributesKind* return_value);
	HRESULT get_PencilProperties(Windows.UI.Input.Inking.InkDrawingAttributesPencilProperties* return_value);
}

@uuid("ef65dc25-9f19-456d-91a3-bc3a3d91c5fb")
@WinrtFactory("Windows.UI.Input.Inking.InkDrawingAttributes")
interface IInkDrawingAttributes4 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IgnoreTilt(bool* return_value);
	HRESULT set_IgnoreTilt(bool value);
}

@uuid("4f2534cb-2d86-41bb-b0e8-e4c2a0253c52")
@WinrtFactory("Windows.UI.Input.Inking.InkDrawingAttributesPencilProperties")
interface IInkDrawingAttributesPencilProperties : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Opacity(double* return_value);
	HRESULT set_Opacity(double value);
}

@uuid("f731e03f-1a65-4862-96cb-6e1665e17f6d")
@WinrtFactory("Windows.UI.Input.Inking.InkDrawingAttributes")
interface IInkDrawingAttributesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateForPencil(Windows.UI.Input.Inking.InkDrawingAttributes* return_result);
}

@uuid("2778d85e-33ca-4b06-a6d3-ac3945116d37")
@WinrtFactory("Windows.UI.Input.Inking.InkInputProcessingConfiguration")
interface IInkInputProcessingConfiguration : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Mode(Windows.UI.Input.Inking.InkInputProcessingMode* return_value);
	HRESULT set_Mode(Windows.UI.Input.Inking.InkInputProcessingMode value);
	HRESULT get_RightDragAction(Windows.UI.Input.Inking.InkInputRightDragAction* return_value);
	HRESULT set_RightDragAction(Windows.UI.Input.Inking.InkInputRightDragAction value);
}

@uuid("4744737d-671b-4163-9c95-4e8d7a035fe1")
@WinrtFactory("Windows.UI.Input.Inking.InkManager")
interface IInkManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Mode(Windows.UI.Input.Inking.InkManipulationMode* return_value);
	HRESULT set_Mode(Windows.UI.Input.Inking.InkManipulationMode value);
	HRESULT abi_ProcessPointerDown(Windows.UI.Input.PointerPoint pointerPoint);
	HRESULT abi_ProcessPointerUpdate(Windows.UI.Input.PointerPoint pointerPoint, IInspectable* return_updateInformation);
	HRESULT abi_ProcessPointerUp(Windows.UI.Input.PointerPoint pointerPoint, Windows.Foundation.Rect* return_updateRectangle);
	HRESULT abi_SetDefaultDrawingAttributes(Windows.UI.Input.Inking.InkDrawingAttributes drawingAttributes);
	HRESULT abi_RecognizeAsync2(Windows.UI.Input.Inking.InkRecognitionTarget recognitionTarget, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult))* return_recognitionResults);
}

@uuid("9f87272b-858c-46a5-9b41-d195970459fd")
@WinrtFactory("Windows.UI.Input.Inking.InkPoint")
interface IInkPoint : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Position(Windows.Foundation.Point* return_value);
	HRESULT get_Pressure(FLOAT* return_value);
}

@uuid("fba9c3f7-ae56-4d5c-bd2f-0ac45f5e4af9")
@WinrtFactory("Windows.UI.Input.Inking.InkPoint")
interface IInkPoint2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_TiltX(FLOAT* return_value);
	HRESULT get_TiltY(FLOAT* return_value);
	HRESULT get_Timestamp(UINT64* return_value);
}

@uuid("29e5d51c-c98f-405d-9f3b-e53e31068d4d")
interface IInkPointFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInkPoint(Windows.Foundation.Point position, FLOAT pressure, Windows.UI.Input.Inking.InkPoint* return_result);
}

@uuid("e0145e85-daff-45f2-ad69-050d8256a209")
@WinrtFactory("Windows.UI.Input.Inking.InkPoint")
interface IInkPointFactory2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInkPointWithTiltAndTimestamp(Windows.Foundation.Point position, FLOAT pressure, FLOAT tiltX, FLOAT tiltY, UINT64 timestamp, Windows.UI.Input.Inking.InkPoint* return_result);
}

@uuid("a69b70e2-887b-458f-b173-4fe4438930a3")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenter")
interface IInkPresenter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
interface IInkPresenter2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_HighContrastAdjustment(Windows.UI.Input.Inking.InkHighContrastAdjustment* return_value);
	HRESULT set_HighContrastAdjustment(Windows.UI.Input.Inking.InkHighContrastAdjustment value);
}

@uuid("7de3f2aa-ef6c-4e91-a73b-5b70d56fbd17")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenterProtractor")
interface IInkPresenterProtractor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

@uuid("320103c9-68fa-47e9-8127-8370711fc46c")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenterProtractor")
interface IInkPresenterProtractorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.UI.Input.Inking.InkPresenter inkPresenter, Windows.UI.Input.Inking.InkPresenterProtractor* return_inkPresenterProtractor);
}

@uuid("6cda7d5a-dec7-4dd7-877a-2133f183d48a")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenterRuler")
interface IInkPresenterRuler : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Length(double* return_value);
	HRESULT set_Length(double value);
	HRESULT get_Width(double* return_value);
	HRESULT set_Width(double value);
}

@uuid("45130dc1-bc61-44d4-a423-54712ae671c4")
@WinrtFactory("Windows.UI.Input.Inking.InkPresenterRuler")
interface IInkPresenterRuler2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AreTickMarksVisible(bool* return_value);
	HRESULT set_AreTickMarksVisible(bool value);
	HRESULT get_IsCompassVisible(bool* return_value);
	HRESULT set_IsCompassVisible(bool value);
}

@uuid("34361beb-9001-4a4b-a690-69dbaf63e501")
interface IInkPresenterRulerFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(Windows.UI.Input.Inking.InkPresenter inkPresenter, Windows.UI.Input.Inking.InkPresenterRuler* return_inkPresenterRuler);
}

@uuid("30d12d6d-3e06-4d02-b116-277fb5d8addc")
interface IInkPresenterStencil : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BoundingRect(Windows.Foundation.Rect* return_boundingRect);
	HRESULT abi_GetTextCandidates(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_textCandidates);
	HRESULT abi_GetStrokes(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke)* return_strokes);
}

@uuid("077ccea3-904d-442a-b151-aaca3631c43b")
@WinrtFactory("Windows.UI.Input.Inking.InkRecognizer")
interface IInkRecognizer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
}

@uuid("a74d9a31-8047-4698-a912-f82a5085012f")
interface IInkRecognizerContainer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetDefaultRecognizer(Windows.UI.Input.Inking.InkRecognizer recognizer);
	HRESULT abi_RecognizeAsync(Windows.UI.Input.Inking.InkStrokeContainer strokeCollection, Windows.UI.Input.Inking.InkRecognitionTarget recognitionTarget, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognitionResult))* return_recognitionResults);
	HRESULT abi_GetRecognizers(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkRecognizer)* return_recognizerView);
}

@uuid("15144d60-cce3-4fcf-9d52-11518ab6afd4")
@WinrtFactory("Windows.UI.Input.Inking.InkStroke")
interface IInkStroke : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_PointTransform(Windows.Foundation.Numerics.Matrix3x2* return_value);
	HRESULT set_PointTransform(Windows.Foundation.Numerics.Matrix3x2 value);
	HRESULT abi_GetInkPoints(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkPoint)* return_inkPoints);
}

@uuid("4a807374-9499-411d-a1c4-68855d03d65f")
@WinrtFactory("Windows.UI.Input.Inking.InkStroke")
interface IInkStroke3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateStrokeFromInkPoints(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkPoint) inkPoints, Windows.Foundation.Numerics.Matrix3x2 transform, Windows.UI.Input.Inking.InkStroke* return_result);
}

@uuid("b2c71fcd-5472-46b1-a81d-c37a3d169441")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokeBuilder")
interface IInkStrokeBuilder3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateStrokeFromInkPoints(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkPoint) inkPoints, Windows.Foundation.Numerics.Matrix3x2 transform, Windows.Foundation.IReference!(Windows.Foundation.DateTime) strokeStartedTime, Windows.Foundation.IReference!(Windows.Foundation.TimeSpan) strokeDuration, Windows.UI.Input.Inking.InkStroke* return_result);
}

@uuid("22accbc6-faa9-4f14-b68c-f6cee670ae16")
interface IInkStrokeContainer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddStrokes(Windows.Foundation.Collections.IIterable!(Windows.UI.Input.Inking.InkStroke) strokes);
	HRESULT abi_Clear();
}

@uuid("3d07bea5-baea-4c82-a719-7b83da1067d2")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokeContainer")
interface IInkStrokeContainer3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SaveWithFormatAsync(Windows.Storage.Streams.IOutputStream outputStream, Windows.UI.Input.Inking.InkPersistenceFormat inkPersistenceFormat, Windows.Foundation.IAsyncOperationWithProgress!(UINT32, UINT32)* return_outputStreamOperation);
	HRESULT abi_GetStrokeById(UINT32 id, Windows.UI.Input.Inking.InkStroke* return_stroke);
}

@uuid("cf2ffe7b-5e10-43c6-a080-88f26e1dc67d")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokeInput")
interface IInkStrokeInput : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Strokes(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke)* return_value);
}

@uuid("a4216a22-1503-4ebf-8ff5-2de84584a8aa")
@WinrtFactory("Windows.UI.Input.Inking.InkStrokesErasedEventArgs")
interface IInkStrokesErasedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Strokes(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke)* return_value);
}

@uuid("9b9ea160-ae9b-45f9-8407-4b493b163661")
@WinrtFactory("Windows.UI.Input.Inking.InkSynchronizer")
interface IInkSynchronizer : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_BeginDry(Windows.Foundation.Collections.IVectorView!(Windows.UI.Input.Inking.InkStroke)* return_inkStrokes);
	HRESULT abi_EndDry();
}

@uuid("db4445e0-8398-4921-ac3b-ab978c5ba256")
@WinrtFactory("Windows.UI.Input.Inking.InkUnprocessedInput")
interface IInkUnprocessedInput : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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

interface InkDrawingAttributes
{
}

interface InkDrawingAttributesPencilProperties
{
}

interface InkInputProcessingConfiguration
{
}

interface InkManager
{
}

interface InkPoint
{
}

interface InkPresenter
{
}

interface InkPresenterProtractor
{
}

interface InkPresenterRuler
{
}

interface InkRecognitionResult
{
}

interface InkRecognizer
{
}

interface InkRecognizerContainer
{
}

interface InkStroke
{
}

interface InkStrokeBuilder
{
}

interface InkStrokeContainer
{
}

interface InkStrokeInput
{
}

interface InkStrokeRenderingSegment
{
}

interface InkStrokesCollectedEventArgs
{
}

interface InkStrokesErasedEventArgs
{
}

interface InkSynchronizer
{
}

interface InkUnprocessedInput
{
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