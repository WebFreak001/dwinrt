module Windows.Services.TargetedContent;

import dwinrt;

@uuid("d75b691e-6cd6-4ca0-9d8f-4728b0b7e6b6")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentAction")
interface ITargetedContentAction : IInspectable
{
extern(Windows):
	HRESULT abi_InvokeAsync(Windows.Foundation.IAsyncAction* return_asyncAction);
}

@uuid("e0f59d26-5927-4450-965c-1ceb7becde65")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentAvailabilityChangedEventArgs")
interface ITargetedContentAvailabilityChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("99d488c9-587e-4586-8ef7-b54ca9453a16")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentChangedEventArgs")
interface ITargetedContentChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
	HRESULT get_HasPreviousContentExpired(bool* return_value);
}

@uuid("2d4b66c5-f163-44ba-9f6e-e1a4c2bb559d")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentCollection")
interface ITargetedContentCollection : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT abi_ReportInteraction(Windows.Services.TargetedContent.TargetedContentInteraction interaction);
	HRESULT abi_ReportCustomInteraction(HSTRING customInteractionName);
	HRESULT get_Path(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.TargetedContent.TargetedContentValue)* return_value);
	HRESULT get_Collections(Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentCollection)* return_value);
	HRESULT get_Items(Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentItem)* return_value);
}

@uuid("bc2494c9-8837-47c2-850f-d79d64595926")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentContainer")
interface ITargetedContentContainer : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
	HRESULT get_Availability(Windows.Services.TargetedContent.TargetedContentAvailability* return_value);
	HRESULT get_Content(Windows.Services.TargetedContent.TargetedContentCollection* return_value);
	HRESULT abi_SelectSingleObject(HSTRING path, Windows.Services.TargetedContent.TargetedContentObject* return_value);
}

@uuid("5b47e7fb-2140-4c1f-a736-c59583f227d8")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentContainer")
interface ITargetedContentContainerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetAsync(HSTRING contentId, Windows.Foundation.IAsyncOperation!(Windows.Services.TargetedContent.TargetedContentContainer)* return_asyncOperation);
}

@uuid("a7a585d9-779f-4b1e-bbb1-8eaf53fbeab2")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentImage")
interface ITargetedContentImage_Base : IInspectable
{
extern(Windows):
	HRESULT get_Height(UINT32* return_value);
	HRESULT get_Width(UINT32* return_value);
}
@uuid("a7a585d9-779f-4b1e-bbb1-8eaf53fbeab2")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentImage")
interface ITargetedContentImage : ITargetedContentImage_Base, Windows.Storage.Streams.IRandomAccessStreamReference {}

@uuid("38168dc4-276c-4c32-96ba-565c6e406e74")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentItem")
interface ITargetedContentItem : IInspectable
{
extern(Windows):
	HRESULT get_Path(HSTRING* return_value);
	HRESULT abi_ReportInteraction(Windows.Services.TargetedContent.TargetedContentInteraction interaction);
	HRESULT abi_ReportCustomInteraction(HSTRING customInteractionName);
	HRESULT get_State(Windows.Services.TargetedContent.TargetedContentItemState* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.TargetedContent.TargetedContentValue)* return_value);
	HRESULT get_Collections(Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentCollection)* return_value);
}

@uuid("73935454-4c65-4b47-a441-472de53c79b6")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentItemState")
interface ITargetedContentItemState : IInspectable
{
extern(Windows):
	HRESULT get_ShouldDisplay(bool* return_value);
	HRESULT get_AppInstallationState(Windows.Services.TargetedContent.TargetedContentAppInstallationState* return_value);
}

@uuid("041d7969-2212-42d1-9dfa-88a8e3033aa3")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentObject")
interface ITargetedContentObject : IInspectable
{
extern(Windows):
	HRESULT get_ObjectKind(Windows.Services.TargetedContent.TargetedContentObjectKind* return_value);
	HRESULT get_Collection(Windows.Services.TargetedContent.TargetedContentCollection* return_value);
	HRESULT get_Item(Windows.Services.TargetedContent.TargetedContentItem* return_value);
	HRESULT get_Value(Windows.Services.TargetedContent.TargetedContentValue* return_value);
}

@uuid("9a1cef3d-8073-4416-8df2-546835a6414f")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentStateChangedEventArgs")
interface ITargetedContentStateChangedEventArgs : IInspectable
{
extern(Windows):
	HRESULT abi_GetDeferral(Windows.Foundation.Deferral* return_value);
}

@uuid("882c2c49-c652-4c7a-acad-1f7fa2986c73")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentSubscription")
interface ITargetedContentSubscription : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT abi_GetContentContainerAsync(Windows.Foundation.IAsyncOperation!(Windows.Services.TargetedContent.TargetedContentContainer)* return_asyncOperation);
	HRESULT add_ContentChanged(Windows.Foundation.TypedEventHandler!(Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentChangedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_ContentChanged(EventRegistrationToken cookie);
	HRESULT add_AvailabilityChanged(Windows.Foundation.TypedEventHandler!(Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentAvailabilityChangedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_AvailabilityChanged(EventRegistrationToken cookie);
	HRESULT add_StateChanged(Windows.Foundation.TypedEventHandler!(Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentStateChangedEventArgs) handler, EventRegistrationToken* return_cookie);
	HRESULT remove_StateChanged(EventRegistrationToken cookie);
}

@uuid("61ee6ad0-2c83-421b-8467-413eaf1aeb97")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentSubscriptionOptions")
interface ITargetedContentSubscriptionOptions : IInspectable
{
extern(Windows):
	HRESULT get_SubscriptionId(HSTRING* return_value);
	HRESULT get_AllowPartialContentAvailability(bool* return_value);
	HRESULT set_AllowPartialContentAvailability(bool value);
	HRESULT get_CloudQueryParameters(Windows.Foundation.Collections.IMap!(HSTRING, HSTRING)* return_value);
	HRESULT get_LocalFilters(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT abi_Update();
}

@uuid("faddfe80-360d-4916-b53c-7ea27090d02a")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentSubscription")
interface ITargetedContentSubscriptionStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetAsync(HSTRING subscriptionId, Windows.Foundation.IAsyncOperation!(Windows.Services.TargetedContent.TargetedContentSubscription)* return_asyncOperation);
	HRESULT abi_GetOptions(HSTRING subscriptionId, Windows.Services.TargetedContent.TargetedContentSubscriptionOptions* return_value);
}

@uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf")
@WinrtFactory("Windows.Services.TargetedContent.TargetedContentValue")
interface ITargetedContentValue : IInspectable
{
extern(Windows):
	HRESULT get_ValueKind(Windows.Services.TargetedContent.TargetedContentValueKind* return_value);
	HRESULT get_Path(HSTRING* return_value);
	HRESULT get_String(HSTRING* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Number(double* return_value);
	HRESULT get_Boolean(bool* return_value);
	HRESULT get_File(Windows.Services.TargetedContent.TargetedContentFile* return_value);
	HRESULT get_ImageFile(Windows.Services.TargetedContent.TargetedContentImage* return_value);
	HRESULT get_Action(Windows.Services.TargetedContent.TargetedContentAction* return_value);
	HRESULT get_Strings(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Uris(Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri)* return_value);
	HRESULT get_Numbers(Windows.Foundation.Collections.IVectorView!(double)* return_value);
	HRESULT get_Booleans(Windows.Foundation.Collections.IVectorView!(bool)* return_value);
	HRESULT get_Files(Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentFile)* return_value);
	HRESULT get_ImageFiles(Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentImage)* return_value);
	HRESULT get_Actions(Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentAction)* return_value);
}

interface TargetedContentAction : Windows.Services.TargetedContent.ITargetedContentAction
{
extern(Windows):
	final Windows.Foundation.IAsyncAction InvokeAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentAction)this.asInterface(uuid("d75b691e-6cd6-4ca0-9d8f-4728b0b7e6b6"))).abi_InvokeAsync(&_ret));
		return _ret;
	}
}

interface TargetedContentAvailabilityChangedEventArgs : Windows.Services.TargetedContent.ITargetedContentAvailabilityChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentAvailabilityChangedEventArgs)this.asInterface(uuid("e0f59d26-5927-4450-965c-1ceb7becde65"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface TargetedContentChangedEventArgs : Windows.Services.TargetedContent.ITargetedContentChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentChangedEventArgs)this.asInterface(uuid("99d488c9-587e-4586-8ef7-b54ca9453a16"))).abi_GetDeferral(&_ret));
		return _ret;
	}
	final bool HasPreviousContentExpired()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentChangedEventArgs)this.asInterface(uuid("99d488c9-587e-4586-8ef7-b54ca9453a16"))).get_HasPreviousContentExpired(&_ret));
		return _ret;
	}
}

interface TargetedContentCollection : Windows.Services.TargetedContent.ITargetedContentCollection
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentCollection)this.asInterface(uuid("2d4b66c5-f163-44ba-9f6e-e1a4c2bb559d"))).get_Id(&_ret));
		return _ret;
	}
	final void ReportInteraction(Windows.Services.TargetedContent.TargetedContentInteraction interaction)
	{
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentCollection)this.asInterface(uuid("2d4b66c5-f163-44ba-9f6e-e1a4c2bb559d"))).abi_ReportInteraction(interaction));
	}
	final void ReportCustomInteraction(HSTRING customInteractionName)
	{
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentCollection)this.asInterface(uuid("2d4b66c5-f163-44ba-9f6e-e1a4c2bb559d"))).abi_ReportCustomInteraction(customInteractionName));
	}
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentCollection)this.asInterface(uuid("2d4b66c5-f163-44ba-9f6e-e1a4c2bb559d"))).get_Path(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.TargetedContent.TargetedContentValue) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.TargetedContent.TargetedContentValue) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentCollection)this.asInterface(uuid("2d4b66c5-f163-44ba-9f6e-e1a4c2bb559d"))).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentCollection) Collections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentCollection) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentCollection)this.asInterface(uuid("2d4b66c5-f163-44ba-9f6e-e1a4c2bb559d"))).get_Collections(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentItem) Items()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentItem) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentCollection)this.asInterface(uuid("2d4b66c5-f163-44ba-9f6e-e1a4c2bb559d"))).get_Items(&_ret));
		return _ret;
	}
}

interface TargetedContentContainer : Windows.Services.TargetedContent.ITargetedContentContainer
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentContainer)this.asInterface(uuid("bc2494c9-8837-47c2-850f-d79d64595926"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentContainer)this.asInterface(uuid("bc2494c9-8837-47c2-850f-d79d64595926"))).get_Timestamp(&_ret));
		return _ret;
	}
	final Windows.Services.TargetedContent.TargetedContentAvailability Availability()
	{
		Windows.Services.TargetedContent.TargetedContentAvailability _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentContainer)this.asInterface(uuid("bc2494c9-8837-47c2-850f-d79d64595926"))).get_Availability(&_ret));
		return _ret;
	}
	final Windows.Services.TargetedContent.TargetedContentCollection Content()
	{
		Windows.Services.TargetedContent.TargetedContentCollection _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentContainer)this.asInterface(uuid("bc2494c9-8837-47c2-850f-d79d64595926"))).get_Content(&_ret));
		return _ret;
	}
	final Windows.Services.TargetedContent.TargetedContentObject SelectSingleObject(HSTRING path)
	{
		Windows.Services.TargetedContent.TargetedContentObject _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentContainer)this.asInterface(uuid("bc2494c9-8837-47c2-850f-d79d64595926"))).abi_SelectSingleObject(path, &_ret));
		return _ret;
	}

	private static Windows.Services.TargetedContent.ITargetedContentContainerStatics _staticInstance;
	public static Windows.Services.TargetedContent.ITargetedContentContainerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.TargetedContent.ITargetedContentContainerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.TargetedContent.TargetedContentContainer) GetAsync(HSTRING contentId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.TargetedContent.TargetedContentContainer) _ret;
		Debug.OK(staticInstance.abi_GetAsync(contentId, &_ret));
		return _ret;
	}
}

interface TargetedContentFile : Windows.Storage.Streams.IRandomAccessStreamReference
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) OpenReadAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStreamReference)this.asInterface(uuid("33ee3134-1dd6-4e3a-8067-d1c162e8642b"))).abi_OpenReadAsync(&_ret));
		return _ret;
	}
}

interface TargetedContentImage : Windows.Services.TargetedContent.ITargetedContentImage, Windows.Storage.Streams.IRandomAccessStreamReference
{
extern(Windows):
	final UINT32 Height()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentImage)this.asInterface(uuid("a7a585d9-779f-4b1e-bbb1-8eaf53fbeab2"))).get_Height(&_ret));
		return _ret;
	}
	final UINT32 Width()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentImage)this.asInterface(uuid("a7a585d9-779f-4b1e-bbb1-8eaf53fbeab2"))).get_Width(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) OpenReadAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStreamWithContentType) _ret;
		Debug.OK((cast(Windows.Storage.Streams.IRandomAccessStreamReference)this.asInterface(uuid("33ee3134-1dd6-4e3a-8067-d1c162e8642b"))).abi_OpenReadAsync(&_ret));
		return _ret;
	}
}

interface TargetedContentItem : Windows.Services.TargetedContent.ITargetedContentItem
{
extern(Windows):
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentItem)this.asInterface(uuid("38168dc4-276c-4c32-96ba-565c6e406e74"))).get_Path(&_ret));
		return _ret;
	}
	final void ReportInteraction(Windows.Services.TargetedContent.TargetedContentInteraction interaction)
	{
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentItem)this.asInterface(uuid("38168dc4-276c-4c32-96ba-565c6e406e74"))).abi_ReportInteraction(interaction));
	}
	final void ReportCustomInteraction(HSTRING customInteractionName)
	{
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentItem)this.asInterface(uuid("38168dc4-276c-4c32-96ba-565c6e406e74"))).abi_ReportCustomInteraction(customInteractionName));
	}
	final Windows.Services.TargetedContent.TargetedContentItemState State()
	{
		Windows.Services.TargetedContent.TargetedContentItemState _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentItem)this.asInterface(uuid("38168dc4-276c-4c32-96ba-565c6e406e74"))).get_State(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.TargetedContent.TargetedContentValue) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, Windows.Services.TargetedContent.TargetedContentValue) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentItem)this.asInterface(uuid("38168dc4-276c-4c32-96ba-565c6e406e74"))).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentCollection) Collections()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentCollection) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentItem)this.asInterface(uuid("38168dc4-276c-4c32-96ba-565c6e406e74"))).get_Collections(&_ret));
		return _ret;
	}
}

interface TargetedContentItemState : Windows.Services.TargetedContent.ITargetedContentItemState
{
extern(Windows):
	final bool ShouldDisplay()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentItemState)this.asInterface(uuid("73935454-4c65-4b47-a441-472de53c79b6"))).get_ShouldDisplay(&_ret));
		return _ret;
	}
	final Windows.Services.TargetedContent.TargetedContentAppInstallationState AppInstallationState()
	{
		Windows.Services.TargetedContent.TargetedContentAppInstallationState _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentItemState)this.asInterface(uuid("73935454-4c65-4b47-a441-472de53c79b6"))).get_AppInstallationState(&_ret));
		return _ret;
	}
}

interface TargetedContentObject : Windows.Services.TargetedContent.ITargetedContentObject
{
extern(Windows):
	final Windows.Services.TargetedContent.TargetedContentObjectKind ObjectKind()
	{
		Windows.Services.TargetedContent.TargetedContentObjectKind _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentObject)this.asInterface(uuid("041d7969-2212-42d1-9dfa-88a8e3033aa3"))).get_ObjectKind(&_ret));
		return _ret;
	}
	final Windows.Services.TargetedContent.TargetedContentCollection Collection()
	{
		Windows.Services.TargetedContent.TargetedContentCollection _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentObject)this.asInterface(uuid("041d7969-2212-42d1-9dfa-88a8e3033aa3"))).get_Collection(&_ret));
		return _ret;
	}
	final Windows.Services.TargetedContent.TargetedContentItem Item()
	{
		Windows.Services.TargetedContent.TargetedContentItem _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentObject)this.asInterface(uuid("041d7969-2212-42d1-9dfa-88a8e3033aa3"))).get_Item(&_ret));
		return _ret;
	}
	final Windows.Services.TargetedContent.TargetedContentValue Value()
	{
		Windows.Services.TargetedContent.TargetedContentValue _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentObject)this.asInterface(uuid("041d7969-2212-42d1-9dfa-88a8e3033aa3"))).get_Value(&_ret));
		return _ret;
	}
}

interface TargetedContentStateChangedEventArgs : Windows.Services.TargetedContent.ITargetedContentStateChangedEventArgs
{
extern(Windows):
	final Windows.Foundation.Deferral GetDeferral()
	{
		Windows.Foundation.Deferral _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentStateChangedEventArgs)this.asInterface(uuid("9a1cef3d-8073-4416-8df2-546835a6414f"))).abi_GetDeferral(&_ret));
		return _ret;
	}
}

interface TargetedContentSubscription : Windows.Services.TargetedContent.ITargetedContentSubscription
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscription)this.asInterface(uuid("882c2c49-c652-4c7a-acad-1f7fa2986c73"))).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Services.TargetedContent.TargetedContentContainer) GetContentContainerAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.TargetedContent.TargetedContentContainer) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscription)this.asInterface(uuid("882c2c49-c652-4c7a-acad-1f7fa2986c73"))).abi_GetContentContainerAsync(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnContentChanged(void delegate(Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscription)this.asInterface(uuid("882c2c49-c652-4c7a-acad-1f7fa2986c73"))).add_ContentChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentChangedEventArgs), Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeContentChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscription)this.asInterface(uuid("882c2c49-c652-4c7a-acad-1f7fa2986c73"))).remove_ContentChanged(cookie));
	}
	final EventRegistrationToken OnAvailabilityChanged(void delegate(Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentAvailabilityChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscription)this.asInterface(uuid("882c2c49-c652-4c7a-acad-1f7fa2986c73"))).add_AvailabilityChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentAvailabilityChangedEventArgs), Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentAvailabilityChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeAvailabilityChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscription)this.asInterface(uuid("882c2c49-c652-4c7a-acad-1f7fa2986c73"))).remove_AvailabilityChanged(cookie));
	}
	final EventRegistrationToken OnStateChanged(void delegate(Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentStateChangedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscription)this.asInterface(uuid("882c2c49-c652-4c7a-acad-1f7fa2986c73"))).add_StateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentStateChangedEventArgs), Windows.Services.TargetedContent.TargetedContentSubscription, Windows.Services.TargetedContent.TargetedContentStateChangedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeStateChanged(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscription)this.asInterface(uuid("882c2c49-c652-4c7a-acad-1f7fa2986c73"))).remove_StateChanged(cookie));
	}

	private static Windows.Services.TargetedContent.ITargetedContentSubscriptionStatics _staticInstance;
	public static Windows.Services.TargetedContent.ITargetedContentSubscriptionStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Services.TargetedContent.ITargetedContentSubscriptionStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Services.TargetedContent.TargetedContentSubscription) GetAsync(HSTRING subscriptionId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Services.TargetedContent.TargetedContentSubscription) _ret;
		Debug.OK(staticInstance.abi_GetAsync(subscriptionId, &_ret));
		return _ret;
	}
	static Windows.Services.TargetedContent.TargetedContentSubscriptionOptions GetOptions(HSTRING subscriptionId)
	{
		Windows.Services.TargetedContent.TargetedContentSubscriptionOptions _ret;
		Debug.OK(staticInstance.abi_GetOptions(subscriptionId, &_ret));
		return _ret;
	}
}

interface TargetedContentSubscriptionOptions : Windows.Services.TargetedContent.ITargetedContentSubscriptionOptions
{
extern(Windows):
	final HSTRING SubscriptionId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscriptionOptions)this.asInterface(uuid("61ee6ad0-2c83-421b-8467-413eaf1aeb97"))).get_SubscriptionId(&_ret));
		return _ret;
	}
	final bool AllowPartialContentAvailability()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscriptionOptions)this.asInterface(uuid("61ee6ad0-2c83-421b-8467-413eaf1aeb97"))).get_AllowPartialContentAvailability(&_ret));
		return _ret;
	}
	final void AllowPartialContentAvailability(bool value)
	{
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscriptionOptions)this.asInterface(uuid("61ee6ad0-2c83-421b-8467-413eaf1aeb97"))).set_AllowPartialContentAvailability(value));
	}
	final Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) CloudQueryParameters()
	{
		Windows.Foundation.Collections.IMap!(HSTRING, HSTRING) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscriptionOptions)this.asInterface(uuid("61ee6ad0-2c83-421b-8467-413eaf1aeb97"))).get_CloudQueryParameters(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) LocalFilters()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscriptionOptions)this.asInterface(uuid("61ee6ad0-2c83-421b-8467-413eaf1aeb97"))).get_LocalFilters(&_ret));
		return _ret;
	}
	final void Update()
	{
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentSubscriptionOptions)this.asInterface(uuid("61ee6ad0-2c83-421b-8467-413eaf1aeb97"))).abi_Update());
	}
}

interface TargetedContentValue : Windows.Services.TargetedContent.ITargetedContentValue
{
extern(Windows):
	final Windows.Services.TargetedContent.TargetedContentValueKind ValueKind()
	{
		Windows.Services.TargetedContent.TargetedContentValueKind _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_ValueKind(&_ret));
		return _ret;
	}
	final HSTRING Path()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Path(&_ret));
		return _ret;
	}
	final HSTRING String()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_String(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Uri(&_ret));
		return _ret;
	}
	final double Number()
	{
		double _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Number(&_ret));
		return _ret;
	}
	final bool Boolean()
	{
		bool _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Boolean(&_ret));
		return _ret;
	}
	final Windows.Services.TargetedContent.TargetedContentFile File()
	{
		Windows.Services.TargetedContent.TargetedContentFile _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_File(&_ret));
		return _ret;
	}
	final Windows.Services.TargetedContent.TargetedContentImage ImageFile()
	{
		Windows.Services.TargetedContent.TargetedContentImage _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_ImageFile(&_ret));
		return _ret;
	}
	final Windows.Services.TargetedContent.TargetedContentAction Action()
	{
		Windows.Services.TargetedContent.TargetedContentAction _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Action(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Strings()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Strings(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri) Uris()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Foundation.Uri) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Uris(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(double) Numbers()
	{
		Windows.Foundation.Collections.IVectorView!(double) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Numbers(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(bool) Booleans()
	{
		Windows.Foundation.Collections.IVectorView!(bool) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Booleans(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentFile) Files()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentFile) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Files(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentImage) ImageFiles()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentImage) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_ImageFiles(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentAction) Actions()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Services.TargetedContent.TargetedContentAction) _ret;
		Debug.OK((cast(Windows.Services.TargetedContent.ITargetedContentValue)this.asInterface(uuid("aafde4b3-4215-4bf8-867f-43f04865f9bf"))).get_Actions(&_ret));
		return _ret;
	}
}

enum TargetedContentAppInstallationState
{
	NotApplicable = 0,
	NotInstalled = 1,
	Installed = 2
}

enum TargetedContentAvailability
{
	None = 0,
	Partial = 1,
	All = 2
}

enum TargetedContentInteraction
{
	Impression = 0,
	ClickThrough = 1,
	Hover = 2,
	Like = 3,
	Dislike = 4,
	Dismiss = 5,
	Ineligible = 6,
	Accept = 7,
	Decline = 8,
	Defer = 9,
	Canceled = 10,
	Conversion = 11,
	Opportunity = 12
}

enum TargetedContentObjectKind
{
	Collection = 0,
	Item = 1,
	Value = 2
}

enum TargetedContentValueKind
{
	String = 0,
	Uri = 1,
	Number = 2,
	Boolean = 3,
	File = 4,
	ImageFile = 5,
	Action = 6,
	Strings = 7,
	Uris = 8,
	Numbers = 9,
	Booleans = 10,
	Files = 11,
	ImageFiles = 12,
	Actions = 13
}