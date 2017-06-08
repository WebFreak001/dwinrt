module Windows.ApplicationModel.DataTransfer.DragDrop.Core;

import dwinrt;

@uuid("7d56d344-8464-4faf-aa49-37ea6e2d7bd1")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager")
interface ICoreDragDropManager : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT add_TargetRequested(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager, Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDropOperationTargetRequestedEventArgs) value, EventRegistrationToken* return_returnValue);
	HRESULT remove_TargetRequested(EventRegistrationToken value);
	HRESULT get_AreConcurrentOperationsEnabled(bool* return_value);
	HRESULT set_AreConcurrentOperationsEnabled(bool value);
}

@uuid("9542fdca-da12-4c1c-8d06-041db29733c3")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager")
interface ICoreDragDropManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragDropManager* return_value);
}

@uuid("48353a8b-cb50-464e-9575-cd4e3a7ab028")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo")
interface ICoreDragInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackageView* return_value);
	HRESULT get_Modifiers(Windows.ApplicationModel.DataTransfer.DragDrop.DragDropModifiers* return_value);
	HRESULT get_Position(Windows.Foundation.Point* return_value);
}

@uuid("c54691e5-e6fb-4d74-b4b1-8a3c17f25e9e")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo")
interface ICoreDragInfo2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
}

@uuid("cc06de4f-6db0-4e62-ab1b-a74a02dc6d85")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragOperation")
interface ICoreDragOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Data(Windows.ApplicationModel.DataTransfer.DataPackage* return_value);
	HRESULT abi_SetPointerId(UINT32 pointerId);
	HRESULT abi_SetDragUIContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap);
	HRESULT abi_SetDragUIContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint);
	HRESULT get_DragUIContentMode(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIContentMode* return_value);
	HRESULT set_DragUIContentMode(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIContentMode value);
	HRESULT abi_StartAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_value);
}

@uuid("824b1e2c-d99a-4fc3-8507-6c182f33b46a")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragOperation")
interface ICoreDragOperation2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation* return_value);
	HRESULT set_AllowedOperations(Windows.ApplicationModel.DataTransfer.DataPackageOperation value);
}

@uuid("89a85064-3389-4f4f-8897-7e8a3ffb3c93")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIOverride")
interface ICoreDragUIOverride : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetContentFromSoftwareBitmap(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap);
	HRESULT abi_SetContentFromSoftwareBitmapWithAnchorPoint(Windows.Graphics.Imaging.SoftwareBitmap softwareBitmap, Windows.Foundation.Point anchorPoint);
	HRESULT get_IsContentVisible(bool* return_value);
	HRESULT set_IsContentVisible(bool value);
	HRESULT get_Caption(HSTRING* return_value);
	HRESULT set_Caption(HSTRING value);
	HRESULT get_IsCaptionVisible(bool* return_value);
	HRESULT set_IsCaptionVisible(bool value);
	HRESULT get_IsGlyphVisible(bool* return_value);
	HRESULT set_IsGlyphVisible(bool value);
	HRESULT abi_Clear();
}

@uuid("d9126196-4c5b-417d-bb37-76381def8db4")
interface ICoreDropOperationTarget : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_EnterAsync(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo dragInfo, Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIOverride dragUIOverride, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue);
	HRESULT abi_OverAsync(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo dragInfo, Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragUIOverride dragUIOverride, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue);
	HRESULT abi_LeaveAsync(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo dragInfo, Windows.Foundation.IAsyncAction* return_returnValue);
	HRESULT abi_DropAsync(Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDragInfo dragInfo, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)* return_returnValue);
}

@uuid("2aca929a-5e28-4ea6-829e-29134e665d6d")
@WinrtFactory("Windows.ApplicationModel.DataTransfer.DragDrop.Core.CoreDropOperationTargetRequestedEventArgs")
interface ICoreDropOperationTargetRequestedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_SetTarget(Windows.ApplicationModel.DataTransfer.DragDrop.Core.ICoreDropOperationTarget target);
}

interface CoreDragDropManager
{
}

interface CoreDragInfo
{
}

interface CoreDragOperation
{
}

interface CoreDragUIOverride
{
}

interface CoreDropOperationTargetRequestedEventArgs
{
}

@bitflags
enum CoreDragUIContentMode
{
	Auto = 0x0,
	Deferred = 0x1
}