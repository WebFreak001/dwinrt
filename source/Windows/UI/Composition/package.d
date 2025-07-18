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
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, Windows.UI.Color value);
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, Windows.UI.Color value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
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
	HRESULT abi_SetScalarParameter(HSTRING key, float value);
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
interface ICompositionAnimationGroup_Base : IInspectable
{
extern(Windows):
	HRESULT get_Count(INT32* return_value);
	HRESULT abi_Add(Windows.UI.Composition.CompositionAnimation value);
	HRESULT abi_Remove(Windows.UI.Composition.CompositionAnimation value);
	HRESULT abi_RemoveAll();
}
@uuid("5e7cc90c-cd14-4e07-8a55-c72527aabdac")
@WinrtFactory("Windows.UI.Composition.CompositionAnimationGroup")
interface ICompositionAnimationGroup : ICompositionAnimationGroup_Base, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.CompositionAnimation) {}

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
	HRESULT get_RotationAngle(float* return_value);
	HRESULT set_RotationAngle(float value);
	HRESULT get_RotationAngleInDegrees(float* return_value);
	HRESULT set_RotationAngleInDegrees(float value);
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
	HRESULT abi_Scroll(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 scrollRect);
	HRESULT abi_ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect);
	HRESULT abi_ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect, Windows.Graphics.RectInt32 scrollRect);
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
interface ICompositionEffectSourceParameter_Base : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
}
@uuid("858ab13a-3292-4e4e-b3bb-2b6c6544a6ee")
@WinrtFactory("Windows.UI.Composition.CompositionEffectSourceParameter")
interface ICompositionEffectSourceParameter : ICompositionEffectSourceParameter_Base, Windows.Graphics.Effects.IGraphicsEffectSource {}

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
	HRESULT get_BottomInset(float* return_value);
	HRESULT set_BottomInset(float value);
	HRESULT get_BottomInsetScale(float* return_value);
	HRESULT set_BottomInsetScale(float value);
	HRESULT get_IsCenterHollow(bool* return_value);
	HRESULT set_IsCenterHollow(bool value);
	HRESULT get_LeftInset(float* return_value);
	HRESULT set_LeftInset(float value);
	HRESULT get_LeftInsetScale(float* return_value);
	HRESULT set_LeftInsetScale(float value);
	HRESULT get_RightInset(float* return_value);
	HRESULT set_RightInset(float value);
	HRESULT get_RightInsetScale(float* return_value);
	HRESULT set_RightInsetScale(float value);
	HRESULT get_Source(Windows.UI.Composition.CompositionBrush* return_value);
	HRESULT set_Source(Windows.UI.Composition.CompositionBrush value);
	HRESULT get_TopInset(float* return_value);
	HRESULT set_TopInset(float value);
	HRESULT get_TopInsetScale(float* return_value);
	HRESULT set_TopInsetScale(float value);
	HRESULT abi_SetInsets(float inset);
	HRESULT abi_SetInsets(float left, float top, float right, float bottom);
	HRESULT abi_SetInsetScales(float scale);
	HRESULT abi_SetInsetScales(float left, float top, float right, float bottom);
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
	HRESULT abi_InsertScalar(HSTRING propertyName, float value);
	HRESULT abi_InsertVector2(HSTRING propertyName, Windows.Foundation.Numerics.Vector2 value);
	HRESULT abi_InsertVector3(HSTRING propertyName, Windows.Foundation.Numerics.Vector3 value);
	HRESULT abi_InsertVector4(HSTRING propertyName, Windows.Foundation.Numerics.Vector4 value);
	HRESULT abi_TryGetColor(HSTRING propertyName, Windows.UI.Color* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetMatrix3x2(HSTRING propertyName, Windows.Foundation.Numerics.Matrix3x2* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetMatrix4x4(HSTRING propertyName, Windows.Foundation.Numerics.Matrix4x4* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetQuaternion(HSTRING propertyName, Windows.Foundation.Numerics.Quaternion* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
	HRESULT abi_TryGetScalar(HSTRING propertyName, float* out_value, Windows.UI.Composition.CompositionGetValueStatus* return_result);
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
	HRESULT get_HorizontalAlignmentRatio(float* return_value);
	HRESULT set_HorizontalAlignmentRatio(float value);
	HRESULT get_Stretch(Windows.UI.Composition.CompositionStretch* return_value);
	HRESULT set_Stretch(Windows.UI.Composition.CompositionStretch value);
	HRESULT get_Surface(Windows.UI.Composition.ICompositionSurface* return_value);
	HRESULT set_Surface(Windows.UI.Composition.ICompositionSurface value);
	HRESULT get_VerticalAlignmentRatio(float* return_value);
	HRESULT set_VerticalAlignmentRatio(float value);
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
	HRESULT get_RotationAngle(float* return_value);
	HRESULT set_RotationAngle(float value);
	HRESULT get_RotationAngleInDegrees(float* return_value);
	HRESULT set_RotationAngleInDegrees(float value);
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
	HRESULT abi_CreateColorBrush(Windows.UI.Color color, Windows.UI.Composition.CompositionColorBrush* return_result);
	HRESULT abi_CreateContainerVisual(Windows.UI.Composition.ContainerVisual* return_result);
	HRESULT abi_CreateCubicBezierEasingFunction(Windows.Foundation.Numerics.Vector2 controlPoint1, Windows.Foundation.Numerics.Vector2 controlPoint2, Windows.UI.Composition.CubicBezierEasingFunction* return_result);
	HRESULT abi_CreateEffectFactory(Windows.Graphics.Effects.IGraphicsEffect graphicsEffect, Windows.UI.Composition.CompositionEffectFactory* return_result);
	HRESULT abi_CreateEffectFactory(Windows.Graphics.Effects.IGraphicsEffect graphicsEffect, Windows.Foundation.Collections.IIterable!(HSTRING) animatableProperties, Windows.UI.Composition.CompositionEffectFactory* return_result);
	HRESULT abi_CreateExpressionAnimation(Windows.UI.Composition.ExpressionAnimation* return_result);
	HRESULT abi_CreateExpressionAnimation(HSTRING expression, Windows.UI.Composition.ExpressionAnimation* return_result);
	HRESULT abi_CreateInsetClip(Windows.UI.Composition.InsetClip* return_result);
	HRESULT abi_CreateInsetClip(float leftInset, float topInset, float rightInset, float bottomInset, Windows.UI.Composition.InsetClip* return_result);
	HRESULT abi_CreateLinearEasingFunction(Windows.UI.Composition.LinearEasingFunction* return_result);
	HRESULT abi_CreatePropertySet(Windows.UI.Composition.CompositionPropertySet* return_result);
	HRESULT abi_CreateQuaternionKeyFrameAnimation(Windows.UI.Composition.QuaternionKeyFrameAnimation* return_result);
	HRESULT abi_CreateScalarKeyFrameAnimation(Windows.UI.Composition.ScalarKeyFrameAnimation* return_result);
	HRESULT abi_CreateScopedBatch(Windows.UI.Composition.CompositionBatchTypes batchType, Windows.UI.Composition.CompositionScopedBatch* return_result);
	HRESULT abi_CreateSpriteVisual(Windows.UI.Composition.SpriteVisual* return_result);
	HRESULT abi_CreateSurfaceBrush(Windows.UI.Composition.CompositionSurfaceBrush* return_result);
	HRESULT abi_CreateSurfaceBrush(Windows.UI.Composition.ICompositionSurface surface, Windows.UI.Composition.CompositionSurfaceBrush* return_result);
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
	HRESULT abi_CreateStepEasingFunction(INT32 stepCount, Windows.UI.Composition.StepEasingFunction* return_result);
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
	HRESULT get_BlurRadius(float* return_value);
	HRESULT set_BlurRadius(float value);
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
	HRESULT get_Mask(Windows.UI.Composition.CompositionBrush* return_value);
	HRESULT set_Mask(Windows.UI.Composition.CompositionBrush value);
	HRESULT get_Offset(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Offset(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_Opacity(float* return_value);
	HRESULT set_Opacity(float value);
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
interface IImplicitAnimationCollection_Base : IInspectable
{
}
@uuid("0598a3ff-0a92-4c9d-a427-b25519250dbf")
@WinrtFactory("Windows.UI.Composition.ImplicitAnimationCollection")
interface IImplicitAnimationCollection : IImplicitAnimationCollection_Base, Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)) {}

@uuid("1e73e647-84c7-477a-b474-5880e0442e15")
@WinrtFactory("Windows.UI.Composition.InsetClip")
interface IInsetClip : IInspectable
{
extern(Windows):
	HRESULT get_BottomInset(float* return_value);
	HRESULT set_BottomInset(float value);
	HRESULT get_LeftInset(float* return_value);
	HRESULT set_LeftInset(float value);
	HRESULT get_RightInset(float* return_value);
	HRESULT set_RightInset(float value);
	HRESULT get_TopInset(float* return_value);
	HRESULT set_TopInset(float value);
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
	HRESULT abi_InsertExpressionKeyFrame(float normalizedProgressKey, HSTRING value);
	HRESULT abi_InsertExpressionKeyFrame(float normalizedProgressKey, HSTRING value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
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
	HRESULT get_ConstantAttenuation(float* return_value);
	HRESULT set_ConstantAttenuation(float value);
	HRESULT get_CoordinateSpace(Windows.UI.Composition.Visual* return_value);
	HRESULT set_CoordinateSpace(Windows.UI.Composition.Visual value);
	HRESULT get_LinearAttenuation(float* return_value);
	HRESULT set_LinearAttenuation(float value);
	HRESULT get_Offset(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Offset(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_QuadraticAttenuation(float* return_value);
	HRESULT set_QuadraticAttenuation(float value);
}

@uuid("404e5835-ecf6-4240-8520-671279cf36bc")
@WinrtFactory("Windows.UI.Composition.QuaternionKeyFrameAnimation")
interface IQuaternionKeyFrameAnimation : IInspectable
{
extern(Windows):
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Quaternion value);
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Quaternion value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
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
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, float value);
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, float value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44")
@WinrtFactory("Windows.UI.Composition.SpotLight")
interface ISpotLight : IInspectable
{
extern(Windows):
	HRESULT get_ConstantAttenuation(float* return_value);
	HRESULT set_ConstantAttenuation(float value);
	HRESULT get_CoordinateSpace(Windows.UI.Composition.Visual* return_value);
	HRESULT set_CoordinateSpace(Windows.UI.Composition.Visual value);
	HRESULT get_Direction(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Direction(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_InnerConeAngle(float* return_value);
	HRESULT set_InnerConeAngle(float value);
	HRESULT get_InnerConeAngleInDegrees(float* return_value);
	HRESULT set_InnerConeAngleInDegrees(float value);
	HRESULT get_InnerConeColor(Windows.UI.Color* return_value);
	HRESULT set_InnerConeColor(Windows.UI.Color value);
	HRESULT get_LinearAttenuation(float* return_value);
	HRESULT set_LinearAttenuation(float value);
	HRESULT get_Offset(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_Offset(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_OuterConeAngle(float* return_value);
	HRESULT set_OuterConeAngle(float value);
	HRESULT get_OuterConeAngleInDegrees(float* return_value);
	HRESULT set_OuterConeAngleInDegrees(float value);
	HRESULT get_OuterConeColor(Windows.UI.Color* return_value);
	HRESULT set_OuterConeColor(Windows.UI.Color value);
	HRESULT get_QuadraticAttenuation(float* return_value);
	HRESULT set_QuadraticAttenuation(float value);
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
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector2 value);
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector2 value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("c8039daa-a281-43c2-a73d-b68e3c533c40")
@WinrtFactory("Windows.UI.Composition.Vector3KeyFrameAnimation")
interface IVector3KeyFrameAnimation : IInspectable
{
extern(Windows):
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector3 value);
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector3 value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
}

@uuid("2457945b-addd-4385-9606-b6a3d5e4e1b9")
@WinrtFactory("Windows.UI.Composition.Vector4KeyFrameAnimation")
interface IVector4KeyFrameAnimation : IInspectable
{
extern(Windows):
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector4 value);
	HRESULT abi_InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector4 value, Windows.UI.Composition.CompositionEasingFunction easingFunction);
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
	HRESULT get_Opacity(float* return_value);
	HRESULT set_Opacity(float value);
	HRESULT get_Orientation(Windows.Foundation.Numerics.Quaternion* return_value);
	HRESULT set_Orientation(Windows.Foundation.Numerics.Quaternion value);
	HRESULT get_Parent(Windows.UI.Composition.ContainerVisual* return_value);
	HRESULT get_RotationAngle(float* return_value);
	HRESULT set_RotationAngle(float value);
	HRESULT get_RotationAngleInDegrees(float* return_value);
	HRESULT set_RotationAngleInDegrees(float value);
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
interface IVisualCollection_Base : IInspectable
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
@uuid("8b745505-fd3e-4a98-84a8-e949468c6bcb")
@WinrtFactory("Windows.UI.Composition.VisualCollection")
interface IVisualCollection : IVisualCollection_Base, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Visual) {}

@uuid("ad0ff93e-b502-4eb5-87b4-9a38a71d0137")
@WinrtFactory("Windows.UI.Composition.Visual")
interface IVisualFactory : IInspectable
{
}

@uuid("338faa70-54c8-40a7-8029-c9ceeb0aa250")
@WinrtFactory("Windows.UI.Composition.VisualUnorderedCollection")
interface IVisualUnorderedCollection_Base : IInspectable
{
extern(Windows):
	HRESULT get_Count(INT32* return_value);
	HRESULT abi_Add(Windows.UI.Composition.Visual newVisual);
	HRESULT abi_Remove(Windows.UI.Composition.Visual visual);
	HRESULT abi_RemoveAll();
}
@uuid("338faa70-54c8-40a7-8029-c9ceeb0aa250")
@WinrtFactory("Windows.UI.Composition.VisualUnorderedCollection")
interface IVisualUnorderedCollection : IVisualUnorderedCollection_Base, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Visual) {}

interface AmbientLight : Windows.UI.Composition.CompositionLight, Windows.UI.Composition.IAmbientLight
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.Composition.IAmbientLight)this.asInterface(uuid("a48130a1-b7c4-46f7-b9bf-daf43a44e6ee"))).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Composition.IAmbientLight)this.asInterface(uuid("a48130a1-b7c4-46f7-b9bf-daf43a44e6ee"))).set_Color(value));
	}
}

interface ColorKeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IColorKeyFrameAnimation
{
extern(Windows):
	final Windows.UI.Composition.CompositionColorSpace InterpolationColorSpace()
	{
		Windows.UI.Composition.CompositionColorSpace _ret;
		Debug.OK((cast(Windows.UI.Composition.IColorKeyFrameAnimation)this.asInterface(uuid("93adb5e9-8e05-4593-84a3-dca152781e56"))).get_InterpolationColorSpace(&_ret));
		return _ret;
	}
	final void InterpolationColorSpace(Windows.UI.Composition.CompositionColorSpace value)
	{
		Debug.OK((cast(Windows.UI.Composition.IColorKeyFrameAnimation)this.asInterface(uuid("93adb5e9-8e05-4593-84a3-dca152781e56"))).set_InterpolationColorSpace(value));
	}
	final void InsertKeyFrame(float normalizedProgressKey, Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Composition.IColorKeyFrameAnimation)this.asInterface(uuid("93adb5e9-8e05-4593-84a3-dca152781e56"))).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrame(float normalizedProgressKey, Windows.UI.Color value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK((cast(Windows.UI.Composition.IColorKeyFrameAnimation)this.asInterface(uuid("93adb5e9-8e05-4593-84a3-dca152781e56"))).abi_InsertKeyFrame(normalizedProgressKey, value, easingFunction));
	}
}

interface CompositionAnimation : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionAnimation, Windows.UI.Composition.ICompositionAnimation2, Windows.UI.Composition.ICompositionAnimationBase
{
extern(Windows):
	final void ClearAllParameters()
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_ClearAllParameters());
	}
	final void ClearParameter(HSTRING key)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_ClearParameter(key));
	}
	final void SetColorParameter(HSTRING key, Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetColorParameter(key, value));
	}
	final void SetMatrix3x2Parameter(HSTRING key, Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetMatrix3x2Parameter(key, value));
	}
	final void SetMatrix4x4Parameter(HSTRING key, Windows.Foundation.Numerics.Matrix4x4 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetMatrix4x4Parameter(key, value));
	}
	final void SetQuaternionParameter(HSTRING key, Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetQuaternionParameter(key, value));
	}
	final void SetReferenceParameter(HSTRING key, Windows.UI.Composition.CompositionObject compositionObject)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetReferenceParameter(key, compositionObject));
	}
	final void SetScalarParameter(HSTRING key, float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetScalarParameter(key, value));
	}
	final void SetVector2Parameter(HSTRING key, Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetVector2Parameter(key, value));
	}
	final void SetVector3Parameter(HSTRING key, Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetVector3Parameter(key, value));
	}
	final void SetVector4Parameter(HSTRING key, Windows.Foundation.Numerics.Vector4 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation)this.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetVector4Parameter(key, value));
	}
	final void SetBooleanParameter(HSTRING key, bool value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation2)this.asInterface(uuid("369b603e-a80f-4948-93e3-ed23fb38c6cb"))).abi_SetBooleanParameter(key, value));
	}
	final HSTRING Target()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation2)this.asInterface(uuid("369b603e-a80f-4948-93e3-ed23fb38c6cb"))).get_Target(&_ret));
		return _ret;
	}
	final void Target(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimation2)this.asInterface(uuid("369b603e-a80f-4948-93e3-ed23fb38c6cb"))).set_Target(value));
	}
}
@makable!(CompositionAnimation, CompositionAnimation, Windows.UI.Composition.ICompositionAnimationFactory)
class CompositionAnimationT(Base) : AgileObject!Base, CompositionAnimation
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_ClearAllParameters() { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_ClearAllParameters(); }
	override HRESULT abi_ClearParameter(HSTRING key) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_ClearParameter(key); }
	override HRESULT abi_SetColorParameter(HSTRING key, Windows.UI.Color value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetColorParameter(key, value); }
	override HRESULT abi_SetMatrix3x2Parameter(HSTRING key, Windows.Foundation.Numerics.Matrix3x2 value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetMatrix3x2Parameter(key, value); }
	override HRESULT abi_SetMatrix4x4Parameter(HSTRING key, Windows.Foundation.Numerics.Matrix4x4 value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetMatrix4x4Parameter(key, value); }
	override HRESULT abi_SetQuaternionParameter(HSTRING key, Windows.Foundation.Numerics.Quaternion value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetQuaternionParameter(key, value); }
	override HRESULT abi_SetReferenceParameter(HSTRING key, Windows.UI.Composition.CompositionObject compositionObject) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetReferenceParameter(key, compositionObject); }
	override HRESULT abi_SetScalarParameter(HSTRING key, float value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetScalarParameter(key, value); }
	override HRESULT abi_SetVector2Parameter(HSTRING key, Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetVector2Parameter(key, value); }
	override HRESULT abi_SetVector3Parameter(HSTRING key, Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetVector3Parameter(key, value); }
	override HRESULT abi_SetVector4Parameter(HSTRING key, Windows.Foundation.Numerics.Vector4 value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetVector4Parameter(key, value); }

	override HRESULT abi_SetBooleanParameter(HSTRING key, bool value) { return (cast(Windows.UI.Composition.ICompositionAnimation2)m_inner.asInterface(uuid("369b603e-a80f-4948-93e3-ed23fb38c6cb"))).abi_SetBooleanParameter(key, value); }
	override HRESULT get_Target(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionAnimation2)m_inner.asInterface(uuid("369b603e-a80f-4948-93e3-ed23fb38c6cb"))).get_Target(return_value); }
	override HRESULT set_Target(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionAnimation2)m_inner.asInterface(uuid("369b603e-a80f-4948-93e3-ed23fb38c6cb"))).set_Target(value); }

	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface CompositionAnimationGroup : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionAnimationGroup, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.CompositionAnimation), Windows.UI.Composition.ICompositionAnimationBase
{
extern(Windows):
	final INT32 Count()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimationGroup)this.asInterface(uuid("5e7cc90c-cd14-4e07-8a55-c72527aabdac"))).get_Count(&_ret));
		return _ret;
	}
	final void Add(Windows.UI.Composition.CompositionAnimation value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimationGroup)this.asInterface(uuid("5e7cc90c-cd14-4e07-8a55-c72527aabdac"))).abi_Add(value));
	}
	final void Remove(Windows.UI.Composition.CompositionAnimation value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimationGroup)this.asInterface(uuid("5e7cc90c-cd14-4e07-8a55-c72527aabdac"))).abi_Remove(value));
	}
	final void RemoveAll()
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionAnimationGroup)this.asInterface(uuid("5e7cc90c-cd14-4e07-8a55-c72527aabdac"))).abi_RemoveAll());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Composition.CompositionAnimation)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.CompositionAnimation))this).abi_First(out_first));
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
@makable!(CompositionBrush, CompositionBrush, Windows.UI.Composition.ICompositionBrushFactory)
class CompositionBrushT(Base) : AgileObject!Base, CompositionBrush
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface CompositionCapabilities : Windows.UI.Composition.ICompositionCapabilities
{
extern(Windows):
	final bool AreEffectsSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionCapabilities)this.asInterface(uuid("8253353e-b517-48bc-b1e8-4b3561a2e181"))).abi_AreEffectsSupported(&_ret));
		return _ret;
	}
	final bool AreEffectsFast()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionCapabilities)this.asInterface(uuid("8253353e-b517-48bc-b1e8-4b3561a2e181"))).abi_AreEffectsFast(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnChanged(void delegate(Windows.UI.Composition.CompositionCapabilities, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Composition.ICompositionCapabilities)this.asInterface(uuid("8253353e-b517-48bc-b1e8-4b3561a2e181"))).add_Changed(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Composition.CompositionCapabilities, IInspectable), Windows.UI.Composition.CompositionCapabilities, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionCapabilities)this.asInterface(uuid("8253353e-b517-48bc-b1e8-4b3561a2e181"))).remove_Changed(token));
	}

	private static Windows.UI.Composition.ICompositionCapabilitiesStatics _staticInstance;
	public static Windows.UI.Composition.ICompositionCapabilitiesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.UI.Composition.ICompositionCapabilitiesStatics);
		return _staticInstance;
	}
	static Windows.UI.Composition.CompositionCapabilities GetForCurrentView()
	{
		Windows.UI.Composition.CompositionCapabilities _ret;
		Debug.OK(staticInstance.abi_GetForCurrentView(&_ret));
		return _ret;
	}
}

interface CompositionClip : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionClip, Windows.UI.Composition.ICompositionClip2
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector2 AnchorPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_AnchorPoint(&_ret));
		return _ret;
	}
	final void AnchorPoint(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_AnchorPoint(value));
	}
	final Windows.Foundation.Numerics.Vector2 CenterPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_CenterPoint(&_ret));
		return _ret;
	}
	final void CenterPoint(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_CenterPoint(value));
	}
	final Windows.Foundation.Numerics.Vector2 Offset()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_Offset(value));
	}
	final float RotationAngle()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_RotationAngle(&_ret));
		return _ret;
	}
	final void RotationAngle(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_RotationAngle(value));
	}
	final float RotationAngleInDegrees()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_RotationAngleInDegrees(&_ret));
		return _ret;
	}
	final void RotationAngleInDegrees(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_RotationAngleInDegrees(value));
	}
	final Windows.Foundation.Numerics.Vector2 Scale()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_Scale(&_ret));
		return _ret;
	}
	final void Scale(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_Scale(value));
	}
	final Windows.Foundation.Numerics.Matrix3x2 TransformMatrix()
	{
		Windows.Foundation.Numerics.Matrix3x2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_TransformMatrix(&_ret));
		return _ret;
	}
	final void TransformMatrix(Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionClip2)this.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_TransformMatrix(value));
	}
}
@makable!(CompositionClip, CompositionClip, Windows.UI.Composition.ICompositionClipFactory)
class CompositionClipT(Base) : AgileObject!Base, CompositionClip
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_AnchorPoint(Windows.Foundation.Numerics.Vector2* return_value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_AnchorPoint(return_value); }
	override HRESULT set_AnchorPoint(Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_AnchorPoint(value); }
	override HRESULT get_CenterPoint(Windows.Foundation.Numerics.Vector2* return_value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_CenterPoint(return_value); }
	override HRESULT set_CenterPoint(Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_CenterPoint(value); }
	override HRESULT get_Offset(Windows.Foundation.Numerics.Vector2* return_value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_Offset(return_value); }
	override HRESULT set_Offset(Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_Offset(value); }
	override HRESULT get_RotationAngle(float* return_value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_RotationAngle(return_value); }
	override HRESULT set_RotationAngle(float value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_RotationAngle(value); }
	override HRESULT get_RotationAngleInDegrees(float* return_value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_RotationAngleInDegrees(return_value); }
	override HRESULT set_RotationAngleInDegrees(float value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_RotationAngleInDegrees(value); }
	override HRESULT get_Scale(Windows.Foundation.Numerics.Vector2* return_value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_Scale(return_value); }
	override HRESULT set_Scale(Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_Scale(value); }
	override HRESULT get_TransformMatrix(Windows.Foundation.Numerics.Matrix3x2* return_value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).get_TransformMatrix(return_value); }
	override HRESULT set_TransformMatrix(Windows.Foundation.Numerics.Matrix3x2 value) { return (cast(Windows.UI.Composition.ICompositionClip2)m_inner.asInterface(uuid("5893e069-3516-40e1-89e0-5ba924927235"))).set_TransformMatrix(value); }

	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface CompositionColorBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionColorBrush
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionColorBrush)this.asInterface(uuid("2b264c5e-bf35-4831-8642-cf70c20fff2f"))).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionColorBrush)this.asInterface(uuid("2b264c5e-bf35-4831-8642-cf70c20fff2f"))).set_Color(value));
	}
}

interface CompositionCommitBatch : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionCommitBatch
{
extern(Windows):
	final bool IsActive()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionCommitBatch)this.asInterface(uuid("0d00dad0-ca07-4400-8c8e-cb5db08559cc"))).get_IsActive(&_ret));
		return _ret;
	}
	final bool IsEnded()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionCommitBatch)this.asInterface(uuid("0d00dad0-ca07-4400-8c8e-cb5db08559cc"))).get_IsEnded(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnCompleted(void delegate(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Composition.ICompositionCommitBatch)this.asInterface(uuid("0d00dad0-ca07-4400-8c8e-cb5db08559cc"))).add_Completed(event!(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs), IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionCommitBatch)this.asInterface(uuid("0d00dad0-ca07-4400-8c8e-cb5db08559cc"))).remove_Completed(token));
	}
}

interface CompositionDrawingSurface : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionDrawingSurface, Windows.UI.Composition.ICompositionSurface, Windows.UI.Composition.ICompositionDrawingSurface2
{
extern(Windows):
	final Windows.Graphics.DirectX.DirectXAlphaMode AlphaMode()
	{
		Windows.Graphics.DirectX.DirectXAlphaMode _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionDrawingSurface)this.asInterface(uuid("a166c300-fad0-4d11-9e67-e433162ff49e"))).get_AlphaMode(&_ret));
		return _ret;
	}
	final Windows.Graphics.DirectX.DirectXPixelFormat PixelFormat()
	{
		Windows.Graphics.DirectX.DirectXPixelFormat _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionDrawingSurface)this.asInterface(uuid("a166c300-fad0-4d11-9e67-e433162ff49e"))).get_PixelFormat(&_ret));
		return _ret;
	}
	final Windows.Foundation.Size Size()
	{
		Windows.Foundation.Size _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionDrawingSurface)this.asInterface(uuid("a166c300-fad0-4d11-9e67-e433162ff49e"))).get_Size(&_ret));
		return _ret;
	}
	final Windows.Graphics.SizeInt32 SizeInt32()
	{
		Windows.Graphics.SizeInt32 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionDrawingSurface2)this.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).get_SizeInt32(&_ret));
		return _ret;
	}
	final void Resize(Windows.Graphics.SizeInt32 sizePixels)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionDrawingSurface2)this.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_Resize(sizePixels));
	}
	final void Scroll(Windows.Graphics.PointInt32 offset)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionDrawingSurface2)this.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_Scroll(offset));
	}
	final void Scroll(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 scrollRect)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionDrawingSurface2)this.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_Scroll(offset, scrollRect));
	}
	final void ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionDrawingSurface2)this.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_ScrollWithClip(offset, clipRect));
	}
	final void ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect, Windows.Graphics.RectInt32 scrollRect)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionDrawingSurface2)this.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_ScrollWithClip(offset, clipRect, scrollRect));
	}
}
@makable!(CompositionDrawingSurface, CompositionDrawingSurface, Windows.UI.Composition.ICompositionDrawingSurfaceFactory)
class CompositionDrawingSurfaceT(Base) : AgileObject!Base, CompositionDrawingSurface
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_AlphaMode(Windows.Graphics.DirectX.DirectXAlphaMode* return_value) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface)m_inner.asInterface(uuid("a166c300-fad0-4d11-9e67-e433162ff49e"))).get_AlphaMode(return_value); }
	override HRESULT get_PixelFormat(Windows.Graphics.DirectX.DirectXPixelFormat* return_value) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface)m_inner.asInterface(uuid("a166c300-fad0-4d11-9e67-e433162ff49e"))).get_PixelFormat(return_value); }
	override HRESULT get_Size(Windows.Foundation.Size* return_value) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface)m_inner.asInterface(uuid("a166c300-fad0-4d11-9e67-e433162ff49e"))).get_Size(return_value); }

	override HRESULT get_SizeInt32(Windows.Graphics.SizeInt32* return_value) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).get_SizeInt32(return_value); }
	override HRESULT abi_Resize(Windows.Graphics.SizeInt32 sizePixels) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_Resize(sizePixels); }
	override HRESULT abi_Scroll(Windows.Graphics.PointInt32 offset) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_Scroll(offset); }
	override HRESULT abi_Scroll(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 scrollRect) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_Scroll(offset, scrollRect); }
	override HRESULT abi_ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_ScrollWithClip(offset, clipRect); }
	override HRESULT abi_ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect, Windows.Graphics.RectInt32 scrollRect) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_ScrollWithClip(offset, clipRect, scrollRect); }

	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface CompositionEasingFunction : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionEasingFunction
{
}
@makable!(CompositionEasingFunction, CompositionEasingFunction, Windows.UI.Composition.ICompositionEasingFunctionFactory)
class CompositionEasingFunctionT(Base) : AgileObject!Base, CompositionEasingFunction
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface CompositionEffectBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionEffectBrush
{
extern(Windows):
	final Windows.UI.Composition.CompositionBrush GetSourceParameter(HSTRING name)
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionEffectBrush)this.asInterface(uuid("bf7f795e-83cc-44bf-a447-3e3c071789ec"))).abi_GetSourceParameter(name, &_ret));
		return _ret;
	}
	final void SetSourceParameter(HSTRING name, Windows.UI.Composition.CompositionBrush source)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionEffectBrush)this.asInterface(uuid("bf7f795e-83cc-44bf-a447-3e3c071789ec"))).abi_SetSourceParameter(name, source));
	}
}

interface CompositionEffectFactory : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionEffectFactory
{
extern(Windows):
	final Windows.UI.Composition.CompositionEffectBrush CreateBrush()
	{
		Windows.UI.Composition.CompositionEffectBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionEffectFactory)this.asInterface(uuid("be5624af-ba7e-4510-9850-41c0b4ff74df"))).abi_CreateBrush(&_ret));
		return _ret;
	}
	final HRESULT ExtendedError()
	{
		HRESULT _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionEffectFactory)this.asInterface(uuid("be5624af-ba7e-4510-9850-41c0b4ff74df"))).get_ExtendedError(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionEffectFactoryLoadStatus LoadStatus()
	{
		Windows.UI.Composition.CompositionEffectFactoryLoadStatus _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionEffectFactory)this.asInterface(uuid("be5624af-ba7e-4510-9850-41c0b4ff74df"))).get_LoadStatus(&_ret));
		return _ret;
	}
}

interface CompositionEffectSourceParameter : Windows.UI.Composition.ICompositionEffectSourceParameter, Windows.Graphics.Effects.IGraphicsEffectSource
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionEffectSourceParameter)this.asInterface(uuid("858ab13a-3292-4e4e-b3bb-2b6c6544a6ee"))).get_Name(&_ret));
		return _ret;
	}
	static Windows.UI.Composition.CompositionEffectSourceParameter New(HSTRING name)
	{
		auto factory = factory!(Windows.UI.Composition.ICompositionEffectSourceParameterFactory);
		Windows.UI.Composition.CompositionEffectSourceParameter _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionEffectSourceParameterFactory)factory.asInterface(uuid("b3d9f276-aba3-4724-acf3-d0397464db1c"))).abi_Create(name, &_ret));
		return _ret;
	}
}

interface CompositionGraphicsDevice : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionGraphicsDevice, Windows.UI.Composition.ICompositionGraphicsDevice2
{
extern(Windows):
	final Windows.UI.Composition.CompositionDrawingSurface CreateDrawingSurface(Windows.Foundation.Size sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode)
	{
		Windows.UI.Composition.CompositionDrawingSurface _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionGraphicsDevice)this.asInterface(uuid("fb22c6e1-80a2-4667-9936-dbeaf6eefe95"))).abi_CreateDrawingSurface(sizePixels, pixelFormat, alphaMode, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnRenderingDeviceReplaced(void delegate(Windows.UI.Composition.CompositionGraphicsDevice, Windows.UI.Composition.RenderingDeviceReplacedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Composition.ICompositionGraphicsDevice)this.asInterface(uuid("fb22c6e1-80a2-4667-9936-dbeaf6eefe95"))).add_RenderingDeviceReplaced(event!(Windows.Foundation.TypedEventHandler!(Windows.UI.Composition.CompositionGraphicsDevice, Windows.UI.Composition.RenderingDeviceReplacedEventArgs), Windows.UI.Composition.CompositionGraphicsDevice, Windows.UI.Composition.RenderingDeviceReplacedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRenderingDeviceReplaced(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionGraphicsDevice)this.asInterface(uuid("fb22c6e1-80a2-4667-9936-dbeaf6eefe95"))).remove_RenderingDeviceReplaced(token));
	}
	final Windows.UI.Composition.CompositionDrawingSurface CreateDrawingSurface2(Windows.Graphics.SizeInt32 sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode)
	{
		Windows.UI.Composition.CompositionDrawingSurface _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionGraphicsDevice2)this.asInterface(uuid("0fb8bdf6-c0f0-4bcc-9fb8-084982490d7d"))).abi_CreateDrawingSurface2(sizePixels, pixelFormat, alphaMode, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionVirtualDrawingSurface CreateVirtualDrawingSurface(Windows.Graphics.SizeInt32 sizePixels, Windows.Graphics.DirectX.DirectXPixelFormat pixelFormat, Windows.Graphics.DirectX.DirectXAlphaMode alphaMode)
	{
		Windows.UI.Composition.CompositionVirtualDrawingSurface _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionGraphicsDevice2)this.asInterface(uuid("0fb8bdf6-c0f0-4bcc-9fb8-084982490d7d"))).abi_CreateVirtualDrawingSurface(sizePixels, pixelFormat, alphaMode, &_ret));
		return _ret;
	}
}

interface CompositionLight : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionLight
{
extern(Windows):
	final Windows.UI.Composition.VisualUnorderedCollection Targets()
	{
		Windows.UI.Composition.VisualUnorderedCollection _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionLight)this.asInterface(uuid("41a6d7c2-2e5d-4bc1-b09e-8f0a03e3d8d3"))).get_Targets(&_ret));
		return _ret;
	}
}
@makable!(CompositionLight, CompositionLight, Windows.UI.Composition.ICompositionLightFactory)
class CompositionLightT(Base) : AgileObject!Base, CompositionLight
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Targets(Windows.UI.Composition.VisualUnorderedCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionLight)m_inner.asInterface(uuid("41a6d7c2-2e5d-4bc1-b09e-8f0a03e3d8d3"))).get_Targets(return_value); }

	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface CompositionMaskBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionMaskBrush
{
extern(Windows):
	final Windows.UI.Composition.CompositionBrush Mask()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionMaskBrush)this.asInterface(uuid("522cf09e-be6b-4f41-be49-f9226d471b4a"))).get_Mask(&_ret));
		return _ret;
	}
	final void Mask(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionMaskBrush)this.asInterface(uuid("522cf09e-be6b-4f41-be49-f9226d471b4a"))).set_Mask(value));
	}
	final Windows.UI.Composition.CompositionBrush Source()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionMaskBrush)this.asInterface(uuid("522cf09e-be6b-4f41-be49-f9226d471b4a"))).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionMaskBrush)this.asInterface(uuid("522cf09e-be6b-4f41-be49-f9226d471b4a"))).set_Source(value));
	}
}

interface CompositionNineGridBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionNineGridBrush
{
extern(Windows):
	final float BottomInset()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).get_BottomInset(&_ret));
		return _ret;
	}
	final void BottomInset(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).set_BottomInset(value));
	}
	final float BottomInsetScale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).get_BottomInsetScale(&_ret));
		return _ret;
	}
	final void BottomInsetScale(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).set_BottomInsetScale(value));
	}
	final bool IsCenterHollow()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).get_IsCenterHollow(&_ret));
		return _ret;
	}
	final void IsCenterHollow(bool value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).set_IsCenterHollow(value));
	}
	final float LeftInset()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).get_LeftInset(&_ret));
		return _ret;
	}
	final void LeftInset(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).set_LeftInset(value));
	}
	final float LeftInsetScale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).get_LeftInsetScale(&_ret));
		return _ret;
	}
	final void LeftInsetScale(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).set_LeftInsetScale(value));
	}
	final float RightInset()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).get_RightInset(&_ret));
		return _ret;
	}
	final void RightInset(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).set_RightInset(value));
	}
	final float RightInsetScale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).get_RightInsetScale(&_ret));
		return _ret;
	}
	final void RightInsetScale(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).set_RightInsetScale(value));
	}
	final Windows.UI.Composition.CompositionBrush Source()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).get_Source(&_ret));
		return _ret;
	}
	final void Source(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).set_Source(value));
	}
	final float TopInset()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).get_TopInset(&_ret));
		return _ret;
	}
	final void TopInset(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).set_TopInset(value));
	}
	final float TopInsetScale()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).get_TopInsetScale(&_ret));
		return _ret;
	}
	final void TopInsetScale(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).set_TopInsetScale(value));
	}
	final void SetInsets(float inset)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).abi_SetInsets(inset));
	}
	final void SetInsets(float left, float top, float right, float bottom)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).abi_SetInsets(left, top, right, bottom));
	}
	final void SetInsetScales(float scale)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).abi_SetInsetScales(scale));
	}
	final void SetInsetScales(float left, float top, float right, float bottom)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionNineGridBrush)this.asInterface(uuid("f25154e4-bc8c-4be7-b80f-8685b83c0186"))).abi_SetInsetScales(left, top, right, bottom));
	}
}

interface CompositionObject : Windows.UI.Composition.ICompositionObject, Windows.Foundation.IClosable, Windows.UI.Composition.ICompositionObject2
{
extern(Windows):
	final Windows.UI.Composition.Compositor Compositor()
	{
		Windows.UI.Composition.Compositor _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject)this.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(&_ret));
		return _ret;
	}
	final Windows.UI.Core.CoreDispatcher Dispatcher()
	{
		Windows.UI.Core.CoreDispatcher _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject)this.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionPropertySet Properties()
	{
		Windows.UI.Composition.CompositionPropertySet _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject)this.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(&_ret));
		return _ret;
	}
	final void StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject)this.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation));
	}
	final void StopAnimation(HSTRING propertyName)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject)this.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName));
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final HSTRING Comment()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject2)this.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(&_ret));
		return _ret;
	}
	final void Comment(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject2)this.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value));
	}
	final Windows.UI.Composition.ImplicitAnimationCollection ImplicitAnimations()
	{
		Windows.UI.Composition.ImplicitAnimationCollection _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject2)this.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(&_ret));
		return _ret;
	}
	final void ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject2)this.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value));
	}
	final void StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject2)this.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value));
	}
	final void StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionObject2)this.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value));
	}
}
@makable!(CompositionObject, CompositionObject, Windows.UI.Composition.ICompositionObjectFactory)
class CompositionObjectT(Base) : AgileObject!Base, CompositionObject
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface CompositionPropertySet : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionPropertySet, Windows.UI.Composition.ICompositionPropertySet2
{
extern(Windows):
	final void InsertColor(HSTRING propertyName, Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_InsertColor(propertyName, value));
	}
	final void InsertMatrix3x2(HSTRING propertyName, Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_InsertMatrix3x2(propertyName, value));
	}
	final void InsertMatrix4x4(HSTRING propertyName, Windows.Foundation.Numerics.Matrix4x4 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_InsertMatrix4x4(propertyName, value));
	}
	final void InsertQuaternion(HSTRING propertyName, Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_InsertQuaternion(propertyName, value));
	}
	final void InsertScalar(HSTRING propertyName, float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_InsertScalar(propertyName, value));
	}
	final void InsertVector2(HSTRING propertyName, Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_InsertVector2(propertyName, value));
	}
	final void InsertVector3(HSTRING propertyName, Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_InsertVector3(propertyName, value));
	}
	final void InsertVector4(HSTRING propertyName, Windows.Foundation.Numerics.Vector4 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_InsertVector4(propertyName, value));
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetColor(HSTRING propertyName, Windows.UI.Color* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_TryGetColor(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetMatrix3x2(HSTRING propertyName, Windows.Foundation.Numerics.Matrix3x2* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_TryGetMatrix3x2(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetMatrix4x4(HSTRING propertyName, Windows.Foundation.Numerics.Matrix4x4* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_TryGetMatrix4x4(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetQuaternion(HSTRING propertyName, Windows.Foundation.Numerics.Quaternion* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_TryGetQuaternion(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetScalar(HSTRING propertyName, float* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_TryGetScalar(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetVector2(HSTRING propertyName, Windows.Foundation.Numerics.Vector2* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_TryGetVector2(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetVector3(HSTRING propertyName, Windows.Foundation.Numerics.Vector3* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_TryGetVector3(propertyName, out_value, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetVector4(HSTRING propertyName, Windows.Foundation.Numerics.Vector4* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet)this.asInterface(uuid("c9d6d202-5f67-4453-9117-9eadd430d3c2"))).abi_TryGetVector4(propertyName, out_value, &_ret));
		return _ret;
	}
	final void InsertBoolean(HSTRING propertyName, bool value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet2)this.asInterface(uuid("de80731e-a211-4455-8880-7d0f3f6a44fd"))).abi_InsertBoolean(propertyName, value));
	}
	final Windows.UI.Composition.CompositionGetValueStatus TryGetBoolean(HSTRING propertyName, bool* out_value)
	{
		Windows.UI.Composition.CompositionGetValueStatus _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionPropertySet2)this.asInterface(uuid("de80731e-a211-4455-8880-7d0f3f6a44fd"))).abi_TryGetBoolean(propertyName, out_value, &_ret));
		return _ret;
	}
}

interface CompositionScopedBatch : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionScopedBatch
{
extern(Windows):
	final bool IsActive()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionScopedBatch)this.asInterface(uuid("0d00dad0-fb07-46fd-8c72-6280d1a3d1dd"))).get_IsActive(&_ret));
		return _ret;
	}
	final bool IsEnded()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionScopedBatch)this.asInterface(uuid("0d00dad0-fb07-46fd-8c72-6280d1a3d1dd"))).get_IsEnded(&_ret));
		return _ret;
	}
	final void End()
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionScopedBatch)this.asInterface(uuid("0d00dad0-fb07-46fd-8c72-6280d1a3d1dd"))).abi_End());
	}
	final void Resume()
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionScopedBatch)this.asInterface(uuid("0d00dad0-fb07-46fd-8c72-6280d1a3d1dd"))).abi_Resume());
	}
	final void Suspend()
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionScopedBatch)this.asInterface(uuid("0d00dad0-fb07-46fd-8c72-6280d1a3d1dd"))).abi_Suspend());
	}
	final EventRegistrationToken OnCompleted(void delegate(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.UI.Composition.ICompositionScopedBatch)this.asInterface(uuid("0d00dad0-fb07-46fd-8c72-6280d1a3d1dd"))).add_Completed(event!(Windows.Foundation.TypedEventHandler!(IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs), IInspectable, Windows.UI.Composition.CompositionBatchCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionScopedBatch)this.asInterface(uuid("0d00dad0-fb07-46fd-8c72-6280d1a3d1dd"))).remove_Completed(token));
	}
}

interface CompositionShadow : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionShadow
{
}
@makable!(CompositionShadow, CompositionShadow, Windows.UI.Composition.ICompositionShadowFactory)
class CompositionShadowT(Base) : AgileObject!Base, CompositionShadow
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface CompositionSurfaceBrush : Windows.UI.Composition.CompositionBrush, Windows.UI.Composition.ICompositionSurfaceBrush, Windows.UI.Composition.ICompositionSurfaceBrush2
{
extern(Windows):
	final Windows.UI.Composition.CompositionBitmapInterpolationMode BitmapInterpolationMode()
	{
		Windows.UI.Composition.CompositionBitmapInterpolationMode _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush)this.asInterface(uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162"))).get_BitmapInterpolationMode(&_ret));
		return _ret;
	}
	final void BitmapInterpolationMode(Windows.UI.Composition.CompositionBitmapInterpolationMode value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush)this.asInterface(uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162"))).set_BitmapInterpolationMode(value));
	}
	final float HorizontalAlignmentRatio()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush)this.asInterface(uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162"))).get_HorizontalAlignmentRatio(&_ret));
		return _ret;
	}
	final void HorizontalAlignmentRatio(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush)this.asInterface(uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162"))).set_HorizontalAlignmentRatio(value));
	}
	final Windows.UI.Composition.CompositionStretch Stretch()
	{
		Windows.UI.Composition.CompositionStretch _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush)this.asInterface(uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162"))).get_Stretch(&_ret));
		return _ret;
	}
	final void Stretch(Windows.UI.Composition.CompositionStretch value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush)this.asInterface(uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162"))).set_Stretch(value));
	}
	final Windows.UI.Composition.ICompositionSurface Surface()
	{
		Windows.UI.Composition.ICompositionSurface _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush)this.asInterface(uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162"))).get_Surface(&_ret));
		return _ret;
	}
	final void Surface(Windows.UI.Composition.ICompositionSurface value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush)this.asInterface(uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162"))).set_Surface(value));
	}
	final float VerticalAlignmentRatio()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush)this.asInterface(uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162"))).get_VerticalAlignmentRatio(&_ret));
		return _ret;
	}
	final void VerticalAlignmentRatio(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush)this.asInterface(uuid("ad016d79-1e4c-4c0d-9c29-83338c87c162"))).set_VerticalAlignmentRatio(value));
	}
	final Windows.Foundation.Numerics.Vector2 AnchorPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).get_AnchorPoint(&_ret));
		return _ret;
	}
	final void AnchorPoint(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).set_AnchorPoint(value));
	}
	final Windows.Foundation.Numerics.Vector2 CenterPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).get_CenterPoint(&_ret));
		return _ret;
	}
	final void CenterPoint(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).set_CenterPoint(value));
	}
	final Windows.Foundation.Numerics.Vector2 Offset()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).set_Offset(value));
	}
	final float RotationAngle()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).get_RotationAngle(&_ret));
		return _ret;
	}
	final void RotationAngle(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).set_RotationAngle(value));
	}
	final float RotationAngleInDegrees()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).get_RotationAngleInDegrees(&_ret));
		return _ret;
	}
	final void RotationAngleInDegrees(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).set_RotationAngleInDegrees(value));
	}
	final Windows.Foundation.Numerics.Vector2 Scale()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).get_Scale(&_ret));
		return _ret;
	}
	final void Scale(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).set_Scale(value));
	}
	final Windows.Foundation.Numerics.Matrix3x2 TransformMatrix()
	{
		Windows.Foundation.Numerics.Matrix3x2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).get_TransformMatrix(&_ret));
		return _ret;
	}
	final void TransformMatrix(Windows.Foundation.Numerics.Matrix3x2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionSurfaceBrush2)this.asInterface(uuid("d27174d5-64f5-4692-9dc7-71b61d7e5880"))).set_TransformMatrix(value));
	}
}

interface CompositionTarget : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.ICompositionTarget
{
extern(Windows):
	final Windows.UI.Composition.Visual Root()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositionTarget)this.asInterface(uuid("a1bea8ba-d726-4663-8129-6b5e7927ffa6"))).get_Root(&_ret));
		return _ret;
	}
	final void Root(Windows.UI.Composition.Visual value)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionTarget)this.asInterface(uuid("a1bea8ba-d726-4663-8129-6b5e7927ffa6"))).set_Root(value));
	}
}

interface CompositionVirtualDrawingSurface : Windows.UI.Composition.CompositionDrawingSurface, Windows.UI.Composition.ICompositionVirtualDrawingSurface
{
extern(Windows):
	final void Trim(UINT32 __rectsSize, Windows.Graphics.RectInt32* rects)
	{
		Debug.OK((cast(Windows.UI.Composition.ICompositionVirtualDrawingSurface)this.asInterface(uuid("a9c384db-8740-4f94-8b9d-b68521e7863d"))).abi_Trim(__rectsSize, rects));
	}
}
@makable!(CompositionVirtualDrawingSurface, CompositionVirtualDrawingSurface, Windows.UI.Composition.ICompositionVirtualDrawingSurfaceFactory)
class CompositionVirtualDrawingSurfaceT(Base) : AgileObject!Base, CompositionVirtualDrawingSurface
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT abi_Trim(UINT32 __rectsSize, Windows.Graphics.RectInt32* rects) { return (cast(Windows.UI.Composition.ICompositionVirtualDrawingSurface)m_inner.asInterface(uuid("a9c384db-8740-4f94-8b9d-b68521e7863d"))).abi_Trim(__rectsSize, rects); }

	override HRESULT get_AlphaMode(Windows.Graphics.DirectX.DirectXAlphaMode* return_value) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface)m_inner.asInterface(uuid("a166c300-fad0-4d11-9e67-e433162ff49e"))).get_AlphaMode(return_value); }
	override HRESULT get_PixelFormat(Windows.Graphics.DirectX.DirectXPixelFormat* return_value) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface)m_inner.asInterface(uuid("a166c300-fad0-4d11-9e67-e433162ff49e"))).get_PixelFormat(return_value); }
	override HRESULT get_Size(Windows.Foundation.Size* return_value) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface)m_inner.asInterface(uuid("a166c300-fad0-4d11-9e67-e433162ff49e"))).get_Size(return_value); }

	override HRESULT get_SizeInt32(Windows.Graphics.SizeInt32* return_value) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).get_SizeInt32(return_value); }
	override HRESULT abi_Resize(Windows.Graphics.SizeInt32 sizePixels) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_Resize(sizePixels); }
	override HRESULT abi_Scroll(Windows.Graphics.PointInt32 offset) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_Scroll(offset); }
	override HRESULT abi_Scroll(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 scrollRect) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_Scroll(offset, scrollRect); }
	override HRESULT abi_ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_ScrollWithClip(offset, clipRect); }
	override HRESULT abi_ScrollWithClip(Windows.Graphics.PointInt32 offset, Windows.Graphics.RectInt32 clipRect, Windows.Graphics.RectInt32 scrollRect) { return (cast(Windows.UI.Composition.ICompositionDrawingSurface2)m_inner.asInterface(uuid("fad0e88b-e354-44e8-8e3d-c4880d5a213f"))).abi_ScrollWithClip(offset, clipRect, scrollRect); }

	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface Compositor : Windows.UI.Composition.ICompositor, Windows.Foundation.IClosable, Windows.UI.Composition.ICompositor2, Windows.UI.Composition.ICompositor3
{
extern(Windows):
	final Windows.UI.Composition.ColorKeyFrameAnimation CreateColorKeyFrameAnimation()
	{
		Windows.UI.Composition.ColorKeyFrameAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateColorKeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionColorBrush CreateColorBrush()
	{
		Windows.UI.Composition.CompositionColorBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateColorBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionColorBrush CreateColorBrush(Windows.UI.Color color)
	{
		Windows.UI.Composition.CompositionColorBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateColorBrush(color, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.ContainerVisual CreateContainerVisual()
	{
		Windows.UI.Composition.ContainerVisual _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateContainerVisual(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CubicBezierEasingFunction CreateCubicBezierEasingFunction(Windows.Foundation.Numerics.Vector2 controlPoint1, Windows.Foundation.Numerics.Vector2 controlPoint2)
	{
		Windows.UI.Composition.CubicBezierEasingFunction _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateCubicBezierEasingFunction(controlPoint1, controlPoint2, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionEffectFactory CreateEffectFactory(Windows.Graphics.Effects.IGraphicsEffect graphicsEffect)
	{
		Windows.UI.Composition.CompositionEffectFactory _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateEffectFactory(graphicsEffect, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionEffectFactory CreateEffectFactory(Windows.Graphics.Effects.IGraphicsEffect graphicsEffect, Windows.Foundation.Collections.IIterable!(HSTRING) animatableProperties)
	{
		Windows.UI.Composition.CompositionEffectFactory _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateEffectFactory(graphicsEffect, animatableProperties, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.ExpressionAnimation CreateExpressionAnimation()
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateExpressionAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.ExpressionAnimation CreateExpressionAnimation(HSTRING expression)
	{
		Windows.UI.Composition.ExpressionAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateExpressionAnimation(expression, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.InsetClip CreateInsetClip()
	{
		Windows.UI.Composition.InsetClip _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateInsetClip(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.InsetClip CreateInsetClip(float leftInset, float topInset, float rightInset, float bottomInset)
	{
		Windows.UI.Composition.InsetClip _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateInsetClip(leftInset, topInset, rightInset, bottomInset, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.LinearEasingFunction CreateLinearEasingFunction()
	{
		Windows.UI.Composition.LinearEasingFunction _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateLinearEasingFunction(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionPropertySet CreatePropertySet()
	{
		Windows.UI.Composition.CompositionPropertySet _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreatePropertySet(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.QuaternionKeyFrameAnimation CreateQuaternionKeyFrameAnimation()
	{
		Windows.UI.Composition.QuaternionKeyFrameAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateQuaternionKeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.ScalarKeyFrameAnimation CreateScalarKeyFrameAnimation()
	{
		Windows.UI.Composition.ScalarKeyFrameAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateScalarKeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionScopedBatch CreateScopedBatch(Windows.UI.Composition.CompositionBatchTypes batchType)
	{
		Windows.UI.Composition.CompositionScopedBatch _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateScopedBatch(batchType, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.SpriteVisual CreateSpriteVisual()
	{
		Windows.UI.Composition.SpriteVisual _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateSpriteVisual(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionSurfaceBrush CreateSurfaceBrush()
	{
		Windows.UI.Composition.CompositionSurfaceBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateSurfaceBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionSurfaceBrush CreateSurfaceBrush(Windows.UI.Composition.ICompositionSurface surface)
	{
		Windows.UI.Composition.CompositionSurfaceBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateSurfaceBrush(surface, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionTarget CreateTargetForCurrentView()
	{
		Windows.UI.Composition.CompositionTarget _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateTargetForCurrentView(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.Vector2KeyFrameAnimation CreateVector2KeyFrameAnimation()
	{
		Windows.UI.Composition.Vector2KeyFrameAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateVector2KeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.Vector3KeyFrameAnimation CreateVector3KeyFrameAnimation()
	{
		Windows.UI.Composition.Vector3KeyFrameAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateVector3KeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.Vector4KeyFrameAnimation CreateVector4KeyFrameAnimation()
	{
		Windows.UI.Composition.Vector4KeyFrameAnimation _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_CreateVector4KeyFrameAnimation(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionCommitBatch GetCommitBatch(Windows.UI.Composition.CompositionBatchTypes batchType)
	{
		Windows.UI.Composition.CompositionCommitBatch _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor)this.asInterface(uuid("b403ca50-7f8c-4e83-985f-cc45060036d8"))).abi_GetCommitBatch(batchType, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	final Windows.UI.Composition.AmbientLight CreateAmbientLight()
	{
		Windows.UI.Composition.AmbientLight _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateAmbientLight(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionAnimationGroup CreateAnimationGroup()
	{
		Windows.UI.Composition.CompositionAnimationGroup _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateAnimationGroup(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionBackdropBrush CreateBackdropBrush()
	{
		Windows.UI.Composition.CompositionBackdropBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateBackdropBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.DistantLight CreateDistantLight()
	{
		Windows.UI.Composition.DistantLight _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateDistantLight(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.DropShadow CreateDropShadow()
	{
		Windows.UI.Composition.DropShadow _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateDropShadow(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.ImplicitAnimationCollection CreateImplicitAnimationCollection()
	{
		Windows.UI.Composition.ImplicitAnimationCollection _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateImplicitAnimationCollection(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.LayerVisual CreateLayerVisual()
	{
		Windows.UI.Composition.LayerVisual _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateLayerVisual(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionMaskBrush CreateMaskBrush()
	{
		Windows.UI.Composition.CompositionMaskBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateMaskBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionNineGridBrush CreateNineGridBrush()
	{
		Windows.UI.Composition.CompositionNineGridBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateNineGridBrush(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.PointLight CreatePointLight()
	{
		Windows.UI.Composition.PointLight _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreatePointLight(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.SpotLight CreateSpotLight()
	{
		Windows.UI.Composition.SpotLight _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateSpotLight(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.StepEasingFunction CreateStepEasingFunction()
	{
		Windows.UI.Composition.StepEasingFunction _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateStepEasingFunction(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.StepEasingFunction CreateStepEasingFunction(INT32 stepCount)
	{
		Windows.UI.Composition.StepEasingFunction _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor2)this.asInterface(uuid("735081dc-5e24-45da-a38f-e32cc349a9a0"))).abi_CreateStepEasingFunction(stepCount, &_ret));
		return _ret;
	}
	final Windows.UI.Composition.CompositionBackdropBrush CreateHostBackdropBrush()
	{
		Windows.UI.Composition.CompositionBackdropBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ICompositor3)this.asInterface(uuid("c9dd8ef0-6eb1-4e3c-a658-675d9c64d4ab"))).abi_CreateHostBackdropBrush(&_ret));
		return _ret;
	}
	static Compositor New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(Compositor).abi_ActivateInstance(&ret));
		return cast(Compositor) ret;
	}
}

interface ContainerVisual : Windows.UI.Composition.Visual, Windows.UI.Composition.IContainerVisual
{
extern(Windows):
	final Windows.UI.Composition.VisualCollection Children()
	{
		Windows.UI.Composition.VisualCollection _ret;
		Debug.OK((cast(Windows.UI.Composition.IContainerVisual)this.asInterface(uuid("02f6bc74-ed20-4773-afe6-d49b4a93db32"))).get_Children(&_ret));
		return _ret;
	}
}
@makable!(ContainerVisual, ContainerVisual, Windows.UI.Composition.IContainerVisualFactory)
class ContainerVisualT(Base) : AgileObject!Base, ContainerVisual
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_Children(Windows.UI.Composition.VisualCollection* return_value) { return (cast(Windows.UI.Composition.IContainerVisual)m_inner.asInterface(uuid("02f6bc74-ed20-4773-afe6-d49b4a93db32"))).get_Children(return_value); }

	override HRESULT get_AnchorPoint(Windows.Foundation.Numerics.Vector2* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_AnchorPoint(return_value); }
	override HRESULT set_AnchorPoint(Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_AnchorPoint(value); }
	override HRESULT get_BackfaceVisibility(Windows.UI.Composition.CompositionBackfaceVisibility* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_BackfaceVisibility(return_value); }
	override HRESULT set_BackfaceVisibility(Windows.UI.Composition.CompositionBackfaceVisibility value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_BackfaceVisibility(value); }
	override HRESULT get_BorderMode(Windows.UI.Composition.CompositionBorderMode* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_BorderMode(return_value); }
	override HRESULT set_BorderMode(Windows.UI.Composition.CompositionBorderMode value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_BorderMode(value); }
	override HRESULT get_CenterPoint(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_CenterPoint(return_value); }
	override HRESULT set_CenterPoint(Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_CenterPoint(value); }
	override HRESULT get_Clip(Windows.UI.Composition.CompositionClip* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Clip(return_value); }
	override HRESULT set_Clip(Windows.UI.Composition.CompositionClip value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Clip(value); }
	override HRESULT get_CompositeMode(Windows.UI.Composition.CompositionCompositeMode* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_CompositeMode(return_value); }
	override HRESULT set_CompositeMode(Windows.UI.Composition.CompositionCompositeMode value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_CompositeMode(value); }
	override HRESULT get_IsVisible(bool* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_IsVisible(return_value); }
	override HRESULT set_IsVisible(bool value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_IsVisible(value); }
	override HRESULT get_Offset(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Offset(return_value); }
	override HRESULT set_Offset(Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Offset(value); }
	override HRESULT get_Opacity(float* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Opacity(return_value); }
	override HRESULT set_Opacity(float value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Opacity(value); }
	override HRESULT get_Orientation(Windows.Foundation.Numerics.Quaternion* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Orientation(return_value); }
	override HRESULT set_Orientation(Windows.Foundation.Numerics.Quaternion value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Orientation(value); }
	override HRESULT get_Parent(Windows.UI.Composition.ContainerVisual* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Parent(return_value); }
	override HRESULT get_RotationAngle(float* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_RotationAngle(return_value); }
	override HRESULT set_RotationAngle(float value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_RotationAngle(value); }
	override HRESULT get_RotationAngleInDegrees(float* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_RotationAngleInDegrees(return_value); }
	override HRESULT set_RotationAngleInDegrees(float value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_RotationAngleInDegrees(value); }
	override HRESULT get_RotationAxis(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_RotationAxis(return_value); }
	override HRESULT set_RotationAxis(Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_RotationAxis(value); }
	override HRESULT get_Scale(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Scale(return_value); }
	override HRESULT set_Scale(Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Scale(value); }
	override HRESULT get_Size(Windows.Foundation.Numerics.Vector2* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Size(return_value); }
	override HRESULT set_Size(Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Size(value); }
	override HRESULT get_TransformMatrix(Windows.Foundation.Numerics.Matrix4x4* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_TransformMatrix(return_value); }
	override HRESULT set_TransformMatrix(Windows.Foundation.Numerics.Matrix4x4 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_TransformMatrix(value); }

	override HRESULT get_ParentForTransform(Windows.UI.Composition.Visual* return_value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).get_ParentForTransform(return_value); }
	override HRESULT set_ParentForTransform(Windows.UI.Composition.Visual value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).set_ParentForTransform(value); }
	override HRESULT get_RelativeOffsetAdjustment(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).get_RelativeOffsetAdjustment(return_value); }
	override HRESULT set_RelativeOffsetAdjustment(Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).set_RelativeOffsetAdjustment(value); }
	override HRESULT get_RelativeSizeAdjustment(Windows.Foundation.Numerics.Vector2* return_value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).get_RelativeSizeAdjustment(return_value); }
	override HRESULT set_RelativeSizeAdjustment(Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).set_RelativeSizeAdjustment(value); }

	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface CubicBezierEasingFunction : Windows.UI.Composition.CompositionEasingFunction, Windows.UI.Composition.ICubicBezierEasingFunction
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector2 ControlPoint1()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICubicBezierEasingFunction)this.asInterface(uuid("32350666-c1e8-44f9-96b8-c98acf0ae698"))).get_ControlPoint1(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector2 ControlPoint2()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.ICubicBezierEasingFunction)this.asInterface(uuid("32350666-c1e8-44f9-96b8-c98acf0ae698"))).get_ControlPoint2(&_ret));
		return _ret;
	}
}

interface DistantLight : Windows.UI.Composition.CompositionLight, Windows.UI.Composition.IDistantLight
{
extern(Windows):
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.Composition.IDistantLight)this.asInterface(uuid("318cfafc-5ce3-4b55-ab5d-07a00353ac99"))).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Composition.IDistantLight)this.asInterface(uuid("318cfafc-5ce3-4b55-ab5d-07a00353ac99"))).set_Color(value));
	}
	final Windows.UI.Composition.Visual CoordinateSpace()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK((cast(Windows.UI.Composition.IDistantLight)this.asInterface(uuid("318cfafc-5ce3-4b55-ab5d-07a00353ac99"))).get_CoordinateSpace(&_ret));
		return _ret;
	}
	final void CoordinateSpace(Windows.UI.Composition.Visual value)
	{
		Debug.OK((cast(Windows.UI.Composition.IDistantLight)this.asInterface(uuid("318cfafc-5ce3-4b55-ab5d-07a00353ac99"))).set_CoordinateSpace(value));
	}
	final Windows.Foundation.Numerics.Vector3 Direction()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.IDistantLight)this.asInterface(uuid("318cfafc-5ce3-4b55-ab5d-07a00353ac99"))).get_Direction(&_ret));
		return _ret;
	}
	final void Direction(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IDistantLight)this.asInterface(uuid("318cfafc-5ce3-4b55-ab5d-07a00353ac99"))).set_Direction(value));
	}
}

interface DropShadow : Windows.UI.Composition.CompositionShadow, Windows.UI.Composition.IDropShadow
{
extern(Windows):
	final float BlurRadius()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IDropShadow)this.asInterface(uuid("cb977c07-a154-4851-85e7-a8924c84fad8"))).get_BlurRadius(&_ret));
		return _ret;
	}
	final void BlurRadius(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IDropShadow)this.asInterface(uuid("cb977c07-a154-4851-85e7-a8924c84fad8"))).set_BlurRadius(value));
	}
	final Windows.UI.Color Color()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.Composition.IDropShadow)this.asInterface(uuid("cb977c07-a154-4851-85e7-a8924c84fad8"))).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Composition.IDropShadow)this.asInterface(uuid("cb977c07-a154-4851-85e7-a8924c84fad8"))).set_Color(value));
	}
	final Windows.UI.Composition.CompositionBrush Mask()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.IDropShadow)this.asInterface(uuid("cb977c07-a154-4851-85e7-a8924c84fad8"))).get_Mask(&_ret));
		return _ret;
	}
	final void Mask(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK((cast(Windows.UI.Composition.IDropShadow)this.asInterface(uuid("cb977c07-a154-4851-85e7-a8924c84fad8"))).set_Mask(value));
	}
	final Windows.Foundation.Numerics.Vector3 Offset()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.IDropShadow)this.asInterface(uuid("cb977c07-a154-4851-85e7-a8924c84fad8"))).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IDropShadow)this.asInterface(uuid("cb977c07-a154-4851-85e7-a8924c84fad8"))).set_Offset(value));
	}
	final float Opacity()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IDropShadow)this.asInterface(uuid("cb977c07-a154-4851-85e7-a8924c84fad8"))).get_Opacity(&_ret));
		return _ret;
	}
	final void Opacity(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IDropShadow)this.asInterface(uuid("cb977c07-a154-4851-85e7-a8924c84fad8"))).set_Opacity(value));
	}
}

interface ExpressionAnimation : Windows.UI.Composition.CompositionAnimation, Windows.UI.Composition.IExpressionAnimation
{
extern(Windows):
	final HSTRING Expression()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.UI.Composition.IExpressionAnimation)this.asInterface(uuid("6acc5431-7d3d-4bf3-abb6-f44bdc4888c1"))).get_Expression(&_ret));
		return _ret;
	}
	final void Expression(HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Composition.IExpressionAnimation)this.asInterface(uuid("6acc5431-7d3d-4bf3-abb6-f44bdc4888c1"))).set_Expression(value));
	}
}

interface ImplicitAnimationCollection : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.IImplicitAnimationCollection, Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)), Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)
{
extern(Windows):
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase))* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase)))this).abi_First(out_first));
	}
	final  Windows.UI.Composition.ICompositionAnimationBase Lookup(HSTRING key)
	{
		 Windows.UI.Composition.ICompositionAnimationBase _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase))this).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase))this).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase))this).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 Windows.UI.Composition.ICompositionAnimationBase) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  Windows.UI.Composition.ICompositionAnimationBase) _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase))this).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	Windows.UI.Composition.ICompositionAnimationBase value)
	{
		bool _ret;
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase))this).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase))this).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Foundation.Collections.IMap!(HSTRING, Windows.UI.Composition.ICompositionAnimationBase))this).abi_Clear());
	}
}

interface InsetClip : Windows.UI.Composition.CompositionClip, Windows.UI.Composition.IInsetClip
{
extern(Windows):
	final float BottomInset()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IInsetClip)this.asInterface(uuid("1e73e647-84c7-477a-b474-5880e0442e15"))).get_BottomInset(&_ret));
		return _ret;
	}
	final void BottomInset(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IInsetClip)this.asInterface(uuid("1e73e647-84c7-477a-b474-5880e0442e15"))).set_BottomInset(value));
	}
	final float LeftInset()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IInsetClip)this.asInterface(uuid("1e73e647-84c7-477a-b474-5880e0442e15"))).get_LeftInset(&_ret));
		return _ret;
	}
	final void LeftInset(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IInsetClip)this.asInterface(uuid("1e73e647-84c7-477a-b474-5880e0442e15"))).set_LeftInset(value));
	}
	final float RightInset()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IInsetClip)this.asInterface(uuid("1e73e647-84c7-477a-b474-5880e0442e15"))).get_RightInset(&_ret));
		return _ret;
	}
	final void RightInset(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IInsetClip)this.asInterface(uuid("1e73e647-84c7-477a-b474-5880e0442e15"))).set_RightInset(value));
	}
	final float TopInset()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IInsetClip)this.asInterface(uuid("1e73e647-84c7-477a-b474-5880e0442e15"))).get_TopInset(&_ret));
		return _ret;
	}
	final void TopInset(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IInsetClip)this.asInterface(uuid("1e73e647-84c7-477a-b474-5880e0442e15"))).set_TopInset(value));
	}
}

interface KeyFrameAnimation : Windows.UI.Composition.CompositionAnimation, Windows.UI.Composition.IKeyFrameAnimation, Windows.UI.Composition.IKeyFrameAnimation2, Windows.UI.Composition.IKeyFrameAnimation3
{
extern(Windows):
	final Windows.Foundation.TimeSpan DelayTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_DelayTime(&_ret));
		return _ret;
	}
	final void DelayTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).set_DelayTime(value));
	}
	final Windows.Foundation.TimeSpan Duration()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_Duration(&_ret));
		return _ret;
	}
	final void Duration(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).set_Duration(value));
	}
	final Windows.UI.Composition.AnimationIterationBehavior IterationBehavior()
	{
		Windows.UI.Composition.AnimationIterationBehavior _ret;
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_IterationBehavior(&_ret));
		return _ret;
	}
	final void IterationBehavior(Windows.UI.Composition.AnimationIterationBehavior value)
	{
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).set_IterationBehavior(value));
	}
	final INT32 IterationCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_IterationCount(&_ret));
		return _ret;
	}
	final void IterationCount(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).set_IterationCount(value));
	}
	final INT32 KeyFrameCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_KeyFrameCount(&_ret));
		return _ret;
	}
	final Windows.UI.Composition.AnimationStopBehavior StopBehavior()
	{
		Windows.UI.Composition.AnimationStopBehavior _ret;
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_StopBehavior(&_ret));
		return _ret;
	}
	final void StopBehavior(Windows.UI.Composition.AnimationStopBehavior value)
	{
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).set_StopBehavior(value));
	}
	final void InsertExpressionKeyFrame(float normalizedProgressKey, HSTRING value)
	{
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).abi_InsertExpressionKeyFrame(normalizedProgressKey, value));
	}
	final void InsertExpressionKeyFrame(float normalizedProgressKey, HSTRING value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation)this.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).abi_InsertExpressionKeyFrame(normalizedProgressKey, value, easingFunction));
	}
	final Windows.UI.Composition.AnimationDirection Direction()
	{
		Windows.UI.Composition.AnimationDirection _ret;
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation2)this.asInterface(uuid("f4b488bb-2940-4ec0-a41a-eb6d801a2f18"))).get_Direction(&_ret));
		return _ret;
	}
	final void Direction(Windows.UI.Composition.AnimationDirection value)
	{
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation2)this.asInterface(uuid("f4b488bb-2940-4ec0-a41a-eb6d801a2f18"))).set_Direction(value));
	}
	final Windows.UI.Composition.AnimationDelayBehavior DelayBehavior()
	{
		Windows.UI.Composition.AnimationDelayBehavior _ret;
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation3)this.asInterface(uuid("845bf0b4-d8de-462f-8753-c80d43c6ff5a"))).get_DelayBehavior(&_ret));
		return _ret;
	}
	final void DelayBehavior(Windows.UI.Composition.AnimationDelayBehavior value)
	{
		Debug.OK((cast(Windows.UI.Composition.IKeyFrameAnimation3)this.asInterface(uuid("845bf0b4-d8de-462f-8753-c80d43c6ff5a"))).set_DelayBehavior(value));
	}
}
@makable!(KeyFrameAnimation, KeyFrameAnimation, Windows.UI.Composition.IKeyFrameAnimationFactory)
class KeyFrameAnimationT(Base) : AgileObject!Base, KeyFrameAnimation
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_DelayTime(Windows.Foundation.TimeSpan* return_value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_DelayTime(return_value); }
	override HRESULT set_DelayTime(Windows.Foundation.TimeSpan value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).set_DelayTime(value); }
	override HRESULT get_Duration(Windows.Foundation.TimeSpan* return_value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_Duration(return_value); }
	override HRESULT set_Duration(Windows.Foundation.TimeSpan value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).set_Duration(value); }
	override HRESULT get_IterationBehavior(Windows.UI.Composition.AnimationIterationBehavior* return_value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_IterationBehavior(return_value); }
	override HRESULT set_IterationBehavior(Windows.UI.Composition.AnimationIterationBehavior value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).set_IterationBehavior(value); }
	override HRESULT get_IterationCount(INT32* return_value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_IterationCount(return_value); }
	override HRESULT set_IterationCount(INT32 value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).set_IterationCount(value); }
	override HRESULT get_KeyFrameCount(INT32* return_value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_KeyFrameCount(return_value); }
	override HRESULT get_StopBehavior(Windows.UI.Composition.AnimationStopBehavior* return_value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).get_StopBehavior(return_value); }
	override HRESULT set_StopBehavior(Windows.UI.Composition.AnimationStopBehavior value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).set_StopBehavior(value); }
	override HRESULT abi_InsertExpressionKeyFrame(float normalizedProgressKey, HSTRING value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).abi_InsertExpressionKeyFrame(normalizedProgressKey, value); }
	override HRESULT abi_InsertExpressionKeyFrame(float normalizedProgressKey, HSTRING value, Windows.UI.Composition.CompositionEasingFunction easingFunction) { return (cast(Windows.UI.Composition.IKeyFrameAnimation)m_inner.asInterface(uuid("126e7f22-3ae9-4540-9a8a-deae8a4a4a84"))).abi_InsertExpressionKeyFrame(normalizedProgressKey, value, easingFunction); }

	override HRESULT get_Direction(Windows.UI.Composition.AnimationDirection* return_value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation2)m_inner.asInterface(uuid("f4b488bb-2940-4ec0-a41a-eb6d801a2f18"))).get_Direction(return_value); }
	override HRESULT set_Direction(Windows.UI.Composition.AnimationDirection value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation2)m_inner.asInterface(uuid("f4b488bb-2940-4ec0-a41a-eb6d801a2f18"))).set_Direction(value); }

	override HRESULT get_DelayBehavior(Windows.UI.Composition.AnimationDelayBehavior* return_value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation3)m_inner.asInterface(uuid("845bf0b4-d8de-462f-8753-c80d43c6ff5a"))).get_DelayBehavior(return_value); }
	override HRESULT set_DelayBehavior(Windows.UI.Composition.AnimationDelayBehavior value) { return (cast(Windows.UI.Composition.IKeyFrameAnimation3)m_inner.asInterface(uuid("845bf0b4-d8de-462f-8753-c80d43c6ff5a"))).set_DelayBehavior(value); }

	override HRESULT abi_ClearAllParameters() { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_ClearAllParameters(); }
	override HRESULT abi_ClearParameter(HSTRING key) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_ClearParameter(key); }
	override HRESULT abi_SetColorParameter(HSTRING key, Windows.UI.Color value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetColorParameter(key, value); }
	override HRESULT abi_SetMatrix3x2Parameter(HSTRING key, Windows.Foundation.Numerics.Matrix3x2 value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetMatrix3x2Parameter(key, value); }
	override HRESULT abi_SetMatrix4x4Parameter(HSTRING key, Windows.Foundation.Numerics.Matrix4x4 value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetMatrix4x4Parameter(key, value); }
	override HRESULT abi_SetQuaternionParameter(HSTRING key, Windows.Foundation.Numerics.Quaternion value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetQuaternionParameter(key, value); }
	override HRESULT abi_SetReferenceParameter(HSTRING key, Windows.UI.Composition.CompositionObject compositionObject) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetReferenceParameter(key, compositionObject); }
	override HRESULT abi_SetScalarParameter(HSTRING key, float value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetScalarParameter(key, value); }
	override HRESULT abi_SetVector2Parameter(HSTRING key, Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetVector2Parameter(key, value); }
	override HRESULT abi_SetVector3Parameter(HSTRING key, Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetVector3Parameter(key, value); }
	override HRESULT abi_SetVector4Parameter(HSTRING key, Windows.Foundation.Numerics.Vector4 value) { return (cast(Windows.UI.Composition.ICompositionAnimation)m_inner.asInterface(uuid("464c4c2c-1caa-4061-9b40-e13fde1503ca"))).abi_SetVector4Parameter(key, value); }

	override HRESULT abi_SetBooleanParameter(HSTRING key, bool value) { return (cast(Windows.UI.Composition.ICompositionAnimation2)m_inner.asInterface(uuid("369b603e-a80f-4948-93e3-ed23fb38c6cb"))).abi_SetBooleanParameter(key, value); }
	override HRESULT get_Target(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionAnimation2)m_inner.asInterface(uuid("369b603e-a80f-4948-93e3-ed23fb38c6cb"))).get_Target(return_value); }
	override HRESULT set_Target(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionAnimation2)m_inner.asInterface(uuid("369b603e-a80f-4948-93e3-ed23fb38c6cb"))).set_Target(value); }

	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface LayerVisual : Windows.UI.Composition.ContainerVisual, Windows.UI.Composition.ILayerVisual
{
extern(Windows):
	final Windows.UI.Composition.CompositionEffectBrush Effect()
	{
		Windows.UI.Composition.CompositionEffectBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ILayerVisual)this.asInterface(uuid("af843985-0444-4887-8e83-b40b253f822c"))).get_Effect(&_ret));
		return _ret;
	}
	final void Effect(Windows.UI.Composition.CompositionEffectBrush value)
	{
		Debug.OK((cast(Windows.UI.Composition.ILayerVisual)this.asInterface(uuid("af843985-0444-4887-8e83-b40b253f822c"))).set_Effect(value));
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
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).get_Color(&_ret));
		return _ret;
	}
	final void Color(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).set_Color(value));
	}
	final float ConstantAttenuation()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).get_ConstantAttenuation(&_ret));
		return _ret;
	}
	final void ConstantAttenuation(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).set_ConstantAttenuation(value));
	}
	final Windows.UI.Composition.Visual CoordinateSpace()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).get_CoordinateSpace(&_ret));
		return _ret;
	}
	final void CoordinateSpace(Windows.UI.Composition.Visual value)
	{
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).set_CoordinateSpace(value));
	}
	final float LinearAttenuation()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).get_LinearAttenuation(&_ret));
		return _ret;
	}
	final void LinearAttenuation(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).set_LinearAttenuation(value));
	}
	final Windows.Foundation.Numerics.Vector3 Offset()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).set_Offset(value));
	}
	final float QuadraticAttenuation()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).get_QuadraticAttenuation(&_ret));
		return _ret;
	}
	final void QuadraticAttenuation(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IPointLight)this.asInterface(uuid("b18545b3-0c5a-4ab0-bedc-4f3546948272"))).set_QuadraticAttenuation(value));
	}
}

interface QuaternionKeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IQuaternionKeyFrameAnimation
{
extern(Windows):
	final void InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK((cast(Windows.UI.Composition.IQuaternionKeyFrameAnimation)this.asInterface(uuid("404e5835-ecf6-4240-8520-671279cf36bc"))).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Quaternion value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK((cast(Windows.UI.Composition.IQuaternionKeyFrameAnimation)this.asInterface(uuid("404e5835-ecf6-4240-8520-671279cf36bc"))).abi_InsertKeyFrame(normalizedProgressKey, value, easingFunction));
	}
}

interface RenderingDeviceReplacedEventArgs : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.IRenderingDeviceReplacedEventArgs
{
extern(Windows):
	final Windows.UI.Composition.CompositionGraphicsDevice GraphicsDevice()
	{
		Windows.UI.Composition.CompositionGraphicsDevice _ret;
		Debug.OK((cast(Windows.UI.Composition.IRenderingDeviceReplacedEventArgs)this.asInterface(uuid("3a31ac7d-28bf-4e7a-8524-71679d480f38"))).get_GraphicsDevice(&_ret));
		return _ret;
	}
}

interface ScalarKeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IScalarKeyFrameAnimation
{
extern(Windows):
	final void InsertKeyFrame(float normalizedProgressKey, float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IScalarKeyFrameAnimation)this.asInterface(uuid("ae288fa9-252c-4b95-a725-bf85e38000a1"))).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrame(float normalizedProgressKey, float value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK((cast(Windows.UI.Composition.IScalarKeyFrameAnimation)this.asInterface(uuid("ae288fa9-252c-4b95-a725-bf85e38000a1"))).abi_InsertKeyFrame(normalizedProgressKey, value, easingFunction));
	}
}

interface SpotLight : Windows.UI.Composition.CompositionLight, Windows.UI.Composition.ISpotLight
{
extern(Windows):
	final float ConstantAttenuation()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_ConstantAttenuation(&_ret));
		return _ret;
	}
	final void ConstantAttenuation(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_ConstantAttenuation(value));
	}
	final Windows.UI.Composition.Visual CoordinateSpace()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_CoordinateSpace(&_ret));
		return _ret;
	}
	final void CoordinateSpace(Windows.UI.Composition.Visual value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_CoordinateSpace(value));
	}
	final Windows.Foundation.Numerics.Vector3 Direction()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_Direction(&_ret));
		return _ret;
	}
	final void Direction(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_Direction(value));
	}
	final float InnerConeAngle()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_InnerConeAngle(&_ret));
		return _ret;
	}
	final void InnerConeAngle(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_InnerConeAngle(value));
	}
	final float InnerConeAngleInDegrees()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_InnerConeAngleInDegrees(&_ret));
		return _ret;
	}
	final void InnerConeAngleInDegrees(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_InnerConeAngleInDegrees(value));
	}
	final Windows.UI.Color InnerConeColor()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_InnerConeColor(&_ret));
		return _ret;
	}
	final void InnerConeColor(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_InnerConeColor(value));
	}
	final float LinearAttenuation()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_LinearAttenuation(&_ret));
		return _ret;
	}
	final void LinearAttenuation(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_LinearAttenuation(value));
	}
	final Windows.Foundation.Numerics.Vector3 Offset()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_Offset(value));
	}
	final float OuterConeAngle()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_OuterConeAngle(&_ret));
		return _ret;
	}
	final void OuterConeAngle(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_OuterConeAngle(value));
	}
	final float OuterConeAngleInDegrees()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_OuterConeAngleInDegrees(&_ret));
		return _ret;
	}
	final void OuterConeAngleInDegrees(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_OuterConeAngleInDegrees(value));
	}
	final Windows.UI.Color OuterConeColor()
	{
		Windows.UI.Color _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_OuterConeColor(&_ret));
		return _ret;
	}
	final void OuterConeColor(Windows.UI.Color value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_OuterConeColor(value));
	}
	final float QuadraticAttenuation()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).get_QuadraticAttenuation(&_ret));
		return _ret;
	}
	final void QuadraticAttenuation(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpotLight)this.asInterface(uuid("5a9fe273-44a1-4f95-a422-8fa5116bdb44"))).set_QuadraticAttenuation(value));
	}
}

interface SpriteVisual : Windows.UI.Composition.ContainerVisual, Windows.UI.Composition.ISpriteVisual, Windows.UI.Composition.ISpriteVisual2
{
extern(Windows):
	final Windows.UI.Composition.CompositionBrush Brush()
	{
		Windows.UI.Composition.CompositionBrush _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpriteVisual)this.asInterface(uuid("08e05581-1ad1-4f97-9757-402d76e4233b"))).get_Brush(&_ret));
		return _ret;
	}
	final void Brush(Windows.UI.Composition.CompositionBrush value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpriteVisual)this.asInterface(uuid("08e05581-1ad1-4f97-9757-402d76e4233b"))).set_Brush(value));
	}
	final Windows.UI.Composition.CompositionShadow Shadow()
	{
		Windows.UI.Composition.CompositionShadow _ret;
		Debug.OK((cast(Windows.UI.Composition.ISpriteVisual2)this.asInterface(uuid("588c9664-997a-4850-91fe-53cb58f81ce9"))).get_Shadow(&_ret));
		return _ret;
	}
	final void Shadow(Windows.UI.Composition.CompositionShadow value)
	{
		Debug.OK((cast(Windows.UI.Composition.ISpriteVisual2)this.asInterface(uuid("588c9664-997a-4850-91fe-53cb58f81ce9"))).set_Shadow(value));
	}
}

interface StepEasingFunction : Windows.UI.Composition.CompositionEasingFunction, Windows.UI.Composition.IStepEasingFunction
{
extern(Windows):
	final INT32 FinalStep()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.IStepEasingFunction)this.asInterface(uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6"))).get_FinalStep(&_ret));
		return _ret;
	}
	final void FinalStep(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IStepEasingFunction)this.asInterface(uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6"))).set_FinalStep(value));
	}
	final INT32 InitialStep()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.IStepEasingFunction)this.asInterface(uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6"))).get_InitialStep(&_ret));
		return _ret;
	}
	final void InitialStep(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IStepEasingFunction)this.asInterface(uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6"))).set_InitialStep(value));
	}
	final bool IsFinalStepSingleFrame()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.IStepEasingFunction)this.asInterface(uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6"))).get_IsFinalStepSingleFrame(&_ret));
		return _ret;
	}
	final void IsFinalStepSingleFrame(bool value)
	{
		Debug.OK((cast(Windows.UI.Composition.IStepEasingFunction)this.asInterface(uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6"))).set_IsFinalStepSingleFrame(value));
	}
	final bool IsInitialStepSingleFrame()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.IStepEasingFunction)this.asInterface(uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6"))).get_IsInitialStepSingleFrame(&_ret));
		return _ret;
	}
	final void IsInitialStepSingleFrame(bool value)
	{
		Debug.OK((cast(Windows.UI.Composition.IStepEasingFunction)this.asInterface(uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6"))).set_IsInitialStepSingleFrame(value));
	}
	final INT32 StepCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.IStepEasingFunction)this.asInterface(uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6"))).get_StepCount(&_ret));
		return _ret;
	}
	final void StepCount(INT32 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IStepEasingFunction)this.asInterface(uuid("d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6"))).set_StepCount(value));
	}
}

interface Vector2KeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IVector2KeyFrameAnimation
{
extern(Windows):
	final void InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVector2KeyFrameAnimation)this.asInterface(uuid("df414515-4e29-4f11-b55e-bf2a6eb36294"))).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector2 value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK((cast(Windows.UI.Composition.IVector2KeyFrameAnimation)this.asInterface(uuid("df414515-4e29-4f11-b55e-bf2a6eb36294"))).abi_InsertKeyFrame(normalizedProgressKey, value, easingFunction));
	}
}

interface Vector3KeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IVector3KeyFrameAnimation
{
extern(Windows):
	final void InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVector3KeyFrameAnimation)this.asInterface(uuid("c8039daa-a281-43c2-a73d-b68e3c533c40"))).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector3 value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK((cast(Windows.UI.Composition.IVector3KeyFrameAnimation)this.asInterface(uuid("c8039daa-a281-43c2-a73d-b68e3c533c40"))).abi_InsertKeyFrame(normalizedProgressKey, value, easingFunction));
	}
}

interface Vector4KeyFrameAnimation : Windows.UI.Composition.KeyFrameAnimation, Windows.UI.Composition.IVector4KeyFrameAnimation
{
extern(Windows):
	final void InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector4 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVector4KeyFrameAnimation)this.asInterface(uuid("2457945b-addd-4385-9606-b6a3d5e4e1b9"))).abi_InsertKeyFrame(normalizedProgressKey, value));
	}
	final void InsertKeyFrame(float normalizedProgressKey, Windows.Foundation.Numerics.Vector4 value, Windows.UI.Composition.CompositionEasingFunction easingFunction)
	{
		Debug.OK((cast(Windows.UI.Composition.IVector4KeyFrameAnimation)this.asInterface(uuid("2457945b-addd-4385-9606-b6a3d5e4e1b9"))).abi_InsertKeyFrame(normalizedProgressKey, value, easingFunction));
	}
}

interface Visual : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.IVisual, Windows.UI.Composition.IVisual2
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector2 AnchorPoint()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_AnchorPoint(&_ret));
		return _ret;
	}
	final void AnchorPoint(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_AnchorPoint(value));
	}
	final Windows.UI.Composition.CompositionBackfaceVisibility BackfaceVisibility()
	{
		Windows.UI.Composition.CompositionBackfaceVisibility _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_BackfaceVisibility(&_ret));
		return _ret;
	}
	final void BackfaceVisibility(Windows.UI.Composition.CompositionBackfaceVisibility value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_BackfaceVisibility(value));
	}
	final Windows.UI.Composition.CompositionBorderMode BorderMode()
	{
		Windows.UI.Composition.CompositionBorderMode _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_BorderMode(&_ret));
		return _ret;
	}
	final void BorderMode(Windows.UI.Composition.CompositionBorderMode value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_BorderMode(value));
	}
	final Windows.Foundation.Numerics.Vector3 CenterPoint()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_CenterPoint(&_ret));
		return _ret;
	}
	final void CenterPoint(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_CenterPoint(value));
	}
	final Windows.UI.Composition.CompositionClip Clip()
	{
		Windows.UI.Composition.CompositionClip _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Clip(&_ret));
		return _ret;
	}
	final void Clip(Windows.UI.Composition.CompositionClip value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Clip(value));
	}
	final Windows.UI.Composition.CompositionCompositeMode CompositeMode()
	{
		Windows.UI.Composition.CompositionCompositeMode _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_CompositeMode(&_ret));
		return _ret;
	}
	final void CompositeMode(Windows.UI.Composition.CompositionCompositeMode value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_CompositeMode(value));
	}
	final bool IsVisible()
	{
		bool _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_IsVisible(&_ret));
		return _ret;
	}
	final void IsVisible(bool value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_IsVisible(value));
	}
	final Windows.Foundation.Numerics.Vector3 Offset()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Offset(&_ret));
		return _ret;
	}
	final void Offset(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Offset(value));
	}
	final float Opacity()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Opacity(&_ret));
		return _ret;
	}
	final void Opacity(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Opacity(value));
	}
	final Windows.Foundation.Numerics.Quaternion Orientation()
	{
		Windows.Foundation.Numerics.Quaternion _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Orientation(&_ret));
		return _ret;
	}
	final void Orientation(Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Orientation(value));
	}
	final Windows.UI.Composition.ContainerVisual Parent()
	{
		Windows.UI.Composition.ContainerVisual _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Parent(&_ret));
		return _ret;
	}
	final float RotationAngle()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_RotationAngle(&_ret));
		return _ret;
	}
	final void RotationAngle(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_RotationAngle(value));
	}
	final float RotationAngleInDegrees()
	{
		float _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_RotationAngleInDegrees(&_ret));
		return _ret;
	}
	final void RotationAngleInDegrees(float value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_RotationAngleInDegrees(value));
	}
	final Windows.Foundation.Numerics.Vector3 RotationAxis()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_RotationAxis(&_ret));
		return _ret;
	}
	final void RotationAxis(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_RotationAxis(value));
	}
	final Windows.Foundation.Numerics.Vector3 Scale()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Scale(&_ret));
		return _ret;
	}
	final void Scale(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Scale(value));
	}
	final Windows.Foundation.Numerics.Vector2 Size()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Size(&_ret));
		return _ret;
	}
	final void Size(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Size(value));
	}
	final Windows.Foundation.Numerics.Matrix4x4 TransformMatrix()
	{
		Windows.Foundation.Numerics.Matrix4x4 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_TransformMatrix(&_ret));
		return _ret;
	}
	final void TransformMatrix(Windows.Foundation.Numerics.Matrix4x4 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual)this.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_TransformMatrix(value));
	}
	final Windows.UI.Composition.Visual ParentForTransform()
	{
		Windows.UI.Composition.Visual _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual2)this.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).get_ParentForTransform(&_ret));
		return _ret;
	}
	final void ParentForTransform(Windows.UI.Composition.Visual value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual2)this.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).set_ParentForTransform(value));
	}
	final Windows.Foundation.Numerics.Vector3 RelativeOffsetAdjustment()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual2)this.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).get_RelativeOffsetAdjustment(&_ret));
		return _ret;
	}
	final void RelativeOffsetAdjustment(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual2)this.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).set_RelativeOffsetAdjustment(value));
	}
	final Windows.Foundation.Numerics.Vector2 RelativeSizeAdjustment()
	{
		Windows.Foundation.Numerics.Vector2 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisual2)this.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).get_RelativeSizeAdjustment(&_ret));
		return _ret;
	}
	final void RelativeSizeAdjustment(Windows.Foundation.Numerics.Vector2 value)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisual2)this.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).set_RelativeSizeAdjustment(value));
	}
}
@makable!(Visual, Visual, Windows.UI.Composition.IVisualFactory)
class VisualT(Base) : AgileObject!Base, Visual
{
	override HRESULT QueryInterface(const(IID)* riid, void** ppv)
	{
		auto ret = super.QueryInterface(riid, ppv);
		if (ret == E_NOINTERFACE)
			return m_inner.QueryInterface(riid, ppv);
		return ret;
	}
	override HRESULT get_AnchorPoint(Windows.Foundation.Numerics.Vector2* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_AnchorPoint(return_value); }
	override HRESULT set_AnchorPoint(Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_AnchorPoint(value); }
	override HRESULT get_BackfaceVisibility(Windows.UI.Composition.CompositionBackfaceVisibility* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_BackfaceVisibility(return_value); }
	override HRESULT set_BackfaceVisibility(Windows.UI.Composition.CompositionBackfaceVisibility value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_BackfaceVisibility(value); }
	override HRESULT get_BorderMode(Windows.UI.Composition.CompositionBorderMode* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_BorderMode(return_value); }
	override HRESULT set_BorderMode(Windows.UI.Composition.CompositionBorderMode value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_BorderMode(value); }
	override HRESULT get_CenterPoint(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_CenterPoint(return_value); }
	override HRESULT set_CenterPoint(Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_CenterPoint(value); }
	override HRESULT get_Clip(Windows.UI.Composition.CompositionClip* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Clip(return_value); }
	override HRESULT set_Clip(Windows.UI.Composition.CompositionClip value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Clip(value); }
	override HRESULT get_CompositeMode(Windows.UI.Composition.CompositionCompositeMode* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_CompositeMode(return_value); }
	override HRESULT set_CompositeMode(Windows.UI.Composition.CompositionCompositeMode value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_CompositeMode(value); }
	override HRESULT get_IsVisible(bool* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_IsVisible(return_value); }
	override HRESULT set_IsVisible(bool value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_IsVisible(value); }
	override HRESULT get_Offset(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Offset(return_value); }
	override HRESULT set_Offset(Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Offset(value); }
	override HRESULT get_Opacity(float* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Opacity(return_value); }
	override HRESULT set_Opacity(float value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Opacity(value); }
	override HRESULT get_Orientation(Windows.Foundation.Numerics.Quaternion* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Orientation(return_value); }
	override HRESULT set_Orientation(Windows.Foundation.Numerics.Quaternion value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Orientation(value); }
	override HRESULT get_Parent(Windows.UI.Composition.ContainerVisual* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Parent(return_value); }
	override HRESULT get_RotationAngle(float* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_RotationAngle(return_value); }
	override HRESULT set_RotationAngle(float value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_RotationAngle(value); }
	override HRESULT get_RotationAngleInDegrees(float* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_RotationAngleInDegrees(return_value); }
	override HRESULT set_RotationAngleInDegrees(float value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_RotationAngleInDegrees(value); }
	override HRESULT get_RotationAxis(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_RotationAxis(return_value); }
	override HRESULT set_RotationAxis(Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_RotationAxis(value); }
	override HRESULT get_Scale(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Scale(return_value); }
	override HRESULT set_Scale(Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Scale(value); }
	override HRESULT get_Size(Windows.Foundation.Numerics.Vector2* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_Size(return_value); }
	override HRESULT set_Size(Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_Size(value); }
	override HRESULT get_TransformMatrix(Windows.Foundation.Numerics.Matrix4x4* return_value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).get_TransformMatrix(return_value); }
	override HRESULT set_TransformMatrix(Windows.Foundation.Numerics.Matrix4x4 value) { return (cast(Windows.UI.Composition.IVisual)m_inner.asInterface(uuid("117e202d-a859-4c89-873b-c2aa566788e3"))).set_TransformMatrix(value); }

	override HRESULT get_ParentForTransform(Windows.UI.Composition.Visual* return_value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).get_ParentForTransform(return_value); }
	override HRESULT set_ParentForTransform(Windows.UI.Composition.Visual value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).set_ParentForTransform(value); }
	override HRESULT get_RelativeOffsetAdjustment(Windows.Foundation.Numerics.Vector3* return_value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).get_RelativeOffsetAdjustment(return_value); }
	override HRESULT set_RelativeOffsetAdjustment(Windows.Foundation.Numerics.Vector3 value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).set_RelativeOffsetAdjustment(value); }
	override HRESULT get_RelativeSizeAdjustment(Windows.Foundation.Numerics.Vector2* return_value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).get_RelativeSizeAdjustment(return_value); }
	override HRESULT set_RelativeSizeAdjustment(Windows.Foundation.Numerics.Vector2 value) { return (cast(Windows.UI.Composition.IVisual2)m_inner.asInterface(uuid("3052b611-56c3-4c3e-8bf3-f6e1ad473f06"))).set_RelativeSizeAdjustment(value); }

	override HRESULT get_Compositor(Windows.UI.Composition.Compositor* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Compositor(return_value); }
	override HRESULT get_Dispatcher(Windows.UI.Core.CoreDispatcher* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Dispatcher(return_value); }
	override HRESULT get_Properties(Windows.UI.Composition.CompositionPropertySet* return_value) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).get_Properties(return_value); }
	override HRESULT abi_StartAnimation(HSTRING propertyName, Windows.UI.Composition.CompositionAnimation animation) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StartAnimation(propertyName, animation); }
	override HRESULT abi_StopAnimation(HSTRING propertyName) { return (cast(Windows.UI.Composition.ICompositionObject)m_inner.asInterface(uuid("bcb4ad45-7609-4550-934f-16002a68fded"))).abi_StopAnimation(propertyName); }

	override HRESULT abi_Close() { return (cast(Windows.Foundation.IClosable)m_inner.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close(); }

	override HRESULT get_Comment(HSTRING* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_Comment(return_value); }
	override HRESULT set_Comment(HSTRING value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_Comment(value); }
	override HRESULT get_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection* return_value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).get_ImplicitAnimations(return_value); }
	override HRESULT set_ImplicitAnimations(Windows.UI.Composition.ImplicitAnimationCollection value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).set_ImplicitAnimations(value); }
	override HRESULT abi_StartAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StartAnimationGroup(value); }
	override HRESULT abi_StopAnimationGroup(Windows.UI.Composition.ICompositionAnimationBase value) { return (cast(Windows.UI.Composition.ICompositionObject2)m_inner.asInterface(uuid("ef874ea1-5cff-4b68-9e30-a1519d08ba03"))).abi_StopAnimationGroup(value); }

	this() {}
	IInspectable m_inner;
}

interface VisualCollection : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.IVisualCollection, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Visual)
{
extern(Windows):
	final INT32 Count()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisualCollection)this.asInterface(uuid("8b745505-fd3e-4a98-84a8-e949468c6bcb"))).get_Count(&_ret));
		return _ret;
	}
	final void InsertAbove(Windows.UI.Composition.Visual newChild, Windows.UI.Composition.Visual sibling)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisualCollection)this.asInterface(uuid("8b745505-fd3e-4a98-84a8-e949468c6bcb"))).abi_InsertAbove(newChild, sibling));
	}
	final void InsertAtBottom(Windows.UI.Composition.Visual newChild)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisualCollection)this.asInterface(uuid("8b745505-fd3e-4a98-84a8-e949468c6bcb"))).abi_InsertAtBottom(newChild));
	}
	final void InsertAtTop(Windows.UI.Composition.Visual newChild)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisualCollection)this.asInterface(uuid("8b745505-fd3e-4a98-84a8-e949468c6bcb"))).abi_InsertAtTop(newChild));
	}
	final void InsertBelow(Windows.UI.Composition.Visual newChild, Windows.UI.Composition.Visual sibling)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisualCollection)this.asInterface(uuid("8b745505-fd3e-4a98-84a8-e949468c6bcb"))).abi_InsertBelow(newChild, sibling));
	}
	final void Remove(Windows.UI.Composition.Visual child)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisualCollection)this.asInterface(uuid("8b745505-fd3e-4a98-84a8-e949468c6bcb"))).abi_Remove(child));
	}
	final void RemoveAll()
	{
		Debug.OK((cast(Windows.UI.Composition.IVisualCollection)this.asInterface(uuid("8b745505-fd3e-4a98-84a8-e949468c6bcb"))).abi_RemoveAll());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Composition.Visual)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Visual))this).abi_First(out_first));
	}
}

interface VisualUnorderedCollection : Windows.UI.Composition.CompositionObject, Windows.UI.Composition.IVisualUnorderedCollection, Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Visual)
{
extern(Windows):
	final INT32 Count()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.UI.Composition.IVisualUnorderedCollection)this.asInterface(uuid("338faa70-54c8-40a7-8029-c9ceeb0aa250"))).get_Count(&_ret));
		return _ret;
	}
	final void Add(Windows.UI.Composition.Visual newVisual)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisualUnorderedCollection)this.asInterface(uuid("338faa70-54c8-40a7-8029-c9ceeb0aa250"))).abi_Add(newVisual));
	}
	final void Remove(Windows.UI.Composition.Visual visual)
	{
		Debug.OK((cast(Windows.UI.Composition.IVisualUnorderedCollection)this.asInterface(uuid("338faa70-54c8-40a7-8029-c9ceeb0aa250"))).abi_Remove(visual));
	}
	final void RemoveAll()
	{
		Debug.OK((cast(Windows.UI.Composition.IVisualUnorderedCollection)this.asInterface(uuid("338faa70-54c8-40a7-8029-c9ceeb0aa250"))).abi_RemoveAll());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.UI.Composition.Visual)* out_first)
	{
		Debug.OK((cast(Windows.Foundation.Collections.IIterable!(Windows.UI.Composition.Visual))this).abi_First(out_first));
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