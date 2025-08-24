module Windows.Perception.Spatial;

import dwinrt;

struct SpatialBoundingBox
{
	Windows.Foundation.Numerics.Vector3 Center;
	Windows.Foundation.Numerics.Vector3 Extents;
}

struct SpatialBoundingFrustum
{
	Windows.Foundation.Numerics.Plane Near;
	Windows.Foundation.Numerics.Plane Far;
	Windows.Foundation.Numerics.Plane Right;
	Windows.Foundation.Numerics.Plane Left;
	Windows.Foundation.Numerics.Plane Top;
	Windows.Foundation.Numerics.Plane Bottom;
}

struct SpatialBoundingOrientedBox
{
	Windows.Foundation.Numerics.Vector3 Center;
	Windows.Foundation.Numerics.Vector3 Extents;
	Windows.Foundation.Numerics.Quaternion Orientation;
}

struct SpatialBoundingSphere
{
	Windows.Foundation.Numerics.Vector3 Center;
	float Radius;
}

@uuid("0529e5ce-1d34-3702-bcec-eabff578a869")
@WinrtFactory("Windows.Perception.Spatial.SpatialAnchor")
interface ISpatialAnchor : IInspectable
{
extern(Windows):
	HRESULT get_CoordinateSystem(Windows.Perception.Spatial.SpatialCoordinateSystem* return_value);
	HRESULT get_RawCoordinateSystem(Windows.Perception.Spatial.SpatialCoordinateSystem* return_value);
	HRESULT add_RawCoordinateSystemAdjusted(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialAnchor, Windows.Perception.Spatial.SpatialAnchorRawCoordinateSystemAdjustedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_RawCoordinateSystemAdjusted(EventRegistrationToken cookie);
}

@uuid("ed17c908-a695-4cf6-92fd-97263ba71047")
@WinrtFactory("Windows.Perception.Spatial.SpatialAnchor")
interface ISpatialAnchor2 : IInspectable
{
extern(Windows):
	HRESULT get_RemovedByUser(bool* return_value);
}

@uuid("88e30eab-f3b7-420b-b086-8a80c07d910d")
@WinrtFactory("Windows.Perception.Spatial.SpatialAnchorManager")
interface ISpatialAnchorManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestStoreAsync(Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialAnchorStore)* return_value);
}

@uuid("a1e81eb8-56c7-3117-a2e4-81e0fcf28e00")
@WinrtFactory("Windows.Perception.Spatial.SpatialAnchorRawCoordinateSystemAdjustedEventArgs")
interface ISpatialAnchorRawCoordinateSystemAdjustedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_OldRawCoordinateSystemToNewRawCoordinateSystemTransform(Windows.Foundation.Numerics.Matrix4x4* return_value);
}

@uuid("a9928642-0174-311c-ae79-0e5107669f16")
@WinrtFactory("Windows.Perception.Spatial.SpatialAnchor")
interface ISpatialAnchorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_TryCreateRelativeTo(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.Spatial.SpatialAnchor* return_value);
	HRESULT abi_TryCreateWithPositionRelativeTo(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.Numerics.Vector3 position, Windows.Perception.Spatial.SpatialAnchor* return_value);
	HRESULT abi_TryCreateWithPositionAndOrientationRelativeTo(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.Numerics.Vector3 position, Windows.Foundation.Numerics.Quaternion orientation, Windows.Perception.Spatial.SpatialAnchor* return_value);
}

@uuid("b0bc3636-486a-3cb0-9e6f-1245165c4db6")
@WinrtFactory("Windows.Perception.Spatial.SpatialAnchorStore")
interface ISpatialAnchorStore : IInspectable
{
extern(Windows):
	HRESULT abi_GetAllSavedAnchors(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Perception.Spatial.SpatialAnchor)* return_value);
	HRESULT abi_TrySave(HSTRING id, Windows.Perception.Spatial.SpatialAnchor anchor, bool* return_succeeded);
	HRESULT abi_Remove(HSTRING id);
	HRESULT abi_Clear();
}

@uuid("03bbf9b9-12d8-4bce-8835-c5df3ac0adab")
@WinrtFactory("Windows.Perception.Spatial.SpatialAnchorTransferManager")
interface ISpatialAnchorTransferManagerStatics : IInspectable
{
extern(Windows):
	deprecated("Use SpatialEntityStore instead of SpatialAnchorTransferManager. For more info, see MSDN.")
	HRESULT abi_TryImportAnchorsAsync(Windows.Storage.Streams.IInputStream stream, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Perception.Spatial.SpatialAnchor))* return_operation);
	deprecated("Use SpatialEntityStore instead of SpatialAnchorTransferManager. For more info, see MSDN.")
	HRESULT abi_TryExportAnchorsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Perception.Spatial.SpatialAnchor)) anchors, Windows.Storage.Streams.IOutputStream stream, Windows.Foundation.IAsyncOperation!(bool)* return_operation);
	deprecated("Use SpatialEntityStore instead of SpatialAnchorTransferManager. For more info, see MSDN.")
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialPerceptionAccessStatus)* return_result);
}

@uuid("fb2065da-68c3-33df-b7af-4c787207999c")
@WinrtFactory("Windows.Perception.Spatial.SpatialBoundingVolume")
interface ISpatialBoundingVolume : IInspectable
{
}

@uuid("05889117-b3e1-36d8-b017-566181a5b196")
@WinrtFactory("Windows.Perception.Spatial.SpatialBoundingVolume")
interface ISpatialBoundingVolumeStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromBox(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.Spatial.SpatialBoundingBox box, Windows.Perception.Spatial.SpatialBoundingVolume* return_value);
	HRESULT abi_FromOrientedBox(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.Spatial.SpatialBoundingOrientedBox box, Windows.Perception.Spatial.SpatialBoundingVolume* return_value);
	HRESULT abi_FromSphere(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.Spatial.SpatialBoundingSphere sphere, Windows.Perception.Spatial.SpatialBoundingVolume* return_value);
	HRESULT abi_FromFrustum(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.Spatial.SpatialBoundingFrustum frustum, Windows.Perception.Spatial.SpatialBoundingVolume* return_value);
}

@uuid("69ebca4b-60a3-3586-a653-59a7bd676d07")
@WinrtFactory("Windows.Perception.Spatial.SpatialCoordinateSystem")
interface ISpatialCoordinateSystem : IInspectable
{
extern(Windows):
	HRESULT abi_TryGetTransformTo(Windows.Perception.Spatial.SpatialCoordinateSystem target, Windows.Foundation.IReference!(Windows.Foundation.Numerics.Matrix4x4)* return_value);
}

@uuid("166de955-e1eb-454c-ba08-e6c0668ddc65")
@WinrtFactory("Windows.Perception.Spatial.SpatialEntity")
interface ISpatialEntity : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Anchor(Windows.Perception.Spatial.SpatialAnchor* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("a397f49b-156a-4707-ac2c-d31d570ed399")
@WinrtFactory("Windows.Perception.Spatial.SpatialEntityAddedEventArgs")
interface ISpatialEntityAddedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Entity(Windows.Perception.Spatial.SpatialEntity* return_value);
}

@uuid("e1f1e325-349f-4225-a2f3-4b01c15fe056")
@WinrtFactory("Windows.Perception.Spatial.SpatialEntity")
interface ISpatialEntityFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithSpatialAnchor(Windows.Perception.Spatial.SpatialAnchor spatialAnchor, Windows.Perception.Spatial.SpatialEntity* return_value);
	HRESULT abi_CreateWithSpatialAnchorAndProperties(Windows.Perception.Spatial.SpatialAnchor spatialAnchor, Windows.Foundation.Collections.ValueSet propertySet, Windows.Perception.Spatial.SpatialEntity* return_value);
}

@uuid("91741800-536d-4e9f-abf6-415b5444d651")
@WinrtFactory("Windows.Perception.Spatial.SpatialEntityRemovedEventArgs")
interface ISpatialEntityRemovedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Entity(Windows.Perception.Spatial.SpatialEntity* return_value);
}

@uuid("329788ba-e513-4f06-889d-1be30ecf43e6")
@WinrtFactory("Windows.Perception.Spatial.SpatialEntityStore")
interface ISpatialEntityStore : IInspectable
{
extern(Windows):
	HRESULT abi_SaveAsync(Windows.Perception.Spatial.SpatialEntity entity, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_RemoveAsync(Windows.Perception.Spatial.SpatialEntity entity, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_CreateEntityWatcher(Windows.Perception.Spatial.SpatialEntityWatcher* return_value);
}

@uuid("6b4b389e-7c50-4e92-8a62-4d1d4b7ccd3e")
@WinrtFactory("Windows.Perception.Spatial.SpatialEntityStore")
interface ISpatialEntityStoreStatics : IInspectable
{
extern(Windows):
	HRESULT get_IsSupported(bool* return_value);
	HRESULT abi_TryGetForRemoteSystemSession(Windows.System.RemoteSystems.RemoteSystemSession session, Windows.Perception.Spatial.SpatialEntityStore* return_value);
}

@uuid("e5671766-627b-43cb-a49f-b3be6d47deed")
@WinrtFactory("Windows.Perception.Spatial.SpatialEntityUpdatedEventArgs")
interface ISpatialEntityUpdatedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Entity(Windows.Perception.Spatial.SpatialEntity* return_value);
}

@uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959")
@WinrtFactory("Windows.Perception.Spatial.SpatialEntityWatcher")
interface ISpatialEntityWatcher : IInspectable
{
extern(Windows):
	HRESULT get_Status(Windows.Perception.Spatial.SpatialEntityWatcherStatus* return_value);
	HRESULT add_Added(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityAddedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Added(EventRegistrationToken token);
	HRESULT add_Updated(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityUpdatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Updated(EventRegistrationToken token);
	HRESULT add_Removed(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityRemovedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_Removed(EventRegistrationToken token);
	HRESULT add_EnumerationCompleted(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialEntityWatcher, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_EnumerationCompleted(EventRegistrationToken token);
	HRESULT abi_Start();
	HRESULT abi_Stop();
}

@uuid("1d81d29d-24a1-37d5-8fa1-39b4f9ad67e2")
@WinrtFactory("Windows.Perception.Spatial.SpatialLocation")
interface ISpatialLocation : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_Orientation(Windows.Foundation.Numerics.Quaternion* return_value);
	HRESULT get_AbsoluteLinearVelocity(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_AbsoluteLinearAcceleration(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_AbsoluteAngularVelocity(Windows.Foundation.Numerics.Quaternion* return_value);
	HRESULT get_AbsoluteAngularAcceleration(Windows.Foundation.Numerics.Quaternion* return_value);
}

@uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4")
@WinrtFactory("Windows.Perception.Spatial.SpatialLocator")
interface ISpatialLocator : IInspectable
{
extern(Windows):
	HRESULT get_Locatability(Windows.Perception.Spatial.SpatialLocatability* return_value);
	HRESULT add_LocatabilityChanged(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialLocator, IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_LocatabilityChanged(EventRegistrationToken cookie);
	HRESULT add_PositionalTrackingDeactivating(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialLocator, Windows.Perception.Spatial.SpatialLocatorPositionalTrackingDeactivatingEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_PositionalTrackingDeactivating(EventRegistrationToken cookie);
	HRESULT abi_TryLocateAtTimestamp(Windows.Perception.PerceptionTimestamp timestamp, Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.Spatial.SpatialLocation* return_value);
	HRESULT abi_CreateAttachedFrameOfReferenceAtCurrentHeading(Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference* return_value);
	HRESULT abi_CreateAttachedFrameOfReferenceAtCurrentHeadingWithPosition(Windows.Foundation.Numerics.Vector3 relativePosition, Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference* return_value);
	HRESULT abi_CreateAttachedFrameOfReferenceAtCurrentHeadingWithPositionAndOrientation(Windows.Foundation.Numerics.Vector3 relativePosition, Windows.Foundation.Numerics.Quaternion relativeOrientation, Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference* return_value);
	HRESULT abi_CreateAttachedFrameOfReferenceAtCurrentHeadingWithPositionAndOrientationAndRelativeHeading(Windows.Foundation.Numerics.Vector3 relativePosition, Windows.Foundation.Numerics.Quaternion relativeOrientation, double relativeHeadingInRadians, Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference* return_value);
	HRESULT abi_CreateStationaryFrameOfReferenceAtCurrentLocation(Windows.Perception.Spatial.SpatialStationaryFrameOfReference* return_value);
	HRESULT abi_CreateStationaryFrameOfReferenceAtCurrentLocationWithPosition(Windows.Foundation.Numerics.Vector3 relativePosition, Windows.Perception.Spatial.SpatialStationaryFrameOfReference* return_value);
	HRESULT abi_CreateStationaryFrameOfReferenceAtCurrentLocationWithPositionAndOrientation(Windows.Foundation.Numerics.Vector3 relativePosition, Windows.Foundation.Numerics.Quaternion relativeOrientation, Windows.Perception.Spatial.SpatialStationaryFrameOfReference* return_value);
	HRESULT abi_CreateStationaryFrameOfReferenceAtCurrentLocationWithPositionAndOrientationAndRelativeHeading(Windows.Foundation.Numerics.Vector3 relativePosition, Windows.Foundation.Numerics.Quaternion relativeOrientation, double relativeHeadingInRadians, Windows.Perception.Spatial.SpatialStationaryFrameOfReference* return_value);
}

@uuid("e1774ef6-1f4f-499c-9625-ef5e6ed7a048")
@WinrtFactory("Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference")
interface ISpatialLocatorAttachedFrameOfReference : IInspectable
{
extern(Windows):
	HRESULT get_RelativePosition(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT set_RelativePosition(Windows.Foundation.Numerics.Vector3 value);
	HRESULT get_RelativeOrientation(Windows.Foundation.Numerics.Quaternion* return_value);
	HRESULT set_RelativeOrientation(Windows.Foundation.Numerics.Quaternion value);
	HRESULT abi_AdjustHeading(double headingOffsetInRadians);
	HRESULT abi_GetStationaryCoordinateSystemAtTimestamp(Windows.Perception.PerceptionTimestamp timestamp, Windows.Perception.Spatial.SpatialCoordinateSystem* return_value);
	HRESULT abi_TryGetRelativeHeadingAtTimestamp(Windows.Perception.PerceptionTimestamp timestamp, Windows.Foundation.IReference!(double)* return_value);
}

@uuid("b8a84063-e3f4-368b-9061-9ea9d1d6cc16")
@WinrtFactory("Windows.Perception.Spatial.SpatialLocatorPositionalTrackingDeactivatingEventArgs")
interface ISpatialLocatorPositionalTrackingDeactivatingEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_Canceled(bool* return_value);
	HRESULT set_Canceled(bool value);
}

@uuid("b76e3340-a7c2-361b-bb82-56e93b89b1bb")
@WinrtFactory("Windows.Perception.Spatial.SpatialLocator")
interface ISpatialLocatorStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetDefault(Windows.Perception.Spatial.SpatialLocator* return_value);
}

@uuid("7a8a3464-ad0d-4590-ab86-33062b674926")
@WinrtFactory("Windows.Perception.Spatial.SpatialStageFrameOfReference")
interface ISpatialStageFrameOfReference : IInspectable
{
extern(Windows):
	HRESULT get_CoordinateSystem(Windows.Perception.Spatial.SpatialCoordinateSystem* return_value);
	HRESULT get_MovementRange(Windows.Perception.Spatial.SpatialMovementRange* return_value);
	HRESULT get_LookDirectionRange(Windows.Perception.Spatial.SpatialLookDirectionRange* return_value);
	HRESULT abi_GetCoordinateSystemAtCurrentLocation(Windows.Perception.Spatial.SpatialLocator locator, Windows.Perception.Spatial.SpatialCoordinateSystem* return_result);
	HRESULT abi_TryGetMovementBounds(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, UINT32* out___valueSize, Windows.Foundation.Numerics.Vector3** return_value);
}

@uuid("f78d5c4d-a0a4-499c-8d91-a8c965d40654")
@WinrtFactory("Windows.Perception.Spatial.SpatialStageFrameOfReference")
interface ISpatialStageFrameOfReferenceStatics : IInspectable
{
extern(Windows):
	HRESULT get_Current(Windows.Perception.Spatial.SpatialStageFrameOfReference* return_value);
	HRESULT add_CurrentChanged(Windows.Foundation.EventHandler!(IInspectable) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_CurrentChanged(EventRegistrationToken cookie);
	HRESULT abi_RequestNewStageAsync(Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialStageFrameOfReference)* return_result);
}

@uuid("09dbccb9-bcf8-3e7f-be7e-7edccbb178a8")
@WinrtFactory("Windows.Perception.Spatial.SpatialStationaryFrameOfReference")
interface ISpatialStationaryFrameOfReference : IInspectable
{
extern(Windows):
	HRESULT get_CoordinateSystem(Windows.Perception.Spatial.SpatialCoordinateSystem* return_value);
}

interface SpatialAnchor : Windows.Perception.Spatial.ISpatialAnchor, Windows.Perception.Spatial.ISpatialAnchor2
{
extern(Windows):
	final Windows.Perception.Spatial.SpatialCoordinateSystem CoordinateSystem()
	{
		Windows.Perception.Spatial.SpatialCoordinateSystem _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialAnchor)this.asInterface(uuid("0529e5ce-1d34-3702-bcec-eabff578a869"))).get_CoordinateSystem(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialCoordinateSystem RawCoordinateSystem()
	{
		Windows.Perception.Spatial.SpatialCoordinateSystem _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialAnchor)this.asInterface(uuid("0529e5ce-1d34-3702-bcec-eabff578a869"))).get_RawCoordinateSystem(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnRawCoordinateSystemAdjusted(void delegate(Windows.Perception.Spatial.SpatialAnchor, Windows.Perception.Spatial.SpatialAnchorRawCoordinateSystemAdjustedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialAnchor)this.asInterface(uuid("0529e5ce-1d34-3702-bcec-eabff578a869"))).add_RawCoordinateSystemAdjusted(event!(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialAnchor, Windows.Perception.Spatial.SpatialAnchorRawCoordinateSystemAdjustedEventArgs), Windows.Perception.Spatial.SpatialAnchor, Windows.Perception.Spatial.SpatialAnchorRawCoordinateSystemAdjustedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRawCoordinateSystemAdjusted(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialAnchor)this.asInterface(uuid("0529e5ce-1d34-3702-bcec-eabff578a869"))).remove_RawCoordinateSystemAdjusted(cookie));
	}
	final bool RemovedByUser()
	{
		bool _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialAnchor2)this.asInterface(uuid("ed17c908-a695-4cf6-92fd-97263ba71047"))).get_RemovedByUser(&_ret));
		return _ret;
	}

	private static Windows.Perception.Spatial.ISpatialAnchorStatics _staticInstance;
	public static Windows.Perception.Spatial.ISpatialAnchorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.Spatial.ISpatialAnchorStatics);
		return _staticInstance;
	}
	static Windows.Perception.Spatial.SpatialAnchor TryCreateRelativeTo(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.Perception.Spatial.SpatialAnchor _ret;
		Debug.OK(staticInstance.abi_TryCreateRelativeTo(coordinateSystem, &_ret));
		return _ret;
	}
	static Windows.Perception.Spatial.SpatialAnchor TryCreateWithPositionRelativeTo(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.Numerics.Vector3 position)
	{
		Windows.Perception.Spatial.SpatialAnchor _ret;
		Debug.OK(staticInstance.abi_TryCreateWithPositionRelativeTo(coordinateSystem, position, &_ret));
		return _ret;
	}
	alias TryCreateRelativeTo = TryCreateWithPositionRelativeTo;
	static Windows.Perception.Spatial.SpatialAnchor TryCreateWithPositionAndOrientationRelativeTo(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Foundation.Numerics.Vector3 position, Windows.Foundation.Numerics.Quaternion orientation)
	{
		Windows.Perception.Spatial.SpatialAnchor _ret;
		Debug.OK(staticInstance.abi_TryCreateWithPositionAndOrientationRelativeTo(coordinateSystem, position, orientation, &_ret));
		return _ret;
	}
	alias TryCreateRelativeTo = TryCreateWithPositionAndOrientationRelativeTo;
}

interface SpatialAnchorManager
{
	private static Windows.Perception.Spatial.ISpatialAnchorManagerStatics _staticInstance;
	public static Windows.Perception.Spatial.ISpatialAnchorManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.Spatial.ISpatialAnchorManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialAnchorStore) RequestStoreAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialAnchorStore) _ret;
		Debug.OK(staticInstance.abi_RequestStoreAsync(&_ret));
		return _ret;
	}
}

interface SpatialAnchorRawCoordinateSystemAdjustedEventArgs : Windows.Perception.Spatial.ISpatialAnchorRawCoordinateSystemAdjustedEventArgs
{
extern(Windows):
	final Windows.Foundation.Numerics.Matrix4x4 OldRawCoordinateSystemToNewRawCoordinateSystemTransform()
	{
		Windows.Foundation.Numerics.Matrix4x4 _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialAnchorRawCoordinateSystemAdjustedEventArgs)this.asInterface(uuid("a1e81eb8-56c7-3117-a2e4-81e0fcf28e00"))).get_OldRawCoordinateSystemToNewRawCoordinateSystemTransform(&_ret));
		return _ret;
	}
}

interface SpatialAnchorStore : Windows.Perception.Spatial.ISpatialAnchorStore
{
extern(Windows):
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Perception.Spatial.SpatialAnchor) GetAllSavedAnchors()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Perception.Spatial.SpatialAnchor) _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialAnchorStore)this.asInterface(uuid("b0bc3636-486a-3cb0-9e6f-1245165c4db6"))).abi_GetAllSavedAnchors(&_ret));
		return _ret;
	}
	final bool TrySave(wstring id, Windows.Perception.Spatial.SpatialAnchor anchor)
	{
		bool _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialAnchorStore)this.asInterface(uuid("b0bc3636-486a-3cb0-9e6f-1245165c4db6"))).abi_TrySave(hstring(id).handle, anchor, &_ret));
		return _ret;
	}
	final void Remove(wstring id)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialAnchorStore)this.asInterface(uuid("b0bc3636-486a-3cb0-9e6f-1245165c4db6"))).abi_Remove(hstring(id).handle));
	}
	final void Clear()
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialAnchorStore)this.asInterface(uuid("b0bc3636-486a-3cb0-9e6f-1245165c4db6"))).abi_Clear());
	}
}

interface SpatialAnchorTransferManager
{
	private static Windows.Perception.Spatial.ISpatialAnchorTransferManagerStatics _staticInstance;
	public static Windows.Perception.Spatial.ISpatialAnchorTransferManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.Spatial.ISpatialAnchorTransferManagerStatics);
		return _staticInstance;
	}
	deprecated("Use SpatialEntityStore instead of SpatialAnchorTransferManager. For more info, see MSDN.")
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Perception.Spatial.SpatialAnchor)) TryImportAnchorsAsync(Windows.Storage.Streams.IInputStream stream)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Perception.Spatial.SpatialAnchor)) _ret;
		Debug.OK(staticInstance.abi_TryImportAnchorsAsync(stream, &_ret));
		return _ret;
	}
	deprecated("Use SpatialEntityStore instead of SpatialAnchorTransferManager. For more info, see MSDN.")
	static Windows.Foundation.IAsyncOperation!(bool) TryExportAnchorsAsync(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, Windows.Perception.Spatial.SpatialAnchor)) anchors, Windows.Storage.Streams.IOutputStream stream)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(staticInstance.abi_TryExportAnchorsAsync(anchors, stream, &_ret));
		return _ret;
	}
	deprecated("Use SpatialEntityStore instead of SpatialAnchorTransferManager. For more info, see MSDN.")
	static Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialPerceptionAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialPerceptionAccessStatus) _ret;
		Debug.OK(staticInstance.abi_RequestAccessAsync(&_ret));
		return _ret;
	}
}

interface SpatialBoundingVolume : Windows.Perception.Spatial.ISpatialBoundingVolume
{
	private static Windows.Perception.Spatial.ISpatialBoundingVolumeStatics _staticInstance;
	public static Windows.Perception.Spatial.ISpatialBoundingVolumeStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.Spatial.ISpatialBoundingVolumeStatics);
		return _staticInstance;
	}
	static Windows.Perception.Spatial.SpatialBoundingVolume FromBox(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.Spatial.SpatialBoundingBox box)
	{
		Windows.Perception.Spatial.SpatialBoundingVolume _ret;
		Debug.OK(staticInstance.abi_FromBox(coordinateSystem, box, &_ret));
		return _ret;
	}
	static Windows.Perception.Spatial.SpatialBoundingVolume FromOrientedBox(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.Spatial.SpatialBoundingOrientedBox box)
	{
		Windows.Perception.Spatial.SpatialBoundingVolume _ret;
		Debug.OK(staticInstance.abi_FromOrientedBox(coordinateSystem, box, &_ret));
		return _ret;
	}
	static Windows.Perception.Spatial.SpatialBoundingVolume FromSphere(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.Spatial.SpatialBoundingSphere sphere)
	{
		Windows.Perception.Spatial.SpatialBoundingVolume _ret;
		Debug.OK(staticInstance.abi_FromSphere(coordinateSystem, sphere, &_ret));
		return _ret;
	}
	static Windows.Perception.Spatial.SpatialBoundingVolume FromFrustum(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, Windows.Perception.Spatial.SpatialBoundingFrustum frustum)
	{
		Windows.Perception.Spatial.SpatialBoundingVolume _ret;
		Debug.OK(staticInstance.abi_FromFrustum(coordinateSystem, frustum, &_ret));
		return _ret;
	}
}

interface SpatialCoordinateSystem : Windows.Perception.Spatial.ISpatialCoordinateSystem
{
extern(Windows):
	final Windows.Foundation.IReference!(Windows.Foundation.Numerics.Matrix4x4) TryGetTransformTo(Windows.Perception.Spatial.SpatialCoordinateSystem target)
	{
		Windows.Foundation.IReference!(Windows.Foundation.Numerics.Matrix4x4) _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialCoordinateSystem)this.asInterface(uuid("69ebca4b-60a3-3586-a653-59a7bd676d07"))).abi_TryGetTransformTo(target, &_ret));
		return _ret;
	}
}

interface SpatialEntity : Windows.Perception.Spatial.ISpatialEntity
{
extern(Windows):
	final wstring Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntity)this.asInterface(uuid("166de955-e1eb-454c-ba08-e6c0668ddc65"))).get_Id(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Perception.Spatial.SpatialAnchor Anchor()
	{
		Windows.Perception.Spatial.SpatialAnchor _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntity)this.asInterface(uuid("166de955-e1eb-454c-ba08-e6c0668ddc65"))).get_Anchor(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.ValueSet Properties()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntity)this.asInterface(uuid("166de955-e1eb-454c-ba08-e6c0668ddc65"))).get_Properties(&_ret));
		return _ret;
	}
	static Windows.Perception.Spatial.SpatialEntity New(Windows.Perception.Spatial.SpatialAnchor spatialAnchor)
	{
		auto factory = factory!(Windows.Perception.Spatial.ISpatialEntityFactory);
		Windows.Perception.Spatial.SpatialEntity _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityFactory)factory.asInterface(uuid("e1f1e325-349f-4225-a2f3-4b01c15fe056"))).abi_CreateWithSpatialAnchor(spatialAnchor, &_ret));
		return _ret;
	}
	static Windows.Perception.Spatial.SpatialEntity New(Windows.Perception.Spatial.SpatialAnchor spatialAnchor, Windows.Foundation.Collections.ValueSet propertySet)
	{
		auto factory = factory!(Windows.Perception.Spatial.ISpatialEntityFactory);
		Windows.Perception.Spatial.SpatialEntity _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityFactory)factory.asInterface(uuid("e1f1e325-349f-4225-a2f3-4b01c15fe056"))).abi_CreateWithSpatialAnchorAndProperties(spatialAnchor, propertySet, &_ret));
		return _ret;
	}
}

interface SpatialEntityAddedEventArgs : Windows.Perception.Spatial.ISpatialEntityAddedEventArgs
{
extern(Windows):
	final Windows.Perception.Spatial.SpatialEntity Entity()
	{
		Windows.Perception.Spatial.SpatialEntity _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityAddedEventArgs)this.asInterface(uuid("a397f49b-156a-4707-ac2c-d31d570ed399"))).get_Entity(&_ret));
		return _ret;
	}
}

interface SpatialEntityRemovedEventArgs : Windows.Perception.Spatial.ISpatialEntityRemovedEventArgs
{
extern(Windows):
	final Windows.Perception.Spatial.SpatialEntity Entity()
	{
		Windows.Perception.Spatial.SpatialEntity _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityRemovedEventArgs)this.asInterface(uuid("91741800-536d-4e9f-abf6-415b5444d651"))).get_Entity(&_ret));
		return _ret;
	}
}

interface SpatialEntityStore : Windows.Perception.Spatial.ISpatialEntityStore
{
extern(Windows):
	final Windows.Foundation.IAsyncAction SaveAsync(Windows.Perception.Spatial.SpatialEntity entity)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityStore)this.asInterface(uuid("329788ba-e513-4f06-889d-1be30ecf43e6"))).abi_SaveAsync(entity, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction RemoveAsync(Windows.Perception.Spatial.SpatialEntity entity)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityStore)this.asInterface(uuid("329788ba-e513-4f06-889d-1be30ecf43e6"))).abi_RemoveAsync(entity, &_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialEntityWatcher CreateEntityWatcher()
	{
		Windows.Perception.Spatial.SpatialEntityWatcher _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityStore)this.asInterface(uuid("329788ba-e513-4f06-889d-1be30ecf43e6"))).abi_CreateEntityWatcher(&_ret));
		return _ret;
	}

	private static Windows.Perception.Spatial.ISpatialEntityStoreStatics _staticInstance;
	public static Windows.Perception.Spatial.ISpatialEntityStoreStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.Spatial.ISpatialEntityStoreStatics);
		return _staticInstance;
	}
	static bool IsSupported()
	{
		bool _ret;
		Debug.OK(staticInstance.get_IsSupported(&_ret));
		return _ret;
	}
	static Windows.Perception.Spatial.SpatialEntityStore TryGetForRemoteSystemSession(Windows.System.RemoteSystems.RemoteSystemSession session)
	{
		Windows.Perception.Spatial.SpatialEntityStore _ret;
		Debug.OK(staticInstance.abi_TryGetForRemoteSystemSession(session, &_ret));
		return _ret;
	}
	alias TryGet = TryGetForRemoteSystemSession;
}

interface SpatialEntityUpdatedEventArgs : Windows.Perception.Spatial.ISpatialEntityUpdatedEventArgs
{
extern(Windows):
	final Windows.Perception.Spatial.SpatialEntity Entity()
	{
		Windows.Perception.Spatial.SpatialEntity _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityUpdatedEventArgs)this.asInterface(uuid("e5671766-627b-43cb-a49f-b3be6d47deed"))).get_Entity(&_ret));
		return _ret;
	}
}

interface SpatialEntityWatcher : Windows.Perception.Spatial.ISpatialEntityWatcher
{
extern(Windows):
	final Windows.Perception.Spatial.SpatialEntityWatcherStatus Status()
	{
		Windows.Perception.Spatial.SpatialEntityWatcherStatus _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).get_Status(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnAdded(void delegate(Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityAddedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).add_Added(event!(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityAddedEventArgs), Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityAddedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAdded(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).remove_Added(token));
	}
	final EventRegistrationToken OnUpdated(void delegate(Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityUpdatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).add_Updated(event!(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityUpdatedEventArgs), Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityUpdatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeUpdated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).remove_Updated(token));
	}
	final EventRegistrationToken OnRemoved(void delegate(Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityRemovedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).add_Removed(event!(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityRemovedEventArgs), Windows.Perception.Spatial.SpatialEntityWatcher, Windows.Perception.Spatial.SpatialEntityRemovedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeRemoved(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).remove_Removed(token));
	}
	final EventRegistrationToken OnEnumerationCompleted(void delegate(Windows.Perception.Spatial.SpatialEntityWatcher, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).add_EnumerationCompleted(event!(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialEntityWatcher, IInspectable), Windows.Perception.Spatial.SpatialEntityWatcher, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeEnumerationCompleted(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).remove_EnumerationCompleted(token));
	}
	final void Start()
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).abi_Start());
	}
	final void Stop()
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialEntityWatcher)this.asInterface(uuid("b3b85fa0-6d5e-4bbc-805d-5fe5b9ba1959"))).abi_Stop());
	}
}

interface SpatialLocation : Windows.Perception.Spatial.ISpatialLocation
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocation)this.asInterface(uuid("1d81d29d-24a1-37d5-8fa1-39b4f9ad67e2"))).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Quaternion Orientation()
	{
		Windows.Foundation.Numerics.Quaternion _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocation)this.asInterface(uuid("1d81d29d-24a1-37d5-8fa1-39b4f9ad67e2"))).get_Orientation(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 AbsoluteLinearVelocity()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocation)this.asInterface(uuid("1d81d29d-24a1-37d5-8fa1-39b4f9ad67e2"))).get_AbsoluteLinearVelocity(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 AbsoluteLinearAcceleration()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocation)this.asInterface(uuid("1d81d29d-24a1-37d5-8fa1-39b4f9ad67e2"))).get_AbsoluteLinearAcceleration(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Quaternion AbsoluteAngularVelocity()
	{
		Windows.Foundation.Numerics.Quaternion _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocation)this.asInterface(uuid("1d81d29d-24a1-37d5-8fa1-39b4f9ad67e2"))).get_AbsoluteAngularVelocity(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Quaternion AbsoluteAngularAcceleration()
	{
		Windows.Foundation.Numerics.Quaternion _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocation)this.asInterface(uuid("1d81d29d-24a1-37d5-8fa1-39b4f9ad67e2"))).get_AbsoluteAngularAcceleration(&_ret));
		return _ret;
	}
}

interface SpatialLocator : Windows.Perception.Spatial.ISpatialLocator
{
extern(Windows):
	final Windows.Perception.Spatial.SpatialLocatability Locatability()
	{
		Windows.Perception.Spatial.SpatialLocatability _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).get_Locatability(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnLocatabilityChanged(void delegate(Windows.Perception.Spatial.SpatialLocator, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).add_LocatabilityChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialLocator, IInspectable), Windows.Perception.Spatial.SpatialLocator, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeLocatabilityChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).remove_LocatabilityChanged(cookie));
	}
	final EventRegistrationToken OnPositionalTrackingDeactivating(void delegate(Windows.Perception.Spatial.SpatialLocator, Windows.Perception.Spatial.SpatialLocatorPositionalTrackingDeactivatingEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).add_PositionalTrackingDeactivating(event!(Windows.Foundation.TypedEventHandler!(Windows.Perception.Spatial.SpatialLocator, Windows.Perception.Spatial.SpatialLocatorPositionalTrackingDeactivatingEventArgs), Windows.Perception.Spatial.SpatialLocator, Windows.Perception.Spatial.SpatialLocatorPositionalTrackingDeactivatingEventArgs)(fn), &tok));
		return tok;
	}
	final void removePositionalTrackingDeactivating(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).remove_PositionalTrackingDeactivating(cookie));
	}
	final Windows.Perception.Spatial.SpatialLocation TryLocateAtTimestamp(Windows.Perception.PerceptionTimestamp timestamp, Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem)
	{
		Windows.Perception.Spatial.SpatialLocation _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).abi_TryLocateAtTimestamp(timestamp, coordinateSystem, &_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference CreateAttachedFrameOfReferenceAtCurrentHeading()
	{
		Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).abi_CreateAttachedFrameOfReferenceAtCurrentHeading(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference CreateAttachedFrameOfReferenceAtCurrentHeadingWithPosition(Windows.Foundation.Numerics.Vector3 relativePosition)
	{
		Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).abi_CreateAttachedFrameOfReferenceAtCurrentHeadingWithPosition(relativePosition, &_ret));
		return _ret;
	}
	alias CreateAttachedFrameOfReferenceAtCurrentHeading = CreateAttachedFrameOfReferenceAtCurrentHeadingWithPosition;
	final Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference CreateAttachedFrameOfReferenceAtCurrentHeadingWithPositionAndOrientation(Windows.Foundation.Numerics.Vector3 relativePosition, Windows.Foundation.Numerics.Quaternion relativeOrientation)
	{
		Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).abi_CreateAttachedFrameOfReferenceAtCurrentHeadingWithPositionAndOrientation(relativePosition, relativeOrientation, &_ret));
		return _ret;
	}
	alias CreateAttachedFrameOfReferenceAtCurrentHeading = CreateAttachedFrameOfReferenceAtCurrentHeadingWithPositionAndOrientation;
	final Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference CreateAttachedFrameOfReferenceAtCurrentHeadingWithPositionAndOrientationAndRelativeHeading(Windows.Foundation.Numerics.Vector3 relativePosition, Windows.Foundation.Numerics.Quaternion relativeOrientation, double relativeHeadingInRadians)
	{
		Windows.Perception.Spatial.SpatialLocatorAttachedFrameOfReference _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).abi_CreateAttachedFrameOfReferenceAtCurrentHeadingWithPositionAndOrientationAndRelativeHeading(relativePosition, relativeOrientation, relativeHeadingInRadians, &_ret));
		return _ret;
	}
	alias CreateAttachedFrameOfReferenceAtCurrentHeading = CreateAttachedFrameOfReferenceAtCurrentHeadingWithPositionAndOrientationAndRelativeHeading;
	final Windows.Perception.Spatial.SpatialStationaryFrameOfReference CreateStationaryFrameOfReferenceAtCurrentLocation()
	{
		Windows.Perception.Spatial.SpatialStationaryFrameOfReference _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).abi_CreateStationaryFrameOfReferenceAtCurrentLocation(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialStationaryFrameOfReference CreateStationaryFrameOfReferenceAtCurrentLocationWithPosition(Windows.Foundation.Numerics.Vector3 relativePosition)
	{
		Windows.Perception.Spatial.SpatialStationaryFrameOfReference _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).abi_CreateStationaryFrameOfReferenceAtCurrentLocationWithPosition(relativePosition, &_ret));
		return _ret;
	}
	alias CreateStationaryFrameOfReferenceAtCurrentLocation = CreateStationaryFrameOfReferenceAtCurrentLocationWithPosition;
	final Windows.Perception.Spatial.SpatialStationaryFrameOfReference CreateStationaryFrameOfReferenceAtCurrentLocationWithPositionAndOrientation(Windows.Foundation.Numerics.Vector3 relativePosition, Windows.Foundation.Numerics.Quaternion relativeOrientation)
	{
		Windows.Perception.Spatial.SpatialStationaryFrameOfReference _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).abi_CreateStationaryFrameOfReferenceAtCurrentLocationWithPositionAndOrientation(relativePosition, relativeOrientation, &_ret));
		return _ret;
	}
	alias CreateStationaryFrameOfReferenceAtCurrentLocation = CreateStationaryFrameOfReferenceAtCurrentLocationWithPositionAndOrientation;
	final Windows.Perception.Spatial.SpatialStationaryFrameOfReference CreateStationaryFrameOfReferenceAtCurrentLocationWithPositionAndOrientationAndRelativeHeading(Windows.Foundation.Numerics.Vector3 relativePosition, Windows.Foundation.Numerics.Quaternion relativeOrientation, double relativeHeadingInRadians)
	{
		Windows.Perception.Spatial.SpatialStationaryFrameOfReference _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocator)this.asInterface(uuid("f6478925-9e0c-3bb6-997e-b64ecca24cf4"))).abi_CreateStationaryFrameOfReferenceAtCurrentLocationWithPositionAndOrientationAndRelativeHeading(relativePosition, relativeOrientation, relativeHeadingInRadians, &_ret));
		return _ret;
	}
	alias CreateStationaryFrameOfReferenceAtCurrentLocation = CreateStationaryFrameOfReferenceAtCurrentLocationWithPositionAndOrientationAndRelativeHeading;

	private static Windows.Perception.Spatial.ISpatialLocatorStatics _staticInstance;
	public static Windows.Perception.Spatial.ISpatialLocatorStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.Spatial.ISpatialLocatorStatics);
		return _staticInstance;
	}
	static Windows.Perception.Spatial.SpatialLocator GetDefault()
	{
		Windows.Perception.Spatial.SpatialLocator _ret;
		Debug.OK(staticInstance.abi_GetDefault(&_ret));
		return _ret;
	}
}

interface SpatialLocatorAttachedFrameOfReference : Windows.Perception.Spatial.ISpatialLocatorAttachedFrameOfReference
{
extern(Windows):
	final Windows.Foundation.Numerics.Vector3 RelativePosition()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocatorAttachedFrameOfReference)this.asInterface(uuid("e1774ef6-1f4f-499c-9625-ef5e6ed7a048"))).get_RelativePosition(&_ret));
		return _ret;
	}
	final void RelativePosition(Windows.Foundation.Numerics.Vector3 value)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocatorAttachedFrameOfReference)this.asInterface(uuid("e1774ef6-1f4f-499c-9625-ef5e6ed7a048"))).set_RelativePosition(value));
	}
	final Windows.Foundation.Numerics.Quaternion RelativeOrientation()
	{
		Windows.Foundation.Numerics.Quaternion _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocatorAttachedFrameOfReference)this.asInterface(uuid("e1774ef6-1f4f-499c-9625-ef5e6ed7a048"))).get_RelativeOrientation(&_ret));
		return _ret;
	}
	final void RelativeOrientation(Windows.Foundation.Numerics.Quaternion value)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocatorAttachedFrameOfReference)this.asInterface(uuid("e1774ef6-1f4f-499c-9625-ef5e6ed7a048"))).set_RelativeOrientation(value));
	}
	final void AdjustHeading(double headingOffsetInRadians)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocatorAttachedFrameOfReference)this.asInterface(uuid("e1774ef6-1f4f-499c-9625-ef5e6ed7a048"))).abi_AdjustHeading(headingOffsetInRadians));
	}
	final Windows.Perception.Spatial.SpatialCoordinateSystem GetStationaryCoordinateSystemAtTimestamp(Windows.Perception.PerceptionTimestamp timestamp)
	{
		Windows.Perception.Spatial.SpatialCoordinateSystem _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocatorAttachedFrameOfReference)this.asInterface(uuid("e1774ef6-1f4f-499c-9625-ef5e6ed7a048"))).abi_GetStationaryCoordinateSystemAtTimestamp(timestamp, &_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(double) TryGetRelativeHeadingAtTimestamp(Windows.Perception.PerceptionTimestamp timestamp)
	{
		Windows.Foundation.IReference!(double) _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocatorAttachedFrameOfReference)this.asInterface(uuid("e1774ef6-1f4f-499c-9625-ef5e6ed7a048"))).abi_TryGetRelativeHeadingAtTimestamp(timestamp, &_ret));
		return _ret;
	}
}

interface SpatialLocatorPositionalTrackingDeactivatingEventArgs : Windows.Perception.Spatial.ISpatialLocatorPositionalTrackingDeactivatingEventArgs
{
extern(Windows):
	final bool Canceled()
	{
		bool _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocatorPositionalTrackingDeactivatingEventArgs)this.asInterface(uuid("b8a84063-e3f4-368b-9061-9ea9d1d6cc16"))).get_Canceled(&_ret));
		return _ret;
	}
	final void Canceled(bool value)
	{
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialLocatorPositionalTrackingDeactivatingEventArgs)this.asInterface(uuid("b8a84063-e3f4-368b-9061-9ea9d1d6cc16"))).set_Canceled(value));
	}
}

interface SpatialStageFrameOfReference : Windows.Perception.Spatial.ISpatialStageFrameOfReference
{
extern(Windows):
	final Windows.Perception.Spatial.SpatialCoordinateSystem CoordinateSystem()
	{
		Windows.Perception.Spatial.SpatialCoordinateSystem _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialStageFrameOfReference)this.asInterface(uuid("7a8a3464-ad0d-4590-ab86-33062b674926"))).get_CoordinateSystem(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialMovementRange MovementRange()
	{
		Windows.Perception.Spatial.SpatialMovementRange _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialStageFrameOfReference)this.asInterface(uuid("7a8a3464-ad0d-4590-ab86-33062b674926"))).get_MovementRange(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialLookDirectionRange LookDirectionRange()
	{
		Windows.Perception.Spatial.SpatialLookDirectionRange _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialStageFrameOfReference)this.asInterface(uuid("7a8a3464-ad0d-4590-ab86-33062b674926"))).get_LookDirectionRange(&_ret));
		return _ret;
	}
	final Windows.Perception.Spatial.SpatialCoordinateSystem GetCoordinateSystemAtCurrentLocation(Windows.Perception.Spatial.SpatialLocator locator)
	{
		Windows.Perception.Spatial.SpatialCoordinateSystem _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialStageFrameOfReference)this.asInterface(uuid("7a8a3464-ad0d-4590-ab86-33062b674926"))).abi_GetCoordinateSystemAtCurrentLocation(locator, &_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3* TryGetMovementBounds(Windows.Perception.Spatial.SpatialCoordinateSystem coordinateSystem, UINT32* out___valueSize)
	{
		Windows.Foundation.Numerics.Vector3* _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialStageFrameOfReference)this.asInterface(uuid("7a8a3464-ad0d-4590-ab86-33062b674926"))).abi_TryGetMovementBounds(coordinateSystem, out___valueSize, &_ret));
		return _ret;
	}

	private static Windows.Perception.Spatial.ISpatialStageFrameOfReferenceStatics _staticInstance;
	public static Windows.Perception.Spatial.ISpatialStageFrameOfReferenceStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Perception.Spatial.ISpatialStageFrameOfReferenceStatics);
		return _staticInstance;
	}
	static Windows.Perception.Spatial.SpatialStageFrameOfReference Current()
	{
		Windows.Perception.Spatial.SpatialStageFrameOfReference _ret;
		Debug.OK(staticInstance.get_Current(&_ret));
		return _ret;
	}
	static EventRegistrationToken OnCurrentChanged(void delegate(IInspectable, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK(staticInstance.add_CurrentChanged(event!(Windows.Foundation.EventHandler!(IInspectable), IInspectable, IInspectable)(fn), &tok));
		return tok;
	}
	static void removeCurrentChanged(EventRegistrationToken cookie)
	{
		Debug.OK(staticInstance.remove_CurrentChanged(cookie));
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialStageFrameOfReference) RequestNewStageAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Perception.Spatial.SpatialStageFrameOfReference) _ret;
		Debug.OK(staticInstance.abi_RequestNewStageAsync(&_ret));
		return _ret;
	}
}

interface SpatialStationaryFrameOfReference : Windows.Perception.Spatial.ISpatialStationaryFrameOfReference
{
extern(Windows):
	final Windows.Perception.Spatial.SpatialCoordinateSystem CoordinateSystem()
	{
		Windows.Perception.Spatial.SpatialCoordinateSystem _ret;
		Debug.OK((cast(Windows.Perception.Spatial.ISpatialStationaryFrameOfReference)this.asInterface(uuid("09dbccb9-bcf8-3e7f-be7e-7edccbb178a8"))).get_CoordinateSystem(&_ret));
		return _ret;
	}
}

enum SpatialEntityWatcherStatus
{
	Created = 0,
	Started = 1,
	EnumerationCompleted = 2,
	Stopping = 3,
	Stopped = 4,
	Aborted = 5
}

enum SpatialLocatability
{
	Unavailable = 0,
	OrientationOnly = 1,
	PositionalTrackingActivating = 2,
	PositionalTrackingActive = 3,
	PositionalTrackingInhibited = 4
}

enum SpatialLookDirectionRange
{
	ForwardOnly = 0,
	Omnidirectional = 1
}

enum SpatialMovementRange
{
	NoMovement = 0,
	Bounded = 1
}

enum SpatialPerceptionAccessStatus
{
	Unspecified = 0,
	Allowed = 1,
	DeniedByUser = 2,
	DeniedBySystem = 3
}