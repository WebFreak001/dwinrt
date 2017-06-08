module Windows.Graphics.Printing3D;

import dwinrt;

struct Printing3DBufferDescription
{
	Windows.Graphics.Printing3D.Printing3DBufferFormat Format;
	UINT32 Stride;
}

@uuid("e9175e70-c917-46de-bb51-d9a94db3711f")
interface Print3DTaskSourceRequestedHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Graphics.Printing3D.Print3DTaskSourceRequestedArgs args);
}

@uuid("4d2fcb0a-7366-4971-8bd5-17c4e3e8c6c0")
@WinrtFactory("Windows.Graphics.Printing3D.Print3DManager")
interface IPrint3DManager : IInspectable
{
extern(Windows):
	HRESULT add_TaskRequested(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing3D.Print3DManager, Windows.Graphics.Printing3D.Print3DTaskRequestedEventArgs) eventHandler, EventRegistrationToken* return_token);
	HRESULT remove_TaskRequested(EventRegistrationToken token);
}

@uuid("0ef1cafe-a9ad-4c08-a917-1d1f863eabcb")
@WinrtFactory("Windows.Graphics.Printing3D.Print3DManager")
interface IPrint3DManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentView(Windows.Graphics.Printing3D.Print3DManager* return_result);
	HRESULT abi_ShowPrintUIAsync(Windows.Foundation.IAsyncOperation!(bool)* return_result);
}

@uuid("8ce3d080-2118-4c28-80de-f426d70191ae")
@WinrtFactory("Windows.Graphics.Printing3D.Print3DTask")
interface IPrint3DTask : IInspectable
{
extern(Windows):
	HRESULT get_Source(Windows.Graphics.Printing3D.Printing3D3MFPackage* return_value);
	HRESULT add_Submitting(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing3D.Print3DTask, IInspectable) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_Submitting(EventRegistrationToken eventCookie);
	HRESULT add_Completed(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing3D.Print3DTask, Windows.Graphics.Printing3D.Print3DTaskCompletedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_Completed(EventRegistrationToken eventCookie);
	HRESULT add_SourceChanged(Windows.Foundation.TypedEventHandler!(Windows.Graphics.Printing3D.Print3DTask, Windows.Graphics.Printing3D.Print3DTaskSourceChangedEventArgs) eventHandler, EventRegistrationToken* return_eventCookie);
	HRESULT remove_SourceChanged(EventRegistrationToken eventCookie);
}

@uuid("cc1914af-2614-4f1d-accc-d6fc4fda5455")
@WinrtFactory("Windows.Graphics.Printing3D.Print3DTaskCompletedEventArgs")
interface IPrint3DTaskCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Completion(Windows.Graphics.Printing3D.Print3DTaskCompletion* return_value);
	HRESULT get_ExtendedStatus(Windows.Graphics.Printing3D.Print3DTaskDetail* return_value);
}

@uuid("2595c46f-2245-4c5a-8731-0d604dc6bc3c")
@WinrtFactory("Windows.Graphics.Printing3D.Print3DTaskRequest")
interface IPrint3DTaskRequest : IInspectable
{
extern(Windows):
	HRESULT abi_CreateTask(HSTRING title, HSTRING printerId, Windows.Graphics.Printing3D.Print3DTaskSourceRequestedHandler handler, Windows.Graphics.Printing3D.Print3DTask* return_result);
}

@uuid("150cb77f-18c5-40d7-9f40-fab3096e05a9")
@WinrtFactory("Windows.Graphics.Printing3D.Print3DTaskRequestedEventArgs")
interface IPrint3DTaskRequestedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Request(Windows.Graphics.Printing3D.Print3DTaskRequest* return_value);
}

@uuid("5bcd34af-24e9-4c10-8d07-14c346ba3fcf")
@WinrtFactory("Windows.Graphics.Printing3D.Print3DTaskSourceChangedEventArgs")
interface IPrint3DTaskSourceChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Source(Windows.Graphics.Printing3D.Printing3D3MFPackage* return_value);
}

@uuid("c77c9aba-24af-424d-a3bf-92250c355602")
@WinrtFactory("Windows.Graphics.Printing3D.Print3DTaskSourceRequestedArgs")
interface IPrint3DTaskSourceRequestedArgs : IInspectable
{
extern(Windows):
	HRESULT abi_SetSource(Windows.Graphics.Printing3D.Printing3D3MFPackage source);
}

@uuid("f64dd5c8-2ab7-45a9-a1b7-267e948d5b18")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3D3MFPackage")
interface IPrinting3D3MFPackage : IInspectable
{
extern(Windows):
	HRESULT abi_SaveAsync(Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream)* return_operation);
	HRESULT get_PrintTicket(Windows.Storage.Streams.IRandomAccessStream* return_value);
	HRESULT set_PrintTicket(Windows.Storage.Streams.IRandomAccessStream value);
	HRESULT get_ModelPart(Windows.Storage.Streams.IRandomAccessStream* return_value);
	HRESULT set_ModelPart(Windows.Storage.Streams.IRandomAccessStream value);
	HRESULT get_Thumbnail(Windows.Graphics.Printing3D.Printing3DTextureResource* return_value);
	HRESULT set_Thumbnail(Windows.Graphics.Printing3D.Printing3DTextureResource value);
	HRESULT get_Textures(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DTextureResource)* return_value);
	HRESULT abi_LoadModelFromPackageAsync(Windows.Storage.Streams.IRandomAccessStream value, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Printing3D.Printing3DModel)* return_operation);
	HRESULT abi_SaveModelToPackageAsync(Windows.Graphics.Printing3D.Printing3DModel value, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("7058d9af-7a9a-4787-b817-f6f459214823")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3D3MFPackage")
interface IPrinting3D3MFPackageStatics : IInspectable
{
extern(Windows):
	HRESULT abi_LoadAsync(Windows.Storage.Streams.IRandomAccessStream value, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Printing3D.Printing3D3MFPackage)* return_operation);
}

@uuid("d0f0e743-c50c-4bcb-9d04-fc16adcea2c9")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DBaseMaterial")
interface IPrinting3DBaseMaterial : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Color(Windows.Graphics.Printing3D.Printing3DColorMaterial* return_value);
	HRESULT set_Color(Windows.Graphics.Printing3D.Printing3DColorMaterial value);
}

@uuid("94f070b8-2515-4a8d-a1f0-d0fc13d06021")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DBaseMaterialGroup")
interface IPrinting3DBaseMaterialGroup : IInspectable
{
extern(Windows):
	HRESULT get_Bases(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DBaseMaterial)* return_value);
	HRESULT get_MaterialGroupId(UINT32* return_value);
}

@uuid("5c1546dc-8697-4193-976b-84bb4116e5bf")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DBaseMaterialGroup")
interface IPrinting3DBaseMaterialGroupFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 MaterialGroupId, Windows.Graphics.Printing3D.Printing3DBaseMaterialGroup* return_result);
}

@uuid("815a47bc-374a-476d-be92-3ecfd1cb9776")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DBaseMaterial")
interface IPrinting3DBaseMaterialStatics : IInspectable
{
extern(Windows):
	HRESULT get_Abs(HSTRING* return_value);
	HRESULT get_Pla(HSTRING* return_value);
}

@uuid("e1899928-7ce7-4285-a35d-f145c9510c7b")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DColorMaterial")
interface IPrinting3DColorMaterial : IInspectable
{
extern(Windows):
	HRESULT get_Value(UINT32* return_value);
	HRESULT set_Value(UINT32 value);
}

@uuid("fab0e852-0aef-44e9-9ddd-36eeea5acd44")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DColorMaterial")
interface IPrinting3DColorMaterial2 : IInspectable
{
extern(Windows):
	HRESULT get_Color(Windows.UI.Color* return_value);
	HRESULT set_Color(Windows.UI.Color value);
}

@uuid("001a6bd0-aadf-4226-afe9-f369a0b45004")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DColorMaterialGroup")
interface IPrinting3DColorMaterialGroup : IInspectable
{
extern(Windows):
	HRESULT get_Colors(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DColorMaterial)* return_value);
	HRESULT get_MaterialGroupId(UINT32* return_value);
}

@uuid("71d38d6d-b1ea-4a5b-bc54-19c65f3df044")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DColorMaterialGroup")
interface IPrinting3DColorMaterialGroupFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 MaterialGroupId, Windows.Graphics.Printing3D.Printing3DColorMaterialGroup* return_result);
}

@uuid("7e287845-bf7f-4cdb-a27f-30a01437fede")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DComponent")
interface IPrinting3DComponent : IInspectable
{
extern(Windows):
	HRESULT get_Mesh(Windows.Graphics.Printing3D.Printing3DMesh* return_value);
	HRESULT set_Mesh(Windows.Graphics.Printing3D.Printing3DMesh value);
	HRESULT get_Components(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DComponentWithMatrix)* return_value);
	HRESULT get_Thumbnail(Windows.Graphics.Printing3D.Printing3DTextureResource* return_value);
	HRESULT set_Thumbnail(Windows.Graphics.Printing3D.Printing3DTextureResource value);
	HRESULT get_Type(Windows.Graphics.Printing3D.Printing3DObjectType* return_value);
	HRESULT set_Type(Windows.Graphics.Printing3D.Printing3DObjectType value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
	HRESULT get_PartNumber(HSTRING* return_value);
	HRESULT set_PartNumber(HSTRING value);
}

@uuid("3279f335-0ef0-456b-9a21-49bebe8b51c2")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DComponentWithMatrix")
interface IPrinting3DComponentWithMatrix : IInspectable
{
extern(Windows):
	HRESULT get_Component(Windows.Graphics.Printing3D.Printing3DComponent* return_value);
	HRESULT set_Component(Windows.Graphics.Printing3D.Printing3DComponent value);
	HRESULT get_Matrix(Windows.Foundation.Numerics.Matrix4x4* return_value);
	HRESULT set_Matrix(Windows.Foundation.Numerics.Matrix4x4 value);
}

@uuid("462238dd-562e-4f6c-882d-f4d841fd63c7")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DCompositeMaterial")
interface IPrinting3DCompositeMaterial : IInspectable
{
extern(Windows):
	HRESULT get_Values(Windows.Foundation.Collections.IVector!(double)* return_value);
}

@uuid("8d946a5b-40f1-496d-a5fb-340a5a678e30")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DCompositeMaterialGroup")
interface IPrinting3DCompositeMaterialGroup : IInspectable
{
extern(Windows):
	HRESULT get_Composites(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DCompositeMaterial)* return_value);
	HRESULT get_MaterialGroupId(UINT32* return_value);
	HRESULT get_MaterialIndices(Windows.Foundation.Collections.IVector!(UINT32)* return_value);
}

@uuid("06e86d62-7d3b-41e1-944c-bafde4555483")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DCompositeMaterialGroup")
interface IPrinting3DCompositeMaterialGroup2 : IInspectable
{
extern(Windows):
	HRESULT get_BaseMaterialGroup(Windows.Graphics.Printing3D.Printing3DBaseMaterialGroup* return_value);
	HRESULT set_BaseMaterialGroup(Windows.Graphics.Printing3D.Printing3DBaseMaterialGroup value);
}

@uuid("d08ecd13-92ff-43aa-a627-8d43c22c817e")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DCompositeMaterialGroup")
interface IPrinting3DCompositeMaterialGroupFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 MaterialGroupId, Windows.Graphics.Printing3D.Printing3DCompositeMaterialGroup* return_result);
}

@uuid("bbfed397-2d74-46f7-be85-99a67bbb6629")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DFaceReductionOptions")
interface IPrinting3DFaceReductionOptions : IInspectable
{
extern(Windows):
	HRESULT get_MaxReductionArea(double* return_value);
	HRESULT set_MaxReductionArea(double value);
	HRESULT get_TargetTriangleCount(UINT32* return_value);
	HRESULT set_TargetTriangleCount(UINT32 value);
	HRESULT get_MaxEdgeLength(double* return_value);
	HRESULT set_MaxEdgeLength(double value);
}

@uuid("378db256-ed62-4952-b85b-03567d7c465e")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DMaterial")
interface IPrinting3DMaterial : IInspectable
{
extern(Windows):
	HRESULT get_BaseGroups(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DBaseMaterialGroup)* return_value);
	HRESULT get_ColorGroups(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DColorMaterialGroup)* return_value);
	HRESULT get_Texture2CoordGroups(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DTexture2CoordMaterialGroup)* return_value);
	HRESULT get_CompositeGroups(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DCompositeMaterialGroup)* return_value);
	HRESULT get_MultiplePropertyGroups(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DMultiplePropertyMaterialGroup)* return_value);
}

@uuid("192e90dc-0228-2e01-bc20-c5290cbf32c4")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DMesh")
interface IPrinting3DMesh : IInspectable
{
extern(Windows):
	HRESULT get_VertexCount(UINT32* return_value);
	HRESULT set_VertexCount(UINT32 value);
	HRESULT get_IndexCount(UINT32* return_value);
	HRESULT set_IndexCount(UINT32 value);
	HRESULT get_VertexPositionsDescription(Windows.Graphics.Printing3D.Printing3DBufferDescription* return_value);
	HRESULT set_VertexPositionsDescription(Windows.Graphics.Printing3D.Printing3DBufferDescription value);
	HRESULT get_VertexNormalsDescription(Windows.Graphics.Printing3D.Printing3DBufferDescription* return_value);
	HRESULT set_VertexNormalsDescription(Windows.Graphics.Printing3D.Printing3DBufferDescription value);
	HRESULT get_TriangleIndicesDescription(Windows.Graphics.Printing3D.Printing3DBufferDescription* return_value);
	HRESULT set_TriangleIndicesDescription(Windows.Graphics.Printing3D.Printing3DBufferDescription value);
	HRESULT get_TriangleMaterialIndicesDescription(Windows.Graphics.Printing3D.Printing3DBufferDescription* return_value);
	HRESULT set_TriangleMaterialIndicesDescription(Windows.Graphics.Printing3D.Printing3DBufferDescription value);
	HRESULT abi_GetVertexPositions(Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_CreateVertexPositions(UINT32 value);
	HRESULT abi_GetVertexNormals(Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_CreateVertexNormals(UINT32 value);
	HRESULT abi_GetTriangleIndices(Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_CreateTriangleIndices(UINT32 value);
	HRESULT abi_GetTriangleMaterialIndices(Windows.Storage.Streams.IBuffer* return_buffer);
	HRESULT abi_CreateTriangleMaterialIndices(UINT32 value);
	HRESULT get_BufferDescriptionSet(Windows.Foundation.Collections.IPropertySet* return_value);
	HRESULT get_BufferSet(Windows.Foundation.Collections.IPropertySet* return_value);
	HRESULT abi_VerifyAsync(Windows.Graphics.Printing3D.Printing3DMeshVerificationMode value, Windows.Foundation.IAsyncOperation!(Windows.Graphics.Printing3D.Printing3DMeshVerificationResult)* return_operation);
}

@uuid("195671ba-e93a-4e8a-a46f-dea8e852197e")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DMeshVerificationResult")
interface IPrinting3DMeshVerificationResult : IInspectable
{
extern(Windows):
	HRESULT get_IsValid(bool* return_value);
	HRESULT get_NonmanifoldTriangles(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
	HRESULT get_ReversedNormalTriangles(Windows.Foundation.Collections.IVectorView!(UINT32)* return_value);
}

@uuid("2d012ef0-52fb-919a-77b0-4b1a3b80324f")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DModel")
interface IPrinting3DModel : IInspectable
{
extern(Windows):
	HRESULT get_Unit(Windows.Graphics.Printing3D.Printing3DModelUnit* return_value);
	HRESULT set_Unit(Windows.Graphics.Printing3D.Printing3DModelUnit value);
	HRESULT get_Textures(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DModelTexture)* return_value);
	HRESULT get_Meshes(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DMesh)* return_value);
	HRESULT get_Components(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DComponent)* return_value);
	HRESULT get_Material(Windows.Graphics.Printing3D.Printing3DMaterial* return_value);
	HRESULT set_Material(Windows.Graphics.Printing3D.Printing3DMaterial value);
	HRESULT get_Build(Windows.Graphics.Printing3D.Printing3DComponent* return_value);
	HRESULT set_Build(Windows.Graphics.Printing3D.Printing3DComponent value);
	HRESULT get_Version(HSTRING* return_value);
	HRESULT set_Version(HSTRING value);
	HRESULT get_RequiredExtensions(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Metadata(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT abi_RepairAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_Clone(Windows.Graphics.Printing3D.Printing3DModel* return_value);
}

@uuid("c92069c7-c841-47f3-a84e-a149fd08b657")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DModel")
interface IPrinting3DModel2 : IInspectable
{
extern(Windows):
	HRESULT abi_TryPartialRepairAsync(Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryPartialRepairWithTimeAsync(Windows.Foundation.TimeSpan maxWaitTime, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	HRESULT abi_TryReduceFacesAsync(Windows.Foundation.IAsyncOperationWithProgress!(bool, double)* return_operation);
	HRESULT abi_TryReduceFacesWithOptionsAsync(Windows.Graphics.Printing3D.Printing3DFaceReductionOptions printing3DFaceReductionOptions, Windows.Foundation.IAsyncOperationWithProgress!(bool, double)* return_operation);
	HRESULT abi_TryReduceFacesWithOptionsAndTimeAsync(Windows.Graphics.Printing3D.Printing3DFaceReductionOptions printing3DFaceReductionOptions, Windows.Foundation.TimeSpan maxWait, Windows.Foundation.IAsyncOperationWithProgress!(bool, double)* return_operation);
	HRESULT abi_RepairWithProgressAsync(Windows.Foundation.IAsyncOperationWithProgress!(bool, double)* return_operation);
}

@uuid("5dafcf01-b59d-483c-97bb-a4d546d1c75c")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DModelTexture")
interface IPrinting3DModelTexture : IInspectable
{
extern(Windows):
	HRESULT get_TextureResource(Windows.Graphics.Printing3D.Printing3DTextureResource* return_value);
	HRESULT set_TextureResource(Windows.Graphics.Printing3D.Printing3DTextureResource value);
	HRESULT get_TileStyleU(Windows.Graphics.Printing3D.Printing3DTextureEdgeBehavior* return_value);
	HRESULT set_TileStyleU(Windows.Graphics.Printing3D.Printing3DTextureEdgeBehavior value);
	HRESULT get_TileStyleV(Windows.Graphics.Printing3D.Printing3DTextureEdgeBehavior* return_value);
	HRESULT set_TileStyleV(Windows.Graphics.Printing3D.Printing3DTextureEdgeBehavior value);
}

@uuid("25a6254b-c6e9-484d-a214-a25e5776ba62")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DMultiplePropertyMaterial")
interface IPrinting3DMultiplePropertyMaterial : IInspectable
{
extern(Windows):
	HRESULT get_MaterialIndices(Windows.Foundation.Collections.IVector!(UINT32)* return_value);
}

@uuid("f0950519-aeb9-4515-a39b-a088fbbb277c")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DMultiplePropertyMaterialGroup")
interface IPrinting3DMultiplePropertyMaterialGroup : IInspectable
{
extern(Windows):
	HRESULT get_MultipleProperties(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DMultiplePropertyMaterial)* return_value);
	HRESULT get_MaterialGroupIndices(Windows.Foundation.Collections.IVector!(UINT32)* return_value);
	HRESULT get_MaterialGroupId(UINT32* return_value);
}

@uuid("323e196e-d4c6-451e-a814-4d78a210fe53")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DMultiplePropertyMaterialGroup")
interface IPrinting3DMultiplePropertyMaterialGroupFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 MaterialGroupId, Windows.Graphics.Printing3D.Printing3DMultiplePropertyMaterialGroup* return_result);
}

@uuid("8d844bfb-07e9-4986-9833-8dd3d48c6859")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DTexture2CoordMaterial")
interface IPrinting3DTexture2CoordMaterial : IInspectable
{
extern(Windows):
	HRESULT get_Texture(Windows.Graphics.Printing3D.Printing3DModelTexture* return_value);
	HRESULT set_Texture(Windows.Graphics.Printing3D.Printing3DModelTexture value);
	HRESULT get_U(double* return_value);
	HRESULT set_U(double value);
	HRESULT get_V(double* return_value);
	HRESULT set_V(double value);
}

@uuid("627d7ca7-6d90-4fb9-9fc4-9feff3dfa892")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DTexture2CoordMaterialGroup")
interface IPrinting3DTexture2CoordMaterialGroup : IInspectable
{
extern(Windows):
	HRESULT get_Texture2Coords(Windows.Foundation.Collections.IVector!(Windows.Graphics.Printing3D.Printing3DTexture2CoordMaterial)* return_value);
	HRESULT get_MaterialGroupId(UINT32* return_value);
}

@uuid("69fbdbba-b12e-429b-8386-df5284f6e80f")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DTexture2CoordMaterialGroup")
interface IPrinting3DTexture2CoordMaterialGroup2 : IInspectable
{
extern(Windows):
	HRESULT get_Texture(Windows.Graphics.Printing3D.Printing3DModelTexture* return_value);
	HRESULT set_Texture(Windows.Graphics.Printing3D.Printing3DModelTexture value);
}

@uuid("cbb049b0-468a-4c6f-b2a2-8eb8ba8dea48")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DTexture2CoordMaterialGroup")
interface IPrinting3DTexture2CoordMaterialGroupFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 MaterialGroupId, Windows.Graphics.Printing3D.Printing3DTexture2CoordMaterialGroup* return_result);
}

@uuid("a70df32d-6ab1-44ae-bc45-a27382c0d38c")
@WinrtFactory("Windows.Graphics.Printing3D.Printing3DTextureResource")
interface IPrinting3DTextureResource : IInspectable
{
extern(Windows):
	HRESULT get_TextureData(Windows.Storage.Streams.IRandomAccessStreamWithContentType* return_value);
	HRESULT set_TextureData(Windows.Storage.Streams.IRandomAccessStreamWithContentType value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT set_Name(HSTRING value);
}

interface Print3DManager : Windows.Graphics.Printing3D.IPrint3DManager
{
}

interface Print3DTask : Windows.Graphics.Printing3D.IPrint3DTask
{
}

interface Print3DTaskCompletedEventArgs : Windows.Graphics.Printing3D.IPrint3DTaskCompletedEventArgs
{
}

interface Print3DTaskRequest : Windows.Graphics.Printing3D.IPrint3DTaskRequest
{
}

interface Print3DTaskRequestedEventArgs : Windows.Graphics.Printing3D.IPrint3DTaskRequestedEventArgs
{
}

interface Print3DTaskSourceChangedEventArgs : Windows.Graphics.Printing3D.IPrint3DTaskSourceChangedEventArgs
{
}

interface Print3DTaskSourceRequestedArgs : Windows.Graphics.Printing3D.IPrint3DTaskSourceRequestedArgs
{
}

interface Printing3D3MFPackage : Windows.Graphics.Printing3D.IPrinting3D3MFPackage
{
}

interface Printing3DBaseMaterial : Windows.Graphics.Printing3D.IPrinting3DBaseMaterial
{
}

interface Printing3DBaseMaterialGroup : Windows.Graphics.Printing3D.IPrinting3DBaseMaterialGroup
{
}

interface Printing3DColorMaterial : Windows.Graphics.Printing3D.IPrinting3DColorMaterial, Windows.Graphics.Printing3D.IPrinting3DColorMaterial2
{
}

interface Printing3DColorMaterialGroup : Windows.Graphics.Printing3D.IPrinting3DColorMaterialGroup
{
}

interface Printing3DComponent : Windows.Graphics.Printing3D.IPrinting3DComponent
{
}

interface Printing3DComponentWithMatrix : Windows.Graphics.Printing3D.IPrinting3DComponentWithMatrix
{
}

interface Printing3DCompositeMaterial : Windows.Graphics.Printing3D.IPrinting3DCompositeMaterial
{
}

interface Printing3DCompositeMaterialGroup : Windows.Graphics.Printing3D.IPrinting3DCompositeMaterialGroup, Windows.Graphics.Printing3D.IPrinting3DCompositeMaterialGroup2
{
}

interface Printing3DFaceReductionOptions : Windows.Graphics.Printing3D.IPrinting3DFaceReductionOptions
{
}

interface Printing3DMaterial : Windows.Graphics.Printing3D.IPrinting3DMaterial
{
}

interface Printing3DMesh : Windows.Graphics.Printing3D.IPrinting3DMesh
{
}

interface Printing3DMeshVerificationResult : Windows.Graphics.Printing3D.IPrinting3DMeshVerificationResult
{
}

interface Printing3DModel : Windows.Graphics.Printing3D.IPrinting3DModel, Windows.Graphics.Printing3D.IPrinting3DModel2
{
}

interface Printing3DModelTexture : Windows.Graphics.Printing3D.IPrinting3DModelTexture
{
}

interface Printing3DMultiplePropertyMaterial : Windows.Graphics.Printing3D.IPrinting3DMultiplePropertyMaterial
{
}

interface Printing3DMultiplePropertyMaterialGroup : Windows.Graphics.Printing3D.IPrinting3DMultiplePropertyMaterialGroup
{
}

interface Printing3DTexture2CoordMaterial : Windows.Graphics.Printing3D.IPrinting3DTexture2CoordMaterial
{
}

interface Printing3DTexture2CoordMaterialGroup : Windows.Graphics.Printing3D.IPrinting3DTexture2CoordMaterialGroup, Windows.Graphics.Printing3D.IPrinting3DTexture2CoordMaterialGroup2
{
}

interface Printing3DTextureResource : Windows.Graphics.Printing3D.IPrinting3DTextureResource
{
}

enum Print3DTaskCompletion
{
	Abandoned = 0,
	Canceled = 1,
	Failed = 2,
	Slicing = 3,
	Submitted = 4
}

enum Print3DTaskDetail
{
	Unknown = 0,
	ModelExceedsPrintBed = 1,
	UploadFailed = 2,
	InvalidMaterialSelection = 3,
	InvalidModel = 4,
	ModelNotManifold = 5,
	InvalidPrintTicket = 6
}

enum Printing3DBufferFormat
{
	Unknown = 0,
	R32G32B32A32Float = 2,
	R32G32B32A32UInt = 3,
	R32G32B32Float = 6,
	R32G32B32UInt = 7,
	Printing3DDouble = 500,
	Printing3DUInt = 501
}

enum Printing3DMeshVerificationMode
{
	FindFirstError = 0,
	FindAllErrors = 1
}

enum Printing3DModelUnit
{
	Meter = 0,
	Micron = 1,
	Millimeter = 2,
	Centimeter = 3,
	Inch = 4,
	Foot = 5
}

enum Printing3DObjectType
{
	Model = 0,
	Support = 1,
	Others = 2
}

enum Printing3DTextureEdgeBehavior
{
	None = 0,
	Wrap = 1,
	Mirror = 2,
	Clamp = 3
}