module Windows.Devices.Perception.Provider;

import dwinrt;

@uuid("74816d2a-2090-4670-8c48-ef39e7ff7c26")
interface PerceptionStartFaceAuthenticationHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup sender, bool* return_result);
}

@uuid("387ee6aa-89cd-481e-aade-dd92f70b2ad7")
interface PerceptionStopFaceAuthenticationHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup sender);
}

@uuid("3ae651d6-9669-4106-9fae-4835c1b96104")
@WinrtFactory("Windows.Devices.Perception.Provider.KnownPerceptionFrameKind")
interface IKnownPerceptionFrameKindStatics : IInspectable
{
extern(Windows):
	deprecated("KnownPerceptionFrameKind may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Color(HSTRING* return_value);
	deprecated("KnownPerceptionFrameKind may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Depth(HSTRING* return_value);
	deprecated("KnownPerceptionFrameKind may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Infrared(HSTRING* return_value);
}

@uuid("172c4882-2fd9-4c4e-ba34-fdf20a73dde5")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionControlGroup")
interface IPerceptionControlGroup : IInspectable
{
extern(Windows):
	deprecated("PerceptionControlGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_FrameProviderIds(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("2f1af2e0-baf1-453b-bed4-cd9d4619154c")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionControlGroup")
interface IPerceptionControlGroupFactory : IInspectable
{
extern(Windows):
	deprecated("PerceptionControlGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) ids, Windows.Devices.Perception.Provider.PerceptionControlGroup* return_result);
}

@uuid("b4131a82-dff5-4047-8a19-3b4d805f7176")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionCorrelation")
interface IPerceptionCorrelation : IInspectable
{
extern(Windows):
	deprecated("PerceptionCorrelation may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_TargetId(HSTRING* return_value);
	deprecated("PerceptionCorrelation may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	deprecated("PerceptionCorrelation may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Orientation(Windows.Foundation.Numerics.Quaternion* return_value);
}

@uuid("d4a6c425-2884-4a8f-8134-2835d7286cbf")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionCorrelation")
interface IPerceptionCorrelationFactory : IInspectable
{
extern(Windows):
	deprecated("PerceptionCorrelation may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_Create(HSTRING targetId, Windows.Foundation.Numerics.Vector3 position, Windows.Foundation.Numerics.Quaternion orientation, Windows.Devices.Perception.Provider.PerceptionCorrelation* return_result);
}

@uuid("752a0906-36a7-47bb-9b79-56cc6b746770")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionCorrelationGroup")
interface IPerceptionCorrelationGroup : IInspectable
{
extern(Windows):
	deprecated("PerceptionCorrelationGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_RelativeLocations(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.Provider.PerceptionCorrelation)* return_value);
}

@uuid("7dfe2088-63df-48ed-83b1-4ab829132995")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionCorrelationGroup")
interface IPerceptionCorrelationGroupFactory : IInspectable
{
extern(Windows):
	deprecated("PerceptionCorrelationGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(Windows.Devices.Perception.Provider.PerceptionCorrelation) relativeLocations, Windows.Devices.Perception.Provider.PerceptionCorrelationGroup* return_result);
}

@uuid("e8019814-4a91-41b0-83a6-881a1775353e")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup")
interface IPerceptionFaceAuthenticationGroup : IInspectable
{
extern(Windows):
	deprecated("PerceptionFaceAuthenticationGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_FrameProviderIds(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("e68a05d4-b60c-40f4-bcb9-f24d46467320")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup")
interface IPerceptionFaceAuthenticationGroupFactory : IInspectable
{
extern(Windows):
	deprecated("PerceptionFaceAuthenticationGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_Create(Windows.Foundation.Collections.IIterable!(HSTRING) ids, Windows.Devices.Perception.Provider.PerceptionStartFaceAuthenticationHandler startHandler, Windows.Devices.Perception.Provider.PerceptionStopFaceAuthenticationHandler stopHandler, Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup* return_result);
}

@uuid("7cfe7825-54bb-4d9d-bec5-8ef66151d2ac")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionFrame")
interface IPerceptionFrame : IInspectable
{
extern(Windows):
	deprecated("PerceptionFrame may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_RelativeTime(Windows.Foundation.TimeSpan* return_value);
	deprecated("PerceptionFrame may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT set_RelativeTime(Windows.Foundation.TimeSpan value);
	deprecated("PerceptionFrame may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Properties(Windows.Foundation.Collections.ValueSet* return_value);
	deprecated("PerceptionFrame may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_FrameData(Windows.Foundation.IMemoryBuffer* return_value);
}

@uuid("794f7ab9-b37d-3b33-a10d-30626419ce65")
interface IPerceptionFrameProvider : IInspectable
{
extern(Windows):
	deprecated("IPerceptionFrameProvider may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_FrameProviderInfo(Windows.Devices.Perception.Provider.PerceptionFrameProviderInfo* return_result);
	deprecated("IPerceptionFrameProvider may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Available(bool* return_value);
	deprecated("IPerceptionFrameProvider may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* return_value);
	deprecated("IPerceptionFrameProvider may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_Start();
	deprecated("IPerceptionFrameProvider may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_Stop();
	deprecated("IPerceptionFrameProvider may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_SetProperty(Windows.Devices.Perception.Provider.PerceptionPropertyChangeRequest value);
}

@uuid("cca959e8-797e-4e83-9b87-036a74142fc4")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionFrameProviderInfo")
interface IPerceptionFrameProviderInfo : IInspectable
{
extern(Windows):
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Id(HSTRING* return_value);
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT set_Id(HSTRING value);
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_DisplayName(HSTRING* return_value);
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT set_DisplayName(HSTRING value);
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_DeviceKind(HSTRING* return_value);
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT set_DeviceKind(HSTRING value);
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_FrameKind(HSTRING* return_value);
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT set_FrameKind(HSTRING value);
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Hidden(bool* return_value);
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT set_Hidden(bool value);
}

@uuid("a959ce07-ead3-33df-8ec1-b924abe019c4")
interface IPerceptionFrameProviderManager : IInspectable
{
extern(Windows):
	deprecated("IPerceptionFrameProviderManager may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_GetFrameProvider(Windows.Devices.Perception.Provider.PerceptionFrameProviderInfo frameProviderInfo, Windows.Devices.Perception.Provider.IPerceptionFrameProvider* return_result);
}

@uuid("ae8386e6-cad9-4359-8f96-8eae51810526")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionFrameProviderManagerService")
interface IPerceptionFrameProviderManagerServiceStatics : IInspectable
{
extern(Windows):
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_RegisterFrameProviderInfo(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionFrameProviderInfo frameProviderInfo);
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_UnregisterFrameProviderInfo(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionFrameProviderInfo frameProviderInfo);
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_RegisterFaceAuthenticationGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup faceAuthenticationGroup);
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_UnregisterFaceAuthenticationGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup faceAuthenticationGroup);
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_RegisterControlGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionControlGroup controlGroup);
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_UnregisterControlGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionControlGroup controlGroup);
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_RegisterCorrelationGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionCorrelationGroup correlationGroup);
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_UnregisterCorrelationGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionCorrelationGroup correlationGroup);
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_UpdateAvailabilityForProvider(Windows.Devices.Perception.Provider.IPerceptionFrameProvider provider, bool available);
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_PublishFrameForProvider(Windows.Devices.Perception.Provider.IPerceptionFrameProvider provider, Windows.Devices.Perception.Provider.PerceptionFrame frame);
}

@uuid("3c5aeb51-350b-4df8-9414-59e09815510b")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionPropertyChangeRequest")
interface IPerceptionPropertyChangeRequest : IInspectable
{
extern(Windows):
	deprecated("PerceptionPropertyChangeRequest may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Name(HSTRING* return_value);
	deprecated("PerceptionPropertyChangeRequest may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Value(IInspectable* return_value);
	deprecated("PerceptionPropertyChangeRequest may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT get_Status(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeStatus* return_value);
	deprecated("PerceptionPropertyChangeRequest may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT set_Status(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeStatus value);
	deprecated("PerceptionPropertyChangeRequest may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_result);
}

@uuid("4c38a7da-fdd8-4ed4-a039-2a6f9b235038")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionVideoFrameAllocator")
interface IPerceptionVideoFrameAllocator : IInspectable
{
extern(Windows):
	deprecated("PerceptionVideoFrameAllocator may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_AllocateFrame(Windows.Devices.Perception.Provider.PerceptionFrame* return_value);
	deprecated("PerceptionVideoFrameAllocator may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_CopyFromVideoFrame(Windows.Media.VideoFrame frame, Windows.Devices.Perception.Provider.PerceptionFrame* return_value);
}

@uuid("1a58b0e1-e91a-481e-b876-a89e2bbc6b33")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionVideoFrameAllocator")
interface IPerceptionVideoFrameAllocatorFactory : IInspectable
{
extern(Windows):
	deprecated("PerceptionVideoFrameAllocator may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_Create(UINT32 maxOutstandingFrameCountForWrite, Windows.Graphics.Imaging.BitmapPixelFormat format, Windows.Foundation.Size resolution, Windows.Graphics.Imaging.BitmapAlphaMode alpha, Windows.Devices.Perception.Provider.PerceptionVideoFrameAllocator* return_result);
}

interface KnownPerceptionFrameKind
{
}

interface PerceptionControlGroup : Windows.Devices.Perception.Provider.IPerceptionControlGroup
{
}

interface PerceptionCorrelation : Windows.Devices.Perception.Provider.IPerceptionCorrelation
{
}

interface PerceptionCorrelationGroup : Windows.Devices.Perception.Provider.IPerceptionCorrelationGroup
{
}

interface PerceptionFaceAuthenticationGroup : Windows.Devices.Perception.Provider.IPerceptionFaceAuthenticationGroup
{
}

interface PerceptionFrame : Windows.Devices.Perception.Provider.IPerceptionFrame
{
}

interface PerceptionFrameProviderInfo : Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo
{
}

interface PerceptionFrameProviderManagerService
{
}

interface PerceptionPropertyChangeRequest : Windows.Devices.Perception.Provider.IPerceptionPropertyChangeRequest
{
}

interface PerceptionVideoFrameAllocator : Windows.Devices.Perception.Provider.IPerceptionVideoFrameAllocator, Windows.Foundation.IClosable
{
}