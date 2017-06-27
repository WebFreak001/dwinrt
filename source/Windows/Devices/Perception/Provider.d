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
interface IPerceptionFrameProvider_Base : IInspectable
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
@uuid("794f7ab9-b37d-3b33-a10d-30626419ce65")
interface IPerceptionFrameProvider : IPerceptionFrameProvider_Base, Windows.Foundation.IClosable {}

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
interface IPerceptionFrameProviderManager_Base : IInspectable
{
extern(Windows):
	deprecated("IPerceptionFrameProviderManager may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_GetFrameProvider(Windows.Devices.Perception.Provider.PerceptionFrameProviderInfo frameProviderInfo, Windows.Devices.Perception.Provider.IPerceptionFrameProvider* return_result);
}
@uuid("a959ce07-ead3-33df-8ec1-b924abe019c4")
interface IPerceptionFrameProviderManager : IPerceptionFrameProviderManager_Base, Windows.Foundation.IClosable {}

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
interface IPerceptionVideoFrameAllocator_Base : IInspectable
{
extern(Windows):
	deprecated("PerceptionVideoFrameAllocator may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_AllocateFrame(Windows.Devices.Perception.Provider.PerceptionFrame* return_value);
	deprecated("PerceptionVideoFrameAllocator may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	HRESULT abi_CopyFromVideoFrame(Windows.Media.VideoFrame frame, Windows.Devices.Perception.Provider.PerceptionFrame* return_value);
}
@uuid("4c38a7da-fdd8-4ed4-a039-2a6f9b235038")
@WinrtFactory("Windows.Devices.Perception.Provider.PerceptionVideoFrameAllocator")
interface IPerceptionVideoFrameAllocator : IPerceptionVideoFrameAllocator_Base, Windows.Foundation.IClosable {}

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
	private static Windows.Devices.Perception.Provider.IKnownPerceptionFrameKindStatics _staticInstance;
	public static Windows.Devices.Perception.Provider.IKnownPerceptionFrameKindStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Perception.Provider.IKnownPerceptionFrameKindStatics);
		return _staticInstance;
	}
	deprecated("KnownPerceptionFrameKind may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static HSTRING Color()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Color(&_ret));
		return _ret;
	}
	deprecated("KnownPerceptionFrameKind may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static HSTRING Depth()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Depth(&_ret));
		return _ret;
	}
	deprecated("KnownPerceptionFrameKind may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static HSTRING Infrared()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Infrared(&_ret));
		return _ret;
	}
}

interface PerceptionControlGroup : Windows.Devices.Perception.Provider.IPerceptionControlGroup
{
extern(Windows):
	deprecated("PerceptionControlGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Foundation.Collections.IVectorView!(HSTRING) FrameProviderIds()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionControlGroup)this.asInterface(uuid("172c4882-2fd9-4c4e-ba34-fdf20a73dde5"))).get_FrameProviderIds(&_ret));
		return _ret;
	}
	deprecated("PerceptionControlGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static Windows.Devices.Perception.Provider.PerceptionControlGroup New(Windows.Foundation.Collections.IIterable!(HSTRING) ids)
	{
		auto factory = factory!(Windows.Devices.Perception.Provider.IPerceptionControlGroupFactory);
		Windows.Devices.Perception.Provider.PerceptionControlGroup _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionControlGroupFactory)factory.asInterface(uuid("2f1af2e0-baf1-453b-bed4-cd9d4619154c"))).abi_Create(ids, &_ret));
		return _ret;
	}
}

interface PerceptionCorrelation : Windows.Devices.Perception.Provider.IPerceptionCorrelation
{
extern(Windows):
	deprecated("PerceptionCorrelation may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final HSTRING TargetId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionCorrelation)this.asInterface(uuid("b4131a82-dff5-4047-8a19-3b4d805f7176"))).get_TargetId(&_ret));
		return _ret;
	}
	deprecated("PerceptionCorrelation may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionCorrelation)this.asInterface(uuid("b4131a82-dff5-4047-8a19-3b4d805f7176"))).get_Position(&_ret));
		return _ret;
	}
	deprecated("PerceptionCorrelation may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Foundation.Numerics.Quaternion Orientation()
	{
		Windows.Foundation.Numerics.Quaternion _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionCorrelation)this.asInterface(uuid("b4131a82-dff5-4047-8a19-3b4d805f7176"))).get_Orientation(&_ret));
		return _ret;
	}
	deprecated("PerceptionCorrelation may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static Windows.Devices.Perception.Provider.PerceptionCorrelation New(HSTRING targetId, Windows.Foundation.Numerics.Vector3 position, Windows.Foundation.Numerics.Quaternion orientation)
	{
		auto factory = factory!(Windows.Devices.Perception.Provider.IPerceptionCorrelationFactory);
		Windows.Devices.Perception.Provider.PerceptionCorrelation _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionCorrelationFactory)factory.asInterface(uuid("d4a6c425-2884-4a8f-8134-2835d7286cbf"))).abi_Create(targetId, position, orientation, &_ret));
		return _ret;
	}
}

interface PerceptionCorrelationGroup : Windows.Devices.Perception.Provider.IPerceptionCorrelationGroup
{
extern(Windows):
	deprecated("PerceptionCorrelationGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.Provider.PerceptionCorrelation) RelativeLocations()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Perception.Provider.PerceptionCorrelation) _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionCorrelationGroup)this.asInterface(uuid("752a0906-36a7-47bb-9b79-56cc6b746770"))).get_RelativeLocations(&_ret));
		return _ret;
	}
	deprecated("PerceptionCorrelationGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static Windows.Devices.Perception.Provider.PerceptionCorrelationGroup New(Windows.Foundation.Collections.IIterable!(Windows.Devices.Perception.Provider.PerceptionCorrelation) relativeLocations)
	{
		auto factory = factory!(Windows.Devices.Perception.Provider.IPerceptionCorrelationGroupFactory);
		Windows.Devices.Perception.Provider.PerceptionCorrelationGroup _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionCorrelationGroupFactory)factory.asInterface(uuid("7dfe2088-63df-48ed-83b1-4ab829132995"))).abi_Create(relativeLocations, &_ret));
		return _ret;
	}
}

interface PerceptionFaceAuthenticationGroup : Windows.Devices.Perception.Provider.IPerceptionFaceAuthenticationGroup
{
extern(Windows):
	deprecated("PerceptionFaceAuthenticationGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Foundation.Collections.IVectorView!(HSTRING) FrameProviderIds()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFaceAuthenticationGroup)this.asInterface(uuid("e8019814-4a91-41b0-83a6-881a1775353e"))).get_FrameProviderIds(&_ret));
		return _ret;
	}
	deprecated("PerceptionFaceAuthenticationGroup may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup New(Windows.Foundation.Collections.IIterable!(HSTRING) ids, Windows.Devices.Perception.Provider.PerceptionStartFaceAuthenticationHandler startHandler, Windows.Devices.Perception.Provider.PerceptionStopFaceAuthenticationHandler stopHandler)
	{
		auto factory = factory!(Windows.Devices.Perception.Provider.IPerceptionFaceAuthenticationGroupFactory);
		Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFaceAuthenticationGroupFactory)factory.asInterface(uuid("e68a05d4-b60c-40f4-bcb9-f24d46467320"))).abi_Create(ids, startHandler, stopHandler, &_ret));
		return _ret;
	}
}

interface PerceptionFrame : Windows.Devices.Perception.Provider.IPerceptionFrame
{
extern(Windows):
	deprecated("PerceptionFrame may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Foundation.TimeSpan RelativeTime()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrame)this.asInterface(uuid("7cfe7825-54bb-4d9d-bec5-8ef66151d2ac"))).get_RelativeTime(&_ret));
		return _ret;
	}
	deprecated("PerceptionFrame may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final void RelativeTime(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrame)this.asInterface(uuid("7cfe7825-54bb-4d9d-bec5-8ef66151d2ac"))).set_RelativeTime(value));
	}
	deprecated("PerceptionFrame may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Foundation.Collections.ValueSet Properties()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrame)this.asInterface(uuid("7cfe7825-54bb-4d9d-bec5-8ef66151d2ac"))).get_Properties(&_ret));
		return _ret;
	}
	deprecated("PerceptionFrame may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Foundation.IMemoryBuffer FrameData()
	{
		Windows.Foundation.IMemoryBuffer _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrame)this.asInterface(uuid("7cfe7825-54bb-4d9d-bec5-8ef66151d2ac"))).get_FrameData(&_ret));
		return _ret;
	}
}

interface PerceptionFrameProviderInfo : Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo
{
extern(Windows):
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo)this.asInterface(uuid("cca959e8-797e-4e83-9b87-036a74142fc4"))).get_Id(&_ret));
		return _ret;
	}
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final void Id(HSTRING value)
	{
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo)this.asInterface(uuid("cca959e8-797e-4e83-9b87-036a74142fc4"))).set_Id(value));
	}
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo)this.asInterface(uuid("cca959e8-797e-4e83-9b87-036a74142fc4"))).get_DisplayName(&_ret));
		return _ret;
	}
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final void DisplayName(HSTRING value)
	{
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo)this.asInterface(uuid("cca959e8-797e-4e83-9b87-036a74142fc4"))).set_DisplayName(value));
	}
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final HSTRING DeviceKind()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo)this.asInterface(uuid("cca959e8-797e-4e83-9b87-036a74142fc4"))).get_DeviceKind(&_ret));
		return _ret;
	}
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final void DeviceKind(HSTRING value)
	{
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo)this.asInterface(uuid("cca959e8-797e-4e83-9b87-036a74142fc4"))).set_DeviceKind(value));
	}
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final HSTRING FrameKind()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo)this.asInterface(uuid("cca959e8-797e-4e83-9b87-036a74142fc4"))).get_FrameKind(&_ret));
		return _ret;
	}
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final void FrameKind(HSTRING value)
	{
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo)this.asInterface(uuid("cca959e8-797e-4e83-9b87-036a74142fc4"))).set_FrameKind(value));
	}
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final bool Hidden()
	{
		bool _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo)this.asInterface(uuid("cca959e8-797e-4e83-9b87-036a74142fc4"))).get_Hidden(&_ret));
		return _ret;
	}
	deprecated("PerceptionFrameProviderInfo may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final void Hidden(bool value)
	{
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo)this.asInterface(uuid("cca959e8-797e-4e83-9b87-036a74142fc4"))).set_Hidden(value));
	}
	static PerceptionFrameProviderInfo New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PerceptionFrameProviderInfo).abi_ActivateInstance(&ret));
		return cast(PerceptionFrameProviderInfo) ret;
	}
}

interface PerceptionFrameProviderManagerService
{
	private static Windows.Devices.Perception.Provider.IPerceptionFrameProviderManagerServiceStatics _staticInstance;
	public static Windows.Devices.Perception.Provider.IPerceptionFrameProviderManagerServiceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManagerServiceStatics);
		return _staticInstance;
	}
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static void RegisterFrameProviderInfo(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionFrameProviderInfo frameProviderInfo)
	{
		Debug.OK(staticInstance.abi_RegisterFrameProviderInfo(manager, frameProviderInfo));
	}
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static void UnregisterFrameProviderInfo(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionFrameProviderInfo frameProviderInfo)
	{
		Debug.OK(staticInstance.abi_UnregisterFrameProviderInfo(manager, frameProviderInfo));
	}
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static void RegisterFaceAuthenticationGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup faceAuthenticationGroup)
	{
		Debug.OK(staticInstance.abi_RegisterFaceAuthenticationGroup(manager, faceAuthenticationGroup));
	}
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static void UnregisterFaceAuthenticationGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup faceAuthenticationGroup)
	{
		Debug.OK(staticInstance.abi_UnregisterFaceAuthenticationGroup(manager, faceAuthenticationGroup));
	}
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static void RegisterControlGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionControlGroup controlGroup)
	{
		Debug.OK(staticInstance.abi_RegisterControlGroup(manager, controlGroup));
	}
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static void UnregisterControlGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionControlGroup controlGroup)
	{
		Debug.OK(staticInstance.abi_UnregisterControlGroup(manager, controlGroup));
	}
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static void RegisterCorrelationGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionCorrelationGroup correlationGroup)
	{
		Debug.OK(staticInstance.abi_RegisterCorrelationGroup(manager, correlationGroup));
	}
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static void UnregisterCorrelationGroup(Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager manager, Windows.Devices.Perception.Provider.PerceptionCorrelationGroup correlationGroup)
	{
		Debug.OK(staticInstance.abi_UnregisterCorrelationGroup(manager, correlationGroup));
	}
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static void UpdateAvailabilityForProvider(Windows.Devices.Perception.Provider.IPerceptionFrameProvider provider, bool available)
	{
		Debug.OK(staticInstance.abi_UpdateAvailabilityForProvider(provider, available));
	}
	deprecated("PerceptionFrameProviderManagerService may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static void PublishFrameForProvider(Windows.Devices.Perception.Provider.IPerceptionFrameProvider provider, Windows.Devices.Perception.Provider.PerceptionFrame frame)
	{
		Debug.OK(staticInstance.abi_PublishFrameForProvider(provider, frame));
	}
}

interface PerceptionPropertyChangeRequest : Windows.Devices.Perception.Provider.IPerceptionPropertyChangeRequest
{
extern(Windows):
	deprecated("PerceptionPropertyChangeRequest may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionPropertyChangeRequest)this.asInterface(uuid("3c5aeb51-350b-4df8-9414-59e09815510b"))).get_Name(&_ret));
		return _ret;
	}
	deprecated("PerceptionPropertyChangeRequest may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final IInspectable Value()
	{
		IInspectable _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionPropertyChangeRequest)this.asInterface(uuid("3c5aeb51-350b-4df8-9414-59e09815510b"))).get_Value(&_ret));
		return _ret;
	}
	deprecated("PerceptionPropertyChangeRequest may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeStatus Status()
	{
		Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeStatus _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionPropertyChangeRequest)this.asInterface(uuid("3c5aeb51-350b-4df8-9414-59e09815510b"))).get_Status(&_ret));
		return _ret;
	}
	deprecated("PerceptionPropertyChangeRequest may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final void Status(Windows.Devices.Perception.PerceptionFrameSourcePropertyChangeStatus value)
	{
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionPropertyChangeRequest)this.asInterface(uuid("3c5aeb51-350b-4df8-9414-59e09815510b"))).set_Status(value));
	}
	deprecated("PerceptionPropertyChangeRequest may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionPropertyChangeRequest)this.asInterface(uuid("3c5aeb51-350b-4df8-9414-59e09815510b"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface PerceptionVideoFrameAllocator : Windows.Devices.Perception.Provider.IPerceptionVideoFrameAllocator, Windows.Foundation.IClosable
{
extern(Windows):
	deprecated("PerceptionVideoFrameAllocator may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Devices.Perception.Provider.PerceptionFrame AllocateFrame()
	{
		Windows.Devices.Perception.Provider.PerceptionFrame _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionVideoFrameAllocator)this.asInterface(uuid("4c38a7da-fdd8-4ed4-a039-2a6f9b235038"))).abi_AllocateFrame(&_ret));
		return _ret;
	}
	deprecated("PerceptionVideoFrameAllocator may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	final Windows.Devices.Perception.Provider.PerceptionFrame CopyFromVideoFrame(Windows.Media.VideoFrame frame)
	{
		Windows.Devices.Perception.Provider.PerceptionFrame _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionVideoFrameAllocator)this.asInterface(uuid("4c38a7da-fdd8-4ed4-a039-2a6f9b235038"))).abi_CopyFromVideoFrame(frame, &_ret));
		return _ret;
	}
	final void Close()
	{
		Debug.OK((cast(Windows.Foundation.IClosable)this.asInterface(uuid("30d5a829-7fa4-4026-83bb-d75bae4ea99e"))).abi_Close());
	}
	deprecated("PerceptionVideoFrameAllocator may be unavailable after Windows Creator Update. Please refer to AVStream on MSDN.")
	static Windows.Devices.Perception.Provider.PerceptionVideoFrameAllocator New(UINT32 maxOutstandingFrameCountForWrite, Windows.Graphics.Imaging.BitmapPixelFormat format, Windows.Foundation.Size resolution, Windows.Graphics.Imaging.BitmapAlphaMode alpha)
	{
		auto factory = factory!(Windows.Devices.Perception.Provider.IPerceptionVideoFrameAllocatorFactory);
		Windows.Devices.Perception.Provider.PerceptionVideoFrameAllocator _ret;
		Debug.OK((cast(Windows.Devices.Perception.Provider.IPerceptionVideoFrameAllocatorFactory)factory.asInterface(uuid("1a58b0e1-e91a-481e-b876-a89e2bbc6b33"))).abi_Create(maxOutstandingFrameCountForWrite, format, resolution, alpha, &_ret));
		return _ret;
	}
}