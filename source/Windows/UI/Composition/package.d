module Windows.UI.Composition;

import dwinrt;

@uuid("a48130a1-b7c4-46f7-b9bf-daf43a44e6ee")
@WinrtFactory("Windows.UI.Composition.AmbientLight")
interface IAmbientLight : IInspectable
{
extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
}

@uuid("93adb5e9-8e05-4593-84a3-dca152781e56")
@WinrtFactory("Windows.UI.Composition.ColorKeyFrameAnimation")
interface IColorKeyFrameAnimation : IInspectable
{
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
extern(Windows):
	HRESULT abi_SetBooleanParameter(HSTRING key, bool value);
	HRESULT get_Target(HSTRING* return_value);
	HRESULT set_Target(HSTRING value);
}

@uuid("1c2c2999-e818-48d3-a6dd-d78c82f8ace9")
interface ICompositionAnimationBase : IInspectable
{
}

@uuid("10f6c4fb-6e51-4c25-bbd3-586a9bec3ef4")
@WinrtFactory("Windows.UI.Composition.CompositionAnimation")
interface ICompositionAnimationFactory : IInspectable
{
}

@uuid("5e7cc90c-cd14-4e07-8a55-c72527aabdac")
@WinrtFactory("Windows.UI.Composition.CompositionAnimationGroup")
interface ICompositionAnimationGroup : IInspectable
{
extern(Windows):
	HRESULT get_Count(INT32* return_value);
	HRESULT abi_Add(Windows.UI.Composition.CompositionAnimation value);
	HRESULT abi_Remove(Windows.UI.Composition.CompositionAnimation value);
	HRESULT abi_RemoveAll();
}

@uuid("c5acae58-3898-499e-8d7f-224e91286a5d")
@WinrtFactory("Windows.UI.Composition.CompositionBackdropBrush")
interface ICompositionBackdropBrush : IInspectable
{
}

@uuid("0d00dad0-9464-450a-a562-2e2698b0a812")
@WinrtFactory("Windows.UI.Composition.CompositionBatchCompletedEventArgs")
interface ICompositionBatchCompletedEventArgs : IInspectable
{
}

@uuid("ab0d7608-30c0-40e9-b568-b60a6bd1fb46")
@WinrtFactory("Windows.UI.Composition.CompositionBrush")
interface ICompositionBrush : IInspectable
{
}

@uuid("da53fb4c-4650-47c4-ad76-765379607ed6")
@WinrtFactory("Windows.UI.Composition.CompositionBrush")
interface ICompositionBrushFactory : IInspectable
{
}

@uuid("8253353e-b517-48bc-b1e8-4b3561a2e181")
@WinrtFactory("Windows.UI.Composition.CompositionCapabilities")
interface ICompositionCapabilities : IInspectable
{
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
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.UI.Composition.CompositionCapabilities* return_current);
}

@uuid("1ccd2a52-cfc7-4ace-9983-146bb8eb6a3c")
@WinrtFactory("Windows.UI.Composition.CompositionClip")
interface ICompositionClip : IInspectable
{
}

@uuid("5893e069-3516-40e1-89e0-5ba924927235")
@WinrtFactory("Windows.UI.Composition.CompositionClip")
interface ICompositionClip2 : IInspectable
{
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

@uuid("b9484caf-20c7-4aed-ac4a-9c78ba1302cf")
@WinrtFactory("Windows.UI.Composition.CompositionClip")
interface ICompositionClipFactory : IInspectable
{
}

@uuid("2b264c5e-bf35-4831-8642-cf70c20fff2f")
@WinrtFactory("Windows.UI.Composition.CompositionColorBrush")
interface ICompositionColorBrush : IInspectable
{
extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
}

@uuid("0d00dad0-ca07-4400-8c8e-cb5db08559cc")
@WinrtFactory("Windows.UI.Composition.CompositionCommitBatch")
interface ICompositionCommitBatch : IInspectable
{
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
extern(Windows):
	HRESULT get_AlphaMode(Windows.Graphics.DirectX.DirectXAlphaMode* return_value);
	HRESULT get_PixelFormat(Windows.Graphics.DirectX.DirectXPixelFormat* return_value);
	HRESULT get_Size(Windows.Foundation.Size* return_value);
}

@uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f")
@WinrtFactory("Windows.UI.Composition.CompositionDrawingSurface")
interface ICompositionDrawingSurface2 : IInspectable
{
extern(Windows):
	HRESULT get_SizeInt32(Windows.Graphics.SizeInt32* return_value);
	HRESULT abi_Resize(Windows.Graphics.SizeInt32 sizePixels);
	HRESULT abi_Scroll(Windows.Graphics.PointInt32 offset);
	HRESULT abi_ScrollRect(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 scrollRect);
	HRESULT abi_ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect);
	HRESULT abi_ScrollRectWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect, Windows.Graphics.RectInt32 scrollRect);
}

@uuid("9497b00a-312d-46b9-9db3-412fd79464c8")
@WinrtFactory("Windows.UI.Composition.CompositionDrawingSurface")
interface ICompositionDrawingSurfaceFactory : IInspectable
{
}

@uuid("5145e356-bf79-4ea8-8cc2-6b5b472e6c9a")
@WinrtFactory("Windows.UI.Composition.CompositionEasingFunction")
interface ICompositionEasingFunction : IInspectable
{
}

@uuid("60840774-3da0-4949-8200-7206c00190a0")
@WinrtFactory("Windows.UI.Composition.CompositionEasingFunction")
interface ICompositionEasingFunctionFactory : IInspectable
{
}

@uuid("bf7f795e-83cc-44bf-a447-3e3c071789ec")
@WinrtFactory("Windows.UI.Composition.CompositionEffectBrush")
interface ICompositionEffectBrush : IInspectable
{
extern(Windows):
	HRESULT abi_GetSourceParameter(HSTRING name, Windows.UI.Composition.CompositionBrush* return_result);
	HRESULT abi_SetSourceParameter(HSTRING name, Windows.UI.Composition.CompositionBrush source);
}

@uuid("be5624af-ba7e-4510-9850-41c0b4ff74df")
@WinrtFactory("Windows.UI.Composition.CompositionEffectFactory")
interface ICompositionEffectFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateBrush(Windows.UI.Composition.CompositionEffectBrush* return_result);
	HRESULT get_ExtendedError(HRESULT* return_value);
	HRESULT get_LoadStatus(Windows.UI.Composition.CompositionEffectFactoryLoadStatus* return_value);
}

@uuid("858ab13a-3292-4e4e-b3bb-2b6c6544a6ee")
@WinrtFactory("Windows.UI.Composition.CompositionEffectSourceParameter")
interface ICompositionEffectSourceParameter : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
}

@uuid("b3d9f276-aba3-4724-acf3-d0397464db1c")
@WinrtFactory("Windows.UI.Composition.CompositionEffectSourceParameter")
interface ICompositionEffectSourceParameterFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING name, Windows.UI.Composition.CompositionEffectSourceParameter* return_instance);
}

@uuid("fb22c6e1-80a2-4667-9936-dbeaf6eefe95")
@WinrtFactory("Windows.UI.Composition.CompositionGraphicsDevice")
interface ICompositionGraphicsDevice : IInspectable
{
extern(Windows):
	HRESULT abi_CreateDrawingSurface(Windows.Foundation.Size sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode, Windows.UI.Composition.CompositionDrawingSurface* return_result);
	HRESULT add_RenderingDeviceReplaced(Windows.Foundation.TypedEventHandler!(Windows.UI.Composition.CompositionGraphicsDevice, Windows.UI.Composition.RenderingDeviceReplacedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_RenderingDeviceReplaced(EventRegistrationToken token);
}

@uuid("0fb8bdf6-c0f0-4bcc-9fb8-084982490d7d")
@WinrtFactory("Windows.UI.Composition.CompositionGraphicsDevice")
interface ICompositionGraphicsDevice2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateDrawingSurface2(Windows.Graphics.SizeInt32 sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode, Windows.UI.Composition.CompositionDrawingSurface* return_result);
	HRESULT abi_CreateVirtualDrawingSurface(Windows.Graphics.SizeInt32 sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode, Windows.UI.Composition.CompositionVirtualDrawingSurface* return_result);
}

@uuid("41a6d7c2-2e5d-4bc1-b09e-8f0a03e3d8d3")
@WinrtFactory("Windows.UI.Composition.CompositionLight")
interface ICompositionLight : IInspectable
{
extern(Windows):
	HRESULT get_Targets(Windows.UI.Composition.VisualUnorderedCollection* return_value);
}

@uuid("069cf306-da3c-4b44-838a-5e03d51ace55")
@WinrtFactory("Windows.UI.Composition.CompositionLight")
interface ICompositionLightFactory : IInspectable
{
}

@uuid("522cf09e-be6b-4f41-be49-f9226d471b4a")
@WinrtFactory("Windows.UI.Composition.CompositionMaskBrush")
interface ICompositionMaskBrush : IInspectable
{
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
extern(Windows):
	HRESULT get_Comment(HSTRING* return_value);
	HRESULT set_Comment(HSTRING value);
	HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value);
	HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value);
	HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value);
	HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value);
}

@uuid("51205c5e-558a-4f2a-8d39-37bfe1e20ddd")
@WinrtFactory("Windows.UI.Composition.CompositionObject")
interface ICompositionObjectFactory : IInspectable
{
}

@uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2")
@WinrtFactory("Windows.UI.Composition.CompositionPropertySet")
interface ICompositionPropertySet : IInspectable
{
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
extern(Windows):
	HRESULT abi_InsertBoolean(HSTRING propertyName, bool value);
	HRESULT abi_TryGetBoolean(HSTRING propertyName, bool* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
}

@uuid("0d00dad0-fb07-46fd-8c72-6280d1a3d1dd")
@WinrtFactory("Windows.UI.Composition.CompositionScopedBatch")
interface ICompositionScopedBatch : IInspectable
{
extern(Windows):
	HRESULT get_IsActive(bool* return_value);
	HRESULT get_IsEnded(bool* return_value);
	HRESULT abi_End();
	HRESULT abi_Resume();
	HRESULT abi_Suspend();
	HRESULT add_Completed(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Completed(EventRegistrationToken token);
}

@uuid("329e52e2-4335-49cc-b14a-37782d10f0c4")
@WinrtFactory("Windows.UI.Composition.CompositionShadow")
interface ICompositionShadow : IInspectable
{
}

@uuid("221f492f-dcba-4b91-999e-1dc217a01530")
@WinrtFactory("Windows.UI.Composition.CompositionShadow")
interface ICompositionShadowFactory : IInspectable
{
}

@uuid("1527540d-42c7-47a6-a408-668f79a90dfb")
interface ICompositionSurface : IInspectable
{
}

@uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162")
@WinrtFactory("Windows.UI.Composition.CompositionSurfaceBrush")
interface ICompositionSurfaceBrush : IInspectable
{
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
extern(Windows):
	HRESULT get_Root(Windows.UI.Composition.Visual* return_value);
	HRESULT set_Root(Windows.UI.Composition.Visual value);
}

@uuid("a9c384db-8740-4f94-8b9d-b68521e7863d")
@WinrtFactory("Windows.UI.Composition.CompositionVirtualDrawingSurface")
interface ICompositionVirtualDrawingSurface : IInspectable
{
extern(Windows):
	HRESULT abi_Trim(UINT32 __rectsSize, Windows.Graphics.RectInt32* rects);
}

@uuid("6766106c-d56b-4a49-b1df-5076a0620768")
@WinrtFactory("Windows.UI.Composition.CompositionVirtualDrawingSurface")
interface ICompositionVirtualDrawingSurfaceFactory : IInspectable
{
}

@uuid("b403ca50-7f8c-4e83-985f-cc45060036d8")
@WinrtFactory("Windows.UI.Composition.Compositor")
interface ICompositor : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateHostBackdropBrush(Windows.UI.Composition.CompositionBackdropBrush* return_result);
}

@uuid("02f6bc74-ed20-4773-afe6-d49b4a93db32")
@WinrtFactory("Windows.UI.Composition.ContainerVisual")
interface IContainerVisual : IInspectable
{
extern(Windows):
	HRESULT get_Children(Windows.UI.Composition.VisualCollection* return_value);
}

@uuid("0363a65b-c7da-4d9a-95f4-69b5c8df670b")
@WinrtFactory("Windows.UI.Composition.ContainerVisual")
interface IContainerVisualFactory : IInspectable
{
}

@uuid("32350666-c1e8-44f9-96b8-c98acf0ae698")
@WinrtFactory("Windows.UI.Composition.CubicBezierEasingFunction")
interface ICubicBezierEasingFunction : IInspectable
{
extern(Windows):
	HRESULT get_ControlPoint1(Windows.Foundation.Numerics.Vector2* return_value);
	HRESULT get_ControlPoint2(Windows.Foundation.Numerics.Vector2* return_value);
}

@uuid("318cfafc-5ce3-4b55-ab5d-07a00353ac99")
@WinrtFactory("Windows.UI.Composition.DistantLight")
interface IDistantLight : IInspectable
{
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
extern(Windows):
	HRESULT get_Expression(HSTRING* return_value);
	HRESULT set_Expression(HSTRING value);
}

@uuid("0598a3ff-0a92-4c9d-a427-b25519250dbf")
@WinrtFactory("Windows.UI.Composition.ImplicitAnimationCollection")
interface IImplicitAnimationCollection : IInspectable
{
}

@uuid("1e73e647-84c7-477a-b474-5880e0442e15")
@WinrtFactory("Windows.UI.Composition.InsetClip")
interface IInsetClip : IInspectable
{
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
extern(Windows):
	HRESULT get_Direction(Windows.UI.Composition.AnimationDirection* return_value);
	HRESULT set_Direction(Windows.UI.Composition.AnimationDirection value);
}

@uuid("845bf0b4-d8de-462f-8753-c80d43c6ff5a")
@WinrtFactory("Windows.UI.Composition.KeyFrameAnimation")
interface IKeyFrameAnimation3 : IInspectable
{
extern(Windows):
	HRESULT get_DelayBehavior(Windows.UI.Composition.AnimationDelayBehavior* return_value);
	HRESULT set_DelayBehavior(Windows.UI.Composition.AnimationDelayBehavior value);
}

@uuid("bf0803f8-712a-4fc1-8c87-970859ed8d2e")
@WinrtFactory("Windows.UI.Composition.KeyFrameAnimation")
interface IKeyFrameAnimationFactory : IInspectable
{
}

@uuid("af843985-0444-4887-8e83-b40b253f822c")
@WinrtFactory("Windows.UI.Composition.LayerVisual")
interface ILayerVisual : IInspectable
{
extern(Windows):
	HRESULT get_Effect(Windows.UI.Composition.CompositionEffectBrush* return_value);
	HRESULT set_Effect(Windows.UI.Composition.CompositionEffectBrush value);
}

@uuid("9400975a-c7a6-46b3-acf7-1a268a0a117d")
@WinrtFactory("Windows.UI.Composition.LinearEasingFunction")
interface ILinearEasingFunction : IInspectable
{
}

@uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272")
@WinrtFactory("Windows.UI.Composition.PointLight")
interface IPointLight : IInspectable
{
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
extern(Windows):
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Quaternion value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Quaternion value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("3a31ac7d-28bf-4e7a-8524-71679d480f38")
@WinrtFactory("Windows.UI.Composition.RenderingDeviceReplacedEventArgs")
interface IRenderingDeviceReplacedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_GraphicsDevice(Windows.UI.Composition.CompositionGraphicsDevice* return_value);
}

@uuid("ae288fa9-252c-4b95-a725-bf85e38000a1")
@WinrtFactory("Windows.UI.Composition.ScalarKeyFrameAnimation")
interface IScalarKeyFrameAnimation : IInspectable
{
extern(Windows):
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, FLOAT value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, FLOAT value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44")
@WinrtFactory("Windows.UI.Composition.SpotLight")
interface ISpotLight : IInspectable
{
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
extern(Windows):
	HRESULT get_Brush(Windows.UI.Composition.CompositionBrush* return_value);
	HRESULT set_Brush(Windows.UI.Composition.CompositionBrush value);
}

@uuid("588c9664-997a-4850-91fe-53cb58f81ce9")
@WinrtFactory("Windows.UI.Composition.SpriteVisual")
interface ISpriteVisual2 : IInspectable
{
extern(Windows):
	HRESULT get_Shadow(Windows.UI.Composition.CompositionShadow* return_value);
	HRESULT set_Shadow(Windows.UI.Composition.CompositionShadow value);
}

@uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6")
@WinrtFactory("Windows.UI.Composition.StepEasingFunction")
interface IStepEasingFunction : IInspectable
{
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
extern(Windows):
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector2 value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector2 value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("c8039daa-a281-43c2-a73d-b68e3c533c40")
@WinrtFactory("Windows.UI.Composition.Vector3KeyFrameAnimation")
interface IVector3KeyFrameAnimation : IInspectable
{
extern(Windows):
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector3 value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector3 value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("2457945b-addd-4385-9606-b6a3d5e4e1b9")
@WinrtFactory("Windows.UI.Composition.Vector4KeyFrameAnimation")
interface IVector4KeyFrameAnimation : IInspectable
{
extern(Windows):
	HRESULT abi_InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector4 value);
	HRESULT abi_InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector4 value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("117e202d-a859-4c89-873b-c2aa566788e3")
@WinrtFactory("Windows.UI.Composition.Visual")
interface IVisual : IInspectable
{
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
extern(Windows):
	HRESULT get_Count(INT32* return_value);
	HRESULT abi_InsertAbove(Windows.UI.Composition.Visual newChild, Windows.UI.Composition.Visual sibling);
	HRESULT abi_InsertAtBottom(Windows.UI.Composition.Visual newChild);
	HRESULT abi_InsertAtTop(Windows.UI.Composition.Visual newChild);
	HRESULT abi_InsertBelow(Windows.UI.Composition.Visual newChild, Windows.UI.Composition.Visual sibling);
	HRESULT abi_Remove(Windows.UI.Composition.Visual child);
	HRESULT abi_RemoveAll();
}

@uuid("ad0ff93e-b502-4eb5-87b4-9a38a71d0137")
@WinrtFactory("Windows.UI.Composition.Visual")
interface IVisualFactory : IInspectable
{
}

@uuid("338faa70-54c8-40a7-8029-c9ceeb0aa250")
@WinrtFactory("Windows.UI.Composition.VisualUnorderedCollection")
interface IVisualUnorderedCollection : IInspectable
{
extern(Windows):
	HRESULT get_Count(INT32* return_value);
	HRESULT abi_Add(Windows.UI.Composition.Visual newVisual);
	HRESULT abi_Remove(Windows.UI.Composition.Visual visual);
	HRESULT abi_RemoveAll();
}

interface AmbientLight : Windows.UI.Composition.CompositionLight, Windows.UI.Composition.IAmbientLight
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IAmbientLight).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IAmbientLight).set_Color(value));
	}
}

interface ColorKeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IColorKeyFrameAnimation
{
extern(Windows):
	final Windows.UI.Composition.CompositionColorSpace InterpolationColorSpace()
	{
		Windows.UI.Composition.CompositionColorSpace _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IColorKeyFrameAnimation).get_InterpolationColorSpace(&_ret));
		return _ret;
	}
	final void InterpolationColorSpace(Windows.UI.Composition.CompositionColorSpace value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IColorKeyFrameAnimation).set_InterpolationColorSpace(value));
	}
	final void InsertKeyFrame(FLOAT normalizedProgressKey, Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IColorKeyFrameAnimation).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.UI.Color value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IColorKeyFrameAnimation).abi_InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction));
	}
}

interface CompositionAnimation : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionAnimation, Windows.UI.Composition.ICompositionAnimation2, Windows.UI.Composition.ICompositionAnimationBase
{
extern(Windows):
	final void ClearAllParameters()
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_ClearAllParameters());
	}
	final void ClearParameter(HSTRING key)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_ClearParameter(key));
	}
	final void SetColorParameter(HSTRING key, Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_SetColorParameter(key, value));
	}
	final void SetMatrix3x2Parameter(HSTRING key, Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_SetMatrix3x2Parameter(key, value));
	}
	final void SetMatrix4x4Parameter(HSTRING key, Windows.Foundation.Numerics.Matrix4x4 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_SetMatrix4x4Parameter(key, value));
	}
	final void SetQuaternionParameter(HSTRING key, Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_SetQuaternionParameter(key, value));
	}
	final void SetReferenceParameter(HSTRING key, Windows.UI.Composition.CompositionObject compositionObject)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_SetReferenceParameter(key, compositionObject));
	}
	final void SetScalarParameter(HSTRING key, FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_SetScalarParameter(key, value));
	}
	final void SetVector2Parameter(HSTRING key, Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_SetVector2Parameter(key, value));
	}
	final void SetVector3Parameter(HSTRING key, Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_SetVector3Parameter(key, value));
	}
	final void SetVector4Parameter(HSTRING key, Windows.Foundation.Numerics.Vector4 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation).abi_SetVector4Parameter(key, value));
	}
	final void SetBooleanParameter(HSTRING key, bool value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation2).abi_SetBooleanParameter(key, value));
	}
	final HSTRING Target()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation2).get_Target(&_ret));
		return _ret;
	}
	final void Target(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimation2).set_Target(value));
	}
}

interface CompositionAnimationGroup : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionAnimationGroup, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.CompositionAnimation), Windows.UI.Composition.ICompositionAnimationBase
{
extern(Windows):
	final INT32 Count()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimationGroup).get_Count(&_ret));
		return _ret;
	}
	final void Add(Windows.UI.Composition.CompositionAnimation value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimationGroup).abi_Add(value));
	}
	final void Remove(Windows.UI.Composition.CompositionAnimation value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimationGroup).abi_Remove(value));
	}
	final void RemoveAll()
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionAnimationGroup).abi_RemoveAll());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Composition.CompositionAnimation)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.CompositionAnimation)).abi_First(out_first));
	}
}

interface CompositionBackdropBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionBackdropBrush
{
}

interface CompositionBatchCompletedEventArgs : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionBatchCompletedEventArgs
{
}

interface CompositionBrush : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionBrush
{
}

interface CompositionCapabilities : Windows.UI.Composition.ICompositionCapabilities
{
extern(Windows):
	final bool AreEffectsSupported()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionCapabilities).abi_AreEffectsSupported(&_ret));
		return _ret;
	}
	final bool AreEffectsFast()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionCapabilities).abi_AreEffectsFast(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnChanged(void delegate(Windows.UI.Composition.CompositionCapabilities, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Changed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Composition.CompositionCapabilities, IInspectable), Windows.UI.Composition.CompositionCapabilities, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeChanged(EventRegistrationToken token)
	{
		Debug.OK(remove_Changed(token));
	}
}

interface CompositionClip : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionClip, Windows.UI.Composition.ICompositionClip2
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector2 AnchorPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).get_AnchorPoint(&_ret));
		return _ret;
	}
	final void AnchorPoint(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).set_AnchorPoint(value));
	}
	final Windows.Foundation.Numerics.Vector2 CenterPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).get_CenterPoint(&_ret));
		return _ret;
	}
	final void CenterPoint(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).set_CenterPoint(value));
	}
	final Windows.Foundation.Numerics.Vector2 Offset()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).set_Offset(value));
	}
	final FLOAT RotationAngle()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).get_RotationAngle(&_ret));
		return _ret;
	}
	final void RotationAngle(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).set_RotationAngle(value));
	}
	final FLOAT RotationAngleInDegrees()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).get_RotationAngleInDegrees(&_ret));
		return _ret;
	}
	final void RotationAngleInDegrees(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).set_RotationAngleInDegrees(value));
	}
	final Windows.Foundation.Numerics.Vector2 Scale()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).get_Scale(&_ret));
		return _ret;
	}
	final void Scale(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).set_Scale(value));
	}
	final Windows.Foundation.Numerics.Matrix3x2 TransformMatrix()
	{
		Windows.Foundation.Numerics.Matrix3x2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).get_TransformMatrix(&_ret));
		return _ret;
	}
	final void TransformMatrix(Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionClip2).set_TransformMatrix(value));
	}
}

interface CompositionColorBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionColorBrush
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionColorBrush).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionColorBrush).set_Color(value));
	}
}

interface CompositionCommitBatch : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionCommitBatch
{
extern(Windows):
	final bool IsActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionCommitBatch).get_IsActive(&_ret));
		return _ret;
	}
	final bool IsEnded()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionCommitBatch).get_IsEnded(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCompleted(void delegate(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Completed(event!(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs), IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_Completed(token));
	}
}

interface CompositionDrawingSurface : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionDrawingSurface, Windows.UI.Composition.ICompositionSurface, Windows.UI.Composition.ICompositionDrawingSurface2
{
extern(Windows):
	final Windows.Graphics.DirectX.DirectXAlphaMode AlphaMode()
	{
		Windows.Graphics.DirectX.DirectXAlphaMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionDrawingSurface).get_AlphaMode(&_ret));
		return _ret;
	}
	final Windows.Graphics.DirectX.DirectXPixelFormat PixelFormat()
	{
		Windows.Graphics.DirectX.DirectXPixelFormat _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionDrawingSurface).get_PixelFormat(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size Size()
	{
		Windows.Foundation.Size _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionDrawingSurface).get_Size(&_ret));
		return _ret;
	}
	final Windows.Graphics.SizeInt32 SizeInt32()
	{
		Windows.Graphics.SizeInt32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionDrawingSurface2).get_SizeInt32(&_ret));
		return _ret;
	}
	final void Resize(Windows.Graphics.SizeInt32 sizePixels)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionDrawingSurface2).abi_Resize(sizePixels));
	}
	final void Scroll(Windows.Graphics.PointInt32 offset)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionDrawingSurface2).abi_Scroll(offset));
	}
	final void ScrollRect(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 scrollRect)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionDrawingSurface2).abi_ScrollRect(offset, scrollRect));
	}
	final void ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionDrawingSurface2).abi_ScrollWithClip(offset, clipRect));
	}
	final void ScrollRectWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect, Windows.Graphics.RectInt32 scrollRect)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionDrawingSurface2).abi_ScrollRectWithClip(offset, clipRect, scrollRect));
	}
}

interface CompositionEasingFunction : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionEasingFunction
{
}

interface CompositionEffectBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionEffectBrush
{
extern(Windows):
	final Windows.UI.Composition.CompositionBrush GetSourceParameter(HSTRING name)
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionEffectBrush).abi_GetSourceParameter(name, &_ret));
		return _ret;
	}
	final void SetSourceParameter(HSTRING name, Windows.UI.Composition.CompositionBrush source)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionEffectBrush).abi_SetSourceParameter(name, source));
	}
}

interface CompositionEffectFactory : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionEffectFactory
{
extern(Windows):
	final Windows.UI.Composition.CompositionEffectBrush CreateBrush()
	{
		Windows.UI.Composition.CompositionEffectBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionEffectFactory).abi_CreateBrush(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionEffectFactory).get_ExtendedError(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionEffectFactoryLoadStatus LoadStatus()
	{
		Windows.UI.Composition.CompositionEffectFactoryLoadStatus _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionEffectFactory).get_LoadStatus(&_ret));
		return _ret;
	}
}

interface CompositionEffectSourceParameter : Windows.UI.Composition.ICompositionEffectSourceParameter, Windows.Graphics.Effects.IGraphicsEffectSource
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionEffectSourceParameter).get_Name(&_ret));
		return _ret;
	}
}

interface CompositionGraphicsDevice : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionGraphicsDevice, Windows.UI.Composition.ICompositionGraphicsDevice2
{
extern(Windows):
	final Windows.UI.Composition.CompositionDrawingSurface CreateDrawingSurface(Windows.Foundation.Size sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode)
	{
		Windows.UI.Composition.CompositionDrawingSurface _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionGraphicsDevice).abi_CreateDrawingSurface(sizePixels, pixelFormat, alphaMode, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnRenderingDeviceReplaced(void delegate(Windows.UI.Composition.CompositionGraphicsDevice, Windows.UI.Composition.RenderingDeviceReplacedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_RenderingDeviceReplaced(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Composition.CompositionGraphicsDevice, Windows.UI.Composition.RenderingDeviceReplacedEventArgs), Windows.UI.Composition.CompositionGraphicsDevice, Windows.UI.Composition.RenderingDeviceReplacedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRenderingDeviceReplaced(EventRegistrationToken token)
	{
		Debug.OK(remove_RenderingDeviceReplaced(token));
	}
	final Windows.UI.Composition.CompositionDrawingSurface CreateDrawingSurface2(Windows.Graphics.SizeInt32 sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode)
	{
		Windows.UI.Composition.CompositionDrawingSurface _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionGraphicsDevice2).abi_CreateDrawingSurface2(sizePixels, pixelFormat, alphaMode, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionVirtualDrawingSurface CreateVirtualDrawingSurface(Windows.Graphics.SizeInt32 sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode)
	{
		Windows.UI.Composition.CompositionVirtualDrawingSurface _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionGraphicsDevice2).abi_CreateVirtualDrawingSurface(sizePixels, pixelFormat, alphaMode, &_ret));
		return _ret;
	}
}

interface CompositionLight : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionLight
{
extern(Windows):
	final Windows.UI.Composition.VisualUnorderedCollection Targets()
	{
		Windows.UI.Composition.VisualUnorderedCollection _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionLight).get_Targets(&_ret));
		return _ret;
	}
}

interface CompositionMaskBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionMaskBrush
{
extern(Windows):
	final Windows.UI.Composition.CompositionBrush Mask()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionMaskBrush).get_Mask(&_ret));
		return _ret;
	}
	final void Mask(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionMaskBrush).set_Mask(value));
	}
	final Windows.UI.Composition.CompositionBrush Source()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionMaskBrush).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionMaskBrush).set_Source(value));
	}
}

interface CompositionNineGridBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionNineGridBrush
{
extern(Windows):
	final FLOAT BottomInset()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).get_BottomInset(&_ret));
		return _ret;
	}
	final void BottomInset(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).set_BottomInset(value));
	}
	final FLOAT BottomInsetScale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).get_BottomInsetScale(&_ret));
		return _ret;
	}
	final void BottomInsetScale(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).set_BottomInsetScale(value));
	}
	final bool IsCenterHollow()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).get_IsCenterHollow(&_ret));
		return _ret;
	}
	final void IsCenterHollow(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).set_IsCenterHollow(value));
	}
	final FLOAT LeftInset()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).get_LeftInset(&_ret));
		return _ret;
	}
	final void LeftInset(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).set_LeftInset(value));
	}
	final FLOAT LeftInsetScale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).get_LeftInsetScale(&_ret));
		return _ret;
	}
	final void LeftInsetScale(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).set_LeftInsetScale(value));
	}
	final FLOAT RightInset()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).get_RightInset(&_ret));
		return _ret;
	}
	final void RightInset(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).set_RightInset(value));
	}
	final FLOAT RightInsetScale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).get_RightInsetScale(&_ret));
		return _ret;
	}
	final void RightInsetScale(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).set_RightInsetScale(value));
	}
	final Windows.UI.Composition.CompositionBrush Source()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).set_Source(value));
	}
	final FLOAT TopInset()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).get_TopInset(&_ret));
		return _ret;
	}
	final void TopInset(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).set_TopInset(value));
	}
	final FLOAT TopInsetScale()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).get_TopInsetScale(&_ret));
		return _ret;
	}
	final void TopInsetScale(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).set_TopInsetScale(value));
	}
	final void SetInsets(FLOAT inset)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).abi_SetInsets(inset));
	}
	final void SetInsetsWithValues(FLOAT left, FLOAT top, FLOAT right, FLOAT bottom)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).abi_SetInsetsWithValues(left, top, right, bottom));
	}
	final void SetInsetScales(FLOAT scale)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).abi_SetInsetScales(scale));
	}
	final void SetInsetScalesWithValues(FLOAT left, FLOAT top, FLOAT right, FLOAT bottom)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionNineGridBrush).abi_SetInsetScalesWithValues(left, top, right, bottom));
	}
}

interface CompositionObject : Windows.UI.Composition.ICompositionObject, Windows.Foundation.IClosable, Windows.UI.Composition.ICompositionObject2
{
extern(Windows):
	final Windows.UI.Composition.Compositor Compositor()
	{
		Windows.UI.Composition.Compositor _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject).get_Compositor(&_ret));
		return _ret;
	}
	final Windows.UI.Core.CoreDispatcher Dispatcher()
	{
		Windows.UI.Core.CoreDispatcher _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject).get_Dispatcher(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionPropertySet Properties()
	{
		Windows.UI.Composition.CompositionPropertySet _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject).get_Properties(&_ret));
		return _ret;
	}
	final void StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject).abi_StartAnimation(propertyName, animation));
	}
	final void StopAnimation(HSTRING propertyName)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject).abi_StopAnimation(propertyName));
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final HSTRING Comment()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject2).get_Comment(&_ret));
		return _ret;
	}
	final void Comment(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject2).set_Comment(value));
	}
	final Windows.UI.Composition.ImplicitAnimationCollection ImplicitAnimations()
	{
		Windows.UI.Composition.ImplicitAnimationCollection _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject2).get_ImplicitAnimations(&_ret));
		return _ret;
	}
	final void ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject2).set_ImplicitAnimations(value));
	}
	final void StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject2).abi_StartAnimationGroup(value));
	}
	final void StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionObject2).abi_StopAnimationGroup(value));
	}
}

interface CompositionPropertySet : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionPropertySet, Windows.UI.Composition.ICompositionPropertySet2
{
extern(Windows):
	final void InsertColor(HSTRING propertyName, Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_InsertColor(propertyName, value));
	}
	final void InsertMatrix3x2(HSTRING propertyName, Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_InsertMatrix3x2(propertyName, value));
	}
	final void InsertMatrix4x4(HSTRING propertyName, Windows.Foundation.Numerics.Matrix4x4 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_InsertMatrix4x4(propertyName, value));
	}
	final void InsertQuaternion(HSTRING propertyName, Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_InsertQuaternion(propertyName, value));
	}
	final void InsertScalar(HSTRING propertyName, FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_InsertScalar(propertyName, value));
	}
	final void InsertVector2(HSTRING propertyName, Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_InsertVector2(propertyName, value));
	}
	final void InsertVector3(HSTRING propertyName, Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_InsertVector3(propertyName, value));
	}
	final void InsertVector4(HSTRING propertyName, Windows.Foundation.Numerics.Vector4 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_InsertVector4(propertyName, value));
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetColor(HSTRING propertyName, Windows.UI.Color* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_TryGetColor(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetMatrix3x2(HSTRING propertyName, Windows.Foundation.Numerics.Matrix3x2* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_TryGetMatrix3x2(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetMatrix4x4(HSTRING propertyName, Windows.Foundation.Numerics.Matrix4x4* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_TryGetMatrix4x4(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetQuaternion(HSTRING propertyName, Windows.Foundation.Numerics.Quaternion* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_TryGetQuaternion(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetScalar(HSTRING propertyName, FLOAT* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_TryGetScalar(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetVector2(HSTRING propertyName, Windows.Foundation.Numerics.Vector2* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_TryGetVector2(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetVector3(HSTRING propertyName, Windows.Foundation.Numerics.Vector3* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_TryGetVector3(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetVector4(HSTRING propertyName, Windows.Foundation.Numerics.Vector4* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet).abi_TryGetVector4(propertyName, out_value, &_ret));
		return _ret;
	}
	final void InsertBoolean(HSTRING propertyName, bool value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet2).abi_InsertBoolean(propertyName, value));
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetBoolean(HSTRING propertyName, bool* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionPropertySet2).abi_TryGetBoolean(propertyName, out_value, &_ret));
		return _ret;
	}
}

interface CompositionScopedBatch : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionScopedBatch
{
extern(Windows):
	final bool IsActive()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionScopedBatch).get_IsActive(&_ret));
		return _ret;
	}
	final bool IsEnded()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionScopedBatch).get_IsEnded(&_ret));
		return _ret;
	}
	final void End()
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionScopedBatch).abi_End());
	}
	final void Resume()
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionScopedBatch).abi_Resume());
	}
	final void Suspend()
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionScopedBatch).abi_Suspend());
	}
	final EventRegistrationToken OnCompleted(void delegate(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(add_Completed(event!(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs), IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCompleted(EventRegistrationToken token)
	{
		Debug.OK(remove_Completed(token));
	}
}

interface CompositionShadow : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionShadow
{
}

interface CompositionSurfaceBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionSurfaceBrush, Windows.UI.Composition.ICompositionSurfaceBrush2
{
extern(Windows):
	final Windows.UI.Composition.CompositionBitmapInterpolationMode BitmapInterpolationMode()
	{
		Windows.UI.Composition.CompositionBitmapInterpolationMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush).get_BitmapInterpolationMode(&_ret));
		return _ret;
	}
	final void BitmapInterpolationMode(Windows.UI.Composition.CompositionBitmapInterpolationMode value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush).set_BitmapInterpolationMode(value));
	}
	final FLOAT HorizontalAlignmentRatio()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush).get_HorizontalAlignmentRatio(&_ret));
		return _ret;
	}
	final void HorizontalAlignmentRatio(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush).set_HorizontalAlignmentRatio(value));
	}
	final Windows.UI.Composition.CompositionStretch Stretch()
	{
		Windows.UI.Composition.CompositionStretch _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Composition.CompositionStretch value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush).set_Stretch(value));
	}
	final Windows.UI.Composition.ICompositionSurface Surface()
	{
		Windows.UI.Composition.ICompositionSurface _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush).get_Surface(&_ret));
		return _ret;
	}
	final void Surface(Windows.UI.Composition.ICompositionSurface value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush).set_Surface(value));
	}
	final FLOAT VerticalAlignmentRatio()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush).get_VerticalAlignmentRatio(&_ret));
		return _ret;
	}
	final void VerticalAlignmentRatio(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush).set_VerticalAlignmentRatio(value));
	}
	final Windows.Foundation.Numerics.Vector2 AnchorPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).get_AnchorPoint(&_ret));
		return _ret;
	}
	final void AnchorPoint(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).set_AnchorPoint(value));
	}
	final Windows.Foundation.Numerics.Vector2 CenterPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).get_CenterPoint(&_ret));
		return _ret;
	}
	final void CenterPoint(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).set_CenterPoint(value));
	}
	final Windows.Foundation.Numerics.Vector2 Offset()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).set_Offset(value));
	}
	final FLOAT RotationAngle()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).get_RotationAngle(&_ret));
		return _ret;
	}
	final void RotationAngle(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).set_RotationAngle(value));
	}
	final FLOAT RotationAngleInDegrees()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).get_RotationAngleInDegrees(&_ret));
		return _ret;
	}
	final void RotationAngleInDegrees(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).set_RotationAngleInDegrees(value));
	}
	final Windows.Foundation.Numerics.Vector2 Scale()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).get_Scale(&_ret));
		return _ret;
	}
	final void Scale(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).set_Scale(value));
	}
	final Windows.Foundation.Numerics.Matrix3x2 TransformMatrix()
	{
		Windows.Foundation.Numerics.Matrix3x2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).get_TransformMatrix(&_ret));
		return _ret;
	}
	final void TransformMatrix(Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionSurfaceBrush2).set_TransformMatrix(value));
	}
}

interface CompositionTarget : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionTarget
{
extern(Windows):
	final Windows.UI.Composition.Visual Root()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionTarget).get_Root(&_ret));
		return _ret;
	}
	final void Root(Windows.UI.Composition.Visual value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionTarget).set_Root(value));
	}
}

interface CompositionVirtualDrawingSurface : Windows.UI.Composition.CompositionDrawingSurface, Windows.UI.Composition.ICompositionVirtualDrawingSurface
{
extern(Windows):
	final void Trim(UINT32 __rectsSize, Windows.Graphics.RectInt32* rects)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ICompositionVirtualDrawingSurface).abi_Trim(__rectsSize, rects));
	}
}

interface Compositor : Windows.UI.Composition.ICompositor, Windows.Foundation.IClosable, Windows.UI.Composition.ICompositor2, Windows.UI.Composition.ICompositor3
{
extern(Windows):
	final Windows.UI.Composition.ColorKeyFrameAnimation CreateColorKeyFrameAnimation()
	{
		Windows.UI.Composition.ColorKeyFrameAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateColorKeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionColorBrush CreateColorBrush()
	{
		Windows.UI.Composition.CompositionColorBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateColorBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionColorBrush CreateColorBrushWithColor(Windows.UI.Color color)
	{
		Windows.UI.Composition.CompositionColorBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateColorBrushWithColor(color, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.ContainerVisual CreateContainerVisual()
	{
		Windows.UI.Composition.ContainerVisual _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateContainerVisual(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CubicBezierEasingFunction CreateCubicBezierEasingFunction(Windows.Foundation.Numerics.Vector2 controlPoint1, Windows.Foundation.Numerics.Vector2 controlPoint2)
	{
		Windows.UI.Composition.CubicBezierEasingFunction _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateCubicBezierEasingFunction(controlPoint1, controlPoint2, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionEffectFactory CreateEffectFactory(Windows.Graphics.Effects.IGraphicsEffect graphicsEffect)
	{
		Windows.UI.Composition.CompositionEffectFactory _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateEffectFactory(graphicsEffect, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionEffectFactory CreateEffectFactoryWithProperties(Windows.Graphics.Effects.IGraphicsEffect graphicsEffect, Windows.Foundation.Collections.IIterable!(HSTRING) animatableProperties)
	{
		Windows.UI.Composition.CompositionEffectFactory _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateEffectFactoryWithProperties(graphicsEffect, animatableProperties, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.ExpressionAnimation CreateExpressionAnimation()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateExpressionAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.ExpressionAnimation CreateExpressionAnimationWithExpression(HSTRING expression)
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateExpressionAnimationWithExpression(expression, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.InsetClip CreateInsetClip()
	{
		Windows.UI.Composition.InsetClip _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateInsetClip(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.InsetClip CreateInsetClipWithInsets(FLOAT leftInset, FLOAT topInset, FLOAT rightInset, FLOAT bottomInset)
	{
		Windows.UI.Composition.InsetClip _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateInsetClipWithInsets(leftInset, topInset, rightInset, bottomInset, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.LinearEasingFunction CreateLinearEasingFunction()
	{
		Windows.UI.Composition.LinearEasingFunction _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateLinearEasingFunction(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionPropertySet CreatePropertySet()
	{
		Windows.UI.Composition.CompositionPropertySet _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreatePropertySet(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.QuaternionKeyFrameAnimation CreateQuaternionKeyFrameAnimation()
	{
		Windows.UI.Composition.QuaternionKeyFrameAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateQuaternionKeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.ScalarKeyFrameAnimation CreateScalarKeyFrameAnimation()
	{
		Windows.UI.Composition.ScalarKeyFrameAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateScalarKeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionScopedBatch CreateScopedBatch(Windows.UI.Composition.CompositionBatchTypes batchType)
	{
		Windows.UI.Composition.CompositionScopedBatch _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateScopedBatch(batchType, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.SpriteVisual CreateSpriteVisual()
	{
		Windows.UI.Composition.SpriteVisual _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateSpriteVisual(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionSurfaceBrush CreateSurfaceBrush()
	{
		Windows.UI.Composition.CompositionSurfaceBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateSurfaceBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionSurfaceBrush CreateSurfaceBrushWithSurface(Windows.UI.Composition.ICompositionSurface surface)
	{
		Windows.UI.Composition.CompositionSurfaceBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateSurfaceBrushWithSurface(surface, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionTarget CreateTargetForCurrentView()
	{
		Windows.UI.Composition.CompositionTarget _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateTargetForCurrentView(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.Vector2KeyFrameAnimation CreateVector2KeyFrameAnimation()
	{
		Windows.UI.Composition.Vector2KeyFrameAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateVector2KeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.Vector3KeyFrameAnimation CreateVector3KeyFrameAnimation()
	{
		Windows.UI.Composition.Vector3KeyFrameAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateVector3KeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.Vector4KeyFrameAnimation CreateVector4KeyFrameAnimation()
	{
		Windows.UI.Composition.Vector4KeyFrameAnimation _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_CreateVector4KeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionCommitBatch GetCommitBatch(Windows.UI.Composition.CompositionBatchTypes batchType)
	{
		Windows.UI.Composition.CompositionCommitBatch _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor).abi_GetCommitBatch(batchType, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK(this.as!(Windows.Foundation.IClosable).abi_Close());
	}
	final Windows.UI.Composition.AmbientLight CreateAmbientLight()
	{
		Windows.UI.Composition.AmbientLight _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateAmbientLight(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionAnimationGroup CreateAnimationGroup()
	{
		Windows.UI.Composition.CompositionAnimationGroup _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateAnimationGroup(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionBackdropBrush CreateBackdropBrush()
	{
		Windows.UI.Composition.CompositionBackdropBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateBackdropBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.DistantLight CreateDistantLight()
	{
		Windows.UI.Composition.DistantLight _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateDistantLight(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.DropShadow CreateDropShadow()
	{
		Windows.UI.Composition.DropShadow _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateDropShadow(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.ImplicitAnimationCollection CreateImplicitAnimationCollection()
	{
		Windows.UI.Composition.ImplicitAnimationCollection _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateImplicitAnimationCollection(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.LayerVisual CreateLayerVisual()
	{
		Windows.UI.Composition.LayerVisual _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateLayerVisual(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionMaskBrush CreateMaskBrush()
	{
		Windows.UI.Composition.CompositionMaskBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateMaskBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionNineGridBrush CreateNineGridBrush()
	{
		Windows.UI.Composition.CompositionNineGridBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateNineGridBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.PointLight CreatePointLight()
	{
		Windows.UI.Composition.PointLight _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreatePointLight(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.SpotLight CreateSpotLight()
	{
		Windows.UI.Composition.SpotLight _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateSpotLight(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.StepEasingFunction CreateStepEasingFunction()
	{
		Windows.UI.Composition.StepEasingFunction _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateStepEasingFunction(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.StepEasingFunction CreateStepEasingFunctionWithStepCount(INT32 stepCount)
	{
		Windows.UI.Composition.StepEasingFunction _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor2).abi_CreateStepEasingFunctionWithStepCount(stepCount, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionBackdropBrush CreateHostBackdropBrush()
	{
		Windows.UI.Composition.CompositionBackdropBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICompositor3).abi_CreateHostBackdropBrush(&_ret));
		return _ret;
	}
}

interface ContainerVisual : Windows.UI.Composition.Visual, Windows.UI.Composition.IContainerVisual
{
extern(Windows):
	final Windows.UI.Composition.VisualCollection Children()
	{
		Windows.UI.Composition.VisualCollection _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IContainerVisual).get_Children(&_ret));
		return _ret;
	}
}

interface CubicBezierEasingFunction : Windows.UI.Composition.CompositionEasingFunction, Windows.UI.Composition.ICubicBezierEasingFunction
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector2 ControlPoint1()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICubicBezierEasingFunction).get_ControlPoint1(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector2 ControlPoint2()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ICubicBezierEasingFunction).get_ControlPoint2(&_ret));
		return _ret;
	}
}

interface DistantLight : Windows.UI.Composition.CompositionLight, Windows.UI.Composition.IDistantLight
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IDistantLight).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IDistantLight).set_Color(value));
	}
	final Windows.UI.Composition.Visual CoordinateSpace()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IDistantLight).get_CoordinateSpace(&_ret));
		return _ret;
	}
	final void CoordinateSpace(Windows.UI.Composition.Visual value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IDistantLight).set_CoordinateSpace(value));
	}
	final Windows.Foundation.Numerics.Vector3 Direction()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IDistantLight).get_Direction(&_ret));
		return _ret;
	}
	final void Direction(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IDistantLight).set_Direction(value));
	}
}

interface DropShadow : Windows.UI.Composition.CompositionShadow, Windows.UI.Composition.IDropShadow
{
extern(Windows):
	final FLOAT BlurRadius()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IDropShadow).get_BlurRadius(&_ret));
		return _ret;
	}
	final void BlurRadius(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IDropShadow).set_BlurRadius(value));
	}
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IDropShadow).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IDropShadow).set_Color(value));
	}
	final Windows.UI.Composition.CompositionBrush Mask()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IDropShadow).get_Mask(&_ret));
		return _ret;
	}
	final void Mask(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IDropShadow).set_Mask(value));
	}
	final Windows.Foundation.Numerics.Vector3 Offset()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IDropShadow).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IDropShadow).set_Offset(value));
	}
	final FLOAT Opacity()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IDropShadow).get_Opacity(&_ret));
		return _ret;
	}
	final void Opacity(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IDropShadow).set_Opacity(value));
	}
}

interface ExpressionAnimation : Windows.UI.Composition.CompositionAnimation, Windows.UI.Composition.IExpressionAnimation
{
extern(Windows):
	final HSTRING Expression()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IExpressionAnimation).get_Expression(&_ret));
		return _ret;
	}
	final void Expression(HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IExpressionAnimation).set_Expression(value));
	}
}

interface ImplicitAnimationCollection : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.IImplicitAnimationCollection, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)), Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)
{
extern(Windows):
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase))* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase))).abi_First(out_first));
	}
	final  Windows.UI.Composition.ICompositionAnimationBase Lookup(HSTRING key)
	{
		 Windows.UI.Composition.ICompositionAnimationBase _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 Windows.UI.Composition.ICompositionAnimationBase) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  Windows.UI.Composition.ICompositionAnimationBase) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	Windows.UI.Composition.ICompositionAnimationBase value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)).abi_Clear());
	}
}

interface InsetClip : Windows.UI.Composition.CompositionClip, Windows.UI.Composition.IInsetClip
{
extern(Windows):
	final FLOAT BottomInset()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IInsetClip).get_BottomInset(&_ret));
		return _ret;
	}
	final void BottomInset(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IInsetClip).set_BottomInset(value));
	}
	final FLOAT LeftInset()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IInsetClip).get_LeftInset(&_ret));
		return _ret;
	}
	final void LeftInset(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IInsetClip).set_LeftInset(value));
	}
	final FLOAT RightInset()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IInsetClip).get_RightInset(&_ret));
		return _ret;
	}
	final void RightInset(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IInsetClip).set_RightInset(value));
	}
	final FLOAT TopInset()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IInsetClip).get_TopInset(&_ret));
		return _ret;
	}
	final void TopInset(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IInsetClip).set_TopInset(value));
	}
}

interface KeyFrameAnimation : Windows.UI.Composition.CompositionAnimation, Windows.UI.Composition.IKeyFrameAnimation, Windows.UI.Composition.IKeyFrameAnimation2, Windows.UI.Composition.IKeyFrameAnimation3
{
extern(Windows):
	final Windows.Foundation.TimeSpan DelayTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).get_DelayTime(&_ret));
		return _ret;
	}
	final void DelayTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).set_DelayTime(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).get_Duration(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).set_Duration(value));
	}
	final Windows.UI.Composition.AnimationIterationBehavior IterationBehavior()
	{
		Windows.UI.Composition.AnimationIterationBehavior _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).get_IterationBehavior(&_ret));
		return _ret;
	}
	final void IterationBehavior(Windows.UI.Composition.AnimationIterationBehavior value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).set_IterationBehavior(value));
	}
	final INT32 IterationCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).get_IterationCount(&_ret));
		return _ret;
	}
	final void IterationCount(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).set_IterationCount(value));
	}
	final INT32 KeyFrameCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).get_KeyFrameCount(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.AnimationStopBehavior StopBehavior()
	{
		Windows.UI.Composition.AnimationStopBehavior _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).get_StopBehavior(&_ret));
		return _ret;
	}
	final void StopBehavior(Windows.UI.Composition.AnimationStopBehavior value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).set_StopBehavior(value));
	}
	final void InsertExpressionKeyFrame(FLOAT normalizedProgressKey, HSTRING value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).abi_InsertExpressionKeyFrame(normalizedProgressKey, value));
	}
	final void InsertExpressionKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, HSTRING value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation).abi_InsertExpressionKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction));
	}
	final Windows.UI.Composition.AnimationDirection Direction()
	{
		Windows.UI.Composition.AnimationDirection _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation2).get_Direction(&_ret));
		return _ret;
	}
	final void Direction(Windows.UI.Composition.AnimationDirection value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation2).set_Direction(value));
	}
	final Windows.UI.Composition.AnimationDelayBehavior DelayBehavior()
	{
		Windows.UI.Composition.AnimationDelayBehavior _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation3).get_DelayBehavior(&_ret));
		return _ret;
	}
	final void DelayBehavior(Windows.UI.Composition.AnimationDelayBehavior value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IKeyFrameAnimation3).set_DelayBehavior(value));
	}
}

interface LayerVisual : Windows.UI.Composition.ContainerVisual, Windows.UI.Composition.ILayerVisual
{
extern(Windows):
	final Windows.UI.Composition.CompositionEffectBrush Effect()
	{
		Windows.UI.Composition.CompositionEffectBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ILayerVisual).get_Effect(&_ret));
		return _ret;
	}
	final void Effect(Windows.UI.Composition.CompositionEffectBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ILayerVisual).set_Effect(value));
	}
}

interface LinearEasingFunction : Windows.UI.Composition.CompositionEasingFunction, Windows.UI.Composition.ILinearEasingFunction
{
}

interface PointLight : Windows.UI.Composition.CompositionLight, Windows.UI.Composition.IPointLight
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).set_Color(value));
	}
	final FLOAT ConstantAttenuation()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).get_ConstantAttenuation(&_ret));
		return _ret;
	}
	final void ConstantAttenuation(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).set_ConstantAttenuation(value));
	}
	final Windows.UI.Composition.Visual CoordinateSpace()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).get_CoordinateSpace(&_ret));
		return _ret;
	}
	final void CoordinateSpace(Windows.UI.Composition.Visual value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).set_CoordinateSpace(value));
	}
	final FLOAT LinearAttenuation()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).get_LinearAttenuation(&_ret));
		return _ret;
	}
	final void LinearAttenuation(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).set_LinearAttenuation(value));
	}
	final Windows.Foundation.Numerics.Vector3 Offset()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).set_Offset(value));
	}
	final FLOAT QuadraticAttenuation()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).get_QuadraticAttenuation(&_ret));
		return _ret;
	}
	final void QuadraticAttenuation(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IPointLight).set_QuadraticAttenuation(value));
	}
}

interface QuaternionKeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IQuaternionKeyFrameAnimation
{
extern(Windows):
	final void InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IQuaternionKeyFrameAnimation).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Quaternion value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IQuaternionKeyFrameAnimation).abi_InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction));
	}
}

interface RenderingDeviceReplacedEventArgs : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.IRenderingDeviceReplacedEventArgs
{
extern(Windows):
	final Windows.UI.Composition.CompositionGraphicsDevice GraphicsDevice()
	{
		Windows.UI.Composition.CompositionGraphicsDevice _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IRenderingDeviceReplacedEventArgs).get_GraphicsDevice(&_ret));
		return _ret;
	}
}

interface ScalarKeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IScalarKeyFrameAnimation
{
extern(Windows):
	final void InsertKeyFrame(FLOAT normalizedProgressKey, FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IScalarKeyFrameAnimation).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, FLOAT value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IScalarKeyFrameAnimation).abi_InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction));
	}
}

interface SpotLight : Windows.UI.Composition.CompositionLight, Windows.UI.Composition.ISpotLight
{
extern(Windows):
	final FLOAT ConstantAttenuation()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_ConstantAttenuation(&_ret));
		return _ret;
	}
	final void ConstantAttenuation(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_ConstantAttenuation(value));
	}
	final Windows.UI.Composition.Visual CoordinateSpace()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_CoordinateSpace(&_ret));
		return _ret;
	}
	final void CoordinateSpace(Windows.UI.Composition.Visual value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_CoordinateSpace(value));
	}
	final Windows.Foundation.Numerics.Vector3 Direction()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_Direction(&_ret));
		return _ret;
	}
	final void Direction(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_Direction(value));
	}
	final FLOAT InnerConeAngle()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_InnerConeAngle(&_ret));
		return _ret;
	}
	final void InnerConeAngle(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_InnerConeAngle(value));
	}
	final FLOAT InnerConeAngleInDegrees()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_InnerConeAngleInDegrees(&_ret));
		return _ret;
	}
	final void InnerConeAngleInDegrees(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_InnerConeAngleInDegrees(value));
	}
	final Windows.UI.Color InnerConeColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_InnerConeColor(&_ret));
		return _ret;
	}
	final void InnerConeColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_InnerConeColor(value));
	}
	final FLOAT LinearAttenuation()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_LinearAttenuation(&_ret));
		return _ret;
	}
	final void LinearAttenuation(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_LinearAttenuation(value));
	}
	final Windows.Foundation.Numerics.Vector3 Offset()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_Offset(value));
	}
	final FLOAT OuterConeAngle()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_OuterConeAngle(&_ret));
		return _ret;
	}
	final void OuterConeAngle(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_OuterConeAngle(value));
	}
	final FLOAT OuterConeAngleInDegrees()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_OuterConeAngleInDegrees(&_ret));
		return _ret;
	}
	final void OuterConeAngleInDegrees(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_OuterConeAngleInDegrees(value));
	}
	final Windows.UI.Color OuterConeColor()
	{
		Windows.UI.Color _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_OuterConeColor(&_ret));
		return _ret;
	}
	final void OuterConeColor(Windows.UI.Color value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_OuterConeColor(value));
	}
	final FLOAT QuadraticAttenuation()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).get_QuadraticAttenuation(&_ret));
		return _ret;
	}
	final void QuadraticAttenuation(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpotLight).set_QuadraticAttenuation(value));
	}
}

interface SpriteVisual : Windows.UI.Composition.ContainerVisual, Windows.UI.Composition.ISpriteVisual, Windows.UI.Composition.ISpriteVisual2
{
extern(Windows):
	final Windows.UI.Composition.CompositionBrush Brush()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpriteVisual).get_Brush(&_ret));
		return _ret;
	}
	final void Brush(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpriteVisual).set_Brush(value));
	}
	final Windows.UI.Composition.CompositionShadow Shadow()
	{
		Windows.UI.Composition.CompositionShadow _ret;
		Debug.OK(this.as!(Windows.UI.Composition.ISpriteVisual2).get_Shadow(&_ret));
		return _ret;
	}
	final void Shadow(Windows.UI.Composition.CompositionShadow value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.ISpriteVisual2).set_Shadow(value));
	}
}

interface StepEasingFunction : Windows.UI.Composition.CompositionEasingFunction, Windows.UI.Composition.IStepEasingFunction
{
extern(Windows):
	final INT32 FinalStep()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IStepEasingFunction).get_FinalStep(&_ret));
		return _ret;
	}
	final void FinalStep(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IStepEasingFunction).set_FinalStep(value));
	}
	final INT32 InitialStep()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IStepEasingFunction).get_InitialStep(&_ret));
		return _ret;
	}
	final void InitialStep(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IStepEasingFunction).set_InitialStep(value));
	}
	final bool IsFinalStepSingleFrame()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IStepEasingFunction).get_IsFinalStepSingleFrame(&_ret));
		return _ret;
	}
	final void IsFinalStepSingleFrame(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IStepEasingFunction).set_IsFinalStepSingleFrame(value));
	}
	final bool IsInitialStepSingleFrame()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IStepEasingFunction).get_IsInitialStepSingleFrame(&_ret));
		return _ret;
	}
	final void IsInitialStepSingleFrame(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IStepEasingFunction).set_IsInitialStepSingleFrame(value));
	}
	final INT32 StepCount()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IStepEasingFunction).get_StepCount(&_ret));
		return _ret;
	}
	final void StepCount(INT32 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IStepEasingFunction).set_StepCount(value));
	}
}

interface Vector2KeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IVector2KeyFrameAnimation
{
extern(Windows):
	final void InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVector2KeyFrameAnimation).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector2 value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVector2KeyFrameAnimation).abi_InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction));
	}
}

interface Vector3KeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IVector3KeyFrameAnimation
{
extern(Windows):
	final void InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVector3KeyFrameAnimation).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector3 value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVector3KeyFrameAnimation).abi_InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction));
	}
}

interface Vector4KeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IVector4KeyFrameAnimation
{
extern(Windows):
	final void InsertKeyFrame(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector4 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVector4KeyFrameAnimation).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrameWithEasingFunction(FLOAT normalizedProgressKey, Windows.Foundation.Numerics.Vector4 value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVector4KeyFrameAnimation).abi_InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction));
	}
}

interface Visual : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.IVisual, Windows.UI.Composition.IVisual2
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector2 AnchorPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_AnchorPoint(&_ret));
		return _ret;
	}
	final void AnchorPoint(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_AnchorPoint(value));
	}
	final Windows.UI.Composition.CompositionBackfaceVisibility BackfaceVisibility()
	{
		Windows.UI.Composition.CompositionBackfaceVisibility _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_BackfaceVisibility(&_ret));
		return _ret;
	}
	final void BackfaceVisibility(Windows.UI.Composition.CompositionBackfaceVisibility value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_BackfaceVisibility(value));
	}
	final Windows.UI.Composition.CompositionBorderMode BorderMode()
	{
		Windows.UI.Composition.CompositionBorderMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_BorderMode(&_ret));
		return _ret;
	}
	final void BorderMode(Windows.UI.Composition.CompositionBorderMode value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_BorderMode(value));
	}
	final Windows.Foundation.Numerics.Vector3 CenterPoint()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_CenterPoint(&_ret));
		return _ret;
	}
	final void CenterPoint(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_CenterPoint(value));
	}
	final Windows.UI.Composition.CompositionClip Clip()
	{
		Windows.UI.Composition.CompositionClip _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_Clip(&_ret));
		return _ret;
	}
	final void Clip(Windows.UI.Composition.CompositionClip value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_Clip(value));
	}
	final Windows.UI.Composition.CompositionCompositeMode CompositeMode()
	{
		Windows.UI.Composition.CompositionCompositeMode _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_CompositeMode(&_ret));
		return _ret;
	}
	final void CompositeMode(Windows.UI.Composition.CompositionCompositeMode value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_CompositeMode(value));
	}
	final bool IsVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_IsVisible(&_ret));
		return _ret;
	}
	final void IsVisible(bool value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_IsVisible(value));
	}
	final Windows.Foundation.Numerics.Vector3 Offset()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_Offset(value));
	}
	final FLOAT Opacity()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_Opacity(&_ret));
		return _ret;
	}
	final void Opacity(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_Opacity(value));
	}
	final Windows.Foundation.Numerics.Quaternion Orientation()
	{
		Windows.Foundation.Numerics.Quaternion _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_Orientation(value));
	}
	final Windows.UI.Composition.ContainerVisual Parent()
	{
		Windows.UI.Composition.ContainerVisual _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_Parent(&_ret));
		return _ret;
	}
	final FLOAT RotationAngle()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_RotationAngle(&_ret));
		return _ret;
	}
	final void RotationAngle(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_RotationAngle(value));
	}
	final FLOAT RotationAngleInDegrees()
	{
		FLOAT _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_RotationAngleInDegrees(&_ret));
		return _ret;
	}
	final void RotationAngleInDegrees(FLOAT value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_RotationAngleInDegrees(value));
	}
	final Windows.Foundation.Numerics.Vector3 RotationAxis()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_RotationAxis(&_ret));
		return _ret;
	}
	final void RotationAxis(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_RotationAxis(value));
	}
	final Windows.Foundation.Numerics.Vector3 Scale()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_Scale(&_ret));
		return _ret;
	}
	final void Scale(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_Scale(value));
	}
	final Windows.Foundation.Numerics.Vector2 Size()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_Size(&_ret));
		return _ret;
	}
	final void Size(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_Size(value));
	}
	final Windows.Foundation.Numerics.Matrix4x4 TransformMatrix()
	{
		Windows.Foundation.Numerics.Matrix4x4 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).get_TransformMatrix(&_ret));
		return _ret;
	}
	final void TransformMatrix(Windows.Foundation.Numerics.Matrix4x4 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual).set_TransformMatrix(value));
	}
	final Windows.UI.Composition.Visual ParentForTransform()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual2).get_ParentForTransform(&_ret));
		return _ret;
	}
	final void ParentForTransform(Windows.UI.Composition.Visual value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual2).set_ParentForTransform(value));
	}
	final Windows.Foundation.Numerics.Vector3 RelativeOffsetAdjustment()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual2).get_RelativeOffsetAdjustment(&_ret));
		return _ret;
	}
	final void RelativeOffsetAdjustment(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual2).set_RelativeOffsetAdjustment(value));
	}
	final Windows.Foundation.Numerics.Vector2 RelativeSizeAdjustment()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisual2).get_RelativeSizeAdjustment(&_ret));
		return _ret;
	}
	final void RelativeSizeAdjustment(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisual2).set_RelativeSizeAdjustment(value));
	}
}

interface VisualCollection : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.IVisualCollection, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Visual)
{
extern(Windows):
	final INT32 Count()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisualCollection).get_Count(&_ret));
		return _ret;
	}
	final void InsertAbove(Windows.UI.Composition.Visual newChild, Windows.UI.Composition.Visual sibling)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisualCollection).abi_InsertAbove(newChild, sibling));
	}
	final void InsertAtBottom(Windows.UI.Composition.Visual newChild)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisualCollection).abi_InsertAtBottom(newChild));
	}
	final void InsertAtTop(Windows.UI.Composition.Visual newChild)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisualCollection).abi_InsertAtTop(newChild));
	}
	final void InsertBelow(Windows.UI.Composition.Visual newChild, Windows.UI.Composition.Visual sibling)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisualCollection).abi_InsertBelow(newChild, sibling));
	}
	final void Remove(Windows.UI.Composition.Visual child)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisualCollection).abi_Remove(child));
	}
	final void RemoveAll()
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisualCollection).abi_RemoveAll());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Composition.Visual)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Visual)).abi_First(out_first));
	}
}

interface VisualUnorderedCollection : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.IVisualUnorderedCollection, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Visual)
{
extern(Windows):
	final INT32 Count()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.UI.Composition.IVisualUnorderedCollection).get_Count(&_ret));
		return _ret;
	}
	final void Add(Windows.UI.Composition.Visual newVisual)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisualUnorderedCollection).abi_Add(newVisual));
	}
	final void Remove(Windows.UI.Composition.Visual visual)
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisualUnorderedCollection).abi_Remove(visual));
	}
	final void RemoveAll()
	{
		Debug.OK(this.as!(Windows.UI.Composition.IVisualUnorderedCollection).abi_RemoveAll());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Composition.Visual)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Visual)).abi_First(out_first));
	}
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