module Windows.UI.Composition;

import dwinrt;

@uuid("a48130a1-b7c4-46f7-b9bf-daf43a44e6ee")
@WinrtFactory("Windows.UI.Composition.AmbientLight")
interface IAmbientLight : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
}

@uuid("93adb5e9-8e05-4593-84a3-dca152781e56")
@WinrtFactory("Windows.UI.Composition.ColorKeyFrameAnimation")
interface IColorKeyFrameAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_InterpolationColorSpace(Windows.UI.Composition.CompositionColorSpace* return_value);
	HRESULT set_InterpolationColorSpace(Windows.UI.Composition.CompositionColorSpace value);
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, Windows.UI.Color value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.UI.Color value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca")
@WinrtFactory("Windows.UI.Composition.CompositionAnimation")
interface ICompositionAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_ClearAllParameters();
	HRESULT abi_ClearParameter(HSTRING key);
	HRESULT abi_SetColorParameter(HSTRING key, Windows.UI.Color value);
	HRESULT abi_SetMatrix3x2Parameter(HSTRING key, Windows.Foundation.Numerics.Matrix3x2 value);
	HRESULT abi_SetMatrix4x4Parameter(HSTRING key, Windows.Foundation.Numerics.Matrix4x4 value);
	HRESULT abi_SetQuaternionParameter(HSTRING key, Windows.Foundation.Numerics.Quaternion value);
	HRESULT abi_SetReferenceParameter(HSTRING key, Windows.UI.Composition.CompositionObject compositionObject);
	HRESULT abi_SetScalarParameter(HSTRING key, FLOAT value);
	HRESULT abi_SetVector2Parameter(HSTRING key, Windows.Foundation.Numerics.Vector2 value);
	HRESULT abi_SetVector3Parameter(HSTRING key, Windows.Foundation.Numerics.Vector3 value);
	HRESULT abi_SetVector4Parameter(HSTRING key, Windows.Foundation.Numerics.Vector4 value);
}

@uuid("369b603e-a80f-4948-93e3-ed23fb38c6cb")
@WinrtFactory("Windows.UI.Composition.CompositionAnimation")
interface ICompositionAnimation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetBooleanParameter(HSTRING key, bool value);
	HRESULT get_Target(HSTRING* return_value);
	HRESULT set_Target(HSTRING value);
}

@uuid("5e7cc90c-cd14-4e07-8a55-c72527aabdac")
@WinrtFactory("Windows.UI.Composition.CompositionAnimationGroup")
interface ICompositionAnimationGroup : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Count(INT32* return_value);
	HRESULT abi_Add(Windows.UI.Composition.CompositionAnimation value);
	HRESULT abi_Remove(Windows.UI.Composition.CompositionAnimation value);
	HRESULT abi_RemoveAll();
}

@uuid("8253353e-b517-48bc-b1e8-4b3561a2e181")
@WinrtFactory("Windows.UI.Composition.CompositionCapabilities")
interface ICompositionCapabilities : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AreEffectsSupported(bool* return_value);
	HRESULT abi_AreEffectsFast(bool* return_value);
	HRESULT add_Changed(Windows.Foundation.TypedEventHandler!(Windows.UI.Composition.CompositionCapabilities, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_Changed(EventRegistrationToken token);
}

@uuid("f7b7a86e-6416-49e5-8ddf-afe949e20562")
@WinrtFactory("Windows.UI.Composition.CompositionCapabilities")
interface ICompositionCapabilitiesStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Composition.CompositionCapabilities* return_current);
}

@uuid("5893e069-3516-40e1-89e0-5ba924927235")
@WinrtFactory("Windows.UI.Composition.CompositionClip")
interface ICompositionClip2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AnchorPoint(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_AnchorPoint(Windows.Foundation.Numerics.Vector2 value);
	HRESULT get_CenterPoint(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_CenterPoint(Windows.Foundation.Numerics.Vector2 value);
	HRESULT get_Offset(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_Offset(Windows.Foundation.Numerics.Vector2 value);
	HRESULT get_RotationAngle(FLOAT* return_value);
	HRESULT set_RotationAngle(FLOAT value);
	HRESULT get_RotationAngleInDegrees(FLOAT* return_value);
	HRESULT set_RotationAngleInDegrees(FLOAT value);
	HRESULT get_Scale(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_Scale(Windows.Foundation.Numerics.Vector2 value);
	HRESULT get_TransformMatrix(Windows.Foundation.Numerics.Matrix3x2* return_value);
	HRESULT set_TransformMatrix(Windows.Foundation.Numerics.Matrix3x2 value);
}

@uuid("2b264c5e-bf35-4831-8642-cf70c20fff2f")
@WinrtFactory("Windows.UI.Composition.CompositionColorBrush")
interface ICompositionColorBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
}

@uuid("0d00dad0-ca07-4400-8c8e-cb5db08559cc")
@WinrtFactory("Windows.UI.Composition.CompositionCommitBatch")
interface ICompositionCommitBatch : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_IsEnded(bool* return_value);
	HRESULT add_Completed(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Completed(EventRegistrationToken token);
}

@uuid("a166c300-fad0-4d11-9e67-e433162ff49e")
@WinrtFactory("Windows.UI.Composition.CompositionDrawingSurface")
interface ICompositionDrawingSurface : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AlphaMode(Windows.Graphics.DirectX.DirectXAlphaMode* return_value);
	HRESULT get_PixelFormat(Windows.Graphics.DirectX.DirectXPixelFormat* return_value);
	HRESULT get_Size(Windows.Foundation.Size* return_value);
}

@uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f")
@WinrtFactory("Windows.UI.Composition.CompositionDrawingSurface")
interface ICompositionDrawingSurface2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SizeInt32(Windows.Graphics.SizeInt32* return_value);
	HRESULT abi_Resize(Windows.Graphics.SizeInt32 sizePixels);
	HRESULT abi_Scroll(Windows.Graphics.PointInt32 offset);
	HRESULT abi_ScrollRect(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 scrollRect);
	HRESULT abi_ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect);
	HRESULT abi_ScrollRectWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect, Windows.Graphics.RectInt32 scrollRect);
}

@uuid("bf7f795e-83cc-44bf-a447-3e3c071789ec")
@WinrtFactory("Windows.UI.Composition.CompositionEffectBrush")
interface ICompositionEffectBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetSourceParameter(HSTRING name, Windows.UI.Composition.CompositionBrush* return_result);
	HRESULT abi_SetSourceParameter(HSTRING name, Windows.UI.Composition.CompositionBrush source);
}

@uuid("be5624af-ba7e-4510-9850-41c0b4ff74df")
@WinrtFactory("Windows.UI.Composition.CompositionEffectFactory")
interface ICompositionEffectFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateBrush(Windows.UI.Composition.CompositionEffectBrush* return_result);
	HRESULT get_ExtendedError(HRESULT* return_value);
	HRESULT get_LoadStatus(Windows.UI.Composition.CompositionEffectFactoryLoadStatus* return_value);
}

@uuid("858ab13a-3292-4e4e-b3bb-2b6c6544a6ee")
@WinrtFactory("Windows.UI.Composition.CompositionEffectSourceParameter")
interface ICompositionEffectSourceParameter : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
}

@uuid("b3d9f276-aba3-4724-acf3-d0397464db1c")
@WinrtFactory("Windows.UI.Composition.CompositionEffectSourceParameter")
interface ICompositionEffectSourceParameterFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Create(HSTRING name, Windows.UI.Composition.CompositionEffectSourceParameter* return_instance);
}

@uuid("fb22c6e1-80a2-4667-9936-dbeaf6eefe95")
@WinrtFactory("Windows.UI.Composition.CompositionGraphicsDevice")
interface ICompositionGraphicsDevice : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateDrawingSurface(Windows.Foundation.Size sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode, Windows.UI.Composition.CompositionDrawingSurface* return_result);
	HRESULT add_RenderingDeviceReplaced(Windows.Foundation.TypedEventHandler!(Windows.UI.Composition.CompositionGraphicsDevice, Windows.UI.Composition.RenderingDeviceReplacedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RenderingDeviceReplaced(EventRegistrationToken token);
}

@uuid("0fb8bdf6-c0f0-4bcc-9fb8-084982490d7d")
@WinrtFactory("Windows.UI.Composition.CompositionGraphicsDevice")
interface ICompositionGraphicsDevice2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateDrawingSurface2(Windows.Graphics.SizeInt32 sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode, Windows.UI.Composition.CompositionDrawingSurface* return_result);
	HRESULT abi_CreateVirtualDrawingSurface(Windows.Graphics.SizeInt32 sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode, Windows.UI.Composition.CompositionVirtualDrawingSurface* return_result);
}

@uuid("41a6d7c2-2e5d-4bc1-b09e-8f0a03e3d8d3")
@WinrtFactory("Windows.UI.Composition.CompositionLight")
interface ICompositionLight : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Targets(Windows.UI.Composition.VisualUnorderedCollection* return_value);
}

@uuid("522cf09e-be6b-4f41-be49-f9226d471b4a")
@WinrtFactory("Windows.UI.Composition.CompositionMaskBrush")
interface ICompositionMaskBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Mask(Windows.UI.Composition.CompositionBrush* return_value);
	HRESULT set_Mask(Windows.UI.Composition.CompositionBrush value);
	HRESULT get_Source(Windows.UI.Composition.CompositionBrush* return_value);
	HRESULT set_Source(Windows.UI.Composition.CompositionBrush value);
}

@uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186")
@WinrtFactory("Windows.UI.Composition.CompositionNineGridBrush")
interface ICompositionNineGridBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BottomInset(FLOAT* return_value);
	HRESULT set_BottomInset(FLOAT value);
	HRESULT get_BottomInsetScale(FLOAT* return_value);
	HRESULT set_BottomInsetScale(FLOAT value);
	HRESULT get_IsCenterHollow(bool* return_value);
	HRESULT set_IsCenterHollow(bool value);
	HRESULT get_LeftInset(FLOAT* return_value);
	HRESULT set_LeftInset(FLOAT value);
	HRESULT get_LeftInsetScale(FLOAT* return_value);
	HRESULT set_LeftInsetScale(FLOAT value);
	HRESULT get_RightInset(FLOAT* return_value);
	HRESULT set_RightInset(FLOAT value);
	HRESULT get_RightInsetScale(FLOAT* return_value);
	HRESULT set_RightInsetScale(FLOAT value);
	HRESULT get_Source(Windows.UI.Composition.CompositionBrush* return_value);
	HRESULT set_Source(Windows.UI.Composition.CompositionBrush value);
	HRESULT get_TopInset(FLOAT* return_value);
	HRESULT set_TopInset(FLOAT value);
	HRESULT get_TopInsetScale(FLOAT* return_value);
	HRESULT set_TopInsetScale(FLOAT value);
	HRESULT abi_SetInsets(FLOAT inset);
	HRESULT abi_SetInsetsWithValues(FLOAT left, FLOAT top, FLOAT right, FLOAT bottom);
	HRESULT abi_SetInsetScales(FLOAT scale);
	HRESULT abi_SetInsetScalesWithValues(FLOAT left, FLOAT top, FLOAT right, FLOAT bottom);
}

@uuid("bcb4ad45-7609-4550-934f-16002a68fded")
@WinrtFactory("Windows.UI.Composition.CompositionObject")
interface ICompositionObject : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value);
	HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value);
	HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value);
	HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation);
	HRESULT abi_StopAnimation(HSTRING propertyName);
}

@uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03")
@WinrtFactory("Windows.UI.Composition.CompositionObject")
interface ICompositionObject2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT set_Comment(HSTRING value);
	HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value);
	HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value);
	HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value);
	HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value);
}

@uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2")
@WinrtFactory("Windows.UI.Composition.CompositionPropertySet")
interface ICompositionPropertySet : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_InsertColor(HSTRING propertyName, Windows.UI.Color value);
	HRESULT abi_InsertMatrix3x2(HSTRING propertyName, Windows.Foundation.Numerics.Matrix3x2 value);
	HRESULT abi_InsertMatrix4x4(HSTRING propertyName, Windows.Foundation.Numerics.Matrix4x4 value);
	HRESULT abi_InsertQuaternion(HSTRING propertyName, Windows.Foundation.Numerics.Quaternion value);
	HRESULT abi_InsertScalar(HSTRING propertyName, FLOAT value);
	HRESULT abi_InsertVector2(HSTRING propertyName, Windows.Foundation.Numerics.Vector2 value);
	HRESULT abi_InsertVector3(HSTRING propertyName, Windows.Foundation.Numerics.Vector3 value);
	HRESULT abi_InsertVector4(HSTRING propertyName, Windows.Foundation.Numerics.Vector4 value);
	HRESULT abi_TryGetColor(HSTRING propertyName, Windows.UI.Color* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetMatrix3x2(HSTRING propertyName, Windows.Foundation.Numerics.Matrix3x2* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetMatrix4x4(HSTRING propertyName, Windows.Foundation.Numerics.Matrix4x4* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetQuaternion(HSTRING propertyName, Windows.Foundation.Numerics.Quaternion* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetScalar(HSTRING propertyName, FLOAT* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetVector2(HSTRING propertyName, Windows.Foundation.Numerics.Vector2* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetVector3(HSTRING propertyName, Windows.Foundation.Numerics.Vector3* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetVector4(HSTRING propertyName, Windows.Foundation.Numerics.Vector4* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
}

@uuid("de80731e-a211-4455-8880-7d0f3f6a44fd")
@WinrtFactory("Windows.UI.Composition.CompositionPropertySet")
interface ICompositionPropertySet2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_InsertBoolean(HSTRING propertyName, bool value);
	HRESULT abi_TryGetBoolean(HSTRING propertyName, bool* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
}

@uuid("0d00dad0-fb07-46fd-8c72-6280d1a3d1dd")
@WinrtFactory("Windows.UI.Composition.CompositionScopedBatch")
interface ICompositionScopedBatch : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_IsEnded(bool* return_value);
	HRESULT abi_End();
	HRESULT abi_Resume();
	HRESULT abi_Suspend();
	HRESULT add_Completed(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Completed(EventRegistrationToken token);
}

@uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162")
@WinrtFactory("Windows.UI.Composition.CompositionSurfaceBrush")
interface ICompositionSurfaceBrush : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BitmapInterpolationMode(Windows.UI.Composition.CompositionBitmapInterpolationMode* return_value);
	HRESULT set_BitmapInterpolationMode(Windows.UI.Composition.CompositionBitmapInterpolationMode value);
	HRESULT get_HorizontalAlignmentRatio(FLOAT* return_value);
	HRESULT set_HorizontalAlignmentRatio(FLOAT value);
	HRESULT get_Stretch(Windows.UI.Composition.CompositionStretch* return_value);
	HRESULT set_Stretch(Windows.UI.Composition.CompositionStretch value);
	HRESULT get_Surface(Windows.UI.Composition.ICompositionSurface* return_value);
	HRESULT set_Surface(Windows.UI.Composition.ICompositionSurface value);
	HRESULT get_VerticalAlignmentRatio(FLOAT* return_value);
	HRESULT set_VerticalAlignmentRatio(FLOAT value);
}

@uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880")
@WinrtFactory("Windows.UI.Composition.CompositionSurfaceBrush")
interface ICompositionSurfaceBrush2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AnchorPoint(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_AnchorPoint(Windows.Foundation.Numerics.Vector2 value);
	HRESULT get_CenterPoint(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_CenterPoint(Windows.Foundation.Numerics.Vector2 value);
	HRESULT get_Offset(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_Offset(Windows.Foundation.Numerics.Vector2 value);
	HRESULT get_RotationAngle(FLOAT* return_value);
	HRESULT set_RotationAngle(FLOAT value);
	HRESULT get_RotationAngleInDegrees(FLOAT* return_value);
	HRESULT set_RotationAngleInDegrees(FLOAT value);
	HRESULT get_Scale(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_Scale(Windows.Foundation.Numerics.Vector2 value);
	HRESULT get_TransformMatrix(Windows.Foundation.Numerics.Matrix3x2* return_value);
	HRESULT set_TransformMatrix(Windows.Foundation.Numerics.Matrix3x2 value);
}

@uuid("a1bea8ba-d726-4663-8129-6b5e7927ffa6")
@WinrtFactory("Windows.UI.Composition.CompositionTarget")
interface ICompositionTarget : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Root(Windows.UI.Composition.Visual* return_value);
	HRESULT set_Root(Windows.UI.Composition.Visual value);
}

@uuid("a9c384db-8740-4f94-8b9d-b68521e7863d")
@WinrtFactory("Windows.UI.Composition.CompositionVirtualDrawingSurface")
interface ICompositionVirtualDrawingSurface : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Trim(UINT32 __rectsSize, Windows.Graphics.RectInt32* rects);
}

@uuid("b403ca50-7f8c-4e83-985f-cc45060036d8")
@WinrtFactory("Windows.UI.Composition.Compositor")
interface ICompositor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateColorKeyFrameAnimation(Windows.UI.Composition.ColorKeyFrameAnimation* return_result);
	HRESULT abi_CreateColorBrush(Windows.UI.Composition.CompositionColorBrush* return_result);
	HRESULT abi_CreateColorBrushWithColor(Windows.UI.Color color, Windows.UI.Composition.CompositionColorBrush* return_result);
	HRESULT abi_CreateContainerVisual(Windows.UI.Composition.ContainerVisual* return_result);
	HRESULT abi_CreateCubicBezierEasingFunction(Windows.Foundation.Numerics.Vector2 controlPoint1, Windows.Foundation.Numerics.Vector2 controlPoint2, Windows.UI.Composition.CubicBezierEasingFunction* return_result);
	HRESULT abi_CreateEffectFactory(Windows.Graphics.Effects.IGraphicsEffect graphicsEffect, Windows.UI.Composition.CompositionEffectFactory* return_result);
	HRESULT abi_CreateEffectFactoryWithProperties(Windows.Graphics.Effects.IGraphicsEffect graphicsEffect, Windows.Foundation.Collections.IIterable!(HSTRING) animatableProperties, Windows.UI.Composition.CompositionEffectFactory* return_result);
	HRESULT abi_CreateExpressionAnimation(Windows.UI.Composition.ExpressionAnimation* return_result);
	HRESULT abi_CreateExpressionAnimationWithExpression(HSTRING expression, Windows.UI.Composition.ExpressionAnimation* return_result);
	HRESULT abi_CreateInsetClip(Windows.UI.Composition.InsetClip* return_result);
	HRESULT abi_CreateInsetClipWithInsets(FLOAT leftInset, FLOAT topInset, FLOAT rightInset, FLOAT bottomInset, Windows.UI.Composition.InsetClip* return_result);
	HRESULT abi_CreateLinearEasingFunction(Windows.UI.Composition.LinearEasingFunction* return_result);
	HRESULT abi_CreatePropertySet(Windows.UI.Composition.CompositionPropertySet* return_result);
	HRESULT abi_CreateQuaternionKeyFrameAnimation(Windows.UI.Composition.QuaternionKeyFrameAnimation* return_result);
	HRESULT abi_CreateScalarKeyFrameAnimation(Windows.UI.Composition.ScalarKeyFrameAnimation* return_result);
	HRESULT abi_CreateScopedBatch(Windows.UI.Composition.CompositionBatchTypes batchType, Windows.UI.Composition.CompositionScopedBatch* return_result);
	HRESULT abi_CreateSpriteVisual(Windows.UI.Composition.SpriteVisual* return_result);
	HRESULT abi_CreateSurfaceBrush(Windows.UI.Composition.CompositionSurfaceBrush* return_result);
	HRESULT abi_CreateSurfaceBrushWithSurface(Windows.UI.Composition.ICompositionSurface surface, Windows.UI.Composition.CompositionSurfaceBrush* return_result);
	HRESULT abi_CreateTargetForCurrentView(Windows.UI.Composition.CompositionTarget* return_result);
	HRESULT abi_CreateVector2KeyFrameAnimation(Windows.UI.Composition.Vector2KeyFrameAnimation* return_result);
	HRESULT abi_CreateVector3KeyFrameAnimation(Windows.UI.Composition.Vector3KeyFrameAnimation* return_result);
	HRESULT abi_CreateVector4KeyFrameAnimation(Windows.UI.Composition.Vector4KeyFrameAnimation* return_result);
	HRESULT abi_GetCommitBatch(Windows.UI.Composition.CompositionBatchTypes batchType, Windows.UI.Composition.CompositionCommitBatch* return_result);
}

@uuid("735081dc-5e24-45da-a38f-e32cc349a9a0")
@WinrtFactory("Windows.UI.Composition.Compositor")
interface ICompositor2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateAmbientLight(Windows.UI.Composition.AmbientLight* return_result);
	HRESULT abi_CreateAnimationGroup(Windows.UI.Composition.CompositionAnimationGroup* return_result);
	HRESULT abi_CreateBackdropBrush(Windows.UI.Composition.CompositionBackdropBrush* return_result);
	HRESULT abi_CreateDistantLight(Windows.UI.Composition.DistantLight* return_result);
	HRESULT abi_CreateDropShadow(Windows.UI.Composition.DropShadow* return_result);
	HRESULT abi_CreateImplicitAnimationCollection(Windows.UI.Composition.ImplicitAnimationCollection* return_result);
	HRESULT abi_CreateLayerVisual(Windows.UI.Composition.LayerVisual* return_result);
	HRESULT abi_CreateMaskBrush(Windows.UI.Composition.CompositionMaskBrush* return_result);
	HRESULT abi_CreateNineGridBrush(Windows.UI.Composition.CompositionNineGridBrush* return_result);
	HRESULT abi_CreatePointLight(Windows.UI.Composition.PointLight* return_result);
	HRESULT abi_CreateSpotLight(Windows.UI.Composition.SpotLight* return_result);
	HRESULT abi_CreateStepEasingFunction(Windows.UI.Composition.StepEasingFunction* return_result);
	HRESULT abi_CreateStepEasingFunctionWithStepCount(INT32 stepCount, Windows.UI.Composition.StepEasingFunction* return_result);
}

@uuid("c9dd8ef0-6eb1-4e3c-a658-675d9c64d4ab")
@WinrtFactory("Windows.UI.Composition.Compositor")
interface ICompositor3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateHostBackdropBrush(Windows.UI.Composition.CompositionBackdropBrush* return_result);
}

@uuid("02f6bc74-ed20-4773-afe6-d49b4a93db32")
@WinrtFactory("Windows.UI.Composition.ContainerVisual")
interface IContainerVisual : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Children(Windows.UI.Composition.VisualCollection* return_value);
}

@uuid("32350666-c1e8-44f9-96b8-c98acf0ae698")
@WinrtFactory("Windows.UI.Composition.CubicBezierEasingFunction")
interface ICubicBezierEasingFunction : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ControlPoint1(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT get_ControlPoint2(Windows.Foundation.Numerics.Vector2* return_value);
}

@uuid("318cfafc-5ce3-4b55-ab5d-07a00353ac99")
@WinrtFactory("Windows.UI.Composition.DistantLight")
interface IDistantLight : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
	HRESULT get_CoordinateSpace(Windows.UI.Composition.Visual* return_value);
	HRESULT set_CoordinateSpace(Windows.UI.Composition.Visual value);
	HRESULT get_Direction(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Direction(Windows.Foundation.Numerics.Vector3 value);
}

@uuid("cb977c07-a154-4851-85e7-a8924c84fad8")
@WinrtFactory("Windows.UI.Composition.DropShadow")
interface IDropShadow : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BlurRadius(FLOAT* return_value);
	HRESULT set_BlurRadius(FLOAT value);
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
	HRESULT get_Mask(Windows.UI.Composition.CompositionBrush* return_value);
	HRESULT set_Mask(Windows.UI.Composition.CompositionBrush value);
	HRESULT get_Offset(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Offset(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_Opacity(FLOAT* return_value);
	HRESULT set_Opacity(FLOAT value);
}

@uuid("6acc5431-7d3d-4bf3-abb6-f44bdc4888c1")
@WinrtFactory("Windows.UI.Composition.ExpressionAnimation")
interface IExpressionAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Expression(HSTRING* return_value);
	HRESULT set_Expression(HSTRING value);
}

@uuid("1e73e647-84c7-477a-b474-5880e0442e15")
@WinrtFactory("Windows.UI.Composition.InsetClip")
interface IInsetClip : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_BottomInset(FLOAT* return_value);
	HRESULT set_BottomInset(FLOAT value);
	HRESULT get_LeftInset(FLOAT* return_value);
	HRESULT set_LeftInset(FLOAT value);
	HRESULT get_RightInset(FLOAT* return_value);
	HRESULT set_RightInset(FLOAT value);
	HRESULT get_TopInset(FLOAT* return_value);
	HRESULT set_TopInset(FLOAT value);
}

@uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84")
@WinrtFactory("Windows.UI.Composition.KeyFrameAnimation")
interface IKeyFrameAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DelayTime(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_DelayTime(Windows.Foundation.TimeSpan value);
	HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_Duration(Windows.Foundation.TimeSpan value);
	HRESULT get_IterationBehavior(Windows.UI.Composition.AnimationIterationBehavior* return_value);
	HRESULT set_IterationBehavior(Windows.UI.Composition.AnimationIterationBehavior value);
	HRESULT get_IterationCount(INT32* return_value);
	HRESULT set_IterationCount(INT32 value);
	HRESULT get_KeyFrameCount(INT32* return_value);
	HRESULT get_StopBehavior(Windows.UI.Composition.AnimationStopBehavior* return_value);
	HRESULT set_StopBehavior(Windows.UI.Composition.AnimationStopBehavior value);
	HRESULT abi_InsertExpressionKeyFrame(FLOAT normalizedProgressKey, HSTRING value);
	HRESULT abi_InsertExpressionKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, HSTRING value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("f4b488bb-2940-4ec0-a41a-eb6d801a2f18")
@WinrtFactory("Windows.UI.Composition.KeyFrameAnimation")
interface IKeyFrameAnimation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Direction(Windows.UI.Composition.AnimationDirection* return_value);
	HRESULT set_Direction(Windows.UI.Composition.AnimationDirection value);
}

@uuid("845bf0b4-d8de-462f-8753-c80d43c6ff5a")
@WinrtFactory("Windows.UI.Composition.KeyFrameAnimation")
interface IKeyFrameAnimation3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DelayBehavior(Windows.UI.Composition.AnimationDelayBehavior* return_value);
	HRESULT set_DelayBehavior(Windows.UI.Composition.AnimationDelayBehavior value);
}

@uuid("af843985-0444-4887-8e83-b40b253f822c")
@WinrtFactory("Windows.UI.Composition.LayerVisual")
interface ILayerVisual : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Effect(Windows.UI.Composition.CompositionEffectBrush* return_value);
	HRESULT set_Effect(Windows.UI.Composition.CompositionEffectBrush value);
}

@uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272")
@WinrtFactory("Windows.UI.Composition.PointLight")
interface IPointLight : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
	HRESULT get_ConstantAttenuation(FLOAT* return_value);
	HRESULT set_ConstantAttenuation(FLOAT value);
	HRESULT get_CoordinateSpace(Windows.UI.Composition.Visual* return_value);
	HRESULT set_CoordinateSpace(Windows.UI.Composition.Visual value);
	HRESULT get_LinearAttenuation(FLOAT* return_value);
	HRESULT set_LinearAttenuation(FLOAT value);
	HRESULT get_Offset(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Offset(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_QuadraticAttenuation(FLOAT* return_value);
	HRESULT set_QuadraticAttenuation(FLOAT value);
}

@uuid("404e5835-ecf6-4240-8520-671279cf36bc")
@WinrtFactory("Windows.UI.Composition.QuaternionKeyFrameAnimation")
interface IQuaternionKeyFrameAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Quaternion value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Quaternion value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("3a31ac7d-28bf-4e7a-8524-71679d480f38")
@WinrtFactory("Windows.UI.Composition.RenderingDeviceReplacedEventArgs")
interface IRenderingDeviceReplacedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_GraphicsDevice(Windows.UI.Composition.CompositionGraphicsDevice* return_value);
}

@uuid("ae288fa9-252c-4b95-a725-bf85e38000a1")
@WinrtFactory("Windows.UI.Composition.ScalarKeyFrameAnimation")
interface IScalarKeyFrameAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, FLOAT value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, FLOAT value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44")
@WinrtFactory("Windows.UI.Composition.SpotLight")
interface ISpotLight : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ConstantAttenuation(FLOAT* return_value);
	HRESULT set_ConstantAttenuation(FLOAT value);
	HRESULT get_CoordinateSpace(Windows.UI.Composition.Visual* return_value);
	HRESULT set_CoordinateSpace(Windows.UI.Composition.Visual value);
	HRESULT get_Direction(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Direction(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_InnerConeAngle(FLOAT* return_value);
	HRESULT set_InnerConeAngle(FLOAT value);
	HRESULT get_InnerConeAngleInDegrees(FLOAT* return_value);
	HRESULT set_InnerConeAngleInDegrees(FLOAT value);
	HRESULT get_InnerConeColor(Windows.UI.Color* return_value);
	HRESULT set_InnerConeColor(Windows.UI.Color value);
	HRESULT get_LinearAttenuation(FLOAT* return_value);
	HRESULT set_LinearAttenuation(FLOAT value);
	HRESULT get_Offset(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Offset(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_OuterConeAngle(FLOAT* return_value);
	HRESULT set_OuterConeAngle(FLOAT value);
	HRESULT get_OuterConeAngleInDegrees(FLOAT* return_value);
	HRESULT set_OuterConeAngleInDegrees(FLOAT value);
	HRESULT get_OuterConeColor(Windows.UI.Color* return_value);
	HRESULT set_OuterConeColor(Windows.UI.Color value);
	HRESULT get_QuadraticAttenuation(FLOAT* return_value);
	HRESULT set_QuadraticAttenuation(FLOAT value);
}

@uuid("08e05581-1ad1-4f97-9757-402d76e4233b")
@WinrtFactory("Windows.UI.Composition.SpriteVisual")
interface ISpriteVisual : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Brush(Windows.UI.Composition.CompositionBrush* return_value);
	HRESULT set_Brush(Windows.UI.Composition.CompositionBrush value);
}

@uuid("588c9664-997a-4850-91fe-53cb58f81ce9")
@WinrtFactory("Windows.UI.Composition.SpriteVisual")
interface ISpriteVisual2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Shadow(Windows.UI.Composition.CompositionShadow* return_value);
	HRESULT set_Shadow(Windows.UI.Composition.CompositionShadow value);
}

@uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6")
@WinrtFactory("Windows.UI.Composition.StepEasingFunction")
interface IStepEasingFunction : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_FinalStep(INT32* return_value);
	HRESULT set_FinalStep(INT32 value);
	HRESULT get_InitialStep(INT32* return_value);
	HRESULT set_InitialStep(INT32 value);
	HRESULT get_IsFinalStepSingleFrame(bool* return_value);
	HRESULT set_IsFinalStepSingleFrame(bool value);
	HRESULT get_IsInitialStepSingleFrame(bool* return_value);
	HRESULT set_IsInitialStepSingleFrame(bool value);
	HRESULT get_StepCount(INT32* return_value);
	HRESULT set_StepCount(INT32 value);
}

@uuid("df414515-4e29-4f11-b55e-bf2a6eb36294")
@WinrtFactory("Windows.UI.Composition.Vector2KeyFrameAnimation")
interface IVector2KeyFrameAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector2 value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector2 value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("c8039daa-a281-43c2-a73d-b68e3c533c40")
@WinrtFactory("Windows.UI.Composition.Vector3KeyFrameAnimation")
interface IVector3KeyFrameAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector3 value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector3 value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("2457945b-addd-4385-9606-b6a3d5e4e1b9")
@WinrtFactory("Windows.UI.Composition.Vector4KeyFrameAnimation")
interface IVector4KeyFrameAnimation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector4 value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector4 value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("117e202d-a859-4c89-873b-c2aa566788e3")
@WinrtFactory("Windows.UI.Composition.Visual")
interface IVisual : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AnchorPoint(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_AnchorPoint(Windows.Foundation.Numerics.Vector2 value);
	HRESULT get_BackfaceVisibility(Windows.UI.Composition.CompositionBackfaceVisibility* return_value);
	HRESULT set_BackfaceVisibility(Windows.UI.Composition.CompositionBackfaceVisibility value);
	HRESULT get_BorderMode(Windows.UI.Composition.CompositionBorderMode* return_value);
	HRESULT set_BorderMode(Windows.UI.Composition.CompositionBorderMode value);
	HRESULT get_CenterPoint(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_CenterPoint(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_Clip(Windows.UI.Composition.CompositionClip* return_value);
	HRESULT set_Clip(Windows.UI.Composition.CompositionClip value);
	HRESULT get_CompositeMode(Windows.UI.Composition.CompositionCompositeMode* return_value);
	HRESULT set_CompositeMode(Windows.UI.Composition.CompositionCompositeMode value);
	HRESULT get_IsVisible(bool* return_value);
	HRESULT set_IsVisible(bool value);
	HRESULT get_Offset(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Offset(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_Opacity(FLOAT* return_value);
	HRESULT set_Opacity(FLOAT value);
	HRESULT get_Orientation(Windows.Foundation.Numerics.Quaternion* return_value);
	HRESULT set_Orientation(Windows.Foundation.Numerics.Quaternion value);
	HRESULT get_Parent(Windows.UI.Composition.ContainerVisual* return_value);
	HRESULT get_RotationAngle(FLOAT* return_value);
	HRESULT set_RotationAngle(FLOAT value);
	HRESULT get_RotationAngleInDegrees(FLOAT* return_value);
	HRESULT set_RotationAngleInDegrees(FLOAT value);
	HRESULT get_RotationAxis(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_RotationAxis(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_Scale(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Scale(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_Size(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_Size(Windows.Foundation.Numerics.Vector2 value);
	HRESULT get_TransformMatrix(Windows.Foundation.Numerics.Matrix4x4* return_value);
	HRESULT set_TransformMatrix(Windows.Foundation.Numerics.Matrix4x4 value);
}

@uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06")
@WinrtFactory("Windows.UI.Composition.Visual")
interface IVisual2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ParentForTransform(Windows.UI.Composition.Visual* return_value);
	HRESULT set_ParentForTransform(Windows.UI.Composition.Visual value);
	HRESULT get_RelativeOffsetAdjustment(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_RelativeOffsetAdjustment(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_RelativeSizeAdjustment(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT set_RelativeSizeAdjustment(Windows.Foundation.Numerics.Vector2 value);
}

@uuid("8b745505-fd3e-4a98-84a8-e949468c6bcb")
@WinrtFactory("Windows.UI.Composition.VisualCollection")
interface IVisualCollection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Count(INT32* return_value);
	HRESULT abi_InsertAbove(Windows.UI.Composition.Visual newChild, Windows.UI.Composition.Visual sibling);
	HRESULT abi_InsertAtBottom(Windows.UI.Composition.Visual newChild);
	HRESULT abi_InsertAtTop(Windows.UI.Composition.Visual newChild);
	HRESULT abi_InsertBelow(Windows.UI.Composition.Visual newChild, Windows.UI.Composition.Visual sibling);
	HRESULT abi_Remove(Windows.UI.Composition.Visual child);
	HRESULT abi_RemoveAll();
}

@uuid("338faa70-54c8-40a7-8029-c9ceeb0aa250")
@WinrtFactory("Windows.UI.Composition.VisualUnorderedCollection")
interface IVisualUnorderedCollection : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Count(INT32* return_value);
	HRESULT abi_Add(Windows.UI.Composition.Visual newVisual);
	HRESULT abi_Remove(Windows.UI.Composition.Visual visual);
	HRESULT abi_RemoveAll();
}

interface AmbientLight : Windows.UI.Composition.CompositionLight
{
}

interface ColorKeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation
{
}

interface CompositionAnimation : Windows.UI.Composition.CompositionObject
{
}

interface CompositionAnimationGroup : Windows.UI.Composition.CompositionObject
{
}

interface CompositionBackdropBrush : Windows.UI.Composition.CompositionBrush
{
}

interface CompositionBatchCompletedEventArgs : Windows.UI.Composition.CompositionObject
{
}

interface CompositionBrush : Windows.UI.Composition.CompositionObject
{
}

interface CompositionCapabilities
{
}

interface CompositionClip : Windows.UI.Composition.CompositionObject
{
}

interface CompositionColorBrush : Windows.UI.Composition.CompositionBrush
{
}

interface CompositionCommitBatch : Windows.UI.Composition.CompositionObject
{
}

interface CompositionDrawingSurface : Windows.UI.Composition.CompositionObject
{
}

interface CompositionEasingFunction : Windows.UI.Composition.CompositionObject
{
}

interface CompositionEffectBrush : Windows.UI.Composition.CompositionBrush
{
}

interface CompositionEffectFactory : Windows.UI.Composition.CompositionObject
{
}

interface CompositionEffectSourceParameter
{
}

interface CompositionGraphicsDevice : Windows.UI.Composition.CompositionObject
{
}

interface CompositionLight : Windows.UI.Composition.CompositionObject
{
}

interface CompositionMaskBrush : Windows.UI.Composition.CompositionBrush
{
}

interface CompositionNineGridBrush : Windows.UI.Composition.CompositionBrush
{
}

interface CompositionObject
{
}

interface CompositionPropertySet : Windows.UI.Composition.CompositionObject
{
}

interface CompositionScopedBatch : Windows.UI.Composition.CompositionObject
{
}

interface CompositionShadow : Windows.UI.Composition.CompositionObject
{
}

interface CompositionSurfaceBrush : Windows.UI.Composition.CompositionBrush
{
}

interface CompositionTarget : Windows.UI.Composition.CompositionObject
{
}

interface CompositionVirtualDrawingSurface : Windows.UI.Composition.CompositionDrawingSurface
{
}

interface Compositor
{
}

interface ContainerVisual : Windows.UI.Composition.Visual
{
}

interface CubicBezierEasingFunction : Windows.UI.Composition.CompositionEasingFunction
{
}

interface DistantLight : Windows.UI.Composition.CompositionLight
{
}

interface DropShadow : Windows.UI.Composition.CompositionShadow
{
}

interface ExpressionAnimation : Windows.UI.Composition.CompositionAnimation
{
}

interface ImplicitAnimationCollection : Windows.UI.Composition.CompositionObject
{
}

interface InsetClip : Windows.UI.Composition.CompositionClip
{
}

interface KeyFrameAnimation : Windows.UI.Composition.CompositionAnimation
{
}

interface LayerVisual : Windows.UI.Composition.ContainerVisual
{
}

interface LinearEasingFunction : Windows.UI.Composition.CompositionEasingFunction
{
}

interface PointLight : Windows.UI.Composition.CompositionLight
{
}

interface QuaternionKeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation
{
}

interface RenderingDeviceReplacedEventArgs : Windows.UI.Composition.CompositionObject
{
}

interface ScalarKeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation
{
}

interface SpotLight : Windows.UI.Composition.CompositionLight
{
}

interface SpriteVisual : Windows.UI.Composition.ContainerVisual
{
}

interface StepEasingFunction : Windows.UI.Composition.CompositionEasingFunction
{
}

interface Vector2KeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation
{
}

interface Vector3KeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation
{
}

interface Vector4KeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation
{
}

interface Visual : Windows.UI.Composition.CompositionObject
{
}

interface VisualCollection : Windows.UI.Composition.CompositionObject
{
}

interface VisualUnorderedCollection : Windows.UI.Composition.CompositionObject
{
}

enum AnimationDelayBehavior
{
	SetInitialValueAfterDelay = 0,
	SetInitialValueBeforeDelay = 1
}

enum AnimationDirection
{
	Normal = 0,
	Reverse = 1,
	Alternate = 2,
	AlternateReverse = 3
}

enum AnimationIterationBehavior
{
	Count = 0,
	Forever = 1
}

enum AnimationStopBehavior
{
	LeaveCurrentValue = 0,
	SetToInitialValue = 1,
	SetToFinalValue = 2
}

enum CompositionBackfaceVisibility
{
	Inherit = 0,
	Visible = 1,
	Hidden = 2
}

@bitflags
enum CompositionBatchTypes
{
	None = 0x0,
	Animation = 0x1,
	Effect = 0x2
}

enum CompositionBitmapInterpolationMode
{
	NearestNeighbor = 0,
	Linear = 1
}

enum CompositionBorderMode
{
	Inherit = 0,
	Soft = 1,
	Hard = 2
}

enum CompositionColorSpace
{
	Auto = 0,
	Hsl = 1,
	Rgb = 2
}

enum CompositionCompositeMode
{
	Inherit = 0,
	SourceOver = 1,
	DestinationInvert = 2,
	MinBlend = 3
}

enum CompositionEffectFactoryLoadStatus
{
	Success = 0,
	EffectTooComplex = 1,
	Pending = 2,
	Other = -1
}

enum CompositionGetValueStatus
{
	Succeeded = 0,
	TypeMismatch = 1,
	NotFound = 2
}

enum CompositionStretch
{
	None = 0,
	Fill = 1,
	Uniform = 2,
	UniformToFill = 3
}