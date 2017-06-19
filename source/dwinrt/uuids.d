module dwinrt.uuids;

import dwinrt;

GUID uuidOfInstanced(string T)
{
	if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(AppExtension)")
		return uuid("8e80ca83-3cd3-5f9c-83e4-84347ca5498c");
	else if (T == "IIterable!(AppExtension)")
		return uuid("3b4fe356-1b13-59cb-ab1f-c4667a74756b");
	else if (T == "IVectorView!(AppExtension)")
		return uuid("94520810-7e9b-5efd-b74d-e9d4175fd94a");
	else if (T == "TypedEventHandler!(AppExtensionCatalog, AppExtensionPackageInstalledEventArgs)")
		return uuid("26460556-9f0a-562e-9165-9eb9e1898b1e");
	else if (T == "TypedEventHandler!(AppExtensionCatalog, AppExtensionPackageStatusChangedEventArgs)")
		return uuid("61a2a9c0-d3bb-5953-8df7-591fdd5bd74a");
	else if (T == "TypedEventHandler!(AppExtensionCatalog, AppExtensionPackageUninstallingEventArgs)")
		return uuid("60e847e8-2eca-54be-8b13-9e62dbd5b95d");
	else if (T == "TypedEventHandler!(AppExtensionCatalog, AppExtensionPackageUpdatedEventArgs)")
		return uuid("a7e0dc0b-525e-52b1-b1d9-2d5b4b5294a5");
	else if (T == "TypedEventHandler!(AppExtensionCatalog, AppExtensionPackageUpdatingEventArgs)")
		return uuid("91f40910-6acf-510d-8d7b-0bd05b835883");
	else if (T == "AsyncOperationCompletedHandler!(IPropertySet)")
		return uuid("5075a55f-68ba-56f2-97e6-9b1cbfa2c5f2");
	else if (T == "IAsyncOperation!(IPropertySet)")
		return uuid("490b0686-afd7-5037-9647-d8fe248f182c");
	else if (T == "AsyncOperationCompletedHandler!(StorageFolder)")
		return uuid("c211026e-9e63-5452-ba54-3a07d6a96874");
	else if (T == "IAsyncOperation!(StorageFolder)")
		return uuid("6be9e7d7-e83a-5cbc-802c-1768960b52c3");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.AppService.AppServiceConnectionStatus)")
		return uuid("b6c6bbf2-72ca-5799-a651-d1990670097b");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceConnectionStatus)")
		return uuid("0d0e6663-2639-5a9a-9cbc-30d7d4ce533b");
	else if (T == "AsyncOperationCompletedHandler!(AppServiceResponse)")
		return uuid("7ea7d7ec-e164-52c3-8e32-bba7126d9028");
	else if (T == "IAsyncOperation!(AppServiceResponse)")
		return uuid("48755a7c-c88f-5ef0-9b4c-876fcc2610b4");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.AppService.AppServiceResponseStatus)")
		return uuid("b824383d-32e0-5579-8670-a06a61457f20");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.AppService.AppServiceResponseStatus)")
		return uuid("98fdb842-5a0b-539a-a35c-55ac5f228612");
	else if (T == "TypedEventHandler!(AppServiceConnection, AppServiceClosedEventArgs)")
		return uuid("e4efa98d-4bfc-5e61-a233-688f5f06521f");
	else if (T == "TypedEventHandler!(AppServiceConnection, AppServiceRequestReceivedEventArgs)")
		return uuid("18c67d61-4176-5553-b18d-d8f57fe79552");
	else if (T == "IIterator!(AppInfo)")
		return uuid("69cec62c-41eb-5d69-a475-29ee22323dd8");
	else if (T == "IIterable!(AppInfo)")
		return uuid("63d0bffe-0e34-55b3-83d5-314caff2b137");
	else if (T == "IVectorView!(AppInfo)")
		return uuid("8246ed12-33e8-52b3-a5c5-19779de9999e");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult)")
		return uuid("07e1dc01-18ba-596a-b745-79f9cde44ccc");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.ExtendedExecution.Foreground.ExtendedExecutionForegroundResult)")
		return uuid("b18ea00f-8c20-5ac2-9246-3ef405271f1a");
	else if (T == "TypedEventHandler!(IInspectable, ExtendedExecutionForegroundRevokedEventArgs)")
		return uuid("f874197a-bf19-5482-9ab1-34923de6738d");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionResult)")
		return uuid("873c5c7a-c638-5a33-9b03-215c72471663");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.ExtendedExecution.ExtendedExecutionResult)")
		return uuid("1dbb1bc9-6cd7-5947-8cd1-29632b5aa950");
	else if (T == "TypedEventHandler!(IInspectable, ExtendedExecutionRevokedEventArgs)")
		return uuid("b6d68d9c-9546-50b3-8af6-9c985a372ba8");
	else if (T == "IIterator!(LockScreenBadge)")
		return uuid("8d38f924-154d-5705-8f0b-ed61353f6ce2");
	else if (T == "IIterable!(LockScreenBadge)")
		return uuid("6e82dedc-b74e-503a-b00b-9c6f47f12a0f");
	else if (T == "IVectorView!(LockScreenBadge)")
		return uuid("a0734995-94c2-50c2-88a2-d070fcd1d338");
	else if (T == "TypedEventHandler!(LockApplicationHost, LockScreenUnlockingEventArgs)")
		return uuid("002e5776-8a5b-5b93-8c6c-9c4c8788f5b4");
	else if (T == "TypedEventHandler!(LockScreenInfo, IInspectable)")
		return uuid("8be9e6a3-f88a-5429-8da3-676b7d4f1a5b");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "TypedEventHandler!(NotesWindowManagerPreview, IInspectable)")
		return uuid("6f2755fb-6c33-543c-9ab4-de486bc7bfe2");
	else if (T == "TypedEventHandler!(NotesWindowManagerPreview, NotePlacementChangedPreviewEventArgs)")
		return uuid("a28af2c7-4012-5999-a322-5236b30d995f");
	else if (T == "TypedEventHandler!(NotesWindowManagerPreview, NoteVisibilityChangedPreviewEventArgs)")
		return uuid("16d825c8-5271-51c8-a00f-0cfb1b029ab6");
	else if (T == "IIterator!(DeviceAccountConfiguration)")
		return uuid("51705a87-8dcb-5971-8d6b-ca8ae6a955ad");
	else if (T == "IIterable!(DeviceAccountConfiguration)")
		return uuid("a9c3ea6e-9dd9-52fe-9d27-f9e4dedd4d3f");
	else if (T == "AsyncOperationCompletedHandler!(DeviceAccountConfiguration)")
		return uuid("cbee2c48-e3ed-5ebd-a4ae-56583388a49a");
	else if (T == "IAsyncOperation!(DeviceAccountConfiguration)")
		return uuid("469859f3-6b7b-5399-8a8c-fe615b95ae07");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "IIterator!(VoiceCommandContentTile)")
		return uuid("968d589c-0710-52f0-85ed-112fac4cff35");
	else if (T == "IIterable!(VoiceCommandContentTile)")
		return uuid("bd13249b-8099-5573-bf74-7457796e92e5");
	else if (T == "IKeyValuePair!(HSTRING, VoiceCommandDefinition)")
		return uuid("a932bfda-2ce5-5012-ae83-f397976e4a86");
	else if (T == "IMapView!(HSTRING, VoiceCommandDefinition)")
		return uuid("4c1168f0-a0b2-5312-b99a-471abd334e85");
	else if (T == "IVectorView!(VoiceCommandContentTile)")
		return uuid("cb2c6693-1fc9-5b95-99b5-7239679619b9");
	else if (T == "IVector!(VoiceCommandContentTile)")
		return uuid("e45fe700-ea08-5172-b88c-c4b3e048c3e8");
	else if (T == "AsyncOperationCompletedHandler!(VoiceCommand)")
		return uuid("1024f849-b4a1-52e6-b771-6d2f08c30e63");
	else if (T == "IAsyncOperation!(VoiceCommand)")
		return uuid("815f1854-4d79-570d-9b57-5b47e282cd66");
	else if (T == "AsyncOperationCompletedHandler!(VoiceCommandConfirmationResult)")
		return uuid("f5244cb8-f912-50c9-b218-d7a0403971aa");
	else if (T == "IAsyncOperation!(VoiceCommandConfirmationResult)")
		return uuid("3b39db5f-d2a4-5d88-851f-e9a0ea0d947e");
	else if (T == "AsyncOperationCompletedHandler!(VoiceCommandDisambiguationResult)")
		return uuid("46b96890-2942-5564-82d8-31a4851bd7b8");
	else if (T == "IAsyncOperation!(VoiceCommandDisambiguationResult)")
		return uuid("b03d44c8-060f-5b98-953a-fd1eb1d46abc");
	else if (T == "TypedEventHandler!(VoiceCommandServiceConnection, VoiceCommandCompletedEventArgs)")
		return uuid("780a6352-b400-5767-993b-90875710d937");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "TypedEventHandler!(AppointmentDataProviderConnection, AppointmentCalendarCancelMeetingRequestEventArgs)")
		return uuid("0e9cc1d8-0d26-5207-b7d9-9ad1bf66e1e6");
	else if (T == "TypedEventHandler!(AppointmentDataProviderConnection, AppointmentCalendarCreateOrUpdateAppointmentRequestEventArgs)")
		return uuid("b45150b9-df09-5c86-b57d-3e6deff24767");
	else if (T == "TypedEventHandler!(AppointmentDataProviderConnection, AppointmentCalendarForwardMeetingRequestEventArgs)")
		return uuid("8961d738-ecdc-53c8-b0ec-e729d8109459");
	else if (T == "TypedEventHandler!(AppointmentDataProviderConnection, AppointmentCalendarProposeNewTimeForMeetingRequestEventArgs)")
		return uuid("4fe460a4-e875-5836-9eec-273d52c86ab3");
	else if (T == "TypedEventHandler!(AppointmentDataProviderConnection, AppointmentCalendarSyncManagerSyncRequestEventArgs)")
		return uuid("37f52677-5f3a-57e6-82f5-cbab2e4dbe8e");
	else if (T == "TypedEventHandler!(AppointmentDataProviderConnection, AppointmentCalendarUpdateMeetingResponseRequestEventArgs)")
		return uuid("5370df2b-62cd-5133-93e6-fc80a502af64");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(AppointmentInvitee)")
		return uuid("57e35198-1b41-54da-adaf-50ef1e93fded");
	else if (T == "IIterable!(AppointmentInvitee)")
		return uuid("fb9718a9-f059-52b0-a904-1a65e4281e40");
	else if (T == "IVectorView!(AppointmentInvitee)")
		return uuid("ba2f633a-5182-5eda-8e2e-a66e55b320ce");
	else if (T == "IIterator!(Appointment)")
		return uuid("386a5922-49fc-53b6-8bed-4c9ff9fe6e01");
	else if (T == "IIterable!(Appointment)")
		return uuid("b9802bba-ff53-5d37-8cd7-e56162f12156");
	else if (T == "IIterator!(AppointmentCalendar)")
		return uuid("f40a879d-b6b7-5f92-beb1-6a8e7ce54120");
	else if (T == "IIterable!(AppointmentCalendar)")
		return uuid("d3fb010b-b692-5130-9d16-2cfdabcb6dec");
	else if (T == "IIterator!(AppointmentException)")
		return uuid("e58c63db-d9d5-5fa5-8790-29846de54fa4");
	else if (T == "IIterable!(AppointmentException)")
		return uuid("caac41d6-6c65-5fd8-b783-eb9d9a4272b8");
	else if (T == "IIterator!(AppointmentInvitee)")
		return uuid("57e35198-1b41-54da-adaf-50ef1e93fded");
	else if (T == "IIterable!(AppointmentInvitee)")
		return uuid("fb9718a9-f059-52b0-a904-1a65e4281e40");
	else if (T == "IIterator!(AppointmentStoreChange)")
		return uuid("16a427bf-e5b0-5662-9279-caa8ed8481a6");
	else if (T == "IIterable!(AppointmentStoreChange)")
		return uuid("7b657ca2-e02e-5026-a032-9905e49682fd");
	else if (T == "IVectorView!(Appointment)")
		return uuid("61021758-9e37-5a86-a832-aab31f32692b");
	else if (T == "IVectorView!(AppointmentCalendar)")
		return uuid("774512d3-a564-5f8d-b104-3ec8f2a1104f");
	else if (T == "IVectorView!(AppointmentException)")
		return uuid("e5030866-08d8-56be-a21b-c5bf80d70360");
	else if (T == "IVectorView!(AppointmentInvitee)")
		return uuid("ba2f633a-5182-5eda-8e2e-a66e55b320ce");
	else if (T == "IVectorView!(AppointmentStoreChange)")
		return uuid("4f9dd4e5-c3ae-5269-aff5-fe35cd50c3bb");
	else if (T == "IVector!(AppointmentInvitee)")
		return uuid("70f4b32e-f91e-55bb-9a92-0246da734bb0");
	else if (T == "AsyncOperationCompletedHandler!(Appointment)")
		return uuid("b640ed04-9331-5b28-9247-0146bcf5b72a");
	else if (T == "IAsyncOperation!(Appointment)")
		return uuid("0c5732f8-5bb9-5bb3-93e5-b87e43e0cd6a");
	else if (T == "AsyncOperationCompletedHandler!(AppointmentCalendar)")
		return uuid("6d9cb651-5af6-51b0-9cd3-45dd51f17949");
	else if (T == "IAsyncOperation!(AppointmentCalendar)")
		return uuid("6bb17a95-918e-5ad0-bbc2-bcc5fa1ff936");
	else if (T == "AsyncOperationCompletedHandler!(AppointmentConflictResult)")
		return uuid("82fb40fe-05b1-523c-9b53-b3dd759c9f75");
	else if (T == "IAsyncOperation!(AppointmentConflictResult)")
		return uuid("b376080f-e5b2-5ae2-9901-86cf77ba5d00");
	else if (T == "AsyncOperationCompletedHandler!(AppointmentStore)")
		return uuid("bccf6d2a-ab72-5f23-b7d5-4c2c9bd45b79");
	else if (T == "IAsyncOperation!(AppointmentStore)")
		return uuid("63798415-4d1f-5fc7-8729-79a282bceca4");
	else if (T == "TypedEventHandler!(AppointmentCalendarSyncManager, IInspectable)")
		return uuid("bd1308de-6d2e-5541-b254-bdb61839bac1");
	else if (T == "TypedEventHandler!(AppointmentStore, AppointmentStoreChangedEventArgs)")
		return uuid("9e628351-c639-5cef-ab1d-8beae9d75d52");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IKeyValuePair!(GUID, BackgroundTaskRegistration)")
		return uuid("9bcb843b-221b-5fbe-9b20-7028bc4e8653");
	else if (T == "IKeyValuePair!(GUID, IBackgroundTaskRegistration)")
		return uuid("5a1f6d75-8678-547c-8fd7-fbceb6ebf968");
	else if (T == "IKeyValuePair!(HSTRING, BackgroundTaskRegistrationGroup)")
		return uuid("67a07f76-20b0-573b-9d74-ed0fc4f653c7");
	else if (T == "IMapView!(GUID, BackgroundTaskRegistration)")
		return uuid("2c08602f-40b1-5e97-ae21-5c04d7fb829c");
	else if (T == "IMapView!(GUID, IBackgroundTaskRegistration)")
		return uuid("78c880f6-a7dc-5172-89da-7749fc82aa82");
	else if (T == "IMapView!(HSTRING, BackgroundTaskRegistrationGroup)")
		return uuid("f6a9dc12-01f7-54f0-a257-c404815b9c1c");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.Background.AlarmAccessStatus)")
		return uuid("84108017-a8e7-5449-b713-df48503a953e");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.Background.AlarmAccessStatus)")
		return uuid("a55a747d-59f6-5cb6-b439-c8aad670905c");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.Background.ApplicationTriggerResult)")
		return uuid("d0065ef6-ee9d-55f8-ac2b-53a91ff96d2e");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.Background.ApplicationTriggerResult)")
		return uuid("47cbd985-0f08-5a3d-92cf-b27960506ed6");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.Background.BackgroundAccessStatus)")
		return uuid("26dd26e3-3f47-5709-b2f2-d6d0ad3288f0");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.Background.BackgroundAccessStatus)")
		return uuid("7b44e581-cfa9-5763-bed7-6a65739f0dbf");
	else if (T == "AsyncOperationCompletedHandler!(DeviceConnectionChangeTrigger)")
		return uuid("3fd5a57e-47e4-5921-b148-5cb586166ca8");
	else if (T == "IAsyncOperation!(DeviceConnectionChangeTrigger)")
		return uuid("9d01424d-5653-59f8-ba6b-d0c077346d2d");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.Background.DeviceTriggerResult)")
		return uuid("d5aa9506-1464-57d4-859d-7ee9b26cb1f9");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult)")
		return uuid("b5136c46-2f2e-511d-9e8e-5ef4decb1da7");
	else if (T == "AsyncOperationCompletedHandler!(GattServiceProviderTriggerResult)")
		return uuid("39d8105f-a505-5f88-91a9-b0fc6d628699");
	else if (T == "IAsyncOperation!(GattServiceProviderTriggerResult)")
		return uuid("f402ec9f-84b2-57c3-9543-01fbda05219b");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.Background.MediaProcessingTriggerResult)")
		return uuid("3814c6a5-2ad1-5875-bed5-5031cd1f50a2");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.Background.MediaProcessingTriggerResult)")
		return uuid("2595482c-1cbf-5691-a30d-2164909c6712");
	else if (T == "IIterator!(Windows.Devices.Sensors.ActivityType)")
		return uuid("40524281-a7c6-50b1-b6f5-0baa95d902c2");
	else if (T == "IIterable!(Windows.Devices.Sensors.ActivityType)")
		return uuid("2a04cdfa-5dfd-5178-8731-ade998e4a7f6");
	else if (T == "IVectorView!(Windows.Devices.Sensors.ActivityType)")
		return uuid("fc7a0488-2803-505c-9e62-9200afe416c6");
	else if (T == "IVector!(Windows.Devices.Sensors.ActivityType)")
		return uuid("e3e660d6-d041-5ecd-b18b-fa254e4a860f");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "TypedEventHandler!(BackgroundTaskRegistrationGroup, BackgroundActivatedEventArgs)")
		return uuid("d4f89768-688f-59ec-bf24-c2af6a310fa4");
	else if (T == "IIterator!(StorageLibrary)")
		return uuid("0a1c6409-fbd3-58c8-9af3-6262cc56e5b3");
	else if (T == "IIterable!(StorageLibrary)")
		return uuid("851e3cfd-306b-5c8e-ae3c-a8d83c623604");
	else if (T == "TypedEventHandler!(ContactDataProviderConnection, ContactListServerSearchReadBatchRequestEventArgs)")
		return uuid("baee1b2f-a5b6-5a03-ae59-fb18f3e025b7");
	else if (T == "TypedEventHandler!(ContactDataProviderConnection, ContactListSyncManagerSyncRequestEventArgs)")
		return uuid("bb9f410f-a739-5280-9bb7-b6a938c7a620");
	else if (T == "IIterator!(Contact)")
		return uuid("a572c173-800a-58bb-ab24-179959df2813");
	else if (T == "IIterable!(Contact)")
		return uuid("63319996-7e0f-552e-872b-7b9adb1f4997");
	else if (T == "IIterator!(ContactAddress)")
		return uuid("d9003f84-63df-5c0c-bd1e-2ccdea55e717");
	else if (T == "IIterable!(ContactAddress)")
		return uuid("e783287c-e920-5540-9182-c1a6a5f2ad36");
	else if (T == "IIterator!(ContactAnnotation)")
		return uuid("77bc5ee1-7130-5876-9d30-1f9306cc226a");
	else if (T == "IIterable!(ContactAnnotation)")
		return uuid("ea7fc05e-fe09-5690-a70b-a14867040fa5");
	else if (T == "IIterator!(ContactAnnotationList)")
		return uuid("3d7b4ad2-bb54-5e21-a92e-6b80264ccc50");
	else if (T == "IIterable!(ContactAnnotationList)")
		return uuid("ae095a89-8b8b-5b8a-8f28-555aa490ad87");
	else if (T == "IIterator!(ContactChange)")
		return uuid("cd1a34ad-16df-572c-b5cd-526eb3044fce");
	else if (T == "IIterable!(ContactChange)")
		return uuid("f761174c-1f89-5796-9d09-7fee0813704d");
	else if (T == "IIterator!(ContactConnectedServiceAccount)")
		return uuid("3ef1863f-c859-5b9d-8e35-20adf102a40d");
	else if (T == "IIterable!(ContactConnectedServiceAccount)")
		return uuid("35e203b2-5138-5967-80fa-a477ed4c7ddc");
	else if (T == "IIterator!(ContactDate)")
		return uuid("5004bf96-5349-5b10-87c6-c76f21f2a1d5");
	else if (T == "IIterable!(ContactDate)")
		return uuid("96045d0b-b38b-5d91-8311-4fbc7ad4337d");
	else if (T == "IIterator!(ContactEmail)")
		return uuid("d64ce66d-2936-5a1e-b8f5-080bb1356022");
	else if (T == "IIterable!(ContactEmail)")
		return uuid("37d0d55f-e136-5b07-8a3a-8110bde33917");
	else if (T == "IIterator!(ContactField)")
		return uuid("aa226af5-faa5-5353-871c-538099b7c836");
	else if (T == "IIterable!(ContactField)")
		return uuid("3b012111-c82b-541e-a0c1-37713ed83541");
	else if (T == "IIterator!(Windows.ApplicationModel.Contacts.ContactFieldType)")
		return uuid("2f6d856a-50d4-5173-abea-db6c6b8fc530");
	else if (T == "IIterable!(Windows.ApplicationModel.Contacts.ContactFieldType)")
		return uuid("384b8b1b-ce8e-5781-b3dc-0776d684f658");
	else if (T == "IIterator!(ContactGroup)")
		return uuid("86dac457-7314-5044-8108-75290c36dd2b");
	else if (T == "IIterable!(ContactGroup)")
		return uuid("9db1688a-f7e0-5059-989e-d1453056d73a");
	else if (T == "IIterator!(ContactInformation)")
		return uuid("7b77b895-abee-5501-94db-ce4e48a9a34f");
	else if (T == "IIterable!(ContactInformation)")
		return uuid("352762af-17e3-55e0-8be1-6a598a44b5b4");
	else if (T == "IIterator!(ContactInstantMessageField)")
		return uuid("65e069e6-28d1-5d57-9fe1-80ff64850e67");
	else if (T == "IIterable!(ContactInstantMessageField)")
		return uuid("810533b2-28bb-5ed3-ac19-fec8059d7b3c");
	else if (T == "IIterator!(ContactJobInfo)")
		return uuid("0873df73-ac99-50ef-8673-e78f8a540e2e");
	else if (T == "IIterable!(ContactJobInfo)")
		return uuid("17c1cead-56a3-5d93-abf2-14d34d4b9356");
	else if (T == "IIterator!(ContactList)")
		return uuid("ee69382d-887d-5964-83b4-47ee9ded6f05");
	else if (T == "IIterable!(ContactList)")
		return uuid("f9b0782c-bfe9-564e-bca2-97235fd64463");
	else if (T == "IIterator!(ContactLocationField)")
		return uuid("a20407d7-6980-5c4f-b993-f1da03994105");
	else if (T == "IIterable!(ContactLocationField)")
		return uuid("2a0a41a6-da96-50a5-b8df-e4a8c4fcf86b");
	else if (T == "IIterator!(ContactMatchReason)")
		return uuid("4ae36741-bbde-5bd6-9d4f-0d57b1410e4e");
	else if (T == "IIterable!(ContactMatchReason)")
		return uuid("0a8c1bd9-2402-5c98-be6e-63a4808047ba");
	else if (T == "IIterator!(ContactPhone)")
		return uuid("603b190e-1fb6-5762-bd8a-f59e952726f7");
	else if (T == "IIterable!(ContactPhone)")
		return uuid("4abd089c-49a1-5ba9-80df-53b72dd691ce");
	else if (T == "IIterator!(ContactSignificantOther)")
		return uuid("2051d4fa-bd46-52eb-b2d0-4eb5dac12157");
	else if (T == "IIterable!(ContactSignificantOther)")
		return uuid("ae12bd35-93d6-53d8-87c0-49d84c5c6a83");
	else if (T == "IIterator!(ContactWebsite)")
		return uuid("91a59fa2-5cc1-564d-bb1d-f52daec136ad");
	else if (T == "IIterable!(ContactWebsite)")
		return uuid("4b03c203-989e-5b97-8fcb-67d661defe76");
	else if (T == "IIterator!(IContactField)")
		return uuid("c501c1b3-171b-5320-8d84-c3a89a3d4034");
	else if (T == "IIterable!(IContactField)")
		return uuid("e065edc5-1d23-5be5-9998-2736cd4d5297");
	else if (T == "IVectorView!(Contact)")
		return uuid("9bca75b8-b0fa-5761-b959-381927a5f9d0");
	else if (T == "IVectorView!(ContactAddress)")
		return uuid("e7fabc7d-79c2-5862-859e-959002d7b955");
	else if (T == "IVectorView!(ContactAnnotation)")
		return uuid("b79bca82-9ddb-51df-94ec-2f339cd906e9");
	else if (T == "IVectorView!(ContactAnnotationList)")
		return uuid("3bf71d9d-2037-5e08-a7e1-b937cf74bbd9");
	else if (T == "IVectorView!(ContactChange)")
		return uuid("e97bb481-b86d-504f-b309-44c9b098e92d");
	else if (T == "IVectorView!(ContactConnectedServiceAccount)")
		return uuid("2687a6f4-5f99-50a1-88d1-5d7cc7c7f236");
	else if (T == "IVectorView!(ContactDate)")
		return uuid("2743425d-b197-598d-bb80-14fdf0eaa823");
	else if (T == "IVectorView!(ContactEmail)")
		return uuid("8c3e5f9e-825a-5164-90d3-f97f7f88ecb0");
	else if (T == "IVectorView!(ContactField)")
		return uuid("9c1b3046-f16a-57d7-87a7-eaa2e880d9a9");
	else if (T == "IVectorView!(Windows.ApplicationModel.Contacts.ContactFieldType)")
		return uuid("39d6abda-a00a-5777-8611-82d7c326c18d");
	else if (T == "IVectorView!(ContactGroup)")
		return uuid("124493aa-1617-5d0a-a5b6-4d1156fa95e5");
	else if (T == "IVectorView!(ContactInformation)")
		return uuid("b9e80b52-02cb-5824-95ab-5cca3de394d3");
	else if (T == "IVectorView!(ContactInstantMessageField)")
		return uuid("b65efa04-cda8-597a-8abb-a6e1fe34c00f");
	else if (T == "IVectorView!(ContactJobInfo)")
		return uuid("f1f1bdc5-7ffe-5254-89fc-c01559020f9d");
	else if (T == "IVectorView!(ContactList)")
		return uuid("a55c7dcf-e3c9-5afa-8667-ca68230d7724");
	else if (T == "IVectorView!(ContactLocationField)")
		return uuid("1febf4ca-48dd-5faf-a2d3-74770d8aa330");
	else if (T == "IVectorView!(ContactMatchReason)")
		return uuid("c82c0b6d-28d6-5c27-926d-96d027508871");
	else if (T == "IVectorView!(ContactPhone)")
		return uuid("145e78a9-e7f9-5998-802a-dbfc914ccf36");
	else if (T == "IVectorView!(ContactSignificantOther)")
		return uuid("33c5edf9-c1de-528b-aa48-ceb6a1905cc0");
	else if (T == "IVectorView!(ContactWebsite)")
		return uuid("f677e62f-39c5-57c0-b642-26b143309871");
	else if (T == "IVectorView!(IContactField)")
		return uuid("1a4c5b35-7ef5-5eea-94c7-fdf1f617aa7e");
	else if (T == "IVector!(Contact)")
		return uuid("945779db-01d2-5839-8a92-7905ec92b28f");
	else if (T == "IVector!(ContactAddress)")
		return uuid("d0c298ee-1520-539e-84b3-a25909717d20");
	else if (T == "IVector!(ContactConnectedServiceAccount)")
		return uuid("2c55fb80-a759-5fae-bc29-9907e0976048");
	else if (T == "IVector!(ContactDate)")
		return uuid("3135d944-d914-5a4f-843e-a6d6cb69bcb1");
	else if (T == "IVector!(ContactEmail)")
		return uuid("4ce06787-dea1-559f-a70a-fcbe59dbd3a4");
	else if (T == "IVector!(Windows.ApplicationModel.Contacts.ContactFieldType)")
		return uuid("6fdc2115-1649-54a4-8faa-3049cefb05a4");
	else if (T == "IVector!(ContactJobInfo)")
		return uuid("ea148f90-bb89-5604-9757-ecd1e7ce5311");
	else if (T == "IVector!(ContactPhone)")
		return uuid("6d1f883a-1f30-5a87-b54a-8e2245ed1001");
	else if (T == "IVector!(ContactSignificantOther)")
		return uuid("cec34450-8143-56e3-933a-d33051b74437");
	else if (T == "IVector!(ContactWebsite)")
		return uuid("1931848e-e794-5775-b393-4a4518d63b09");
	else if (T == "IVector!(IContactField)")
		return uuid("f9dd472b-4f50-583a-a3aa-b73af54806be");
	else if (T == "AsyncOperationCompletedHandler!(Contact)")
		return uuid("a1d09bee-c181-5419-bd14-8223b95f29a1");
	else if (T == "IAsyncOperation!(Contact)")
		return uuid("857db963-f62c-53c4-a3a0-f6bf0c8fd3d3");
	else if (T == "AsyncOperationCompletedHandler!(ContactAnnotation)")
		return uuid("23c8c9ed-8920-5d9e-b052-c35e31fc2343");
	else if (T == "IAsyncOperation!(ContactAnnotation)")
		return uuid("61ea54c3-d629-5b5e-b581-630504b51702");
	else if (T == "AsyncOperationCompletedHandler!(ContactAnnotationList)")
		return uuid("b2478ee7-dc89-5b7d-b4a3-b3be2952209f");
	else if (T == "IAsyncOperation!(ContactAnnotationList)")
		return uuid("3a0a5967-c17c-579f-ba05-cc56e0a1d091");
	else if (T == "AsyncOperationCompletedHandler!(ContactAnnotationStore)")
		return uuid("558f6e19-2d4e-5a4a-8c58-3873d623b1d4");
	else if (T == "IAsyncOperation!(ContactAnnotationStore)")
		return uuid("c6912277-5dd3-5e50-a7eb-a5660646d432");
	else if (T == "AsyncOperationCompletedHandler!(ContactBatch)")
		return uuid("dc49c74d-1ac7-5754-82e9-25180c4dd888");
	else if (T == "IAsyncOperation!(ContactBatch)")
		return uuid("446fb5e0-5d2b-591d-b8de-fb7c95fc9f37");
	else if (T == "AsyncOperationCompletedHandler!(ContactInformation)")
		return uuid("c94b8021-508b-589b-93b3-2556cbc73a2f");
	else if (T == "IAsyncOperation!(ContactInformation)")
		return uuid("0e51c030-27aa-561f-bbd8-2f57c08fef83");
	else if (T == "AsyncOperationCompletedHandler!(ContactList)")
		return uuid("d4678af2-2cc4-5890-b3a2-03a5ab7bb8f8");
	else if (T == "IAsyncOperation!(ContactList)")
		return uuid("ae816b3d-57a8-50a7-807e-2c768a364a4f");
	else if (T == "AsyncOperationCompletedHandler!(ContactStore)")
		return uuid("d123e7f2-0b5b-590a-b234-a121ac1e0bab");
	else if (T == "IAsyncOperation!(ContactStore)")
		return uuid("235e0791-9a3e-5723-87f0-44ffb786c9e1");
	else if (T == "AsyncOperationCompletedHandler!(PinnedContactIdsQueryResult)")
		return uuid("930a23a2-28cf-5606-82f1-65dfee228735");
	else if (T == "IAsyncOperation!(PinnedContactIdsQueryResult)")
		return uuid("031adb6c-3aa3-5b09-a8fb-92ea0145dc40");
	else if (T == "TypedEventHandler!(ContactList, ContactChangedEventArgs)")
		return uuid("c953dc00-30be-5379-bcac-435c6bad3ce6");
	else if (T == "TypedEventHandler!(ContactListSyncManager, IInspectable)")
		return uuid("f0c4ce23-4e80-5cb1-9f43-fbdc1c609122");
	else if (T == "TypedEventHandler!(ContactPanel, ContactPanelClosingEventArgs)")
		return uuid("4357954b-bce6-5456-a511-fe8904e8090b");
	else if (T == "TypedEventHandler!(ContactPanel, ContactPanelLaunchFullAppRequestedEventArgs)")
		return uuid("c4030df2-ad34-5575-a369-5616577878eb");
	else if (T == "TypedEventHandler!(ContactStore, ContactChangedEventArgs)")
		return uuid("5da35e68-7513-5ead-aad4-cdd3de4e5ae7");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStreamWithContentType)")
		return uuid("3dddecf4-1d39-58e8-83b1-dbed541c7f35");
	else if (T == "IAsyncOperation!(IRandomAccessStreamWithContentType)")
		return uuid("c4a57c5e-32b0-55b3-ad13-ce1c23041ed6");
	else if (T == "AsyncOperationCompletedHandler!(RandomAccessStreamReference)")
		return uuid("3d203732-ded7-5d32-87e6-c179781f791f");
	else if (T == "IAsyncOperation!(RandomAccessStreamReference)")
		return uuid("d90442ca-543c-504b-9eb9-294bcad8a283");
	else if (T == "IIterator!(Windows.Data.Text.TextSegment)")
		return uuid("645a39b4-f001-5272-9015-fb4a327179ae");
	else if (T == "IIterable!(Windows.Data.Text.TextSegment)")
		return uuid("5498f4f3-cee4-5b72-9729-815c4ad7b9dc");
	else if (T == "IVectorView!(Windows.Data.Text.TextSegment)")
		return uuid("2f245f9d-eb5f-5641-9dcc-6ab1946cc7e6");
	else if (T == "IReference!(Windows.UI.Color)")
		return uuid("ab8e5d11-b0c1-5a21-95ae-f16bf3a37624");
	else if (T == "TypedEventHandler!(ContactPickerUI, ContactRemovedEventArgs)")
		return uuid("a39aeb7e-765c-5e83-b231-84bead98e9a0");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(Windows.ApplicationModel.Contacts.ContactFieldType)")
		return uuid("2f6d856a-50d4-5173-abea-db6c6b8fc530");
	else if (T == "IIterable!(Windows.ApplicationModel.Contacts.ContactFieldType)")
		return uuid("384b8b1b-ce8e-5781-b3dc-0776d684f658");
	else if (T == "IVectorView!(Windows.ApplicationModel.Contacts.ContactFieldType)")
		return uuid("39d6abda-a00a-5777-8611-82d7c326c18d");
	else if (T == "IVector!(Windows.ApplicationModel.Contacts.ContactFieldType)")
		return uuid("6fdc2115-1649-54a4-8faa-3049cefb05a4");
	else if (T == "IIterator!(AppListEntry)")
		return uuid("b93e2028-50bc-599e-b3d9-427b61d26c01");
	else if (T == "IIterable!(AppListEntry)")
		return uuid("86f4d4ef-d8fd-5fb5-807c-72da8fc9e544");
	else if (T == "IIterator!(CoreApplicationView)")
		return uuid("4f5f6944-264b-5868-809e-c7ac1ac5edad");
	else if (T == "IIterable!(CoreApplicationView)")
		return uuid("32bc12d1-2653-5a41-a55e-88a12af2026a");
	else if (T == "IVectorView!(AppListEntry)")
		return uuid("920c8b92-d5ef-5899-8776-2ad97aca6e1d");
	else if (T == "IVectorView!(CoreApplicationView)")
		return uuid("de9e16c4-1b7c-5126-b1d8-7cd04f13bd08");
	else if (T == "EventHandler!(UnhandledErrorDetectedEventArgs)")
		return uuid("f68bc421-6b54-559b-9cdd-489aad0bd41d");
	else if (T == "TypedEventHandler!(CoreApplicationView, HostedViewClosingEventArgs)")
		return uuid("d9a3f433-9bcc-54d6-b3cf-7b01f026d4cd");
	else if (T == "TypedEventHandler!(CoreApplicationViewTitleBar, IInspectable)")
		return uuid("28342e21-dad3-5e32-bae1-afe7b26c66fb");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "EventHandler!(SuspendingEventArgs)")
		return uuid("338579bf-1a35-5cc4-a622-a6f384fd892c");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "EventHandler!(BackgroundActivatedEventArgs)")
		return uuid("49a07732-e7b8-5c5b-9de7-22e33cb97004");
	else if (T == "EventHandler!(LeavingBackgroundEventArgs)")
		return uuid("9b6171c2-abb2-5194-afc0-cef167c424eb");
	else if (T == "EventHandler!(EnteredBackgroundEventArgs)")
		return uuid("e0739c32-fc14-5361-a8b3-0809699fbcbd");
	else if (T == "TypedEventHandler!(CoreApplicationView, IActivatedEventArgs)")
		return uuid("cf193a96-eb13-5e3b-8bdf-87b6efae8339");
	else if (T == "TypedEventHandler!(CoreDragDropManager, CoreDropOperationTargetRequestedEventArgs)")
		return uuid("a4c3b1c1-b8ad-58cb-acc0-8ef37eae4ed4");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)")
		return uuid("add21d46-17df-5a43-a685-3262fce84643");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)")
		return uuid("8b98aea9-64f0-5672-b30e-dfd9c2e4f6fe");
	else if (T == "IIterator!(ShareProvider)")
		return uuid("886f5642-e9f9-573b-9213-5840b5062b40");
	else if (T == "IIterable!(ShareProvider)")
		return uuid("0903b218-5cad-53e6-9a21-6f4b31c4a409");
	else if (T == "IVectorView!(ShareProvider)")
		return uuid("946537a2-932c-5b77-ab36-b70650f0bcd5");
	else if (T == "IVector!(ShareProvider)")
		return uuid("a1687865-31e2-5536-97ec-292269a78046");
	else if (T == "AsyncOperationCompletedHandler!(DataPackage)")
		return uuid("a93a3b99-e946-57ce-aad9-c23d138c353e");
	else if (T == "IAsyncOperation!(DataPackage)")
		return uuid("a16f2d07-ead3-53e4-9490-75bdbaeb7a5b");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)")
		return uuid("add21d46-17df-5a43-a685-3262fce84643");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)")
		return uuid("8b98aea9-64f0-5672-b30e-dfd9c2e4f6fe");
	else if (T == "TypedEventHandler!(DataPackage, IInspectable)")
		return uuid("c156b0c3-1cbc-5ca4-901c-62c5a8ca5cb5");
	else if (T == "TypedEventHandler!(DataPackage, OperationCompletedEventArgs)")
		return uuid("dd48af6c-ef9a-59cb-b326-57d9e2411f21");
	else if (T == "TypedEventHandler!(DataPackage, ShareCompletedEventArgs)")
		return uuid("f8f7e24a-56fe-58df-bc15-2365aec03966");
	else if (T == "TypedEventHandler!(DataTransferManager, DataRequestedEventArgs)")
		return uuid("ec6f9cc8-46d0-5e0e-b4d2-7d7773ae37a0");
	else if (T == "TypedEventHandler!(DataTransferManager, ShareProvidersRequestedEventArgs)")
		return uuid("147e2860-7397-582f-80db-b8685383a937");
	else if (T == "TypedEventHandler!(DataTransferManager, TargetApplicationChosenEventArgs)")
		return uuid("c4ac1ba2-7851-5a44-bc8d-3d7c713f1f41");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IKeyValuePair!(HSTRING, RandomAccessStreamReference)")
		return uuid("e5195792-aeab-56e8-bd30-1372c4340bf6");
	else if (T == "IMapView!(HSTRING, RandomAccessStreamReference)")
		return uuid("0a4ce7a5-dfe0-5796-a438-effdfaa31f1b");
	else if (T == "IMap!(HSTRING, RandomAccessStreamReference)")
		return uuid("e5d2ccfc-825a-5a8e-82aa-095ed5dbd5d1");
	else if (T == "IIterator!(IStorageItem)")
		return uuid("05b487c2-3830-5d3c-98da-25fa11542dbd");
	else if (T == "IIterable!(IStorageItem)")
		return uuid("bb8b8418-65d1-544b-b083-6d172f568c73");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(IInspectable)")
		return uuid("3f08262e-a2e1-5134-9297-e9211f481a2d");
	else if (T == "IAsyncOperation!(IInspectable)")
		return uuid("abf53c57-ee50-5342-b52a-26e3b8cc024f");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "AsyncOperationCompletedHandler!(Uri)")
		return uuid("ad46f1cc-2bb0-585c-9885-03c2780d4d58");
	else if (T == "IAsyncOperation!(Uri)")
		return uuid("641cb9dd-a28d-59e2-b8db-a227eda6cf2e");
	else if (T == "AsyncOperationCompletedHandler!(RandomAccessStreamReference)")
		return uuid("3d203732-ded7-5d32-87e6-c179781f791f");
	else if (T == "IAsyncOperation!(RandomAccessStreamReference)")
		return uuid("d90442ca-543c-504b-9eb9-294bcad8a283");
	else if (T == "IVectorView!(IStorageItem)")
		return uuid("85575a41-06cb-58d0-b98a-7c8f06e6e9d7");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)")
		return uuid("2833ba54-a4e1-5c2d-8a7a-136e8510c78b");
	else if (T == "IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)")
		return uuid("e8d81715-c56c-5a6b-b738-5df6c2775b7b");
	else if (T == "AsyncOperationCompletedHandler!(StorageFile)")
		return uuid("e521c894-2c26-5946-9e61-2b5e188d01ed");
	else if (T == "IAsyncOperation!(StorageFile)")
		return uuid("5e52f8ce-aced-5a42-95b4-f674dd84885e");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxCreateFolderRequestEventArgs)")
		return uuid("8c7db52d-496e-5419-bd78-b8b657cf4e66");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxDeleteFolderRequestEventArgs)")
		return uuid("d962a9b6-bbb4-5d82-84b4-8f703bf3086f");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxDownloadAttachmentRequestEventArgs)")
		return uuid("d2e92019-b997-5cd6-8f88-4dbc6f969f15");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxDownloadMessageRequestEventArgs)")
		return uuid("e1b59b2f-ddd5-5159-ae9a-14a866912095");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxEmptyFolderRequestEventArgs)")
		return uuid("9a851b84-bcb1-5121-ab61-3efe568f683d");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxForwardMeetingRequestEventArgs)")
		return uuid("9d6a017f-5a70-5d83-a680-d2806748ca0b");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxGetAutoReplySettingsRequestEventArgs)")
		return uuid("587c6f92-a969-57b3-895f-9a06b3650d3a");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxMoveFolderRequestEventArgs)")
		return uuid("2c6bf2c8-42f3-523d-80db-170e4fb1567f");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxProposeNewTimeForMeetingRequestEventArgs)")
		return uuid("309d8bde-1e60-524b-828c-5a3d64a672aa");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxResolveRecipientsRequestEventArgs)")
		return uuid("ec14e586-e4fb-5fc0-91fc-931ce17a3fc3");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxServerSearchReadBatchRequestEventArgs)")
		return uuid("f8bf9067-7d11-56a0-a303-163435c14016");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxSetAutoReplySettingsRequestEventArgs)")
		return uuid("aa4f8fb3-05e0-54e6-afac-a28e853e756e");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxSyncManagerSyncRequestEventArgs)")
		return uuid("b65fc3ec-9476-51c4-ba70-1505d79826b9");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxUpdateMeetingResponseRequestEventArgs)")
		return uuid("3274fbfd-c10a-5b30-adea-2b4b860b4a0d");
	else if (T == "TypedEventHandler!(EmailDataProviderConnection, EmailMailboxValidateCertificatesRequestEventArgs)")
		return uuid("de2625f7-e16f-512e-a8c6-b7445532bcc6");
	else if (T == "IIterator!(EmailRecipient)")
		return uuid("12238d88-1a2f-5e7a-89b1-8dc140536bac");
	else if (T == "IIterable!(EmailRecipient)")
		return uuid("5f18cab2-236d-5ec5-bc64-e3e63d29e774");
	else if (T == "IVectorView!(EmailRecipient)")
		return uuid("f6d6af60-f11a-5c03-80cc-473407a5aabf");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(EmailRecipientResolutionResult)")
		return uuid("5c040cd6-9593-5e74-9a5e-7284cd1b7200");
	else if (T == "IIterable!(EmailRecipientResolutionResult)")
		return uuid("cae3c1c4-c689-5787-976f-1a158ffdd16b");
	else if (T == "IIterator!(Certificate)")
		return uuid("676fc159-f15c-58bd-91a7-28f7e795c756");
	else if (T == "IIterable!(Certificate)")
		return uuid("0c7d1423-e8fd-5a91-b55c-8bfbe7ac2d40");
	else if (T == "IVectorView!(Certificate)")
		return uuid("963f7013-77c2-51c5-8038-b5bcef633edb");
	else if (T == "IIterator!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus)")
		return uuid("1cfe3d41-16a5-5026-a6fe-2cb0a303a605");
	else if (T == "IIterable!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus)")
		return uuid("7e326530-7449-51a7-b1bc-c43533a78e06");
	else if (T == "IIterator!(EmailAttachment)")
		return uuid("44655b88-9a99-5994-8e0f-5b9640924120");
	else if (T == "IIterable!(EmailAttachment)")
		return uuid("a5ab00e4-0ed7-52ee-aacb-83d840d6f8fa");
	else if (T == "IIterator!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus)")
		return uuid("1cfe3d41-16a5-5026-a6fe-2cb0a303a605");
	else if (T == "IIterable!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus)")
		return uuid("7e326530-7449-51a7-b1bc-c43533a78e06");
	else if (T == "IIterator!(EmailConversation)")
		return uuid("fadada27-e629-5a34-b2e9-1d25c93544b5");
	else if (T == "IIterable!(EmailConversation)")
		return uuid("d495f8dc-4327-5bca-a506-44b172d6d435");
	else if (T == "IIterator!(EmailFolder)")
		return uuid("95ae5494-43bc-5f6b-a02b-b6956d0c7069");
	else if (T == "IIterable!(EmailFolder)")
		return uuid("6dcb53eb-8a35-54bf-8c8e-449bce9b3920");
	else if (T == "IIterator!(EmailMailbox)")
		return uuid("312f8d4a-0e85-566e-b7aa-dbd40a0343ff");
	else if (T == "IIterable!(EmailMailbox)")
		return uuid("8fc76b2e-f800-5f1d-a023-de47e5f306e0");
	else if (T == "IIterator!(EmailMailboxAction)")
		return uuid("b9d8eec0-f0e0-5a4d-88d0-758acbc6380f");
	else if (T == "IIterable!(EmailMailboxAction)")
		return uuid("26419311-1cd7-5bab-9c4a-e95884d5539c");
	else if (T == "IIterator!(EmailMailboxChange)")
		return uuid("b2b91198-5f8b-5e4a-85f8-ddca82ba0b7f");
	else if (T == "IIterable!(EmailMailboxChange)")
		return uuid("4630ccb6-dfce-57dc-a5d1-28b889c2c2b7");
	else if (T == "IIterator!(EmailMessage)")
		return uuid("ca569bf8-d6d7-5411-9600-ab95ec065c72");
	else if (T == "IIterable!(EmailMessage)")
		return uuid("a5fac823-8e6d-5bbe-ad16-8350aea446e0");
	else if (T == "IIterator!(EmailRecipient)")
		return uuid("12238d88-1a2f-5e7a-89b1-8dc140536bac");
	else if (T == "IIterable!(EmailRecipient)")
		return uuid("5f18cab2-236d-5ec5-bc64-e3e63d29e774");
	else if (T == "IIterator!(EmailRecipientResolutionResult)")
		return uuid("5c040cd6-9593-5e74-9a5e-7284cd1b7200");
	else if (T == "IIterable!(EmailRecipientResolutionResult)")
		return uuid("cae3c1c4-c689-5787-976f-1a158ffdd16b");
	else if (T == "IVectorView!(EmailAttachment)")
		return uuid("1d71b8e6-3f41-51cc-894b-dbc10ebc9d52");
	else if (T == "IVectorView!(Windows.ApplicationModel.Email.EmailCertificateValidationStatus)")
		return uuid("a5665ff7-b44e-57e3-bd7a-ef191aa5519c");
	else if (T == "IVectorView!(EmailConversation)")
		return uuid("0a7c62d7-fc19-5bd7-b37a-0d6242df48c0");
	else if (T == "IVectorView!(EmailFolder)")
		return uuid("4e35d275-abdf-5e2c-b3e8-7546ed5ad573");
	else if (T == "IVectorView!(EmailMailbox)")
		return uuid("d4816e16-43c9-5b63-a444-6189acb56f6e");
	else if (T == "IVectorView!(EmailMailboxAction)")
		return uuid("f7bdef91-beff-5be2-8ef9-2f8112e59a6f");
	else if (T == "IVectorView!(EmailMailboxChange)")
		return uuid("9ea98fb4-9e7e-5caa-a320-cc7ab5338084");
	else if (T == "IVectorView!(EmailMessage)")
		return uuid("51b8edf2-6ca6-55de-be45-1d1fc51df076");
	else if (T == "IVectorView!(EmailRecipient)")
		return uuid("f6d6af60-f11a-5c03-80cc-473407a5aabf");
	else if (T == "IVectorView!(EmailRecipientResolutionResult)")
		return uuid("9307eb24-38f6-525e-ba0d-3b4e863fe0f8");
	else if (T == "IVector!(EmailAttachment)")
		return uuid("07b0ebc8-70af-5deb-9861-dc93e2b038e9");
	else if (T == "IVector!(EmailMailboxAction)")
		return uuid("4c954eb2-f15c-5869-abd7-2e328de4a4af");
	else if (T == "IVector!(EmailRecipient)")
		return uuid("1151f664-39c5-5aaa-8a2e-3350e611624b");
	else if (T == "AsyncOperationCompletedHandler!(EmailConversation)")
		return uuid("0294c89d-8d98-5342-b82f-01102415c870");
	else if (T == "IAsyncOperation!(EmailConversation)")
		return uuid("6885966c-13b9-59cc-b358-adf82eec842a");
	else if (T == "AsyncOperationCompletedHandler!(EmailConversationBatch)")
		return uuid("f1406083-2a75-5726-ba48-90e32eadd7fa");
	else if (T == "IAsyncOperation!(EmailConversationBatch)")
		return uuid("7d87db9c-947d-5e0c-8cf2-245998d19d8f");
	else if (T == "AsyncOperationCompletedHandler!(EmailFolder)")
		return uuid("f1b66ef7-0525-5da5-a3d6-b25b3f533aa1");
	else if (T == "IAsyncOperation!(EmailFolder)")
		return uuid("6132274f-733d-5391-9077-0867fc330916");
	else if (T == "AsyncOperationCompletedHandler!(EmailItemCounts)")
		return uuid("02c54220-ded8-5495-841d-d432c879b826");
	else if (T == "IAsyncOperation!(EmailItemCounts)")
		return uuid("5856790d-5204-5a99-b69e-c7162fd25869");
	else if (T == "AsyncOperationCompletedHandler!(EmailMailbox)")
		return uuid("4d5f57df-e0dc-5cf5-b2e5-fa1e5c0006fa");
	else if (T == "IAsyncOperation!(EmailMailbox)")
		return uuid("6f01f05e-988d-5b28-aba8-dbaabb4eb0d9");
	else if (T == "AsyncOperationCompletedHandler!(EmailMailboxAutoReplySettings)")
		return uuid("dfc1275a-c7b0-5fe4-9370-32b94ad0ba8e");
	else if (T == "IAsyncOperation!(EmailMailboxAutoReplySettings)")
		return uuid("b354d4c4-e4a0-5a3c-b897-8deb458ac673");
	else if (T == "AsyncOperationCompletedHandler!(EmailMailboxCreateFolderResult)")
		return uuid("929f0fda-f350-55be-8555-e98d81eaf1a5");
	else if (T == "IAsyncOperation!(EmailMailboxCreateFolderResult)")
		return uuid("6d5a0e81-6949-50f9-bffb-92be1216724d");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.Email.EmailMailboxDeleteFolderStatus)")
		return uuid("52604da6-485b-5445-8e6f-64cc13056045");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxDeleteFolderStatus)")
		return uuid("6860f87f-0297-5adf-aa16-9f1f08e2d950");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.Email.EmailMailboxEmptyFolderStatus)")
		return uuid("50333005-daed-567e-bb88-b1bc4663b075");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.Email.EmailMailboxEmptyFolderStatus)")
		return uuid("0033a74e-9baa-5f50-8d6e-238635e6fdd3");
	else if (T == "AsyncOperationCompletedHandler!(EmailMessage)")
		return uuid("69d11d1e-f0bb-5f1b-acb5-120c26febded");
	else if (T == "IAsyncOperation!(EmailMessage)")
		return uuid("73157119-fa58-5d2d-817c-b5630c1511e4");
	else if (T == "AsyncOperationCompletedHandler!(EmailMessageBatch)")
		return uuid("b6674195-87f8-5575-9108-9c5621d529b1");
	else if (T == "IAsyncOperation!(EmailMessageBatch)")
		return uuid("37fea119-0f1e-5012-88bb-f0179f8f4de5");
	else if (T == "AsyncOperationCompletedHandler!(EmailStore)")
		return uuid("ddb761d3-71b8-5c4b-ad8b-1e6522664921");
	else if (T == "IAsyncOperation!(EmailStore)")
		return uuid("7c9df991-5d99-55b4-b439-064edd097ac4");
	else if (T == "IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeEncryptionAlgorithm)")
		return uuid("433b124d-60e6-5b7a-96bc-8681de5f5e75");
	else if (T == "IReference!(Windows.ApplicationModel.Email.EmailMailboxSmimeSigningAlgorithm)")
		return uuid("e498a622-f168-5104-a53b-faf996f51632");
	else if (T == "TypedEventHandler!(EmailMailbox, EmailMailboxChangedEventArgs)")
		return uuid("20789b0d-1555-51fc-87a5-2222250b9b06");
	else if (T == "TypedEventHandler!(EmailMailboxSyncManager, IInspectable)")
		return uuid("5cbe61bb-d615-5b82-bb11-412e32664c07");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(Certificate)")
		return uuid("676fc159-f15c-58bd-91a7-28f7e795c756");
	else if (T == "IIterable!(Certificate)")
		return uuid("0c7d1423-e8fd-5a91-b55c-8bfbe7ac2d40");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IVectorView!(Certificate)")
		return uuid("963f7013-77c2-51c5-8038-b5bcef633edb");
	else if (T == "IIterator!(AppInfo)")
		return uuid("69cec62c-41eb-5d69-a475-29ee22323dd8");
	else if (T == "IIterable!(AppInfo)")
		return uuid("63d0bffe-0e34-55b3-83d5-314caff2b137");
	else if (T == "IIterator!(Package)")
		return uuid("0217f069-025c-5ee6-a87f-e782e3b623ae");
	else if (T == "IIterable!(Package)")
		return uuid("69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d");
	else if (T == "IIterator!(PackageContentGroup)")
		return uuid("5f23d323-28f5-560f-a40e-6f3827f82e9f");
	else if (T == "IIterable!(PackageContentGroup)")
		return uuid("d7dd1456-4805-5768-a25d-99641b096491");
	else if (T == "IIterator!(StartupTask)")
		return uuid("14653598-9065-508e-b37b-44eb28d51cb7");
	else if (T == "IIterable!(StartupTask)")
		return uuid("61885ead-bf9e-5e9f-af04-6296b336930b");
	else if (T == "IVectorView!(AppInfo)")
		return uuid("8246ed12-33e8-52b3-a5c5-19779de9999e");
	else if (T == "IVectorView!(Package)")
		return uuid("0263c4d4-195c-5dc5-a7ca-6806ceca420b");
	else if (T == "IVectorView!(PackageContentGroup)")
		return uuid("deae10f1-0546-5e61-bd3f-e05da30078ac");
	else if (T == "IVectorView!(StartupTask)")
		return uuid("ea3b1b7a-5071-5986-88fc-912dbbf845fb");
	else if (T == "IVector!(Package)")
		return uuid("d1bb509e-6989-5c69-b1ff-d1702fe8aca3");
	else if (T == "IVector!(PackageContentGroup)")
		return uuid("29adc699-5848-5a98-a516-23feb0fa2c4b");
	else if (T == "EventHandler!(EnteredBackgroundEventArgs)")
		return uuid("e0739c32-fc14-5361-a8b3-0809699fbcbd");
	else if (T == "EventHandler!(LeavingBackgroundEventArgs)")
		return uuid("9b6171c2-abb2-5194-afc0-cef167c424eb");
	else if (T == "EventHandler!(SuspendingEventArgs)")
		return uuid("338579bf-1a35-5cc4-a622-a6f384fd892c");
	else if (T == "AsyncOperationCompletedHandler!(PackageCatalogAddOptionalPackageResult)")
		return uuid("6c5f9b5d-3c24-5087-ae15-6ab4942c4639");
	else if (T == "IAsyncOperation!(PackageCatalogAddOptionalPackageResult)")
		return uuid("59b2497f-86eb-542f-bea6-1be53e93e13d");
	else if (T == "AsyncOperationCompletedHandler!(PackageContentGroup)")
		return uuid("2253dc38-9a1a-5364-9a3b-03a7da615499");
	else if (T == "IAsyncOperation!(PackageContentGroup)")
		return uuid("bbd292e3-db9f-5802-a488-40f156332c04");
	else if (T == "AsyncOperationCompletedHandler!(StartupTask)")
		return uuid("741f7697-2452-5c80-83c6-3b6f822b904c");
	else if (T == "IAsyncOperation!(StartupTask)")
		return uuid("cbec7a4e-a046-5330-873d-0fce228792fa");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.StartupTaskState)")
		return uuid("70a0bf67-19e8-5a86-a32e-3c9863825a04");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.StartupTaskState)")
		return uuid("5239a934-80e2-518f-b819-1f316f379a3f");
	else if (T == "TypedEventHandler!(PackageCatalog, PackageContentGroupStagingEventArgs)")
		return uuid("df206861-9d30-5739-88b2-97e0717cc5f0");
	else if (T == "TypedEventHandler!(PackageCatalog, PackageInstallingEventArgs)")
		return uuid("a8a900c6-da0b-5bcc-a71a-be0b9265d87a");
	else if (T == "TypedEventHandler!(PackageCatalog, PackageStagingEventArgs)")
		return uuid("1726f52d-2b8c-524a-98c6-f2cf0893c0f2");
	else if (T == "TypedEventHandler!(PackageCatalog, PackageStatusChangedEventArgs)")
		return uuid("b32d7d63-cd0e-5c2e-a251-fb8d290824e4");
	else if (T == "TypedEventHandler!(PackageCatalog, PackageUninstallingEventArgs)")
		return uuid("bd636cf1-541f-53ea-8efc-e1604a395b1a");
	else if (T == "TypedEventHandler!(PackageCatalog, PackageUpdatingEventArgs)")
		return uuid("c23e15f6-c618-522a-82ab-4fab36665ce5");
	else if (T == "IIterator!(AppListEntry)")
		return uuid("b93e2028-50bc-599e-b3d9-427b61d26c01");
	else if (T == "IIterable!(AppListEntry)")
		return uuid("86f4d4ef-d8fd-5fb5-807c-72da8fc9e544");
	else if (T == "IVectorView!(AppListEntry)")
		return uuid("920c8b92-d5ef-5899-8776-2ad97aca6e1d");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IIterator!(NamedResource)")
		return uuid("0c5a605f-a7f1-5030-a179-9fd363caf3b5");
	else if (T == "IIterable!(NamedResource)")
		return uuid("e80d3d9d-96c9-579e-8e42-d550700de925");
	else if (T == "IIterator!(ResourceCandidate)")
		return uuid("e151bd8c-a286-57ab-bcea-79b7bc2687a1");
	else if (T == "IIterable!(ResourceCandidate)")
		return uuid("d89c9498-8869-57f8-a883-9c2dfeecb6c6");
	else if (T == "IKeyValuePair!(HSTRING, NamedResource)")
		return uuid("bd4b0143-3a22-5ee2-92ed-7bc3c129e52b");
	else if (T == "IMapView!(HSTRING, NamedResource)")
		return uuid("4825d6c4-835a-5da1-9bdd-12e97e16fb7a");
	else if (T == "IIterator!(ResourceMap)")
		return uuid("3dedcae6-d048-5eaa-afa2-fb4a7970ef68");
	else if (T == "IIterable!(ResourceMap)")
		return uuid("8bbe1154-19aa-53e7-9d6e-dc7d358580f4");
	else if (T == "IIterator!(ResourceQualifier)")
		return uuid("fedb74db-e74f-597a-b9bf-704b0dadca38");
	else if (T == "IIterable!(ResourceQualifier)")
		return uuid("2eee68e2-687c-5f7a-a14e-588c4d3089e1");
	else if (T == "IKeyValuePair!(HSTRING, ResourceMap)")
		return uuid("159782ba-798d-5ae6-85c7-c7bb551aae61");
	else if (T == "IMapView!(HSTRING, ResourceMap)")
		return uuid("d4349ade-93b1-5325-ba5c-05f35eeffc55");
	else if (T == "IVectorView!(NamedResource)")
		return uuid("66c9da16-d345-5bdb-b953-d86dd9ea8409");
	else if (T == "IVectorView!(ResourceCandidate)")
		return uuid("e28e92f0-9ffb-5ea7-9fc9-a73bda471886");
	else if (T == "IVectorView!(ResourceMap)")
		return uuid("f2656ef5-fc27-5c24-a8c2-1697e0be736f");
	else if (T == "IVectorView!(ResourceQualifier)")
		return uuid("b82c58dc-1cc0-53f0-b0f4-66ef39a81cd6");
	else if (T == "AsyncOperationCompletedHandler!(StorageFile)")
		return uuid("e521c894-2c26-5946-9e61-2b5e188d01ed");
	else if (T == "IAsyncOperation!(StorageFile)")
		return uuid("5e52f8ce-aced-5a42-95b4-f674dd84885e");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStream)")
		return uuid("398c4183-793d-5b00-819b-4aef92485e94");
	else if (T == "IAsyncOperation!(IRandomAccessStream)")
		return uuid("430ecece-1418-5d19-81b2-5ddb381603cc");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, HSTRING)")
		return uuid("e2663f37-2e1b-500c-ad68-c3ed7a8f74c8");
	else if (T == "IObservableMap!(HSTRING, HSTRING)")
		return uuid("1e036276-2f60-55f6-b7f3-f86079e6900b");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(IStorageFile)")
		return uuid("314d2318-74ee-535c-b361-2144dbc573a0");
	else if (T == "IIterable!(IStorageFile)")
		return uuid("76d43c7e-fd09-5908-a2b9-a49b4848294b");
	else if (T == "IIterator!(IndexedResourceCandidate)")
		return uuid("6b6f3ab9-1593-5852-b6bb-17a217e12f9f");
	else if (T == "IIterable!(IndexedResourceCandidate)")
		return uuid("0fcb4184-1489-5774-9910-bab326bb50f6");
	else if (T == "IIterator!(IndexedResourceQualifier)")
		return uuid("1a22ebee-7992-5198-972b-054580945741");
	else if (T == "IIterable!(IndexedResourceQualifier)")
		return uuid("e16e0455-7341-55c0-a024-26d9ad43c8cc");
	else if (T == "IVectorView!(IndexedResourceCandidate)")
		return uuid("1da243f1-bb95-543e-95c6-5fd196b34b6f");
	else if (T == "IVectorView!(IndexedResourceQualifier)")
		return uuid("239ded48-ce04-51f2-b2c9-a5e5ab671b8d");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "TypedEventHandler!(SearchPane, SearchPaneQueryChangedEventArgs)")
		return uuid("7ccd7da1-8767-5eef-972d-31d09f1bf308");
	else if (T == "TypedEventHandler!(SearchPane, SearchPaneQuerySubmittedEventArgs)")
		return uuid("5f05121b-61a6-5f6b-b007-20816dfe7009");
	else if (T == "TypedEventHandler!(SearchPane, SearchPaneResultSuggestionChosenEventArgs)")
		return uuid("ec31e5d4-3b8c-5757-96bf-14096be946cd");
	else if (T == "TypedEventHandler!(SearchPane, SearchPaneSuggestionsRequestedEventArgs)")
		return uuid("95088dc0-6c14-55b8-8a8f-9df1ca44d1d4");
	else if (T == "TypedEventHandler!(SearchPane, SearchPaneVisibilityChangedEventArgs)")
		return uuid("3975ff72-971b-54b6-9b5f-cc442e2a87f0");
	else if (T == "IIterator!(StorageFolder)")
		return uuid("5aac96fb-b3b9-5a7f-a920-4b5a8df81168");
	else if (T == "IIterable!(StorageFolder)")
		return uuid("4669befc-ae5c-52b1-8a97-5466ce61e94e");
	else if (T == "IVectorView!(StorageFolder)")
		return uuid("e20debc6-dc4e-542e-a2e7-a24d19c8dd62");
	else if (T == "IVector!(StorageFolder)")
		return uuid("6c26b7be-5f01-5a60-9dd7-fd17be3a9dd6");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(SocialFeedItem)")
		return uuid("e7c8cd1f-3907-5da8-9d72-90426dc37072");
	else if (T == "IIterable!(SocialFeedItem)")
		return uuid("ad33d864-9569-5e2d-bd72-182a8ff50cf6");
	else if (T == "IIterator!(SocialItemThumbnail)")
		return uuid("fabcf39f-fd48-5550-8f47-a0f1573e1f53");
	else if (T == "IIterable!(SocialItemThumbnail)")
		return uuid("5d102c6d-92c3-59f3-b1dc-5986c56445a5");
	else if (T == "IVectorView!(SocialFeedItem)")
		return uuid("e6be2bb8-fc75-585c-836c-34f3ff87680f");
	else if (T == "IVectorView!(SocialItemThumbnail)")
		return uuid("9a3e6d46-e880-5deb-9006-92fe5c43ace1");
	else if (T == "IVector!(SocialFeedItem)")
		return uuid("36cd5297-36c3-56a7-9656-ec9d5bde7aba");
	else if (T == "IVector!(SocialItemThumbnail)")
		return uuid("c210bbd7-2f56-5076-bb0e-b7497726cf95");
	else if (T == "AsyncOperationCompletedHandler!(SocialDashboardItemUpdater)")
		return uuid("33cfd9aa-6c3c-50df-bbc8-34c22a0e5b6b");
	else if (T == "IAsyncOperation!(SocialDashboardItemUpdater)")
		return uuid("8bbca9a4-a4fc-5fe2-b6b1-0e5a75d05b07");
	else if (T == "AsyncOperationCompletedHandler!(SocialFeedUpdater)")
		return uuid("0b227474-80c0-5f33-9ff9-234403abd6fa");
	else if (T == "IAsyncOperation!(SocialFeedUpdater)")
		return uuid("4efa4da9-c556-59f4-9d99-e7801c5b0f45");
	else if (T == "IIterator!(SocialFeedItem)")
		return uuid("e7c8cd1f-3907-5da8-9d72-90426dc37072");
	else if (T == "IIterable!(SocialFeedItem)")
		return uuid("ad33d864-9569-5e2d-bd72-182a8ff50cf6");
	else if (T == "IVectorView!(SocialFeedItem)")
		return uuid("e6be2bb8-fc75-585c-836c-34f3ff87680f");
	else if (T == "IVector!(SocialFeedItem)")
		return uuid("36cd5297-36c3-56a7-9656-ec9d5bde7aba");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(UnfulfilledConsumable)")
		return uuid("cb77cf2e-ef57-5256-9753-214baada2301");
	else if (T == "IIterable!(UnfulfilledConsumable)")
		return uuid("2f4d1483-dd86-5fdb-8c44-06c98844bf3d");
	else if (T == "IKeyValuePair!(HSTRING, ProductLicense)")
		return uuid("ff71c38c-3e6e-5e60-994b-9201436deed1");
	else if (T == "IKeyValuePair!(HSTRING, ProductListing)")
		return uuid("61a02c5d-4007-573e-8a01-0259714927df");
	else if (T == "IMapView!(HSTRING, ProductLicense)")
		return uuid("d6434f65-dd84-534c-b579-cc10d69ec30a");
	else if (T == "IMapView!(HSTRING, ProductListing)")
		return uuid("3206de83-efbe-5791-a487-2ac974206ec6");
	else if (T == "IVectorView!(UnfulfilledConsumable)")
		return uuid("f0ae5962-e039-5105-bcc5-9b552f13b102");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.Store.FulfillmentResult)")
		return uuid("8775acc9-b9ae-5cce-895c-971bf9270892");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.Store.FulfillmentResult)")
		return uuid("5c8531ac-5d8d-5e07-b6ee-7cab96930e8a");
	else if (T == "AsyncOperationCompletedHandler!(ListingInformation)")
		return uuid("fdf83922-762e-57dc-b721-c72ee568fd96");
	else if (T == "IAsyncOperation!(ListingInformation)")
		return uuid("161600f7-6d4f-500d-93a8-09ad6b5ac4ab");
	else if (T == "AsyncOperationCompletedHandler!(PurchaseResults)")
		return uuid("24b6922a-fdb1-5003-ae89-c8bf16ca0143");
	else if (T == "IAsyncOperation!(PurchaseResults)")
		return uuid("241f6b10-6af6-5164-85eb-bae6bdae0be8");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IKeyValuePair!(HSTRING, LicenseSatisfactionInfo)")
		return uuid("69426b8f-88d8-5546-92ee-53f75307845b");
	else if (T == "IMapView!(HSTRING, LicenseSatisfactionInfo)")
		return uuid("19df5e64-c2b2-5bfd-a259-f02c23574cd3");
	else if (T == "AsyncOperationCompletedHandler!(LicenseSatisfactionResult)")
		return uuid("936e8471-252f-5339-89c3-9428412086ca");
	else if (T == "IAsyncOperation!(LicenseSatisfactionResult)")
		return uuid("b8447bc9-a9f8-5867-8b30-cd34720edc31");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IIterator!(StorePreviewProductInfo)")
		return uuid("3fb16dec-73f1-5cfa-80e6-67fa232d1bef");
	else if (T == "IIterable!(StorePreviewProductInfo)")
		return uuid("a9cb4860-67d1-53c2-a621-3074b0344d49");
	else if (T == "IIterator!(StorePreviewSkuInfo)")
		return uuid("b6f9b421-7f54-5d26-9c37-9f9d7ac893eb");
	else if (T == "IIterable!(StorePreviewSkuInfo)")
		return uuid("2c0d85d9-0df7-5de6-962e-bc8f149faf19");
	else if (T == "IIterator!(Windows.ApplicationModel.Store.Preview.StoreSystemFeature)")
		return uuid("d0455b2d-d8aa-557e-89a3-63c33e8cee99");
	else if (T == "IIterable!(Windows.ApplicationModel.Store.Preview.StoreSystemFeature)")
		return uuid("98a8577a-b128-5400-8d3d-58654eaaf957");
	else if (T == "IVectorView!(StorePreviewProductInfo)")
		return uuid("fcc6add5-dc28-500f-8e24-b22d1ab56aad");
	else if (T == "IVectorView!(StorePreviewSkuInfo)")
		return uuid("47418723-a671-5fdc-8647-68f7d8c31416");
	else if (T == "IVectorView!(Windows.ApplicationModel.Store.Preview.StoreSystemFeature)")
		return uuid("c8f90757-ebcf-5f2c-b918-6487105b0ca1");
	else if (T == "AsyncOperationCompletedHandler!(StorePreviewPurchaseResults)")
		return uuid("b1ea16e7-8268-51ff-8129-dcefd493f35f");
	else if (T == "IAsyncOperation!(StorePreviewPurchaseResults)")
		return uuid("9aa2af80-0dcb-5ec1-8435-0b687ed374a5");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStreamReference)")
		return uuid("60847289-ea0b-5df6-89df-f2c62cba9693");
	else if (T == "IAsyncOperation!(IRandomAccessStreamReference)")
		return uuid("65178d50-e6a2-5d16-b244-65e9725e5a0c");
	else if (T == "AsyncOperationCompletedHandler!(WebTokenRequestResult)")
		return uuid("deb54b22-70f2-55ab-97c0-6cbdc5ddb6f0");
	else if (T == "IAsyncOperation!(WebTokenRequestResult)")
		return uuid("0a815852-7c44-5674-b3d2-fa2e4c1e46c9");
	else if (T == "TypedEventHandler!(UserDataTaskDataProviderConnection, UserDataTaskListCompleteTaskRequestEventArgs)")
		return uuid("6035f9f7-d4c5-5394-b0e3-5d606987ba47");
	else if (T == "TypedEventHandler!(UserDataTaskDataProviderConnection, UserDataTaskListCreateOrUpdateTaskRequestEventArgs)")
		return uuid("28adf45c-6807-5590-a7f1-934747937592");
	else if (T == "TypedEventHandler!(UserDataTaskDataProviderConnection, UserDataTaskListDeleteTaskRequestEventArgs)")
		return uuid("0b18e688-b269-5ca2-a8f3-d6d10f0fb320");
	else if (T == "TypedEventHandler!(UserDataTaskDataProviderConnection, UserDataTaskListSkipOccurrenceRequestEventArgs)")
		return uuid("0887b178-c546-5ac8-ae10-3292ab5265bc");
	else if (T == "TypedEventHandler!(UserDataTaskDataProviderConnection, UserDataTaskListSyncManagerSyncRequestEventArgs)")
		return uuid("b164e8ef-167c-5852-a792-0930b4001871");
	else if (T == "IIterator!(UserDataTask)")
		return uuid("98733fc7-1908-532f-bfe3-3868445d29d6");
	else if (T == "IIterable!(UserDataTask)")
		return uuid("8ae8becd-375f-5932-91ed-f82a74224365");
	else if (T == "IIterator!(UserDataTaskList)")
		return uuid("8e989bcb-9d7c-512f-89da-fdb75532d665");
	else if (T == "IIterable!(UserDataTaskList)")
		return uuid("2c4d63bc-cffb-50d2-8a82-a9aefad651d3");
	else if (T == "IVectorView!(UserDataTask)")
		return uuid("0cfeaf9b-8758-5aa6-9806-32b0ea40d4b8");
	else if (T == "IVectorView!(UserDataTaskList)")
		return uuid("0910e3ae-2075-5486-866f-f1590ade3616");
	else if (T == "AsyncOperationCompletedHandler!(UserDataTask)")
		return uuid("a731c0cd-206d-5af8-ad64-85b7200f4ce2");
	else if (T == "IAsyncOperation!(UserDataTask)")
		return uuid("b8b749b1-a847-5c34-866c-ea560cde1f49");
	else if (T == "AsyncOperationCompletedHandler!(UserDataTaskBatch)")
		return uuid("e63bf8b8-91f0-5f13-a1c9-dee1879d0a52");
	else if (T == "IAsyncOperation!(UserDataTaskBatch)")
		return uuid("d36b10df-1cab-544c-8c2e-3c7bc4d24b24");
	else if (T == "AsyncOperationCompletedHandler!(UserDataTaskList)")
		return uuid("eefb814a-6af7-5d59-bf3f-b6c73b8c74a2");
	else if (T == "IAsyncOperation!(UserDataTaskList)")
		return uuid("d9274ef2-63e0-544c-8db2-fe2d5b825d9e");
	else if (T == "AsyncOperationCompletedHandler!(UserDataTaskStore)")
		return uuid("33c9c615-2f80-587d-9f51-027ec457b7a3");
	else if (T == "IAsyncOperation!(UserDataTaskStore)")
		return uuid("e02c4e60-78aa-5eb8-badb-ead22dca9679");
	else if (T == "IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskDaysOfWeek)")
		return uuid("903861c5-d29d-5083-a03d-6b2a0233dcca");
	else if (T == "IReference!(Windows.ApplicationModel.UserDataTasks.UserDataTaskWeekOfMonth)")
		return uuid("5246fa7f-f9e9-5574-80f7-4aa359b0023d");
	else if (T == "TypedEventHandler!(UserDataTaskListSyncManager, IInspectable)")
		return uuid("03e790f2-eacf-53eb-9060-6bfeec5bc375");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "EventHandler!(BackgroundActivatedEventArgs)")
		return uuid("49a07732-e7b8-5c5b-9de7-22e33cb97004");
	else if (T == "TypedEventHandler!(SplashScreen, IInspectable)")
		return uuid("7725b2a5-287d-5ed2-a789-2a6a2673c7fe");
	else if (T == "TypedEventHandler!(BackgroundTaskRegistrationGroup, BackgroundActivatedEventArgs)")
		return uuid("d4f89768-688f-59ec-bf24-c2af6a310fa4");
	else if (T == "TypedEventHandler!(CoreApplicationView, IActivatedEventArgs)")
		return uuid("cf193a96-eb13-5e3b-8bdf-87b6efae8339");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IIterator!(IStorageItem)")
		return uuid("05b487c2-3830-5d3c-98da-25fa11542dbd");
	else if (T == "IIterable!(IStorageItem)")
		return uuid("bb8b8418-65d1-544b-b083-6d172f568c73");
	else if (T == "IVectorView!(IStorageItem)")
		return uuid("85575a41-06cb-58d0-b98a-7c8f06e6e9d7");
	else if (T == "IIterator!(StorageFile)")
		return uuid("43e29f53-0298-55aa-a6c8-4edd323d9598");
	else if (T == "IIterable!(StorageFile)")
		return uuid("9ac00304-83ea-5688-87b6-ae38aab65d0b");
	else if (T == "IVectorView!(StorageFile)")
		return uuid("80646519-5e2a-595d-a8cd-2a24b4067f1b");
	else if (T == "IIterator!(ShownTileNotification)")
		return uuid("04d8d70b-7c15-5f60-9894-b21366b427c2");
	else if (T == "IIterable!(ShownTileNotification)")
		return uuid("1863baee-44f1-5e51-bcdf-a3cdab826a15");
	else if (T == "IVectorView!(ShownTileNotification)")
		return uuid("2b23baa9-1d54-5440-bd32-86ed70f15c9e");
	else if (T == "IIterator!(PhoneCallHistoryEntry)")
		return uuid("c1cf3870-064a-54d5-afab-d1dc4ee26ccb");
	else if (T == "IIterable!(PhoneCallHistoryEntry)")
		return uuid("a3f93eea-c846-52c7-aa5a-3306707f6369");
	else if (T == "IVectorView!(PhoneCallHistoryEntry)")
		return uuid("452ce6ed-a06d-58fb-be06-cb4330b7f5c7");
	else if (T == "AsyncOperationCompletedHandler!(PhoneCallHistoryEntry)")
		return uuid("3234244b-abee-561d-b247-79b832822055");
	else if (T == "IAsyncOperation!(PhoneCallHistoryEntry)")
		return uuid("785e7cca-90e2-5d03-8f23-b3358d09c951");
	else if (T == "AsyncOperationCompletedHandler!(PhoneCallHistoryStore)")
		return uuid("226a138b-79ea-56d3-adc2-a40db8d8c9b0");
	else if (T == "IAsyncOperation!(PhoneCallHistoryStore)")
		return uuid("0d9a97b0-8796-52bf-80da-b1435fe64a26");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.Calls.VoipPhoneCallResourceReservationStatus)")
		return uuid("7a27b20f-647a-53fc-80f0-a79d083ce531");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.Calls.VoipPhoneCallResourceReservationStatus)")
		return uuid("8528be80-7ce9-5668-8e48-469ae5ba9ead");
	else if (T == "TypedEventHandler!(LockScreenCallUI, IInspectable)")
		return uuid("addada2a-e5a7-5921-b7e0-17323adf7382");
	else if (T == "TypedEventHandler!(LockScreenCallUI, LockScreenCallEndRequestedEventArgs)")
		return uuid("92f7c40e-e7b9-5f68-98f0-56fb89015806");
	else if (T == "TypedEventHandler!(VoipCallCoordinator, MuteChangeEventArgs)")
		return uuid("ecafec77-4bf6-57b7-86c6-e2feca5b5aee");
	else if (T == "TypedEventHandler!(VoipPhoneCall, CallAnswerEventArgs)")
		return uuid("d47be4da-c00c-5faa-bfa5-1b11e0c3ccc1");
	else if (T == "TypedEventHandler!(VoipPhoneCall, CallRejectEventArgs)")
		return uuid("d06255ce-0967-5441-8fe6-ed2e7008197e");
	else if (T == "TypedEventHandler!(VoipPhoneCall, CallStateChangeEventArgs)")
		return uuid("1e00c6cc-e14c-51ce-93f3-0a0a9a3f3eec");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(UINT32)")
		return uuid("9343b6e7-e3d2-5e4a-ab2d-2bce4919a6a4");
	else if (T == "IAsyncOperation!(UINT32)")
		return uuid("ef60385f-be78-584b-aaef-7829ada2b0de");
	else if (T == "IIterator!(ChatConversation)")
		return uuid("7007a155-47ca-59c8-bf1e-960b82159907");
	else if (T == "IIterable!(ChatConversation)")
		return uuid("af43c676-a512-5388-9f69-0308953d719b");
	else if (T == "IIterator!(ChatMessage)")
		return uuid("cd3c8682-2366-5646-9af5-bcb9c3be9ebe");
	else if (T == "IIterable!(ChatMessage)")
		return uuid("647bf12c-f621-5fd8-af39-c72b16baf07e");
	else if (T == "IIterator!(ChatMessageAttachment)")
		return uuid("bc37f8a5-cd61-5054-a897-6d402b56b58b");
	else if (T == "IIterable!(ChatMessageAttachment)")
		return uuid("8a1e36ac-13b6-577c-9b43-3d24a453f866");
	else if (T == "IIterator!(ChatMessageChange)")
		return uuid("df6e6b4f-3e45-52cd-aade-3316896abad0");
	else if (T == "IIterable!(ChatMessageChange)")
		return uuid("0df896df-354c-5d35-b7ac-6b2e1d70c8eb");
	else if (T == "IIterator!(ChatMessageTransport)")
		return uuid("98ebffc3-ef5f-58ac-9695-047a96c3f0b0");
	else if (T == "IIterable!(ChatMessageTransport)")
		return uuid("aae32f12-ed85-528c-8bad-6362d876ef8b");
	else if (T == "IIterator!(ChatRecipientDeliveryInfo)")
		return uuid("3a7b0f38-ecd7-55f8-a5c5-e03d43a3978e");
	else if (T == "IIterable!(ChatRecipientDeliveryInfo)")
		return uuid("e3d7b44c-4829-561b-a15e-a745e5adf6d1");
	else if (T == "IIterator!(IChatItem)")
		return uuid("5d2c1b3f-9bc7-5126-93cd-f52326494de1");
	else if (T == "IIterable!(IChatItem)")
		return uuid("ea8e3309-099a-592e-9e28-441b151fe061");
	else if (T == "IIterator!(RcsEndUserMessageAction)")
		return uuid("75a37f34-d87d-555c-8e64-a1ea48a3dd20");
	else if (T == "IIterable!(RcsEndUserMessageAction)")
		return uuid("b6d21a55-471e-5a25-acdd-7784f7b4d7ba");
	else if (T == "IIterator!(RcsTransport)")
		return uuid("a4eda5fb-fb99-56a7-8948-95c668a3ed3c");
	else if (T == "IIterable!(RcsTransport)")
		return uuid("184c2264-65fd-5ad4-b22f-cb34e8eaec63");
	else if (T == "IKeyValuePair!(HSTRING, Windows.ApplicationModel.Chat.ChatMessageStatus)")
		return uuid("4f426a27-6d23-58b6-9f29-4f88ed274bcd");
	else if (T == "IMapView!(HSTRING, Windows.ApplicationModel.Chat.ChatMessageStatus)")
		return uuid("6a44ff0f-a172-5285-9ba5-b9fdd699a0fe");
	else if (T == "IVectorView!(ChatConversation)")
		return uuid("8d4e5cf4-610b-5a29-b66a-2649700f5245");
	else if (T == "IVectorView!(ChatMessage)")
		return uuid("ac612e87-63fd-5c05-999a-0dae0d8ec7a3");
	else if (T == "IVectorView!(ChatMessageAttachment)")
		return uuid("50f5c38b-749f-5bf6-9560-11a9876f20d1");
	else if (T == "IVectorView!(ChatMessageChange)")
		return uuid("447a59fc-e729-5846-91da-b650fdeca785");
	else if (T == "IVectorView!(ChatMessageTransport)")
		return uuid("c7b1733f-6e87-5a65-8542-cf36a4521695");
	else if (T == "IVectorView!(ChatRecipientDeliveryInfo)")
		return uuid("7897ffd3-7d86-5c89-bbe2-ca708d1a3398");
	else if (T == "IVectorView!(IChatItem)")
		return uuid("4e46b3db-f003-5bfc-9eeb-f702f0801949");
	else if (T == "IVectorView!(RcsEndUserMessageAction)")
		return uuid("9607e377-e873-5091-9e32-8695e8f50e7a");
	else if (T == "IVectorView!(RcsTransport)")
		return uuid("0627ce33-6cf1-5bc9-9508-938d67a494ed");
	else if (T == "IVector!(ChatMessageAttachment)")
		return uuid("ad2127f1-3216-58fb-8154-b241a60b4252");
	else if (T == "IVector!(ChatRecipientDeliveryInfo)")
		return uuid("14640361-3f8d-5606-8fcb-973208b76d72");
	else if (T == "AsyncOperationCompletedHandler!(ChatCapabilities)")
		return uuid("ce2d035c-7686-56bd-a2ca-194735fd8617");
	else if (T == "IAsyncOperation!(ChatCapabilities)")
		return uuid("30889035-c687-573b-86e4-024e38f2aa6d");
	else if (T == "AsyncOperationCompletedHandler!(ChatConversation)")
		return uuid("0b9c15f1-1871-50c5-86de-6e614d593c57");
	else if (T == "IAsyncOperation!(ChatConversation)")
		return uuid("c4d8e414-0e54-5adf-88c3-e56d4e88b5d4");
	else if (T == "AsyncOperationCompletedHandler!(ChatMessage)")
		return uuid("2704edec-009d-5abb-a718-767718158d88");
	else if (T == "IAsyncOperation!(ChatMessage)")
		return uuid("ee129c22-da8f-5c55-90b6-a73bacc9d735");
	else if (T == "AsyncOperationCompletedHandler!(ChatMessageStore)")
		return uuid("a9174f86-1fc7-50f4-8d7e-103d3fd6e5a3");
	else if (T == "IAsyncOperation!(ChatMessageStore)")
		return uuid("19642405-0e06-5119-9ac5-16cfd106b337");
	else if (T == "AsyncOperationCompletedHandler!(ChatMessageTransport)")
		return uuid("69dc85b1-ba0b-57d3-b7c3-618e0156f8cb");
	else if (T == "IAsyncOperation!(ChatMessageTransport)")
		return uuid("275e7895-3a8e-5175-b76f-21d2e045bd2f");
	else if (T == "AsyncOperationCompletedHandler!(ChatSyncManager)")
		return uuid("5b3512cc-8528-5e87-b061-1b982a647fc4");
	else if (T == "IAsyncOperation!(ChatSyncManager)")
		return uuid("a4667a6a-1c64-51f6-972e-a1050719f8ea");
	else if (T == "AsyncOperationCompletedHandler!(RcsTransport)")
		return uuid("7851a9c5-1467-5c7d-af74-57ec6bd33417");
	else if (T == "IAsyncOperation!(RcsTransport)")
		return uuid("f88774e8-9664-5df5-abbd-c64556d25062");
	else if (T == "TypedEventHandler!(ChatConversation, RemoteParticipantComposingChangedEventArgs)")
		return uuid("09e43bb2-692d-5330-b9e7-adf69ad5c1a9");
	else if (T == "TypedEventHandler!(ChatMessageStore, ChatMessageChangedEventArgs)")
		return uuid("2a4ed3d1-0d01-5133-b9e4-ddf68f099485");
	else if (T == "TypedEventHandler!(ChatMessageStore, ChatMessageStoreChangedEventArgs)")
		return uuid("3b5903d7-a037-5c7c-8336-88423d81e408");
	else if (T == "TypedEventHandler!(RcsEndUserMessageManager, RcsEndUserMessageAvailableEventArgs)")
		return uuid("8d6beb36-f6ce-5769-96c2-25326eb463f6");
	else if (T == "TypedEventHandler!(RcsTransport, RcsServiceKindSupportedChangedEventArgs)")
		return uuid("e5f1c3a4-e498-50b0-91fe-94ebb01de0ab");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "AsyncOperationCompletedHandler!(int)")
		return uuid("d60cae9d-88cb-59f1-8576-3fba44796be8");
	else if (T == "IAsyncOperation!(int)")
		return uuid("968b9665-06ed-5774-8f53-8edeabd5f7b5");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IIterator!(UserDataAccountPartnerAccountInfo)")
		return uuid("ac401b26-3ebf-5cbf-9643-c96a40ab40a2");
	else if (T == "IIterable!(UserDataAccountPartnerAccountInfo)")
		return uuid("5cdb425e-da5a-55fa-b349-5467996cab32");
	else if (T == "IVectorView!(UserDataAccountPartnerAccountInfo)")
		return uuid("b730f093-e2fb-5b20-9d9e-4f9defe647b0");
	else if (T == "IIterator!(UserDataAccount)")
		return uuid("e38246ab-df01-5d16-923a-17c88cdbac29");
	else if (T == "IIterable!(UserDataAccount)")
		return uuid("1bc7f1ff-26b4-5440-9629-cb4cd8c87987");
	else if (T == "IVectorView!(UserDataAccount)")
		return uuid("65f4f73e-3271-5999-93d8-5a3d78be13a6");
	else if (T == "AsyncOperationCompletedHandler!(UserDataAccount)")
		return uuid("ab92e426-2ac6-5ffb-88ca-cbdd91df3927");
	else if (T == "IAsyncOperation!(UserDataAccount)")
		return uuid("f0aeb2af-a69b-5caa-a283-32e697a65d31");
	else if (T == "AsyncOperationCompletedHandler!(UserDataAccountStore)")
		return uuid("264c2ca9-29b4-5035-b460-8c8d0e8fbcd9");
	else if (T == "IAsyncOperation!(UserDataAccountStore)")
		return uuid("06b68f1e-9937-5296-a55e-d43dd8a7545c");
	else if (T == "TypedEventHandler!(UserDataAccountStore, UserDataAccountStoreChangedEventArgs)")
		return uuid("7b27aec8-0690-5063-beb0-d9e2eb1a1201");
	else if (T == "IIterator!(AppointmentCalendar)")
		return uuid("f40a879d-b6b7-5f92-beb1-6a8e7ce54120");
	else if (T == "IIterable!(AppointmentCalendar)")
		return uuid("d3fb010b-b692-5130-9d16-2cfdabcb6dec");
	else if (T == "IVectorView!(AppointmentCalendar)")
		return uuid("774512d3-a564-5f8d-b104-3ec8f2a1104f");
	else if (T == "IIterator!(EmailMailbox)")
		return uuid("312f8d4a-0e85-566e-b7aa-dbd40a0343ff");
	else if (T == "IIterable!(EmailMailbox)")
		return uuid("8fc76b2e-f800-5f1d-a023-de47e5f306e0");
	else if (T == "IVectorView!(EmailMailbox)")
		return uuid("d4816e16-43c9-5b63-a444-6189acb56f6e");
	else if (T == "IIterator!(ContactList)")
		return uuid("ee69382d-887d-5964-83b4-47ee9ded6f05");
	else if (T == "IIterable!(ContactList)")
		return uuid("f9b0782c-bfe9-564e-bca2-97235fd64463");
	else if (T == "IVectorView!(ContactList)")
		return uuid("a55c7dcf-e3c9-5afa-8667-ca68230d7724");
	else if (T == "IIterator!(ContactAnnotationList)")
		return uuid("3d7b4ad2-bb54-5e21-a92e-6b80264ccc50");
	else if (T == "IIterable!(ContactAnnotationList)")
		return uuid("ae095a89-8b8b-5b8a-8f28-555aa490ad87");
	else if (T == "IVectorView!(ContactAnnotationList)")
		return uuid("3bf71d9d-2037-5e08-a7e1-b937cf74bbd9");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(UserDataTaskList)")
		return uuid("8e989bcb-9d7c-512f-89da-fdb75532d665");
	else if (T == "IIterable!(UserDataTaskList)")
		return uuid("2c4d63bc-cffb-50d2-8a82-a9aefad651d3");
	else if (T == "IVectorView!(UserDataTaskList)")
		return uuid("0910e3ae-2075-5486-866f-f1590ade3616");
	else if (T == "IIterator!(ContactGroup)")
		return uuid("86dac457-7314-5044-8108-75290c36dd2b");
	else if (T == "IIterable!(ContactGroup)")
		return uuid("9db1688a-f7e0-5059-989e-d1453056d73a");
	else if (T == "IVectorView!(ContactGroup)")
		return uuid("124493aa-1617-5d0a-a5b6-4d1156fa95e5");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "AsyncOperationCompletedHandler!(WalletItemSystemStore)")
		return uuid("fe76bd86-3570-5d56-932e-a6fb8093a557");
	else if (T == "IAsyncOperation!(WalletItemSystemStore)")
		return uuid("587c5f4f-7c55-5f74-b26a-f80e3bc6d4f2");
	else if (T == "TypedEventHandler!(WalletItemSystemStore, IInspectable)")
		return uuid("3c619943-a672-57ee-ad32-f6d97a6f4217");
	else if (T == "IIterator!(WalletItem)")
		return uuid("e3ceb002-c2dd-5e63-913c-d7d577561e73");
	else if (T == "IIterable!(WalletItem)")
		return uuid("ac174c8c-0fdd-5cff-a29f-4e8ce1c8bc81");
	else if (T == "IVectorView!(WalletItem)")
		return uuid("2dc89188-2b5b-591a-bb3d-d7d57ff7312c");
	else if (T == "AsyncOperationCompletedHandler!(WalletItem)")
		return uuid("88b0349f-503d-5786-a267-55bb37a8a1b1");
	else if (T == "IAsyncOperation!(WalletItem)")
		return uuid("8e64ddb0-ea5c-5593-a1f3-0b8209df3905");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(WalletItem)")
		return uuid("e3ceb002-c2dd-5e63-913c-d7d577561e73");
	else if (T == "IIterable!(WalletItem)")
		return uuid("ac174c8c-0fdd-5cff-a29f-4e8ce1c8bc81");
	else if (T == "IKeyValuePair!(HSTRING, WalletItemCustomProperty)")
		return uuid("1aa9cd86-9376-5ebb-b45c-8dad7e66f9f7");
	else if (T == "IKeyValuePair!(HSTRING, WalletRelevantLocation)")
		return uuid("031812fc-a4f7-5127-9ec4-d92621cb3f90");
	else if (T == "IKeyValuePair!(HSTRING, WalletTransaction)")
		return uuid("f50232e9-7ce3-559b-baad-6726ffa4e79b");
	else if (T == "IKeyValuePair!(HSTRING, WalletVerb)")
		return uuid("1fe3a179-ffa8-5f52-9823-9c3dff73c56a");
	else if (T == "IMapView!(HSTRING, WalletItemCustomProperty)")
		return uuid("338f0d64-dd4e-5614-b16f-0bd08d19fe02");
	else if (T == "IMapView!(HSTRING, WalletRelevantLocation)")
		return uuid("b5622af3-7c67-5158-b39a-4323488e6f87");
	else if (T == "IMapView!(HSTRING, WalletTransaction)")
		return uuid("05b768c4-0c95-5305-9b44-ef006b53300f");
	else if (T == "IMapView!(HSTRING, WalletVerb)")
		return uuid("93ca6ab8-a827-5e28-b21e-01a597457c3e");
	else if (T == "IMap!(HSTRING, WalletItemCustomProperty)")
		return uuid("5cc135b0-29f3-5113-a097-25e41a32e473");
	else if (T == "IMap!(HSTRING, WalletRelevantLocation)")
		return uuid("9378c55a-852d-5ddf-b01b-9cc3d47ec52d");
	else if (T == "IMap!(HSTRING, WalletTransaction)")
		return uuid("3ef47bcf-8328-5245-8c91-f0ab4c399027");
	else if (T == "IMap!(HSTRING, WalletVerb)")
		return uuid("bda656b0-1139-5fd3-9dfd-d24dbb910509");
	else if (T == "IVectorView!(WalletItem)")
		return uuid("2dc89188-2b5b-591a-bb3d-d7d57ff7312c");
	else if (T == "AsyncOperationCompletedHandler!(WalletItem)")
		return uuid("88b0349f-503d-5786-a267-55bb37a8a1b1");
	else if (T == "IAsyncOperation!(WalletItem)")
		return uuid("8e64ddb0-ea5c-5593-a1f3-0b8209df3905");
	else if (T == "AsyncOperationCompletedHandler!(WalletItemStore)")
		return uuid("5334975e-205a-5b6c-96fd-896fb93949bd");
	else if (T == "IAsyncOperation!(WalletItemStore)")
		return uuid("9664f3ba-0049-5cbf-845f-8f0bcad2b14c");
	else if (T == "TypedEventHandler!(WalletItemStore, IInspectable)")
		return uuid("07fc9084-9ea1-5505-89cc-4d754719f582");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStreamReference)")
		return uuid("60847289-ea0b-5df6-89df-f2c62cba9693");
	else if (T == "IAsyncOperation!(IRandomAccessStreamReference)")
		return uuid("65178d50-e6a2-5d16-b244-65e9725e5a0c");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IIterator!(IPlayReadyDomain)")
		return uuid("5c35e8a5-4ad7-5e70-bedf-91f5d5888d35");
	else if (T == "IIterable!(IPlayReadyDomain)")
		return uuid("84e98f86-4bee-5f41-93a1-255887122d9f");
	else if (T == "IIterator!(IPlayReadyLicense)")
		return uuid("6a6d000a-ce26-541b-a158-8457409b2604");
	else if (T == "IIterable!(IPlayReadyLicense)")
		return uuid("9f28f6b7-b5ea-5073-ba3d-8cb2f07291a1");
	else if (T == "IIterator!(IPlayReadySecureStopServiceRequest)")
		return uuid("77b0419b-3f4b-5ef9-ae0b-881143b172c9");
	else if (T == "IIterable!(IPlayReadySecureStopServiceRequest)")
		return uuid("8d8ac279-b07d-5308-9c78-1c5c996ca03c");
	else if (T == "AsyncOperationCompletedHandler!(INDLicenseFetchResult)")
		return uuid("f72fdf87-9055-58d8-96ab-2cc04d06ccd7");
	else if (T == "IAsyncOperation!(INDLicenseFetchResult)")
		return uuid("9b9d0c68-3ad2-5b01-8dc7-6f7fc1eed6f6");
	else if (T == "AsyncOperationCompletedHandler!(INDSendResult)")
		return uuid("c6c485d0-fdab-5142-b079-97af0567f0b6");
	else if (T == "IAsyncOperation!(INDSendResult)")
		return uuid("6c3788a8-0e6d-5e29-9ad1-d88a65eb500b");
	else if (T == "AsyncOperationCompletedHandler!(INDStartResult)")
		return uuid("1e4e3760-b22b-5f0a-9058-475aff310db5");
	else if (T == "IAsyncOperation!(INDStartResult)")
		return uuid("01fab63e-6aab-54a2-80f7-dbed22f58d56");
	else if (T == "TypedEventHandler!(NDClient, IInspectable)")
		return uuid("d20f3387-b3f5-5010-9b0b-e851ae84940d");
	else if (T == "TypedEventHandler!(NDClient, INDClosedCaptionDataReceivedEventArgs)")
		return uuid("36ec9e44-25f6-5d3d-87ee-8ad10a335c83");
	else if (T == "TypedEventHandler!(NDClient, INDLicenseFetchCompletedEventArgs)")
		return uuid("a5401278-e2c1-5354-858f-6f32cbdfbea7");
	else if (T == "TypedEventHandler!(NDClient, INDProximityDetectionCompletedEventArgs)")
		return uuid("b545268a-c7ce-51f8-bddc-029d2c66b66b");
	else if (T == "TypedEventHandler!(NDClient, INDRegistrationCompletedEventArgs)")
		return uuid("46b3f056-c1a0-51c0-8521-cde222157eff");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(AudioStreamDescriptor)")
		return uuid("a61a11cd-b32e-518b-a6a7-5472cbe00e83");
	else if (T == "IIterable!(AudioStreamDescriptor)")
		return uuid("a3e2c972-a171-5b94-8389-e983ebc3f3b9");
	else if (T == "IVectorView!(AudioStreamDescriptor)")
		return uuid("340f4fed-1288-5b89-be7c-c355fe1ce4d9");
	else if (T == "IVector!(AudioStreamDescriptor)")
		return uuid("45afc129-988c-5f1e-9c17-6e34b917cd1b");
	else if (T == "IIterator!(VideoStreamDescriptor)")
		return uuid("da51ab3c-3c64-545c-a3f4-f9b055aaf7d9");
	else if (T == "IIterable!(VideoStreamDescriptor)")
		return uuid("3acbf03c-0a79-5823-aaa9-d88bc3f8f594");
	else if (T == "IVectorView!(VideoStreamDescriptor)")
		return uuid("e965c8af-d211-52f0-838b-4637469da7af");
	else if (T == "IVector!(VideoStreamDescriptor)")
		return uuid("1fb064b3-636c-5988-9c97-02a9b76150f6");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "AsyncOperationCompletedHandler!(MediaRenderer)")
		return uuid("f0d971af-e054-5616-9fdf-0903b9ceb182");
	else if (T == "IAsyncOperation!(MediaRenderer)")
		return uuid("557dd3fb-4710-5059-921c-0dee68361fb5");
	else if (T == "IIterator!(IBasicDevice)")
		return uuid("84a8c766-4bc5-5757-9f1b-f61cfd9e5693");
	else if (T == "IIterable!(IBasicDevice)")
		return uuid("7d468b5e-763b-59cd-a086-ec6d8be0d858");
	else if (T == "IIterator!(IDeviceIcon)")
		return uuid("57fd211a-4ef0-58a0-90e2-7c3b816102c9");
	else if (T == "IIterable!(IDeviceIcon)")
		return uuid("16077ee6-dcfc-53aa-ab0e-d666ac819d6c");
	else if (T == "IIterator!(Windows.Media.Streaming.PlaySpeed)")
		return uuid("fd051cd8-25c7-5780-9606-b35062137d21");
	else if (T == "IIterable!(Windows.Media.Streaming.PlaySpeed)")
		return uuid("c4a17a40-8c62-5884-822b-502526970b0d");
	else if (T == "IVectorView!(IBasicDevice)")
		return uuid("a55cf16b-71a2-5525-ac3b-2f5bc1eeec46");
	else if (T == "IVectorView!(IDeviceIcon)")
		return uuid("ff195e52-48eb-5709-be50-3a3914c189db");
	else if (T == "IVectorView!(Windows.Media.Streaming.PlaySpeed)")
		return uuid("1295caf3-c1da-54ea-ac66-da2c044f9eb0");
	else if (T == "IVector!(IBasicDevice)")
		return uuid("4c58be45-d16f-5b3a-840d-a6b4e20b7088");
	else if (T == "IVector!(IDeviceIcon)")
		return uuid("a32d7731-05f6-55a2-930f-1cf5a12b19ae");
	else if (T == "IVector!(Windows.Media.Streaming.PlaySpeed)")
		return uuid("fde57c75-5b86-5921-8ffb-101b0a184230");
	else if (T == "AsyncOperationCompletedHandler!(ActiveBasicDevice)")
		return uuid("4c0d279c-4b4e-5657-b609-6f15ff54212e");
	else if (T == "IAsyncOperation!(ActiveBasicDevice)")
		return uuid("0c4a4010-9046-5bff-8cc5-cbcde4c2d5c1");
	else if (T == "AsyncOperationCompletedHandler!(DevicePair)")
		return uuid("cde8d503-5136-5cb9-ab04-11502ec5afeb");
	else if (T == "IAsyncOperation!(DevicePair)")
		return uuid("d3d31100-6a6e-5775-ae0b-55cbeb23cacf");
	else if (T == "AsyncOperationCompletedHandler!(MediaRenderer)")
		return uuid("f0d971af-e054-5616-9fdf-0903b9ceb182");
	else if (T == "IAsyncOperation!(MediaRenderer)")
		return uuid("557dd3fb-4710-5059-921c-0dee68361fb5");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.Streaming.PositionInformation)")
		return uuid("adc7daf4-9a69-5d0b-aec8-e2ee3292d178");
	else if (T == "IAsyncOperation!(Windows.Media.Streaming.PositionInformation)")
		return uuid("e2b45a37-e1c1-5e80-8962-a134d7f3557c");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.Streaming.TransportInformation)")
		return uuid("9970f463-bcd0-55b9-94cd-8932d42446ca");
	else if (T == "IAsyncOperation!(Windows.Media.Streaming.TransportInformation)")
		return uuid("f99e7d9c-2274-5f3d-89e7-f5f862ba0334");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(UINT32)")
		return uuid("9343b6e7-e3d2-5e4a-ab2d-2bce4919a6a4");
	else if (T == "IAsyncOperation!(UINT32)")
		return uuid("ef60385f-be78-584b-aaef-7829ada2b0de");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStreamWithContentType)")
		return uuid("3dddecf4-1d39-58e8-83b1-dbed541c7f35");
	else if (T == "IAsyncOperation!(IRandomAccessStreamWithContentType)")
		return uuid("c4a57c5e-32b0-55b3-ad13-ce1c23041ed6");
	else if (T == "IIterator!(IPropertySet)")
		return uuid("d79a75c8-b1d2-544d-9b09-7f7900a34efb");
	else if (T == "IIterable!(IPropertySet)")
		return uuid("489b756d-be43-5abb-b9a0-a47254103339");
	else if (T == "IVectorView!(IPropertySet)")
		return uuid("c25d9a17-c31e-5311-8122-3c04d28af9fc");
	else if (T == "EventHandler!(ProtectedAccessResumedEventArgs)")
		return uuid("9efe4d36-6549-5222-9bc2-4d5d929d005c");
	else if (T == "EventHandler!(ProtectedAccessSuspendingEventArgs)")
		return uuid("fe8bb4d8-0d3d-5416-b390-9ead5dd9b384");
	else if (T == "EventHandler!(ProtectedContentRevokedEventArgs)")
		return uuid("4ff76357-6805-573e-a67d-2c594f5004b7");
	else if (T == "AsyncOperationCompletedHandler!(BufferProtectUnprotectResult)")
		return uuid("73d780cb-ad38-59e6-a236-cc0df69f15a8");
	else if (T == "IAsyncOperation!(BufferProtectUnprotectResult)")
		return uuid("11f95a2e-2e87-5449-bca3-dcdf2ae6e17a");
	else if (T == "AsyncOperationCompletedHandler!(DataProtectionInfo)")
		return uuid("e12bb475-3f2b-51c9-83c6-a5661086b6c3");
	else if (T == "IAsyncOperation!(DataProtectionInfo)")
		return uuid("c8ef3f16-dd70-5e88-9323-85ddddcd2ca5");
	else if (T == "AsyncOperationCompletedHandler!(FileProtectionInfo)")
		return uuid("2918ffea-e091-53e2-bde5-617c9bb3d8fe");
	else if (T == "IAsyncOperation!(FileProtectionInfo)")
		return uuid("67e04591-2d11-5018-9ff0-0b85520b888b");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Security.EnterpriseData.FileProtectionStatus)")
		return uuid("e104f25b-b957-5ed4-b1c5-1993604cfeae");
	else if (T == "IAsyncOperation!(Windows.Security.EnterpriseData.FileProtectionStatus)")
		return uuid("033efe7c-709e-53a8-8e64-cdab6bd1ed59");
	else if (T == "AsyncOperationCompletedHandler!(ProtectedContainerExportResult)")
		return uuid("560c5521-5008-5272-a766-941f70718bc6");
	else if (T == "IAsyncOperation!(ProtectedContainerExportResult)")
		return uuid("c99f0b2e-67ad-518a-866f-e39b4567b110");
	else if (T == "AsyncOperationCompletedHandler!(ProtectedContainerImportResult)")
		return uuid("cfea00f8-d2ad-5ad2-a396-e4f71b9a7c3f");
	else if (T == "IAsyncOperation!(ProtectedContainerImportResult)")
		return uuid("384e9499-d491-5297-beba-b33a3d67f207");
	else if (T == "AsyncOperationCompletedHandler!(ProtectedFileCreateResult)")
		return uuid("6c44a868-7c80-5187-a08d-379be41909f6");
	else if (T == "IAsyncOperation!(ProtectedFileCreateResult)")
		return uuid("d7f98a9c-738e-50f6-93e3-2608baf54be9");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)")
		return uuid("2833ba54-a4e1-5c2d-8a7a-136e8510c78b");
	else if (T == "IAsyncOperation!(Windows.Security.EnterpriseData.ProtectionPolicyEvaluationResult)")
		return uuid("e8d81715-c56c-5a6b-b738-5df6c2775b7b");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(IStorageItem)")
		return uuid("05b487c2-3830-5d3c-98da-25fa11542dbd");
	else if (T == "IIterable!(IStorageItem)")
		return uuid("bb8b8418-65d1-544b-b083-6d172f568c73");
	else if (T == "IKeyValuePair!(HSTRING, TargetedContentValue)")
		return uuid("35cf9903-ade5-565d-a011-be3173d09215");
	else if (T == "IIterator!(TargetedContentAction)")
		return uuid("79656935-5813-5aa6-8e69-627a0d85088f");
	else if (T == "IIterable!(TargetedContentAction)")
		return uuid("cf05b497-3afd-5d00-859e-9fbd1a36d576");
	else if (T == "IIterator!(TargetedContentCollection)")
		return uuid("6093b8fd-6d5d-53cd-b497-7b4540f10857");
	else if (T == "IIterable!(TargetedContentCollection)")
		return uuid("2049f813-37ee-5158-9996-709859f0ce49");
	else if (T == "IIterator!(TargetedContentFile)")
		return uuid("6a957f20-ed25-5019-90e7-9890d4f912f2");
	else if (T == "IIterable!(TargetedContentFile)")
		return uuid("5f65d649-ccbd-5728-a85b-d3ff92fca962");
	else if (T == "IIterator!(TargetedContentImage)")
		return uuid("a807b298-9e2f-5673-bcf6-1e35feba0647");
	else if (T == "IIterable!(TargetedContentImage)")
		return uuid("efadb6bf-af18-5af9-a509-19881bc586f5");
	else if (T == "IIterator!(TargetedContentItem)")
		return uuid("50109d8e-f711-5076-8309-e4e230ef7e85");
	else if (T == "IIterable!(TargetedContentItem)")
		return uuid("03f38fb6-54e6-5bf1-913b-9510fec8be1f");
	else if (T == "IMapView!(HSTRING, TargetedContentValue)")
		return uuid("19a87e94-ab75-574f-a226-8726a0d8eb3e");
	else if (T == "IVectorView!(TargetedContentAction)")
		return uuid("4299bd84-e44e-5fcb-a465-e1bd434a317c");
	else if (T == "IVectorView!(TargetedContentCollection)")
		return uuid("cea4c859-8736-5c75-bb83-a686bf7f7c6f");
	else if (T == "IVectorView!(TargetedContentFile)")
		return uuid("ec0d80cb-9a87-5f0b-b6df-2c09b6310177");
	else if (T == "IVectorView!(TargetedContentImage)")
		return uuid("f55ac7c6-168d-5010-84cf-36bf451ede38");
	else if (T == "IVectorView!(TargetedContentItem)")
		return uuid("31e3ed33-8554-5496-86a4-d78392204c8f");
	else if (T == "AsyncOperationCompletedHandler!(TargetedContentContainer)")
		return uuid("8fc6bc2a-26ce-50b5-97bb-fcc80ca0871d");
	else if (T == "IAsyncOperation!(TargetedContentContainer)")
		return uuid("e757e0fc-0136-5f63-97b8-6a96b8d0601e");
	else if (T == "AsyncOperationCompletedHandler!(TargetedContentSubscription)")
		return uuid("e4188c71-5a8e-57ec-b0de-1d314fb3e2cf");
	else if (T == "IAsyncOperation!(TargetedContentSubscription)")
		return uuid("46f16f4b-8ec1-5c4f-b1f5-a7e7acd63366");
	else if (T == "TypedEventHandler!(TargetedContentSubscription, TargetedContentAvailabilityChangedEventArgs)")
		return uuid("99929904-138a-59ac-a11a-fe0042f0fd50");
	else if (T == "TypedEventHandler!(TargetedContentSubscription, TargetedContentChangedEventArgs)")
		return uuid("ef11d751-9d56-580d-8a9f-51ae7e8036e3");
	else if (T == "TypedEventHandler!(TargetedContentSubscription, TargetedContentStateChangedEventArgs)")
		return uuid("c4d5acbe-f65b-5fa4-9242-d2860de85d52");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(Uri)")
		return uuid("1c157d0f-5efe-5cec-bbd6-0c6ce9af07a5");
	else if (T == "IIterable!(Uri)")
		return uuid("b0d63b78-78ad-5e31-b6d8-e32a0e16c447");
	else if (T == "IVectorView!(Uri)")
		return uuid("4b8385bd-a2cd-5ff1-bf74-7ea580423e50");
	else if (T == "IIterator!(double)")
		return uuid("638a2cf4-f474-5318-9055-141cb909ac4b");
	else if (T == "IIterable!(double)")
		return uuid("c738964e-9c64-5bce-b5ce-61e9a282ec4a");
	else if (T == "IVectorView!(double)")
		return uuid("af7586a8-6b21-5f61-bff1-1b682293ad96");
	else if (T == "IIterator!(bool)")
		return uuid("740a0296-a535-572a-bf0b-17c18ff71fe6");
	else if (T == "IIterable!(bool)")
		return uuid("30160817-1d7d-54e9-99db-d7636266a476");
	else if (T == "IVectorView!(bool)")
		return uuid("243a09cb-6f40-56af-a442-fe81431fbef5");
	else if (T == "IIterator!(IRemoteSystemFilter)")
		return uuid("6a2c5aef-9f30-58ae-a6cb-9ac9c8092a41");
	else if (T == "IIterable!(IRemoteSystemFilter)")
		return uuid("13966c92-a8de-50c0-b16b-00c2c48f5f37");
	else if (T == "IIterator!(RemoteSystemSessionParticipant)")
		return uuid("05fec44b-3dd9-5cf1-a100-bedc9233292d");
	else if (T == "IIterable!(RemoteSystemSessionParticipant)")
		return uuid("00189d10-16ec-5d1a-8369-4870c69e52b3");
	else if (T == "AsyncOperationCompletedHandler!(RemoteSystem)")
		return uuid("3a0b522d-98d0-5d34-ace6-2c7346613f1d");
	else if (T == "IAsyncOperation!(RemoteSystem)")
		return uuid("0d39f546-0eca-5236-a5ca-7e3660658462");
	else if (T == "AsyncOperationCompletedHandler!(Windows.System.RemoteSystems.RemoteSystemAccessStatus)")
		return uuid("543a221d-ef39-57f5-9741-b052dbc29249");
	else if (T == "IAsyncOperation!(Windows.System.RemoteSystems.RemoteSystemAccessStatus)")
		return uuid("d76da678-dd76-5460-8745-915b4410c905");
	else if (T == "AsyncOperationCompletedHandler!(RemoteSystemSessionCreationResult)")
		return uuid("6e72c549-73aa-5168-8560-c7236493b504");
	else if (T == "IAsyncOperation!(RemoteSystemSessionCreationResult)")
		return uuid("90364bf5-d084-5f50-9729-82025326abef");
	else if (T == "AsyncOperationCompletedHandler!(RemoteSystemSessionJoinResult)")
		return uuid("379adf35-4cb4-522f-91be-913b5690568f");
	else if (T == "IAsyncOperation!(RemoteSystemSessionJoinResult)")
		return uuid("c58dbd1e-e300-55a8-ada5-e25aaaa86667");
	else if (T == "TypedEventHandler!(RemoteSystemSession, RemoteSystemSessionDisconnectedEventArgs)")
		return uuid("fba14773-5038-511a-95a3-4ba45349100a");
	else if (T == "TypedEventHandler!(RemoteSystemSessionController, RemoteSystemSessionJoinRequestedEventArgs)")
		return uuid("d8e04916-b452-5322-aec9-e3d4d581c772");
	else if (T == "TypedEventHandler!(RemoteSystemSessionInvitationListener, RemoteSystemSessionInvitationReceivedEventArgs)")
		return uuid("18a242bb-d338-56c4-9559-568d5c2c3e93");
	else if (T == "TypedEventHandler!(RemoteSystemSessionMessageChannel, RemoteSystemSessionValueSetReceivedEventArgs)")
		return uuid("c476232d-8c76-5ba6-99f5-14557484c20d");
	else if (T == "TypedEventHandler!(RemoteSystemSessionParticipantWatcher, IInspectable)")
		return uuid("d4cf5bda-cc7a-52ef-a256-c4b36163beec");
	else if (T == "TypedEventHandler!(RemoteSystemSessionParticipantWatcher, RemoteSystemSessionParticipantAddedEventArgs)")
		return uuid("7d42fff3-fd21-5e15-b21a-75e1bbcd13c7");
	else if (T == "TypedEventHandler!(RemoteSystemSessionParticipantWatcher, RemoteSystemSessionParticipantRemovedEventArgs)")
		return uuid("73d7e8b3-7d44-50c8-afad-450de59fd0ae");
	else if (T == "TypedEventHandler!(RemoteSystemSessionWatcher, RemoteSystemSessionAddedEventArgs)")
		return uuid("1b036c4f-6b8f-55d6-b6df-45e46a823b1d");
	else if (T == "TypedEventHandler!(RemoteSystemSessionWatcher, RemoteSystemSessionRemovedEventArgs)")
		return uuid("1cbc54f0-0c9d-59cc-8055-5e017a317812");
	else if (T == "TypedEventHandler!(RemoteSystemSessionWatcher, RemoteSystemSessionUpdatedEventArgs)")
		return uuid("040f48b7-0d41-5aa2-85e8-6311666f0324");
	else if (T == "TypedEventHandler!(RemoteSystemWatcher, RemoteSystemAddedEventArgs)")
		return uuid("a9b98f4a-b63d-5d07-92bb-e2acb39455d1");
	else if (T == "TypedEventHandler!(RemoteSystemWatcher, RemoteSystemRemovedEventArgs)")
		return uuid("c290fb5a-3ed0-5858-af19-f85553cb96b8");
	else if (T == "TypedEventHandler!(RemoteSystemWatcher, RemoteSystemUpdatedEventArgs)")
		return uuid("88f9d23f-8946-5a1e-8da1-82c66982a6d2");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IIterator!(HostName)")
		return uuid("557bf83c-a428-5dbd-a0fe-05f6ee543d45");
	else if (T == "IIterable!(HostName)")
		return uuid("9e5f3ed0-cf1c-5d38-832c-acea6164bf5c");
	else if (T == "IVectorView!(HostName)")
		return uuid("f4706ab1-55a3-5270-afb2-732988fe8227");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "AsyncOperationCompletedHandler!(PaymentTransaction)")
		return uuid("bd5b92e5-1086-5c3d-9de1-9982e776d193");
	else if (T == "IAsyncOperation!(PaymentTransaction)")
		return uuid("e09a3f7d-6ad0-58cf-ab4c-2e4c9c791873");
	else if (T == "AsyncOperationCompletedHandler!(PaymentTransactionAcceptResult)")
		return uuid("4538f88a-89af-50b9-8165-7e6269639884");
	else if (T == "IAsyncOperation!(PaymentTransactionAcceptResult)")
		return uuid("c645e8ef-0863-55b4-8aed-42bd152d8004");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "AsyncOperationCompletedHandler!(PaymentRequestChangedResult)")
		return uuid("bec8b726-9056-5e47-b22a-0da09aa84afe");
	else if (T == "IAsyncOperation!(PaymentRequestChangedResult)")
		return uuid("0cc32025-ac67-57e2-a0f6-3a8e116cef4c");
	else if (T == "IIterator!(PaymentDetailsModifier)")
		return uuid("fafb6774-b665-5b8b-b1ef-95038c3aabe1");
	else if (T == "IIterable!(PaymentDetailsModifier)")
		return uuid("585d2b3d-cb34-58c4-81f4-1ea157996def");
	else if (T == "IIterator!(PaymentItem)")
		return uuid("93c12cc3-6a0b-5f02-ac74-056007472731");
	else if (T == "IIterable!(PaymentItem)")
		return uuid("b61b704c-e5fa-5524-8b95-7d03f5d36ae9");
	else if (T == "IIterator!(PaymentMethodData)")
		return uuid("9666522e-e5ac-5374-a5d9-5cf57c4bf689");
	else if (T == "IIterable!(PaymentMethodData)")
		return uuid("8c9ed87e-4add-58a8-ad9a-9dfa48ca250a");
	else if (T == "IIterator!(PaymentShippingOption)")
		return uuid("49edc9f4-2ce6-534c-b529-5ceec705def5");
	else if (T == "IIterable!(PaymentShippingOption)")
		return uuid("de881c69-6642-54de-a8f7-d1a88b2404cf");
	else if (T == "IVectorView!(PaymentDetailsModifier)")
		return uuid("da7e871c-6e0c-5e32-be40-10715a9f75eb");
	else if (T == "IVectorView!(PaymentItem)")
		return uuid("6baf1241-1fa6-5c22-83ef-415e93cdf7b1");
	else if (T == "IVectorView!(PaymentMethodData)")
		return uuid("1011b9ba-6a05-5b16-82cf-0175085105e0");
	else if (T == "IVectorView!(PaymentShippingOption)")
		return uuid("8c8128eb-8c33-56dd-9648-39e8040312d4");
	else if (T == "AsyncOperationCompletedHandler!(PaymentRequestChangedResult)")
		return uuid("bec8b726-9056-5e47-b22a-0da09aa84afe");
	else if (T == "IAsyncOperation!(PaymentRequestChangedResult)")
		return uuid("0cc32025-ac67-57e2-a0f6-3a8e116cef4c");
	else if (T == "AsyncOperationCompletedHandler!(PaymentRequestSubmitResult)")
		return uuid("cbcd07a6-ae2a-5a70-bc0b-9120560825d1");
	else if (T == "IAsyncOperation!(PaymentRequestSubmitResult)")
		return uuid("cf290deb-5549-57c3-8abd-53b76c643cca");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IIterator!(IJsonValue)")
		return uuid("189eb512-5a20-5ec6-9866-60af96f0d23b");
	else if (T == "IIterable!(IJsonValue)")
		return uuid("cb0492b6-4113-55cf-b2c5-99eb428ba493");
	else if (T == "IKeyValuePair!(HSTRING, IJsonValue)")
		return uuid("4deecc89-b0b8-5ee8-a51d-1c25ad9a5b01");
	else if (T == "IMapView!(HSTRING, IJsonValue)")
		return uuid("eecd690c-1ff3-529f-923f-9b1c31fd3d0f");
	else if (T == "IMap!(HSTRING, IJsonValue)")
		return uuid("c9d9a725-786b-5113-b4b7-9b61764c220b");
	else if (T == "IVectorView!(IJsonValue)")
		return uuid("cffabb0f-6bc4-5ff6-9b9e-7a9df6c687c8");
	else if (T == "IVector!(IJsonValue)")
		return uuid("d44662bc-dce3-59a8-9272-4b210f33908b");
	else if (T == "AsyncOperationCompletedHandler!(PdfDocument)")
		return uuid("8d4950b3-629d-5d7d-84cc-04c0dcf7942b");
	else if (T == "IAsyncOperation!(PdfDocument)")
		return uuid("d6b166ec-099a-5ee2-ad2e-f4c88614aabb");
	else if (T == "IIterator!(AlternateWordForm)")
		return uuid("7f463f8a-e08f-516e-b4b8-81b5417bfb58");
	else if (T == "IIterable!(AlternateWordForm)")
		return uuid("ae838c29-60c1-5093-ae61-0ed22857db05");
	else if (T == "IIterator!(SelectableWordSegment)")
		return uuid("a5842459-147d-5a88-8f23-a3398afd8a85");
	else if (T == "IIterable!(SelectableWordSegment)")
		return uuid("784b0cec-1348-5334-91e5-2e013294e211");
	else if (T == "IIterator!(TextPhoneme)")
		return uuid("36426c36-b5c4-5d1b-a468-aff3b48b7c3a");
	else if (T == "IIterable!(TextPhoneme)")
		return uuid("2017f561-8162-55f8-b056-656636935815");
	else if (T == "IIterator!(Windows.Data.Text.TextSegment)")
		return uuid("645a39b4-f001-5272-9015-fb4a327179ae");
	else if (T == "IIterable!(Windows.Data.Text.TextSegment)")
		return uuid("5498f4f3-cee4-5b72-9729-815c4ad7b9dc");
	else if (T == "IIterator!(WordSegment)")
		return uuid("aeb846b3-664b-545e-ab93-f5fc66d24e32");
	else if (T == "IIterable!(WordSegment)")
		return uuid("d14dc94a-a311-5ddc-bf8b-d58795d87d6d");
	else if (T == "IVectorView!(Windows.Data.Text.TextSegment)")
		return uuid("2f245f9d-eb5f-5641-9dcc-6ab1946cc7e6");
	else if (T == "IVectorView!(AlternateWordForm)")
		return uuid("6b742ff2-746a-5545-a6ed-3bba453cf5d9");
	else if (T == "IVectorView!(SelectableWordSegment)")
		return uuid("33f90a72-86f4-5027-b50a-6939a1f9d560");
	else if (T == "IVectorView!(TextPhoneme)")
		return uuid("cfc6e66d-5e2a-582d-8b6d-fbf71cf3d0eb");
	else if (T == "IVectorView!(WordSegment)")
		return uuid("c706749a-e11d-5e07-8534-2bd23ec210f9");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "IIterator!(IXmlNode)")
		return uuid("3833a35e-2c61-56bd-b093-3694165f8898");
	else if (T == "IIterable!(IXmlNode)")
		return uuid("f1146ffc-8c92-56e8-93f1-711f86722633");
	else if (T == "IVectorView!(IXmlNode)")
		return uuid("139d959e-e7b5-5cb6-a596-4b544478da9b");
	else if (T == "AsyncOperationCompletedHandler!(XmlDocument)")
		return uuid("5eef7817-93dd-5c0b-9e5a-eb490408f3a9");
	else if (T == "IAsyncOperation!(XmlDocument)")
		return uuid("f858e239-1896-5982-8495-143168478eb8");
	else if (T == "IIterator!(AdcController)")
		return uuid("a10b62c1-a014-5335-8867-747fcab16005");
	else if (T == "IIterable!(AdcController)")
		return uuid("4e478aad-4861-5758-b64b-5b4f28d8f86e");
	else if (T == "IVectorView!(AdcController)")
		return uuid("27547dc1-376e-5ce4-a246-34f210c8443c");
	else if (T == "AsyncOperationCompletedHandler!(AdcController)")
		return uuid("baf66488-202f-5d51-b05e-18606c46b808");
	else if (T == "IAsyncOperation!(AdcController)")
		return uuid("69420262-35c9-583f-a40e-c2694562c9e2");
	else if (T == "IIterator!(IAdcControllerProvider)")
		return uuid("b43acf15-a24a-5b00-b710-1737ba550a18");
	else if (T == "IIterable!(IAdcControllerProvider)")
		return uuid("30047155-1f71-5223-8482-e5159d0137d0");
	else if (T == "IVectorView!(IAdcControllerProvider)")
		return uuid("7c4789c0-8445-5757-aab7-659cbf50aaa7");
	else if (T == "IIterator!(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism)")
		return uuid("0fbc36d2-f46e-5a4d-aa10-4c806b4945d6");
	else if (T == "IIterable!(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism)")
		return uuid("d307c7af-4106-5d1c-b06c-5eb593d9be34");
	else if (T == "IVectorView!(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism)")
		return uuid("eaf57f86-b059-5ac2-9c1f-d3c65eac67a3");
	else if (T == "IVector!(Windows.Devices.AllJoyn.AllJoynAuthenticationMechanism)")
		return uuid("19c16b93-f9ca-5c05-bf73-e74cd054c587");
	else if (T == "AsyncOperationCompletedHandler!(AllJoynAboutDataView)")
		return uuid("ba2da2f5-f9b0-5c66-8fc9-7d437a67f28a");
	else if (T == "IAsyncOperation!(AllJoynAboutDataView)")
		return uuid("3757414e-f54b-51c4-8f2f-e0477559b2ad");
	else if (T == "AsyncOperationCompletedHandler!(AllJoynServiceInfo)")
		return uuid("ffb22299-a9c9-5c2a-ace3-0cd0a6dd1039");
	else if (T == "IAsyncOperation!(AllJoynServiceInfo)")
		return uuid("b9ce48c1-16cc-5e46-91d5-e5cd06f8026e");
	else if (T == "AsyncOperationCompletedHandler!(AllJoynSession)")
		return uuid("52490f64-c98f-5019-8361-b2a3e1679f27");
	else if (T == "IAsyncOperation!(AllJoynSession)")
		return uuid("74ae55f8-3d63-5472-913d-74e9a1125dd3");
	else if (T == "TypedEventHandler!(AllJoynBusAttachment, AllJoynAcceptSessionJoinerEventArgs)")
		return uuid("dd224d96-f45c-5e3d-8860-8596d0e474f0");
	else if (T == "TypedEventHandler!(AllJoynBusAttachment, AllJoynAuthenticationCompleteEventArgs)")
		return uuid("e4fd18b4-4cde-508e-8084-63e7283262c5");
	else if (T == "TypedEventHandler!(AllJoynBusAttachment, AllJoynBusAttachmentStateChangedEventArgs)")
		return uuid("82a8561d-3693-5c90-8cf2-58de83d80243");
	else if (T == "TypedEventHandler!(AllJoynBusAttachment, AllJoynCredentialsRequestedEventArgs)")
		return uuid("ab2196e7-4b41-53bd-95b1-b80cad824795");
	else if (T == "TypedEventHandler!(AllJoynBusAttachment, AllJoynCredentialsVerificationRequestedEventArgs)")
		return uuid("7ef99c96-51b1-5670-a41f-ae404f2ff53f");
	else if (T == "TypedEventHandler!(AllJoynBusAttachment, AllJoynSessionJoinedEventArgs)")
		return uuid("56bb8d26-39b6-53fa-8013-3781aa27a0bc");
	else if (T == "TypedEventHandler!(AllJoynBusObject, AllJoynBusObjectStoppedEventArgs)")
		return uuid("9871592f-823d-5630-be72-ca8f17846b71");
	else if (T == "TypedEventHandler!(AllJoynSession, AllJoynSessionLostEventArgs)")
		return uuid("dffc2b25-5ae2-52f1-bbc4-363cefeda03f");
	else if (T == "TypedEventHandler!(AllJoynSession, AllJoynSessionMemberAddedEventArgs)")
		return uuid("330baa61-1c24-5faa-af3c-4d69ad2f1e31");
	else if (T == "TypedEventHandler!(AllJoynSession, AllJoynSessionMemberRemovedEventArgs)")
		return uuid("2969ed7c-db6c-58aa-9f6d-89e7fe089fc1");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IIterator!(Language)")
		return uuid("30e99ae6-f414-5243-8db2-aab38ea3f1f1");
	else if (T == "IIterable!(Language)")
		return uuid("48409a10-61b6-5db1-a69d-8abc46ac608a");
	else if (T == "IVectorView!(Language)")
		return uuid("144b0f3d-2d59-5dd2-b012-908ec3e06435");
	else if (T == "AsyncOperationCompletedHandler!(int)")
		return uuid("d60cae9d-88cb-59f1-8576-3fba44796be8");
	else if (T == "IAsyncOperation!(int)")
		return uuid("968b9665-06ed-5774-8f53-8edeabd5f7b5");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IIterator!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("8bcad2b7-0e3b-5eae-bf69-e1f6d9c888f8");
	else if (T == "IIterable!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("2628f58f-3f02-54f2-808f-e1117709d6d0");
	else if (T == "IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("cb383486-c2bc-5756-912d-6a708a07e5bd");
	else if (T == "IIterator!(Certificate)")
		return uuid("676fc159-f15c-58bd-91a7-28f7e795c756");
	else if (T == "IIterable!(Certificate)")
		return uuid("0c7d1423-e8fd-5a91-b55c-8bfbe7ac2d40");
	else if (T == "IVectorView!(Certificate)")
		return uuid("963f7013-77c2-51c5-8038-b5bcef633edb");
	else if (T == "IIterator!(BluetoothLEAdvertisementBytePattern)")
		return uuid("b33e103a-1a61-5107-8813-c0e905c05486");
	else if (T == "IIterable!(BluetoothLEAdvertisementBytePattern)")
		return uuid("1e3fadee-54ac-538b-8777-351afb78cb74");
	else if (T == "IIterator!(BluetoothLEAdvertisementDataSection)")
		return uuid("af5c0e81-788b-52d4-82a2-1ed28c66a05e");
	else if (T == "IIterable!(BluetoothLEAdvertisementDataSection)")
		return uuid("db98b5d1-897e-59cc-b86a-7b8855ac98af");
	else if (T == "IIterator!(BluetoothLEAdvertisementReceivedEventArgs)")
		return uuid("096edbb8-ecef-5724-be62-240dcff6aca9");
	else if (T == "IIterable!(BluetoothLEAdvertisementReceivedEventArgs)")
		return uuid("34f6412f-8314-5205-967c-db357c9a42a7");
	else if (T == "IIterator!(BluetoothLEManufacturerData)")
		return uuid("12f158dd-7016-5338-ac5c-7d5503d73274");
	else if (T == "IIterable!(BluetoothLEManufacturerData)")
		return uuid("834a4cac-bb8b-5f0f-9f28-4dbc98c17907");
	else if (T == "IVectorView!(BluetoothLEAdvertisementBytePattern)")
		return uuid("a7d9983a-a11f-572e-89fb-683ea429bcbc");
	else if (T == "IVectorView!(BluetoothLEAdvertisementDataSection)")
		return uuid("c4f2b8ea-11a8-5109-9013-4047e12c72e8");
	else if (T == "IVectorView!(BluetoothLEAdvertisementReceivedEventArgs)")
		return uuid("8aef9bca-fe7d-5966-9789-fede24cb41c4");
	else if (T == "IVectorView!(BluetoothLEManufacturerData)")
		return uuid("78ab070e-ad7e-5912-a4f1-7be33e4560af");
	else if (T == "IVector!(BluetoothLEAdvertisementBytePattern)")
		return uuid("8dd461b7-9775-5e82-a0a6-6627abd0d010");
	else if (T == "IVector!(BluetoothLEAdvertisementDataSection)")
		return uuid("b6f71ad2-e2cf-5d54-b6f1-90964ee5d4da");
	else if (T == "IVector!(BluetoothLEManufacturerData)")
		return uuid("52d75b45-1d24-5eeb-babb-65effae45e46");
	else if (T == "IReference!(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFlags)")
		return uuid("91c0ba96-9e69-5b82-bf1d-83ab2a509c53");
	else if (T == "TypedEventHandler!(BluetoothLEAdvertisementPublisher, BluetoothLEAdvertisementPublisherStatusChangedEventArgs)")
		return uuid("c2ffa4f1-5893-54a8-bd94-aa1198b05d07");
	else if (T == "TypedEventHandler!(BluetoothLEAdvertisementWatcher, BluetoothLEAdvertisementReceivedEventArgs)")
		return uuid("90eb4eca-d465-5ea0-a61c-033c8c5ecef2");
	else if (T == "TypedEventHandler!(BluetoothLEAdvertisementWatcher, BluetoothLEAdvertisementWatcherStoppedEventArgs)")
		return uuid("9936a4db-dc99-55c3-9e9b-bf4854bd9eab");
	else if (T == "IIterator!(GUID)")
		return uuid("d3d64048-82b3-53c7-9285-b0be18368482");
	else if (T == "IIterable!(GUID)")
		return uuid("f4ca3045-5dd7-54be-982e-d88d8ca0876e");
	else if (T == "IVectorView!(GUID)")
		return uuid("9520e64b-15b2-52a6-98ed-3191fa6cf68a");
	else if (T == "IVector!(GUID)")
		return uuid("482e676d-b913-5ec1-afa8-5f96922e94ae");
	else if (T == "IKeyValuePair!(HSTRING, GattServiceProviderConnection)")
		return uuid("c0246566-6d14-5ab2-8443-7439a1fc16e2");
	else if (T == "IMapView!(HSTRING, GattServiceProviderConnection)")
		return uuid("94eccb06-19ad-5e4f-953e-12c4aec054e9");
	else if (T == "IIterator!(BluetoothLEAdvertisementReceivedEventArgs)")
		return uuid("096edbb8-ecef-5724-be62-240dcff6aca9");
	else if (T == "IIterable!(BluetoothLEAdvertisementReceivedEventArgs)")
		return uuid("34f6412f-8314-5205-967c-db357c9a42a7");
	else if (T == "IVectorView!(BluetoothLEAdvertisementReceivedEventArgs)")
		return uuid("8aef9bca-fe7d-5966-9789-fede24cb41c4");
	else if (T == "IIterator!(GattValueChangedEventArgs)")
		return uuid("cd20a796-aa22-521d-8e0f-fc6d4a18e287");
	else if (T == "IIterable!(GattValueChangedEventArgs)")
		return uuid("526a63df-8827-51b9-9e2c-9d65021a79d7");
	else if (T == "IVectorView!(GattValueChangedEventArgs)")
		return uuid("3f96e85f-ca51-5303-bd1b-acec7773baf6");
	else if (T == "IIterator!(GattCharacteristic)")
		return uuid("1ffc4777-4346-5564-b7a5-59eae385f4f6");
	else if (T == "IIterable!(GattCharacteristic)")
		return uuid("e3c56728-7f2d-5a0d-ad38-030d39c60f9f");
	else if (T == "IIterator!(GattClientNotificationResult)")
		return uuid("fca87386-a3ab-55e2-a83e-21f5bfab4049");
	else if (T == "IIterable!(GattClientNotificationResult)")
		return uuid("d3f4b8ad-251f-5bbb-ada2-ea47434e74d6");
	else if (T == "IIterator!(GattDescriptor)")
		return uuid("3d8df436-cefb-5ffb-858c-4882ce1da079");
	else if (T == "IIterable!(GattDescriptor)")
		return uuid("30e2ffc4-3aa3-5219-9a18-ca2d0b6562e8");
	else if (T == "IIterator!(GattDeviceService)")
		return uuid("8beb3a26-73ca-50f3-a1d3-418c60a9f3b2");
	else if (T == "IIterable!(GattDeviceService)")
		return uuid("4b192e23-4893-56b2-8eff-439c3ab7fd1f");
	else if (T == "IIterator!(GattLocalCharacteristic)")
		return uuid("edd74875-8e85-546f-83b8-1e00aa896419");
	else if (T == "IIterable!(GattLocalCharacteristic)")
		return uuid("7082ed53-37f6-5262-8d09-939bea9edbd5");
	else if (T == "IIterator!(GattLocalDescriptor)")
		return uuid("08023045-5f5c-59cc-abd3-bbcfe6fa7030");
	else if (T == "IIterable!(GattLocalDescriptor)")
		return uuid("9016e9a2-c9f7-5d09-b0ae-552fa67796ae");
	else if (T == "IIterator!(GattPresentationFormat)")
		return uuid("20006c53-5dda-5319-91b1-c6f28fe65933");
	else if (T == "IIterable!(GattPresentationFormat)")
		return uuid("d75fcef1-c10e-5b7b-b130-f5a00314d35d");
	else if (T == "IIterator!(GattSubscribedClient)")
		return uuid("df039115-a5ff-5d5a-b07b-20b42e078765");
	else if (T == "IIterable!(GattSubscribedClient)")
		return uuid("b19864e4-f2b1-50de-8c11-fff9eca934e9");
	else if (T == "IIterator!(GattValueChangedEventArgs)")
		return uuid("cd20a796-aa22-521d-8e0f-fc6d4a18e287");
	else if (T == "IIterable!(GattValueChangedEventArgs)")
		return uuid("526a63df-8827-51b9-9e2c-9d65021a79d7");
	else if (T == "IVectorView!(GattCharacteristic)")
		return uuid("cb3ab3ae-b561-504f-a808-599deceb2df4");
	else if (T == "IVectorView!(GattClientNotificationResult)")
		return uuid("c886eb62-ec71-586b-a158-66dc62a378b7");
	else if (T == "IVectorView!(GattDescriptor)")
		return uuid("19605ea8-73d6-5760-849b-fe5f8a2bd05c");
	else if (T == "IVectorView!(GattDeviceService)")
		return uuid("7c8e7fdd-a1a1-528a-81d1-296769227a08");
	else if (T == "IVectorView!(GattLocalCharacteristic)")
		return uuid("e4865eba-6de3-5a99-9a75-7efd8e3cb096");
	else if (T == "IVectorView!(GattLocalDescriptor)")
		return uuid("7f4688cc-0bbc-5070-8974-19fcb1acbf6c");
	else if (T == "IVectorView!(GattPresentationFormat)")
		return uuid("0ea2c154-22b8-5c8e-925d-d47e1aad31bb");
	else if (T == "IVectorView!(GattSubscribedClient)")
		return uuid("63391d79-4ba7-5f45-9681-3a683089353b");
	else if (T == "IVectorView!(GattValueChangedEventArgs)")
		return uuid("3f96e85f-ca51-5303-bd1b-acec7773baf6");
	else if (T == "IVector!(GattPresentationFormat)")
		return uuid("cba635ef-1c70-5412-8ede-7316276b9ee4");
	else if (T == "AsyncOperationCompletedHandler!(GattCharacteristicsResult)")
		return uuid("d6a15475-1e72-5c56-98e8-88f4bc3e0313");
	else if (T == "IAsyncOperation!(GattCharacteristicsResult)")
		return uuid("0972194a-ac1c-5536-9886-27e58a18f273");
	else if (T == "AsyncOperationCompletedHandler!(GattClientNotificationResult)")
		return uuid("9783fef1-1b62-5418-9898-933138c2bd14");
	else if (T == "IAsyncOperation!(GattClientNotificationResult)")
		return uuid("de27c5cf-6227-5829-b997-88e575ad0680");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus)")
		return uuid("2154117a-978d-59db-99cf-6b690cb3389b");
	else if (T == "IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCommunicationStatus)")
		return uuid("3ff69516-1bfb-52e9-9ee6-e5cdb78e1683");
	else if (T == "AsyncOperationCompletedHandler!(GattDescriptorsResult)")
		return uuid("df09ae77-f606-53e4-8ba6-799f5992c85e");
	else if (T == "IAsyncOperation!(GattDescriptorsResult)")
		return uuid("ceaf40c7-be37-52a5-9a1b-63398513e597");
	else if (T == "AsyncOperationCompletedHandler!(GattDeviceService)")
		return uuid("2dbcf64a-262b-5708-adb1-c3b8750bd680");
	else if (T == "IAsyncOperation!(GattDeviceService)")
		return uuid("e5e90272-408f-5055-9bd3-88408982d301");
	else if (T == "AsyncOperationCompletedHandler!(GattDeviceServicesResult)")
		return uuid("74ab0892-a631-5d6c-b1b4-bd2e1a741a9b");
	else if (T == "IAsyncOperation!(GattDeviceServicesResult)")
		return uuid("e7c667f6-e874-500f-86ff-760ca6f07a58");
	else if (T == "AsyncOperationCompletedHandler!(GattLocalCharacteristicResult)")
		return uuid("85c70edd-d815-5284-8c84-58a8f769e388");
	else if (T == "IAsyncOperation!(GattLocalCharacteristicResult)")
		return uuid("1f97164e-88d5-567d-90f9-75d4f6455274");
	else if (T == "AsyncOperationCompletedHandler!(GattLocalDescriptorResult)")
		return uuid("f2927eec-47d9-5338-9ba5-5be8461ad410");
	else if (T == "IAsyncOperation!(GattLocalDescriptorResult)")
		return uuid("3ef6d808-754f-5040-97ac-0703309c574f");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattOpenStatus)")
		return uuid("548b3cd0-dce8-5d3d-98ab-6948dd7f90b8");
	else if (T == "IAsyncOperation!(Windows.Devices.Bluetooth.GenericAttributeProfile.GattOpenStatus)")
		return uuid("983201ac-8777-53e8-86e0-63fa684be1bd");
	else if (T == "AsyncOperationCompletedHandler!(GattReadClientCharacteristicConfigurationDescriptorResult)")
		return uuid("98f9a6f3-4d29-5351-8b12-751dc977a331");
	else if (T == "IAsyncOperation!(GattReadClientCharacteristicConfigurationDescriptorResult)")
		return uuid("cf4444cc-4077-5719-8366-46e86b983685");
	else if (T == "AsyncOperationCompletedHandler!(GattReadRequest)")
		return uuid("31823848-3ab2-547a-8303-964dcc377c9c");
	else if (T == "IAsyncOperation!(GattReadRequest)")
		return uuid("4732cec2-d943-5ceb-8281-8d54a21b9a45");
	else if (T == "AsyncOperationCompletedHandler!(GattReadResult)")
		return uuid("d8992aa0-eac2-55b7-92c5-894886beb0ca");
	else if (T == "IAsyncOperation!(GattReadResult)")
		return uuid("d40432a8-1e14-51d0-b49b-ae2ce1aa05e5");
	else if (T == "AsyncOperationCompletedHandler!(GattServiceProviderResult)")
		return uuid("f992789a-e981-597a-9197-1fbd986f74c7");
	else if (T == "IAsyncOperation!(GattServiceProviderResult)")
		return uuid("21781028-f5a2-5d99-a5ab-bce6554fbc02");
	else if (T == "AsyncOperationCompletedHandler!(GattSession)")
		return uuid("cae01a28-fd33-542e-a5ad-3d878f73db90");
	else if (T == "IAsyncOperation!(GattSession)")
		return uuid("6d40b467-46b9-516f-8208-db23b786ea48");
	else if (T == "AsyncOperationCompletedHandler!(GattWriteRequest)")
		return uuid("25b737f6-30ff-558e-ba16-b564c45fdc06");
	else if (T == "IAsyncOperation!(GattWriteRequest)")
		return uuid("fb8b3c18-2f60-5b43-b773-146045816e03");
	else if (T == "AsyncOperationCompletedHandler!(GattWriteResult)")
		return uuid("6fa8c9c3-ff7e-5fa1-a2f3-2714cf04b899");
	else if (T == "IAsyncOperation!(GattWriteResult)")
		return uuid("e83b4534-bd14-5a9b-a53b-17cc02a2a8a8");
	else if (T == "TypedEventHandler!(GattCharacteristic, GattValueChangedEventArgs)")
		return uuid("c1f420f6-6292-5760-a2c9-9ddf98683cfc");
	else if (T == "TypedEventHandler!(GattLocalCharacteristic, IInspectable)")
		return uuid("8087acd6-aed7-53eb-9b23-4808bb910c17");
	else if (T == "TypedEventHandler!(GattLocalCharacteristic, GattReadRequestedEventArgs)")
		return uuid("218a3e4a-aa9d-500e-bca7-047751bb10a3");
	else if (T == "TypedEventHandler!(GattLocalCharacteristic, GattWriteRequestedEventArgs)")
		return uuid("ed61a2fb-7d2a-5ba3-8ebf-8ad878e539a9");
	else if (T == "TypedEventHandler!(GattLocalDescriptor, GattReadRequestedEventArgs)")
		return uuid("252dca5c-86e7-5be1-aeed-f78c6ed466ab");
	else if (T == "TypedEventHandler!(GattLocalDescriptor, GattWriteRequestedEventArgs)")
		return uuid("6cf5b169-3731-591b-ae7c-d939faaa8a71");
	else if (T == "TypedEventHandler!(GattReadRequest, GattRequestStateChangedEventArgs)")
		return uuid("0246e199-5199-5bdb-919d-8544ce30fd71");
	else if (T == "TypedEventHandler!(GattServiceProvider, GattServiceProviderAdvertisementStatusChangedEventArgs)")
		return uuid("56ce41b0-2570-50d3-a1b1-7e4167e1fde7");
	else if (T == "TypedEventHandler!(GattSession, IInspectable)")
		return uuid("6c7ec2ec-9f00-5ea0-9a08-60e5070bcf03");
	else if (T == "TypedEventHandler!(GattSession, GattSessionStatusChangedEventArgs)")
		return uuid("0e1210f2-7b6f-543e-8adb-a61d34ab535d");
	else if (T == "TypedEventHandler!(GattSubscribedClient, IInspectable)")
		return uuid("9c17a110-806d-594b-b33d-ed280bbf27e5");
	else if (T == "TypedEventHandler!(GattWriteRequest, GattRequestStateChangedEventArgs)")
		return uuid("7744c6bc-cdcd-5283-9e4f-2e21b49a2ef2");
	else if (T == "IReference!(byte)")
		return uuid("e5198cc8-2873-55f5-b0a1-84ff9e4aad62");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.Enumeration.DeviceAccessStatus)")
		return uuid("ee154d83-805b-53e8-8469-90715036d013");
	else if (T == "IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus)")
		return uuid("c00bc2f2-a7f8-5f3f-80d1-2808ef6bca10");
	else if (T == "AsyncOperationCompletedHandler!(BluetoothAdapter)")
		return uuid("10a10a88-90e0-511a-9a08-d75feb52a19f");
	else if (T == "IAsyncOperation!(BluetoothAdapter)")
		return uuid("46fce70c-6c07-5a3a-b775-26f99402553f");
	else if (T == "AsyncOperationCompletedHandler!(BluetoothDevice)")
		return uuid("b2e8cdd1-66aa-5892-85a3-8f0b165e43fc");
	else if (T == "IAsyncOperation!(BluetoothDevice)")
		return uuid("b58d8d19-44bd-5ac0-a0d6-1b50800f3181");
	else if (T == "AsyncOperationCompletedHandler!(BluetoothLEDevice)")
		return uuid("9156b79f-c54a-5277-8f8b-d2cc43c7e004");
	else if (T == "IAsyncOperation!(BluetoothLEDevice)")
		return uuid("375f9d67-74a2-5f91-a11d-169093718d41");
	else if (T == "TypedEventHandler!(BluetoothDevice, IInspectable)")
		return uuid("db56ce1c-5e9f-5138-9227-b1a66d60bc1b");
	else if (T == "TypedEventHandler!(BluetoothLEDevice, IInspectable)")
		return uuid("a90661e2-372e-5d1e-bbbb-b8a2ce0e7c4d");
	else if (T == "AsyncOperationCompletedHandler!(Radio)")
		return uuid("8a5c7e3a-80e2-585b-8630-7a8e777f0354");
	else if (T == "IAsyncOperation!(Radio)")
		return uuid("eac62c40-8dbc-5854-8ba0-b7b9940e7389");
	else if (T == "IIterator!(IBuffer)")
		return uuid("afee38e0-f882-5f10-9655-1fc98cc8cce5");
	else if (T == "IIterable!(IBuffer)")
		return uuid("902972bf-a984-5443-b1c5-2f04a99e1fca");
	else if (T == "IVectorView!(IBuffer)")
		return uuid("fd944562-11d6-5eab-bd72-701993b68fac");
	else if (T == "IIterator!(RfcommDeviceService)")
		return uuid("64ab0132-c64c-5a87-8113-613ef356924c");
	else if (T == "IIterable!(RfcommDeviceService)")
		return uuid("3378e9a6-f6e2-50ea-bfee-b8109631feca");
	else if (T == "IVectorView!(RfcommDeviceService)")
		return uuid("97df6b82-d15c-597e-ba69-492207a1c108");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.Enumeration.DeviceAccessStatus)")
		return uuid("ee154d83-805b-53e8-8469-90715036d013");
	else if (T == "IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus)")
		return uuid("c00bc2f2-a7f8-5f3f-80d1-2808ef6bca10");
	else if (T == "AsyncOperationCompletedHandler!(RfcommDeviceServicesResult)")
		return uuid("522c25d1-866b-5de4-bd8e-1feb5ae60d47");
	else if (T == "IAsyncOperation!(RfcommDeviceServicesResult)")
		return uuid("b7f2f74d-bf9c-5721-bf6e-03f1b4409588");
	else if (T == "IIterator!(GattDeviceService)")
		return uuid("8beb3a26-73ca-50f3-a1d3-418c60a9f3b2");
	else if (T == "IIterable!(GattDeviceService)")
		return uuid("4b192e23-4893-56b2-8eff-439c3ab7fd1f");
	else if (T == "IVectorView!(GattDeviceService)")
		return uuid("7c8e7fdd-a1a1-528a-81d1-296769227a08");
	else if (T == "AsyncOperationCompletedHandler!(GattDeviceServicesResult)")
		return uuid("74ab0892-a631-5d6c-b1b4-bd2e1a741a9b");
	else if (T == "IAsyncOperation!(GattDeviceServicesResult)")
		return uuid("e7c667f6-e874-500f-86ff-760ca6f07a58");
	else if (T == "IReference!(short)")
		return uuid("6ec9e41b-6709-5647-9918-a1270110fc4e");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IIterator!(RfcommDeviceService)")
		return uuid("64ab0132-c64c-5a87-8113-613ef356924c");
	else if (T == "IIterable!(RfcommDeviceService)")
		return uuid("3378e9a6-f6e2-50ea-bfee-b8109631feca");
	else if (T == "IVectorView!(RfcommDeviceService)")
		return uuid("97df6b82-d15c-597e-ba69-492207a1c108");
	else if (T == "AsyncOperationCompletedHandler!(RfcommDeviceService)")
		return uuid("5c772518-442f-58ed-80cb-538d34b88295");
	else if (T == "IAsyncOperation!(RfcommDeviceService)")
		return uuid("0df56bd7-c8f6-5c32-9644-aa0bcf28d78c");
	else if (T == "AsyncOperationCompletedHandler!(RfcommDeviceServicesResult)")
		return uuid("522c25d1-866b-5de4-bd8e-1feb5ae60d47");
	else if (T == "IAsyncOperation!(RfcommDeviceServicesResult)")
		return uuid("b7f2f74d-bf9c-5721-bf6e-03f1b4409588");
	else if (T == "AsyncOperationCompletedHandler!(RfcommServiceProvider)")
		return uuid("446a7f50-8f2e-51f0-aebb-1bc3d192905f");
	else if (T == "IAsyncOperation!(RfcommServiceProvider)")
		return uuid("fed44828-e232-554d-85d1-2f04d1322e69");
	else if (T == "IKeyValuePair!(UINT32, IBuffer)")
		return uuid("82a3a3b7-e04a-5395-8487-7f94f1508ce7");
	else if (T == "IMapView!(UINT32, IBuffer)")
		return uuid("57dc41e6-8b4d-5910-9703-d7c668436852");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.Enumeration.DeviceAccessStatus)")
		return uuid("ee154d83-805b-53e8-8469-90715036d013");
	else if (T == "IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus)")
		return uuid("c00bc2f2-a7f8-5f3f-80d1-2808ef6bca10");
	else if (T == "IMap!(UINT32, IBuffer)")
		return uuid("5d2591df-48c5-5734-9ef1-bd639b032007");
	else if (T == "AsyncOperationCompletedHandler!(CustomDevice)")
		return uuid("1fdd39b0-e0e5-5c59-b27d-a549b1075ce9");
	else if (T == "IAsyncOperation!(CustomDevice)")
		return uuid("2a6344aa-0568-548e-a1a2-b6bb451d228c");
	else if (T == "AsyncOperationCompletedHandler!(UINT32)")
		return uuid("9343b6e7-e3d2-5e4a-ab2d-2bce4919a6a4");
	else if (T == "IAsyncOperation!(UINT32)")
		return uuid("ef60385f-be78-584b-aaef-7829ada2b0de");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(Windows.Devices.Enumeration.DeviceClass)")
		return uuid("c3807283-1416-593c-955c-0b4a286ff7bb");
	else if (T == "IIterable!(Windows.Devices.Enumeration.DeviceClass)")
		return uuid("47d4be05-58f1-522e-81c6-975eb4131bb9");
	else if (T == "IIterator!(DeviceInformation)")
		return uuid("6f85d843-e8ab-5b46-85d7-327c58d18712");
	else if (T == "IIterable!(DeviceInformation)")
		return uuid("dd9f8a5d-ec98-5f4b-a3ea-9c8b5ad53c4b");
	else if (T == "IIterator!(DeviceWatcherEvent)")
		return uuid("74f7d6cc-9c20-5bb9-bace-b2ffa38687f9");
	else if (T == "IIterable!(DeviceWatcherEvent)")
		return uuid("b48fd051-eafa-523f-a66e-9d4151c5d522");
	else if (T == "IIterator!(Windows.Devices.Enumeration.DeviceWatcherEventKind)")
		return uuid("cb5ca9db-ccd6-5103-a93d-c925c908838d");
	else if (T == "IIterable!(Windows.Devices.Enumeration.DeviceWatcherEventKind)")
		return uuid("f04365ab-d3f3-5f85-a7da-dc19cff73d86");
	else if (T == "IVectorView!(Windows.Devices.Enumeration.DeviceClass)")
		return uuid("01a80a97-bd87-5c8a-97fd-d449c98bdac6");
	else if (T == "IVectorView!(DeviceInformation)")
		return uuid("e170688f-3495-5bf6-aab5-9cac17e0f10f");
	else if (T == "IVectorView!(DeviceWatcherEvent)")
		return uuid("8f994d37-8fab-51c6-a1e0-c93f68a20ef0");
	else if (T == "IVector!(Windows.Devices.Enumeration.DeviceClass)")
		return uuid("ee662d37-b0eb-5729-9832-156fd2889d48");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.Enumeration.DeviceAccessStatus)")
		return uuid("ee154d83-805b-53e8-8469-90715036d013");
	else if (T == "IAsyncOperation!(Windows.Devices.Enumeration.DeviceAccessStatus)")
		return uuid("c00bc2f2-a7f8-5f3f-80d1-2808ef6bca10");
	else if (T == "AsyncOperationCompletedHandler!(DeviceInformation)")
		return uuid("bb483df2-7bb6-5923-a28d-8342ec30046b");
	else if (T == "IAsyncOperation!(DeviceInformation)")
		return uuid("07faa053-eb2f-5cba-b25b-d9d57be6715f");
	else if (T == "AsyncOperationCompletedHandler!(DevicePairingResult)")
		return uuid("7ee0247f-5f57-5cb2-b40e-18b5a211d6c3");
	else if (T == "IAsyncOperation!(DevicePairingResult)")
		return uuid("1002db74-8948-591e-815d-e40b667599a3");
	else if (T == "AsyncOperationCompletedHandler!(DeviceThumbnail)")
		return uuid("86d455b2-d795-554c-9c31-bf6539349c19");
	else if (T == "IAsyncOperation!(DeviceThumbnail)")
		return uuid("bac083a3-3a19-5072-9d90-133323a049ba");
	else if (T == "AsyncOperationCompletedHandler!(DeviceUnpairingResult)")
		return uuid("9bbe6eb9-db2d-5160-a20c-f0c265f20d8e");
	else if (T == "IAsyncOperation!(DeviceUnpairingResult)")
		return uuid("2bb4df3d-bd7e-5fe0-9020-56dc0d30b935");
	else if (T == "TypedEventHandler!(DeviceAccessInformation, DeviceAccessChangedEventArgs)")
		return uuid("4c71d028-b793-5bce-ae59-fa77f45a40d8");
	else if (T == "TypedEventHandler!(DeviceInformationCustomPairing, DevicePairingRequestedEventArgs)")
		return uuid("fa65231f-4178-5de1-b2cc-03e22d7702b4");
	else if (T == "TypedEventHandler!(DevicePicker, IInspectable)")
		return uuid("62c6d98c-57ee-5bb8-a41c-958d20c3f3e8");
	else if (T == "TypedEventHandler!(DevicePicker, DeviceDisconnectButtonClickedEventArgs)")
		return uuid("35dd0319-5723-506c-8896-1a28b82be798");
	else if (T == "TypedEventHandler!(DevicePicker, DeviceSelectedEventArgs)")
		return uuid("47e48c88-1c56-5b58-96a2-8e813d25077a");
	else if (T == "TypedEventHandler!(DeviceWatcher, IInspectable)")
		return uuid("9234630f-1ff4-54f6-9e3f-ac20369b7725");
	else if (T == "TypedEventHandler!(DeviceWatcher, DeviceInformation)")
		return uuid("03c5a07b-990c-5d09-b0b8-5734eaa38222");
	else if (T == "TypedEventHandler!(DeviceWatcher, DeviceInformationUpdate)")
		return uuid("906f1254-79ad-54fc-93c4-cdb99b437899");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(PnpObject)")
		return uuid("6bb6d2f1-b5fb-57f0-8251-f20cde5a6871");
	else if (T == "IIterable!(PnpObject)")
		return uuid("30b50092-36ee-53ff-9450-029004436c60");
	else if (T == "IVectorView!(PnpObject)")
		return uuid("cce5a798-d269-5fce-99ce-ef0ae3cd0569");
	else if (T == "AsyncOperationCompletedHandler!(PnpObject)")
		return uuid("9d615463-6879-521f-8e97-e66d3ddbc95e");
	else if (T == "IAsyncOperation!(PnpObject)")
		return uuid("22b0fb93-30e6-501a-bd3b-9fa3063e9c16");
	else if (T == "TypedEventHandler!(PnpObjectWatcher, IInspectable)")
		return uuid("2ee2b4c9-b696-5ecc-b29b-f1e0ef5fe1f7");
	else if (T == "TypedEventHandler!(PnpObjectWatcher, PnpObject)")
		return uuid("d578eed2-58e5-5825-8af2-12f89387b656");
	else if (T == "TypedEventHandler!(PnpObjectWatcher, PnpObjectUpdate)")
		return uuid("af8f929d-8058-5c38-a3d8-30aa7a08b588");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IIterator!(Geofence)")
		return uuid("e7a9e144-202d-5708-a9bd-e3dc0e14df46");
	else if (T == "IIterable!(Geofence)")
		return uuid("ce697733-595c-51c0-ad5f-324af5cdf2dd");
	else if (T == "IIterator!(GeofenceStateChangeReport)")
		return uuid("eaff2de4-6650-544a-b7ac-6d5b819d4698");
	else if (T == "IIterable!(GeofenceStateChangeReport)")
		return uuid("76f50b4e-7aa7-565b-aada-b0c1cc144ed0");
	else if (T == "IVectorView!(Geofence)")
		return uuid("d8039aca-1a45-5d13-8cfd-4900c22b8ef1");
	else if (T == "IVectorView!(GeofenceStateChangeReport)")
		return uuid("ea91593d-ecf4-5041-86f2-837a282c4d94");
	else if (T == "IVector!(Geofence)")
		return uuid("096dc936-5f66-5c6e-95ce-ef5541fbf4c4");
	else if (T == "TypedEventHandler!(GeofenceMonitor, IInspectable)")
		return uuid("ecc5af2c-e47a-59ce-86be-9c3066fe26f7");
	else if (T == "IIterator!(Windows.Devices.Geolocation.BasicGeoposition)")
		return uuid("1b4e26a1-88e4-5872-bb2d-4f31700828b2");
	else if (T == "IIterable!(Windows.Devices.Geolocation.BasicGeoposition)")
		return uuid("922399a8-0093-5009-a8d2-f87b0eae75f5");
	else if (T == "IIterator!(Geopath)")
		return uuid("cf1d4402-4754-57e7-aae0-69ca42cbd8f2");
	else if (T == "IIterable!(Geopath)")
		return uuid("246fcfbd-a881-5e8e-9908-c1b9ebdfec78");
	else if (T == "IIterator!(Geopoint)")
		return uuid("88225b39-8be9-5c03-9714-8f1642d8a43f");
	else if (T == "IIterable!(Geopoint)")
		return uuid("e7617fc9-2cc7-5bd1-bc5a-f47260834ed8");
	else if (T == "IIterator!(Geoposition)")
		return uuid("a99b4206-263e-5308-82f2-31315c65135c");
	else if (T == "IIterable!(Geoposition)")
		return uuid("135ed72d-75b1-5881-be41-6ffeaa202044");
	else if (T == "IVectorView!(Windows.Devices.Geolocation.BasicGeoposition)")
		return uuid("177f5719-e234-59db-99ba-f7fdddf31430");
	else if (T == "IVectorView!(Geopath)")
		return uuid("a83321cb-1b54-5f68-9234-4a824d33e371");
	else if (T == "IVectorView!(Geoposition)")
		return uuid("d572ccf3-0c60-553f-a624-c71648af8e7a");
	else if (T == "IVector!(Geopath)")
		return uuid("7ca97e6d-6893-5672-a0c7-625c5090381e");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.Geolocation.GeolocationAccessStatus)")
		return uuid("f3524c93-e5c7-5b88-bedb-d3e637cff271");
	else if (T == "IAsyncOperation!(Windows.Devices.Geolocation.GeolocationAccessStatus)")
		return uuid("de2b24d0-b726-57b1-a7c5-e5a13932b7de");
	else if (T == "AsyncOperationCompletedHandler!(Geopoint)")
		return uuid("4b5f2f60-19b1-5566-9df6-92a42235cbf9");
	else if (T == "IAsyncOperation!(Geopoint)")
		return uuid("3723e070-c2ae-538f-846e-0f9d280310c0");
	else if (T == "AsyncOperationCompletedHandler!(Geoposition)")
		return uuid("7668a704-244e-5e12-8dcb-92a3299eba26");
	else if (T == "IAsyncOperation!(Geoposition)")
		return uuid("ee73ecf0-099d-57e5-8407-5b32e5af1cc4");
	else if (T == "IReference!(Windows.Devices.Geolocation.BasicGeoposition)")
		return uuid("e4d5dda6-f57c-57cc-b67f-2939a901dabe");
	else if (T == "TypedEventHandler!(Geolocator, PositionChangedEventArgs)")
		return uuid("df3c6164-4e7b-5e8e-9a7e-13da059dec1e");
	else if (T == "TypedEventHandler!(Geolocator, StatusChangedEventArgs)")
		return uuid("97fcf582-de6b-5cd3-9690-e2ecbb66da4d");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IIterator!(Windows.Devices.Gpio.GpioChangeRecord)")
		return uuid("a4c620b9-cb89-5a25-bf16-5f412c1a3388");
	else if (T == "IIterable!(Windows.Devices.Gpio.GpioChangeRecord)")
		return uuid("b4afbf4f-620e-5725-878a-78c6ed10374e");
	else if (T == "IIterator!(GpioController)")
		return uuid("67944db0-6c56-5a2f-9e7b-63ca1aa8c411");
	else if (T == "IIterable!(GpioController)")
		return uuid("415c3794-b2b6-5f5c-9a05-ae9268514726");
	else if (T == "IVectorView!(Windows.Devices.Gpio.GpioChangeRecord)")
		return uuid("d30ab625-1264-539e-acef-306dd214dc3b");
	else if (T == "IVectorView!(GpioController)")
		return uuid("7fc72a82-2c57-5c01-a652-a8bdac685d30");
	else if (T == "IVector!(Windows.Devices.Gpio.GpioChangeRecord)")
		return uuid("c8c443c2-f7d4-5386-ad15-31838882bd9e");
	else if (T == "AsyncOperationCompletedHandler!(GpioController)")
		return uuid("370167c0-0f7b-5e77-9bae-d35089a3db75");
	else if (T == "IAsyncOperation!(GpioController)")
		return uuid("ed045917-96c7-5735-b4be-d79619d4835e");
	else if (T == "TypedEventHandler!(GpioPin, GpioPinValueChangedEventArgs)")
		return uuid("44ba689b-7d42-5374-add9-ab41e877a34b");
	else if (T == "IIterator!(IGpioControllerProvider)")
		return uuid("6ac0edb9-e3c9-5840-8aa8-1bc45366f6ca");
	else if (T == "IIterable!(IGpioControllerProvider)")
		return uuid("09212bd4-851b-52bd-b82c-421bf3d6f511");
	else if (T == "IVectorView!(IGpioControllerProvider)")
		return uuid("f429355f-7a16-5dcf-a575-db7d2a20eced");
	else if (T == "TypedEventHandler!(IGpioPinProvider, GpioPinProviderValueChangedEventArgs)")
		return uuid("af259d89-9e01-529e-a879-c6763142d160");
	else if (T == "IIterator!(SimpleHapticsControllerFeedback)")
		return uuid("b7d297d6-9666-5c9e-9dcc-5c382eae6750");
	else if (T == "IIterable!(SimpleHapticsControllerFeedback)")
		return uuid("8894a0df-33b0-57b0-aa1a-9255eee72dd5");
	else if (T == "IIterator!(VibrationDevice)")
		return uuid("24e9b323-eef1-533f-ad38-de8fc8ca5692");
	else if (T == "IIterable!(VibrationDevice)")
		return uuid("1a40c994-8810-5688-9362-c4bb51018552");
	else if (T == "IVectorView!(SimpleHapticsControllerFeedback)")
		return uuid("51f54b04-bb9d-5c7b-8f5f-67f8caf4b003");
	else if (T == "IVectorView!(VibrationDevice)")
		return uuid("485aa8a6-2d29-5d34-b8d9-b0c961c17f7f");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.Haptics.VibrationAccessStatus)")
		return uuid("a38b59db-4ef1-5bd2-89ef-f1d9f1faca96");
	else if (T == "IAsyncOperation!(Windows.Devices.Haptics.VibrationAccessStatus)")
		return uuid("076b2611-5614-55a5-9c58-f9d17a8f0b79");
	else if (T == "AsyncOperationCompletedHandler!(VibrationDevice)")
		return uuid("4e22a135-f59a-546d-9fcf-82deb833d968");
	else if (T == "IAsyncOperation!(VibrationDevice)")
		return uuid("44193494-e331-50ca-bb61-6a71bd9b01c4");
	else if (T == "IIterator!(HidBooleanControl)")
		return uuid("5cde3c23-d054-53d6-abf1-41e73379b472");
	else if (T == "IIterable!(HidBooleanControl)")
		return uuid("1111e585-5ab0-5d2b-8aed-b6d6186d1c3f");
	else if (T == "IIterator!(HidBooleanControlDescription)")
		return uuid("203203b0-b7f4-542d-b0d0-9caa1fb55d7f");
	else if (T == "IIterable!(HidBooleanControlDescription)")
		return uuid("d0ff0fed-a156-58bf-9411-5777df9d57bf");
	else if (T == "IIterator!(HidCollection)")
		return uuid("cefcee70-c7ff-57c1-a675-a0df8976a988");
	else if (T == "IIterable!(HidCollection)")
		return uuid("bbeada0f-708f-5b5e-a017-5c64ffb96b69");
	else if (T == "IIterator!(HidNumericControlDescription)")
		return uuid("52b9c36e-7d95-5d1c-acab-23c19ea76f01");
	else if (T == "IIterable!(HidNumericControlDescription)")
		return uuid("868f060d-e0d4-571b-b2f7-431d6984a513");
	else if (T == "IVectorView!(HidBooleanControl)")
		return uuid("0e417dac-591a-5de0-afd6-0b2c04c304e7");
	else if (T == "IVectorView!(HidBooleanControlDescription)")
		return uuid("aab72786-ec34-536f-a7c5-27394753df2c");
	else if (T == "IVectorView!(HidCollection)")
		return uuid("96f1faac-348f-5b8f-a71d-2d650e0b11f2");
	else if (T == "IVectorView!(HidNumericControlDescription)")
		return uuid("e02ca66c-610a-51b4-aef9-3707b697b985");
	else if (T == "AsyncOperationCompletedHandler!(HidDevice)")
		return uuid("b0e8e149-0cb6-55a7-bcc1-d996324d65c4");
	else if (T == "IAsyncOperation!(HidDevice)")
		return uuid("a76a4fbf-5177-5256-84a8-b31a8dcf1048");
	else if (T == "AsyncOperationCompletedHandler!(HidFeatureReport)")
		return uuid("db643555-3d16-57fe-b7ef-2bdbd719fdbf");
	else if (T == "IAsyncOperation!(HidFeatureReport)")
		return uuid("d72fb6f9-42f6-5f45-bfe3-29af247c2e85");
	else if (T == "AsyncOperationCompletedHandler!(HidInputReport)")
		return uuid("01c83770-03ab-5576-98b4-8d75ce1a9885");
	else if (T == "IAsyncOperation!(HidInputReport)")
		return uuid("b3e28917-cd48-57b3-a0b1-321432e85bd6");
	else if (T == "TypedEventHandler!(HidDevice, HidInputReportReceivedEventArgs)")
		return uuid("31e757c8-8f6a-540b-938b-aba79b6f03ec");
	else if (T == "AsyncOperationCompletedHandler!(UINT32)")
		return uuid("9343b6e7-e3d2-5e4a-ab2d-2bce4919a6a4");
	else if (T == "IAsyncOperation!(UINT32)")
		return uuid("ef60385f-be78-584b-aaef-7829ada2b0de");
	else if (T == "IIterator!(I2cController)")
		return uuid("8f6822fc-e4ea-5b35-939a-27f3b3d550d2");
	else if (T == "IIterable!(I2cController)")
		return uuid("a5ee8233-2429-5b26-9a02-993e4e7edfa9");
	else if (T == "IVectorView!(I2cController)")
		return uuid("c5dd481d-a441-5a8c-865f-08fa31490de5");
	else if (T == "AsyncOperationCompletedHandler!(I2cController)")
		return uuid("6ff64b72-a5aa-5986-b563-27612afb373c");
	else if (T == "IAsyncOperation!(I2cController)")
		return uuid("a4fb1dd4-80c9-5a61-ae8d-c8a7afc03275");
	else if (T == "AsyncOperationCompletedHandler!(I2cDevice)")
		return uuid("2df5bb6a-5e73-5ae3-a0b2-22e1c9d8ef4d");
	else if (T == "IAsyncOperation!(I2cDevice)")
		return uuid("1e8a7cd8-e41b-5a41-82b1-80055012ae00");
	else if (T == "IIterator!(II2cControllerProvider)")
		return uuid("f6232961-c660-50a1-82e8-12892fcd91f7");
	else if (T == "IIterable!(II2cControllerProvider)")
		return uuid("11341a6c-3a02-5f73-9db8-c3ec5823e35d");
	else if (T == "IVectorView!(II2cControllerProvider)")
		return uuid("511f8a39-98ca-550d-af25-1df2c1193c01");
	else if (T == "IIterator!(PointerDevice)")
		return uuid("de94641c-7960-5fcd-abe8-d6ba609ef7d3");
	else if (T == "IIterable!(PointerDevice)")
		return uuid("ad26662c-845b-5c6d-aeaa-406f48c21ae9");
	else if (T == "IIterator!(Windows.Devices.Input.PointerDeviceUsage)")
		return uuid("9ab2160d-11ef-5eca-8dd9-3e13aa4e5f99");
	else if (T == "IIterable!(Windows.Devices.Input.PointerDeviceUsage)")
		return uuid("592d6618-eaab-5a79-a47a-c7fc0b749a4e");
	else if (T == "IVectorView!(PointerDevice)")
		return uuid("cf5674f1-9808-5a2b-80b8-5684ed0ea816");
	else if (T == "IVectorView!(Windows.Devices.Input.PointerDeviceUsage)")
		return uuid("8e5a2c7e-3830-50d5-92ba-3163c89cbbd0");
	else if (T == "TypedEventHandler!(MouseDevice, MouseEventArgs)")
		return uuid("5d72e594-28e4-5895-a34b-ea910f70fdbb");
	else if (T == "AsyncOperationCompletedHandler!(Lamp)")
		return uuid("191a8c6e-60dd-5a21-a53c-bf3f940a1dde");
	else if (T == "IAsyncOperation!(Lamp)")
		return uuid("52a69dfd-f0d6-5931-b8e1-f38066d71bf2");
	else if (T == "TypedEventHandler!(Lamp, LampAvailabilityChangedEventArgs)")
		return uuid("556a02d9-7685-576f-89ca-b62dc481d29d");
	else if (T == "AsyncOperationCompletedHandler!(IMidiOutPort)")
		return uuid("eed37805-2a49-59b4-b4d4-1188c6819122");
	else if (T == "IAsyncOperation!(IMidiOutPort)")
		return uuid("32699a4d-1cc0-5a1c-9da6-875197875086");
	else if (T == "AsyncOperationCompletedHandler!(MidiInPort)")
		return uuid("6c090fb2-8099-558f-8a92-9a8ea806e6fb");
	else if (T == "IAsyncOperation!(MidiInPort)")
		return uuid("cc664f0e-edb1-55c8-9ef7-ec9007e4561c");
	else if (T == "AsyncOperationCompletedHandler!(MidiSynthesizer)")
		return uuid("5d716335-d087-516f-ad0a-63f61cbcf342");
	else if (T == "IAsyncOperation!(MidiSynthesizer)")
		return uuid("9388b978-13f1-5e37-8133-94430d90dd50");
	else if (T == "TypedEventHandler!(MidiInPort, MidiMessageReceivedEventArgs)")
		return uuid("50017240-cc39-5775-8a6b-f6f22386bfca");
	else if (T == "IIterator!(PerceptionColorFrameSource)")
		return uuid("24089f00-ba6d-50d4-ac46-f288755e4181");
	else if (T == "IIterable!(PerceptionColorFrameSource)")
		return uuid("db18069e-7b5a-54c3-a627-d56f9517fdf5");
	else if (T == "IIterator!(PerceptionDepthFrameSource)")
		return uuid("20cff8c2-7844-54e5-ae4f-57e7768f9b69");
	else if (T == "IIterable!(PerceptionDepthFrameSource)")
		return uuid("8a07e1e8-5a02-585b-a26e-ad79beaa94cf");
	else if (T == "IIterator!(PerceptionInfraredFrameSource)")
		return uuid("b22b294f-a4d2-5726-a7fc-5e331432d9b4");
	else if (T == "IIterable!(PerceptionInfraredFrameSource)")
		return uuid("9309d0db-338d-5adf-8b3e-509bfdfccef3");
	else if (T == "IIterator!(PerceptionVideoProfile)")
		return uuid("38ce8062-7079-5d7b-841f-9aa4580fd5f1");
	else if (T == "IIterable!(PerceptionVideoProfile)")
		return uuid("f6aea351-eb9b-564d-b10a-06673094acc8");
	else if (T == "IVectorView!(PerceptionColorFrameSource)")
		return uuid("cbf2f698-31a0-53c7-927b-8e1675f743bc");
	else if (T == "IVectorView!(PerceptionDepthFrameSource)")
		return uuid("574d3642-9f78-5125-851f-8b67e0313e2f");
	else if (T == "IVectorView!(PerceptionInfraredFrameSource)")
		return uuid("f272ae7a-c5c4-5712-8552-01deb8b70e07");
	else if (T == "IVectorView!(PerceptionVideoProfile)")
		return uuid("8dcb30e8-4ec1-51b7-9997-10f325f03d47");
	else if (T == "AsyncOperationCompletedHandler!(PerceptionColorFrameSource)")
		return uuid("3b56acc2-e275-54fb-be08-9fdc8f1a1e10");
	else if (T == "IAsyncOperation!(PerceptionColorFrameSource)")
		return uuid("9647fec8-2c56-5348-86c8-a9c3a97fb944");
	else if (T == "AsyncOperationCompletedHandler!(PerceptionDepthCorrelatedCameraIntrinsics)")
		return uuid("f396602a-3d8d-5fd5-99e3-1d3630be5938");
	else if (T == "IAsyncOperation!(PerceptionDepthCorrelatedCameraIntrinsics)")
		return uuid("702b0f49-a742-5c3a-abd6-77f9999b8a09");
	else if (T == "AsyncOperationCompletedHandler!(PerceptionDepthCorrelatedCoordinateMapper)")
		return uuid("48deeda0-684d-51e6-b07c-d234d1006bfc");
	else if (T == "IAsyncOperation!(PerceptionDepthCorrelatedCoordinateMapper)")
		return uuid("f04b9d99-c0d5-5b48-9ae5-9802093cb45e");
	else if (T == "AsyncOperationCompletedHandler!(PerceptionDepthFrameSource)")
		return uuid("b48cb886-3476-58d9-b76d-fda6b3e81f54");
	else if (T == "IAsyncOperation!(PerceptionDepthFrameSource)")
		return uuid("4382b038-d4b1-540b-859a-7016626bb99d");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.Perception.PerceptionFrameSourceAccessStatus)")
		return uuid("62744ea4-3447-5722-ab5e-02567b4fceeb");
	else if (T == "IAsyncOperation!(Windows.Devices.Perception.PerceptionFrameSourceAccessStatus)")
		return uuid("2c2f22a8-f383-5802-ba2c-0cbbcd989c9a");
	else if (T == "AsyncOperationCompletedHandler!(PerceptionFrameSourcePropertyChangeResult)")
		return uuid("3a06099c-dba6-58a5-8464-e2326896841a");
	else if (T == "IAsyncOperation!(PerceptionFrameSourcePropertyChangeResult)")
		return uuid("4a7bcb69-2b09-55d1-af68-b5aa5c2c6471");
	else if (T == "AsyncOperationCompletedHandler!(PerceptionInfraredFrameSource)")
		return uuid("a8d4cd8e-b210-54f7-ae2b-7770e19b3e36");
	else if (T == "IAsyncOperation!(PerceptionInfraredFrameSource)")
		return uuid("55122e42-cc65-5ccd-8f6c-84ced09db24e");
	else if (T == "TypedEventHandler!(PerceptionColorFrameReader, PerceptionColorFrameArrivedEventArgs)")
		return uuid("a4a50ea5-778d-5056-a1cf-546a1be2c010");
	else if (T == "TypedEventHandler!(PerceptionColorFrameSource, IInspectable)")
		return uuid("023444d9-7b47-5497-9569-4399faf96717");
	else if (T == "TypedEventHandler!(PerceptionColorFrameSource, PerceptionFrameSourcePropertiesChangedEventArgs)")
		return uuid("b2c3a488-7ed9-5110-804a-9792ef7f26be");
	else if (T == "TypedEventHandler!(PerceptionColorFrameSourceWatcher, IInspectable)")
		return uuid("b3f5bf64-7fc0-5d8c-978c-a38d5b18a51d");
	else if (T == "TypedEventHandler!(PerceptionColorFrameSourceWatcher, PerceptionColorFrameSourceAddedEventArgs)")
		return uuid("7202e817-22b8-5e7b-86b5-c4a90ccc23aa");
	else if (T == "TypedEventHandler!(PerceptionColorFrameSourceWatcher, PerceptionColorFrameSourceRemovedEventArgs)")
		return uuid("c7131ddd-ff22-5fb7-ada0-961e3b28917b");
	else if (T == "TypedEventHandler!(PerceptionControlSession, IInspectable)")
		return uuid("abc21152-2495-5e8c-aed3-7dc55309ac08");
	else if (T == "TypedEventHandler!(PerceptionDepthFrameReader, PerceptionDepthFrameArrivedEventArgs)")
		return uuid("4d529b7e-eea0-511b-8285-47e8c85d0295");
	else if (T == "TypedEventHandler!(PerceptionDepthFrameSource, IInspectable)")
		return uuid("135ba76a-ab44-5f69-b208-e732cce9403b");
	else if (T == "TypedEventHandler!(PerceptionDepthFrameSource, PerceptionFrameSourcePropertiesChangedEventArgs)")
		return uuid("188fdef2-d829-548b-a89d-38a34c5cb641");
	else if (T == "TypedEventHandler!(PerceptionDepthFrameSourceWatcher, IInspectable)")
		return uuid("c5efa976-d948-50c7-8555-664190f9a968");
	else if (T == "TypedEventHandler!(PerceptionDepthFrameSourceWatcher, PerceptionDepthFrameSourceAddedEventArgs)")
		return uuid("a3c1e25f-3574-5a27-a791-16e1bcc424f4");
	else if (T == "TypedEventHandler!(PerceptionDepthFrameSourceWatcher, PerceptionDepthFrameSourceRemovedEventArgs)")
		return uuid("5cf5faf7-0785-5589-a621-089d900412c8");
	else if (T == "TypedEventHandler!(PerceptionInfraredFrameReader, PerceptionInfraredFrameArrivedEventArgs)")
		return uuid("687fef67-8871-56fe-8e7e-1d2929cc6f42");
	else if (T == "TypedEventHandler!(PerceptionInfraredFrameSource, IInspectable)")
		return uuid("31edabbd-d123-5e88-89d8-c80ee8f0f2ca");
	else if (T == "TypedEventHandler!(PerceptionInfraredFrameSource, PerceptionFrameSourcePropertiesChangedEventArgs)")
		return uuid("b6c1b828-a157-54ed-9c18-6919b9f91be9");
	else if (T == "TypedEventHandler!(PerceptionInfraredFrameSourceWatcher, IInspectable)")
		return uuid("1555a628-3dff-5fd0-b10a-ca6adb2440c6");
	else if (T == "TypedEventHandler!(PerceptionInfraredFrameSourceWatcher, PerceptionInfraredFrameSourceAddedEventArgs)")
		return uuid("a8180cd1-c25b-5c7f-94dd-198423bb56d5");
	else if (T == "TypedEventHandler!(PerceptionInfraredFrameSourceWatcher, PerceptionInfraredFrameSourceRemovedEventArgs)")
		return uuid("2ca3a9b7-3348-5953-8d0d-ef8d78640b23");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IIterator!(PerceptionCorrelation)")
		return uuid("c4db1093-d705-5503-8bce-68535cd42ffa");
	else if (T == "IIterable!(PerceptionCorrelation)")
		return uuid("ca6bf87e-1745-5cd0-aee2-59736f5a206d");
	else if (T == "IVectorView!(PerceptionCorrelation)")
		return uuid("244cad66-afbe-5394-b7b7-43a61fcbfc6d");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IIterator!(Windows.Devices.PointOfService.PosPrinterRotation)")
		return uuid("f687ef7c-b11e-56c3-9158-e6ba15bd521b");
	else if (T == "IIterable!(Windows.Devices.PointOfService.PosPrinterRotation)")
		return uuid("1b1e4d8d-15f5-5802-9b23-8b75ce2a58c5");
	else if (T == "IVectorView!(Windows.Devices.PointOfService.PosPrinterRotation)")
		return uuid("6f694309-1082-5d84-a5ea-2faed6b6590e");
	else if (T == "EventHandler!(ClaimedBarcodeScanner)")
		return uuid("c0acd2ae-5b55-588d-811b-be33a4fdda57");
	else if (T == "EventHandler!(ClaimedMagneticStripeReader)")
		return uuid("8006bf5d-0895-5b8c-808a-6bb8f26794fa");
	else if (T == "AsyncOperationCompletedHandler!(BarcodeScanner)")
		return uuid("8d8abf39-99dd-50a4-aa7c-2f7301b5ca9c");
	else if (T == "IAsyncOperation!(BarcodeScanner)")
		return uuid("616494dd-30a2-523f-b1a2-9a1174de3b17");
	else if (T == "AsyncOperationCompletedHandler!(BarcodeSymbologyAttributes)")
		return uuid("f8fc5a52-2f45-5e46-a82e-3da009573b5c");
	else if (T == "IAsyncOperation!(BarcodeSymbologyAttributes)")
		return uuid("461550ca-7bb3-5ade-a642-61b8fef2e35c");
	else if (T == "AsyncOperationCompletedHandler!(CashDrawer)")
		return uuid("57836710-f186-5636-891d-f8c5398ea6df");
	else if (T == "IAsyncOperation!(CashDrawer)")
		return uuid("45007467-92f2-5bff-b191-aa5000fedd9e");
	else if (T == "AsyncOperationCompletedHandler!(ClaimedBarcodeScanner)")
		return uuid("ff72ba2d-f3c4-5abe-bbce-53150449b637");
	else if (T == "IAsyncOperation!(ClaimedBarcodeScanner)")
		return uuid("c9704809-a0e2-5e1d-87cf-75a1d49d7bdb");
	else if (T == "AsyncOperationCompletedHandler!(ClaimedCashDrawer)")
		return uuid("e68c3736-fde7-5cfb-b22f-92119723e729");
	else if (T == "IAsyncOperation!(ClaimedCashDrawer)")
		return uuid("9230e7aa-20a0-5752-9c20-4bf44934a87e");
	else if (T == "AsyncOperationCompletedHandler!(ClaimedLineDisplay)")
		return uuid("4e1a79f1-dff2-5b18-bebe-2aca010bbfcc");
	else if (T == "IAsyncOperation!(ClaimedLineDisplay)")
		return uuid("4bd0a904-1aaa-545a-8cbc-1d45c3e80e5e");
	else if (T == "AsyncOperationCompletedHandler!(ClaimedMagneticStripeReader)")
		return uuid("946c2d64-22d4-552d-abfb-9eb341bd67f3");
	else if (T == "IAsyncOperation!(ClaimedMagneticStripeReader)")
		return uuid("41630bd4-f45a-590d-8a4e-f70c9e49ad01");
	else if (T == "AsyncOperationCompletedHandler!(ClaimedPosPrinter)")
		return uuid("01eb0dc3-3c30-5eea-9fce-efb398e0be34");
	else if (T == "IAsyncOperation!(ClaimedPosPrinter)")
		return uuid("b4476f95-355a-503d-b844-1756c8cfda98");
	else if (T == "AsyncOperationCompletedHandler!(LineDisplay)")
		return uuid("b5c4d476-4f46-53c4-8a45-89dbe6d6f286");
	else if (T == "IAsyncOperation!(LineDisplay)")
		return uuid("40ffdae9-e7c1-5c44-91b4-bd84ebf8539b");
	else if (T == "AsyncOperationCompletedHandler!(MagneticStripeReader)")
		return uuid("32c55f7b-8ee3-555d-998b-78c98aa9627b");
	else if (T == "IAsyncOperation!(MagneticStripeReader)")
		return uuid("93726e09-817c-5f33-bee4-090de7074f19");
	else if (T == "AsyncOperationCompletedHandler!(PosPrinter)")
		return uuid("5e8dbbc8-8b60-5881-8b6e-f699b4949dba");
	else if (T == "IAsyncOperation!(PosPrinter)")
		return uuid("024f77ce-51c3-5afc-9f30-24b3c0f3b25a");
	else if (T == "TypedEventHandler!(BarcodeScanner, BarcodeScannerStatusUpdatedEventArgs)")
		return uuid("cfc8a053-f611-521a-8ab0-a460e1f7164d");
	else if (T == "TypedEventHandler!(CashDrawer, CashDrawerStatusUpdatedEventArgs)")
		return uuid("64662ef4-cb0e-5c6f-a820-7d0a769554c9");
	else if (T == "TypedEventHandler!(CashDrawerCloseAlarm, IInspectable)")
		return uuid("c54fbda4-5e0b-54c3-94f2-83351e41c46f");
	else if (T == "TypedEventHandler!(CashDrawerEventSource, CashDrawerClosedEventArgs)")
		return uuid("81495aa4-4476-577f-bf88-7fe8a1286444");
	else if (T == "TypedEventHandler!(CashDrawerEventSource, CashDrawerOpenedEventArgs)")
		return uuid("27648799-e7d5-5ce3-97ce-2f4110dd3298");
	else if (T == "TypedEventHandler!(ClaimedBarcodeScanner, BarcodeScannerDataReceivedEventArgs)")
		return uuid("4f64e49a-bd8c-549d-970c-a5a250bd27ca");
	else if (T == "TypedEventHandler!(ClaimedBarcodeScanner, BarcodeScannerErrorOccurredEventArgs)")
		return uuid("ba42ff49-de12-5406-979e-06c45ca2d5a4");
	else if (T == "TypedEventHandler!(ClaimedBarcodeScanner, BarcodeScannerImagePreviewReceivedEventArgs)")
		return uuid("fba116af-2a39-516f-a579-cc3eaf36a34b");
	else if (T == "TypedEventHandler!(ClaimedCashDrawer, IInspectable)")
		return uuid("db886581-2462-5c81-880c-06112ca70012");
	else if (T == "TypedEventHandler!(ClaimedLineDisplay, IInspectable)")
		return uuid("c997782b-46e9-5d92-ac84-ee9d7d073ab5");
	else if (T == "TypedEventHandler!(ClaimedMagneticStripeReader, MagneticStripeReaderAamvaCardDataReceivedEventArgs)")
		return uuid("29e08f92-c3ab-57ea-aaba-789f792d7a46");
	else if (T == "TypedEventHandler!(ClaimedMagneticStripeReader, MagneticStripeReaderBankCardDataReceivedEventArgs)")
		return uuid("6a41d015-245e-51ba-bd6c-44775d70bfa2");
	else if (T == "TypedEventHandler!(ClaimedMagneticStripeReader, MagneticStripeReaderErrorOccurredEventArgs)")
		return uuid("1464a1e6-9d92-547e-b4ac-f255ac85f950");
	else if (T == "TypedEventHandler!(ClaimedMagneticStripeReader, MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs)")
		return uuid("959124ba-ee44-560c-8183-61c6a2308d8f");
	else if (T == "TypedEventHandler!(ClaimedPosPrinter, PosPrinterReleaseDeviceRequestedEventArgs)")
		return uuid("31424f6f-cfeb-5031-8a95-bea59b09e584");
	else if (T == "TypedEventHandler!(MagneticStripeReader, MagneticStripeReaderStatusUpdatedEventArgs)")
		return uuid("722d8bfa-e10e-548d-af29-28dd906f6fc9");
	else if (T == "TypedEventHandler!(PosPrinter, PosPrinterStatusUpdatedEventArgs)")
		return uuid("20b0c66a-5f41-5a32-b45a-344f12e70a34");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "IIterator!(UINT32)")
		return uuid("f06a2739-9443-5ef0-b284-dc5aff3e7d10");
	else if (T == "IIterable!(UINT32)")
		return uuid("421d4b91-b13b-5f37-ae54-b5249bd80539");
	else if (T == "IVectorView!(UINT32)")
		return uuid("e5ce1a07-8d33-5007-ba64-7d2508ccf85c");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "AsyncOperationCompletedHandler!(IBuffer)")
		return uuid("51c3d2fd-b8a1-5620-b746-7ee6d533aca3");
	else if (T == "IAsyncOperation!(IBuffer)")
		return uuid("3bee8834-b9a7-5a80-a746-5ef097227878");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "AsyncOperationCompletedHandler!(Battery)")
		return uuid("97f82115-3822-507b-82e6-2777b336e98e");
	else if (T == "IAsyncOperation!(Battery)")
		return uuid("daa3d556-1529-56d2-a5f8-bfb6c22a3dfe");
	else if (T == "TypedEventHandler!(Battery, IInspectable)")
		return uuid("4d4aa646-767f-5645-af5c-546464d3ec09");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "TypedEventHandler!(Print3DWorkflow, Print3DWorkflowPrintRequestedEventArgs)")
		return uuid("5f4c6603-5512-59aa-8d96-b1389d8b5796");
	else if (T == "TypedEventHandler!(Print3DWorkflow, Print3DWorkflowPrinterChangedEventArgs)")
		return uuid("b4b5ddc2-1a74-5905-9fc5-ddaae9a3ab93");
	else if (T == "TypedEventHandler!(PrintTaskConfiguration, PrintTaskConfigurationSaveRequestedEventArgs)")
		return uuid("0363f57a-b7a2-5e20-a156-253423e7ee40");
	else if (T == "AsyncOperationCompletedHandler!(Print3DDevice)")
		return uuid("8d4b123f-4343-5195-bbc9-b99e956e057f");
	else if (T == "IAsyncOperation!(Print3DDevice)")
		return uuid("7cfc4a8f-5eb7-5af7-bc9f-78a7e407cd2e");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStreamWithContentType)")
		return uuid("3dddecf4-1d39-58e8-83b1-dbed541c7f35");
	else if (T == "IAsyncOperation!(IRandomAccessStreamWithContentType)")
		return uuid("c4a57c5e-32b0-55b3-ad13-ce1c23041ed6");
	else if (T == "IIterator!(PwmController)")
		return uuid("599330bd-b0ca-533e-938f-5dd4242bf513");
	else if (T == "IIterable!(PwmController)")
		return uuid("1403a6ab-73cb-5805-9bbc-a0dd39d476b0");
	else if (T == "IVectorView!(PwmController)")
		return uuid("07cb8bac-3bac-5ea0-919a-9eaf620270ae");
	else if (T == "AsyncOperationCompletedHandler!(PwmController)")
		return uuid("5fc68e9f-ffff-5d53-ba21-9c33ef56b240");
	else if (T == "IAsyncOperation!(PwmController)")
		return uuid("0a288d41-1f20-5d16-85dd-52855b11569a");
	else if (T == "IIterator!(IPwmControllerProvider)")
		return uuid("90389702-f036-56e1-a94f-6d99d52b9578");
	else if (T == "IIterable!(IPwmControllerProvider)")
		return uuid("4936ed59-b494-5128-bc7e-03e630346475");
	else if (T == "IVectorView!(IPwmControllerProvider)")
		return uuid("1a166093-1a7a-5e12-9d38-f892fec3ec66");
	else if (T == "IIterator!(Radio)")
		return uuid("cf37ede7-eaec-5b8f-ad31-4d51abd9db05");
	else if (T == "IIterable!(Radio)")
		return uuid("e82500af-1f53-504e-b8be-dac4fbb69084");
	else if (T == "IVectorView!(Radio)")
		return uuid("65066c36-090b-5466-b8e5-e7565dc34175");
	else if (T == "AsyncOperationCompletedHandler!(Radio)")
		return uuid("8a5c7e3a-80e2-585b-8630-7a8e777f0354");
	else if (T == "IAsyncOperation!(Radio)")
		return uuid("eac62c40-8dbc-5854-8ba0-b7b9940e7389");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.Radios.RadioAccessStatus)")
		return uuid("bd248e73-f05f-574c-ae3d-9b95c4bf282a");
	else if (T == "IAsyncOperation!(Windows.Devices.Radios.RadioAccessStatus)")
		return uuid("21fb30ef-072f-502c-9898-d0c3b2cd9ac5");
	else if (T == "TypedEventHandler!(Radio, IInspectable)")
		return uuid("fc6aa329-b586-5ebb-9e85-3f6b84ebdf18");
	else if (T == "AsyncOperationProgressHandler!(ImageScannerScanResult, UINT32)")
		return uuid("d1662baa-4f20-5d18-97f1-a01a6d0dd980");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(ImageScannerScanResult, UINT32)")
		return uuid("bd8bdbd8-459a-52dc-b101-75b398a61aef");
	else if (T == "IAsyncOperationWithProgress!(ImageScannerScanResult, UINT32)")
		return uuid("6e6e228a-f618-5d33-8523-02d16672665b");
	else if (T == "AsyncOperationCompletedHandler!(ImageScanner)")
		return uuid("b35ad6b4-0da0-5241-87ff-eef3a1883243");
	else if (T == "IAsyncOperation!(ImageScanner)")
		return uuid("75d78736-6c52-551e-ab5f-50674f323431");
	else if (T == "AsyncOperationCompletedHandler!(ImageScannerPreviewResult)")
		return uuid("c054a410-ac3c-5353-b1ee-e85e78faf3f1");
	else if (T == "IAsyncOperation!(ImageScannerPreviewResult)")
		return uuid("2f74576f-0498-5348-bc3b-a70d1a771718");
	else if (T == "IIterator!(StorageFile)")
		return uuid("43e29f53-0298-55aa-a6c8-4edd323d9598");
	else if (T == "IIterable!(StorageFile)")
		return uuid("9ac00304-83ea-5688-87b6-ae38aab65d0b");
	else if (T == "IVectorView!(StorageFile)")
		return uuid("80646519-5e2a-595d-a8cd-2a24b4067f1b");
	else if (T == "AsyncOperationCompletedHandler!(CustomSensor)")
		return uuid("808b62d7-6e02-5680-a59e-118a98a4e70f");
	else if (T == "IAsyncOperation!(CustomSensor)")
		return uuid("7fbfbe55-9674-54e3-a269-9caa820ed23c");
	else if (T == "TypedEventHandler!(CustomSensor, CustomSensorReadingChangedEventArgs)")
		return uuid("aa9460cb-f08c-5963-b232-cc4075e984e7");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IIterator!(ActivitySensorReading)")
		return uuid("d2dab535-0c94-547e-afe3-5527bcbeb9cc");
	else if (T == "IIterable!(ActivitySensorReading)")
		return uuid("9a34ce03-8c6d-5994-907f-d5c2d19148cb");
	else if (T == "IIterator!(ActivitySensorReadingChangeReport)")
		return uuid("9c07034e-8333-59d5-8d60-0e3f0438ac12");
	else if (T == "IIterable!(ActivitySensorReadingChangeReport)")
		return uuid("551a4962-9e96-5e6b-8b8a-65ee3d0046f3");
	else if (T == "IIterator!(Windows.Devices.Sensors.ActivityType)")
		return uuid("40524281-a7c6-50b1-b6f5-0baa95d902c2");
	else if (T == "IIterable!(Windows.Devices.Sensors.ActivityType)")
		return uuid("2a04cdfa-5dfd-5178-8731-ade998e4a7f6");
	else if (T == "IIterator!(PedometerReading)")
		return uuid("0ac70ed3-8553-5ef3-92f8-438609623087");
	else if (T == "IIterable!(PedometerReading)")
		return uuid("bbb61a5c-98c3-5718-88fe-5392a7451e2d");
	else if (T == "IIterator!(ProximitySensorReading)")
		return uuid("1d4f08df-7f49-573b-936a-6d4d4e610930");
	else if (T == "IIterable!(ProximitySensorReading)")
		return uuid("301ebccf-11ab-5e90-98ee-bd99c0e3bb76");
	else if (T == "IKeyValuePair!(Windows.Devices.Sensors.PedometerStepKind, PedometerReading)")
		return uuid("b270d3b8-3dd2-599f-a671-2de5035503da");
	else if (T == "IMapView!(Windows.Devices.Sensors.PedometerStepKind, PedometerReading)")
		return uuid("64f0c54c-4865-56bd-ac98-64a98451e362");
	else if (T == "IVectorView!(ActivitySensorReading)")
		return uuid("726234a9-7137-55c4-a444-352dcdc30d77");
	else if (T == "IVectorView!(ActivitySensorReadingChangeReport)")
		return uuid("10e48a80-dd6a-5704-8f3d-3d46111f391e");
	else if (T == "IVectorView!(Windows.Devices.Sensors.ActivityType)")
		return uuid("fc7a0488-2803-505c-9e62-9200afe416c6");
	else if (T == "IVectorView!(PedometerReading)")
		return uuid("52076f5c-7838-54d9-9517-5511eb627952");
	else if (T == "IVectorView!(ProximitySensorReading)")
		return uuid("7a09d76c-8ced-5e30-b7fe-1ff74d4d9814");
	else if (T == "IVector!(Windows.Devices.Sensors.ActivityType)")
		return uuid("e3e660d6-d041-5ecd-b18b-fa254e4a860f");
	else if (T == "AsyncOperationCompletedHandler!(ActivitySensor)")
		return uuid("fb0594f4-93d9-5c2f-b8eb-90f1e9258fdc");
	else if (T == "IAsyncOperation!(ActivitySensor)")
		return uuid("c33003ae-e7ae-572b-8d55-7db197356c30");
	else if (T == "AsyncOperationCompletedHandler!(ActivitySensorReading)")
		return uuid("adc48d5d-b343-5a58-8454-6e2bc2e0475c");
	else if (T == "IAsyncOperation!(ActivitySensorReading)")
		return uuid("79a87969-327f-5b7a-a0d3-73eab16de21c");
	else if (T == "AsyncOperationCompletedHandler!(Pedometer)")
		return uuid("a62dbe4e-51de-5a13-ba21-e76df3bc1396");
	else if (T == "IAsyncOperation!(Pedometer)")
		return uuid("9414388f-1b3e-55f5-819b-ab3833646055");
	else if (T == "TypedEventHandler!(Accelerometer, AccelerometerReadingChangedEventArgs)")
		return uuid("a5e83e40-b597-5b83-92f5-5bed3926ca80");
	else if (T == "TypedEventHandler!(Accelerometer, AccelerometerShakenEventArgs)")
		return uuid("3e5d6eaf-f169-5d60-92b0-98cd6bd8f808");
	else if (T == "TypedEventHandler!(ActivitySensor, ActivitySensorReadingChangedEventArgs)")
		return uuid("a5b72e01-546c-5fbb-b847-49200aaaaac5");
	else if (T == "TypedEventHandler!(Altimeter, AltimeterReadingChangedEventArgs)")
		return uuid("d775d699-9d74-5473-9c1b-d51a89db6642");
	else if (T == "TypedEventHandler!(Barometer, BarometerReadingChangedEventArgs)")
		return uuid("e4caf459-d101-5ca5-a4ea-deb0917ae27e");
	else if (T == "TypedEventHandler!(Compass, CompassReadingChangedEventArgs)")
		return uuid("e787d73d-a121-5ae6-b497-ab934837e57f");
	else if (T == "TypedEventHandler!(Gyrometer, GyrometerReadingChangedEventArgs)")
		return uuid("15171524-5786-59a5-af5b-a01245726c44");
	else if (T == "TypedEventHandler!(Inclinometer, InclinometerReadingChangedEventArgs)")
		return uuid("6f3b411f-d147-59f1-bbe4-7bec396c7b6e");
	else if (T == "TypedEventHandler!(LightSensor, LightSensorReadingChangedEventArgs)")
		return uuid("1ecf183a-9f0a-5f73-9225-5a33eab5594f");
	else if (T == "TypedEventHandler!(Magnetometer, MagnetometerReadingChangedEventArgs)")
		return uuid("f9a0da76-c4fd-50ab-98b6-bfd26d6d3d82");
	else if (T == "TypedEventHandler!(OrientationSensor, OrientationSensorReadingChangedEventArgs)")
		return uuid("91ae0c43-e1f7-577d-a161-8aaf275eb927");
	else if (T == "TypedEventHandler!(Pedometer, PedometerReadingChangedEventArgs)")
		return uuid("dcd47693-aad5-5b3c-9c8d-140b8bc2122b");
	else if (T == "TypedEventHandler!(ProximitySensor, ProximitySensorReadingChangedEventArgs)")
		return uuid("9f7e222b-892a-5e68-b08a-10384b5f92b9");
	else if (T == "TypedEventHandler!(SimpleOrientationSensor, SimpleOrientationSensorOrientationChangedEventArgs)")
		return uuid("92437fa7-ea7b-5fc5-8ecf-1b911bea2bfc");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "AsyncOperationCompletedHandler!(SerialDevice)")
		return uuid("84a34b33-06fc-5e63-8ee2-eab4ff69acb7");
	else if (T == "IAsyncOperation!(SerialDevice)")
		return uuid("44ef26ed-c1ff-546a-a46b-6a37de9187fb");
	else if (T == "TypedEventHandler!(SerialDevice, ErrorReceivedEventArgs)")
		return uuid("d92ea323-b7bf-5e02-b9fb-c61f97d080e9");
	else if (T == "TypedEventHandler!(SerialDevice, PinChangedEventArgs)")
		return uuid("e496c3ef-5802-5ac4-ac2e-96bc23fa9447");
	else if (T == "IIterator!(SmartCard)")
		return uuid("86b29903-916e-5817-bc96-df324475e31a");
	else if (T == "IIterable!(SmartCard)")
		return uuid("a32c5202-d113-535f-880e-50f3e5121ef8");
	else if (T == "IVectorView!(SmartCard)")
		return uuid("4bee6991-3508-5f03-a2f4-90a5ddb26bd8");
	else if (T == "AsyncOperationCompletedHandler!(SmartCardChallengeContext)")
		return uuid("96b172f6-dedb-5f3e-af90-7b0f10219352");
	else if (T == "IAsyncOperation!(SmartCardChallengeContext)")
		return uuid("1c650663-3f68-599b-b9d4-c350f13ee4e4");
	else if (T == "AsyncOperationCompletedHandler!(SmartCardConnection)")
		return uuid("c71f00e6-af26-5e5c-913d-0efeb7d08ef7");
	else if (T == "IAsyncOperation!(SmartCardConnection)")
		return uuid("779bbc5b-a75c-5988-978f-34dbc629d576");
	else if (T == "AsyncOperationCompletedHandler!(SmartCardProvisioning)")
		return uuid("7a2e58dc-22ee-5cb8-83cc-a7a61b9dcd2c");
	else if (T == "IAsyncOperation!(SmartCardProvisioning)")
		return uuid("6184fc80-b752-5ce8-a136-f57174bb9309");
	else if (T == "AsyncOperationCompletedHandler!(SmartCardReader)")
		return uuid("20d3244d-375a-5f7d-8944-164fdfed4239");
	else if (T == "IAsyncOperation!(SmartCardReader)")
		return uuid("036a830d-bbca-5cb9-977f-b29ea3042149");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.SmartCards.SmartCardReaderStatus)")
		return uuid("3d7e6ea9-e739-555c-9c02-07396c5321f5");
	else if (T == "IAsyncOperation!(Windows.Devices.SmartCards.SmartCardReaderStatus)")
		return uuid("5ae402fa-1f22-5570-a0c8-b2320adedb81");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.SmartCards.SmartCardStatus)")
		return uuid("bdaf4a41-3b4a-56b0-aeec-fee71cc7f328");
	else if (T == "IAsyncOperation!(Windows.Devices.SmartCards.SmartCardStatus)")
		return uuid("e2223376-8cf6-51bd-9907-1344aa665e5d");
	else if (T == "TypedEventHandler!(SmartCardReader, CardAddedEventArgs)")
		return uuid("d36f2db9-5674-5f74-9f69-3cdc4559999f");
	else if (T == "TypedEventHandler!(SmartCardReader, CardRemovedEventArgs)")
		return uuid("69da07c6-b266-5a1c-937c-d82b4a8232c6");
	else if (T == "AsyncOperationCompletedHandler!(IBuffer)")
		return uuid("51c3d2fd-b8a1-5620-b746-7ee6d533aca3");
	else if (T == "IAsyncOperation!(IBuffer)")
		return uuid("3bee8834-b9a7-5a80-a746-5ef097227878");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "AsyncOperationCompletedHandler!(GUID)")
		return uuid("5233899b-ba7e-504f-bb83-ceebac62decf");
	else if (T == "IAsyncOperation!(GUID)")
		return uuid("6607bc41-294b-5975-9c3f-4b49836d0916");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "IIterator!(ISmsBinaryMessage)")
		return uuid("13e60d89-ea0a-5b01-9c2f-0e5b435058e0");
	else if (T == "IIterable!(ISmsBinaryMessage)")
		return uuid("5678a6a5-4d5a-51c2-a133-4b83bf25d987");
	else if (T == "IIterator!(ISmsMessage)")
		return uuid("eed04f5c-b2b2-5c83-8b13-c78af6ca3a18");
	else if (T == "IIterable!(ISmsMessage)")
		return uuid("ecabfd70-9601-5e38-83cf-b1046022a244");
	else if (T == "IIterator!(Windows.Devices.Sms.SmsBroadcastType)")
		return uuid("6448ddea-c1cd-5143-a422-5fe4f008cc92");
	else if (T == "IIterable!(Windows.Devices.Sms.SmsBroadcastType)")
		return uuid("12276b75-173e-514b-98f0-8a7927a9206c");
	else if (T == "IIterator!(SmsFilterRule)")
		return uuid("fec7cae6-97f5-5a19-b32a-d8f0ba276f34");
	else if (T == "IIterable!(SmsFilterRule)")
		return uuid("03ed8267-9c90-5260-8bc0-6c3e3306c964");
	else if (T == "IIterator!(SmsMessageRegistration)")
		return uuid("ee1a0675-f3c9-5c12-93e0-f2b01bdce611");
	else if (T == "IIterable!(SmsMessageRegistration)")
		return uuid("f836fa0a-770d-5e8f-8664-01c43f959eea");
	else if (T == "IVectorView!(ISmsBinaryMessage)")
		return uuid("6ea176ea-99ea-5c79-876a-f4c437b83df6");
	else if (T == "IVectorView!(ISmsMessage)")
		return uuid("d3acc5b1-6f85-507e-b40a-6950749b426f");
	else if (T == "IVectorView!(Windows.Devices.Sms.SmsBroadcastType)")
		return uuid("4063e791-da2d-5e4c-9113-5b6ba0a7c595");
	else if (T == "IVectorView!(SmsFilterRule)")
		return uuid("f3ed4299-de36-5d82-993f-35fc677d8b72");
	else if (T == "IVectorView!(SmsMessageRegistration)")
		return uuid("23aaa815-24ef-57c4-b1bc-94d62c0a59a3");
	else if (T == "IVector!(Windows.Devices.Sms.SmsBroadcastType)")
		return uuid("d76bef0b-1358-5895-bd42-f17f6f33eed1");
	else if (T == "IVector!(SmsFilterRule)")
		return uuid("8e72fa52-4867-5696-b4d9-4ca23f19e177");
	else if (T == "AsyncOperationCompletedHandler!(ISmsMessage)")
		return uuid("4e6c4c86-ebe6-55d9-adc0-fecc38c82aa2");
	else if (T == "IAsyncOperation!(ISmsMessage)")
		return uuid("abf9b459-48c3-5eac-9749-4c6db4d507e6");
	else if (T == "AsyncOperationCompletedHandler!(SmsDevice)")
		return uuid("44aa5484-43d0-5893-a4ee-7db00113ae60");
	else if (T == "IAsyncOperation!(SmsDevice)")
		return uuid("ab710de1-fcbb-5bd6-9f2f-285fa9fb44e8");
	else if (T == "AsyncOperationCompletedHandler!(SmsSendMessageResult)")
		return uuid("c7d5c6fe-9206-5eb1-abc1-c1bc21804eeb");
	else if (T == "IAsyncOperation!(SmsSendMessageResult)")
		return uuid("fc0a0b0f-4dcc-5257-bc61-3435e302ce1f");
	else if (T == "TypedEventHandler!(SmsDevice2, IInspectable)")
		return uuid("3f3808e6-3dee-57a6-a88d-bacfb066c7fb");
	else if (T == "TypedEventHandler!(SmsMessageRegistration, SmsMessageReceivedTriggerDetails)")
		return uuid("33f985c7-dcfa-531f-9cce-ee5e6c26b1e6");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(int)")
		return uuid("bfea7f78-50c2-5f1d-a6ea-9e978d2699ff");
	else if (T == "IIterable!(int)")
		return uuid("81a643fb-f51c-5565-83c4-f96425777b66");
	else if (T == "IVectorView!(int)")
		return uuid("8d720cdf-3934-5d3f-9a55-40e8063b086a");
	else if (T == "IVector!(int)")
		return uuid("b939af5b-b45d-5489-9149-61442c1905fe");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "IIterator!(SpiController)")
		return uuid("fd7d5997-544c-5be9-b0fa-1d0efbfc4a03");
	else if (T == "IIterable!(SpiController)")
		return uuid("7b076938-dc1b-5368-9003-059291d37f35");
	else if (T == "IVectorView!(SpiController)")
		return uuid("35fec489-44a2-5543-8a0c-b52e2f9cf87c");
	else if (T == "AsyncOperationCompletedHandler!(SpiController)")
		return uuid("5e94d949-a844-5b25-a3cc-afabeb18c1d2");
	else if (T == "IAsyncOperation!(SpiController)")
		return uuid("b6b0df6f-c097-5844-93bd-7821998fdb8e");
	else if (T == "AsyncOperationCompletedHandler!(SpiDevice)")
		return uuid("a88a28ba-6966-55e7-8c81-7c65f74e39c0");
	else if (T == "IAsyncOperation!(SpiDevice)")
		return uuid("feb8466a-878f-577b-bbca-89575cfc56e4");
	else if (T == "IIterator!(int)")
		return uuid("bfea7f78-50c2-5f1d-a6ea-9e978d2699ff");
	else if (T == "IIterable!(int)")
		return uuid("81a643fb-f51c-5565-83c4-f96425777b66");
	else if (T == "IVectorView!(int)")
		return uuid("8d720cdf-3934-5d3f-9a55-40e8063b086a");
	else if (T == "IIterator!(ISpiControllerProvider)")
		return uuid("cf1d15d3-a6c8-56dd-80c8-e8d960262277");
	else if (T == "IIterable!(ISpiControllerProvider)")
		return uuid("71ba027d-8c84-58b1-8d66-9177c11698eb");
	else if (T == "IVectorView!(ISpiControllerProvider)")
		return uuid("96a4919b-3229-5e41-8b10-c8198c44f10c");
	else if (T == "IIterator!(UsbBulkInEndpointDescriptor)")
		return uuid("ea511030-89c4-503d-8caf-667f4230d2a9");
	else if (T == "IIterable!(UsbBulkInEndpointDescriptor)")
		return uuid("101b1fd9-f1c9-5dda-9ad4-71176fa839b2");
	else if (T == "IIterator!(UsbBulkInPipe)")
		return uuid("d7af2c5b-528d-5cbb-a997-d830ade704c7");
	else if (T == "IIterable!(UsbBulkInPipe)")
		return uuid("2201a671-42d2-508d-a848-64b5447083c8");
	else if (T == "IIterator!(UsbBulkOutEndpointDescriptor)")
		return uuid("a8b89ab3-883d-5361-9903-f489cc62bea5");
	else if (T == "IIterable!(UsbBulkOutEndpointDescriptor)")
		return uuid("b80beb39-62b3-5f59-b3e7-882cc9c5b0c0");
	else if (T == "IIterator!(UsbBulkOutPipe)")
		return uuid("46dd2f6a-573b-5c45-b168-9223038491dd");
	else if (T == "IIterable!(UsbBulkOutPipe)")
		return uuid("9824caba-5ca6-5c2d-80cf-1949026d7857");
	else if (T == "IIterator!(UsbDescriptor)")
		return uuid("521598ed-0167-528e-990d-52abb712f072");
	else if (T == "IIterable!(UsbDescriptor)")
		return uuid("989909a5-5a03-51fb-bd94-84da7bda8819");
	else if (T == "IIterator!(UsbInterface)")
		return uuid("216b5a5f-63e3-5a9b-9c99-b09cbc0ff3b1");
	else if (T == "IIterable!(UsbInterface)")
		return uuid("f54037ed-92e9-590d-b904-3ad7bfa9a621");
	else if (T == "IIterator!(UsbInterfaceSetting)")
		return uuid("71267ec7-5697-5dea-b2f8-14cf698ec0ad");
	else if (T == "IIterable!(UsbInterfaceSetting)")
		return uuid("1aaf5739-9c2c-533e-a0e9-d53fdb45d15d");
	else if (T == "IIterator!(UsbInterruptInEndpointDescriptor)")
		return uuid("6717500f-ec1c-5b12-bf33-0e3e3d244587");
	else if (T == "IIterable!(UsbInterruptInEndpointDescriptor)")
		return uuid("8a7bac69-1f10-59c7-9837-72cfed7154a4");
	else if (T == "IIterator!(UsbInterruptInPipe)")
		return uuid("e3a7b1c0-74f6-5292-a22a-672aa2b49985");
	else if (T == "IIterable!(UsbInterruptInPipe)")
		return uuid("39aef336-18aa-5be4-86d9-e332fe2632f3");
	else if (T == "IIterator!(UsbInterruptOutEndpointDescriptor)")
		return uuid("4b6426db-db32-5b51-adad-04532ea94acd");
	else if (T == "IIterable!(UsbInterruptOutEndpointDescriptor)")
		return uuid("09393d62-2316-536b-8a10-7038884ab2a7");
	else if (T == "IIterator!(UsbInterruptOutPipe)")
		return uuid("cbd8d8a8-2286-5cbd-a6e4-962742ffd91a");
	else if (T == "IIterable!(UsbInterruptOutPipe)")
		return uuid("e61a011e-4abe-53f2-83b3-ed4a949d2e3f");
	else if (T == "IVectorView!(UsbBulkInEndpointDescriptor)")
		return uuid("9c69ac78-309e-5763-af26-9706ffa47ec0");
	else if (T == "IVectorView!(UsbBulkInPipe)")
		return uuid("a93c84bc-6484-5959-b61a-703cc7115f6f");
	else if (T == "IVectorView!(UsbBulkOutEndpointDescriptor)")
		return uuid("22a53676-a3ea-5dcd-bb39-b28a5327c4a3");
	else if (T == "IVectorView!(UsbBulkOutPipe)")
		return uuid("0a873512-15f1-5e8e-a72a-045cfd7a5e83");
	else if (T == "IVectorView!(UsbDescriptor)")
		return uuid("5408baa2-291e-537a-b61f-137062f7ff7d");
	else if (T == "IVectorView!(UsbInterface)")
		return uuid("9c69ec7f-2e42-58cd-a74a-f4974811134d");
	else if (T == "IVectorView!(UsbInterfaceSetting)")
		return uuid("71194af7-77c2-54d5-a116-287f0b7fd53f");
	else if (T == "IVectorView!(UsbInterruptInEndpointDescriptor)")
		return uuid("3fc7f890-218e-5057-904d-6387c591cc93");
	else if (T == "IVectorView!(UsbInterruptInPipe)")
		return uuid("37469574-b4c5-5ba0-9616-894dd822ff5b");
	else if (T == "IVectorView!(UsbInterruptOutEndpointDescriptor)")
		return uuid("984e7e15-c5ac-5140-a3c0-b583190085d7");
	else if (T == "IVectorView!(UsbInterruptOutPipe)")
		return uuid("748196c8-83bf-5ec3-8d28-a3112b3ee3cc");
	else if (T == "AsyncOperationCompletedHandler!(UsbDevice)")
		return uuid("7331254f-6caf-587d-9c2a-018c66d312db");
	else if (T == "IAsyncOperation!(UsbDevice)")
		return uuid("2138c5ed-b71a-5166-9948-d55792748f5c");
	else if (T == "TypedEventHandler!(UsbInterruptInPipe, UsbInterruptInEventArgs)")
		return uuid("e6db9449-f36a-50f2-926c-2afd85c49f01");
	else if (T == "AsyncOperationCompletedHandler!(UINT32)")
		return uuid("9343b6e7-e3d2-5e4a-ab2d-2bce4919a6a4");
	else if (T == "IAsyncOperation!(UINT32)")
		return uuid("ef60385f-be78-584b-aaef-7829ada2b0de");
	else if (T == "AsyncOperationCompletedHandler!(IBuffer)")
		return uuid("51c3d2fd-b8a1-5620-b746-7ee6d533aca3");
	else if (T == "IAsyncOperation!(IBuffer)")
		return uuid("3bee8834-b9a7-5a80-a746-5ef097227878");
	else if (T == "IReference!(byte)")
		return uuid("e5198cc8-2873-55f5-b0a1-84ff9e4aad62");
	else if (T == "IIterator!(WiFiAdapter)")
		return uuid("144136c6-b502-5a52-90fc-22a09318f932");
	else if (T == "IIterable!(WiFiAdapter)")
		return uuid("e0bc76c4-8d0c-53fc-bcd4-228f47210ace");
	else if (T == "IIterator!(WiFiAvailableNetwork)")
		return uuid("468677c4-ebb9-5196-836d-72faa9fe673e");
	else if (T == "IIterable!(WiFiAvailableNetwork)")
		return uuid("f17484ea-c71e-5d3e-b74c-3a0e61dd9c20");
	else if (T == "IVectorView!(WiFiAdapter)")
		return uuid("670a3c41-ecc8-55c2-84d4-51864496a328");
	else if (T == "IVectorView!(WiFiAvailableNetwork)")
		return uuid("7c65d286-7285-5d63-bdea-5ef951bdf618");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Devices.WiFi.WiFiAccessStatus)")
		return uuid("65e889ca-f6c9-5c75-bef9-05ab88a49a54");
	else if (T == "IAsyncOperation!(Windows.Devices.WiFi.WiFiAccessStatus)")
		return uuid("f8c75a3a-739a-57aa-986d-1f7604d7e386");
	else if (T == "AsyncOperationCompletedHandler!(WiFiAdapter)")
		return uuid("35362f75-6aae-560d-b3d0-3fae9c7260a8");
	else if (T == "IAsyncOperation!(WiFiAdapter)")
		return uuid("1dcf739d-10b7-59e9-ab47-8b0277e20193");
	else if (T == "AsyncOperationCompletedHandler!(WiFiConnectionResult)")
		return uuid("f380eb8d-1e52-5350-a288-861c963a84f0");
	else if (T == "IAsyncOperation!(WiFiConnectionResult)")
		return uuid("ffa41f49-4c30-50d3-9549-e4f055b417b4");
	else if (T == "TypedEventHandler!(WiFiAdapter, IInspectable)")
		return uuid("f6c02d1b-43e8-5fc8-8e8e-ee7b8094b683");
	else if (T == "IIterator!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod)")
		return uuid("201940f9-a368-57f4-9ef2-3f64e243e0a4");
	else if (T == "IIterable!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod)")
		return uuid("794f12da-2dc6-5277-82dc-b0781610537b");
	else if (T == "IIterator!(WiFiDirectInformationElement)")
		return uuid("cf806026-c915-553e-af3c-8da43871b693");
	else if (T == "IIterable!(WiFiDirectInformationElement)")
		return uuid("19c1ca4e-9561-5253-96d9-dbaf28d47d89");
	else if (T == "IVectorView!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod)")
		return uuid("61a32670-04d3-551d-ad66-bd04e9ef5c78");
	else if (T == "IVectorView!(WiFiDirectInformationElement)")
		return uuid("6dcffadb-04c5-535e-add4-1389b3be6eca");
	else if (T == "IVector!(Windows.Devices.WiFiDirect.WiFiDirectConfigurationMethod)")
		return uuid("9b498bc0-b474-5587-b65c-e600965f8fd0");
	else if (T == "IVector!(WiFiDirectInformationElement)")
		return uuid("b8c55492-e4de-5ba7-8476-d3bab557cdd6");
	else if (T == "AsyncOperationCompletedHandler!(WiFiDirectDevice)")
		return uuid("d34abe17-fb19-57be-bc41-0eb83dea151c");
	else if (T == "IAsyncOperation!(WiFiDirectDevice)")
		return uuid("dad01b61-a82d-566c-ba82-224c11500669");
	else if (T == "TypedEventHandler!(WiFiDirectAdvertisementPublisher, WiFiDirectAdvertisementPublisherStatusChangedEventArgs)")
		return uuid("de73cba7-370d-550c-b23a-53dd0b4e480d");
	else if (T == "TypedEventHandler!(WiFiDirectConnectionListener, WiFiDirectConnectionRequestedEventArgs)")
		return uuid("d04b0403-1fe2-532f-8e47-4823a14e624f");
	else if (T == "TypedEventHandler!(WiFiDirectDevice, IInspectable)")
		return uuid("9208929a-2a3c-50ad-aa08-a0a986edbabe");
	else if (T == "IIterator!(EndpointPair)")
		return uuid("c899ff9f-e6f5-5673-810c-04e2ff98704f");
	else if (T == "IIterable!(EndpointPair)")
		return uuid("d7ec83c4-a17b-51bf-8997-aa33b9102dc9");
	else if (T == "IVectorView!(EndpointPair)")
		return uuid("8780a851-6d48-5006-9288-81f3d7045a96");
	else if (T == "IIterator!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod)")
		return uuid("19889f5e-49ae-5e31-b059-083f9f1532c3");
	else if (T == "IIterable!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod)")
		return uuid("d9773b1a-a148-58bf-9c4b-afeac9be3ab4");
	else if (T == "IVectorView!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod)")
		return uuid("dc710fe1-7f04-515b-8ac1-1c5d3c0d2b28");
	else if (T == "IVector!(Windows.Devices.WiFiDirect.Services.WiFiDirectServiceConfigurationMethod)")
		return uuid("f6a6f91c-0579-565d-be07-4538a55690be");
	else if (T == "AsyncOperationCompletedHandler!(WiFiDirectService)")
		return uuid("f505a3c8-4837-5e0e-8a4d-1e2af5477e5c");
	else if (T == "IAsyncOperation!(WiFiDirectService)")
		return uuid("c4fa2ae8-4ff7-5aa0-af97-ed85ea66f9ae");
	else if (T == "AsyncOperationCompletedHandler!(WiFiDirectServiceProvisioningInfo)")
		return uuid("94cb9568-040a-5186-a3c9-52680ee17984");
	else if (T == "IAsyncOperation!(WiFiDirectServiceProvisioningInfo)")
		return uuid("d7fa4dc4-4730-506e-bff0-801eb4a831a8");
	else if (T == "AsyncOperationCompletedHandler!(WiFiDirectServiceSession)")
		return uuid("b29de711-60b8-59da-8f4d-fc79d8ccd422");
	else if (T == "IAsyncOperation!(WiFiDirectServiceSession)")
		return uuid("c2da4e97-728b-5401-a9d9-3a0185450af2");
	else if (T == "TypedEventHandler!(WiFiDirectService, WiFiDirectServiceSessionDeferredEventArgs)")
		return uuid("fc3dfc2c-9cfa-5822-ba3f-ff3afb65777e");
	else if (T == "TypedEventHandler!(WiFiDirectServiceAdvertiser, IInspectable)")
		return uuid("67fc3121-c1a0-5c23-af58-ecb7f2a7d773");
	else if (T == "TypedEventHandler!(WiFiDirectServiceAdvertiser, WiFiDirectServiceAutoAcceptSessionConnectedEventArgs)")
		return uuid("3be2d508-a856-5c09-9998-522597b44b07");
	else if (T == "TypedEventHandler!(WiFiDirectServiceAdvertiser, WiFiDirectServiceSessionRequestedEventArgs)")
		return uuid("cb98fd74-871d-5730-91fe-81ef947fe78f");
	else if (T == "TypedEventHandler!(WiFiDirectServiceSession, IInspectable)")
		return uuid("10c33301-e31c-5cce-b2a0-c1dc2d8d0e13");
	else if (T == "TypedEventHandler!(WiFiDirectServiceSession, WiFiDirectServiceRemotePortAddedEventArgs)")
		return uuid("8326a337-3c19-57a7-80ec-cca2ea62ef12");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(EndpointPair)")
		return uuid("c899ff9f-e6f5-5673-810c-04e2ff98704f");
	else if (T == "IIterable!(EndpointPair)")
		return uuid("d7ec83c4-a17b-51bf-8997-aa33b9102dc9");
	else if (T == "IVectorView!(EndpointPair)")
		return uuid("8780a851-6d48-5006-9288-81f3d7045a96");
	else if (T == "EventHandler!(TracingStatusChangedEventArgs)")
		return uuid("2bf27008-2eb4-5675-b1cd-e9906cc5ce64");
	else if (T == "AsyncOperationCompletedHandler!(ErrorDetails)")
		return uuid("a6997f9d-7195-5972-8ecd-1c73aa5cb312");
	else if (T == "IAsyncOperation!(ErrorDetails)")
		return uuid("9b05106d-77e0-5c24-82b0-9b2dc8f79671");
	else if (T == "TypedEventHandler!(IFileLoggingSession, LogFileGeneratedEventArgs)")
		return uuid("0c6563b0-9d8b-5b60-994b-dee1174d1efb");
	else if (T == "TypedEventHandler!(ILoggingChannel, IInspectable)")
		return uuid("52c9c2a1-54a3-5ef9-9aff-014e7c454655");
	else if (T == "AsyncOperationCompletedHandler!(StorageFile)")
		return uuid("e521c894-2c26-5946-9e61-2b5e188d01ed");
	else if (T == "IAsyncOperation!(StorageFile)")
		return uuid("5e52f8ce-aced-5a42-95b4-f674dd84885e");
	else if (T == "IIterator!(byte)")
		return uuid("40556131-a2a1-5fab-aaee-5f35268ca26b");
	else if (T == "IIterable!(byte)")
		return uuid("88318266-f3fd-50fc-8f08-b823a41b60c1");
	else if (T == "IIterator!(double)")
		return uuid("638a2cf4-f474-5318-9055-141cb909ac4b");
	else if (T == "IIterable!(double)")
		return uuid("c738964e-9c64-5bce-b5ce-61e9a282ec4a");
	else if (T == "IIterator!(float)")
		return uuid("42614e61-b0aa-5e72-9354-2771db20b7a8");
	else if (T == "IIterable!(float)")
		return uuid("b01bee51-063a-5fda-bd72-d76637bb8cb8");
	else if (T == "IIterator!(GUID)")
		return uuid("d3d64048-82b3-53c7-9285-b0be18368482");
	else if (T == "IIterable!(GUID)")
		return uuid("f4ca3045-5dd7-54be-982e-d88d8ca0876e");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IIterator!(IInspectable)")
		return uuid("44a94f2d-04f8-5091-b336-be7892dd10be");
	else if (T == "IIterable!(IInspectable)")
		return uuid("092b849b-60b1-52be-a44a-6fe8e933cbe4");
	else if (T == "IIterator!(int)")
		return uuid("bfea7f78-50c2-5f1d-a6ea-9e978d2699ff");
	else if (T == "IIterable!(int)")
		return uuid("81a643fb-f51c-5565-83c4-f96425777b66");
	else if (T == "IIterator!(UINT32)")
		return uuid("f06a2739-9443-5ef0-b284-dc5aff3e7d10");
	else if (T == "IIterable!(UINT32)")
		return uuid("421d4b91-b13b-5f37-ae54-b5249bd80539");
	else if (T == "IIterator!(Windows.Foundation.Point)")
		return uuid("c602b59e-0a8e-5e99-b478-2b564585278d");
	else if (T == "IIterable!(Windows.Foundation.Point)")
		return uuid("c192280d-3a09-5423-9dc5-67b83ebde41d");
	else if (T == "IKeyValuePair!(GUID, IInspectable)")
		return uuid("3bda1540-d089-5a1a-8f0d-94eba8068e58");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IKeyValuePair!(IInspectable, IInspectable)")
		return uuid("59e7ae0c-c29d-5ad6-bef5-dedb52a198e1");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IIterator!(Windows.Foundation.DateTime)")
		return uuid("f56158df-8947-5480-96ed-36c1057877ea");
	else if (T == "IIterable!(Windows.Foundation.DateTime)")
		return uuid("576a207d-977c-5b36-b54d-624ec86c53a3");
	else if (T == "IIterator!(IWwwFormUrlDecoderEntry)")
		return uuid("32e54295-373c-50cb-80a1-468a990ca780");
	else if (T == "IIterable!(IWwwFormUrlDecoderEntry)")
		return uuid("876be83b-7218-5bfb-a169-83152ef7e146");
	else if (T == "IIterator!(Windows.Foundation.TimeSpan)")
		return uuid("67e9eadb-324b-5661-a405-ded8445b1eea");
	else if (T == "IIterable!(Windows.Foundation.TimeSpan)")
		return uuid("e9f78726-829a-5f67-8d19-95ef154b7742");
	else if (T == "IIterator!(Uri)")
		return uuid("1c157d0f-5efe-5cec-bbd6-0c6ce9af07a5");
	else if (T == "IIterable!(Uri)")
		return uuid("b0d63b78-78ad-5e31-b6d8-e32a0e16c447");
	else if (T == "IIterator!(bool)")
		return uuid("740a0296-a535-572a-bf0b-17c18ff71fe6");
	else if (T == "IIterable!(bool)")
		return uuid("30160817-1d7d-54e9-99db-d7636266a476");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "IMapView!(GUID, IInspectable)")
		return uuid("e4d2c732-bbc1-5ef4-869f-5007ceb55f6e");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMapView!(IInspectable, IInspectable)")
		return uuid("efe76d10-cb60-50ad-8a4f-6885cd6212a1");
	else if (T == "IMap!(GUID, IInspectable)")
		return uuid("5ee3189c-7dbf-5998-ad07-5414fb82567c");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMap!(IInspectable, IInspectable)")
		return uuid("f5f69427-55ed-5512-8429-d4f6626dfcdd");
	else if (T == "MapChangedEventHandler!(HSTRING, HSTRING)")
		return uuid("e2663f37-2e1b-500c-ad68-c3ed7a8f74c8");
	else if (T == "IObservableMap!(HSTRING, HSTRING)")
		return uuid("1e036276-2f60-55f6-b7f3-f86079e6900b");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IVectorView!(IInspectable)")
		return uuid("a6487363-b074-5c60-ab16-866dce4ee54d");
	else if (T == "IVector!(IInspectable)")
		return uuid("b32bdca4-5e52-5b27-bc5d-d66a1a268c2a");
	else if (T == "VectorChangedEventHandler!(IInspectable)")
		return uuid("b423a801-d35e-56b9-813b-00889536cb98");
	else if (T == "IObservableVector!(IInspectable)")
		return uuid("7b81c56a-0985-518d-baa9-0da9ae009f65");
	else if (T == "IVectorView!(byte)")
		return uuid("6d05fb29-7885-544e-9382-a1ad391a3fa4");
	else if (T == "IVectorView!(double)")
		return uuid("af7586a8-6b21-5f61-bff1-1b682293ad96");
	else if (T == "IVectorView!(float)")
		return uuid("7bca64fd-150c-5d50-b56b-9f4f474c5930");
	else if (T == "IVectorView!(GUID)")
		return uuid("9520e64b-15b2-52a6-98ed-3191fa6cf68a");
	else if (T == "IVectorView!(int)")
		return uuid("8d720cdf-3934-5d3f-9a55-40e8063b086a");
	else if (T == "IVectorView!(UINT32)")
		return uuid("e5ce1a07-8d33-5007-ba64-7d2508ccf85c");
	else if (T == "IVectorView!(Windows.Foundation.DateTime)")
		return uuid("135a5f72-a818-54a8-b955-dff2593a3bf5");
	else if (T == "IVectorView!(IWwwFormUrlDecoderEntry)")
		return uuid("b1f00d3b-1f06-5117-93ea-2a0d79116701");
	else if (T == "IVectorView!(Windows.Foundation.Point)")
		return uuid("0b7b4c9d-182f-582a-bddb-42b1aac30cad");
	else if (T == "IVectorView!(Uri)")
		return uuid("4b8385bd-a2cd-5ff1-bf74-7ea580423e50");
	else if (T == "IVectorView!(bool)")
		return uuid("243a09cb-6f40-56af-a442-fe81431fbef5");
	else if (T == "IVector!(double)")
		return uuid("f452d23c-bf05-5f3e-88e7-d17a6716b911");
	else if (T == "IVector!(float)")
		return uuid("61cf693f-db4c-579f-b905-5dd3d23cfd4d");
	else if (T == "IVector!(GUID)")
		return uuid("482e676d-b913-5ec1-afa8-5f96922e94ae");
	else if (T == "IVector!(int)")
		return uuid("b939af5b-b45d-5489-9149-61442c1905fe");
	else if (T == "IVector!(UINT32)")
		return uuid("534832ed-2a03-5604-890d-5a928cd427b9");
	else if (T == "IVector!(Windows.Foundation.DateTime)")
		return uuid("94390dc5-e442-5870-88b6-007e232f902c");
	else if (T == "IVector!(Windows.Foundation.Point)")
		return uuid("c0d513a9-ec4a-5a5d-b6d5-b707defdb9f7");
	else if (T == "IVector!(Uri)")
		return uuid("0d82bd8d-fe62-5d67-a7b9-7886dd75bc4e");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "AsyncActionProgressHandler!(double)")
		return uuid("44825c7c-0da9-5691-b2b4-914f231eeced");
	else if (T == "AsyncActionWithProgressCompletedHandler!(double)")
		return uuid("94d64ac6-4491-53ef-8be8-36481f3ff1e8");
	else if (T == "IAsyncActionWithProgress!(double)")
		return uuid("4f1430a6-a825-56ca-b047-1a9bad52ba67");
	else if (T == "AsyncActionProgressHandler!(UINT64)")
		return uuid("55e233ca-f243-5ae2-853b-f9cc7c0ae0cf");
	else if (T == "AsyncActionWithProgressCompletedHandler!(UINT64)")
		return uuid("e6ff857b-f160-571a-a934-2c61f98c862d");
	else if (T == "IAsyncActionWithProgress!(UINT64)")
		return uuid("43f713d0-c49d-5e55-aebf-af395768351e");
	else if (T == "AsyncOperationProgressHandler!(HSTRING, UINT64)")
		return uuid("14da7de7-40df-5d4c-823f-cf310625ad39");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(HSTRING, UINT64)")
		return uuid("bd75eebe-e7b5-5af6-8415-a4b9c9045202");
	else if (T == "IAsyncOperationWithProgress!(HSTRING, UINT64)")
		return uuid("c8bbcb29-6b64-5ce2-a831-038f6e02199e");
	else if (T == "AsyncOperationProgressHandler!(UINT32, UINT32)")
		return uuid("ea0fe405-d432-5ac7-9ef8-5a65e1f97d7e");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(UINT32, UINT32)")
		return uuid("1e466dc5-840f-54f9-b877-5e3a9f4b6c74");
	else if (T == "IAsyncOperationWithProgress!(UINT32, UINT32)")
		return uuid("eccb574a-c684-5572-a679-6b0842cfb57f");
	else if (T == "AsyncOperationProgressHandler!(UINT64, UINT64)")
		return uuid("ffb2b65d-4120-5d13-826d-107851e6bb1c");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(UINT64, UINT64)")
		return uuid("d2024e41-5500-5b5a-ba46-cb7009596a2f");
	else if (T == "IAsyncOperationWithProgress!(UINT64, UINT64)")
		return uuid("8f1db6e3-6556-5516-825c-1021ee27cd0c");
	else if (T == "AsyncOperationProgressHandler!(bool, double)")
		return uuid("cadf3784-1200-5633-8280-163849914ab3");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(bool, double)")
		return uuid("0ec5345b-b37a-5cd5-83d7-9590cdf445b5");
	else if (T == "IAsyncOperationWithProgress!(bool, double)")
		return uuid("af873c66-2df0-5a95-ab54-25634da3ffa9");
	else if (T == "AsyncOperationCompletedHandler!(GUID)")
		return uuid("5233899b-ba7e-504f-bb83-ceebac62decf");
	else if (T == "IAsyncOperation!(GUID)")
		return uuid("6607bc41-294b-5975-9c3f-4b49836d0916");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "AsyncOperationCompletedHandler!(IInspectable)")
		return uuid("3f08262e-a2e1-5134-9297-e9211f481a2d");
	else if (T == "IAsyncOperation!(IInspectable)")
		return uuid("abf53c57-ee50-5342-b52a-26e3b8cc024f");
	else if (T == "AsyncOperationCompletedHandler!(int)")
		return uuid("d60cae9d-88cb-59f1-8576-3fba44796be8");
	else if (T == "IAsyncOperation!(int)")
		return uuid("968b9665-06ed-5774-8f53-8edeabd5f7b5");
	else if (T == "AsyncOperationCompletedHandler!(UINT32)")
		return uuid("9343b6e7-e3d2-5e4a-ab2d-2bce4919a6a4");
	else if (T == "IAsyncOperation!(UINT32)")
		return uuid("ef60385f-be78-584b-aaef-7829ada2b0de");
	else if (T == "AsyncOperationCompletedHandler!(UINT64)")
		return uuid("ee8aeb02-fb00-51fa-8f57-32583ea241f9");
	else if (T == "IAsyncOperation!(UINT64)")
		return uuid("2a70d630-0767-5f0a-a1c2-deb08126e26e");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "AsyncOperationCompletedHandler!(Uri)")
		return uuid("ad46f1cc-2bb0-585c-9885-03c2780d4d58");
	else if (T == "IAsyncOperation!(Uri)")
		return uuid("641cb9dd-a28d-59e2-b8db-a227eda6cf2e");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IReference!(byte)")
		return uuid("e5198cc8-2873-55f5-b0a1-84ff9e4aad62");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IReference!(float)")
		return uuid("719cc2ba-3e76-5def-9f1a-38d85a145ea8");
	else if (T == "IReference!(GUID)")
		return uuid("7d50f649-632c-51f9-849a-ee49428933ea");
	else if (T == "IReference!(short)")
		return uuid("6ec9e41b-6709-5647-9918-a1270110fc4e");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IReference!(UINT64)")
		return uuid("6755e376-53bb-568b-a11d-17239868309e");
	else if (T == "IReference!(Windows.Foundation.Point)")
		return uuid("84f14c22-a00a-5272-8d3d-82112e66df00");
	else if (T == "IReference!(Windows.Foundation.Rect)")
		return uuid("80423f11-054f-5eac-afd3-63b6ce15e77b");
	else if (T == "IReference!(bool)")
		return uuid("3c00fd60-2950-5939-a21a-2d12c5a01b8a");
	else if (T == "TypedEventHandler!(IInspectable, IInspectable)")
		return uuid("c7e65ce2-fad5-5e3b-9c58-186ca8c1dd57");
	else if (T == "TypedEventHandler!(IMemoryBufferReference, IInspectable)")
		return uuid("f4637d4a-0760-5431-bfc0-24eb1d4f6c4f");
	else if (T == "IReference!(Windows.Foundation.Numerics.Matrix4x4)")
		return uuid("dacbffdc-68ef-5fd0-b657-782d0ac9807e");
	else if (T == "IReference!(Windows.Foundation.Numerics.Quaternion)")
		return uuid("b27004bb-c014-5dce-9a21-799c5a3c1461");
	else if (T == "IReference!(Windows.Foundation.Numerics.Vector3)")
		return uuid("1ee770ff-c954-59ca-a754-6199a9be282c");
	else if (T == "AsyncOperationProgressHandler!(GipFirmwareUpdateResult, Windows.Gaming.Input.Custom.GipFirmwareUpdateProgress)")
		return uuid("065c16af-49dc-5c94-afe2-9385937facc9");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(GipFirmwareUpdateResult, Windows.Gaming.Input.Custom.GipFirmwareUpdateProgress)")
		return uuid("61b95949-a027-51d8-9f33-37927451502b");
	else if (T == "IAsyncOperationWithProgress!(GipFirmwareUpdateResult, Windows.Gaming.Input.Custom.GipFirmwareUpdateProgress)")
		return uuid("bfaa48bd-155f-5112-bd86-e01d6f7cd405");
	else if (T == "IIterator!(ForceFeedbackMotor)")
		return uuid("64cf69e0-5464-5b72-bd4b-82f7c3d0386d");
	else if (T == "IIterable!(ForceFeedbackMotor)")
		return uuid("c14440d1-fea0-5147-aed8-9b85239da882");
	else if (T == "IVectorView!(ForceFeedbackMotor)")
		return uuid("5bfc5070-101d-5fbb-8d5f-ce5c23becdd9");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Gaming.Input.ForceFeedback.ForceFeedbackLoadEffectResult)")
		return uuid("f8220a41-f738-51e8-89ba-76bbd66158cb");
	else if (T == "IAsyncOperation!(Windows.Gaming.Input.ForceFeedback.ForceFeedbackLoadEffectResult)")
		return uuid("21f834fc-e845-5ab9-bf85-9534e2397798");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(ArcadeStick)")
		return uuid("d30629af-cc9d-52e1-8b1f-0ffa9629afee");
	else if (T == "IIterable!(ArcadeStick)")
		return uuid("9376f457-2da5-544a-a409-c636f5d81c35");
	else if (T == "IIterator!(FlightStick)")
		return uuid("f5fa1919-3f18-5560-bb13-cf7018ac41d5");
	else if (T == "IIterable!(FlightStick)")
		return uuid("3b7fc175-bebe-52ef-a3e9-dda75ea1acfc");
	else if (T == "IIterator!(Gamepad)")
		return uuid("246737e8-12bc-5c64-af52-06db4b13fa2f");
	else if (T == "IIterable!(Gamepad)")
		return uuid("47132ba0-6b17-5cd2-a8bd-b5d3443ccb13");
	else if (T == "IIterator!(RacingWheel)")
		return uuid("23d735b8-4d36-5377-a245-69df97c9fcd9");
	else if (T == "IIterable!(RacingWheel)")
		return uuid("9a7c3830-9a87-5287-a1e2-8a2af29cf68c");
	else if (T == "IIterator!(RawGameController)")
		return uuid("51cc88dc-66fb-55ea-9a1b-aadcd71cc08e");
	else if (T == "IIterable!(RawGameController)")
		return uuid("8f2f08cc-f4f4-5539-9357-1f07334d381f");
	else if (T == "IIterator!(UINavigationController)")
		return uuid("c10b2696-64a3-5262-bc4f-b741e5d5afab");
	else if (T == "IIterable!(UINavigationController)")
		return uuid("8dea85a0-0204-57dd-abad-90e37c0ef240");
	else if (T == "IVectorView!(ArcadeStick)")
		return uuid("becace75-d0cd-5a9c-845f-72f085503cdf");
	else if (T == "IVectorView!(FlightStick)")
		return uuid("8b9d067e-b6f5-592f-a90a-d72c3d98d4da");
	else if (T == "IVectorView!(Gamepad)")
		return uuid("eb97bb69-09c9-5a99-86b2-3e36085284d4");
	else if (T == "IVectorView!(RacingWheel)")
		return uuid("153993b2-6052-5959-91ec-900c53fef120");
	else if (T == "IVectorView!(RawGameController)")
		return uuid("779cc322-40c0-55c1-8dc5-cc6e3afe02cf");
	else if (T == "IVectorView!(UINavigationController)")
		return uuid("684b9e5a-2dc2-54fc-adf5-5ca8f6871425");
	else if (T == "EventHandler!(ArcadeStick)")
		return uuid("6afb8188-d28d-539b-bb69-ea1763fb9920");
	else if (T == "EventHandler!(FlightStick)")
		return uuid("d57470b1-cc22-5a43-8e18-5ca064aafe21");
	else if (T == "EventHandler!(Gamepad)")
		return uuid("8a7639ee-624a-501a-bb53-562d1ec11b52");
	else if (T == "EventHandler!(RacingWheel)")
		return uuid("352ec824-f64b-5353-80ea-7ff58e3b92a4");
	else if (T == "EventHandler!(RawGameController)")
		return uuid("00621c22-42e8-529f-9270-836b32931d72");
	else if (T == "EventHandler!(UINavigationController)")
		return uuid("9eaec424-75c1-5871-8da9-ce590c653045");
	else if (T == "TypedEventHandler!(IGameController, Headset)")
		return uuid("07b2f2b7-8825-5c4e-a052-fcfedf3aeea1");
	else if (T == "TypedEventHandler!(IGameController, UserChangedEventArgs)")
		return uuid("cb753f2c-2f36-5a8f-adad-057beae73aa4");
	else if (T == "IIterator!(ForceFeedbackMotor)")
		return uuid("64cf69e0-5464-5b72-bd4b-82f7c3d0386d");
	else if (T == "IIterable!(ForceFeedbackMotor)")
		return uuid("c14440d1-fea0-5147-aed8-9b85239da882");
	else if (T == "IVectorView!(ForceFeedbackMotor)")
		return uuid("5bfc5070-101d-5fbb-8d5f-ce5c23becdd9");
	else if (T == "IIterator!(GameListEntry)")
		return uuid("ed5b903e-5aeb-5d8c-9538-8306f02926c3");
	else if (T == "IIterable!(GameListEntry)")
		return uuid("42b8c8a0-3d03-5d5f-817e-4405c850f646");
	else if (T == "IVectorView!(GameListEntry)")
		return uuid("0eea1ad9-03e2-5ba9-ae02-daca432f362a");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "TypedEventHandler!(GameChatOverlayMessageSource, GameChatMessageReceivedEventArgs)")
		return uuid("fe4f13bf-689c-5fe3-b7ad-55bc57f92466");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(CharacterGrouping)")
		return uuid("57e89bbc-9220-5df2-844b-ddfe6605db5f");
	else if (T == "IIterable!(CharacterGrouping)")
		return uuid("82e3abf0-06e3-5609-ba39-c51eb2f5fae6");
	else if (T == "IVectorView!(CharacterGrouping)")
		return uuid("f7cf5a4a-2b7a-5bc9-a0c4-9dce07ff61c9");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(JapanesePhoneme)")
		return uuid("f15ca7e7-69a8-564d-9c20-4da75a773432");
	else if (T == "IIterable!(JapanesePhoneme)")
		return uuid("1aad17cb-1829-5236-8aef-0b75f8dfd7a6");
	else if (T == "IIterator!(Language)")
		return uuid("30e99ae6-f414-5243-8db2-aab38ea3f1f1");
	else if (T == "IIterable!(Language)")
		return uuid("48409a10-61b6-5db1-a69d-8abc46ac608a");
	else if (T == "IVectorView!(JapanesePhoneme)")
		return uuid("4cdc5bd0-d4aa-5b60-bf25-7144905050f9");
	else if (T == "IVectorView!(Language)")
		return uuid("144b0f3d-2d59-5dd2-b012-908ec3e06435");
	else if (T == "IVector!(Language)")
		return uuid("dcf2525a-42c0-501d-9fcb-471fae060396");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IReference!(UINT64)")
		return uuid("6755e376-53bb-568b-a11d-17239868309e");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IIterator!(IDirect3DSurface)")
		return uuid("bdfb6d0b-e785-5d5a-abd2-fe1b18c43257");
	else if (T == "IIterable!(IDirect3DSurface)")
		return uuid("cc63bf9c-e16a-5a75-a5aa-2b53f975b0b0");
	else if (T == "IVectorView!(IDirect3DSurface)")
		return uuid("1a81ec3e-5afb-5e10-92bb-c843fec70887");
	else if (T == "IIterator!(Windows.Graphics.DirectX.DirectXPixelFormat)")
		return uuid("ea016190-ac80-5840-8f58-ff434c7b2907");
	else if (T == "IIterable!(Windows.Graphics.DirectX.DirectXPixelFormat)")
		return uuid("3908f2c6-1aee-5129-b9a6-2a6e01d9507e");
	else if (T == "IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat)")
		return uuid("1edda1c2-0f6e-516c-80b8-7687dcd1280e");
	else if (T == "IIterator!(HdmiDisplayMode)")
		return uuid("d66eb831-e22c-5ee3-af45-e1c03de4bc62");
	else if (T == "IIterable!(HdmiDisplayMode)")
		return uuid("497e3d51-0ea1-5be0-8dba-8f7f4ce4fb33");
	else if (T == "IVectorView!(HdmiDisplayMode)")
		return uuid("7d0e7c64-df0e-539a-ab5f-3c260026c5ce");
	else if (T == "TypedEventHandler!(HdmiDisplayInformation, IInspectable)")
		return uuid("d109932b-9ce1-5cdd-94c7-93c60c833aa3");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "TypedEventHandler!(BrightnessOverride, IInspectable)")
		return uuid("a460214e-6620-521d-9cb9-a0a0f732ce90");
	else if (T == "TypedEventHandler!(DisplayInformation, IInspectable)")
		return uuid("86c4f619-67b6-51c7-b30d-d8cf13625327");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStream)")
		return uuid("398c4183-793d-5b00-819b-4aef92485e94");
	else if (T == "IAsyncOperation!(IRandomAccessStream)")
		return uuid("430ecece-1418-5d19-81b2-5ddb381603cc");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IIterator!(HolographicCamera)")
		return uuid("6acc8576-2fea-561d-84dd-4a1ab05fc7ed");
	else if (T == "IIterable!(HolographicCamera)")
		return uuid("b2afd154-8db0-5bb2-ad7a-684afd479264");
	else if (T == "IIterator!(HolographicCameraPose)")
		return uuid("93e27fb4-332b-591e-ae6b-6192fa0a1009");
	else if (T == "IIterable!(HolographicCameraPose)")
		return uuid("92111aff-8dcc-538e-ae3d-31fd252a0ad5");
	else if (T == "IVectorView!(HolographicCamera)")
		return uuid("01d6c0ae-ada5-50b0-8562-41fb1205bb4a");
	else if (T == "IVectorView!(HolographicCameraPose)")
		return uuid("17c5dfb1-6e87-5a17-a791-ac07f8ee9292");
	else if (T == "IReference!(Windows.Graphics.Holographic.HolographicStereoTransform)")
		return uuid("6e67ce78-cc67-52c0-b635-991db0bff5ca");
	else if (T == "TypedEventHandler!(HolographicSpace, HolographicSpaceCameraAddedEventArgs)")
		return uuid("71d80b7c-1d27-5102-83d1-4f0efc7c9d6f");
	else if (T == "TypedEventHandler!(HolographicSpace, HolographicSpaceCameraRemovedEventArgs)")
		return uuid("db68cfc3-0874-502a-a3b9-2b1fe86c67be");
	else if (T == "IReference!(Windows.Perception.Spatial.SpatialBoundingFrustum)")
		return uuid("f434face-0c36-5749-a8a0-0bb6ce78a614");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IKeyValuePair!(HSTRING, BitmapTypedValue)")
		return uuid("93621bf0-dae9-5f00-94ac-795aa943dca6");
	else if (T == "IIterator!(BitmapCodecInformation)")
		return uuid("4ff2b2db-9326-537f-b8dc-4c93d77fbb84");
	else if (T == "IIterable!(BitmapCodecInformation)")
		return uuid("2b6bdb90-a4eb-5142-b582-3ccb1edc5789");
	else if (T == "IIterator!(Windows.Graphics.Imaging.BitmapPixelFormat)")
		return uuid("7fc2e293-1084-5d45-b8b8-93e10692bcc8");
	else if (T == "IIterable!(Windows.Graphics.Imaging.BitmapPixelFormat)")
		return uuid("e924d9ed-a13e-5bdb-9ed8-65a1474dc274");
	else if (T == "IIterator!(ImageStream)")
		return uuid("4a10752d-6b1a-5fec-a59c-70389bf162a2");
	else if (T == "IIterable!(ImageStream)")
		return uuid("034ea0c4-c20e-5c0c-ba31-64212f28e650");
	else if (T == "IMapView!(HSTRING, BitmapTypedValue)")
		return uuid("9cda5a9a-8924-5b3b-8b19-894d8da99dde");
	else if (T == "IMap!(HSTRING, BitmapTypedValue)")
		return uuid("2c70ef8d-5d4c-5185-8db7-fed87728165d");
	else if (T == "IVectorView!(BitmapCodecInformation)")
		return uuid("97dfde96-ff1d-5aa1-863a-90116a31b86b");
	else if (T == "IVectorView!(Windows.Graphics.Imaging.BitmapPixelFormat)")
		return uuid("76ac4bc2-c19c-559c-b287-1694c0dc3a0d");
	else if (T == "IVectorView!(ImageStream)")
		return uuid("ab10f3e5-2a3e-5f81-b5e8-8ddddc23cca2");
	else if (T == "AsyncOperationCompletedHandler!(BitmapDecoder)")
		return uuid("bb6514f2-3cfb-566f-82bc-60aabd302d53");
	else if (T == "IAsyncOperation!(BitmapDecoder)")
		return uuid("aa94d8e9-caef-53f6-823d-91b6e8340510");
	else if (T == "AsyncOperationCompletedHandler!(BitmapEncoder)")
		return uuid("5df1afc5-478d-55dd-b317-024274062a0d");
	else if (T == "IAsyncOperation!(BitmapEncoder)")
		return uuid("151bd1c5-4675-5af5-a289-001edc66b86a");
	else if (T == "AsyncOperationCompletedHandler!(BitmapFrame)")
		return uuid("2817455a-983f-5a06-9fe4-fb9637684320");
	else if (T == "IAsyncOperation!(BitmapFrame)")
		return uuid("cb1483d1-1464-5bf9-9346-d537735dfbd6");
	else if (T == "AsyncOperationCompletedHandler!(ImageStream)")
		return uuid("29bb8288-4462-516e-a675-8c9235c42994");
	else if (T == "IAsyncOperation!(ImageStream)")
		return uuid("684165be-0011-56d6-bebf-430016d51b7a");
	else if (T == "AsyncOperationCompletedHandler!(PixelDataProvider)")
		return uuid("37bdf4be-2f39-592c-a4f7-d16a09d2b2db");
	else if (T == "IAsyncOperation!(PixelDataProvider)")
		return uuid("8c2dfeb0-6c22-5863-88d8-85c1fbc75697");
	else if (T == "AsyncOperationCompletedHandler!(SoftwareBitmap)")
		return uuid("b699b653-33ed-5e2d-a75f-02bf90e32619");
	else if (T == "IAsyncOperation!(SoftwareBitmap)")
		return uuid("c4a10980-714b-5501-8da2-dbdacce70f73");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "TypedEventHandler!(PrintManager, PrintTaskRequestedEventArgs)")
		return uuid("8a8cb877-70c5-54ce-8b42-d790e2914859");
	else if (T == "TypedEventHandler!(PrintTask, IInspectable)")
		return uuid("4cc141d4-c0d9-5220-b1ce-80fff3bd2d44");
	else if (T == "TypedEventHandler!(PrintTask, PrintTaskCompletedEventArgs)")
		return uuid("b0b02549-b9ad-5226-898a-7b563b46640c");
	else if (T == "TypedEventHandler!(PrintTask, PrintTaskProgressingEventArgs)")
		return uuid("c08d0524-5899-536c-8f46-55fdaa4cf78b");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IKeyValuePair!(HSTRING, IPrintOptionDetails)")
		return uuid("f5d9c723-a4b1-5fc8-9f78-0b95b716720b");
	else if (T == "IMapView!(HSTRING, IPrintOptionDetails)")
		return uuid("79e5168f-702a-5030-bd44-ef23d8887aed");
	else if (T == "TypedEventHandler!(PrintTaskOptionDetails, IInspectable)")
		return uuid("5c88455c-5b59-557c-8064-5e4f3d59a8ec");
	else if (T == "TypedEventHandler!(PrintTaskOptionDetails, PrintTaskOptionChangedEventArgs)")
		return uuid("1b1f456b-8821-592e-b4a7-9b4c3712518e");
	else if (T == "IIterator!(IInspectable)")
		return uuid("44a94f2d-04f8-5091-b336-be7892dd10be");
	else if (T == "IIterable!(IInspectable)")
		return uuid("092b849b-60b1-52be-a44a-6fe8e933cbe4");
	else if (T == "IVectorView!(IInspectable)")
		return uuid("a6487363-b074-5c60-ab16-866dce4ee54d");
	else if (T == "IIterator!(Printing3DBaseMaterial)")
		return uuid("dad4dd0d-59ab-501f-9d6b-a209c7d54649");
	else if (T == "IIterable!(Printing3DBaseMaterial)")
		return uuid("9a6bd130-6f22-559c-b92c-14f9f8ddda47");
	else if (T == "IIterator!(Printing3DBaseMaterialGroup)")
		return uuid("a34dc709-e2a7-5254-9dc1-cd47e85e2504");
	else if (T == "IIterable!(Printing3DBaseMaterialGroup)")
		return uuid("c08f8e70-f6ef-5469-806a-7cb601dddb67");
	else if (T == "IIterator!(Printing3DColorMaterial)")
		return uuid("5a54a4a1-4d97-58d3-bdcc-1bf38b438d6d");
	else if (T == "IIterable!(Printing3DColorMaterial)")
		return uuid("c77d4f28-7882-52b4-b3c9-7d58c8836573");
	else if (T == "IIterator!(Printing3DColorMaterialGroup)")
		return uuid("498467be-de0e-552b-b24e-8ee25ec9a486");
	else if (T == "IIterable!(Printing3DColorMaterialGroup)")
		return uuid("1bf32a86-26ab-5750-b54c-3bda67867f8a");
	else if (T == "IIterator!(Printing3DComponent)")
		return uuid("2e9eabba-184b-5c14-ae5f-eb634aa717e0");
	else if (T == "IIterable!(Printing3DComponent)")
		return uuid("516556ca-f862-59f8-8241-e0f0c177dadd");
	else if (T == "IIterator!(Printing3DComponentWithMatrix)")
		return uuid("01d2ce44-8b63-571f-b92e-bf2cf7cc6d53");
	else if (T == "IIterable!(Printing3DComponentWithMatrix)")
		return uuid("8a213648-0b81-5e23-a48e-afe9f6691cc1");
	else if (T == "IIterator!(Printing3DCompositeMaterial)")
		return uuid("b7e6b17a-a885-5c97-b29e-bf261eb5dad4");
	else if (T == "IIterable!(Printing3DCompositeMaterial)")
		return uuid("a0af2623-1b11-53cf-975d-64959386cdd3");
	else if (T == "IIterator!(Printing3DCompositeMaterialGroup)")
		return uuid("af86eea4-dd9d-5aa9-aee5-be3892124742");
	else if (T == "IIterable!(Printing3DCompositeMaterialGroup)")
		return uuid("f2ffef61-c254-58c0-8206-b3b3096be9cb");
	else if (T == "IIterator!(Printing3DMesh)")
		return uuid("16ddf132-f80d-53b2-b09f-a42ed9689fc4");
	else if (T == "IIterable!(Printing3DMesh)")
		return uuid("a8018fda-de4d-56fa-8609-fd2298bfb558");
	else if (T == "IIterator!(Printing3DModelTexture)")
		return uuid("3d473ca2-4a8c-5cbd-807f-49af1580d2ba");
	else if (T == "IIterable!(Printing3DModelTexture)")
		return uuid("94790870-6041-5d04-8699-17417117bb85");
	else if (T == "IIterator!(Printing3DMultiplePropertyMaterial)")
		return uuid("614c0a0a-bf75-56ad-a304-b79f60017b83");
	else if (T == "IIterable!(Printing3DMultiplePropertyMaterial)")
		return uuid("0dfc274e-ae4d-5bbb-93a8-7dc9f84ddac3");
	else if (T == "IIterator!(Printing3DMultiplePropertyMaterialGroup)")
		return uuid("a24bab9a-d946-5036-b1c9-1c09b793f36c");
	else if (T == "IIterable!(Printing3DMultiplePropertyMaterialGroup)")
		return uuid("23f7518e-2439-5573-a683-efca0c61a8d6");
	else if (T == "IIterator!(Printing3DTexture2CoordMaterial)")
		return uuid("72d80d63-3626-5a2f-a579-78e70aa86d46");
	else if (T == "IIterable!(Printing3DTexture2CoordMaterial)")
		return uuid("28373276-483c-5bd0-99c7-01bfa04a57d4");
	else if (T == "IIterator!(Printing3DTexture2CoordMaterialGroup)")
		return uuid("11eaecc4-6ac1-5697-9bf5-1ef617e1dfeb");
	else if (T == "IIterable!(Printing3DTexture2CoordMaterialGroup)")
		return uuid("00017a1d-96bc-5c0e-b786-594fb4d077b6");
	else if (T == "IIterator!(Printing3DTextureResource)")
		return uuid("0678d5db-8fca-5084-a851-7312fe53f735");
	else if (T == "IIterable!(Printing3DTextureResource)")
		return uuid("54e3a71d-eae0-5199-9728-fac964850ebb");
	else if (T == "IVectorView!(Printing3DBaseMaterial)")
		return uuid("ccc6f0a2-4dd9-550d-8578-330e138ada07");
	else if (T == "IVectorView!(Printing3DBaseMaterialGroup)")
		return uuid("5c686c2e-cd88-5255-a961-5b4f2bf13c70");
	else if (T == "IVectorView!(Printing3DColorMaterial)")
		return uuid("80da978e-7cc2-531f-816b-fa68aa446e8c");
	else if (T == "IVectorView!(Printing3DColorMaterialGroup)")
		return uuid("dcb0b640-8a0f-57c3-9e3e-d5a9881cc211");
	else if (T == "IVectorView!(Printing3DComponent)")
		return uuid("c3cc9d7c-b25f-5e52-9474-9d2915f44eac");
	else if (T == "IVectorView!(Printing3DComponentWithMatrix)")
		return uuid("0ed56a87-7746-5448-8d9d-dff9fa9fd760");
	else if (T == "IVectorView!(Printing3DCompositeMaterial)")
		return uuid("dc940322-2b4f-5c6a-b7f6-358ced33bc68");
	else if (T == "IVectorView!(Printing3DCompositeMaterialGroup)")
		return uuid("06715e0b-52f1-5d86-9eec-1f0797363383");
	else if (T == "IVectorView!(Printing3DMesh)")
		return uuid("4b836ce6-1d16-5e55-b1a0-61c70f29931b");
	else if (T == "IVectorView!(Printing3DModelTexture)")
		return uuid("338e034d-8832-5c05-81bf-27ab7f49264a");
	else if (T == "IVectorView!(Printing3DMultiplePropertyMaterial)")
		return uuid("ac971e5e-ac32-587b-a701-fbbe6af1b112");
	else if (T == "IVectorView!(Printing3DMultiplePropertyMaterialGroup)")
		return uuid("8513d339-12e9-5d0b-978d-fe967d051315");
	else if (T == "IVectorView!(Printing3DTexture2CoordMaterial)")
		return uuid("155500dd-f08a-5b43-8714-8bc01794ce23");
	else if (T == "IVectorView!(Printing3DTexture2CoordMaterialGroup)")
		return uuid("4d44ec40-4f39-5532-b9da-6a6f9a61a842");
	else if (T == "IVectorView!(Printing3DTextureResource)")
		return uuid("0a4964cd-d387-5d71-a71d-4f0a55b9b689");
	else if (T == "IVector!(Printing3DBaseMaterial)")
		return uuid("6a5aa59f-fe10-517b-b1a9-c685ecce1644");
	else if (T == "IVector!(Printing3DBaseMaterialGroup)")
		return uuid("2b80d2cf-5449-5c81-8226-ebfc7d72f579");
	else if (T == "IVector!(Printing3DColorMaterial)")
		return uuid("606166fd-6bf5-53a1-b1ae-c34892ef1663");
	else if (T == "IVector!(Printing3DColorMaterialGroup)")
		return uuid("7c8017f3-8365-5aa8-9fd0-a769f26e3fef");
	else if (T == "IVector!(Printing3DComponent)")
		return uuid("49e654c2-f372-582e-97cc-cb6b0fa3ba62");
	else if (T == "IVector!(Printing3DComponentWithMatrix)")
		return uuid("f09f3dd7-61e6-5a8d-9ddf-57001f705de7");
	else if (T == "IVector!(Printing3DCompositeMaterial)")
		return uuid("c3b27a95-5efc-52c7-b5de-e82e059a722e");
	else if (T == "IVector!(Printing3DCompositeMaterialGroup)")
		return uuid("1e4ccd78-b6c0-51b1-ab2b-c3422f02c24e");
	else if (T == "IVector!(Printing3DMesh)")
		return uuid("bb11be6e-b592-5bc2-9a53-0127a9b32172");
	else if (T == "IVector!(Printing3DModelTexture)")
		return uuid("4e72578f-9bea-5663-8699-e7fcad3547a7");
	else if (T == "IVector!(Printing3DMultiplePropertyMaterial)")
		return uuid("e2196da6-6a29-59a2-9dd6-93062f44baad");
	else if (T == "IVector!(Printing3DMultiplePropertyMaterialGroup)")
		return uuid("22585b94-34a1-5b6a-bae3-bf44659812f3");
	else if (T == "IVector!(Printing3DTexture2CoordMaterial)")
		return uuid("f16fbf2c-c783-5edf-ad7b-7fb7eacf1501");
	else if (T == "IVector!(Printing3DTexture2CoordMaterialGroup)")
		return uuid("7dc68e96-2a62-5e7a-85d5-4864d03591eb");
	else if (T == "IVector!(Printing3DTextureResource)")
		return uuid("120948c9-aaa5-5ee5-a133-3215d0561404");
	else if (T == "AsyncOperationCompletedHandler!(Printing3D3MFPackage)")
		return uuid("28b6b208-85a7-53f1-83ae-577a7de66a9b");
	else if (T == "IAsyncOperation!(Printing3D3MFPackage)")
		return uuid("6cf2eb38-e068-5558-94b0-0161192c5f19");
	else if (T == "AsyncOperationCompletedHandler!(Printing3DMeshVerificationResult)")
		return uuid("186bae17-5896-56de-bff4-4f176b3e6194");
	else if (T == "IAsyncOperation!(Printing3DMeshVerificationResult)")
		return uuid("0f9eb6c4-19f5-5be9-9adb-64f24af115d8");
	else if (T == "AsyncOperationCompletedHandler!(Printing3DModel)")
		return uuid("26f4d34c-a11d-5b09-9908-ade8b1b13555");
	else if (T == "IAsyncOperation!(Printing3DModel)")
		return uuid("1b27900b-10d5-53ff-9a34-4b31f31582b0");
	else if (T == "TypedEventHandler!(Print3DManager, Print3DTaskRequestedEventArgs)")
		return uuid("77c464a3-a7c6-5512-9859-412db3f66ac4");
	else if (T == "TypedEventHandler!(Print3DTask, IInspectable)")
		return uuid("c0081611-7485-58a8-88be-82e712d8c1ba");
	else if (T == "TypedEventHandler!(Print3DTask, Print3DTaskCompletedEventArgs)")
		return uuid("bccf7095-bc8e-5ff5-83c0-d5691e0aa24d");
	else if (T == "TypedEventHandler!(Print3DTask, Print3DTaskSourceChangedEventArgs)")
		return uuid("58d36055-0241-555d-af7b-9f05e5daa412");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStream)")
		return uuid("398c4183-793d-5b00-819b-4aef92485e94");
	else if (T == "IAsyncOperation!(IRandomAccessStream)")
		return uuid("430ecece-1418-5d19-81b2-5ddb381603cc");
	else if (T == "IIterator!(double)")
		return uuid("638a2cf4-f474-5318-9055-141cb909ac4b");
	else if (T == "IIterable!(double)")
		return uuid("c738964e-9c64-5bce-b5ce-61e9a282ec4a");
	else if (T == "IVectorView!(double)")
		return uuid("af7586a8-6b21-5f61-bff1-1b682293ad96");
	else if (T == "IVector!(double)")
		return uuid("f452d23c-bf05-5f3e-88e7-d17a6716b911");
	else if (T == "IIterator!(UINT32)")
		return uuid("f06a2739-9443-5ef0-b284-dc5aff3e7d10");
	else if (T == "IIterable!(UINT32)")
		return uuid("421d4b91-b13b-5f37-ae54-b5249bd80539");
	else if (T == "IVectorView!(UINT32)")
		return uuid("e5ce1a07-8d33-5007-ba64-7d2508ccf85c");
	else if (T == "IVector!(UINT32)")
		return uuid("534832ed-2a03-5604-890d-5a928cd427b9");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "AsyncOperationProgressHandler!(bool, double)")
		return uuid("cadf3784-1200-5633-8280-163849914ab3");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(bool, double)")
		return uuid("0ec5345b-b37a-5cd5-83d7-9590cdf445b5");
	else if (T == "IAsyncOperationWithProgress!(bool, double)")
		return uuid("af873c66-2df0-5a95-ab54-25634da3ffa9");
	else if (T == "IIterator!(PackageUserInformation)")
		return uuid("75660566-ae43-5858-ada6-d57ddae90277");
	else if (T == "IIterable!(PackageUserInformation)")
		return uuid("341348b9-52c8-5b57-9e91-f19f2a05b188");
	else if (T == "IIterator!(PackageVolume)")
		return uuid("a8d5b736-4e68-5ef1-9f07-f06837988c73");
	else if (T == "IIterable!(PackageVolume)")
		return uuid("a6199162-b163-56a1-9980-db0c3f4e9284");
	else if (T == "IVectorView!(PackageVolume)")
		return uuid("50b5715a-f077-53d1-896d-b132c48701f4");
	else if (T == "AsyncOperationProgressHandler!(DeploymentResult, Windows.Management.Deployment.DeploymentProgress)")
		return uuid("f1b926d1-1796-597a-9bea-6c6449d03eef");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(DeploymentResult, Windows.Management.Deployment.DeploymentProgress)")
		return uuid("6e1c7129-61e0-5d88-9fd4-f3ce65a05719");
	else if (T == "IAsyncOperationWithProgress!(DeploymentResult, Windows.Management.Deployment.DeploymentProgress)")
		return uuid("5a97aab7-b6ea-55ac-a5dc-d5b164d94e94");
	else if (T == "AsyncOperationCompletedHandler!(PackageVolume)")
		return uuid("35fee361-6cea-5e5c-8eda-34b3f22df4e7");
	else if (T == "IAsyncOperation!(PackageVolume)")
		return uuid("0315edb6-dc58-51cc-a519-44901ad2cf15");
	else if (T == "IIterator!(Uri)")
		return uuid("1c157d0f-5efe-5cec-bbd6-0c6ce9af07a5");
	else if (T == "IIterable!(Uri)")
		return uuid("b0d63b78-78ad-5e31-b6d8-e32a0e16c447");
	else if (T == "IIterator!(Package)")
		return uuid("0217f069-025c-5ee6-a87f-e782e3b623ae");
	else if (T == "IIterable!(Package)")
		return uuid("69ad6aa7-0c49-5f27-a5eb-ef4d59467b6d");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(Package)")
		return uuid("0263c4d4-195c-5dc5-a7ca-6806ceca420b");
	else if (T == "IVector!(Package)")
		return uuid("d1bb509e-6989-5c69-b1ff-d1702fe8aca3");
	else if (T == "AsyncOperationCompletedHandler!(UINT64)")
		return uuid("ee8aeb02-fb00-51fa-8f57-32583ea241f9");
	else if (T == "IAsyncOperation!(UINT64)")
		return uuid("2a70d630-0767-5f0a-a1c2-deb08126e26e");
	else if (T == "IIterator!(MdmAlert)")
		return uuid("b4a6ebea-b19f-5da5-b3d1-e859f1f4df17");
	else if (T == "IIterable!(MdmAlert)")
		return uuid("a0a617dc-210c-529f-b5e9-29aeceebb5a8");
	else if (T == "IVectorView!(MdmAlert)")
		return uuid("2b94038c-24aa-5261-80d8-c90f7970644a");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "TypedEventHandler!(NamedPolicyData, IInspectable)")
		return uuid("791a3c00-5aa2-5f0e-bb17-3480bc2d96cc");
	else if (T == "IIterator!(AudioGraphConnection)")
		return uuid("4af6a8fc-e7fb-5957-91c1-2df9600b22eb");
	else if (T == "IIterable!(AudioGraphConnection)")
		return uuid("96168d06-a51a-5480-9403-fbd7631e3b3c");
	else if (T == "IIterator!(EqualizerBand)")
		return uuid("eb4f8b6a-7928-5f2f-b7f2-7b90c084356f");
	else if (T == "IIterable!(EqualizerBand)")
		return uuid("6f76d148-023e-565a-9f09-4ad4a32ad74f");
	else if (T == "IVectorView!(AudioGraphConnection)")
		return uuid("8485aed1-9b0c-59d2-a206-699bf746c3ff");
	else if (T == "IVectorView!(EqualizerBand)")
		return uuid("48f26053-ea7d-59e1-952b-fb78af42d2e2");
	else if (T == "AsyncOperationCompletedHandler!(CreateAudioDeviceInputNodeResult)")
		return uuid("6cc56450-e4e8-59c9-83d8-63e46eacb20b");
	else if (T == "IAsyncOperation!(CreateAudioDeviceInputNodeResult)")
		return uuid("71ab4481-ec4a-5ee9-a342-3a31747829b8");
	else if (T == "AsyncOperationCompletedHandler!(CreateAudioDeviceOutputNodeResult)")
		return uuid("edbc9b59-7cae-513f-b0dc-17666d37ba77");
	else if (T == "IAsyncOperation!(CreateAudioDeviceOutputNodeResult)")
		return uuid("f810d730-de15-58e0-a5f4-c159f73669ed");
	else if (T == "AsyncOperationCompletedHandler!(CreateAudioFileInputNodeResult)")
		return uuid("504d1efd-c11c-506e-b8c9-af17c771efb5");
	else if (T == "IAsyncOperation!(CreateAudioFileInputNodeResult)")
		return uuid("473b06bf-387b-56ca-bee1-527480272b0f");
	else if (T == "AsyncOperationCompletedHandler!(CreateAudioFileOutputNodeResult)")
		return uuid("a7a95713-a08f-5fdf-89c6-9627bcf5d80a");
	else if (T == "IAsyncOperation!(CreateAudioFileOutputNodeResult)")
		return uuid("1164517d-e953-5415-a5b3-4249a969be7b");
	else if (T == "AsyncOperationCompletedHandler!(CreateAudioGraphResult)")
		return uuid("4e660bda-d438-5741-8b66-85fe72574aab");
	else if (T == "IAsyncOperation!(CreateAudioGraphResult)")
		return uuid("3e13b431-65ce-5bfb-b0aa-fac8df958b95");
	else if (T == "TypedEventHandler!(AudioFileInputNode, IInspectable)")
		return uuid("4481085b-8b8b-5520-9825-e9671da2a89f");
	else if (T == "TypedEventHandler!(AudioFrameInputNode, AudioFrameCompletedEventArgs)")
		return uuid("ad59dcfe-71b0-5e16-99c2-cd90644d8ee8");
	else if (T == "TypedEventHandler!(AudioFrameInputNode, FrameInputNodeQuantumStartedEventArgs)")
		return uuid("4530d121-bb9a-57fe-922f-a98eeedf59af");
	else if (T == "TypedEventHandler!(AudioGraph, IInspectable)")
		return uuid("e1407134-09e7-53de-b54c-8a0659397b88");
	else if (T == "TypedEventHandler!(AudioGraph, AudioGraphUnrecoverableErrorOccurredEventArgs)")
		return uuid("899670c9-dd7f-5f12-98cb-8b17fe80a47f");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.Transcoding.TranscodeFailureReason)")
		return uuid("c42ae2bf-e194-5179-b8ad-03b51c04e1da");
	else if (T == "IAsyncOperation!(Windows.Media.Transcoding.TranscodeFailureReason)")
		return uuid("02132510-3899-5257-bed9-a43e5149d28c");
	else if (T == "IIterator!(IAudioEffectDefinition)")
		return uuid("ec0f39fc-6959-5423-9e1a-f7cb8e845ca1");
	else if (T == "IIterable!(IAudioEffectDefinition)")
		return uuid("607a20bf-32b4-5b8e-a793-3024f8d3582a");
	else if (T == "IVectorView!(IAudioEffectDefinition)")
		return uuid("de9e6a7f-d28e-5ef1-916a-efa880b489d1");
	else if (T == "IVector!(IAudioEffectDefinition)")
		return uuid("2828a982-d849-5fc9-84ce-f9a4b3b4d341");
	else if (T == "AsyncOperationCompletedHandler!(VariablePhotoSequenceCapture)")
		return uuid("18a55dd3-01e3-5ae5-9b5e-c84ad40cf6b7");
	else if (T == "IAsyncOperation!(VariablePhotoSequenceCapture)")
		return uuid("0327c8bc-3148-53f3-8a3d-cdb12e49e132");
	else if (T == "TypedEventHandler!(VariablePhotoSequenceCapture, IInspectable)")
		return uuid("2210a640-0e7b-5e8f-a617-2cbb10314a5a");
	else if (T == "TypedEventHandler!(VariablePhotoSequenceCapture, VariablePhotoCapturedEventArgs)")
		return uuid("bab30230-3dcd-58e2-aac5-a45f3e6f8097");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IKeyValuePair!(HSTRING, MediaFrameSource)")
		return uuid("29f35a95-7eae-55a7-bc19-ed87baed4869");
	else if (T == "IIterator!(MediaFrameFormat)")
		return uuid("83a0cfaa-6546-5a63-8cd7-f62152a75d27");
	else if (T == "IIterable!(MediaFrameFormat)")
		return uuid("1f029a27-1123-538a-9261-8a380e12bac6");
	else if (T == "IIterator!(MediaFrameSource)")
		return uuid("d05e53cd-bbec-5fb7-8e4e-de86115b5e88");
	else if (T == "IIterable!(MediaFrameSource)")
		return uuid("0d447be3-8c91-581d-8071-17984b8b5994");
	else if (T == "IIterator!(MediaFrameSourceGroup)")
		return uuid("dc0c1f9a-b748-5cfa-9b42-a3a8fe37281a");
	else if (T == "IIterable!(MediaFrameSourceGroup)")
		return uuid("d0b71deb-76e8-5833-9623-2b1e1a8e1b72");
	else if (T == "IIterator!(MediaFrameSourceInfo)")
		return uuid("443c60d8-208e-5399-bc44-edc6fef02293");
	else if (T == "IIterable!(MediaFrameSourceInfo)")
		return uuid("2e29c5b0-6aa9-50f2-91a4-5b67a5598f2e");
	else if (T == "IMapView!(HSTRING, MediaFrameSource)")
		return uuid("534ea61f-8be7-5e93-b01b-ae1f9dd242a4");
	else if (T == "IVectorView!(MediaFrameFormat)")
		return uuid("bae2547d-3fae-55cd-b209-45c3b5b2f816");
	else if (T == "IVectorView!(MediaFrameSourceGroup)")
		return uuid("d01148ae-cccd-56eb-b2b4-a7d2acce14ec");
	else if (T == "IVectorView!(MediaFrameSourceInfo)")
		return uuid("dbdb7946-9b30-51d0-9c8c-c7105af690e0");
	else if (T == "AsyncOperationCompletedHandler!(MediaFrameReader)")
		return uuid("a6214dad-b917-5c89-a068-e32c9a7037d3");
	else if (T == "IAsyncOperation!(MediaFrameReader)")
		return uuid("a10cb14d-7935-5c87-9026-8abe792a3be5");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.Capture.Frames.MediaFrameReaderStartStatus)")
		return uuid("9f49b2e5-2f68-5c58-8d8b-12176ff6ea50");
	else if (T == "IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameReaderStartStatus)")
		return uuid("db8e251a-adc6-5753-8784-c44b4d7c5b07");
	else if (T == "AsyncOperationCompletedHandler!(MediaFrameSourceGetPropertyResult)")
		return uuid("d0577f0d-ce46-5c47-8f7c-4ae5626cc76d");
	else if (T == "IAsyncOperation!(MediaFrameSourceGetPropertyResult)")
		return uuid("80003979-4986-52a7-b227-ae6be4d2b5cd");
	else if (T == "AsyncOperationCompletedHandler!(MediaFrameSourceGroup)")
		return uuid("adf10eeb-9fc5-553b-9164-294246992a2a");
	else if (T == "IAsyncOperation!(MediaFrameSourceGroup)")
		return uuid("f3256a87-b1cf-5943-b664-9f19367d2779");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.Capture.Frames.MediaFrameSourceSetPropertyStatus)")
		return uuid("f613663a-c685-5dc0-b133-60d94303a6e3");
	else if (T == "IAsyncOperation!(Windows.Media.Capture.Frames.MediaFrameSourceSetPropertyStatus)")
		return uuid("a1507c16-5f84-586e-8ca9-224f37e0e0de");
	else if (T == "AsyncOperationCompletedHandler!(MultiSourceMediaFrameReader)")
		return uuid("69993778-a48c-50cc-a6f0-5368f58a297a");
	else if (T == "IAsyncOperation!(MultiSourceMediaFrameReader)")
		return uuid("53d56be8-f110-5226-9ce1-a8c26a572576");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReaderStartStatus)")
		return uuid("18eef24a-3332-5fee-a0f0-72ceed330645");
	else if (T == "IAsyncOperation!(Windows.Media.Capture.Frames.MultiSourceMediaFrameReaderStartStatus)")
		return uuid("a242b952-76aa-54e5-a13b-a8707c1098e1");
	else if (T == "TypedEventHandler!(MediaFrameReader, MediaFrameArrivedEventArgs)")
		return uuid("d3dd49cb-8d25-591a-80f7-8363d5c03ec9");
	else if (T == "TypedEventHandler!(MediaFrameSource, IInspectable)")
		return uuid("c7e61aa7-4716-5514-a913-ef1796b98dbd");
	else if (T == "TypedEventHandler!(MultiSourceMediaFrameReader, MultiSourceMediaFrameArrivedEventArgs)")
		return uuid("82b1ad4d-9887-56f4-9a9e-3ab18b02198c");
	else if (T == "IKeyValuePair!(GUID, IInspectable)")
		return uuid("3bda1540-d089-5a1a-8f0d-94eba8068e58");
	else if (T == "IMapView!(GUID, IInspectable)")
		return uuid("e4d2c732-bbc1-5ef4-869f-5007ceb55f6e");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IIterator!(AppBroadcastPlugIn)")
		return uuid("cf667b1a-3bb9-57ce-a38b-1e81471f8cf8");
	else if (T == "IIterable!(AppBroadcastPlugIn)")
		return uuid("c531c5b0-0223-5c9e-a8fb-20f52ea58d75");
	else if (T == "IIterator!(MediaCaptureVideoProfile)")
		return uuid("a9bc95f8-b5c0-5108-b9ed-a902339366e9");
	else if (T == "IIterable!(MediaCaptureVideoProfile)")
		return uuid("dbd49d71-e07b-5e11-824a-62ace8bdfc3e");
	else if (T == "IIterator!(MediaCaptureVideoProfileMediaDescription)")
		return uuid("b3e8378f-710c-5126-a6c9-8f489f63e15e");
	else if (T == "IIterable!(MediaCaptureVideoProfileMediaDescription)")
		return uuid("0895e56d-fe1f-5364-ab67-c597d8970b89");
	else if (T == "IVectorView!(AppBroadcastPlugIn)")
		return uuid("05afee04-1168-5677-a05e-9854b46b319b");
	else if (T == "IVectorView!(MediaCaptureVideoProfile)")
		return uuid("75626cf9-1f99-5e10-bd03-f2961e85af1f");
	else if (T == "IVectorView!(MediaCaptureVideoProfileMediaDescription)")
		return uuid("726c7c8c-789e-5fcb-b31f-f9d9d4a3ac42");
	else if (T == "AsyncOperationCompletedHandler!(AdvancedCapturedPhoto)")
		return uuid("edf3452c-d918-5c95-8e3a-245044dd70df");
	else if (T == "IAsyncOperation!(AdvancedCapturedPhoto)")
		return uuid("8f71b217-61ec-58ab-a646-eede0142d568");
	else if (T == "AsyncOperationCompletedHandler!(AdvancedPhotoCapture)")
		return uuid("d1dfaec8-eed3-5ce3-9832-18344c98fa71");
	else if (T == "IAsyncOperation!(AdvancedPhotoCapture)")
		return uuid("8eb156d9-2ce4-5ecd-81f4-a08731fb74cf");
	else if (T == "AsyncOperationCompletedHandler!(CapturedPhoto)")
		return uuid("fdb0aa78-04e1-56b3-b6fc-f4de79cd41a0");
	else if (T == "IAsyncOperation!(CapturedPhoto)")
		return uuid("af5235b1-4778-55e1-b49f-608048ea9bd9");
	else if (T == "AsyncOperationCompletedHandler!(LowLagMediaRecording)")
		return uuid("64a8f80c-e646-52bb-8f4b-2a1d6b0b8219");
	else if (T == "IAsyncOperation!(LowLagMediaRecording)")
		return uuid("4febefcc-bec0-5433-a7ba-7603d1edc7b9");
	else if (T == "AsyncOperationCompletedHandler!(LowLagPhotoCapture)")
		return uuid("6cebb368-4e84-500a-9a5f-7b9a1ade1f44");
	else if (T == "IAsyncOperation!(LowLagPhotoCapture)")
		return uuid("af24404b-7e0d-5ffe-bbc8-aaf6ffe208fc");
	else if (T == "AsyncOperationCompletedHandler!(LowLagPhotoSequenceCapture)")
		return uuid("767e0fdc-9563-572d-84e1-9caab0deb63f");
	else if (T == "IAsyncOperation!(LowLagPhotoSequenceCapture)")
		return uuid("ac9f0460-9d14-5af0-b17b-37ea2d76a80d");
	else if (T == "AsyncOperationCompletedHandler!(MediaCapturePauseResult)")
		return uuid("fe726311-26bf-51cd-bdeb-f40f8f469d0a");
	else if (T == "IAsyncOperation!(MediaCapturePauseResult)")
		return uuid("202a2618-5478-5eba-9bd3-9d83f462747e");
	else if (T == "AsyncOperationCompletedHandler!(MediaCaptureStopResult)")
		return uuid("5d4e0674-1df4-5326-ba78-72f6655d2a76");
	else if (T == "IAsyncOperation!(MediaCaptureStopResult)")
		return uuid("eb798827-a4a9-533a-9e83-0fb085b2ad36");
	else if (T == "IReference!(Windows.Media.Capture.WhiteBalanceGain)")
		return uuid("79c7838a-39e2-5287-ac3b-b118db251002");
	else if (T == "TypedEventHandler!(AdvancedPhotoCapture, IInspectable)")
		return uuid("5cb4a98f-abf1-5518-9094-26db326a5f4e");
	else if (T == "TypedEventHandler!(AdvancedPhotoCapture, OptionalReferencePhotoCapturedEventArgs)")
		return uuid("843e69ba-5702-5d97-ab81-ef078de3f9b1");
	else if (T == "TypedEventHandler!(AppBroadcastBackgroundService, AppBroadcastHeartbeatRequestedEventArgs)")
		return uuid("633c91ca-4fde-5160-9209-3fd3a403a917");
	else if (T == "TypedEventHandler!(AppBroadcastBackgroundServiceSignInInfo, AppBroadcastSignInStateChangedEventArgs)")
		return uuid("e2672c1a-a3d9-56f3-8a77-20d30873ce87");
	else if (T == "TypedEventHandler!(AppBroadcastBackgroundServiceStreamInfo, IInspectable)")
		return uuid("73c8ec4b-f104-5536-b8b4-4d9aad61c9b4");
	else if (T == "TypedEventHandler!(AppBroadcastBackgroundServiceStreamInfo, AppBroadcastStreamStateChangedEventArgs)")
		return uuid("0c110cb8-b08a-5c07-b295-229049a46c22");
	else if (T == "TypedEventHandler!(AppBroadcastPreview, AppBroadcastPreviewStateChangedEventArgs)")
		return uuid("41d8b8e1-dce7-5ebc-940f-de7dd2a62ab5");
	else if (T == "TypedEventHandler!(AppBroadcastPreviewStreamReader, IInspectable)")
		return uuid("7918f32c-187f-5f0f-b80e-6fcaaa5e14b9");
	else if (T == "TypedEventHandler!(AppBroadcastState, IInspectable)")
		return uuid("a9b0513c-d638-5c5f-8051-791d7aa2d566");
	else if (T == "TypedEventHandler!(AppBroadcastState, AppBroadcastCameraCaptureStateChangedEventArgs)")
		return uuid("b59aa695-b324-5b43-815b-8ffda6013816");
	else if (T == "TypedEventHandler!(AppBroadcastState, AppBroadcastMicrophoneCaptureStateChangedEventArgs)")
		return uuid("f64d996a-3859-5174-97b1-e33d56dfca3a");
	else if (T == "TypedEventHandler!(AppBroadcastState, AppBroadcastPlugInStateChangedEventArgs)")
		return uuid("373d850e-045b-52a5-92da-c22f924b79fb");
	else if (T == "TypedEventHandler!(AppBroadcastState, AppBroadcastStreamStateChangedEventArgs)")
		return uuid("2545fbd2-3fb6-5004-a475-56c059f3d75a");
	else if (T == "TypedEventHandler!(AppBroadcastState, AppBroadcastViewerCountChangedEventArgs)")
		return uuid("16a22a27-61c2-56c2-93e5-18d6681ceeb4");
	else if (T == "TypedEventHandler!(AppBroadcastStreamReader, IInspectable)")
		return uuid("66d1378b-0e04-5801-8bdd-feb1081bbecb");
	else if (T == "TypedEventHandler!(AppCapture, IInspectable)")
		return uuid("f5cb24b5-ff00-58df-b460-17bbf2cd64d3");
	else if (T == "TypedEventHandler!(AppCaptureRecordOperation, AppCaptureDurationGeneratedEventArgs)")
		return uuid("ab6419b5-9917-5275-9876-9e46b9abada7");
	else if (T == "TypedEventHandler!(AppCaptureRecordOperation, AppCaptureFileGeneratedEventArgs)")
		return uuid("f00f69e5-9ee6-5119-9c39-f279f9ffd908");
	else if (T == "TypedEventHandler!(AppCaptureRecordOperation, AppCaptureRecordingStateChangedEventArgs)")
		return uuid("227cbf02-2dfb-5425-85b1-0d62ce5d1243");
	else if (T == "TypedEventHandler!(AppCaptureState, IInspectable)")
		return uuid("b74ae481-777b-5bc9-83da-562d905a43f1");
	else if (T == "TypedEventHandler!(AppCaptureState, AppCaptureMicrophoneCaptureStateChangedEventArgs)")
		return uuid("0b28a1a3-372e-50e9-a613-37b97cfd7a68");
	else if (T == "TypedEventHandler!(GameBarServices, GameBarServicesCommandEventArgs)")
		return uuid("0dab4f7e-bfec-59e1-82cf-ebf64b1db4f3");
	else if (T == "TypedEventHandler!(GameBarServicesManager, GameBarServicesManagerGameBarServicesCreatedEventArgs)")
		return uuid("2f85b809-7d8b-5be4-9a69-81386d874c7f");
	else if (T == "TypedEventHandler!(LowLagPhotoSequenceCapture, PhotoCapturedEventArgs)")
		return uuid("b98aab3a-fe80-5b27-88c3-e77ff585a96b");
	else if (T == "TypedEventHandler!(MediaCapture, IInspectable)")
		return uuid("44c588f1-1bb7-5e12-8413-3cf0373c0bc8");
	else if (T == "TypedEventHandler!(MediaCapture, MediaCaptureDeviceExclusiveControlStatusChangedEventArgs)")
		return uuid("5c91f8ba-b379-53ff-a288-24e7883bf592");
	else if (T == "TypedEventHandler!(MediaCapture, MediaCaptureFocusChangedEventArgs)")
		return uuid("0561d9e8-0290-5332-b15e-b0d51abe737c");
	else if (T == "TypedEventHandler!(MediaCapture, PhotoConfirmationCapturedEventArgs)")
		return uuid("37dc3b13-b096-5f43-8104-f0dc4302e2b5");
	else if (T == "IReference!(Windows.Foundation.Rect)")
		return uuid("80423f11-054f-5eac-afd3-63b6ce15e77b");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "AsyncOperationCompletedHandler!(UINT32)")
		return uuid("9343b6e7-e3d2-5e4a-ab2d-2bce4919a6a4");
	else if (T == "IAsyncOperation!(UINT32)")
		return uuid("ef60385f-be78-584b-aaef-7829ada2b0de");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IReference!(bool)")
		return uuid("3c00fd60-2950-5939-a21a-2d12c5a01b8a");
	else if (T == "AsyncOperationCompletedHandler!(StorageFile)")
		return uuid("e521c894-2c26-5946-9e61-2b5e188d01ed");
	else if (T == "IAsyncOperation!(StorageFile)")
		return uuid("5e52f8ce-aced-5a42-95b4-f674dd84885e");
	else if (T == "IReference!(float)")
		return uuid("719cc2ba-3e76-5def-9f1a-38d85a145ea8");
	else if (T == "IReference!(Windows.Media.Devices.CaptureSceneMode)")
		return uuid("e20596aa-0bbe-5203-be6b-6b71ff5b0843");
	else if (T == "IReference!(Windows.Media.Devices.MediaCaptureFocusState)")
		return uuid("58820185-5da0-5faa-86da-9bd9f03974fa");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IKeyValuePair!(GUID, IInspectable)")
		return uuid("3bda1540-d089-5a1a-8f0d-94eba8068e58");
	else if (T == "IMapView!(GUID, IInspectable)")
		return uuid("e4d2c732-bbc1-5ef4-869f-5007ceb55f6e");
	else if (T == "IMap!(GUID, IInspectable)")
		return uuid("5ee3189c-7dbf-5998-ad07-5414fb82567c");
	else if (T == "AsyncOperationCompletedHandler!(VariablePhotoSequenceCapture)")
		return uuid("18a55dd3-01e3-5ae5-9b5e-c84ad40cf6b7");
	else if (T == "IAsyncOperation!(VariablePhotoSequenceCapture)")
		return uuid("0327c8bc-3148-53f3-8a3d-cdb12e49e132");
	else if (T == "AsyncOperationCompletedHandler!(IMediaExtension)")
		return uuid("9c1b578e-fb7d-5bab-ba39-86387fe533b6");
	else if (T == "IAsyncOperation!(IMediaExtension)")
		return uuid("f5cb3303-1c1f-5d30-b402-efa192e80c49");
	else if (T == "AsyncOperationCompletedHandler!(VideoFrame)")
		return uuid("6086f2fb-4a29-54ca-b6a3-f2391a03bc3b");
	else if (T == "IAsyncOperation!(VideoFrame)")
		return uuid("f12e515d-ac45-5153-96b2-ce53ab594a57");
	else if (T == "IKeyValuePair!(HSTRING, MediaFrameSource)")
		return uuid("29f35a95-7eae-55a7-bc19-ed87baed4869");
	else if (T == "IMapView!(HSTRING, MediaFrameSource)")
		return uuid("534ea61f-8be7-5e93-b01b-ae1f9dd242a4");
	else if (T == "AsyncOperationCompletedHandler!(MediaFrameReader)")
		return uuid("a6214dad-b917-5c89-a068-e32c9a7037d3");
	else if (T == "IAsyncOperation!(MediaFrameReader)")
		return uuid("a10cb14d-7935-5c87-9026-8abe792a3be5");
	else if (T == "IIterator!(MediaFrameSource)")
		return uuid("d05e53cd-bbec-5fb7-8e4e-de86115b5e88");
	else if (T == "IIterable!(MediaFrameSource)")
		return uuid("0d447be3-8c91-581d-8071-17984b8b5994");
	else if (T == "AsyncOperationCompletedHandler!(MultiSourceMediaFrameReader)")
		return uuid("69993778-a48c-50cc-a6f0-5368f58a297a");
	else if (T == "IAsyncOperation!(MultiSourceMediaFrameReader)")
		return uuid("53d56be8-f110-5226-9ce1-a8c26a572576");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "IIterator!(CastingSource)")
		return uuid("3f6c93e9-cc77-5ef4-b2b7-25cfcfc09720");
	else if (T == "IIterable!(CastingSource)")
		return uuid("1abb2cc9-46a2-58b1-91aa-28699d66d1ab");
	else if (T == "IVectorView!(CastingSource)")
		return uuid("7828da61-dea4-5485-b27a-8f78e0472402");
	else if (T == "IVector!(CastingSource)")
		return uuid("c2e3dea8-92e0-50af-9c93-83b3e86b73b4");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.Casting.CastingConnectionErrorStatus)")
		return uuid("7216a94a-a10a-5763-8e96-bf33c582ed92");
	else if (T == "IAsyncOperation!(Windows.Media.Casting.CastingConnectionErrorStatus)")
		return uuid("25c821bc-deb8-5850-8af2-d3ac35426bd2");
	else if (T == "AsyncOperationCompletedHandler!(CastingDevice)")
		return uuid("f0c69b9e-14cb-510a-8ef0-7e86d771baaf");
	else if (T == "IAsyncOperation!(CastingDevice)")
		return uuid("1b4ee058-4c69-5e70-8834-c1d171cc1b22");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.Casting.CastingPlaybackTypes)")
		return uuid("b55e550c-dfa8-50be-be8f-5d42c9dac120");
	else if (T == "IAsyncOperation!(Windows.Media.Casting.CastingPlaybackTypes)")
		return uuid("dff10e53-4c5e-5dba-9269-cd61881bb8b3");
	else if (T == "TypedEventHandler!(CastingConnection, IInspectable)")
		return uuid("f1576170-9b08-5a9b-87d2-c1ac47bc6681");
	else if (T == "TypedEventHandler!(CastingConnection, CastingConnectionErrorOccurredEventArgs)")
		return uuid("78afbbd0-9811-5f0e-9566-47c3e8cdd929");
	else if (T == "TypedEventHandler!(CastingDevicePicker, IInspectable)")
		return uuid("a64b972b-aa63-5c61-9cde-cd6ffea8a247");
	else if (T == "TypedEventHandler!(CastingDevicePicker, CastingDeviceSelectedEventArgs)")
		return uuid("b3655b33-c4ad-5f4c-a187-b2e4c770a16b");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.ContentRestrictions.ContentAccessRestrictionLevel)")
		return uuid("cf61be5d-40c3-5484-846a-3f82b8ba5738");
	else if (T == "IAsyncOperation!(Windows.Media.ContentRestrictions.ContentAccessRestrictionLevel)")
		return uuid("860c0179-be01-546d-a9ce-5956464c98ab");
	else if (T == "AsyncOperationCompletedHandler!(ContentRestrictionsBrowsePolicy)")
		return uuid("72ae1a16-c705-54e7-b1c4-fc05a0e07a77");
	else if (T == "IAsyncOperation!(ContentRestrictionsBrowsePolicy)")
		return uuid("ae3399b2-c7d5-5f1b-9fb9-f8bd81e9f9be");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(AudioStreamDescriptor)")
		return uuid("a61a11cd-b32e-518b-a6a7-5472cbe00e83");
	else if (T == "IIterable!(AudioStreamDescriptor)")
		return uuid("a3e2c972-a171-5b94-8389-e983ebc3f3b9");
	else if (T == "IIterator!(AudioTrack)")
		return uuid("138064ef-8693-5303-8a75-eba494d06342");
	else if (T == "IIterable!(AudioTrack)")
		return uuid("b3be50a8-9856-5656-ab6d-cd58f9de0a4f");
	else if (T == "IIterator!(CodecInfo)")
		return uuid("d4141d5b-23f6-564b-b85c-5d4609f81863");
	else if (T == "IIterable!(CodecInfo)")
		return uuid("552f7709-3bc3-59fb-93e6-1ebd28d3c008");
	else if (T == "IIterator!(IMediaCue)")
		return uuid("1a594dc8-a64b-55ed-9b34-7b274e1d5c70");
	else if (T == "IIterable!(IMediaCue)")
		return uuid("737a2098-41bf-5d9f-a1d2-2f171c578b3c");
	else if (T == "IIterator!(MseSourceBuffer)")
		return uuid("53076581-01a9-51b9-98cc-5265504cd352");
	else if (T == "IIterable!(MseSourceBuffer)")
		return uuid("5ca0da86-6307-558a-865f-3a1ef9fe56b3");
	else if (T == "IIterator!(Windows.Media.Core.MseTimeRange)")
		return uuid("92a36852-fbb3-5b48-b4ec-01dda0972a5c");
	else if (T == "IIterable!(Windows.Media.Core.MseTimeRange)")
		return uuid("ed0c6e08-e22f-5ac2-ba14-e0ff1df3467f");
	else if (T == "IIterator!(TimedMetadataTrack)")
		return uuid("859354e5-077b-5d53-b297-1a07b97f09c3");
	else if (T == "IIterable!(TimedMetadataTrack)")
		return uuid("150a4454-03bb-5dd1-8153-6a600e851f71");
	else if (T == "IIterator!(TimedTextLine)")
		return uuid("84c4fcac-86d8-5c74-a138-d9bf37b749ec");
	else if (T == "IIterable!(TimedTextLine)")
		return uuid("aec710ad-3bd8-5a59-ae77-e7fc46fb105b");
	else if (T == "IIterator!(TimedTextSource)")
		return uuid("bdded7c0-5c73-57f5-9b08-652933586dd5");
	else if (T == "IIterable!(TimedTextSource)")
		return uuid("4fc57282-0edf-5d85-9d89-ddc2a5692c13");
	else if (T == "IIterator!(TimedTextSubformat)")
		return uuid("65105e50-865c-591d-9bf4-96237de2533f");
	else if (T == "IIterable!(TimedTextSubformat)")
		return uuid("cee3ae43-c93c-56f7-8c55-9024ded72c76");
	else if (T == "IIterator!(VideoStreamDescriptor)")
		return uuid("da51ab3c-3c64-545c-a3f4-f9b055aaf7d9");
	else if (T == "IIterable!(VideoStreamDescriptor)")
		return uuid("3acbf03c-0a79-5823-aaa9-d88bc3f8f594");
	else if (T == "IIterator!(VideoTrack)")
		return uuid("a7c8d22c-b59d-5d7a-8d70-67f898a0b877");
	else if (T == "IIterable!(VideoTrack)")
		return uuid("84413442-a2e3-5e0f-936d-bc40b0fb2dcd");
	else if (T == "IVectorView!(TimedMetadataTrack)")
		return uuid("0313ae7a-2803-5d45-b5a1-a0fc5cd55e7c");
	else if (T == "IVector!(TimedMetadataTrack)")
		return uuid("c46d9e34-ea11-5bb2-9744-1617417ef016");
	else if (T == "VectorChangedEventHandler!(TimedMetadataTrack)")
		return uuid("bd1dc81c-23c4-5b4b-ac38-c5d34cdf34e4");
	else if (T == "IObservableVector!(TimedMetadataTrack)")
		return uuid("98ebeba8-6659-5af2-be4f-32fdeede3b77");
	else if (T == "IVectorView!(TimedTextSource)")
		return uuid("edcd634e-b7e4-5ff8-b8c2-8493849b2c0d");
	else if (T == "IVector!(TimedTextSource)")
		return uuid("d0a72378-5432-50bf-93c3-c5f35fc93517");
	else if (T == "VectorChangedEventHandler!(TimedTextSource)")
		return uuid("e12e6261-b198-56e0-9822-ba2d3bb6f8fe");
	else if (T == "IObservableVector!(TimedTextSource)")
		return uuid("95e6c852-6e9c-50a9-8935-054320242945");
	else if (T == "IVectorView!(AudioStreamDescriptor)")
		return uuid("340f4fed-1288-5b89-be7c-c355fe1ce4d9");
	else if (T == "IVectorView!(AudioTrack)")
		return uuid("e71ffa4a-14a7-5068-891c-6e717af8bf8d");
	else if (T == "IVectorView!(CodecInfo)")
		return uuid("1fd24a93-c3da-513d-b216-0c4c7f412b88");
	else if (T == "IVectorView!(IMediaCue)")
		return uuid("996421a1-625c-5d92-ad68-8b3911d294b0");
	else if (T == "IVectorView!(MseSourceBuffer)")
		return uuid("85318263-1360-5c78-b0ad-52d6b45b19f3");
	else if (T == "IVectorView!(Windows.Media.Core.MseTimeRange)")
		return uuid("87ff1dd1-7ec3-5bc5-b558-0425d806bf4b");
	else if (T == "IVectorView!(TimedTextLine)")
		return uuid("9532b5cc-73fc-5e3a-8531-794c30d7a1ae");
	else if (T == "IVectorView!(TimedTextSubformat)")
		return uuid("411a0e26-42e2-5e65-b9c4-980c4c3f31f7");
	else if (T == "IVectorView!(VideoStreamDescriptor)")
		return uuid("e965c8af-d211-52f0-838b-4637469da7af");
	else if (T == "IVectorView!(VideoTrack)")
		return uuid("200c6224-0b43-54fb-995f-fd8688bf24de");
	else if (T == "IVector!(AudioStreamDescriptor)")
		return uuid("45afc129-988c-5f1e-9c17-6e34b917cd1b");
	else if (T == "IVector!(TimedTextLine)")
		return uuid("284f0441-e96d-58ad-9188-7bf46514dfcc");
	else if (T == "IVector!(TimedTextSubformat)")
		return uuid("8786f392-f369-57ea-a16e-75870246a8c9");
	else if (T == "IVector!(VideoStreamDescriptor)")
		return uuid("1fb064b3-636c-5988-9c97-02a9b76150f6");
	else if (T == "AsyncOperationCompletedHandler!(MediaStreamSample)")
		return uuid("df7aacc9-a86c-5c7d-bf98-cc371c97c67b");
	else if (T == "IAsyncOperation!(MediaStreamSample)")
		return uuid("3cdc5e86-4ada-5ef7-967a-e137a4621907");
	else if (T == "TypedEventHandler!(AudioTrack, AudioTrackOpenFailedEventArgs)")
		return uuid("b5b7e554-2476-5667-9c9a-1c7a7d09ace2");
	else if (T == "TypedEventHandler!(FaceDetectionEffect, FaceDetectedEventArgs)")
		return uuid("01f0d7a6-f9bd-5bc1-aaa9-dff396f72f87");
	else if (T == "TypedEventHandler!(ISingleSelectMediaTrackList, IInspectable)")
		return uuid("21eb6e39-728a-56a9-8dce-062ba4c81bf5");
	else if (T == "TypedEventHandler!(MediaBinder, MediaBindingEventArgs)")
		return uuid("5b133719-ee98-59b2-b432-1c9a5a56ab05");
	else if (T == "TypedEventHandler!(MediaBindingEventArgs, IInspectable)")
		return uuid("3f3b10e2-b2e9-55c6-abb3-4a258072ebb9");
	else if (T == "TypedEventHandler!(MediaSource, MediaSourceOpenOperationCompletedEventArgs)")
		return uuid("425d53e3-fba6-5ea3-b713-db4d70787436");
	else if (T == "TypedEventHandler!(MediaSource, MediaSourceStateChangedEventArgs)")
		return uuid("2274d3a6-1ba0-5230-bb86-de90058b6403");
	else if (T == "TypedEventHandler!(MediaStreamSample, IInspectable)")
		return uuid("d4dc5ef1-c1cb-5c32-803d-f2f9a7ad9916");
	else if (T == "TypedEventHandler!(MediaStreamSource, IInspectable)")
		return uuid("6fd6ded7-421b-5ef5-8bf5-edea45401665");
	else if (T == "TypedEventHandler!(MediaStreamSource, MediaStreamSourceClosedEventArgs)")
		return uuid("238cc251-d0b8-5a34-81d4-0dd1f936a20d");
	else if (T == "TypedEventHandler!(MediaStreamSource, MediaStreamSourceSampleRenderedEventArgs)")
		return uuid("9d812c70-9f0d-5ad5-8274-f760c9ca0c38");
	else if (T == "TypedEventHandler!(MediaStreamSource, MediaStreamSourceSampleRequestedEventArgs)")
		return uuid("4f1a3ae3-b8b7-5689-901d-b0b623f5a172");
	else if (T == "TypedEventHandler!(MediaStreamSource, MediaStreamSourceStartingEventArgs)")
		return uuid("a93d5846-c660-586e-b6b5-a52fb81f9240");
	else if (T == "TypedEventHandler!(MediaStreamSource, MediaStreamSourceSwitchStreamsRequestedEventArgs)")
		return uuid("452b2e4a-5511-5b3c-8a8e-ee659576a4c1");
	else if (T == "TypedEventHandler!(MseSourceBuffer, IInspectable)")
		return uuid("187fd3d7-bb9d-541a-94fd-43c31dd84a67");
	else if (T == "TypedEventHandler!(MseSourceBufferList, IInspectable)")
		return uuid("0ff01695-fbb2-5e95-8ec7-da17d8e99f16");
	else if (T == "TypedEventHandler!(MseStreamSource, IInspectable)")
		return uuid("724bf4ef-de7a-5dbd-815e-522a87bc3344");
	else if (T == "TypedEventHandler!(SceneAnalysisEffect, SceneAnalyzedEventArgs)")
		return uuid("48630f8c-dbde-569e-a0c8-7588d1d2bd03");
	else if (T == "TypedEventHandler!(TimedMetadataTrack, MediaCueEventArgs)")
		return uuid("4aac9411-c355-5c95-8c78-5a0f5ca1a54d");
	else if (T == "TypedEventHandler!(TimedMetadataTrack, TimedMetadataTrackFailedEventArgs)")
		return uuid("8dc73162-255b-532e-b0c7-9a6d70b4bb9e");
	else if (T == "TypedEventHandler!(TimedTextSource, TimedTextSourceResolveResultEventArgs)")
		return uuid("0220562a-5de4-5ad2-ac20-6cd26f111745");
	else if (T == "TypedEventHandler!(VideoStabilizationEffect, VideoStabilizationEffectEnabledChangedEventArgs)")
		return uuid("897592e2-bfcc-5f16-8834-2c9c4f20559b");
	else if (T == "TypedEventHandler!(VideoTrack, VideoTrackOpenFailedEventArgs)")
		return uuid("b1e4bd43-541b-53f3-ad6c-ddaac4813023");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IIterator!(DetectedFace)")
		return uuid("a0cf090e-0340-531f-898b-c21eafb9f4ae");
	else if (T == "IIterable!(DetectedFace)")
		return uuid("25347323-3556-5cbb-9855-2b5856437f4d");
	else if (T == "IVectorView!(DetectedFace)")
		return uuid("39ef4411-0618-5b8d-8ea2-81c637f823f8");
	else if (T == "IIterator!(FrameController)")
		return uuid("1440dc88-63ff-5a01-bb93-390c76742488");
	else if (T == "IIterable!(FrameController)")
		return uuid("bd8eeadc-2dd9-5ad8-ac5d-f3b13b94b9c2");
	else if (T == "IVectorView!(FrameController)")
		return uuid("fcd6a2a3-b6ff-5572-912b-99ebaf95165d");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IKeyValuePair!(GUID, IInspectable)")
		return uuid("3bda1540-d089-5a1a-8f0d-94eba8068e58");
	else if (T == "IMapView!(GUID, IInspectable)")
		return uuid("e4d2c732-bbc1-5ef4-869f-5007ceb55f6e");
	else if (T == "IMap!(GUID, IInspectable)")
		return uuid("5ee3189c-7dbf-5998-ad07-5414fb82567c");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(FrameController)")
		return uuid("1440dc88-63ff-5a01-bb93-390c76742488");
	else if (T == "IIterable!(FrameController)")
		return uuid("bd8eeadc-2dd9-5ad8-ac5d-f3b13b94b9c2");
	else if (T == "IVectorView!(FrameController)")
		return uuid("fcd6a2a3-b6ff-5572-912b-99ebaf95165d");
	else if (T == "IVector!(FrameController)")
		return uuid("1c8f8276-b89a-5093-a1ed-af49dfb72a89");
	else if (T == "IReference!(bool)")
		return uuid("3c00fd60-2950-5939-a21a-2d12c5a01b8a");
	else if (T == "IReference!(float)")
		return uuid("719cc2ba-3e76-5def-9f1a-38d85a145ea8");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IIterator!(Windows.Media.Devices.AdvancedPhotoMode)")
		return uuid("e6d0bc9d-e1cb-5ed0-8ede-7d037bcc2e07");
	else if (T == "IIterable!(Windows.Media.Devices.AdvancedPhotoMode)")
		return uuid("7d090784-70a9-570c-be82-0d0890318975");
	else if (T == "IIterator!(AudioDeviceModule)")
		return uuid("b4cbbfb7-9851-56c9-839d-a10a8b1bb234");
	else if (T == "IIterable!(AudioDeviceModule)")
		return uuid("7eeb51c3-d70e-548a-85c2-3cf71b4a124c");
	else if (T == "IIterator!(Windows.Media.Devices.AutoFocusRange)")
		return uuid("07489ac5-3c71-59c6-b7dc-7f21341c2f71");
	else if (T == "IIterable!(Windows.Media.Devices.AutoFocusRange)")
		return uuid("751664c6-f8d6-50a3-ab80-137c6d908c55");
	else if (T == "IIterator!(Windows.Media.Devices.CaptureSceneMode)")
		return uuid("aafa6d7a-2f7f-5dd7-aa0a-265731a2b3b3");
	else if (T == "IIterable!(Windows.Media.Devices.CaptureSceneMode)")
		return uuid("16d26b98-2cbc-52f0-ab64-1723714418e9");
	else if (T == "IIterator!(Windows.Media.Devices.FocusMode)")
		return uuid("f9a43cd4-b300-541f-af79-3de3400e16af");
	else if (T == "IIterable!(Windows.Media.Devices.FocusMode)")
		return uuid("561bc21f-4ae2-580a-a216-0ad48f373a4c");
	else if (T == "IIterator!(Windows.Media.Devices.FocusPreset)")
		return uuid("d3ebc8e9-f0c5-51c0-bb86-bdea0a6946fb");
	else if (T == "IIterable!(Windows.Media.Devices.FocusPreset)")
		return uuid("26ba711b-3a32-5216-bc34-61ecafbebdc1");
	else if (T == "IIterator!(Windows.Media.Devices.HdrVideoMode)")
		return uuid("3db61d13-0f30-5d2d-99cb-30c7b9009878");
	else if (T == "IIterable!(Windows.Media.Devices.HdrVideoMode)")
		return uuid("1d9679a7-2d06-5294-ac67-f9cd3561dcb8");
	else if (T == "IIterator!(Windows.Media.Devices.IsoSpeedPreset)")
		return uuid("1b33af76-980b-5348-916a-793f61b555a0");
	else if (T == "IIterable!(Windows.Media.Devices.IsoSpeedPreset)")
		return uuid("94839abe-9712-545a-a94d-a567a3e8dfb7");
	else if (T == "IIterator!(Windows.Media.Devices.ManualFocusDistance)")
		return uuid("b02944e1-f649-511e-80dd-2e2b20379deb");
	else if (T == "IIterable!(Windows.Media.Devices.ManualFocusDistance)")
		return uuid("cf8cbeb1-2a4c-522d-962f-84c31a598d68");
	else if (T == "IIterator!(Windows.Media.Devices.OpticalImageStabilizationMode)")
		return uuid("4a165d46-cf19-5a03-bb54-63fc2b4ed39b");
	else if (T == "IIterable!(Windows.Media.Devices.OpticalImageStabilizationMode)")
		return uuid("323d7734-94c2-544d-a560-56560fe68819");
	else if (T == "IIterator!(RegionOfInterest)")
		return uuid("8eb80e4e-9691-594f-8b3d-f52ecc0f7837");
	else if (T == "IIterable!(RegionOfInterest)")
		return uuid("d73144c7-9d75-5dfb-8040-626202dcf454");
	else if (T == "IIterator!(Windows.Media.Devices.ZoomTransitionMode)")
		return uuid("80eb468a-fdc4-5c89-99b8-8d476264e211");
	else if (T == "IIterable!(Windows.Media.Devices.ZoomTransitionMode)")
		return uuid("db656915-8fac-5fb2-98e0-0e97421656c5");
	else if (T == "IVectorView!(Windows.Media.Devices.AdvancedPhotoMode)")
		return uuid("d05843b6-03c8-523e-b6fb-1fcb03218a54");
	else if (T == "IVectorView!(AudioDeviceModule)")
		return uuid("b9f55617-48ec-5ad7-95ca-33395284f28b");
	else if (T == "IVectorView!(Windows.Media.Devices.AutoFocusRange)")
		return uuid("5df64825-c9e1-525f-9aeb-3c0f5f805f26");
	else if (T == "IVectorView!(Windows.Media.Devices.CaptureSceneMode)")
		return uuid("9b915d69-e718-5b48-bb94-54bdf3737ea5");
	else if (T == "IVectorView!(Windows.Media.Devices.FocusMode)")
		return uuid("c877975c-f3c3-5b3d-93e4-5787be9b7f58");
	else if (T == "IVectorView!(Windows.Media.Devices.FocusPreset)")
		return uuid("d8a495e3-d7d4-5e9f-a9c2-6b250655a2e0");
	else if (T == "IVectorView!(Windows.Media.Devices.HdrVideoMode)")
		return uuid("ad0a4bbd-7630-53a4-aa9b-35a8c7d4958c");
	else if (T == "IVectorView!(Windows.Media.Devices.IsoSpeedPreset)")
		return uuid("ef6c9fe3-06f9-5eff-98a8-917d9644c946");
	else if (T == "IVectorView!(Windows.Media.Devices.ManualFocusDistance)")
		return uuid("85f7663b-5467-5736-8d34-34395aa6d123");
	else if (T == "IVectorView!(Windows.Media.Devices.OpticalImageStabilizationMode)")
		return uuid("8c2658d8-acaa-5a80-b259-1ba0697c6138");
	else if (T == "IVectorView!(Windows.Media.Devices.ZoomTransitionMode)")
		return uuid("4d556155-d021-5a46-9a1c-f401d61b8529");
	else if (T == "AsyncOperationCompletedHandler!(ModuleCommandResult)")
		return uuid("cb786404-f2e8-5e0b-bf12-39e31483cfae");
	else if (T == "IAsyncOperation!(ModuleCommandResult)")
		return uuid("2e1f3d72-a58d-5b0a-b42d-3660c04cfeeb");
	else if (T == "IReference!(Windows.Media.Devices.CaptureSceneMode)")
		return uuid("e20596aa-0bbe-5203-be6b-6b71ff5b0843");
	else if (T == "IReference!(Windows.Media.Devices.ManualFocusDistance)")
		return uuid("b0060b8a-1105-5ad4-963d-f6cf1905d349");
	else if (T == "IReference!(Windows.Media.Devices.MediaCaptureFocusState)")
		return uuid("58820185-5da0-5faa-86da-9bd9f03974fa");
	else if (T == "TypedEventHandler!(IInspectable, DefaultAudioCaptureDeviceChangedEventArgs)")
		return uuid("97d07327-2c78-57bc-98e6-a24cd024cf5b");
	else if (T == "TypedEventHandler!(IInspectable, DefaultAudioRenderDeviceChangedEventArgs)")
		return uuid("fd732aca-dafc-5b7d-bf72-b560b78d260c");
	else if (T == "TypedEventHandler!(AudioDeviceModulesManager, AudioDeviceModuleNotificationEventArgs)")
		return uuid("b2f6b1fd-7092-5724-b2ce-91b1176e80e1");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IIterator!(IMediaEncodingProperties)")
		return uuid("7c094aec-c8f3-5f49-99c7-b66d8414200e");
	else if (T == "IIterable!(IMediaEncodingProperties)")
		return uuid("d7fc75d5-3492-5bbb-9b34-dac3e24e79d0");
	else if (T == "IVectorView!(IMediaEncodingProperties)")
		return uuid("0f6c3b8b-5818-5cbf-bf26-6616bfc308c4");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.DialProtocol.DialAppLaunchResult)")
		return uuid("164c0aa8-3d2b-579b-94a3-cc4925c695ec");
	else if (T == "IAsyncOperation!(Windows.Media.DialProtocol.DialAppLaunchResult)")
		return uuid("4512c15e-1fc4-5648-bd49-51533a3fe6b4");
	else if (T == "AsyncOperationCompletedHandler!(DialAppStateDetails)")
		return uuid("38c62dd5-1f16-55c0-8ec7-ca0fc841d614");
	else if (T == "IAsyncOperation!(DialAppStateDetails)")
		return uuid("e50a07a2-2cef-5fc7-b14c-d6dd8517c58e");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.DialProtocol.DialAppStopResult)")
		return uuid("c755f54a-ef7b-563a-9b14-462e72d9665a");
	else if (T == "IAsyncOperation!(Windows.Media.DialProtocol.DialAppStopResult)")
		return uuid("8598f24e-0d62-517a-961c-31fca73acedd");
	else if (T == "AsyncOperationCompletedHandler!(DialDevice)")
		return uuid("81bc7d1b-7d06-555f-811b-42ec0fa71b55");
	else if (T == "IAsyncOperation!(DialDevice)")
		return uuid("471cada5-1ee4-51c0-b6b5-bf72f5f50422");
	else if (T == "TypedEventHandler!(DialDevicePicker, IInspectable)")
		return uuid("dac94028-1b44-5f45-b9e3-abcf4ab044bf");
	else if (T == "TypedEventHandler!(DialDevicePicker, DialDeviceSelectedEventArgs)")
		return uuid("8375c0d7-e7c3-56bc-9880-46b69ca10d45");
	else if (T == "TypedEventHandler!(DialDevicePicker, DialDisconnectButtonClickedEventArgs)")
		return uuid("13492af0-1c7f-57e8-b57e-a5ae8f2c462e");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(BackgroundAudioTrack)")
		return uuid("18b0f692-8635-577a-9efa-cb904770d6e5");
	else if (T == "IIterable!(BackgroundAudioTrack)")
		return uuid("3fc05ba2-30f6-5219-9047-1197ffae8dba");
	else if (T == "IIterator!(EmbeddedAudioTrack)")
		return uuid("c9fa7f51-b52c-578e-99f9-012cd5641247");
	else if (T == "IIterable!(EmbeddedAudioTrack)")
		return uuid("32fabed0-e1e6-578e-86e5-b4e6abeb22d6");
	else if (T == "IIterator!(MediaClip)")
		return uuid("2dfd20b2-06d8-577d-ab06-771e0414fc00");
	else if (T == "IIterable!(MediaClip)")
		return uuid("ff2e9b5c-26d0-575d-a3eb-7d938bd16f17");
	else if (T == "IIterator!(MediaOverlay)")
		return uuid("351f6f24-4a92-56d6-a187-faeae748e0c7");
	else if (T == "IIterable!(MediaOverlay)")
		return uuid("efcda247-a1fb-51dc-a776-e3e06695fb36");
	else if (T == "IIterator!(MediaOverlayLayer)")
		return uuid("ca401ed8-63d2-525a-80bb-e494900c4ce6");
	else if (T == "IIterable!(MediaOverlayLayer)")
		return uuid("7d2312d0-f3a2-5091-8a5e-41832e632c08");
	else if (T == "IVectorView!(BackgroundAudioTrack)")
		return uuid("7fe52e32-867c-52a3-b3b7-d4dd4d573794");
	else if (T == "IVectorView!(EmbeddedAudioTrack)")
		return uuid("63d85bd5-4365-5e56-9e40-e7cd3051aebf");
	else if (T == "IVectorView!(MediaClip)")
		return uuid("eabf18a6-f438-53b0-be3c-af21e67bc8c7");
	else if (T == "IVectorView!(MediaOverlay)")
		return uuid("6bba8a56-2f18-5a68-83cd-9aa9d7f8f757");
	else if (T == "IVectorView!(MediaOverlayLayer)")
		return uuid("8bcc3ff4-6139-52c1-9669-53da5033185e");
	else if (T == "IVector!(BackgroundAudioTrack)")
		return uuid("56d62145-6978-5eba-83c9-fc4ad6d443bf");
	else if (T == "IVector!(MediaClip)")
		return uuid("e805688e-3508-57f3-bf95-617f2d7a6f1a");
	else if (T == "IVector!(MediaOverlay)")
		return uuid("5b913ec8-ed52-5b2c-a710-52c6e7ab3cb2");
	else if (T == "IVector!(MediaOverlayLayer)")
		return uuid("6564eb2c-2210-5dfc-a84c-266c4349c2c6");
	else if (T == "AsyncOperationCompletedHandler!(BackgroundAudioTrack)")
		return uuid("b8830bc7-188b-5c25-a3bb-959052bcb740");
	else if (T == "IAsyncOperation!(BackgroundAudioTrack)")
		return uuid("493dc898-6076-55f5-ab84-ccf973ac0397");
	else if (T == "AsyncOperationCompletedHandler!(MediaClip)")
		return uuid("60cde3bc-119f-50a8-9ccb-9ea57ea96bfd");
	else if (T == "IAsyncOperation!(MediaClip)")
		return uuid("b5e699dd-b6f1-51c0-b752-e02fa0068d79");
	else if (T == "AsyncOperationCompletedHandler!(MediaComposition)")
		return uuid("edd253f8-4ebd-56e5-9592-3c09375ebdc4");
	else if (T == "IAsyncOperation!(MediaComposition)")
		return uuid("e170e898-d11f-5054-ab13-1080a4807636");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "IIterator!(IAudioEffectDefinition)")
		return uuid("ec0f39fc-6959-5423-9e1a-f7cb8e845ca1");
	else if (T == "IIterable!(IAudioEffectDefinition)")
		return uuid("607a20bf-32b4-5b8e-a793-3024f8d3582a");
	else if (T == "IVectorView!(IAudioEffectDefinition)")
		return uuid("de9e6a7f-d28e-5ef1-916a-efa880b489d1");
	else if (T == "IVector!(IAudioEffectDefinition)")
		return uuid("2828a982-d849-5fc9-84ce-f9a4b3b4d341");
	else if (T == "IIterator!(IVideoEffectDefinition)")
		return uuid("9d82379d-4958-558e-a155-3a809bb16c04");
	else if (T == "IIterable!(IVideoEffectDefinition)")
		return uuid("eb567f6f-b014-513d-99cd-f16c226c3c41");
	else if (T == "IVectorView!(IVideoEffectDefinition)")
		return uuid("a44b4f8e-7ca3-53b1-b68b-098baf45c73e");
	else if (T == "IVector!(IVideoEffectDefinition)")
		return uuid("7ca161ed-e201-5615-aacc-25348564f0b3");
	else if (T == "AsyncOperationCompletedHandler!(ImageStream)")
		return uuid("29bb8288-4462-516e-a675-8c9235c42994");
	else if (T == "IAsyncOperation!(ImageStream)")
		return uuid("684165be-0011-56d6-bebf-430016d51b7a");
	else if (T == "IIterator!(Windows.Foundation.TimeSpan)")
		return uuid("67e9eadb-324b-5661-a405-ded8445b1eea");
	else if (T == "IIterable!(Windows.Foundation.TimeSpan)")
		return uuid("e9f78726-829a-5f67-8d19-95ef154b7742");
	else if (T == "IIterator!(ImageStream)")
		return uuid("4a10752d-6b1a-5fec-a59c-70389bf162a2");
	else if (T == "IIterable!(ImageStream)")
		return uuid("034ea0c4-c20e-5c0c-ba31-64212f28e650");
	else if (T == "IVectorView!(ImageStream)")
		return uuid("ab10f3e5-2a3e-5f81-b5e8-8ddddc23cca2");
	else if (T == "AsyncOperationProgressHandler!(Windows.Media.Transcoding.TranscodeFailureReason, double)")
		return uuid("009c6245-0e59-53b0-9fd2-d250e45a00a3");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(Windows.Media.Transcoding.TranscodeFailureReason, double)")
		return uuid("080f1890-4fca-5165-a989-4b07da8e0b53");
	else if (T == "IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double)")
		return uuid("272eec20-4b64-5d53-a644-f9917b3d19d8");
	else if (T == "IIterator!(AudioEffect)")
		return uuid("673ce717-a3cf-5d68-a80b-5ed3e7b93fed");
	else if (T == "IIterable!(AudioEffect)")
		return uuid("07af9afd-25b8-579d-be7e-8acc03418d0b");
	else if (T == "IIterator!(IAudioEffectDefinition)")
		return uuid("ec0f39fc-6959-5423-9e1a-f7cb8e845ca1");
	else if (T == "IIterable!(IAudioEffectDefinition)")
		return uuid("607a20bf-32b4-5b8e-a793-3024f8d3582a");
	else if (T == "IIterator!(IVideoEffectDefinition)")
		return uuid("9d82379d-4958-558e-a155-3a809bb16c04");
	else if (T == "IIterable!(IVideoEffectDefinition)")
		return uuid("eb567f6f-b014-513d-99cd-f16c226c3c41");
	else if (T == "IVectorView!(AudioEffect)")
		return uuid("cdcbc9e7-53d8-5e66-9e45-31d5a23fd01d");
	else if (T == "IVectorView!(IAudioEffectDefinition)")
		return uuid("de9e6a7f-d28e-5ef1-916a-efa880b489d1");
	else if (T == "IVectorView!(IVideoEffectDefinition)")
		return uuid("a44b4f8e-7ca3-53b1-b68b-098baf45c73e");
	else if (T == "IVector!(IAudioEffectDefinition)")
		return uuid("2828a982-d849-5fc9-84ce-f9a4b3b4d341");
	else if (T == "IVector!(IVideoEffectDefinition)")
		return uuid("7ca161ed-e201-5615-aacc-25348564f0b3");
	else if (T == "TypedEventHandler!(AudioCaptureEffectsManager, IInspectable)")
		return uuid("a1c5e803-a275-5bb1-9d44-2ac8ae9ffb89");
	else if (T == "TypedEventHandler!(AudioRenderEffectsManager, IInspectable)")
		return uuid("4be29c7e-449c-576e-a7b8-3a40f2f01dc8");
	else if (T == "IIterator!(AudioEncodingProperties)")
		return uuid("064b6aef-3bd0-5463-8450-72c6169af5d4");
	else if (T == "IIterable!(AudioEncodingProperties)")
		return uuid("00939468-25d8-533f-854e-4f20f36c51dc");
	else if (T == "IVectorView!(AudioEncodingProperties)")
		return uuid("64ac506c-ccd0-56cb-b088-b1a36e8755df");
	else if (T == "IIterator!(VideoEncodingProperties)")
		return uuid("094166ef-ae5f-5315-a3bf-fe54e8c35fcd");
	else if (T == "IIterable!(VideoEncodingProperties)")
		return uuid("73c7317c-8682-5f81-84a2-30c425fa2d24");
	else if (T == "IVectorView!(VideoEncodingProperties)")
		return uuid("04c7baba-04d7-51db-a4e3-5147963ec5ff");
	else if (T == "IIterator!(IDirect3DSurface)")
		return uuid("bdfb6d0b-e785-5d5a-abd2-fe1b18c43257");
	else if (T == "IIterable!(IDirect3DSurface)")
		return uuid("cc63bf9c-e16a-5a75-a5aa-2b53f975b0b0");
	else if (T == "IVectorView!(IDirect3DSurface)")
		return uuid("1a81ec3e-5afb-5e10-92bb-c843fec70887");
	else if (T == "IIterator!(DetectedFace)")
		return uuid("a0cf090e-0340-531f-898b-c21eafb9f4ae");
	else if (T == "IIterable!(DetectedFace)")
		return uuid("25347323-3556-5cbb-9855-2b5856437f4d");
	else if (T == "IVectorView!(DetectedFace)")
		return uuid("39ef4411-0618-5b8d-8ea2-81c637f823f8");
	else if (T == "IVector!(DetectedFace)")
		return uuid("0dfd8e09-73f2-505c-a796-a8f031b4ede0");
	else if (T == "AsyncOperationCompletedHandler!(FaceDetector)")
		return uuid("3224aec6-e785-5066-976f-79dd081b75a9");
	else if (T == "IAsyncOperation!(FaceDetector)")
		return uuid("c0141cd2-7a65-514c-bfc4-b49e991f03eb");
	else if (T == "AsyncOperationCompletedHandler!(FaceTracker)")
		return uuid("57d5163d-9e80-59d2-9366-d2b5248b2724");
	else if (T == "IAsyncOperation!(FaceTracker)")
		return uuid("7f32c680-e37e-539a-8993-2abbea71afda");
	else if (T == "IIterator!(Windows.Graphics.Imaging.BitmapPixelFormat)")
		return uuid("7fc2e293-1084-5d45-b8b8-93e10692bcc8");
	else if (T == "IIterable!(Windows.Graphics.Imaging.BitmapPixelFormat)")
		return uuid("e924d9ed-a13e-5bdb-9ed8-65a1474dc274");
	else if (T == "IVectorView!(Windows.Graphics.Imaging.BitmapPixelFormat)")
		return uuid("76ac4bc2-c19c-559c-b287-1694c0dc3a0d");
	else if (T == "IIterator!(IMediaMarker)")
		return uuid("f464661e-88bc-5cea-93cd-0c123f17d258");
	else if (T == "IIterable!(IMediaMarker)")
		return uuid("a1c0a397-0364-5e4c-9dca-7cd7011bd114");
	else if (T == "IIterator!(Windows.Media.MediaTimeRange)")
		return uuid("29b8d190-5e46-5873-afc0-8f2f40fbe8fd");
	else if (T == "IIterable!(Windows.Media.MediaTimeRange)")
		return uuid("268204e2-9d52-5e7b-a54b-869c63defc8e");
	else if (T == "IVectorView!(IMediaMarker)")
		return uuid("b543562c-02b1-5824-80a8-9854130cdadd");
	else if (T == "IVectorView!(Windows.Media.MediaTimeRange)")
		return uuid("2628205b-a57a-5179-92e6-9b6e13cb8d0d");
	else if (T == "AsyncOperationCompletedHandler!(IMediaExtension)")
		return uuid("9c1b578e-fb7d-5bab-ba39-86387fe533b6");
	else if (T == "IAsyncOperation!(IMediaExtension)")
		return uuid("f5cb3303-1c1f-5d30-b402-efa192e80c49");
	else if (T == "AsyncOperationCompletedHandler!(VideoFrame)")
		return uuid("6086f2fb-4a29-54ca-b6a3-f2391a03bc3b");
	else if (T == "IAsyncOperation!(VideoFrame)")
		return uuid("f12e515d-ac45-5153-96b2-ce53ab594a57");
	else if (T == "TypedEventHandler!(MediaTimelineController, IInspectable)")
		return uuid("5c43e195-7d39-5d0d-a309-1991e68acdb7");
	else if (T == "TypedEventHandler!(MediaTimelineController, MediaTimelineControllerFailedEventArgs)")
		return uuid("07cd62fb-578d-56a6-a8ef-e653eb005d1b");
	else if (T == "TypedEventHandler!(SystemMediaTransportControls, AutoRepeatModeChangeRequestedEventArgs)")
		return uuid("a6214bde-02d5-55b3-ab0d-c6031be70da1");
	else if (T == "TypedEventHandler!(SystemMediaTransportControls, PlaybackPositionChangeRequestedEventArgs)")
		return uuid("44e34f15-bdc0-50a7-ace4-39e91fb753f1");
	else if (T == "TypedEventHandler!(SystemMediaTransportControls, PlaybackRateChangeRequestedEventArgs)")
		return uuid("15eb0182-6366-5b9f-bd8c-8ab4fa9d7cd9");
	else if (T == "TypedEventHandler!(SystemMediaTransportControls, ShuffleEnabledChangeRequestedEventArgs)")
		return uuid("17ecea80-27e4-5dae-abb4-c858ad1c5307");
	else if (T == "TypedEventHandler!(SystemMediaTransportControls, SystemMediaTransportControlsButtonPressedEventArgs)")
		return uuid("0557e996-7b23-5bae-aa81-ea0d671143a4");
	else if (T == "TypedEventHandler!(SystemMediaTransportControls, SystemMediaTransportControlsPropertyChangedEventArgs)")
		return uuid("9fd61dad-1746-5fa1-a908-ef7cb4603c85");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(PhotoImportItem)")
		return uuid("d04d6068-b5a3-508e-bc6b-1dcdfcfb0d08");
	else if (T == "IIterable!(PhotoImportItem)")
		return uuid("82347483-3b75-5e95-bba4-abc0b8a320aa");
	else if (T == "IIterator!(PhotoImportOperation)")
		return uuid("7c9dde1a-a8a1-5957-8e0d-c401d19c9237");
	else if (T == "IIterable!(PhotoImportOperation)")
		return uuid("94f33a8f-115a-50cb-b59d-ab8483a84842");
	else if (T == "IIterator!(PhotoImportSidecar)")
		return uuid("aef5ebf0-1363-593a-86d5-f92bc230bfd6");
	else if (T == "IIterable!(PhotoImportSidecar)")
		return uuid("2b7f92ad-e596-5669-b622-fbfbc7040e89");
	else if (T == "IIterator!(PhotoImportSource)")
		return uuid("7d70f831-6ee4-5130-a7b8-253a21154e82");
	else if (T == "IIterable!(PhotoImportSource)")
		return uuid("40e01d62-b413-5b43-ab07-ab28b23fc886");
	else if (T == "IIterator!(PhotoImportStorageMedium)")
		return uuid("985cb948-9769-55dc-85d9-125a5d03d6bb");
	else if (T == "IIterable!(PhotoImportStorageMedium)")
		return uuid("3233cbfe-f9ee-560f-bd0f-e36abe6cda7f");
	else if (T == "IIterator!(PhotoImportVideoSegment)")
		return uuid("c4c16a75-3310-5ab9-9307-78755ab1094d");
	else if (T == "IIterable!(PhotoImportVideoSegment)")
		return uuid("94dd3b44-da03-5d79-bbfb-1beaf2ede482");
	else if (T == "IVectorView!(PhotoImportItem)")
		return uuid("9a90a84e-924b-5879-88f7-bb2f7b131898");
	else if (T == "IVectorView!(PhotoImportOperation)")
		return uuid("a5b07808-7d18-5300-9f01-1d85149546d2");
	else if (T == "IVectorView!(PhotoImportSidecar)")
		return uuid("a6fa3abe-cdb9-5054-bf3d-525607f9c2d2");
	else if (T == "IVectorView!(PhotoImportSource)")
		return uuid("8b7e83fc-e035-59dc-8100-fcb935c2d7e4");
	else if (T == "IVectorView!(PhotoImportStorageMedium)")
		return uuid("35499439-e03e-5711-a955-f7c45928bc90");
	else if (T == "IVectorView!(PhotoImportVideoSegment)")
		return uuid("db5493cd-6915-5682-8dd5-1de144ec599d");
	else if (T == "AsyncOperationProgressHandler!(PhotoImportDeleteImportedItemsFromSourceResult, double)")
		return uuid("ac6e425d-49e8-50d7-988c-cd5e42038577");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(PhotoImportDeleteImportedItemsFromSourceResult, double)")
		return uuid("5e24e7c1-f356-59c1-b0e5-b2dfb225eb4e");
	else if (T == "IAsyncOperationWithProgress!(PhotoImportDeleteImportedItemsFromSourceResult, double)")
		return uuid("3e2371a9-281a-5226-ae85-caa55c0d61de");
	else if (T == "AsyncOperationProgressHandler!(PhotoImportFindItemsResult, UINT32)")
		return uuid("91190f62-7956-5e8f-83f1-84f9fe011b21");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(PhotoImportFindItemsResult, UINT32)")
		return uuid("dd7a69d4-2456-5250-9653-31bd2d487104");
	else if (T == "IAsyncOperationWithProgress!(PhotoImportFindItemsResult, UINT32)")
		return uuid("6e6f9b4e-c6e1-5364-a650-11c35211bead");
	else if (T == "AsyncOperationProgressHandler!(PhotoImportImportItemsResult, Windows.Media.Import.PhotoImportProgress)")
		return uuid("acd8a978-b2e1-55d0-bbf6-8dc5088d728a");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(PhotoImportImportItemsResult, Windows.Media.Import.PhotoImportProgress)")
		return uuid("0d141ec2-ee90-53a0-9318-10f0ab7f2d17");
	else if (T == "IAsyncOperationWithProgress!(PhotoImportImportItemsResult, Windows.Media.Import.PhotoImportProgress)")
		return uuid("d874ec64-0951-5459-a0dd-0f8bf3917eb1");
	else if (T == "AsyncOperationCompletedHandler!(PhotoImportSource)")
		return uuid("dc38b22a-872e-53f8-8e97-45ed85df0d23");
	else if (T == "IAsyncOperation!(PhotoImportSource)")
		return uuid("c8c5dc1e-eb47-50b8-b5d9-aafe1a82318a");
	else if (T == "TypedEventHandler!(PhotoImportFindItemsResult, PhotoImportItemImportedEventArgs)")
		return uuid("a3cce94d-f26e-58d9-8138-599ad63c7069");
	else if (T == "TypedEventHandler!(PhotoImportFindItemsResult, PhotoImportSelectionChangedEventArgs)")
		return uuid("e67279fe-692f-5602-820b-865098d9b43e");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IReference!(bool)")
		return uuid("3c00fd60-2950-5939-a21a-2d12c5a01b8a");
	else if (T == "IIterator!(AudioEncodingProperties)")
		return uuid("064b6aef-3bd0-5463-8450-72c6169af5d4");
	else if (T == "IIterable!(AudioEncodingProperties)")
		return uuid("00939468-25d8-533f-854e-4f20f36c51dc");
	else if (T == "IIterator!(IMediaEncodingProperties)")
		return uuid("7c094aec-c8f3-5f49-99c7-b66d8414200e");
	else if (T == "IIterable!(IMediaEncodingProperties)")
		return uuid("d7fc75d5-3492-5bbb-9b34-dac3e24e79d0");
	else if (T == "IIterator!(VideoEncodingProperties)")
		return uuid("094166ef-ae5f-5315-a3bf-fe54e8c35fcd");
	else if (T == "IIterable!(VideoEncodingProperties)")
		return uuid("73c7317c-8682-5f81-84a2-30c425fa2d24");
	else if (T == "IVectorView!(AudioEncodingProperties)")
		return uuid("64ac506c-ccd0-56cb-b088-b1a36e8755df");
	else if (T == "IVectorView!(IMediaEncodingProperties)")
		return uuid("0f6c3b8b-5818-5cbf-bf26-6616bfc308c4");
	else if (T == "IVectorView!(VideoEncodingProperties)")
		return uuid("04c7baba-04d7-51db-a4e3-5147963ec5ff");
	else if (T == "AsyncOperationCompletedHandler!(MediaEncodingProfile)")
		return uuid("37296fc1-86da-58a0-90c0-c807bd94395e");
	else if (T == "IAsyncOperation!(MediaEncodingProfile)")
		return uuid("d4f86f16-c6cf-57c8-9743-5ec20c31ab79");
	else if (T == "IKeyValuePair!(GUID, IInspectable)")
		return uuid("3bda1540-d089-5a1a-8f0d-94eba8068e58");
	else if (T == "IMapView!(GUID, IInspectable)")
		return uuid("e4d2c732-bbc1-5ef4-869f-5007ceb55f6e");
	else if (T == "IMap!(GUID, IInspectable)")
		return uuid("5ee3189c-7dbf-5998-ad07-5414fb82567c");
	else if (T == "IIterator!(OcrLine)")
		return uuid("52ca0f8a-5788-5695-b905-46b8d8171d88");
	else if (T == "IIterable!(OcrLine)")
		return uuid("6afa94a2-60d7-5dbe-942d-81aa3929c85e");
	else if (T == "IIterator!(OcrWord)")
		return uuid("0ed4317a-9964-51c6-acbe-02512a069082");
	else if (T == "IIterable!(OcrWord)")
		return uuid("a0ce663a-46d0-55e5-928e-251eb67a1e99");
	else if (T == "IVectorView!(OcrLine)")
		return uuid("60c76eac-8875-5ddb-a19b-65a3936279ea");
	else if (T == "IVectorView!(OcrWord)")
		return uuid("805a60c7-df4f-527c-86b2-e29e439a83d2");
	else if (T == "AsyncOperationCompletedHandler!(OcrResult)")
		return uuid("989c1371-444a-5e7e-b197-9eaaf9d2829a");
	else if (T == "IAsyncOperation!(OcrResult)")
		return uuid("c7d7118e-ae36-59c0-ac76-7badee711c8b");
	else if (T == "IIterator!(Language)")
		return uuid("30e99ae6-f414-5243-8db2-aab38ea3f1f1");
	else if (T == "IIterable!(Language)")
		return uuid("48409a10-61b6-5db1-a69d-8abc46ac608a");
	else if (T == "IVectorView!(Language)")
		return uuid("144b0f3d-2d59-5dd2-b012-908ec3e06435");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IIterator!(MediaBreak)")
		return uuid("9efd8746-f93c-524f-9f95-4b598acf8d25");
	else if (T == "IIterable!(MediaBreak)")
		return uuid("04f000ec-c727-5dc0-9f7c-245c75c92f2f");
	else if (T == "IIterator!(MediaPlaybackItem)")
		return uuid("ab074059-8c08-53e7-9654-02d2598fff55");
	else if (T == "IIterable!(MediaPlaybackItem)")
		return uuid("8b8ab4a4-0253-56e9-a232-94e335aefa8f");
	else if (T == "IIterator!(PlaybackMediaMarker)")
		return uuid("28607d6b-daa4-5eef-9f81-cc08a8297182");
	else if (T == "IIterable!(PlaybackMediaMarker)")
		return uuid("deeccfe9-6c01-576f-95f2-93515ae40ebf");
	else if (T == "IVectorView!(MediaPlaybackItem)")
		return uuid("b6a4c9fe-c73d-5eba-b5ab-6f8deaca30b9");
	else if (T == "IVector!(MediaPlaybackItem)")
		return uuid("e1504f46-c4a6-5a29-8fc9-a934d12d7242");
	else if (T == "VectorChangedEventHandler!(MediaPlaybackItem)")
		return uuid("891bddde-6bf3-5d1f-80ab-5a342a16a0bb");
	else if (T == "IObservableVector!(MediaPlaybackItem)")
		return uuid("fabf4843-39eb-5c3d-a12b-fca189b46e8e");
	else if (T == "IVectorView!(MediaBreak)")
		return uuid("c296f3f9-1268-59a2-b7c3-2f588ed4a017");
	else if (T == "EventHandler!(MediaPlayerDataReceivedEventArgs)")
		return uuid("078fc818-19f5-5b8a-ac82-25193bea56ee");
	else if (T == "TypedEventHandler!(MediaBreakManager, MediaBreakEndedEventArgs)")
		return uuid("04afafa9-d83a-5ccb-8cab-82c9d92a19ab");
	else if (T == "TypedEventHandler!(MediaBreakManager, MediaBreakSeekedOverEventArgs)")
		return uuid("a6954c30-99dc-5f84-b482-7d0692c0277b");
	else if (T == "TypedEventHandler!(MediaBreakManager, MediaBreakSkippedEventArgs)")
		return uuid("c530fa5d-1a56-582a-a254-1b1ae17b8d2d");
	else if (T == "TypedEventHandler!(MediaBreakManager, MediaBreakStartedEventArgs)")
		return uuid("4bf2cca1-cd9d-5d88-9e47-1881201bb72d");
	else if (T == "TypedEventHandler!(MediaBreakSchedule, IInspectable)")
		return uuid("3c57acbf-ca07-586a-8adb-8047dc9165a6");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManager, MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs)")
		return uuid("824845b8-c5df-560b-a722-c15b25d4463a");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManager, MediaPlaybackCommandManagerFastForwardReceivedEventArgs)")
		return uuid("d7cd6ce3-516f-5b34-beaf-3ee90b622872");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManager, MediaPlaybackCommandManagerNextReceivedEventArgs)")
		return uuid("ce41af40-93a6-52bf-9cad-4d5fffd10ee0");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManager, MediaPlaybackCommandManagerPauseReceivedEventArgs)")
		return uuid("79eb2ad3-0781-5f64-b0cd-31e1145d109f");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManager, MediaPlaybackCommandManagerPlayReceivedEventArgs)")
		return uuid("76d59f7c-edf3-5dde-9529-6f806bdb1fcb");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManager, MediaPlaybackCommandManagerPositionReceivedEventArgs)")
		return uuid("d863b1c4-7442-53c4-94d2-20d8973df585");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManager, MediaPlaybackCommandManagerPreviousReceivedEventArgs)")
		return uuid("25726db4-8913-5967-90eb-10f09f30dd33");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManager, MediaPlaybackCommandManagerRateReceivedEventArgs)")
		return uuid("3f8a8ea1-ff9a-5613-9846-33799f6b8c8a");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManager, MediaPlaybackCommandManagerRewindReceivedEventArgs)")
		return uuid("3c37e026-8d0b-5d73-a650-9f18abbc353d");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManager, MediaPlaybackCommandManagerShuffleReceivedEventArgs)")
		return uuid("6c972f91-f626-5799-ba86-5e941f0202c8");
	else if (T == "TypedEventHandler!(MediaPlaybackCommandManagerCommandBehavior, IInspectable)")
		return uuid("2675973a-eb2d-56a1-82a0-340b0ff041e6");
	else if (T == "TypedEventHandler!(MediaPlaybackList, CurrentMediaPlaybackItemChangedEventArgs)")
		return uuid("404c5f9d-250d-5f8c-9627-6b4105c32d09");
	else if (T == "TypedEventHandler!(MediaPlaybackList, MediaPlaybackItemFailedEventArgs)")
		return uuid("23319e7d-34b1-57b7-97e5-844948ba4719");
	else if (T == "TypedEventHandler!(MediaPlaybackList, MediaPlaybackItemOpenedEventArgs)")
		return uuid("6732bbef-3311-5f83-9c9d-82a5cf3cd82a");
	else if (T == "TypedEventHandler!(MediaPlaybackSession, IInspectable)")
		return uuid("7c70f38d-2aa1-5522-a6d6-34b52b988ae7");
	else if (T == "IIterator!(TimedMetadataTrack)")
		return uuid("859354e5-077b-5d53-b297-1a07b97f09c3");
	else if (T == "IIterable!(TimedMetadataTrack)")
		return uuid("150a4454-03bb-5dd1-8153-6a600e851f71");
	else if (T == "IVectorView!(TimedMetadataTrack)")
		return uuid("0313ae7a-2803-5d45-b5a1-a0fc5cd55e7c");
	else if (T == "TypedEventHandler!(MediaPlayer, IInspectable)")
		return uuid("f1a6a51e-d078-5c40-ba3f-348870ba5c87");
	else if (T == "TypedEventHandler!(MediaPlayer, MediaPlayerFailedEventArgs)")
		return uuid("362c45a7-3a0a-5e27-99ce-cff6d1b770e1");
	else if (T == "TypedEventHandler!(MediaPlayer, MediaPlayerRateChangedEventArgs)")
		return uuid("ba51d31a-5688-5d4d-af42-122070b1eefa");
	else if (T == "TypedEventHandler!(MediaPlayer, PlaybackMediaMarkerReachedEventArgs)")
		return uuid("67a4f43c-c254-57f0-a39d-a475a342d21d");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "TypedEventHandler!(MediaPlaybackItem, IVectorChangedEventArgs)")
		return uuid("2dd51918-4525-5be5-a6c1-409bc72863a6");
	else if (T == "IIterator!(AudioTrack)")
		return uuid("138064ef-8693-5303-8a75-eba494d06342");
	else if (T == "IIterable!(AudioTrack)")
		return uuid("b3be50a8-9856-5656-ab6d-cd58f9de0a4f");
	else if (T == "IVectorView!(AudioTrack)")
		return uuid("e71ffa4a-14a7-5068-891c-6e717af8bf8d");
	else if (T == "IIterator!(VideoTrack)")
		return uuid("a7c8d22c-b59d-5d7a-8d70-67f898a0b877");
	else if (T == "IIterable!(VideoTrack)")
		return uuid("84413442-a2e3-5e0f-936d-bc40b0fb2dcd");
	else if (T == "IVectorView!(VideoTrack)")
		return uuid("200c6224-0b43-54fb-995f-fd8688bf24de");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IIterator!(Windows.Media.MediaTimeRange)")
		return uuid("29b8d190-5e46-5873-afc0-8f2f40fbe8fd");
	else if (T == "IIterable!(Windows.Media.MediaTimeRange)")
		return uuid("268204e2-9d52-5e7b-a54b-869c63defc8e");
	else if (T == "IVectorView!(Windows.Media.MediaTimeRange)")
		return uuid("2628205b-a57a-5179-92e6-9b6e13cb8d0d");
	else if (T == "AsyncOperationCompletedHandler!(Playlist)")
		return uuid("427deafd-b226-5ef0-9320-c9f325e37474");
	else if (T == "IAsyncOperation!(Playlist)")
		return uuid("8ffb74ab-912f-5bc1-87fa-2865f673cbfc");
	else if (T == "IIterator!(StorageFile)")
		return uuid("43e29f53-0298-55aa-a6c8-4edd323d9598");
	else if (T == "IIterable!(StorageFile)")
		return uuid("9ac00304-83ea-5688-87b6-ae38aab65d0b");
	else if (T == "IVectorView!(StorageFile)")
		return uuid("80646519-5e2a-595d-a8cd-2a24b4067f1b");
	else if (T == "IVector!(StorageFile)")
		return uuid("fcbc8b8b-6103-5b4e-ba00-4bc2cedb6a35");
	else if (T == "AsyncOperationCompletedHandler!(StorageFile)")
		return uuid("e521c894-2c26-5946-9e61-2b5e188d01ed");
	else if (T == "IAsyncOperation!(StorageFile)")
		return uuid("5e52f8ce-aced-5a42-95b4-f674dd84885e");
	else if (T == "TypedEventHandler!(PlayToConnection, PlayToConnectionErrorEventArgs)")
		return uuid("8f599f3d-3655-5993-a119-741ec4ee6e42");
	else if (T == "TypedEventHandler!(PlayToConnection, PlayToConnectionStateChangedEventArgs)")
		return uuid("def77c1c-9363-5b47-b9f8-a236c50d372e");
	else if (T == "TypedEventHandler!(PlayToConnection, PlayToConnectionTransferredEventArgs)")
		return uuid("7278e7f2-0360-5571-8c3e-ea032767c473");
	else if (T == "TypedEventHandler!(PlayToManager, PlayToSourceRequestedEventArgs)")
		return uuid("6ac9f3a4-39b6-51d8-8e08-f137908e922f");
	else if (T == "TypedEventHandler!(PlayToManager, PlayToSourceSelectedEventArgs)")
		return uuid("bf87431a-7451-52a5-a5e2-bfaf408e0c88");
	else if (T == "TypedEventHandler!(PlayToReceiver, IInspectable)")
		return uuid("7a89b9c2-78d4-5866-88f1-4cdc0a0e75b8");
	else if (T == "TypedEventHandler!(PlayToReceiver, CurrentTimeChangeRequestedEventArgs)")
		return uuid("42abdf9f-14a6-5c1f-839b-86029505b1d0");
	else if (T == "TypedEventHandler!(PlayToReceiver, MuteChangeRequestedEventArgs)")
		return uuid("0674cf85-b6fd-5926-9b72-35fe517a3f44");
	else if (T == "TypedEventHandler!(PlayToReceiver, PlaybackRateChangeRequestedEventArgs)")
		return uuid("e7594396-58c3-5316-bc4f-1d13eadbeffd");
	else if (T == "TypedEventHandler!(PlayToReceiver, SourceChangeRequestedEventArgs)")
		return uuid("1466d074-b7b4-5814-b2d7-847c5ae7d87d");
	else if (T == "TypedEventHandler!(PlayToReceiver, VolumeChangeRequestedEventArgs)")
		return uuid("9c3f7c84-9b4d-5cdc-8144-1c2f617b6ede");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IIterator!(RevocationAndRenewalItem)")
		return uuid("dfb9655c-8b22-511f-8eaf-3aea7521802b");
	else if (T == "IIterable!(RevocationAndRenewalItem)")
		return uuid("07015868-578c-556b-8a35-4039a35d1d92");
	else if (T == "IVectorView!(RevocationAndRenewalItem)")
		return uuid("4a8793e2-33b8-5850-9943-6a94375caa89");
	else if (T == "IVector!(RevocationAndRenewalItem)")
		return uuid("3623cc0c-c765-57fb-967d-c7cb6097bd78");
	else if (T == "AsyncOperationProgressHandler!(Windows.Media.Protection.RenewalStatus, UINT32)")
		return uuid("b9da4aa0-26e0-5d69-a0c8-05716a406235");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(Windows.Media.Protection.RenewalStatus, UINT32)")
		return uuid("ec067827-67d9-59a6-a57b-3e7ca12b89c1");
	else if (T == "IAsyncOperationWithProgress!(Windows.Media.Protection.RenewalStatus, UINT32)")
		return uuid("595dcc09-9ad3-5094-800a-0883cce1ef01");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.Protection.HdcpSetProtectionResult)")
		return uuid("19344a58-a5c1-5168-803e-632771628143");
	else if (T == "IAsyncOperation!(Windows.Media.Protection.HdcpSetProtectionResult)")
		return uuid("5061ee0f-899a-569c-a0a3-c2566eb88142");
	else if (T == "IReference!(Windows.Media.Protection.HdcpProtection)")
		return uuid("8e330979-2fef-5d68-88aa-a9ee6697d117");
	else if (T == "TypedEventHandler!(HdcpSession, IInspectable)")
		return uuid("f82ae043-54fb-5366-a607-19b68e6bab8c");
	else if (T == "IIterator!(ISpeechRecognitionConstraint)")
		return uuid("738f00b1-e18c-5140-a53a-f1788d10c93d");
	else if (T == "IIterable!(ISpeechRecognitionConstraint)")
		return uuid("88e6436c-3253-520b-9ed8-a63b178c44a2");
	else if (T == "IIterator!(SpeechRecognitionResult)")
		return uuid("20756dd2-6d3f-5409-846a-0f0f01d7bf9a");
	else if (T == "IIterable!(SpeechRecognitionResult)")
		return uuid("0d9b7b48-98a1-5b22-9a66-6f812f5947aa");
	else if (T == "IVectorView!(ISpeechRecognitionConstraint)")
		return uuid("341dee1d-6ac2-5d06-9026-b30ada205665");
	else if (T == "IVectorView!(SpeechRecognitionResult)")
		return uuid("0e37810f-1de6-5199-833f-5a6b0bd91e23");
	else if (T == "IVector!(ISpeechRecognitionConstraint)")
		return uuid("2691d763-561e-5060-bbc9-7b07361acc95");
	else if (T == "AsyncOperationCompletedHandler!(SpeechRecognitionCompilationResult)")
		return uuid("78c859bd-14d4-5c40-abff-490616d5e92d");
	else if (T == "IAsyncOperation!(SpeechRecognitionCompilationResult)")
		return uuid("a392249a-e28a-564a-9e73-1dda63ca643c");
	else if (T == "AsyncOperationCompletedHandler!(SpeechRecognitionResult)")
		return uuid("c2195c7d-dcc2-5c6d-9162-c8df66528762");
	else if (T == "IAsyncOperation!(SpeechRecognitionResult)")
		return uuid("ba3eebe8-8d7c-51f2-9ed4-ebafe3674db4");
	else if (T == "TypedEventHandler!(SpeechContinuousRecognitionSession, SpeechContinuousRecognitionCompletedEventArgs)")
		return uuid("8103c018-7952-59f9-9f41-23b17d6e452d");
	else if (T == "TypedEventHandler!(SpeechContinuousRecognitionSession, SpeechContinuousRecognitionResultGeneratedEventArgs)")
		return uuid("26192073-a2c9-527d-9bd3-911c05e0011e");
	else if (T == "TypedEventHandler!(SpeechRecognizer, SpeechRecognitionHypothesisGeneratedEventArgs)")
		return uuid("4cb45aba-7573-545a-b29a-e9be35bd4682");
	else if (T == "TypedEventHandler!(SpeechRecognizer, SpeechRecognitionQualityDegradingEventArgs)")
		return uuid("15ca7918-61d2-57b2-b933-44063e8bb662");
	else if (T == "TypedEventHandler!(SpeechRecognizer, SpeechRecognizerStateChangedEventArgs)")
		return uuid("d1185e92-5c30-5561-b3e2-e82ddbd872c3");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(Language)")
		return uuid("30e99ae6-f414-5243-8db2-aab38ea3f1f1");
	else if (T == "IIterable!(Language)")
		return uuid("48409a10-61b6-5db1-a69d-8abc46ac608a");
	else if (T == "IVectorView!(Language)")
		return uuid("144b0f3d-2d59-5dd2-b012-908ec3e06435");
	else if (T == "IIterator!(VoiceInformation)")
		return uuid("12d40a27-ae8d-5fb0-8fed-00165d59c6ab");
	else if (T == "IIterable!(VoiceInformation)")
		return uuid("3c33bb52-bd98-5c8c-adee-ee8da0628efc");
	else if (T == "IVectorView!(VoiceInformation)")
		return uuid("ee8d63ce-51ac-5984-891b-d232fa7f6453");
	else if (T == "AsyncOperationCompletedHandler!(SpeechSynthesisStream)")
		return uuid("c972b996-6165-50d4-af60-a8c3df51d092");
	else if (T == "IAsyncOperation!(SpeechSynthesisStream)")
		return uuid("df9d48ad-9cea-560c-9edc-cb8852cb55e3");
	else if (T == "IIterator!(IMediaMarker)")
		return uuid("f464661e-88bc-5cea-93cd-0c123f17d258");
	else if (T == "IIterable!(IMediaMarker)")
		return uuid("a1c0a397-0364-5e4c-9dca-7cd7011bd114");
	else if (T == "IVectorView!(IMediaMarker)")
		return uuid("b543562c-02b1-5824-80a8-9854130cdadd");
	else if (T == "AsyncOperationCompletedHandler!(AdaptiveMediaSourceCreationResult)")
		return uuid("bd68cc00-724c-5a76-a437-1464ebdda4ac");
	else if (T == "IAsyncOperation!(AdaptiveMediaSourceCreationResult)")
		return uuid("be0bcc1d-d606-59d2-b2f9-ff204543da12");
	else if (T == "IReference!(Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceResourceType)")
		return uuid("74c8c3aa-de03-5bf0-aae8-aa8b692066b3");
	else if (T == "TypedEventHandler!(AdaptiveMediaSource, AdaptiveMediaSourceDownloadBitrateChangedEventArgs)")
		return uuid("ad268caf-7da0-5ad4-8585-ceeb903dbd50");
	else if (T == "TypedEventHandler!(AdaptiveMediaSource, AdaptiveMediaSourceDownloadCompletedEventArgs)")
		return uuid("cef775dd-25b2-5588-8d51-dacdea660a7d");
	else if (T == "TypedEventHandler!(AdaptiveMediaSource, AdaptiveMediaSourceDownloadFailedEventArgs)")
		return uuid("6ee5cc44-49ad-5138-ab47-f5c075a2bc34");
	else if (T == "TypedEventHandler!(AdaptiveMediaSource, AdaptiveMediaSourceDownloadRequestedEventArgs)")
		return uuid("d3b7dbf1-fd8e-589e-9c7f-ba67397e50cd");
	else if (T == "TypedEventHandler!(AdaptiveMediaSource, AdaptiveMediaSourcePlaybackBitrateChangedEventArgs)")
		return uuid("df4f4e89-6173-539b-94d8-69b7cb7578a7");
	else if (T == "TypedEventHandler!(AdaptiveMediaSourceDiagnostics, AdaptiveMediaSourceDiagnosticAvailableEventArgs)")
		return uuid("fd4ce6b5-7c3b-58f4-9efc-1d9ee6a09d21");
	else if (T == "IIterator!(UINT32)")
		return uuid("f06a2739-9443-5ef0-b284-dc5aff3e7d10");
	else if (T == "IIterable!(UINT32)")
		return uuid("421d4b91-b13b-5f37-ae54-b5249bd80539");
	else if (T == "IVectorView!(UINT32)")
		return uuid("e5ce1a07-8d33-5007-ba64-7d2508ccf85c");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "IReference!(UINT64)")
		return uuid("6755e376-53bb-568b-a11d-17239868309e");
	else if (T == "AsyncOperationProgressHandler!(Windows.Media.Transcoding.TranscodeFailureReason, double)")
		return uuid("009c6245-0e59-53b0-9fd2-d250e45a00a3");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(Windows.Media.Transcoding.TranscodeFailureReason, double)")
		return uuid("080f1890-4fca-5165-a989-4b07da8e0b53");
	else if (T == "IAsyncOperationWithProgress!(Windows.Media.Transcoding.TranscodeFailureReason, double)")
		return uuid("272eec20-4b64-5d53-a644-f9917b3d19d8");
	else if (T == "AsyncOperationCompletedHandler!(PrepareTranscodeResult)")
		return uuid("a44d7d07-8f74-52ee-9f02-c2b244b4ff2a");
	else if (T == "IAsyncOperation!(PrepareTranscodeResult)")
		return uuid("f5f07c13-3047-5bab-8eb7-6e5d7d14afae");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Media.Transcoding.TranscodeFailureReason)")
		return uuid("c42ae2bf-e194-5179-b8ad-03b51c04e1da");
	else if (T == "IAsyncOperation!(Windows.Media.Transcoding.TranscodeFailureReason)")
		return uuid("02132510-3899-5257-bed9-a43e5149d28c");
	else if (T == "AsyncActionProgressHandler!(double)")
		return uuid("44825c7c-0da9-5691-b2b4-914f231eeced");
	else if (T == "AsyncActionWithProgressCompletedHandler!(double)")
		return uuid("94d64ac6-4491-53ef-8be8-36481f3ff1e8");
	else if (T == "IAsyncActionWithProgress!(double)")
		return uuid("4f1430a6-a825-56ca-b047-1a9bad52ba67");
	else if (T == "IIterator!(BackgroundTransferContentPart)")
		return uuid("07fbc351-781d-52c7-9558-a453e5703f29");
	else if (T == "IIterable!(BackgroundTransferContentPart)")
		return uuid("cf303199-de3b-5dac-a703-6c57d80821c4");
	else if (T == "IIterator!(DownloadOperation)")
		return uuid("2ab61055-2d0a-59cb-8cbd-056f2d7fb454");
	else if (T == "IIterable!(DownloadOperation)")
		return uuid("f6fd69cb-e6e7-56d5-9be6-e0dc4683fa80");
	else if (T == "IIterator!(UploadOperation)")
		return uuid("caa85133-73d7-5f96-ab2d-fbb4fa00f715");
	else if (T == "IIterable!(UploadOperation)")
		return uuid("79778799-38cc-5b67-9cd0-043fc47a9ef7");
	else if (T == "IVectorView!(DownloadOperation)")
		return uuid("f87d9755-2a7d-59fc-bc92-b48636f4d955");
	else if (T == "IVectorView!(UploadOperation)")
		return uuid("8e96d4b0-f0ae-51cb-b7c4-024251bd16d8");
	else if (T == "AsyncOperationProgressHandler!(DownloadOperation, DownloadOperation)")
		return uuid("b2ff13f1-c743-54f4-bccc-f08e16a87890");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(DownloadOperation, DownloadOperation)")
		return uuid("781b479c-0207-5d15-a4e5-7837d13bf93d");
	else if (T == "IAsyncOperationWithProgress!(DownloadOperation, DownloadOperation)")
		return uuid("e86a4f5d-743a-5f18-9d4c-bc8ed5942659");
	else if (T == "AsyncOperationProgressHandler!(UploadOperation, UploadOperation)")
		return uuid("ccd13730-fed3-54e8-8471-096e4b64cadd");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(UploadOperation, UploadOperation)")
		return uuid("79fcae93-53ec-5f66-ab34-826af78ec11a");
	else if (T == "IAsyncOperationWithProgress!(UploadOperation, UploadOperation)")
		return uuid("35ddaefa-db6a-5d0d-ba54-a0728401171e");
	else if (T == "AsyncOperationCompletedHandler!(DownloadOperation)")
		return uuid("2aa63857-ffaf-5cf6-9b2c-0dc597b60a60");
	else if (T == "IAsyncOperation!(DownloadOperation)")
		return uuid("43ef3a5f-cc7d-566d-a92a-4caa76b92a1f");
	else if (T == "AsyncOperationCompletedHandler!(UnconstrainedTransferRequestResult)")
		return uuid("4f52bfe8-9b0e-5b22-916b-834425b4ab97");
	else if (T == "IAsyncOperation!(UnconstrainedTransferRequestResult)")
		return uuid("a8dc2a04-3f44-5046-8182-cd0ec147e17d");
	else if (T == "AsyncOperationCompletedHandler!(UploadOperation)")
		return uuid("ead68818-0c38-5cde-aec1-c6a7618711f7");
	else if (T == "IAsyncOperation!(UploadOperation)")
		return uuid("44212ea1-b524-5aee-a320-7199225381d1");
	else if (T == "IIterator!(Uri)")
		return uuid("1c157d0f-5efe-5cec-bbd6-0c6ce9af07a5");
	else if (T == "IIterable!(Uri)")
		return uuid("b0d63b78-78ad-5e31-b6d8-e32a0e16c447");
	else if (T == "IVectorView!(Uri)")
		return uuid("4b8385bd-a2cd-5ff1-bf74-7ea580423e50");
	else if (T == "IVector!(Uri)")
		return uuid("0d82bd8d-fe62-5d67-a7b9-7886dd75bc4e");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IIterator!(AttributedNetworkUsage)")
		return uuid("4070c40f-ab2f-56f2-b54c-8232ae86aacd");
	else if (T == "IIterable!(AttributedNetworkUsage)")
		return uuid("d061dcb9-6854-5ef9-8e03-008a7a704c48");
	else if (T == "IIterator!(ConnectionProfile)")
		return uuid("89913732-a08b-5cb2-af16-bbbb2223839e");
	else if (T == "IIterable!(ConnectionProfile)")
		return uuid("34dabef9-87d0-5b1c-a7ac-9d290adeb0c8");
	else if (T == "IIterator!(ConnectivityInterval)")
		return uuid("741cea48-651c-5fd9-931e-4f91b521e182");
	else if (T == "IIterable!(ConnectivityInterval)")
		return uuid("58051a8b-b259-5414-9b9a-caa0789e833e");
	else if (T == "IIterator!(LanIdentifier)")
		return uuid("2c5d2f7e-ce9c-5253-a0f4-01e5bdc11988");
	else if (T == "IIterable!(LanIdentifier)")
		return uuid("accef3cd-5d92-5c01-8ac4-79fe74cd733e");
	else if (T == "IIterator!(NetworkUsage)")
		return uuid("5fafb57b-9c82-50a1-9970-69f9cb069695");
	else if (T == "IIterable!(NetworkUsage)")
		return uuid("dd2656b1-8360-5772-b272-c47f7f0fc7a6");
	else if (T == "IVectorView!(AttributedNetworkUsage)")
		return uuid("6e7c44ad-7753-5437-9f79-970d391ff7c4");
	else if (T == "IVectorView!(ConnectionProfile)")
		return uuid("6db1b492-3852-5df8-a29d-6944002f58d4");
	else if (T == "IVectorView!(ConnectivityInterval)")
		return uuid("a3d0d117-9e21-5919-b7a0-c8190bd55ac5");
	else if (T == "IVectorView!(LanIdentifier)")
		return uuid("41286159-b91d-5736-ad8b-e16fcf8aced0");
	else if (T == "IVectorView!(NetworkUsage)")
		return uuid("b3853391-40b6-5cf5-8f46-4882691d1ff7");
	else if (T == "AsyncOperationCompletedHandler!(ConnectionProfile)")
		return uuid("e4f0c96a-0571-59f4-a9a9-afac3e61caa0");
	else if (T == "IAsyncOperation!(ConnectionProfile)")
		return uuid("5bf519ca-8adb-5ab5-abb8-ff1bbe5d2de8");
	else if (T == "AsyncOperationCompletedHandler!(ConnectionSession)")
		return uuid("3bc680d8-9e83-5086-8f49-7a29bfb1c7e1");
	else if (T == "IAsyncOperation!(ConnectionSession)")
		return uuid("94fc6211-4702-5d24-81bf-170ca7818995");
	else if (T == "AsyncOperationCompletedHandler!(ProxyConfiguration)")
		return uuid("035b2567-efb9-5bc3-b609-f9a8c20b7001");
	else if (T == "IAsyncOperation!(ProxyConfiguration)")
		return uuid("1e7651f6-6562-59c7-9af3-8756636eeee2");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IReference!(GUID)")
		return uuid("7d50f649-632c-51f9-849a-ee49428933ea");
	else if (T == "IReference!(byte)")
		return uuid("e5198cc8-2873-55f5-b0a1-84ff9e4aad62");
	else if (T == "IReference!(bool)")
		return uuid("3c00fd60-2950-5939-a21a-2d12c5a01b8a");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IReference!(UINT64)")
		return uuid("6755e376-53bb-568b-a11d-17239868309e");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IIterator!(byte)")
		return uuid("40556131-a2a1-5fab-aaee-5f35268ca26b");
	else if (T == "IIterable!(byte)")
		return uuid("88318266-f3fd-50fc-8f08-b823a41b60c1");
	else if (T == "IVectorView!(byte)")
		return uuid("6d05fb29-7885-544e-9382-a1ad391a3fa4");
	else if (T == "IIterator!(HostName)")
		return uuid("557bf83c-a428-5dbd-a0fe-05f6ee543d45");
	else if (T == "IIterable!(HostName)")
		return uuid("9e5f3ed0-cf1c-5d38-832c-acea6164bf5c");
	else if (T == "IVectorView!(HostName)")
		return uuid("f4706ab1-55a3-5270-afb2-732988fe8227");
	else if (T == "IIterator!(EndpointPair)")
		return uuid("c899ff9f-e6f5-5673-810c-04e2ff98704f");
	else if (T == "IIterable!(EndpointPair)")
		return uuid("d7ec83c4-a17b-51bf-8997-aa33b9102dc9");
	else if (T == "IVectorView!(EndpointPair)")
		return uuid("8780a851-6d48-5006-9288-81f3d7045a96");
	else if (T == "IIterator!(Uri)")
		return uuid("1c157d0f-5efe-5cec-bbd6-0c6ce9af07a5");
	else if (T == "IIterable!(Uri)")
		return uuid("b0d63b78-78ad-5e31-b6d8-e32a0e16c447");
	else if (T == "IVectorView!(Uri)")
		return uuid("4b8385bd-a2cd-5ff1-bf74-7ea580423e50");
	else if (T == "IIterator!(EndpointPair)")
		return uuid("c899ff9f-e6f5-5673-810c-04e2ff98704f");
	else if (T == "IIterable!(EndpointPair)")
		return uuid("d7ec83c4-a17b-51bf-8997-aa33b9102dc9");
	else if (T == "IIterator!(HostName)")
		return uuid("557bf83c-a428-5dbd-a0fe-05f6ee543d45");
	else if (T == "IIterable!(HostName)")
		return uuid("9e5f3ed0-cf1c-5d38-832c-acea6164bf5c");
	else if (T == "IVectorView!(EndpointPair)")
		return uuid("8780a851-6d48-5006-9288-81f3d7045a96");
	else if (T == "IVectorView!(HostName)")
		return uuid("f4706ab1-55a3-5270-afb2-732988fe8227");
	else if (T == "IVector!(HostName)")
		return uuid("90c71c29-a9b5-5267-a5ad-8b756736317c");
	else if (T == "IIterator!(MobileBroadbandDeviceServiceInformation)")
		return uuid("d8d776f6-4692-5461-9155-816e63bac874");
	else if (T == "IIterable!(MobileBroadbandDeviceServiceInformation)")
		return uuid("88511855-6fe6-5694-83a7-991e29033de5");
	else if (T == "IIterator!(MobileBroadbandNetworkRegistrationStateChange)")
		return uuid("9cb0f858-e589-57a7-9d01-2c6291567cc7");
	else if (T == "IIterable!(MobileBroadbandNetworkRegistrationStateChange)")
		return uuid("0b90bb30-660c-51c6-9b8c-31dd8486e10e");
	else if (T == "IIterator!(MobileBroadbandPinLockStateChange)")
		return uuid("e61b479f-7bd9-5550-bc69-f9c2f71c6a05");
	else if (T == "IIterable!(MobileBroadbandPinLockStateChange)")
		return uuid("aa4a8700-9943-59a3-8647-d373fd5e0e2b");
	else if (T == "IIterator!(Windows.Networking.NetworkOperators.MobileBroadbandPinType)")
		return uuid("23efcf0c-1f8e-5bd9-8b57-f0850121201c");
	else if (T == "IIterable!(Windows.Networking.NetworkOperators.MobileBroadbandPinType)")
		return uuid("9d55726d-813e-50fb-9498-87aa872dd6ca");
	else if (T == "IIterator!(MobileBroadbandRadioStateChange)")
		return uuid("c088cec3-08e5-5f35-a2b9-0900d028c83b");
	else if (T == "IIterable!(MobileBroadbandRadioStateChange)")
		return uuid("c385adaa-574c-5ad8-98c2-61309525132d");
	else if (T == "IIterator!(MobileBroadbandUiccApp)")
		return uuid("4bb2066f-1b75-57cf-a722-1e58bfc5ae50");
	else if (T == "IIterable!(MobileBroadbandUiccApp)")
		return uuid("af538114-bd14-53b0-b1d1-841dcaa451ad");
	else if (T == "IIterator!(NetworkOperatorTetheringClient)")
		return uuid("5653d065-c708-5341-bc05-d3b9cecd2ac7");
	else if (T == "IIterable!(NetworkOperatorTetheringClient)")
		return uuid("4762ecb3-af48-5b63-89b7-78a42056549f");
	else if (T == "IVectorView!(MobileBroadbandDeviceServiceInformation)")
		return uuid("aca7ee14-414a-509c-9d63-361e6631fc84");
	else if (T == "IVectorView!(MobileBroadbandNetworkRegistrationStateChange)")
		return uuid("077679f5-6948-5328-8ab4-72e63a7529bd");
	else if (T == "IVectorView!(MobileBroadbandPinLockStateChange)")
		return uuid("2078b5f0-9fa1-5056-81c7-490246a5bc13");
	else if (T == "IVectorView!(Windows.Networking.NetworkOperators.MobileBroadbandPinType)")
		return uuid("33394c13-028c-553e-867b-3c7c21b6f22d");
	else if (T == "IVectorView!(MobileBroadbandRadioStateChange)")
		return uuid("ca3d0221-58c8-516a-addf-d0a869fbaa49");
	else if (T == "IVectorView!(MobileBroadbandUiccApp)")
		return uuid("d1e341f3-4e36-58c5-92bf-dd33092e390c");
	else if (T == "IVectorView!(NetworkOperatorTetheringClient)")
		return uuid("e21d6797-4ef6-553f-b7f9-5ed74bcebd7e");
	else if (T == "AsyncOperationCompletedHandler!(HotspotCredentialsAuthenticationResult)")
		return uuid("7f254beb-471f-5000-94ce-102cc333055f");
	else if (T == "IAsyncOperation!(HotspotCredentialsAuthenticationResult)")
		return uuid("522781d8-29c8-5d89-8937-1d1c2032f0c8");
	else if (T == "AsyncOperationCompletedHandler!(MobileBroadbandDeviceServiceCommandResult)")
		return uuid("21f0ce4f-8f33-5e71-a457-dda553b0d6bb");
	else if (T == "IAsyncOperation!(MobileBroadbandDeviceServiceCommandResult)")
		return uuid("2c673aa8-6a35-50fd-9422-3615a1c28ccb");
	else if (T == "AsyncOperationCompletedHandler!(MobileBroadbandModemConfiguration)")
		return uuid("c11e0649-8237-5c93-bbdb-2eda5216fd3f");
	else if (T == "IAsyncOperation!(MobileBroadbandModemConfiguration)")
		return uuid("cdbe0003-daaa-5c89-92e6-a47ffc2418a2");
	else if (T == "AsyncOperationCompletedHandler!(MobileBroadbandPinOperationResult)")
		return uuid("595ad094-60e3-5349-8fe6-ea8ecbbb2541");
	else if (T == "IAsyncOperation!(MobileBroadbandPinOperationResult)")
		return uuid("2f76661c-2f74-5ce2-99f9-47d1a3a13633");
	else if (T == "AsyncOperationCompletedHandler!(MobileBroadbandUiccAppReadRecordResult)")
		return uuid("b81892b3-4ca9-5ec4-8971-2fbc19b56ca9");
	else if (T == "IAsyncOperation!(MobileBroadbandUiccAppReadRecordResult)")
		return uuid("27fc8483-30d8-5be3-bc1e-8cca0b241df3");
	else if (T == "AsyncOperationCompletedHandler!(MobileBroadbandUiccAppRecordDetailsResult)")
		return uuid("d0b53858-0e54-5791-82ed-3313dc75da45");
	else if (T == "IAsyncOperation!(MobileBroadbandUiccAppRecordDetailsResult)")
		return uuid("0774f4a6-bdbe-59ff-aa1c-a62e3c6f9d37");
	else if (T == "AsyncOperationCompletedHandler!(MobileBroadbandUiccAppsResult)")
		return uuid("a12bed56-c672-595e-a67b-49abc285addc");
	else if (T == "IAsyncOperation!(MobileBroadbandUiccAppsResult)")
		return uuid("cf1ce97f-1a81-5ce6-8ad5-55ff8b0e8d1b");
	else if (T == "AsyncOperationCompletedHandler!(NetworkOperatorTetheringOperationResult)")
		return uuid("a936b927-7537-59c6-89de-33f36a9725ab");
	else if (T == "IAsyncOperation!(NetworkOperatorTetheringOperationResult)")
		return uuid("601b30ed-9b7f-54b6-b61b-24a09bc56304");
	else if (T == "AsyncOperationCompletedHandler!(ProvisionFromXmlDocumentResults)")
		return uuid("7a7eee1b-17f9-5a41-861b-c30ea127d0f1");
	else if (T == "IAsyncOperation!(ProvisionFromXmlDocumentResults)")
		return uuid("9f8fe338-c6b1-5614-a14f-8977a77e17f2");
	else if (T == "AsyncOperationCompletedHandler!(UssdReply)")
		return uuid("9385bd8f-5e14-557a-a7f1-63f33d9ecacf");
	else if (T == "IAsyncOperation!(UssdReply)")
		return uuid("9dd0a063-6153-5afd-8288-8770ddcff2db");
	else if (T == "TypedEventHandler!(MobileBroadbandAccountWatcher, IInspectable)")
		return uuid("e4dc9cfc-f462-5afd-856d-04ace229d00e");
	else if (T == "TypedEventHandler!(MobileBroadbandAccountWatcher, MobileBroadbandAccountEventArgs)")
		return uuid("423cc41e-fe8c-5a7d-9fee-aae04ef85700");
	else if (T == "TypedEventHandler!(MobileBroadbandAccountWatcher, MobileBroadbandAccountUpdatedEventArgs)")
		return uuid("0e865096-1ffa-5792-8d4f-8623e3c77f56");
	else if (T == "TypedEventHandler!(MobileBroadbandDeviceServiceDataSession, MobileBroadbandDeviceServiceDataReceivedEventArgs)")
		return uuid("31f89ca6-dd7f-5325-9020-627d8b47ea02");
	else if (T == "IIterator!(UINT32)")
		return uuid("f06a2739-9443-5ef0-b284-dc5aff3e7d10");
	else if (T == "IIterable!(UINT32)")
		return uuid("421d4b91-b13b-5f37-ae54-b5249bd80539");
	else if (T == "IVectorView!(UINT32)")
		return uuid("e5ce1a07-8d33-5007-ba64-7d2508ccf85c");
	else if (T == "IIterator!(ConnectionProfile)")
		return uuid("89913732-a08b-5cb2-af16-bbbb2223839e");
	else if (T == "IIterable!(ConnectionProfile)")
		return uuid("34dabef9-87d0-5b1c-a7ac-9d290adeb0c8");
	else if (T == "IVectorView!(ConnectionProfile)")
		return uuid("6db1b492-3852-5df8-a29d-6944002f58d4");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(HostName)")
		return uuid("557bf83c-a428-5dbd-a0fe-05f6ee543d45");
	else if (T == "IIterable!(HostName)")
		return uuid("9e5f3ed0-cf1c-5d38-832c-acea6164bf5c");
	else if (T == "IVectorView!(HostName)")
		return uuid("f4706ab1-55a3-5270-afb2-732988fe8227");
	else if (T == "IIterator!(PeerInformation)")
		return uuid("eb6fe2c2-d6cd-5df0-a295-74c56ec58aab");
	else if (T == "IIterable!(PeerInformation)")
		return uuid("917e1105-0647-5793-9d50-befe225f0f2f");
	else if (T == "IVectorView!(PeerInformation)")
		return uuid("948f92bc-2a05-5c80-95f2-96fe345852cc");
	else if (T == "TypedEventHandler!(IInspectable, ConnectionRequestedEventArgs)")
		return uuid("512c383c-8b29-5079-953e-8dee8f8a8224");
	else if (T == "TypedEventHandler!(IInspectable, TriggeredConnectionStateChangedEventArgs)")
		return uuid("2e5ad6fa-3ca6-5518-bd4d-fefc4535580e");
	else if (T == "TypedEventHandler!(PeerWatcher, IInspectable)")
		return uuid("f4979ea1-7e06-50a8-88dc-3f29524e4fdb");
	else if (T == "TypedEventHandler!(PeerWatcher, PeerInformation)")
		return uuid("ad674bbf-6281-5943-9772-e0fd7664d4e1");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "AsyncOperationCompletedHandler!(StreamSocket)")
		return uuid("71b5d99e-3854-5e9a-b4dc-d1b58bf198fc");
	else if (T == "IAsyncOperation!(StreamSocket)")
		return uuid("fb3e3d3c-6fe5-5e27-a132-902247e2a93e");
	else if (T == "AsyncOperationCompletedHandler!(PushNotificationChannel)")
		return uuid("cf7c902f-0f0d-5b22-90b1-85141b5816cd");
	else if (T == "IAsyncOperation!(PushNotificationChannel)")
		return uuid("70945a09-331a-5e40-b854-66b7a3233bab");
	else if (T == "TypedEventHandler!(PushNotificationChannel, PushNotificationReceivedEventArgs)")
		return uuid("55fa217d-1fc3-5863-b980-7094d4379694");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IIterator!(DnssdServiceInstance)")
		return uuid("bc0cca83-44e5-5544-ab5b-e09d66f5fd5f");
	else if (T == "IIterable!(DnssdServiceInstance)")
		return uuid("1de3a3e5-387e-5328-b864-3f0e3475d343");
	else if (T == "IVectorView!(DnssdServiceInstance)")
		return uuid("f75ff82a-7e10-5cf6-8064-6ae585e0bd8d");
	else if (T == "AsyncOperationCompletedHandler!(DnssdRegistrationResult)")
		return uuid("f3632f52-894a-5345-9be6-8389751c5189");
	else if (T == "IAsyncOperation!(DnssdRegistrationResult)")
		return uuid("0c251e73-52c9-5026-a875-f685a50cbffd");
	else if (T == "TypedEventHandler!(DnssdServiceWatcher, IInspectable)")
		return uuid("6a6cc5d5-9f43-545a-91d7-3a40055475da");
	else if (T == "TypedEventHandler!(DnssdServiceWatcher, DnssdServiceInstance)")
		return uuid("e617711e-cdd5-5975-8fb3-8eaaaed24e7b");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "IKeyValuePair!(HSTRING, SocketActivityInformation)")
		return uuid("7e4bda2c-0125-587d-8806-1285060f3b2d");
	else if (T == "IMapView!(HSTRING, SocketActivityInformation)")
		return uuid("e6ac8bee-a31c-5af2-9227-5be2f9e80763");
	else if (T == "AsyncOperationCompletedHandler!(StreamSocket)")
		return uuid("71b5d99e-3854-5e9a-b4dc-d1b58bf198fc");
	else if (T == "IAsyncOperation!(StreamSocket)")
		return uuid("fb3e3d3c-6fe5-5e27-a132-902247e2a93e");
	else if (T == "TypedEventHandler!(DatagramSocket, DatagramSocketMessageReceivedEventArgs)")
		return uuid("4482e19b-2389-5767-9b0b-8d7a8ef55743");
	else if (T == "TypedEventHandler!(IWebSocket, WebSocketClosedEventArgs)")
		return uuid("03cf8f90-1669-5f4d-9404-2b784678e6dd");
	else if (T == "TypedEventHandler!(MessageWebSocket, MessageWebSocketMessageReceivedEventArgs)")
		return uuid("de980538-6dcd-52b0-802f-4b6cf59a01ab");
	else if (T == "TypedEventHandler!(MessageWebSocket, WebSocketServerCustomValidationRequestedEventArgs)")
		return uuid("2c34c585-9cf6-56c7-8dd1-5da26e322078");
	else if (T == "TypedEventHandler!(StreamSocketListener, StreamSocketListenerConnectionReceivedEventArgs)")
		return uuid("33d00d41-c94f-5a61-9ab7-280dcefa0b08");
	else if (T == "TypedEventHandler!(StreamWebSocket, WebSocketServerCustomValidationRequestedEventArgs)")
		return uuid("18b143d3-897e-595e-acc1-ef35614b4cec");
	else if (T == "AsyncOperationCompletedHandler!(IOutputStream)")
		return uuid("bcb37f4f-3af4-561c-a9e3-eef1738494d7");
	else if (T == "IAsyncOperation!(IOutputStream)")
		return uuid("e8736833-d013-5361-977d-c5e99934680e");
	else if (T == "IIterator!(EndpointPair)")
		return uuid("c899ff9f-e6f5-5673-810c-04e2ff98704f");
	else if (T == "IIterable!(EndpointPair)")
		return uuid("d7ec83c4-a17b-51bf-8997-aa33b9102dc9");
	else if (T == "IVectorView!(EndpointPair)")
		return uuid("8780a851-6d48-5006-9288-81f3d7045a96");
	else if (T == "IIterator!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("8bcad2b7-0e3b-5eae-bf69-e1f6d9c888f8");
	else if (T == "IIterable!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("2628f58f-3f02-54f2-808f-e1117709d6d0");
	else if (T == "IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("cb383486-c2bc-5756-912d-6a708a07e5bd");
	else if (T == "IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("d7828cf7-4301-58d3-aab5-06e5eefcf79f");
	else if (T == "IIterator!(Certificate)")
		return uuid("676fc159-f15c-58bd-91a7-28f7e795c756");
	else if (T == "IIterable!(Certificate)")
		return uuid("0c7d1423-e8fd-5a91-b55c-8bfbe7ac2d40");
	else if (T == "IVectorView!(Certificate)")
		return uuid("963f7013-77c2-51c5-8038-b5bcef633edb");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(IVpnCustomPrompt)")
		return uuid("6fc7cfe8-1882-5ba1-8e5e-4c5e3a4fa86d");
	else if (T == "IIterable!(IVpnCustomPrompt)")
		return uuid("8bac695c-70cb-54d6-8606-af6e3a25e3a1");
	else if (T == "IIterator!(IVpnCustomPromptElement)")
		return uuid("ee23ff21-51ba-5cc4-9856-625c79c28080");
	else if (T == "IIterable!(IVpnCustomPromptElement)")
		return uuid("437d3693-00c4-50b4-989a-938f1016a230");
	else if (T == "IIterator!(IVpnProfile)")
		return uuid("91ccb492-ec28-530b-b45e-c431744ca9b5");
	else if (T == "IIterable!(IVpnProfile)")
		return uuid("db35f6b1-f266-5c87-8862-9dd87d9df18f");
	else if (T == "IIterator!(VpnAppId)")
		return uuid("ec9298b0-8ca2-549c-bbe2-252823e70eef");
	else if (T == "IIterable!(VpnAppId)")
		return uuid("0e1e00aa-f93d-5dc7-9912-e07d1fa6bd67");
	else if (T == "IIterator!(VpnDomainNameInfo)")
		return uuid("29f9008e-3e81-5c58-8a78-6be91abcc17d");
	else if (T == "IIterable!(VpnDomainNameInfo)")
		return uuid("33abe488-be1a-558a-a9cf-b5330ab49f50");
	else if (T == "IIterator!(VpnNamespaceInfo)")
		return uuid("91e28244-7555-594d-b54d-9c87095e79a2");
	else if (T == "IIterable!(VpnNamespaceInfo)")
		return uuid("17781d03-ddcf-553f-aba8-d2e8155cb6b8");
	else if (T == "IIterator!(VpnPacketBuffer)")
		return uuid("04c88ba5-05e9-53b2-8524-df458d2a9179");
	else if (T == "IIterable!(VpnPacketBuffer)")
		return uuid("fa954f6e-30d7-50e0-9d43-dadb6c53e196");
	else if (T == "IIterator!(VpnRoute)")
		return uuid("44f813ac-052f-514b-a776-aad37a64fdc6");
	else if (T == "IIterable!(VpnRoute)")
		return uuid("bbf498d5-b9ef-55f1-97b1-77a06639e4e2");
	else if (T == "IIterator!(VpnTrafficFilter)")
		return uuid("8f37d5a0-5905-55bf-9c18-b9b3b544648b");
	else if (T == "IIterable!(VpnTrafficFilter)")
		return uuid("b6d4c853-77c9-52ca-9ce9-853add4554cf");
	else if (T == "IVectorView!(IVpnCustomPrompt)")
		return uuid("804449c2-3bc1-5cfe-8468-3bbece4a5cd7");
	else if (T == "IVectorView!(IVpnCustomPromptElement)")
		return uuid("25eaf5eb-2f39-5b4d-bb6e-e652c7d00f6a");
	else if (T == "IVectorView!(IVpnProfile)")
		return uuid("f1dc8f7d-ca33-53fd-9d4c-40c51b5873ec");
	else if (T == "IVectorView!(VpnAppId)")
		return uuid("faecbc50-da9a-5102-8229-1dd24e873d1f");
	else if (T == "IVectorView!(VpnDomainNameInfo)")
		return uuid("d4772f57-2328-5c25-9a11-246da17e39d5");
	else if (T == "IVectorView!(VpnNamespaceInfo)")
		return uuid("c6ed05a9-4dc7-507d-9c92-7c78c2ef4786");
	else if (T == "IVectorView!(VpnRoute)")
		return uuid("43701a74-e497-5559-a71b-11d0156fa839");
	else if (T == "IVectorView!(VpnTrafficFilter)")
		return uuid("75de1766-ee22-56e9-be99-2714065349e5");
	else if (T == "IVector!(VpnAppId)")
		return uuid("89097d58-edb8-5ad4-abc5-603f21dd4b15");
	else if (T == "IVector!(VpnDomainNameInfo)")
		return uuid("8179b6f2-7273-5ca3-a81b-53e902ca209b");
	else if (T == "IVector!(VpnNamespaceInfo)")
		return uuid("056bddf2-135d-542e-a322-36aa4ca0e60d");
	else if (T == "IVector!(VpnRoute)")
		return uuid("5b026bd8-2cc5-5570-bde5-0db7c4331279");
	else if (T == "IVector!(VpnTrafficFilter)")
		return uuid("2a5b9ad8-f005-5f69-ad81-300642e7c667");
	else if (T == "AsyncOperationCompletedHandler!(VpnCredential)")
		return uuid("1c9c4504-4b75-57ea-837d-5338358bb762");
	else if (T == "IAsyncOperation!(VpnCredential)")
		return uuid("216a6f97-dba1-5f71-a14b-2818ad3c4c69");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Networking.Vpn.VpnManagementErrorStatus)")
		return uuid("31229f8c-709d-5017-8629-57ef1289e616");
	else if (T == "IAsyncOperation!(Windows.Networking.Vpn.VpnManagementErrorStatus)")
		return uuid("e99b86dc-6b65-5f23-9419-90b55852f283");
	else if (T == "TypedEventHandler!(VpnChannel, VpnChannelActivityEventArgs)")
		return uuid("39907949-a8cc-5ce5-9e0a-06e3b2d31570");
	else if (T == "TypedEventHandler!(VpnChannel, VpnChannelActivityStateChangedArgs)")
		return uuid("2cfcf1ba-bffc-5746-b868-2e45a46d2958");
	else if (T == "IIterator!(HostName)")
		return uuid("557bf83c-a428-5dbd-a0fe-05f6ee543d45");
	else if (T == "IIterable!(HostName)")
		return uuid("9e5f3ed0-cf1c-5d38-832c-acea6164bf5c");
	else if (T == "IVectorView!(HostName)")
		return uuid("f4706ab1-55a3-5270-afb2-732988fe8227");
	else if (T == "IIterator!(Uri)")
		return uuid("1c157d0f-5efe-5cec-bbd6-0c6ce9af07a5");
	else if (T == "IIterable!(Uri)")
		return uuid("b0d63b78-78ad-5e31-b6d8-e32a0e16c447");
	else if (T == "IVectorView!(Uri)")
		return uuid("4b8385bd-a2cd-5ff1-bf74-7ea580423e50");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IVector!(HostName)")
		return uuid("90c71c29-a9b5-5267-a5ad-8b756736317c");
	else if (T == "IVector!(Uri)")
		return uuid("0d82bd8d-fe62-5d67-a7b9-7886dd75bc4e");
	else if (T == "IKeyValuePair!(HSTRING, SpatialAnchor)")
		return uuid("627298e7-068d-53f6-9154-d7d8d8091463");
	else if (T == "IIterator!(SpatialBoundingVolume)")
		return uuid("eb8385c5-0775-5415-8f76-327e6e388ac5");
	else if (T == "IIterable!(SpatialBoundingVolume)")
		return uuid("89e8f1ee-3a2a-5b69-a786-cddcf7456a3a");
	else if (T == "IMapView!(HSTRING, SpatialAnchor)")
		return uuid("2d344564-21b1-5470-b013-488cdde45c48");
	else if (T == "AsyncOperationCompletedHandler!(SpatialAnchorStore)")
		return uuid("84c21a3a-037a-503f-8006-ab577b7f6f66");
	else if (T == "IAsyncOperation!(SpatialAnchorStore)")
		return uuid("1cd05e51-1457-5023-8f5d-fe5e5a953423");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Perception.Spatial.SpatialPerceptionAccessStatus)")
		return uuid("6ced54c8-7689-525a-80e1-956a9d85cd83");
	else if (T == "IAsyncOperation!(Windows.Perception.Spatial.SpatialPerceptionAccessStatus)")
		return uuid("b425d126-1069-563f-a863-44a30a8f071d");
	else if (T == "AsyncOperationCompletedHandler!(SpatialStageFrameOfReference)")
		return uuid("fbb7e9fb-e49a-54e1-8c83-d1a87e4d2304");
	else if (T == "IAsyncOperation!(SpatialStageFrameOfReference)")
		return uuid("b4d8b1bf-1d66-5458-a5df-3f4f6c366c58");
	else if (T == "IReference!(Windows.Perception.Spatial.SpatialBoundingFrustum)")
		return uuid("f434face-0c36-5749-a8a0-0bb6ce78a614");
	else if (T == "IReference!(Windows.Perception.Spatial.SpatialBoundingOrientedBox)")
		return uuid("09f88309-9f81-5207-bdb2-abef926db18f");
	else if (T == "TypedEventHandler!(SpatialAnchor, SpatialAnchorRawCoordinateSystemAdjustedEventArgs)")
		return uuid("fa43f9e4-3558-59c8-9a77-6e8b765adcc8");
	else if (T == "TypedEventHandler!(SpatialEntityWatcher, IInspectable)")
		return uuid("50171823-30a9-5938-9f3b-358d86169f2e");
	else if (T == "TypedEventHandler!(SpatialEntityWatcher, SpatialEntityAddedEventArgs)")
		return uuid("f8edae01-6a30-52cc-b543-8abdb26529b4");
	else if (T == "TypedEventHandler!(SpatialEntityWatcher, SpatialEntityRemovedEventArgs)")
		return uuid("36f982ad-eaa2-5263-861e-2acf030c9e17");
	else if (T == "TypedEventHandler!(SpatialEntityWatcher, SpatialEntityUpdatedEventArgs)")
		return uuid("a15fd0c0-8a0a-5a7d-897a-f206cc509190");
	else if (T == "TypedEventHandler!(SpatialLocator, IInspectable)")
		return uuid("dbb08ab5-6b40-55fb-83d3-50d5373a3b20");
	else if (T == "TypedEventHandler!(SpatialLocator, SpatialLocatorPositionalTrackingDeactivatingEventArgs)")
		return uuid("34bf236c-e5d6-501f-8693-bc1d8d431d7e");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IReference!(Windows.Foundation.Numerics.Matrix4x4)")
		return uuid("dacbffdc-68ef-5fd0-b657-782d0ac9807e");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IKeyValuePair!(GUID, SpatialSurfaceInfo)")
		return uuid("a6bdf94a-2697-5ff2-89dc-a17cecdcda6c");
	else if (T == "IMapView!(GUID, SpatialSurfaceInfo)")
		return uuid("eaa722b9-2859-593d-bb66-0c538e415e71");
	else if (T == "AsyncOperationCompletedHandler!(SpatialSurfaceMesh)")
		return uuid("4680f7f6-44c5-5fc6-8d51-d6962915fa23");
	else if (T == "IAsyncOperation!(SpatialSurfaceMesh)")
		return uuid("f5938fad-a8a1-5f7e-9440-bdb781ad26b6");
	else if (T == "TypedEventHandler!(SpatialSurfaceObserver, IInspectable)")
		return uuid("8b31274a-7693-52be-9014-b0f5f65a3539");
	else if (T == "IReference!(Windows.Perception.Spatial.SpatialBoundingOrientedBox)")
		return uuid("09f88309-9f81-5207-bdb2-abef926db18f");
	else if (T == "IIterator!(Windows.Graphics.DirectX.DirectXPixelFormat)")
		return uuid("ea016190-ac80-5840-8f58-ff434c7b2907");
	else if (T == "IIterable!(Windows.Graphics.DirectX.DirectXPixelFormat)")
		return uuid("3908f2c6-1aee-5129-b9a6-2a6e01d9507e");
	else if (T == "IVectorView!(Windows.Graphics.DirectX.DirectXPixelFormat)")
		return uuid("1edda1c2-0f6e-516c-80b8-7687dcd1280e");
	else if (T == "IIterator!(SpatialBoundingVolume)")
		return uuid("eb8385c5-0775-5415-8f76-327e6e388ac5");
	else if (T == "IIterable!(SpatialBoundingVolume)")
		return uuid("89e8f1ee-3a2a-5b69-a786-cddcf7456a3a");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Perception.Spatial.SpatialPerceptionAccessStatus)")
		return uuid("6ced54c8-7689-525a-80e1-956a9d85cd83");
	else if (T == "IAsyncOperation!(Windows.Perception.Spatial.SpatialPerceptionAccessStatus)")
		return uuid("b425d126-1069-563f-a863-44a30a8f071d");
	else if (T == "IIterator!(MicrosoftAccountMultiFactorSessionInfo)")
		return uuid("fd6d2ade-0fd3-5cd0-b86e-d24ad9a2092c");
	else if (T == "IIterable!(MicrosoftAccountMultiFactorSessionInfo)")
		return uuid("85a662c8-8a5d-59a8-9f73-ee237393c55c");
	else if (T == "IVectorView!(MicrosoftAccountMultiFactorSessionInfo)")
		return uuid("6abe486b-ea5e-5fda-9121-79d8a785c465");
	else if (T == "AsyncOperationCompletedHandler!(MicrosoftAccountMultiFactorGetSessionsResult)")
		return uuid("cecbb0ca-0a27-57d4-a35d-4998f199dac9");
	else if (T == "IAsyncOperation!(MicrosoftAccountMultiFactorGetSessionsResult)")
		return uuid("544cc4e9-a3da-5398-a308-e332a58961f6");
	else if (T == "AsyncOperationCompletedHandler!(MicrosoftAccountMultiFactorOneTimeCodedInfo)")
		return uuid("02e84540-f4a1-589f-9360-a0502e6dc9c0");
	else if (T == "IAsyncOperation!(MicrosoftAccountMultiFactorOneTimeCodedInfo)")
		return uuid("ae63588e-1fc2-58a3-af36-6f67b8922be7");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse)")
		return uuid("8d7f8240-81cf-5896-95fa-e7b223f769f9");
	else if (T == "IAsyncOperation!(Windows.Security.Authentication.Identity.Core.MicrosoftAccountMultiFactorServiceResponse)")
		return uuid("05953b8e-5adb-51b9-a94a-ad030030b8e3");
	else if (T == "AsyncOperationCompletedHandler!(MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo)")
		return uuid("6cc53e8c-d0e4-5ded-94f4-7c73b132d2a4");
	else if (T == "IAsyncOperation!(MicrosoftAccountMultiFactorUnregisteredAccountsAndSessionInfo)")
		return uuid("989f4c21-ef69-56ad-ba8c-e5d25a3c624e");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(EnterpriseKeyCredentialRegistrationInfo)")
		return uuid("e3497259-1737-5fad-803b-9d2d29273e3b");
	else if (T == "IIterable!(EnterpriseKeyCredentialRegistrationInfo)")
		return uuid("e7eea796-77f9-5473-a913-734ea0e3ff46");
	else if (T == "IVectorView!(EnterpriseKeyCredentialRegistrationInfo)")
		return uuid("3b631cbb-63f8-5eff-8815-69c822c09ce1");
	else if (T == "IIterator!(SecondaryAuthenticationFactorInfo)")
		return uuid("0eedbda6-2de0-50af-abc4-46073245fb2d");
	else if (T == "IIterable!(SecondaryAuthenticationFactorInfo)")
		return uuid("43b7bbe4-f096-53dd-8c16-1faa4b468c86");
	else if (T == "IVectorView!(SecondaryAuthenticationFactorInfo)")
		return uuid("63c2e57e-3b00-5752-8fa7-cb9cbe8fe088");
	else if (T == "EventHandler!(SecondaryAuthenticationFactorAuthenticationStageChangedEventArgs)")
		return uuid("10409b3c-42e4-586f-84c1-803da23765af");
	else if (T == "AsyncOperationCompletedHandler!(SecondaryAuthenticationFactorAuthenticationResult)")
		return uuid("2547373d-9684-5e5b-a9b8-a6f90ce632ad");
	else if (T == "IAsyncOperation!(SecondaryAuthenticationFactorAuthenticationResult)")
		return uuid("18b0a73c-db59-5279-a76d-02416b2d90b6");
	else if (T == "AsyncOperationCompletedHandler!(SecondaryAuthenticationFactorAuthenticationStageInfo)")
		return uuid("7811d384-2eb8-58f1-afed-4b4b888f4357");
	else if (T == "IAsyncOperation!(SecondaryAuthenticationFactorAuthenticationStageInfo)")
		return uuid("864a2317-b440-5e9e-ae55-4550bb6307df");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus)")
		return uuid("2294a212-9061-5e99-a226-a44ac8f8f4dd");
	else if (T == "IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorDevicePresenceMonitoringRegistrationStatus)")
		return uuid("7f37ecea-e3e8-53fc-b0e5-7aa471970edd");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorFinishAuthenticationStatus)")
		return uuid("ae1d7146-3d91-50e3-8f13-613cf2801207");
	else if (T == "IAsyncOperation!(Windows.Security.Authentication.Identity.Provider.SecondaryAuthenticationFactorFinishAuthenticationStatus)")
		return uuid("9159437a-4397-546e-be61-2ef161717e06");
	else if (T == "AsyncOperationCompletedHandler!(SecondaryAuthenticationFactorRegistrationResult)")
		return uuid("a04902e8-f830-50ea-89ea-96e2a6fb9453");
	else if (T == "IAsyncOperation!(SecondaryAuthenticationFactorRegistrationResult)")
		return uuid("05da520c-aba4-584c-bc08-19c5389a70e2");
	else if (T == "IIterator!(OnlineIdServiceTicket)")
		return uuid("039feee7-0882-50e2-bc3f-4fac7e8c2769");
	else if (T == "IIterable!(OnlineIdServiceTicket)")
		return uuid("809d1314-97ab-5544-9891-ddcdfadd1dbb");
	else if (T == "IIterator!(OnlineIdServiceTicketRequest)")
		return uuid("b6a5c8e4-6e3c-5c37-92cf-cf9f1c383335");
	else if (T == "IIterable!(OnlineIdServiceTicketRequest)")
		return uuid("cb72d686-9516-520d-a274-fa4cd1762cb2");
	else if (T == "IVectorView!(OnlineIdServiceTicket)")
		return uuid("45f03233-e7a8-5ade-9ff3-0b8a1c6ba76b");
	else if (T == "AsyncOperationCompletedHandler!(OnlineIdSystemTicketResult)")
		return uuid("05f9f2ec-5950-56f8-b7f8-22e20b984679");
	else if (T == "IAsyncOperation!(OnlineIdSystemTicketResult)")
		return uuid("162f5870-5a4a-503c-987f-a05a1312d8e4");
	else if (T == "AsyncOperationCompletedHandler!(UserIdentity)")
		return uuid("cded76fd-7841-52a0-a771-76cd751d13cd");
	else if (T == "IAsyncOperation!(UserIdentity)")
		return uuid("b8cc25e1-409f-57f4-bbe4-3b95b74b86c8");
	else if (T == "IIterator!(WebTokenResponse)")
		return uuid("f080b0c9-a095-5b3a-a1dc-d17e7d2982c7");
	else if (T == "IIterable!(WebTokenResponse)")
		return uuid("7e5bb7ec-bbd7-5575-9a61-f5815fa22a0e");
	else if (T == "IVectorView!(WebTokenResponse)")
		return uuid("199e065c-8195-55da-9c10-8aeaf9ac1062");
	else if (T == "AsyncOperationCompletedHandler!(WebTokenRequestResult)")
		return uuid("deb54b22-70f2-55ab-97c0-6cbdc5ddb6f0");
	else if (T == "IAsyncOperation!(WebTokenRequestResult)")
		return uuid("0a815852-7c44-5674-b3d2-fa2e4c1e46c9");
	else if (T == "TypedEventHandler!(WebAccountMonitor, IInspectable)")
		return uuid("c8cb498d-e0da-52a1-abf9-7198c7f5cb42");
	else if (T == "TypedEventHandler!(WebAccountMonitor, WebAccountEventArgs)")
		return uuid("fa704f04-87b6-516b-9596-cd7cc092169b");
	else if (T == "AsyncOperationCompletedHandler!(WebAccount)")
		return uuid("4bd6f1e5-ca89-5240-8f3d-7f1b54ae90a7");
	else if (T == "IAsyncOperation!(WebAccount)")
		return uuid("acd76b54-297f-5a18-9143-20a309e2dfd3");
	else if (T == "AsyncOperationCompletedHandler!(WebAccountProvider)")
		return uuid("9477622b-1340-5574-81fc-5013581f57c9");
	else if (T == "IAsyncOperation!(WebAccountProvider)")
		return uuid("88c66009-12f7-58e2-8dbe-6efc620c85ba");
	else if (T == "IIterator!(WebAccount)")
		return uuid("bfb82cca-aebc-567c-95d9-eba25c365faa");
	else if (T == "IIterable!(WebAccount)")
		return uuid("cb15d439-a910-542a-89ed-7cfe67848a83");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "AsyncOperationCompletedHandler!(WebAuthenticationResult)")
		return uuid("3c1ec44c-e942-54e5-bcd3-e329c951f595");
	else if (T == "IAsyncOperation!(WebAuthenticationResult)")
		return uuid("b34952ac-265e-5947-8735-e9318f4301ff");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IIterator!(WebAccountClientView)")
		return uuid("a5984607-661d-5e9c-a0ba-5c7d5f41af1c");
	else if (T == "IIterable!(WebAccountClientView)")
		return uuid("610e0f9d-aae4-54e1-bb0b-1aca14110abf");
	else if (T == "IIterator!(WebProviderTokenResponse)")
		return uuid("eb57825d-5ad6-5ee0-8dc6-a53c1e82e3ab");
	else if (T == "IIterable!(WebProviderTokenResponse)")
		return uuid("e9bac236-c077-553a-b4ae-b58fb0b89918");
	else if (T == "IVectorView!(WebAccountClientView)")
		return uuid("3dfd5eff-8fa4-5e9d-8d1c-0f18d542be35");
	else if (T == "IVectorView!(WebProviderTokenResponse)")
		return uuid("1ae644b7-9839-585b-8792-ecd5050b88bb");
	else if (T == "IVector!(WebProviderTokenResponse)")
		return uuid("4e7ad5cf-390f-5ecd-b714-3c654b84cbba");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "AsyncOperationCompletedHandler!(WebAccount)")
		return uuid("4bd6f1e5-ca89-5240-8f3d-7f1b54ae90a7");
	else if (T == "IAsyncOperation!(WebAccount)")
		return uuid("acd76b54-297f-5a18-9143-20a309e2dfd3");
	else if (T == "IIterator!(WebAccount)")
		return uuid("bfb82cca-aebc-567c-95d9-eba25c365faa");
	else if (T == "IIterable!(WebAccount)")
		return uuid("cb15d439-a910-542a-89ed-7cfe67848a83");
	else if (T == "IVectorView!(WebAccount)")
		return uuid("e0798d3d-2b4a-589a-ab12-02dccc158afc");
	else if (T == "IIterator!(HttpCookie)")
		return uuid("626bc177-8403-5030-a88c-7485cc89d730");
	else if (T == "IIterable!(HttpCookie)")
		return uuid("0eb9fa36-88de-590d-8ea0-b613d0ab015f");
	else if (T == "IVectorView!(HttpCookie)")
		return uuid("0064c4f6-3fca-5823-9d92-86c40b28adbc");
	else if (T == "IVector!(HttpCookie)")
		return uuid("98a6c2fe-469b-5bdd-a16d-7002c3a0853d");
	else if (T == "AsyncOperationCompletedHandler!(CryptographicKey)")
		return uuid("04ca4378-f594-5de6-a555-304f62cb4faf");
	else if (T == "IAsyncOperation!(CryptographicKey)")
		return uuid("81ca789b-98df-5c6a-9531-966238e3e7ae");
	else if (T == "AsyncOperationCompletedHandler!(IBuffer)")
		return uuid("51c3d2fd-b8a1-5620-b746-7ee6d533aca3");
	else if (T == "IAsyncOperation!(IBuffer)")
		return uuid("3bee8834-b9a7-5a80-a746-5ef097227878");
	else if (T == "IIterator!(PasswordCredential)")
		return uuid("b01093d8-4f52-50f0-9aa4-e22639111162");
	else if (T == "IIterable!(PasswordCredential)")
		return uuid("0d224a66-bad5-5ad5-9ade-1e9f5a60fe73");
	else if (T == "IIterator!(WebAccount)")
		return uuid("bfb82cca-aebc-567c-95d9-eba25c365faa");
	else if (T == "IIterable!(WebAccount)")
		return uuid("cb15d439-a910-542a-89ed-7cfe67848a83");
	else if (T == "IVectorView!(PasswordCredential)")
		return uuid("4e6185ad-a6df-5428-aff5-17e45f3f476f");
	else if (T == "IVectorView!(WebAccount)")
		return uuid("e0798d3d-2b4a-589a-ab12-02dccc158afc");
	else if (T == "AsyncOperationCompletedHandler!(KeyCredentialAttestationResult)")
		return uuid("2c16e103-f783-5dd9-a5f3-3362bcbdaabd");
	else if (T == "IAsyncOperation!(KeyCredentialAttestationResult)")
		return uuid("b83d29e9-f4e4-5aa4-92d5-b262cb40c622");
	else if (T == "AsyncOperationCompletedHandler!(KeyCredentialOperationResult)")
		return uuid("39b4609a-0202-55fa-8005-6f83709e20f3");
	else if (T == "IAsyncOperation!(KeyCredentialOperationResult)")
		return uuid("6576e5b3-9535-50d6-98f6-c67d6aaca2c5");
	else if (T == "AsyncOperationCompletedHandler!(KeyCredentialRetrievalResult)")
		return uuid("03ea60b1-a874-58ce-8e8e-fff448b6733e");
	else if (T == "IAsyncOperation!(KeyCredentialRetrievalResult)")
		return uuid("89d0ad1e-bd4c-55b4-810e-bddd4cec7a2a");
	else if (T == "AsyncOperationCompletedHandler!(WebAccount)")
		return uuid("4bd6f1e5-ca89-5240-8f3d-7f1b54ae90a7");
	else if (T == "IAsyncOperation!(WebAccount)")
		return uuid("acd76b54-297f-5a18-9143-20a309e2dfd3");
	else if (T == "AsyncOperationCompletedHandler!(WebAccountProvider)")
		return uuid("9477622b-1340-5574-81fc-5013581f57c9");
	else if (T == "IAsyncOperation!(WebAccountProvider)")
		return uuid("88c66009-12f7-58e2-8dbe-6efc620c85ba");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStream)")
		return uuid("398c4183-793d-5b00-819b-4aef92485e94");
	else if (T == "IAsyncOperation!(IRandomAccessStream)")
		return uuid("430ecece-1418-5d19-81b2-5ddb381603cc");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "AsyncOperationCompletedHandler!(CredentialPickerResults)")
		return uuid("091a96b8-52a6-523a-8c94-7f9c11c6dae5");
	else if (T == "IAsyncOperation!(CredentialPickerResults)")
		return uuid("83fd09a4-21fd-5c01-9cf6-8293b2929a9f");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Security.Credentials.UI.UserConsentVerificationResult)")
		return uuid("0cffc6c9-4c2b-5cd4-b38c-7b8df3ff5afb");
	else if (T == "IAsyncOperation!(Windows.Security.Credentials.UI.UserConsentVerificationResult)")
		return uuid("fd596ffd-2318-558f-9dbe-d21df43764a5");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Security.Credentials.UI.UserConsentVerifierAvailability)")
		return uuid("28988174-ace2-5c15-a0df-580a26d94294");
	else if (T == "IAsyncOperation!(Windows.Security.Credentials.UI.UserConsentVerifierAvailability)")
		return uuid("ddd384f3-d818-5d83-ab4b-32119c28587c");
	else if (T == "IIterator!(Certificate)")
		return uuid("676fc159-f15c-58bd-91a7-28f7e795c756");
	else if (T == "IIterable!(Certificate)")
		return uuid("0c7d1423-e8fd-5a91-b55c-8bfbe7ac2d40");
	else if (T == "IIterator!(CertificateExtension)")
		return uuid("5e5af982-332d-54ec-8e54-e62c1a1eace9");
	else if (T == "IIterable!(CertificateExtension)")
		return uuid("1bdd7127-73b3-5192-8bde-20c136281260");
	else if (T == "IIterator!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("8bcad2b7-0e3b-5eae-bf69-e1f6d9c888f8");
	else if (T == "IIterable!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("2628f58f-3f02-54f2-808f-e1117709d6d0");
	else if (T == "IIterator!(CmsSignerInfo)")
		return uuid("ba691628-d419-5e0a-b924-03ebc236b11e");
	else if (T == "IIterable!(CmsSignerInfo)")
		return uuid("6af24174-2dda-5a54-a0b9-4d6690059427");
	else if (T == "IVectorView!(Certificate)")
		return uuid("963f7013-77c2-51c5-8038-b5bcef633edb");
	else if (T == "IVectorView!(CertificateExtension)")
		return uuid("43857453-e7b1-5cba-9730-5ea4ddebdd95");
	else if (T == "IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("cb383486-c2bc-5756-912d-6a708a07e5bd");
	else if (T == "IVectorView!(CmsSignerInfo)")
		return uuid("f46bcaa8-747c-5a93-82fe-85d63549fe81");
	else if (T == "IVector!(Certificate)")
		return uuid("36282c0f-2f1f-57f4-b2b1-867af90c3d13");
	else if (T == "IVector!(CertificateExtension)")
		return uuid("4c2523e8-9773-50fe-b870-483fd8b906dc");
	else if (T == "IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("d7828cf7-4301-58d3-aab5-06e5eefcf79f");
	else if (T == "AsyncOperationCompletedHandler!(CertificateChain)")
		return uuid("4c3f50e9-90e3-5a30-9015-4aa0376904f3");
	else if (T == "IAsyncOperation!(CertificateChain)")
		return uuid("f618c7d4-aee1-58ae-afe8-fc336daf0395");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Security.Cryptography.Certificates.SignatureValidationResult)")
		return uuid("dff50005-78ad-5f4f-a085-cb614a674a25");
	else if (T == "IAsyncOperation!(Windows.Security.Cryptography.Certificates.SignatureValidationResult)")
		return uuid("f09c0bcf-ce3b-5dff-971f-2c3ffe6fd04d");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(IBuffer)")
		return uuid("51c3d2fd-b8a1-5620-b746-7ee6d533aca3");
	else if (T == "IAsyncOperation!(IBuffer)")
		return uuid("3bee8834-b9a7-5a80-a746-5ef097227878");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "AsyncOperationCompletedHandler!(CryptographicKey)")
		return uuid("04ca4378-f594-5de6-a555-304f62cb4faf");
	else if (T == "IAsyncOperation!(CryptographicKey)")
		return uuid("81ca789b-98df-5c6a-9531-966238e3e7ae");
	else if (T == "AsyncOperationCompletedHandler!(IBuffer)")
		return uuid("51c3d2fd-b8a1-5620-b746-7ee6d533aca3");
	else if (T == "IAsyncOperation!(IBuffer)")
		return uuid("3bee8834-b9a7-5a80-a746-5ef097227878");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(IBuffer)")
		return uuid("51c3d2fd-b8a1-5620-b746-7ee6d533aca3");
	else if (T == "IAsyncOperation!(IBuffer)")
		return uuid("3bee8834-b9a7-5a80-a746-5ef097227878");
	else if (T == "AsyncOperationCompletedHandler!(EasComplianceResults)")
		return uuid("24a4131a-ed31-5eff-972e-750b956404d0");
	else if (T == "IAsyncOperation!(EasComplianceResults)")
		return uuid("fc3a733a-7ded-5e92-a569-b43389ee8827");
	else if (T == "IIterator!(Windows.Services.Cortana.CortanaPermission)")
		return uuid("0f1ac33c-511a-52e8-af09-d89f7004e8c5");
	else if (T == "IIterable!(Windows.Services.Cortana.CortanaPermission)")
		return uuid("36a12eae-2e24-5e07-bfd0-344a92990916");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Services.Cortana.CortanaPermissionsChangeResult)")
		return uuid("ec1c6586-5e0d-5bc0-b84f-20052c5ac7a9");
	else if (T == "IAsyncOperation!(Windows.Services.Cortana.CortanaPermissionsChangeResult)")
		return uuid("838a3dd0-f0a3-508f-846a-d3c19e4fe7a0");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(GuidanceLaneInfo)")
		return uuid("4d4ce4d8-7ce0-5168-ab29-6bcf7f198a58");
	else if (T == "IIterable!(GuidanceLaneInfo)")
		return uuid("45960d72-1bf6-5a1d-a17f-e83f56f1ab57");
	else if (T == "IIterator!(GuidanceManeuver)")
		return uuid("74a37092-2641-5c3d-b3cb-689dc8aba22e");
	else if (T == "IIterable!(GuidanceManeuver)")
		return uuid("b5780d67-8a8b-558f-a4b6-c4531ef32ec8");
	else if (T == "IIterator!(GuidanceRoadSegment)")
		return uuid("148cb8ff-3ab9-53ab-8824-256a62047b43");
	else if (T == "IIterable!(GuidanceRoadSegment)")
		return uuid("f7c614c4-0fca-5eda-804c-85c829956334");
	else if (T == "IVectorView!(GuidanceLaneInfo)")
		return uuid("81493670-e515-5c62-b34c-6e3d996cad31");
	else if (T == "IVectorView!(GuidanceManeuver)")
		return uuid("875644d8-57a4-59d6-9d2c-5d450d39d2f6");
	else if (T == "IVectorView!(GuidanceRoadSegment)")
		return uuid("f04c7cc2-4d54-5244-beb2-8f4f05c184e6");
	else if (T == "TypedEventHandler!(GuidanceNavigator, IInspectable)")
		return uuid("3f496c35-3dca-5e91-8730-6ef77e9d70bd");
	else if (T == "TypedEventHandler!(GuidanceNavigator, GuidanceAudioNotificationRequestedEventArgs)")
		return uuid("743db36f-e9aa-557a-9fd7-304c9b0499df");
	else if (T == "TypedEventHandler!(GuidanceNavigator, GuidanceReroutedEventArgs)")
		return uuid("61b92b1b-f22f-581b-bfa0-4868c314c63a");
	else if (T == "TypedEventHandler!(GuidanceNavigator, GuidanceUpdatedEventArgs)")
		return uuid("82b3f7df-bf13-5445-aadc-ec61b50fbb46");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(EnhancedWaypoint)")
		return uuid("164a4c21-d0a0-5d68-80e2-44889dcea6d5");
	else if (T == "IIterable!(EnhancedWaypoint)")
		return uuid("d0545dba-9b05-5e37-bfc0-3da2b51d135b");
	else if (T == "IIterator!(ManeuverWarning)")
		return uuid("df74a2a3-1eeb-5ac2-bc5f-9f2daffce017");
	else if (T == "IIterable!(ManeuverWarning)")
		return uuid("ce0a7c13-d3c4-55af-a90f-c53f7bd93373");
	else if (T == "IIterator!(MapLocation)")
		return uuid("2a704d9a-3997-5f1e-8641-883eba408726");
	else if (T == "IIterable!(MapLocation)")
		return uuid("77da6151-0763-508a-9041-3310baace575");
	else if (T == "IIterator!(MapRoute)")
		return uuid("97e8485a-79c0-5343-93d1-47cdfb55246b");
	else if (T == "IIterable!(MapRoute)")
		return uuid("d88a62a2-0edf-5312-97a8-10aeaea80b99");
	else if (T == "IIterator!(MapRouteLeg)")
		return uuid("dd1be7d2-de62-5752-b2e0-a2b08723b787");
	else if (T == "IIterable!(MapRouteLeg)")
		return uuid("8ff98759-78cd-56e8-877b-83ce846d6f8b");
	else if (T == "IIterator!(MapRouteManeuver)")
		return uuid("a7ab048b-a6dc-5e4c-9321-71b0e465dfe8");
	else if (T == "IIterable!(MapRouteManeuver)")
		return uuid("de9015fb-91d7-556e-bb4d-200b6f58fad4");
	else if (T == "IVectorView!(ManeuverWarning)")
		return uuid("44c11b20-c16d-56e1-a0a3-6eb44f2492ea");
	else if (T == "IVectorView!(MapLocation)")
		return uuid("58d33d10-e2ef-59f1-b85e-a8819ff0d926");
	else if (T == "IVectorView!(MapRoute)")
		return uuid("265676a9-4a33-5d29-971e-8244a021b84e");
	else if (T == "IVectorView!(MapRouteLeg)")
		return uuid("f9976360-b3b0-5a88-b1b6-f4339bb85bf0");
	else if (T == "IVectorView!(MapRouteManeuver)")
		return uuid("a3f56695-468f-55ef-b184-c98b4cc7e484");
	else if (T == "AsyncOperationCompletedHandler!(MapLocationFinderResult)")
		return uuid("26ceeb11-1221-5c2b-bbf9-cfea3663c2ed");
	else if (T == "IAsyncOperation!(MapLocationFinderResult)")
		return uuid("e5e5ee33-abd8-5695-9fe5-ac95850d7198");
	else if (T == "AsyncOperationCompletedHandler!(MapRouteFinderResult)")
		return uuid("6e7a2b4f-811c-54c3-8938-6795f4e67009");
	else if (T == "IAsyncOperation!(MapRouteFinderResult)")
		return uuid("ecaa3e7f-c526-5097-b624-cf743d78a9ba");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IIterator!(Geopoint)")
		return uuid("88225b39-8be9-5c03-9714-8f1642d8a43f");
	else if (T == "IIterable!(Geopoint)")
		return uuid("e7617fc9-2cc7-5bd1-bc5a-f47260834ed8");
	else if (T == "IIterator!(LocalLocation)")
		return uuid("a23c2e87-a8e7-568f-96a1-69e98f86b9d3");
	else if (T == "IIterable!(LocalLocation)")
		return uuid("5474eefb-60f4-58ac-89e2-6e83f79fa76c");
	else if (T == "IIterator!(LocalLocationHoursOfOperationItem)")
		return uuid("3f9ba5c0-b2dc-5777-a81e-b0a2839b152b");
	else if (T == "IIterable!(LocalLocationHoursOfOperationItem)")
		return uuid("f298f515-b9bd-5297-b8bd-1c0040daac76");
	else if (T == "IVectorView!(LocalLocation)")
		return uuid("619192f2-4f9d-5629-ab01-b18512503d73");
	else if (T == "IVectorView!(LocalLocationHoursOfOperationItem)")
		return uuid("65535172-cd91-5b4c-aa60-dab146301284");
	else if (T == "AsyncOperationCompletedHandler!(LocalLocationFinderResult)")
		return uuid("7b4a1b93-2943-5e50-a010-ee9aec1bbfe7");
	else if (T == "IAsyncOperation!(LocalLocationFinderResult)")
		return uuid("08e69b32-f420-5280-a721-075b4fd03d94");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "IIterator!(OfflineMapPackage)")
		return uuid("750f4d37-3766-5842-a425-ccd9b8d80786");
	else if (T == "IIterable!(OfflineMapPackage)")
		return uuid("7522287c-0af2-586c-bb3f-457c07984a6f");
	else if (T == "IVectorView!(OfflineMapPackage)")
		return uuid("2522ebc2-bd9f-551b-b90e-6c28152958a0");
	else if (T == "AsyncOperationCompletedHandler!(OfflineMapPackageQueryResult)")
		return uuid("8a4df3c9-2595-5bec-8ba1-c1d955f168c0");
	else if (T == "IAsyncOperation!(OfflineMapPackageQueryResult)")
		return uuid("c01a663d-6d9b-5385-ae68-0a65a9544514");
	else if (T == "AsyncOperationCompletedHandler!(OfflineMapPackageStartDownloadResult)")
		return uuid("8654a79e-c52f-5f98-af0a-522466c27246");
	else if (T == "IAsyncOperation!(OfflineMapPackageStartDownloadResult)")
		return uuid("911272f7-f5aa-5393-94a1-e96adfad3da4");
	else if (T == "TypedEventHandler!(OfflineMapPackage, IInspectable)")
		return uuid("2d2e0d20-826f-560c-b1c1-b4bd6fbf329a");
	else if (T == "IKeyValuePair!(HSTRING, StoreLicense)")
		return uuid("33eefc64-ef0c-5c8d-b620-476edf7df799");
	else if (T == "IKeyValuePair!(HSTRING, StoreProduct)")
		return uuid("0e89a311-437a-5957-9593-8ed64511545b");
	else if (T == "IIterator!(StoreAvailability)")
		return uuid("50511ccb-089e-5b73-bb4a-4d1ef77b8f0f");
	else if (T == "IIterable!(StoreAvailability)")
		return uuid("c58de1a0-25de-578b-bb69-e0a26d67b203");
	else if (T == "IIterator!(StoreImage)")
		return uuid("fbe076f6-c3d2-5df7-839f-012ac0f951c5");
	else if (T == "IIterable!(StoreImage)")
		return uuid("b2da6de8-ad55-56ce-8754-2c96f4fe1c2e");
	else if (T == "IIterator!(StorePackageUpdate)")
		return uuid("b75dd77b-87ca-5956-8902-84e9ffc97d83");
	else if (T == "IIterable!(StorePackageUpdate)")
		return uuid("6b076c51-849e-5ec5-aed5-9b0585591902");
	else if (T == "IIterator!(Windows.Services.Store.StorePackageUpdateStatus)")
		return uuid("6181d84f-f731-57b8-9a6b-8a12fcd58d04");
	else if (T == "IIterable!(Windows.Services.Store.StorePackageUpdateStatus)")
		return uuid("60832223-7eb4-5cd7-8340-f5077173d364");
	else if (T == "IIterator!(StoreSku)")
		return uuid("365cde92-7fe3-59d5-b8f8-8f05acf50947");
	else if (T == "IIterable!(StoreSku)")
		return uuid("522d34ef-4b5a-5b44-a046-7a16051d011e");
	else if (T == "IIterator!(StoreVideo)")
		return uuid("91b0b554-a537-5e22-b39f-6a935d0bef45");
	else if (T == "IIterable!(StoreVideo)")
		return uuid("46be61e4-7173-565e-aed5-4a2152f1ce69");
	else if (T == "IMapView!(HSTRING, StoreLicense)")
		return uuid("7d0d74f5-4020-54aa-9f3d-0f17127acddf");
	else if (T == "IMapView!(HSTRING, StoreProduct)")
		return uuid("dbaac6e5-61a4-5c88-b5d8-3a3e161c3e4a");
	else if (T == "IVectorView!(StoreAvailability)")
		return uuid("01e5f751-8c50-52cb-abc2-e9862402c78a");
	else if (T == "IVectorView!(StoreImage)")
		return uuid("7e1ceace-82bd-5db3-8f35-9bf0c88ef839");
	else if (T == "IVectorView!(StorePackageUpdate)")
		return uuid("971c3ea6-4388-5a38-ae13-4929b6d6d780");
	else if (T == "IVectorView!(Windows.Services.Store.StorePackageUpdateStatus)")
		return uuid("68e2f036-4982-55e3-8c0f-9bf4e69aa45a");
	else if (T == "IVectorView!(StoreSku)")
		return uuid("407c4593-063d-5c9b-b8e0-949fe1387963");
	else if (T == "IVectorView!(StoreVideo)")
		return uuid("6e31fca5-119e-5799-a51b-cd6addecd870");
	else if (T == "AsyncOperationProgressHandler!(StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus)")
		return uuid("961260f1-7352-5edf-9666-1f9a0a8ee477");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus)")
		return uuid("b3be0c8b-ef1d-56dc-8547-4da06ea563df");
	else if (T == "IAsyncOperationWithProgress!(StorePackageUpdateResult, Windows.Services.Store.StorePackageUpdateStatus)")
		return uuid("42c436ca-51f7-50b2-8fe4-7b754062e6eb");
	else if (T == "AsyncOperationCompletedHandler!(StoreAcquireLicenseResult)")
		return uuid("6987c97c-2c19-5f44-b5ac-37393f3c1a4a");
	else if (T == "IAsyncOperation!(StoreAcquireLicenseResult)")
		return uuid("dd6c4705-a76c-528e-99a5-cdd13197d4cf");
	else if (T == "AsyncOperationCompletedHandler!(StoreAppLicense)")
		return uuid("ceff1e09-e506-50ad-a908-52038c256552");
	else if (T == "IAsyncOperation!(StoreAppLicense)")
		return uuid("3866370b-afc6-5d01-84c2-4574628de539");
	else if (T == "AsyncOperationCompletedHandler!(StoreConsumableResult)")
		return uuid("3f2bb178-3c4e-56ed-86a5-ad13797cfbfd");
	else if (T == "IAsyncOperation!(StoreConsumableResult)")
		return uuid("873c497b-c3f7-5657-b921-3e58ce48ee50");
	else if (T == "AsyncOperationCompletedHandler!(StoreProductPagedQueryResult)")
		return uuid("e786321f-b791-5e38-8bc4-98cb287d1085");
	else if (T == "IAsyncOperation!(StoreProductPagedQueryResult)")
		return uuid("3079e7db-1ba4-5b9e-856a-6576bf7f9c8a");
	else if (T == "AsyncOperationCompletedHandler!(StoreProductQueryResult)")
		return uuid("02f4a42c-0458-58d6-923c-b44ba8ef2222");
	else if (T == "IAsyncOperation!(StoreProductQueryResult)")
		return uuid("9699e7bb-ea1f-5e03-9439-c80e6977b711");
	else if (T == "AsyncOperationCompletedHandler!(StoreProductResult)")
		return uuid("eb93e936-d515-5414-9d15-f050c0b8f521");
	else if (T == "IAsyncOperation!(StoreProductResult)")
		return uuid("9e61e86b-6afb-50ae-afc1-c59f545108dd");
	else if (T == "AsyncOperationCompletedHandler!(StorePurchaseResult)")
		return uuid("1d9f89ee-2fce-54e6-a0a9-52d00c52cc3a");
	else if (T == "IAsyncOperation!(StorePurchaseResult)")
		return uuid("33d8cc30-78f5-5f81-aa2d-a4fa2a3b1c68");
	else if (T == "AsyncOperationCompletedHandler!(StoreSendRequestResult)")
		return uuid("7800b2a3-bbbc-5a11-8c35-d2bde5489e81");
	else if (T == "IAsyncOperation!(StoreSendRequestResult)")
		return uuid("2acdffe8-259c-5eae-93c1-13a23c74dfee");
	else if (T == "TypedEventHandler!(StoreContext, IInspectable)")
		return uuid("d5a00ac7-082d-547c-a04b-2540c1cde97a");
	else if (T == "TypedEventHandler!(StorePackageLicense, IInspectable)")
		return uuid("6c59d637-2970-5f64-9511-d39ac245bc94");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(Windows.Storage.AccessCache.AccessListEntry)")
		return uuid("d1a0a6c4-889d-519b-8508-26241b329b7e");
	else if (T == "IIterable!(Windows.Storage.AccessCache.AccessListEntry)")
		return uuid("4995c2b0-736b-588d-ae42-6f69b025b388");
	else if (T == "IVectorView!(Windows.Storage.AccessCache.AccessListEntry)")
		return uuid("42b49b8a-3014-5d27-8f2c-1ef5ee89ec00");
	else if (T == "TypedEventHandler!(StorageItemMostRecentlyUsedList, ItemRemovedEventArgs)")
		return uuid("029dace8-98d1-5bf7-b780-9717e95027ff");
	else if (T == "AsyncOperationCompletedHandler!(IStorageItem)")
		return uuid("92c3102f-a327-5318-a6c1-76f6b2a0abfb");
	else if (T == "IAsyncOperation!(IStorageItem)")
		return uuid("5fc9c137-ebb7-5e6c-9cba-686f2ec2b0bb");
	else if (T == "AsyncOperationCompletedHandler!(StorageFile)")
		return uuid("e521c894-2c26-5946-9e61-2b5e188d01ed");
	else if (T == "IAsyncOperation!(StorageFile)")
		return uuid("5e52f8ce-aced-5a42-95b4-f674dd84885e");
	else if (T == "AsyncOperationCompletedHandler!(StorageFolder)")
		return uuid("c211026e-9e63-5452-ba54-3a07d6a96874");
	else if (T == "IAsyncOperation!(StorageFolder)")
		return uuid("6be9e7d7-e83a-5cbc-802c-1768960b52c3");
	else if (T == "IIterator!(FileInformation)")
		return uuid("bf2f6543-230e-50bf-9c57-9e4ba8635903");
	else if (T == "IIterable!(FileInformation)")
		return uuid("dd96d7e9-892b-5932-b677-5bc32588008f");
	else if (T == "IIterator!(FolderInformation)")
		return uuid("ff68b5b6-caad-553a-9808-95eea700c9de");
	else if (T == "IIterable!(FolderInformation)")
		return uuid("5c720bf5-7636-51fd-9ef7-d5f57f071a9b");
	else if (T == "IIterator!(IStorageItemInformation)")
		return uuid("3da6401d-1279-55a1-962c-25cd23b99b27");
	else if (T == "IIterable!(IStorageItemInformation)")
		return uuid("43bc252e-a3d6-5f00-a12c-b088d3b912d4");
	else if (T == "IVectorView!(FileInformation)")
		return uuid("50bcd975-67ba-53b7-a5a7-1fb59f04bbb3");
	else if (T == "IVectorView!(FolderInformation)")
		return uuid("506f1329-dbdc-5a37-91d5-b047cb24276d");
	else if (T == "IVectorView!(IStorageItemInformation)")
		return uuid("da3a4ef8-d315-529b-a73b-524490573f7e");
	else if (T == "TypedEventHandler!(IStorageItemInformation, IInspectable)")
		return uuid("5b98b352-e0cf-58de-b2ec-4fd786bbb5a7");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "AsyncOperationCompletedHandler!(BasicProperties)")
		return uuid("c8659aae-4926-52ad-8f60-d89fe5a8df5f");
	else if (T == "IAsyncOperation!(BasicProperties)")
		return uuid("5186131a-4467-504b-977a-0785a8230485");
	else if (T == "AsyncOperationCompletedHandler!(DocumentProperties)")
		return uuid("4452ed4c-642b-501b-9617-7d68b4ac3c66");
	else if (T == "IAsyncOperation!(DocumentProperties)")
		return uuid("6c86e97c-5699-5700-8d35-d350ad3e4df2");
	else if (T == "AsyncOperationCompletedHandler!(ImageProperties)")
		return uuid("c63729bc-e4c3-564c-b137-2cb4f5966a83");
	else if (T == "IAsyncOperation!(ImageProperties)")
		return uuid("fcd07511-e7f8-5bda-8c04-795a639dae8f");
	else if (T == "AsyncOperationCompletedHandler!(MusicProperties)")
		return uuid("d84e1312-d661-5b7f-9566-7421bdedc1ea");
	else if (T == "IAsyncOperation!(MusicProperties)")
		return uuid("0d023b76-20a7-56f3-84ab-ce31e6544b71");
	else if (T == "AsyncOperationCompletedHandler!(StorageItemThumbnail)")
		return uuid("6d0036f2-a8a8-505d-b042-d087dc1fc1b7");
	else if (T == "IAsyncOperation!(StorageItemThumbnail)")
		return uuid("11c7cc5e-c04e-50e7-a65e-6f6903690c16");
	else if (T == "AsyncOperationCompletedHandler!(VideoProperties)")
		return uuid("43401d34-61ab-5cf2-921f-55b616631d1d");
	else if (T == "IAsyncOperation!(VideoProperties)")
		return uuid("447d4590-d3f9-58bf-ac58-6f9a50839efe");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(Geopoint)")
		return uuid("4b5f2f60-19b1-5566-9df6-92a42235cbf9");
	else if (T == "IAsyncOperation!(Geopoint)")
		return uuid("3723e070-c2ae-538f-846e-0f9d280310c0");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IKeyValuePair!(HSTRING, ApplicationDataContainer)")
		return uuid("5adbc543-2170-5ad9-b35e-968cdb78fb30");
	else if (T == "IIterator!(IStorageFile)")
		return uuid("314d2318-74ee-535c-b361-2144dbc573a0");
	else if (T == "IIterable!(IStorageFile)")
		return uuid("76d43c7e-fd09-5908-a2b9-a49b4848294b");
	else if (T == "IIterator!(IStorageItem)")
		return uuid("05b487c2-3830-5d3c-98da-25fa11542dbd");
	else if (T == "IIterable!(IStorageItem)")
		return uuid("bb8b8418-65d1-544b-b083-6d172f568c73");
	else if (T == "IIterator!(StorageFile)")
		return uuid("43e29f53-0298-55aa-a6c8-4edd323d9598");
	else if (T == "IIterable!(StorageFile)")
		return uuid("9ac00304-83ea-5688-87b6-ae38aab65d0b");
	else if (T == "IIterator!(StorageFolder)")
		return uuid("5aac96fb-b3b9-5a7f-a920-4b5a8df81168");
	else if (T == "IIterable!(StorageFolder)")
		return uuid("4669befc-ae5c-52b1-8a97-5466ce61e94e");
	else if (T == "IIterator!(StorageLibrary)")
		return uuid("0a1c6409-fbd3-58c8-9af3-6262cc56e5b3");
	else if (T == "IIterable!(StorageLibrary)")
		return uuid("851e3cfd-306b-5c8e-ae3c-a8d83c623604");
	else if (T == "IIterator!(StorageLibraryChange)")
		return uuid("c48a1103-56e6-5398-84fe-92edad7fc111");
	else if (T == "IIterable!(StorageLibraryChange)")
		return uuid("87c15dfc-0c5e-518b-9206-97d3d9823c61");
	else if (T == "IMapView!(HSTRING, ApplicationDataContainer)")
		return uuid("13624f8d-85cc-5780-a78d-64dba58f2c3c");
	else if (T == "IVectorView!(StorageFolder)")
		return uuid("e20debc6-dc4e-542e-a2e7-a24d19c8dd62");
	else if (T == "IVector!(StorageFolder)")
		return uuid("6c26b7be-5f01-5a60-9dd7-fd17be3a9dd6");
	else if (T == "VectorChangedEventHandler!(StorageFolder)")
		return uuid("2057b641-4b9b-5338-a19a-e9a951916775");
	else if (T == "IObservableVector!(StorageFolder)")
		return uuid("358f44df-2a45-5cb8-9385-1ff66808cde0");
	else if (T == "IVectorView!(IStorageItem)")
		return uuid("85575a41-06cb-58d0-b98a-7c8f06e6e9d7");
	else if (T == "IVectorView!(StorageFile)")
		return uuid("80646519-5e2a-595d-a8cd-2a24b4067f1b");
	else if (T == "IVectorView!(StorageLibraryChange)")
		return uuid("0d3879e2-5c7e-5b6c-954d-10c6da95fbff");
	else if (T == "IVector!(IStorageItem)")
		return uuid("802508e2-9c2c-5b91-89a8-39bcf7223344");
	else if (T == "IVector!(StorageFile)")
		return uuid("fcbc8b8b-6103-5b4e-ba00-4bc2cedb6a35");
	else if (T == "AsyncOperationCompletedHandler!(ApplicationData)")
		return uuid("abafe590-65fe-520a-9d7c-6ab5f1882237");
	else if (T == "IAsyncOperation!(ApplicationData)")
		return uuid("31456b58-a5cb-5c5b-bd6e-ccce3a7bf4b4");
	else if (T == "AsyncOperationCompletedHandler!(IStorageItem)")
		return uuid("92c3102f-a327-5318-a6c1-76f6b2a0abfb");
	else if (T == "IAsyncOperation!(IStorageItem)")
		return uuid("5fc9c137-ebb7-5e6c-9cba-686f2ec2b0bb");
	else if (T == "AsyncOperationCompletedHandler!(StorageFile)")
		return uuid("e521c894-2c26-5946-9e61-2b5e188d01ed");
	else if (T == "IAsyncOperation!(StorageFile)")
		return uuid("5e52f8ce-aced-5a42-95b4-f674dd84885e");
	else if (T == "AsyncOperationCompletedHandler!(StorageFolder)")
		return uuid("c211026e-9e63-5452-ba54-3a07d6a96874");
	else if (T == "IAsyncOperation!(StorageFolder)")
		return uuid("6be9e7d7-e83a-5cbc-802c-1768960b52c3");
	else if (T == "AsyncOperationCompletedHandler!(StorageLibrary)")
		return uuid("36d560c3-731f-5c70-b907-30bc99bc300f");
	else if (T == "IAsyncOperation!(StorageLibrary)")
		return uuid("2f160a19-99c1-52b9-8dca-14e4ab79f287");
	else if (T == "AsyncOperationCompletedHandler!(StorageStreamTransaction)")
		return uuid("d11739e6-2995-5d33-bfff-51b6041f68c1");
	else if (T == "IAsyncOperation!(StorageStreamTransaction)")
		return uuid("0d81405a-9bd3-5e87-82f4-9b4128a887eb");
	else if (T == "TypedEventHandler!(ApplicationData, IInspectable)")
		return uuid("b5348b3b-5081-5ae9-8fa3-4d22d68fb0ea");
	else if (T == "TypedEventHandler!(StorageLibrary, IInspectable)")
		return uuid("edc09538-bbae-5b2b-9e81-b449ea7e48fe");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Storage.Provider.FileUpdateStatus)")
		return uuid("bb185a07-0285-5f37-9c7d-2fc6a3e0e6e5");
	else if (T == "IAsyncOperation!(Windows.Storage.Provider.FileUpdateStatus)")
		return uuid("8f0f439e-87d0-531f-85b1-54f4528f29c3");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(IBuffer)")
		return uuid("51c3d2fd-b8a1-5620-b746-7ee6d533aca3");
	else if (T == "IAsyncOperation!(IBuffer)")
		return uuid("3bee8834-b9a7-5a80-a746-5ef097227878");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStream)")
		return uuid("398c4183-793d-5b00-819b-4aef92485e94");
	else if (T == "IAsyncOperation!(IRandomAccessStream)")
		return uuid("430ecece-1418-5d19-81b2-5ddb381603cc");
	else if (T == "AsyncOperationCompletedHandler!(BasicProperties)")
		return uuid("c8659aae-4926-52ad-8f60-d89fe5a8df5f");
	else if (T == "IAsyncOperation!(BasicProperties)")
		return uuid("5186131a-4467-504b-977a-0785a8230485");
	else if (T == "AsyncOperationCompletedHandler!(StorageItemThumbnail)")
		return uuid("6d0036f2-a8a8-505d-b042-d087dc1fc1b7");
	else if (T == "IAsyncOperation!(StorageItemThumbnail)")
		return uuid("11c7cc5e-c04e-50e7-a65e-6f6903690c16");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(StorageFile)")
		return uuid("e521c894-2c26-5946-9e61-2b5e188d01ed");
	else if (T == "IAsyncOperation!(StorageFile)")
		return uuid("5e52f8ce-aced-5a42-95b4-f674dd84885e");
	else if (T == "IIterator!(StorageFile)")
		return uuid("43e29f53-0298-55aa-a6c8-4edd323d9598");
	else if (T == "IIterable!(StorageFile)")
		return uuid("9ac00304-83ea-5688-87b6-ae38aab65d0b");
	else if (T == "IVectorView!(StorageFile)")
		return uuid("80646519-5e2a-595d-a8cd-2a24b4067f1b");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "AsyncOperationCompletedHandler!(StorageFolder)")
		return uuid("c211026e-9e63-5452-ba54-3a07d6a96874");
	else if (T == "IAsyncOperation!(StorageFolder)")
		return uuid("6be9e7d7-e83a-5cbc-802c-1768960b52c3");
	else if (T == "TypedEventHandler!(FileOpenPickerUI, FileRemovedEventArgs)")
		return uuid("f1fb2939-695b-5f56-841a-a52a7d148572");
	else if (T == "TypedEventHandler!(FileOpenPickerUI, PickerClosingEventArgs)")
		return uuid("2b06bdac-983b-5552-b5c9-b0990a2db3a1");
	else if (T == "TypedEventHandler!(FileSavePickerUI, IInspectable)")
		return uuid("f1e6a632-f97f-54d9-9e1b-a714edc3ff06");
	else if (T == "TypedEventHandler!(FileSavePickerUI, TargetFileRequestedEventArgs)")
		return uuid("d3e1f8c7-45c5-5249-b336-a111bfaa985b");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Storage.Provider.FileUpdateStatus)")
		return uuid("bb185a07-0285-5f37-9c7d-2fc6a3e0e6e5");
	else if (T == "IAsyncOperation!(Windows.Storage.Provider.FileUpdateStatus)")
		return uuid("8f0f439e-87d0-531f-85b1-54f4528f29c3");
	else if (T == "TypedEventHandler!(CachedFileUpdaterUI, IInspectable)")
		return uuid("45fdd443-c0b9-57b0-a84f-7d876edc3149");
	else if (T == "TypedEventHandler!(CachedFileUpdaterUI, FileUpdateRequestedEventArgs)")
		return uuid("ed56ab72-ebd3-52c8-b0ac-987d30090351");
	else if (T == "IIterator!(IIndexableContent)")
		return uuid("6cdb32ba-2361-57a8-a39d-be1df041bdb8");
	else if (T == "IIterable!(IIndexableContent)")
		return uuid("4a6edbfe-0c41-5042-ac58-a885a8fc7928");
	else if (T == "IIterator!(Windows.Storage.Search.SortEntry)")
		return uuid("520434a2-acf7-58c9-b47a-2741f2fac2c2");
	else if (T == "IIterable!(Windows.Storage.Search.SortEntry)")
		return uuid("35aff6f9-ef75-5280-bb84-a2bf8317cf35");
	else if (T == "IVectorView!(IIndexableContent)")
		return uuid("f4512416-6bb8-5c6f-b83a-bf8a2788ce9f");
	else if (T == "IVectorView!(Windows.Storage.Search.SortEntry)")
		return uuid("823c7604-b37b-5465-a169-29497893cdb9");
	else if (T == "IVector!(Windows.Storage.Search.SortEntry)")
		return uuid("d8ea401b-47b3-5254-84f4-eea10c4cf068");
	else if (T == "AsyncOperationCompletedHandler!(Windows.Storage.Search.IndexedState)")
		return uuid("b67a3cba-f5f7-5e51-968a-385126d1f918");
	else if (T == "IAsyncOperation!(Windows.Storage.Search.IndexedState)")
		return uuid("88694b1f-f380-574d-8a05-4f67bd52cd11");
	else if (T == "TypedEventHandler!(IStorageQueryResultBase, IInspectable)")
		return uuid("4ba22861-00c4-597f-b6bf-3af516f3b870");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "AsyncOperationCompletedHandler!(UINT32)")
		return uuid("9343b6e7-e3d2-5e4a-ab2d-2bce4919a6a4");
	else if (T == "IAsyncOperation!(UINT32)")
		return uuid("ef60385f-be78-584b-aaef-7829ada2b0de");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "IIterator!(StorageFile)")
		return uuid("43e29f53-0298-55aa-a6c8-4edd323d9598");
	else if (T == "IIterable!(StorageFile)")
		return uuid("9ac00304-83ea-5688-87b6-ae38aab65d0b");
	else if (T == "IVectorView!(StorageFile)")
		return uuid("80646519-5e2a-595d-a8cd-2a24b4067f1b");
	else if (T == "IIterator!(Windows.Data.Text.TextSegment)")
		return uuid("645a39b4-f001-5272-9015-fb4a327179ae");
	else if (T == "IIterable!(Windows.Data.Text.TextSegment)")
		return uuid("5498f4f3-cee4-5b72-9729-815c4ad7b9dc");
	else if (T == "IVectorView!(Windows.Data.Text.TextSegment)")
		return uuid("2f245f9d-eb5f-5641-9dcc-6ab1946cc7e6");
	else if (T == "IIterator!(StorageFolder)")
		return uuid("5aac96fb-b3b9-5a7f-a920-4b5a8df81168");
	else if (T == "IIterable!(StorageFolder)")
		return uuid("4669befc-ae5c-52b1-8a97-5466ce61e94e");
	else if (T == "IVectorView!(StorageFolder)")
		return uuid("e20debc6-dc4e-542e-a2e7-a24d19c8dd62");
	else if (T == "IIterator!(IStorageItem)")
		return uuid("05b487c2-3830-5d3c-98da-25fa11542dbd");
	else if (T == "IIterable!(IStorageItem)")
		return uuid("bb8b8418-65d1-544b-b083-6d172f568c73");
	else if (T == "IVectorView!(IStorageItem)")
		return uuid("85575a41-06cb-58d0-b98a-7c8f06e6e9d7");
	else if (T == "IKeyValuePair!(HSTRING, IBuffer)")
		return uuid("9114f794-2ceb-5b03-9b22-36884e1f58b3");
	else if (T == "IKeyValuePair!(HSTRING, RandomAccessStreamReference)")
		return uuid("e5195792-aeab-56e8-bd30-1372c4340bf6");
	else if (T == "IKeyValuePair!(UINT32, IBuffer)")
		return uuid("82a3a3b7-e04a-5395-8487-7f94f1508ce7");
	else if (T == "IIterator!(IBuffer)")
		return uuid("afee38e0-f882-5f10-9655-1fc98cc8cce5");
	else if (T == "IIterable!(IBuffer)")
		return uuid("902972bf-a984-5443-b1c5-2f04a99e1fca");
	else if (T == "IIterator!(IRandomAccessStream)")
		return uuid("c875446a-587f-58da-897e-3bbe5ec7c30b");
	else if (T == "IIterable!(IRandomAccessStream)")
		return uuid("ba666a00-1555-5df4-81a5-07d23f7ffceb");
	else if (T == "IMapView!(HSTRING, IBuffer)")
		return uuid("2cfeec4f-e261-5f4c-aee1-c78518e9d5b9");
	else if (T == "IMapView!(HSTRING, RandomAccessStreamReference)")
		return uuid("0a4ce7a5-dfe0-5796-a438-effdfaa31f1b");
	else if (T == "IMapView!(UINT32, IBuffer)")
		return uuid("57dc41e6-8b4d-5910-9703-d7c668436852");
	else if (T == "IMap!(HSTRING, RandomAccessStreamReference)")
		return uuid("e5d2ccfc-825a-5a8e-82aa-095ed5dbd5d1");
	else if (T == "IMap!(UINT32, IBuffer)")
		return uuid("5d2591df-48c5-5734-9ef1-bd639b032007");
	else if (T == "IVectorView!(IBuffer)")
		return uuid("fd944562-11d6-5eab-bd72-701993b68fac");
	else if (T == "IVectorView!(IRandomAccessStream)")
		return uuid("92cd0a46-2266-5cd6-9293-e111299f2793");
	else if (T == "IVector!(IRandomAccessStream)")
		return uuid("2736b66b-daa3-5e0c-9842-6a0f44b5440b");
	else if (T == "AsyncOperationProgressHandler!(IBuffer, UINT32)")
		return uuid("bf666554-7605-5d9a-b14e-18d8c8472afe");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(IBuffer, UINT32)")
		return uuid("06386a7a-e009-5b0b-ab68-a8e48b516647");
	else if (T == "IAsyncOperationWithProgress!(IBuffer, UINT32)")
		return uuid("d26b2819-897f-5c7d-84d6-56d796561431");
	else if (T == "AsyncOperationProgressHandler!(IBuffer, UINT64)")
		return uuid("d17f5eb6-b422-5e26-a817-7e0fd08f75d5");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(IBuffer, UINT64)")
		return uuid("abc81235-39c7-59bf-9948-2d14a93d40fd");
	else if (T == "IAsyncOperationWithProgress!(IBuffer, UINT64)")
		return uuid("ad960e7f-d73b-56e4-a58c-6ec7678cfd88");
	else if (T == "AsyncOperationProgressHandler!(IInputStream, UINT64)")
		return uuid("f9b2e7f6-762f-50db-95dd-7f6c6ec47090");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(IInputStream, UINT64)")
		return uuid("8db69706-3dd1-5a28-986a-93be0776d9c3");
	else if (T == "IAsyncOperationWithProgress!(IInputStream, UINT64)")
		return uuid("455aa601-f13e-5dee-b9cb-16b531996327");
	else if (T == "AsyncOperationCompletedHandler!(IBuffer)")
		return uuid("51c3d2fd-b8a1-5620-b746-7ee6d533aca3");
	else if (T == "IAsyncOperation!(IBuffer)")
		return uuid("3bee8834-b9a7-5a80-a746-5ef097227878");
	else if (T == "AsyncOperationCompletedHandler!(IInputStream)")
		return uuid("d0bd0125-9049-57a3-bd66-e2525d98c814");
	else if (T == "IAsyncOperation!(IInputStream)")
		return uuid("a8fe0732-556d-5841-b7ee-b3450fb52666");
	else if (T == "AsyncOperationCompletedHandler!(IOutputStream)")
		return uuid("bcb37f4f-3af4-561c-a9e3-eef1738494d7");
	else if (T == "IAsyncOperation!(IOutputStream)")
		return uuid("e8736833-d013-5361-977d-c5e99934680e");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStream)")
		return uuid("398c4183-793d-5b00-819b-4aef92485e94");
	else if (T == "IAsyncOperation!(IRandomAccessStream)")
		return uuid("430ecece-1418-5d19-81b2-5ddb381603cc");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStreamReference)")
		return uuid("60847289-ea0b-5df6-89df-f2c62cba9693");
	else if (T == "IAsyncOperation!(IRandomAccessStreamReference)")
		return uuid("65178d50-e6a2-5d16-b244-65e9725e5a0c");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStreamWithContentType)")
		return uuid("3dddecf4-1d39-58e8-83b1-dbed541c7f35");
	else if (T == "IAsyncOperation!(IRandomAccessStreamWithContentType)")
		return uuid("c4a57c5e-32b0-55b3-ad13-ce1c23041ed6");
	else if (T == "AsyncOperationCompletedHandler!(RandomAccessStreamReference)")
		return uuid("3d203732-ded7-5d32-87e6-c179781f791f");
	else if (T == "IAsyncOperation!(RandomAccessStreamReference)")
		return uuid("d90442ca-543c-504b-9eb9-294bcad8a283");
	else if (T == "AsyncOperationCompletedHandler!(UINT32)")
		return uuid("9343b6e7-e3d2-5e4a-ab2d-2bce4919a6a4");
	else if (T == "IAsyncOperation!(UINT32)")
		return uuid("ef60385f-be78-584b-aaef-7829ada2b0de");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "AsyncOperationProgressHandler!(UINT32, UINT32)")
		return uuid("ea0fe405-d432-5ac7-9ef8-5a65e1f97d7e");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(UINT32, UINT32)")
		return uuid("1e466dc5-840f-54f9-b877-5e3a9f4b6c74");
	else if (T == "IAsyncOperationWithProgress!(UINT32, UINT32)")
		return uuid("eccb574a-c684-5572-a679-6b0842cfb57f");
	else if (T == "AsyncOperationProgressHandler!(UINT64, UINT64)")
		return uuid("ffb2b65d-4120-5d13-826d-107851e6bb1c");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(UINT64, UINT64)")
		return uuid("d2024e41-5500-5b5a-ba46-cb7009596a2f");
	else if (T == "IAsyncOperationWithProgress!(UINT64, UINT64)")
		return uuid("8f1db6e3-6556-5516-825c-1021ee27cd0c");
	else if (T == "TypedEventHandler!(DevicePortalConnection, DevicePortalConnectionClosedEventArgs)")
		return uuid("2aad93a8-52fa-54b3-9556-15d651208b3f");
	else if (T == "TypedEventHandler!(DevicePortalConnection, DevicePortalConnectionRequestReceivedEventArgs)")
		return uuid("d8e33ff8-8ac4-5fd9-b184-8ae87d828eb9");
	else if (T == "IIterator!(ProcessDiagnosticInfo)")
		return uuid("a89b4418-4c3b-5f49-b957-785697c99abf");
	else if (T == "IIterable!(ProcessDiagnosticInfo)")
		return uuid("97b73627-b296-5076-b8cd-6bd8a240e966");
	else if (T == "IVectorView!(ProcessDiagnosticInfo)")
		return uuid("74ab2473-9624-5a06-9025-6d91e622bf8e");
	else if (T == "IIterator!(PlatformDiagnosticTraceInfo)")
		return uuid("1af4598d-98bb-5e51-842b-cf691925b6c2");
	else if (T == "IIterable!(PlatformDiagnosticTraceInfo)")
		return uuid("ecb0c107-c97b-52fe-a5e6-a33e93493769");
	else if (T == "IVectorView!(PlatformDiagnosticTraceInfo)")
		return uuid("8f1b3397-4dc3-5b72-91fa-0fdc915d950c");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IIterator!(GUID)")
		return uuid("d3d64048-82b3-53c7-9285-b0be18368482");
	else if (T == "IIterable!(GUID)")
		return uuid("f4ca3045-5dd7-54be-982e-d88d8ca0876e");
	else if (T == "IVectorView!(GUID)")
		return uuid("9520e64b-15b2-52a6-98ed-3191fa6cf68a");
	else if (T == "IIterator!(AppDiagnosticInfo)")
		return uuid("183f1e4a-2224-5fe4-b064-68869c53e361");
	else if (T == "IIterable!(AppDiagnosticInfo)")
		return uuid("8118de8f-3ae3-55e1-80a8-25453cdba894");
	else if (T == "IIterator!(User)")
		return uuid("326fe162-582b-5659-b8a4-68ff0f525745");
	else if (T == "IIterable!(User)")
		return uuid("d1bacd1f-0376-5823-8c29-1d45b9f4c191");
	else if (T == "IVectorView!(AppDiagnosticInfo)")
		return uuid("b0c2c7a4-78ba-50fd-84fe-00e02a6c1d42");
	else if (T == "IVectorView!(User)")
		return uuid("8cbd762a-1222-5ee5-b745-489e7a42c6ec");
	else if (T == "IVector!(AppDiagnosticInfo)")
		return uuid("9cffa2c3-7eeb-599c-b94d-c794b11f807f");
	else if (T == "EventHandler!(AppMemoryUsageLimitChangingEventArgs)")
		return uuid("6030e7c3-f93f-5e9c-9ba2-9a018d2b09c0");
	else if (T == "EventHandler!(UserDeviceAssociationChangedEventArgs)")
		return uuid("d3a3d4c5-d8b6-5a0e-88ed-a5499c377be3");
	else if (T == "AsyncOperationCompletedHandler!(Windows.System.LaunchQuerySupportStatus)")
		return uuid("198cac52-abcd-5529-933f-071cc93fd635");
	else if (T == "IAsyncOperation!(Windows.System.LaunchQuerySupportStatus)")
		return uuid("e7539992-2220-5d2d-82c4-3d44f8750d91");
	else if (T == "AsyncOperationCompletedHandler!(LaunchUriResult)")
		return uuid("70a97bf8-e0a5-59bb-9174-812a131d85a0");
	else if (T == "IAsyncOperation!(LaunchUriResult)")
		return uuid("7f97fc15-1cd6-54b7-a290-acb60dba81a1");
	else if (T == "AsyncOperationCompletedHandler!(Windows.System.LaunchUriStatus)")
		return uuid("520aa58e-40d6-5a57-a6dc-cb5faea5cca5");
	else if (T == "IAsyncOperation!(Windows.System.LaunchUriStatus)")
		return uuid("ab3d721b-a4f3-5861-b034-030b15233c52");
	else if (T == "AsyncOperationCompletedHandler!(ProcessLauncherResult)")
		return uuid("8d787ee6-07e4-5dce-8fe5-b503a1f6368c");
	else if (T == "IAsyncOperation!(ProcessLauncherResult)")
		return uuid("e6827240-7a8d-51be-8d21-e093268ccc15");
	else if (T == "AsyncOperationCompletedHandler!(Windows.System.RemoteLaunchUriStatus)")
		return uuid("3f8f4b1b-cd54-543c-817f-2630487f1878");
	else if (T == "IAsyncOperation!(Windows.System.RemoteLaunchUriStatus)")
		return uuid("bb70e5cd-62c2-5f78-ac8d-f4b973981da4");
	else if (T == "AsyncOperationCompletedHandler!(User)")
		return uuid("f913e3a2-d1c5-5308-becf-4c2d8167824a");
	else if (T == "IAsyncOperation!(User)")
		return uuid("a895d2f9-2399-5104-a532-5ba44ab4b165");
	else if (T == "TypedEventHandler!(IGameController, UserChangedEventArgs)")
		return uuid("cb753f2c-2f36-5a8f-adad-057beae73aa4");
	else if (T == "TypedEventHandler!(UserWatcher, IInspectable)")
		return uuid("f155e0ff-dbb5-5c34-ac0c-7e291e3300ab");
	else if (T == "TypedEventHandler!(UserWatcher, UserAuthenticationStatusChangingEventArgs)")
		return uuid("9ec3d9d5-b413-51df-8c64-640e3356e351");
	else if (T == "TypedEventHandler!(UserWatcher, UserChangedEventArgs)")
		return uuid("eb9d0454-25db-5620-98b8-be4c5d0dbc67");
	else if (T == "IIterator!(IStorageItem)")
		return uuid("05b487c2-3830-5d3c-98da-25fa11542dbd");
	else if (T == "IIterable!(IStorageItem)")
		return uuid("bb8b8418-65d1-544b-b083-6d172f568c73");
	else if (T == "IVectorView!(IStorageItem)")
		return uuid("85575a41-06cb-58d0-b98a-7c8f06e6e9d7");
	else if (T == "IVector!(IStorageItem)")
		return uuid("802508e2-9c2c-5b91-89a8-39bcf7223344");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(AppInfo)")
		return uuid("69cec62c-41eb-5d69-a475-29ee22323dd8");
	else if (T == "IIterable!(AppInfo)")
		return uuid("63d0bffe-0e34-55b3-83d5-314caff2b137");
	else if (T == "IVectorView!(AppInfo)")
		return uuid("8246ed12-33e8-52b3-a5c5-19779de9999e");
	else if (T == "IReference!(Windows.Foundation.Point)")
		return uuid("84f14c22-a00a-5272-8d3d-82112e66df00");
	else if (T == "IReference!(Windows.Foundation.Rect)")
		return uuid("80423f11-054f-5eac-afd3-63b6ce15e77b");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IVector!(HSTRING)")
		return uuid("98b9acc1-4b56-532e-ac73-03d5291cca90");
	else if (T == "AsyncOperationCompletedHandler!(IInspectable)")
		return uuid("3f08262e-a2e1-5134-9297-e9211f481a2d");
	else if (T == "IAsyncOperation!(IInspectable)")
		return uuid("abf53c57-ee50-5342-b52a-26e3b8cc024f");
	else if (T == "AsyncOperationCompletedHandler!(IPropertySet)")
		return uuid("5075a55f-68ba-56f2-97e6-9b1cbfa2c5f2");
	else if (T == "IAsyncOperation!(IPropertySet)")
		return uuid("490b0686-afd7-5037-9647-d8fe248f182c");
	else if (T == "AsyncOperationCompletedHandler!(IRandomAccessStreamReference)")
		return uuid("60847289-ea0b-5df6-89df-f2c62cba9693");
	else if (T == "IAsyncOperation!(IRandomAccessStreamReference)")
		return uuid("65178d50-e6a2-5d16-b244-65e9725e5a0c");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "AsyncOperationCompletedHandler!(Windows.System.UserProfile.SetAccountPictureResult)")
		return uuid("603f3e31-7a51-518c-9280-c188ea4213d8");
	else if (T == "IAsyncOperation!(Windows.System.UserProfile.SetAccountPictureResult)")
		return uuid("6809e406-6d3b-5164-8f32-b845b0781405");
	else if (T == "AsyncOperationCompletedHandler!(Windows.System.UserProfile.SetImageFeedResult)")
		return uuid("f214731a-1305-5b44-932c-af9a1e4d78c9");
	else if (T == "IAsyncOperation!(Windows.System.UserProfile.SetImageFeedResult)")
		return uuid("5361bfc9-0740-544a-9797-1ffe5e73c54e");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "AsyncOperationCompletedHandler!(Uri)")
		return uuid("ad46f1cc-2bb0-585c-9885-03c2780d4d58");
	else if (T == "IAsyncOperation!(Uri)")
		return uuid("641cb9dd-a28d-59e2-b8db-a227eda6cf2e");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(CredentialCommand)")
		return uuid("9f1177f1-85bb-5cd0-9b08-a0b47a764c75");
	else if (T == "IIterable!(CredentialCommand)")
		return uuid("883ed18d-4dbb-58f2-8fd2-e4b018509553");
	else if (T == "IIterator!(SettingsCommand)")
		return uuid("2f071c24-4a58-5a00-a294-c7162e98c2a0");
	else if (T == "IIterable!(SettingsCommand)")
		return uuid("6308e7e8-cb85-5339-a3e9-9a7500d19c68");
	else if (T == "IIterator!(WebAccountCommand)")
		return uuid("8cbb62b6-bd9c-5486-9d14-9cc4627b32d4");
	else if (T == "IIterable!(WebAccountCommand)")
		return uuid("bd0d999c-b2ba-51b2-bcc0-d4a5cd821555");
	else if (T == "IIterator!(WebAccountProviderCommand)")
		return uuid("82d7cd74-8e33-5f06-92fc-915138aacbde");
	else if (T == "IIterable!(WebAccountProviderCommand)")
		return uuid("15165367-2e93-59a6-b5c7-16d3b58fd2e7");
	else if (T == "IVectorView!(CredentialCommand)")
		return uuid("95cc1bba-c279-5ee5-a524-78012b7fe17e");
	else if (T == "IVectorView!(SettingsCommand)")
		return uuid("67b64d17-4245-5d7c-bfb4-6b68dd525877");
	else if (T == "IVectorView!(WebAccountCommand)")
		return uuid("207eaa3e-5ec9-5bd4-a1d2-73179a8128a8");
	else if (T == "IVectorView!(WebAccountProviderCommand)")
		return uuid("b2d19260-1827-5d88-b948-9688cfcd63ae");
	else if (T == "IVector!(CredentialCommand)")
		return uuid("b6af1cb5-f60e-5b08-b312-2eb51135cfc6");
	else if (T == "IVector!(SettingsCommand)")
		return uuid("10bd9cdd-3767-5e96-9022-f00f9cbd6241");
	else if (T == "IVector!(WebAccountCommand)")
		return uuid("64e864c8-7fef-5df5-a624-50b577f48554");
	else if (T == "IVector!(WebAccountProviderCommand)")
		return uuid("d376abf3-f0c1-5233-9f42-de531884963e");
	else if (T == "TypedEventHandler!(AccountsSettingsPane, AccountsSettingsPaneCommandsRequestedEventArgs)")
		return uuid("69b8847e-7d72-5a15-bc1c-4ca39c93b162");
	else if (T == "TypedEventHandler!(SettingsPane, SettingsPaneCommandsRequestedEventArgs)")
		return uuid("f39a56a2-7db1-5c48-9e13-7dc485a4a99e");
	else if (T == "IKeyValuePair!(HSTRING, ICompositionAnimationBase)")
		return uuid("3b9a274f-891d-5208-96bb-e3f40c809e9b");
	else if (T == "IIterator!(CompositionAnimation)")
		return uuid("98efbe55-0a66-556a-9adc-4ab59c696846");
	else if (T == "IIterable!(CompositionAnimation)")
		return uuid("0cb59942-c6f3-585f-9a92-b47e8dd38ebf");
	else if (T == "IIterator!(Visual)")
		return uuid("eca15496-dcaa-5095-a898-f8602a40e10a");
	else if (T == "IIterable!(Visual)")
		return uuid("4eed7dce-e4ac-5891-9b52-799d70df47fe");
	else if (T == "IMapView!(HSTRING, ICompositionAnimationBase)")
		return uuid("b65e6ece-d9af-5d4a-abaa-c08e34a5f815");
	else if (T == "IMap!(HSTRING, ICompositionAnimationBase)")
		return uuid("4ba9aa1d-57ac-54de-a807-b52e689bfc04");
	else if (T == "TypedEventHandler!(IInspectable, CompositionBatchCompletedEventArgs)")
		return uuid("9df03456-3383-508b-9c75-ee840a7e1a39");
	else if (T == "TypedEventHandler!(CompositionCapabilities, IInspectable)")
		return uuid("6e8cc6f4-6cf5-5994-9447-726171236ea8");
	else if (T == "TypedEventHandler!(CompositionGraphicsDevice, RenderingDeviceReplacedEventArgs)")
		return uuid("259b32be-bd06-53c2-bd51-89e8e0f9e239");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IIterator!(CompositionConditionalValue)")
		return uuid("8a75b02d-3991-55a6-bfe2-82cb7dd65b98");
	else if (T == "IIterable!(CompositionConditionalValue)")
		return uuid("b268447b-f519-5ce5-89cd-b7e1bc5652ee");
	else if (T == "IIterator!(ICompositionInteractionSource)")
		return uuid("20259ef3-9f4b-5257-8581-6d3eabbbd690");
	else if (T == "IIterable!(ICompositionInteractionSource)")
		return uuid("17c50e21-cb70-5a2b-b797-a8dc01a99113");
	else if (T == "IIterator!(InteractionTrackerInertiaModifier)")
		return uuid("46617d87-2cd2-5e31-9a30-ea86f8aa7ca1");
	else if (T == "IIterable!(InteractionTrackerInertiaModifier)")
		return uuid("9a245c40-aae6-59fb-87f5-4bb05599f0b1");
	else if (T == "IReference!(Windows.Foundation.Numerics.Vector3)")
		return uuid("1ee770ff-c954-59ca-a754-6199a9be282c");
	else if (T == "IReference!(float)")
		return uuid("719cc2ba-3e76-5def-9f1a-38d85a145ea8");
	else if (T == "IIterator!(IPropertyAnimation)")
		return uuid("bb6799d3-9f1a-5a4e-a940-945f1ab8c4fe");
	else if (T == "IIterable!(IPropertyAnimation)")
		return uuid("c75f1bd1-a3c1-5881-9da0-1ecdb8e51bc3");
	else if (T == "IVectorView!(IPropertyAnimation)")
		return uuid("3a6ed95d-6a50-5ead-a4c6-09f8babc632c");
	else if (T == "IReference!(float)")
		return uuid("719cc2ba-3e76-5def-9f1a-38d85a145ea8");
	else if (T == "EventHandler!(BackRequestedEventArgs)")
		return uuid("ca821060-002b-526d-8122-982630d7cdbe");
	else if (T == "TypedEventHandler!(IInspectable, CharacterReceivedEventArgs)")
		return uuid("5aa4a848-86b2-506b-89ab-5eb5786420c6");
	else if (T == "TypedEventHandler!(IInspectable, CoreWindowEventArgs)")
		return uuid("1a8ac270-a777-50f7-88a1-e34e56c09449");
	else if (T == "TypedEventHandler!(IInspectable, InputEnabledEventArgs)")
		return uuid("c9965f1c-3641-51b6-b823-048ec3628fb0");
	else if (T == "TypedEventHandler!(IInspectable, KeyEventArgs)")
		return uuid("eadffdf7-d70e-5688-906c-c2b1229ea16d");
	else if (T == "TypedEventHandler!(IInspectable, PointerEventArgs)")
		return uuid("26aabf41-a0fd-5e66-b188-6c74182d00cd");
	else if (T == "TypedEventHandler!(IInspectable, TouchHitTestingEventArgs)")
		return uuid("c76e9d25-6a96-58fd-874f-ae52bd603af8");
	else if (T == "TypedEventHandler!(CoreComponentInputSource, ClosestInteractiveBoundsRequestedEventArgs)")
		return uuid("e2c62d42-0577-5112-9e59-eae159bf39e9");
	else if (T == "TypedEventHandler!(CoreDispatcher, AcceleratorKeyEventArgs)")
		return uuid("136dff0d-f7e8-5153-b31c-86390c701880");
	else if (T == "TypedEventHandler!(CoreWindow, IInspectable)")
		return uuid("6368ae3d-52d4-5290-b936-717a9acf5bea");
	else if (T == "TypedEventHandler!(CoreWindow, AutomationProviderRequestedEventArgs)")
		return uuid("54db5c04-81f7-5f46-9fb8-e49beec70a24");
	else if (T == "TypedEventHandler!(CoreWindow, CharacterReceivedEventArgs)")
		return uuid("73f846a8-0af6-5872-8fb8-ae2f56d8553e");
	else if (T == "TypedEventHandler!(CoreWindow, ClosestInteractiveBoundsRequestedEventArgs)")
		return uuid("21a652d2-bfe2-5b2e-a2ab-ca45253be8b0");
	else if (T == "TypedEventHandler!(CoreWindow, CoreWindowEventArgs)")
		return uuid("d08e4f66-3457-57f2-ba0c-cb347133bd15");
	else if (T == "TypedEventHandler!(CoreWindow, CoreWindowPopupShowingEventArgs)")
		return uuid("b32d6422-78b2-5e00-84a8-6e3167aaabde");
	else if (T == "TypedEventHandler!(CoreWindow, InputEnabledEventArgs)")
		return uuid("e230a64a-506a-59c3-bb61-5559ff995663");
	else if (T == "TypedEventHandler!(CoreWindow, KeyEventArgs)")
		return uuid("a3ec0774-55ac-5d61-8232-b35c5d35c93c");
	else if (T == "TypedEventHandler!(CoreWindow, PointerEventArgs)")
		return uuid("420e1bb6-e99d-5e64-8e25-07467e3cae9e");
	else if (T == "TypedEventHandler!(CoreWindow, TouchHitTestingEventArgs)")
		return uuid("197654c9-0c47-502b-9aa1-0deb03ed9702");
	else if (T == "TypedEventHandler!(CoreWindow, VisibilityChangedEventArgs)")
		return uuid("14b7f692-5583-52a1-aa42-fc1843c0f748");
	else if (T == "TypedEventHandler!(CoreWindow, WindowActivatedEventArgs)")
		return uuid("26a73b35-a7f9-52db-88d6-15726deb2523");
	else if (T == "TypedEventHandler!(CoreWindow, WindowSizeChangedEventArgs)")
		return uuid("318dbb67-4089-5690-9040-1d454fb2f686");
	else if (T == "TypedEventHandler!(ICorePointerRedirector, PointerEventArgs)")
		return uuid("29742d27-177d-54c3-b974-616fc45a2b0c");
	else if (T == "TypedEventHandler!(CoreInkIndependentInputSource, PointerEventArgs)")
		return uuid("b83fbe98-882a-5b69-bd1c-c66690707fef");
	else if (T == "TypedEventHandler!(InkStrokeInput, PointerEventArgs)")
		return uuid("bf66b962-702d-5c07-a2d5-15f21583c43a");
	else if (T == "TypedEventHandler!(InkUnprocessedInput, PointerEventArgs)")
		return uuid("4a86bd78-5bcf-5ede-8f65-a8c65235055c");
	else if (T == "TypedEventHandler!(KeyboardDeliveryInterceptor, KeyEventArgs)")
		return uuid("2c1caf11-9d6f-5e0f-a9ea-4c7c734d73d6");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(IUICommand)")
		return uuid("f45db3d3-7299-57ce-a73e-297cf0af3083");
	else if (T == "IIterable!(IUICommand)")
		return uuid("e63de42b-53c3-5e07-90d3-98172d545412");
	else if (T == "IVectorView!(IUICommand)")
		return uuid("ed1165e6-f377-5b00-8172-93c1bd04deb4");
	else if (T == "IVector!(IUICommand)")
		return uuid("105139a1-dcb8-5f65-97ef-cb1bf0b75f9d");
	else if (T == "AsyncOperationCompletedHandler!(IUICommand)")
		return uuid("dd33fd5b-a24d-5a44-91fe-dd6441770103");
	else if (T == "IAsyncOperation!(IUICommand)")
		return uuid("b8770535-6a4b-52b1-b578-f3cdc5007a1f");
	else if (T == "IIterator!(PointerPoint)")
		return uuid("721fe01c-5ad4-5262-b078-3ab345105db8");
	else if (T == "IIterable!(PointerPoint)")
		return uuid("f6f2cba6-7076-5b59-9631-f6ac32b57695");
	else if (T == "IVectorView!(PointerPoint)")
		return uuid("f0f57411-7786-5174-8752-4c5e834b6da2");
	else if (T == "IVector!(PointerPoint)")
		return uuid("dfa655cf-fde7-5048-b4bf-c909231b7edb");
	else if (T == "EventHandler!(SystemNavigationCloseRequestedPreviewEventArgs)")
		return uuid("01bca043-4d09-59e4-b1b3-a2ce24629e41");
	else if (T == "IIterator!(Windows.UI.Color)")
		return uuid("c4310b12-7ac2-5e5b-b511-e546eea473b4");
	else if (T == "IIterable!(Windows.UI.Color)")
		return uuid("932eef5e-2c2f-5eae-929a-74e973b57c27");
	else if (T == "IReference!(Windows.UI.Color)")
		return uuid("ab8e5d11-b0c1-5a21-95ae-f16bf3a37624");
	else if (T == "IIterator!(PointerPoint)")
		return uuid("721fe01c-5ad4-5262-b078-3ab345105db8");
	else if (T == "IIterable!(PointerPoint)")
		return uuid("f6f2cba6-7076-5b59-9631-f6ac32b57695");
	else if (T == "IIterator!(RadialControllerMenuItem)")
		return uuid("5a773e24-d968-535e-969a-76ce3602a637");
	else if (T == "IIterable!(RadialControllerMenuItem)")
		return uuid("1aa752b3-dc11-5bce-b2b9-cd1bf8f235be");
	else if (T == "IIterator!(Windows.UI.Input.RadialControllerSystemMenuItemKind)")
		return uuid("3fbc1858-a43e-54dc-b0e2-8b098bddacf6");
	else if (T == "IIterable!(Windows.UI.Input.RadialControllerSystemMenuItemKind)")
		return uuid("4516010f-fd98-5e1d-bf3f-aeaf79f1f3da");
	else if (T == "IVectorView!(PointerPoint)")
		return uuid("f0f57411-7786-5174-8752-4c5e834b6da2");
	else if (T == "IVectorView!(RadialControllerMenuItem)")
		return uuid("b91a7342-3fcb-512b-aef1-fda4712e5817");
	else if (T == "IVector!(PointerPoint)")
		return uuid("dfa655cf-fde7-5048-b4bf-c909231b7edb");
	else if (T == "IVector!(RadialControllerMenuItem)")
		return uuid("bfde94e7-70f8-5cc0-98e2-8c0f8ce524ab");
	else if (T == "TypedEventHandler!(EdgeGesture, EdgeGestureEventArgs)")
		return uuid("b62d7f11-c7b1-5bf0-a347-3366252db4ce");
	else if (T == "TypedEventHandler!(GestureRecognizer, CrossSlidingEventArgs)")
		return uuid("1fc1eb70-0c26-5cf0-9e50-843a34083613");
	else if (T == "TypedEventHandler!(GestureRecognizer, DraggingEventArgs)")
		return uuid("be7cca42-98dd-5d72-9e91-976113d7985e");
	else if (T == "TypedEventHandler!(GestureRecognizer, HoldingEventArgs)")
		return uuid("0027bdf5-6948-53f7-afbe-d4d8fe500feb");
	else if (T == "TypedEventHandler!(GestureRecognizer, ManipulationCompletedEventArgs)")
		return uuid("c24f5605-3059-52cc-bdf3-7098146d34d7");
	else if (T == "TypedEventHandler!(GestureRecognizer, ManipulationInertiaStartingEventArgs)")
		return uuid("350a72ab-34a5-5193-913d-3d4c5983842c");
	else if (T == "TypedEventHandler!(GestureRecognizer, ManipulationStartedEventArgs)")
		return uuid("110d75c8-ba5e-5462-8b2d-4a1582574b61");
	else if (T == "TypedEventHandler!(GestureRecognizer, ManipulationUpdatedEventArgs)")
		return uuid("eb5216f5-020a-5e40-9c4b-48912c690e2d");
	else if (T == "TypedEventHandler!(GestureRecognizer, RightTappedEventArgs)")
		return uuid("8420d242-ba34-5b17-92f3-8f767f1d0de4");
	else if (T == "TypedEventHandler!(GestureRecognizer, TappedEventArgs)")
		return uuid("27f3ad57-8994-5712-8b83-a93ba17c03c2");
	else if (T == "TypedEventHandler!(RadialController, IInspectable)")
		return uuid("5e0f93b1-c2f2-5351-82aa-6cf5f4c2d068");
	else if (T == "TypedEventHandler!(RadialController, RadialControllerButtonClickedEventArgs)")
		return uuid("d09d9fcc-edb8-56c0-856d-70e477a9ddf3");
	else if (T == "TypedEventHandler!(RadialController, RadialControllerButtonHoldingEventArgs)")
		return uuid("4c44f2ff-3a4a-51ba-a01f-9f2002471f59");
	else if (T == "TypedEventHandler!(RadialController, RadialControllerButtonPressedEventArgs)")
		return uuid("660bee4a-4fed-5a62-aa5d-8113b477bc69");
	else if (T == "TypedEventHandler!(RadialController, RadialControllerButtonReleasedEventArgs)")
		return uuid("c22ff62c-c642-5d50-9340-fe163122720c");
	else if (T == "TypedEventHandler!(RadialController, RadialControllerControlAcquiredEventArgs)")
		return uuid("4ec5f3fd-b217-5452-a2bd-9725ce9f6675");
	else if (T == "TypedEventHandler!(RadialController, RadialControllerRotationChangedEventArgs)")
		return uuid("8fe73ac9-8a36-5152-815d-03310ee8bf85");
	else if (T == "TypedEventHandler!(RadialController, RadialControllerScreenContactContinuedEventArgs)")
		return uuid("30579e67-fb4f-5d38-83b4-9cb610090def");
	else if (T == "TypedEventHandler!(RadialController, RadialControllerScreenContactStartedEventArgs)")
		return uuid("1f2d584e-3ad8-5049-b451-3a44a102fa82");
	else if (T == "TypedEventHandler!(RadialControllerMenuItem, IInspectable)")
		return uuid("5c90d6fb-e4f8-5be2-8544-9de33f82c41a");
	else if (T == "TypedEventHandler!(KeyboardDeliveryInterceptor, KeyEventArgs)")
		return uuid("2c1caf11-9d6f-5e0f-a9ea-4c7c734d73d6");
	else if (T == "IReference!(float)")
		return uuid("719cc2ba-3e76-5def-9f1a-38d85a145ea8");
	else if (T == "IIterator!(IInkAnalysisNode)")
		return uuid("ad35ed5c-5f8c-5a68-a6e1-67f209a05ea7");
	else if (T == "IIterable!(IInkAnalysisNode)")
		return uuid("784f069e-badd-5258-bd8f-42ce205cc95a");
	else if (T == "IVectorView!(IInkAnalysisNode)")
		return uuid("2b3fee11-53b5-55b0-8d71-c40b427de029");
	else if (T == "AsyncOperationCompletedHandler!(InkAnalysisResult)")
		return uuid("a7ef2666-6fc4-568f-bbf3-19c1036a26bf");
	else if (T == "IAsyncOperation!(InkAnalysisResult)")
		return uuid("2c46d1bd-6dbb-5007-ba85-3d0106bddf50");
	else if (T == "IIterator!(Windows.Foundation.Point)")
		return uuid("c602b59e-0a8e-5e99-b478-2b564585278d");
	else if (T == "IIterable!(Windows.Foundation.Point)")
		return uuid("c192280d-3a09-5423-9dc5-67b83ebde41d");
	else if (T == "IVectorView!(Windows.Foundation.Point)")
		return uuid("0b7b4c9d-182f-582a-bddb-42b1aac30cad");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(UINT32)")
		return uuid("f06a2739-9443-5ef0-b284-dc5aff3e7d10");
	else if (T == "IIterable!(UINT32)")
		return uuid("421d4b91-b13b-5f37-ae54-b5249bd80539");
	else if (T == "IVectorView!(UINT32)")
		return uuid("e5ce1a07-8d33-5007-ba64-7d2508ccf85c");
	else if (T == "IIterator!(InkStroke)")
		return uuid("5608d5a9-e7e4-5a0b-941f-b7fed76b35bf");
	else if (T == "IIterable!(InkStroke)")
		return uuid("bbc11401-89d0-5305-a3b3-36c887714b9b");
	else if (T == "TypedEventHandler!(CoreWetStrokeUpdateSource, CoreWetStrokeUpdateEventArgs)")
		return uuid("67ff75e8-02a4-5254-a965-0b254c7d0788");
	else if (T == "TypedEventHandler!(CoreInkIndependentInputSource, PointerEventArgs)")
		return uuid("b83fbe98-882a-5b69-bd1c-c66690707fef");
	else if (T == "IIterator!(InkPoint)")
		return uuid("47415452-db79-567e-84d5-e9912330f944");
	else if (T == "IIterable!(InkPoint)")
		return uuid("0630c0ef-a4e2-5af6-b2e9-8e042e294e17");
	else if (T == "IVectorView!(InkPoint)")
		return uuid("d1ac414b-c87d-540f-8ab1-4e0d09d9d283");
	else if (T == "IVector!(InkPoint)")
		return uuid("10c47202-47ab-58bc-91de-d5000f1a74c0");
	else if (T == "IIterator!(InkPoint)")
		return uuid("47415452-db79-567e-84d5-e9912330f944");
	else if (T == "IIterable!(InkPoint)")
		return uuid("0630c0ef-a4e2-5af6-b2e9-8e042e294e17");
	else if (T == "IIterator!(InkRecognitionResult)")
		return uuid("9abc247f-0223-5f44-8fa1-0d6d691bf9af");
	else if (T == "IIterable!(InkRecognitionResult)")
		return uuid("e29b658b-7cc1-561c-9912-001dbca86651");
	else if (T == "IIterator!(InkRecognizer)")
		return uuid("f8bd3097-5262-5e7a-a19d-13c029d2d7e5");
	else if (T == "IIterable!(InkRecognizer)")
		return uuid("611b7e84-a803-5071-aaea-4f2ce0151052");
	else if (T == "IIterator!(InkStroke)")
		return uuid("5608d5a9-e7e4-5a0b-941f-b7fed76b35bf");
	else if (T == "IIterable!(InkStroke)")
		return uuid("bbc11401-89d0-5305-a3b3-36c887714b9b");
	else if (T == "IIterator!(InkStrokeRenderingSegment)")
		return uuid("d7d8c317-6f3f-5192-9210-65a263baf8d1");
	else if (T == "IIterable!(InkStrokeRenderingSegment)")
		return uuid("27000f47-2885-5da9-8923-16a3a58b7a55");
	else if (T == "IVectorView!(InkPoint)")
		return uuid("d1ac414b-c87d-540f-8ab1-4e0d09d9d283");
	else if (T == "IVectorView!(InkRecognitionResult)")
		return uuid("ecfc4f0b-112c-5cd3-acf0-d746d6bdfeb5");
	else if (T == "IVectorView!(InkRecognizer)")
		return uuid("8eadfa4f-27ef-5a5d-b0b8-7fd5c0ce6b39");
	else if (T == "IVectorView!(InkStroke)")
		return uuid("6744f458-b242-5767-a643-996e01dff0e4");
	else if (T == "IVectorView!(InkStrokeRenderingSegment)")
		return uuid("f39ea41d-4714-5d80-87de-973dd26da269");
	else if (T == "IVector!(InkPoint)")
		return uuid("10c47202-47ab-58bc-91de-d5000f1a74c0");
	else if (T == "TypedEventHandler!(InkPresenter, InkStrokesCollectedEventArgs)")
		return uuid("176bfa8f-c0de-5b3a-b28c-0f3931ca52d3");
	else if (T == "TypedEventHandler!(InkPresenter, InkStrokesErasedEventArgs)")
		return uuid("30fec929-14d0-550f-84f2-137fc6a9f08f");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IIterator!(Windows.Foundation.Point)")
		return uuid("c602b59e-0a8e-5e99-b478-2b564585278d");
	else if (T == "IIterable!(Windows.Foundation.Point)")
		return uuid("c192280d-3a09-5423-9dc5-67b83ebde41d");
	else if (T == "AsyncActionProgressHandler!(UINT64)")
		return uuid("55e233ca-f243-5ae2-853b-f9cc7c0ae0cf");
	else if (T == "AsyncActionWithProgressCompletedHandler!(UINT64)")
		return uuid("e6ff857b-f160-571a-a934-2c61f98c862d");
	else if (T == "IAsyncActionWithProgress!(UINT64)")
		return uuid("43f713d0-c49d-5e55-aebf-af395768351e");
	else if (T == "AsyncOperationProgressHandler!(UINT32, UINT32)")
		return uuid("ea0fe405-d432-5ac7-9ef8-5a65e1f97d7e");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(UINT32, UINT32)")
		return uuid("1e466dc5-840f-54f9-b877-5e3a9f4b6c74");
	else if (T == "IAsyncOperationWithProgress!(UINT32, UINT32)")
		return uuid("eccb574a-c684-5572-a679-6b0842cfb57f");
	else if (T == "TypedEventHandler!(InkStrokeInput, PointerEventArgs)")
		return uuid("bf66b962-702d-5c07-a2d5-15f21583c43a");
	else if (T == "TypedEventHandler!(InkUnprocessedInput, PointerEventArgs)")
		return uuid("4a86bd78-5bcf-5ede-8f65-a8c65235055c");
	else if (T == "IIterator!(InjectedInputKeyboardInfo)")
		return uuid("500e5efe-3bc1-5d9b-bcfc-c1f439505f12");
	else if (T == "IIterable!(InjectedInputKeyboardInfo)")
		return uuid("15d6330f-9c97-5705-b677-872585664fb5");
	else if (T == "IIterator!(InjectedInputMouseInfo)")
		return uuid("9604d1d9-1744-5bd3-b5b9-d47b9434facb");
	else if (T == "IIterable!(InjectedInputMouseInfo)")
		return uuid("6c34e5bd-0fa4-5244-89fb-04bfd480ecd8");
	else if (T == "IIterator!(InjectedInputTouchInfo)")
		return uuid("4bc92e92-d32e-597a-ae24-b38861c5fb08");
	else if (T == "IIterable!(InjectedInputTouchInfo)")
		return uuid("ac5fac0b-82a0-5436-9284-e7db0bf4e615");
	else if (T == "IIterator!(SpatialInteractionSourceState)")
		return uuid("23f50032-907e-5d73-bbdc-f7563de655c4");
	else if (T == "IIterable!(SpatialInteractionSourceState)")
		return uuid("7ecce0f5-0874-506f-8d42-4c9519156407");
	else if (T == "IVectorView!(SpatialInteractionSourceState)")
		return uuid("dfdcf091-6e3c-5e5b-a193-03acc414c921");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialHoldCanceledEventArgs)")
		return uuid("6a715963-c49f-5f3d-bfec-952700308860");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialHoldCompletedEventArgs)")
		return uuid("e425d80e-8c18-5375-b600-1dd7a11dba5e");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialHoldStartedEventArgs)")
		return uuid("7537dd12-02b8-5132-8ff7-90c80ef454d1");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialManipulationCanceledEventArgs)")
		return uuid("b92a6754-3946-5353-b8f9-2a07eb0e8886");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialManipulationCompletedEventArgs)")
		return uuid("10dac914-bea2-5d67-8607-dc470ea1dcd8");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialManipulationStartedEventArgs)")
		return uuid("a123252b-cfe8-5cfb-b61c-f2dc011eb12e");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialManipulationUpdatedEventArgs)")
		return uuid("cecbe023-3c49-530e-a010-8c0c3cbd3088");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialNavigationCanceledEventArgs)")
		return uuid("9947ea8e-eb4d-5f93-9fd9-2ade6470bc5d");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialNavigationCompletedEventArgs)")
		return uuid("f0d459df-ebd3-5388-b0a9-5f44bcd6f58f");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialNavigationStartedEventArgs)")
		return uuid("5419cadc-2600-527b-9398-1744318d0618");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialNavigationUpdatedEventArgs)")
		return uuid("a7216b90-c175-5a28-b500-a445f0751c5b");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialRecognitionEndedEventArgs)")
		return uuid("afa7fad7-3fd7-5c81-8802-195c523f6e7b");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialRecognitionStartedEventArgs)")
		return uuid("f2bd99d6-99fa-5599-a14a-1f7a7a92e3d7");
	else if (T == "TypedEventHandler!(SpatialGestureRecognizer, SpatialTappedEventArgs)")
		return uuid("630205a4-2f93-5022-b7b8-c43ed428498a");
	else if (T == "TypedEventHandler!(SpatialInteractionManager, SpatialInteractionDetectedEventArgs)")
		return uuid("0f223f8f-f220-5388-8fe6-b3b7e7930987");
	else if (T == "TypedEventHandler!(SpatialInteractionManager, SpatialInteractionSourceEventArgs)")
		return uuid("ae831d66-70f0-5371-866f-a3fc8b60e2d8");
	else if (T == "IReference!(Windows.Foundation.Numerics.Vector3)")
		return uuid("1ee770ff-c954-59ca-a754-6199a9be282c");
	else if (T == "IReference!(Windows.Foundation.Numerics.Quaternion)")
		return uuid("b27004bb-c014-5dce-9a21-799c5a3c1461");
	else if (T == "IIterator!(AdaptiveNotificationText)")
		return uuid("18015daa-cbc3-5a51-9f4b-3c069135b0e0");
	else if (T == "IIterable!(AdaptiveNotificationText)")
		return uuid("0343e8f2-ca4c-5f40-b8d1-3ff47047ce43");
	else if (T == "IIterator!(NotificationBinding)")
		return uuid("66187f56-9ee1-5c48-82da-6cb9ddf879e7");
	else if (T == "IIterable!(NotificationBinding)")
		return uuid("e8d9489c-635e-5153-8ab7-389f2ee9faca");
	else if (T == "IIterator!(ScheduledTileNotification)")
		return uuid("5665e491-6543-5036-935f-b5157950b359");
	else if (T == "IIterable!(ScheduledTileNotification)")
		return uuid("4b60d1e5-52ae-5766-9720-be4ad086f952");
	else if (T == "IIterator!(ScheduledToastNotification)")
		return uuid("304238b6-888a-5dd2-96cd-bfca8927483b");
	else if (T == "IIterable!(ScheduledToastNotification)")
		return uuid("7a7b2a51-c182-5846-a861-4f9c036f24ad");
	else if (T == "IIterator!(ShownTileNotification)")
		return uuid("04d8d70b-7c15-5f60-9894-b21366b427c2");
	else if (T == "IIterable!(ShownTileNotification)")
		return uuid("1863baee-44f1-5e51-bcdf-a3cdab826a15");
	else if (T == "IIterator!(ToastCollection)")
		return uuid("1512ed75-8c74-5520-ac88-134a1403f7ad");
	else if (T == "IIterable!(ToastCollection)")
		return uuid("8928d527-db5d-5a10-ae9b-430fa0906e74");
	else if (T == "IIterator!(ToastNotification)")
		return uuid("fe1e726a-3aa9-5d98-b19b-97e3e17eec7b");
	else if (T == "IIterable!(ToastNotification)")
		return uuid("52c9428b-d37a-554d-bf55-b8685d5f552d");
	else if (T == "IIterator!(UserNotification)")
		return uuid("6ee1200d-dd13-5050-88cb-5352af113fd1");
	else if (T == "IIterable!(UserNotification)")
		return uuid("18170480-1bd8-5cd0-bb32-67e71d5b4d7c");
	else if (T == "IVectorView!(AdaptiveNotificationText)")
		return uuid("b60de92b-4e12-55af-b42f-afe2d70ba278");
	else if (T == "IVectorView!(NotificationBinding)")
		return uuid("9e4d0240-6d5c-582a-a29d-734e84750738");
	else if (T == "IVectorView!(ScheduledTileNotification)")
		return uuid("4f729c64-a213-52e9-af8b-58adca3e597f");
	else if (T == "IVectorView!(ScheduledToastNotification)")
		return uuid("ba0aff1f-6a8a-5a7e-a9f7-505b6266a436");
	else if (T == "IVectorView!(ShownTileNotification)")
		return uuid("2b23baa9-1d54-5440-bd32-86ed70f15c9e");
	else if (T == "IVectorView!(ToastCollection)")
		return uuid("e09d090a-12e2-569b-ad29-fb0dfb98a1da");
	else if (T == "IVectorView!(ToastNotification)")
		return uuid("a819f3de-60aa-5159-8407-f0a7fb1f6832");
	else if (T == "IVectorView!(UserNotification)")
		return uuid("5a08f98c-8e45-5705-af54-f5418e598392");
	else if (T == "IVector!(NotificationBinding)")
		return uuid("7f7d8ad7-b4d2-5a03-be6f-2b89875fb32d");
	else if (T == "AsyncOperationCompletedHandler!(ToastCollection)")
		return uuid("8d44ca1e-15d7-5bcb-b002-384c87171c74");
	else if (T == "IAsyncOperation!(ToastCollection)")
		return uuid("9310ec47-9f0a-5999-80c2-4b31e9f77e8e");
	else if (T == "AsyncOperationCompletedHandler!(ToastNotificationHistory)")
		return uuid("c661d5da-6762-5d93-9138-e7dacd571056");
	else if (T == "IAsyncOperation!(ToastNotificationHistory)")
		return uuid("2a22fecb-4b96-551f-b7b9-a7b5beecad05");
	else if (T == "AsyncOperationCompletedHandler!(ToastNotifier)")
		return uuid("fde26ed7-bc37-5a7c-b3da-3e41ac97bba4");
	else if (T == "IAsyncOperation!(ToastNotifier)")
		return uuid("2dddc10e-38e6-5655-adf3-820e8fb14dcc");
	else if (T == "TypedEventHandler!(UserNotificationListener, UserNotificationChangedEventArgs)")
		return uuid("10242902-b897-5507-9922-2c0a7d34464d");
	else if (T == "TypedEventHandler!(ToastNotification, IInspectable)")
		return uuid("ab54de2d-97d9-5528-b6ad-105afe156530");
	else if (T == "TypedEventHandler!(ToastNotification, ToastDismissedEventArgs)")
		return uuid("61c2402f-0ed0-5a18-ab69-59f4aa99a368");
	else if (T == "TypedEventHandler!(ToastNotification, ToastFailedEventArgs)")
		return uuid("95e3e803-c969-5e3a-9753-ea2ad22a9a33");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IIterator!(Uri)")
		return uuid("1c157d0f-5efe-5cec-bbd6-0c6ce9af07a5");
	else if (T == "IIterable!(Uri)")
		return uuid("b0d63b78-78ad-5e31-b6d8-e32a0e16c447");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IMapChangedEventArgs!(HSTRING)")
		return uuid("60141efb-f2f9-5377-96fd-f8c60d9558b5");
	else if (T == "MapChangedEventHandler!(HSTRING, IInspectable)")
		return uuid("24f981e5-ddca-538d-aada-a59906084cf1");
	else if (T == "IObservableMap!(HSTRING, IInspectable)")
		return uuid("236aac9d-fb12-5c4d-a41c-9e445fb4d7ec");
	else if (T == "AsyncOperationCompletedHandler!(Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus)")
		return uuid("f09e843a-13cb-559b-a9fc-015722c2cd57");
	else if (T == "IAsyncOperation!(Windows.UI.Notifications.Management.UserNotificationListenerAccessStatus)")
		return uuid("0fbad8c7-086f-5bf9-81e2-8d79e7184803");
	else if (T == "TypedEventHandler!(UserNotificationListener, UserNotificationChangedEventArgs)")
		return uuid("10242902-b897-5507-9922-2c0a7d34464d");
	else if (T == "IIterator!(UserNotification)")
		return uuid("6ee1200d-dd13-5050-88cb-5352af113fd1");
	else if (T == "IIterable!(UserNotification)")
		return uuid("18170480-1bd8-5cd0-bb32-67e71d5b4d7c");
	else if (T == "IVectorView!(UserNotification)")
		return uuid("5a08f98c-8e45-5705-af54-f5418e598392");
	else if (T == "IIterator!(IUICommand)")
		return uuid("f45db3d3-7299-57ce-a73e-297cf0af3083");
	else if (T == "IIterable!(IUICommand)")
		return uuid("e63de42b-53c3-5e07-90d3-98172d545412");
	else if (T == "IVectorView!(IUICommand)")
		return uuid("ed1165e6-f377-5b00-8172-93c1bd04deb4");
	else if (T == "IVector!(IUICommand)")
		return uuid("105139a1-dcb8-5f65-97ef-cb1bf0b75f9d");
	else if (T == "AsyncOperationCompletedHandler!(IUICommand)")
		return uuid("dd33fd5b-a24d-5a44-91fe-dd6441770103");
	else if (T == "IAsyncOperation!(IUICommand)")
		return uuid("b8770535-6a4b-52b1-b578-f3cdc5007a1f");
	else if (T == "IIterator!(JumpListItem)")
		return uuid("f69f5cc4-004f-53eb-89e6-786e460588a4");
	else if (T == "IIterable!(JumpListItem)")
		return uuid("130a7274-1afb-5c10-abea-61d81692a496");
	else if (T == "IIterator!(SecondaryTile)")
		return uuid("391f7579-a90e-5352-9d01-fda995d7912f");
	else if (T == "IIterable!(SecondaryTile)")
		return uuid("75651af0-014a-5593-bc48-836ba3d1d5d4");
	else if (T == "IIterator!(SecondaryTileVisualElements)")
		return uuid("bbc6e16c-cace-5230-8804-2298375168ac");
	else if (T == "IIterable!(SecondaryTileVisualElements)")
		return uuid("6ef7c354-f153-5b53-99c2-e045c78cce08");
	else if (T == "IVectorView!(JumpListItem)")
		return uuid("be418be9-ab72-56b0-b6d3-ec70ef11f663");
	else if (T == "IVectorView!(SecondaryTile)")
		return uuid("16f89727-d811-5051-9ab5-0cb86a0f0ac3");
	else if (T == "IVectorView!(SecondaryTileVisualElements)")
		return uuid("1cd2cc9b-a41c-5dc7-9d95-4cef69a293f4");
	else if (T == "IVector!(JumpListItem)")
		return uuid("af8f3fb2-f179-5f0a-aa09-28942eedf625");
	else if (T == "AsyncOperationCompletedHandler!(JumpList)")
		return uuid("3c047c6a-c55b-5485-b673-8d4bd7c342e2");
	else if (T == "IAsyncOperation!(JumpList)")
		return uuid("1c008c58-733b-5b42-962a-b33328236cd3");
	else if (T == "TypedEventHandler!(SecondaryTile, VisualElementsRequestedEventArgs)")
		return uuid("02d9f968-fa76-5d77-934b-665e7c3be7cf");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(CoreTextCompositionSegment)")
		return uuid("39b4528d-2370-57fa-b5d4-b5a2079a7cea");
	else if (T == "IIterable!(CoreTextCompositionSegment)")
		return uuid("38372bd2-d3fe-5ad2-9d39-d166b68e78e7");
	else if (T == "IVectorView!(CoreTextCompositionSegment)")
		return uuid("214b64ff-cf4d-5dd4-932a-7bc66e69036e");
	else if (T == "TypedEventHandler!(CoreTextEditContext, IInspectable)")
		return uuid("ef53b467-c472-5b59-a827-38adc3a9d326");
	else if (T == "TypedEventHandler!(CoreTextEditContext, CoreTextCompositionCompletedEventArgs)")
		return uuid("a2d7059e-68ed-5260-8d8e-1dcf3d25d663");
	else if (T == "TypedEventHandler!(CoreTextEditContext, CoreTextCompositionStartedEventArgs)")
		return uuid("e671d625-5b59-57e6-a92e-40009507853a");
	else if (T == "TypedEventHandler!(CoreTextEditContext, CoreTextFormatUpdatingEventArgs)")
		return uuid("3e4ef599-4cc2-5248-bf2d-13f17613b0a6");
	else if (T == "TypedEventHandler!(CoreTextEditContext, CoreTextLayoutRequestedEventArgs)")
		return uuid("1a5f5596-561c-57f6-a4ff-cb85013c6544");
	else if (T == "TypedEventHandler!(CoreTextEditContext, CoreTextSelectionRequestedEventArgs)")
		return uuid("882e51e1-f4a3-57e5-9392-6a8c38579181");
	else if (T == "TypedEventHandler!(CoreTextEditContext, CoreTextSelectionUpdatingEventArgs)")
		return uuid("6b140a40-d461-555a-b6eb-5dbb8e2101e5");
	else if (T == "TypedEventHandler!(CoreTextEditContext, CoreTextTextRequestedEventArgs)")
		return uuid("c7e08176-4134-50b7-bc73-729e9f9ad22a");
	else if (T == "TypedEventHandler!(CoreTextEditContext, CoreTextTextUpdatingEventArgs)")
		return uuid("fd896a84-df7c-50d5-9167-58f616bddb6e");
	else if (T == "TypedEventHandler!(CoreTextServicesManager, IInspectable)")
		return uuid("112fb01d-260a-51c6-9198-5db3e6e9ef3d");
	else if (T == "IReference!(Windows.UI.ViewManagement.UIElementType)")
		return uuid("e17e08c9-7deb-51d1-8487-334eb3fe4691");
	else if (T == "IReference!(Windows.UI.Text.UnderlineType)")
		return uuid("1b63ec17-7b2b-59fe-ab9d-b60ea4f9c9b8");
	else if (T == "IReference!(Windows.UI.Text.UnderlineType)")
		return uuid("1b63ec17-7b2b-59fe-ab9d-b60ea4f9c9b8");
	else if (T == "IReference!(Windows.UI.ViewManagement.UIElementType)")
		return uuid("e17e08c9-7deb-51d1-8487-334eb3fe4691");
	else if (T == "TypedEventHandler!(AccessibilitySettings, IInspectable)")
		return uuid("f5917e6f-5abf-5e65-b5b4-1b9c8d94e788");
	else if (T == "TypedEventHandler!(ApplicationView, IInspectable)")
		return uuid("00c1f983-c836-565c-8bbf-7053055bdb4c");
	else if (T == "TypedEventHandler!(ApplicationView, ApplicationViewConsolidatedEventArgs)")
		return uuid("463c606a-8c82-5a29-a2bd-040781f25348");
	else if (T == "TypedEventHandler!(InputPane, InputPaneVisibilityEventArgs)")
		return uuid("b813d684-d953-5a8a-9b30-78b79fb9147b");
	else if (T == "TypedEventHandler!(UISettings, IInspectable)")
		return uuid("2dbdba9d-20da-519d-9078-09f835bc5bc7");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IReference!(Windows.UI.Color)")
		return uuid("ab8e5d11-b0c1-5a21-95ae-f16bf3a37624");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(AutomationAnnotation)")
		return uuid("7ed32ba3-db0c-5a54-ab43-30628afbc2d8");
	else if (T == "IIterable!(AutomationAnnotation)")
		return uuid("c6e210cb-1c7b-5e6a-936b-61d4e536a291");
	else if (T == "IVectorView!(AutomationAnnotation)")
		return uuid("a4b8a26c-9009-5394-98c8-98107e80db61");
	else if (T == "IVector!(AutomationAnnotation)")
		return uuid("73596c82-f6e5-5b57-8dc5-556cb7a8fbe6");
	else if (T == "IIterator!(UIElement)")
		return uuid("1d1f9d60-d53b-57f7-b144-8f7c487846e8");
	else if (T == "IIterable!(UIElement)")
		return uuid("42e26ae1-d357-57e8-bb48-f75c9ff69d91");
	else if (T == "IVectorView!(UIElement)")
		return uuid("f3864c10-14a4-5516-b1d9-63b6579429b1");
	else if (T == "IVector!(UIElement)")
		return uuid("b4c1e3ac-8768-5b9d-a661-f63330b8507b");
	else if (T == "IIterator!(DependencyObject)")
		return uuid("29f8d454-905d-587e-b9d8-bfd418805a65");
	else if (T == "IIterable!(DependencyObject)")
		return uuid("f66c6bd3-55b4-5bbb-b82a-6d9ce383091a");
	else if (T == "IVectorView!(DependencyObject)")
		return uuid("fe750d77-1307-5df2-a021-1c7a8d6b80ad");
	else if (T == "IVector!(DependencyObject)")
		return uuid("771b857e-ab5c-5db8-a021-397c92cdc44c");
	else if (T == "IIterator!(AutomationPeer)")
		return uuid("1f93cd7a-8075-5ba9-bc3e-b04a94e14bc0");
	else if (T == "IIterable!(AutomationPeer)")
		return uuid("7f67a4e2-96e0-522b-8710-14c42d834f1e");
	else if (T == "IIterator!(AutomationPeerAnnotation)")
		return uuid("3b415733-48f2-58b0-9884-6f0d0e35dc1a");
	else if (T == "IIterable!(AutomationPeerAnnotation)")
		return uuid("dd28ff94-d11e-5ae7-b819-6177c1599313");
	else if (T == "IVectorView!(AutomationPeer)")
		return uuid("b56a6076-19e2-50c1-930f-825bfc39635c");
	else if (T == "IVectorView!(AutomationPeerAnnotation)")
		return uuid("00775c79-589b-5c36-ae72-2e7aab0270c6");
	else if (T == "IVector!(AutomationPeer)")
		return uuid("a8d8a409-9130-5e14-8426-0782aaf01608");
	else if (T == "IVector!(AutomationPeerAnnotation)")
		return uuid("d353f885-4bf0-5dc2-878e-ec7a394ee880");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(ColumnDefinition)")
		return uuid("264ebc1f-ed90-528e-bf80-e9f7e02c0ee4");
	else if (T == "IIterable!(ColumnDefinition)")
		return uuid("a99329f3-4130-55cc-a4f0-c2ba43ca0735");
	else if (T == "IIterator!(GroupStyle)")
		return uuid("4b1bfdea-343f-5b34-96f4-753d57227eb9");
	else if (T == "IIterable!(GroupStyle)")
		return uuid("89be2766-2a52-5790-ad0e-d5cae305b07c");
	else if (T == "IIterator!(HubSection)")
		return uuid("4f845272-f53e-5652-b008-a8fbf1e091ef");
	else if (T == "IIterable!(HubSection)")
		return uuid("558c4082-463a-5c3d-b51e-10921b4a4d6c");
	else if (T == "IIterator!(ICommandBarElement)")
		return uuid("cddb0380-e9d7-5264-ab5c-d72b642874c9");
	else if (T == "IIterable!(ICommandBarElement)")
		return uuid("d4c5a8e7-0d5e-5922-a7b4-59b5e634d335");
	else if (T == "IIterator!(MenuFlyoutItemBase)")
		return uuid("2a8a81ef-f351-50a7-bcdc-8368df215280");
	else if (T == "IIterable!(MenuFlyoutItemBase)")
		return uuid("0bb14d64-cc9a-58ae-b881-73fe0ecb99eb");
	else if (T == "IIterator!(RowDefinition)")
		return uuid("2655d45d-38c6-53f0-8719-f3c3a739c1f9");
	else if (T == "IIterable!(RowDefinition)")
		return uuid("abef522a-7378-504f-9406-97d9f42643a7");
	else if (T == "IIterator!(WebViewDeferredPermissionRequest)")
		return uuid("a6ed0a56-801b-5301-95ba-df84d027a977");
	else if (T == "IIterable!(WebViewDeferredPermissionRequest)")
		return uuid("3981a977-da6c-5450-823e-7dd23b91f2bc");
	else if (T == "IVectorView!(GroupStyle)")
		return uuid("9abc1b42-9b12-5178-a898-bb33f04ece9d");
	else if (T == "IVector!(GroupStyle)")
		return uuid("bfb6a4c1-12bb-5f22-a08a-8ebab3864396");
	else if (T == "VectorChangedEventHandler!(GroupStyle)")
		return uuid("2caa8225-b3d4-5725-b0cf-5e6e61453b23");
	else if (T == "IObservableVector!(GroupStyle)")
		return uuid("8144f56c-1f13-5a8d-835f-5e0c9325bff1");
	else if (T == "IVectorView!(ICommandBarElement)")
		return uuid("a38e89ec-f1a4-5d7b-97c3-8aefb64a5f43");
	else if (T == "IVector!(ICommandBarElement)")
		return uuid("18ad7c66-a127-550f-8325-8cf1789176c1");
	else if (T == "VectorChangedEventHandler!(ICommandBarElement)")
		return uuid("20b884e1-c1da-5332-b801-4f1c21744ac8");
	else if (T == "IObservableVector!(ICommandBarElement)")
		return uuid("d5644006-717d-512d-8785-b48c17e73468");
	else if (T == "IVectorView!(ColumnDefinition)")
		return uuid("d8eba449-e161-5108-b4fb-70c2424ea198");
	else if (T == "IVectorView!(HubSection)")
		return uuid("19452449-44eb-54a4-92f5-12161eda9bd7");
	else if (T == "IVectorView!(MenuFlyoutItemBase)")
		return uuid("a59e9e24-f5a6-5272-a97b-7dd01a3efdd0");
	else if (T == "IVectorView!(RowDefinition)")
		return uuid("27b5c835-b5ac-5f58-a770-c739f9e6665c");
	else if (T == "IVectorView!(WebViewDeferredPermissionRequest)")
		return uuid("2065ae49-5ad7-5a34-9f78-bad1308f4e5d");
	else if (T == "IVector!(ColumnDefinition)")
		return uuid("6e137874-dd39-5b4f-a7ec-2ea69e4c2229");
	else if (T == "IVector!(HubSection)")
		return uuid("8e47087a-3ce3-57dc-a583-7db9bf188fc4");
	else if (T == "IVector!(MenuFlyoutItemBase)")
		return uuid("f7f1c37b-b4df-5128-a476-fc8399bc10af");
	else if (T == "IVector!(RowDefinition)")
		return uuid("62225981-7a0d-5d38-8088-7c6bb6d959be");
	else if (T == "IVector!(WebViewDeferredPermissionRequest)")
		return uuid("ee0e5bc7-4440-5970-a878-2d351e00931a");
	else if (T == "EventHandler!(DatePickerValueChangedEventArgs)")
		return uuid("18a84f8e-c1ec-5b25-ac98-818267e6f9a4");
	else if (T == "EventHandler!(ScrollViewerViewChangedEventArgs)")
		return uuid("354c0f34-e691-502a-a444-d5f07aee310e");
	else if (T == "EventHandler!(ScrollViewerViewChangingEventArgs)")
		return uuid("e0c06ef2-dbc9-511c-bab6-25756dd516a3");
	else if (T == "EventHandler!(TimePickerValueChangedEventArgs)")
		return uuid("ebc4d41b-356a-59ca-b135-0ec34f68c307");
	else if (T == "AsyncOperationCompletedHandler!(Windows.UI.Xaml.Controls.ContentDialogResult)")
		return uuid("45c7a306-e330-54d6-a9ba-61c91f93f53b");
	else if (T == "IAsyncOperation!(Windows.UI.Xaml.Controls.ContentDialogResult)")
		return uuid("1f23bdd1-06dc-5be9-9a60-0b4d94d4d72c");
	else if (T == "TypedEventHandler!(AutoSuggestBox, AutoSuggestBoxQuerySubmittedEventArgs)")
		return uuid("1fa5f243-7045-56cb-bf2d-f5a425025c21");
	else if (T == "TypedEventHandler!(AutoSuggestBox, AutoSuggestBoxSuggestionChosenEventArgs)")
		return uuid("7996a97e-615e-5ff5-be3d-0ff9fe43451c");
	else if (T == "TypedEventHandler!(AutoSuggestBox, AutoSuggestBoxTextChangedEventArgs)")
		return uuid("7e2dc943-5f2f-54fb-816f-8e65e893f90a");
	else if (T == "TypedEventHandler!(CalendarDatePicker, CalendarDatePickerDateChangedEventArgs)")
		return uuid("5ff44775-026e-51db-b462-44c19c45a777");
	else if (T == "TypedEventHandler!(CalendarView, CalendarViewDayItemChangingEventArgs)")
		return uuid("6a74874e-f6b3-5c39-9e5f-1751b782bb32");
	else if (T == "TypedEventHandler!(CalendarView, CalendarViewSelectedDatesChangedEventArgs)")
		return uuid("d22361ee-5234-5d25-a53b-79a5ff6a03b8");
	else if (T == "TypedEventHandler!(CommandBar, DynamicOverflowItemsChangingEventArgs)")
		return uuid("758990cd-a4a5-5c0a-aca5-64a629afdbcc");
	else if (T == "TypedEventHandler!(ContentDialog, ContentDialogButtonClickEventArgs)")
		return uuid("4b00de1a-ffed-57b4-bd6e-8c7aab2c53ff");
	else if (T == "TypedEventHandler!(ContentDialog, ContentDialogClosedEventArgs)")
		return uuid("b040eb41-b4f5-5d9f-83c7-9c939c48c890");
	else if (T == "TypedEventHandler!(ContentDialog, ContentDialogClosingEventArgs)")
		return uuid("30491cfe-fff8-5c91-b387-ce8137713918");
	else if (T == "TypedEventHandler!(ContentDialog, ContentDialogOpenedEventArgs)")
		return uuid("b79b774b-7c7f-580c-8914-e9cb2642432e");
	else if (T == "TypedEventHandler!(Control, FocusDisengagedEventArgs)")
		return uuid("38b4535c-2785-5122-96fe-d44f795b9cb2");
	else if (T == "TypedEventHandler!(Control, FocusEngagedEventArgs)")
		return uuid("0c3f6433-66b6-5544-8b9b-8904f4055e92");
	else if (T == "TypedEventHandler!(DatePickerFlyout, DatePickedEventArgs)")
		return uuid("4d9c196f-cdd3-54d8-98d9-4f29abbade76");
	else if (T == "TypedEventHandler!(InkToolbar, IInspectable)")
		return uuid("eea8b7be-9cba-5129-9b75-4930dc0c2705");
	else if (T == "TypedEventHandler!(InkToolbar, InkToolbarIsStencilButtonCheckedChangedEventArgs)")
		return uuid("80a45bd6-7b40-5410-9c65-a8e05fee5e0f");
	else if (T == "TypedEventHandler!(InkToolbarFlyoutItem, IInspectable)")
		return uuid("127a421c-ae3f-53df-b9ad-176847f32cde");
	else if (T == "TypedEventHandler!(ListPickerFlyout, ItemsPickedEventArgs)")
		return uuid("46c68740-3f79-593f-a85f-4248127948c6");
	else if (T == "TypedEventHandler!(ListViewBase, ChoosingGroupHeaderContainerEventArgs)")
		return uuid("4f5971d1-bae9-56f4-acd6-0a8246a6f255");
	else if (T == "TypedEventHandler!(ListViewBase, ChoosingItemContainerEventArgs)")
		return uuid("f06fc999-61e1-5d3f-b0ac-69f2ee9e4d64");
	else if (T == "TypedEventHandler!(ListViewBase, ContainerContentChangingEventArgs)")
		return uuid("d01fb083-5e61-5c12-a18f-62947158faa8");
	else if (T == "TypedEventHandler!(ListViewBase, DragItemsCompletedEventArgs)")
		return uuid("586d1c88-e27e-58ad-8e2f-7e6e83d81e40");
	else if (T == "TypedEventHandler!(PickerFlyout, PickerConfirmedEventArgs)")
		return uuid("22cde5b7-4eb7-5ee4-8d28-1f1cbcf68fb0");
	else if (T == "TypedEventHandler!(Pivot, PivotItemEventArgs)")
		return uuid("6b0c4ca2-7feb-5e4e-bf5c-de9f3ac4221c");
	else if (T == "TypedEventHandler!(RichEditBox, CandidateWindowBoundsChangedEventArgs)")
		return uuid("b0b3c248-7604-5108-aec9-6f3aecca2737");
	else if (T == "TypedEventHandler!(RichEditBox, RichEditBoxTextChangingEventArgs)")
		return uuid("fad2ffb9-d2d9-563c-88ca-1323b133fbf3");
	else if (T == "TypedEventHandler!(RichEditBox, TextCompositionChangedEventArgs)")
		return uuid("c080b01b-eec0-542c-b1f1-d00e207ee1e0");
	else if (T == "TypedEventHandler!(RichEditBox, TextCompositionEndedEventArgs)")
		return uuid("e6750b95-305f-52fd-bb80-cfcf72bc5421");
	else if (T == "TypedEventHandler!(RichEditBox, TextCompositionStartedEventArgs)")
		return uuid("297dde84-d0c7-5d21-b1ed-f96c4ea4772f");
	else if (T == "TypedEventHandler!(SearchBox, SearchBoxQueryChangedEventArgs)")
		return uuid("b15ccc28-40f3-52da-9011-87621e9c60ea");
	else if (T == "TypedEventHandler!(SearchBox, SearchBoxQuerySubmittedEventArgs)")
		return uuid("56d6c824-a5b2-51f4-8af7-7b8ee582c029");
	else if (T == "TypedEventHandler!(SearchBox, SearchBoxResultSuggestionChosenEventArgs)")
		return uuid("8d18767b-a4b8-52fc-8767-f87d05b5172e");
	else if (T == "TypedEventHandler!(SearchBox, SearchBoxSuggestionsRequestedEventArgs)")
		return uuid("287dd4fe-12fc-5289-ab8a-7c7217024a6b");
	else if (T == "TypedEventHandler!(SplitView, IInspectable)")
		return uuid("e277bfe5-10c1-5472-9bc6-1ae39aebfc86");
	else if (T == "TypedEventHandler!(SplitView, SplitViewPaneClosingEventArgs)")
		return uuid("c674a1de-c3d9-5e39-bc39-121fc3cc7d41");
	else if (T == "TypedEventHandler!(SwapChainPanel, IInspectable)")
		return uuid("a8bbf146-b687-5c03-9a42-2ae2d55bfbb4");
	else if (T == "TypedEventHandler!(TextBox, CandidateWindowBoundsChangedEventArgs)")
		return uuid("b6b53bf8-1ac8-51c4-bafc-95f8e01637b0");
	else if (T == "TypedEventHandler!(TextBox, TextBoxTextChangingEventArgs)")
		return uuid("1e65e112-e634-55c3-befb-dbf5cfcb30b1");
	else if (T == "TypedEventHandler!(TextBox, TextCompositionChangedEventArgs)")
		return uuid("61107067-2cfb-5de1-92b6-d332c17f756e");
	else if (T == "TypedEventHandler!(TextBox, TextCompositionEndedEventArgs)")
		return uuid("b9ac0e9e-5b32-52b7-a8f9-b85e4be14b16");
	else if (T == "TypedEventHandler!(TextBox, TextCompositionStartedEventArgs)")
		return uuid("98fee2a4-211d-5a3d-a832-c5ddeb8444a9");
	else if (T == "TypedEventHandler!(TimePickerFlyout, TimePickedEventArgs)")
		return uuid("7d77980b-a0df-51b1-879b-c23d2de0abbe");
	else if (T == "TypedEventHandler!(WebView, IInspectable)")
		return uuid("d9f52e0d-21fb-5a0b-b4c6-7d162af7fb9c");
	else if (T == "TypedEventHandler!(WebView, WebViewContentLoadingEventArgs)")
		return uuid("e7b42a9a-f140-52ad-a658-e237b9a3dcca");
	else if (T == "TypedEventHandler!(WebView, WebViewDOMContentLoadedEventArgs)")
		return uuid("b9cc891c-4745-5a25-9845-e44d13425a38");
	else if (T == "TypedEventHandler!(WebView, WebViewLongRunningScriptDetectedEventArgs)")
		return uuid("ecdc76ef-a99b-5ce7-b9a4-c85e66fed1ee");
	else if (T == "TypedEventHandler!(WebView, WebViewNavigationCompletedEventArgs)")
		return uuid("411136f7-770d-599c-8545-6d053a6a1799");
	else if (T == "TypedEventHandler!(WebView, WebViewNavigationStartingEventArgs)")
		return uuid("98055b5a-36bb-5962-971f-8b87619eb17e");
	else if (T == "TypedEventHandler!(WebView, WebViewNewWindowRequestedEventArgs)")
		return uuid("a8d0aff5-90e1-5921-87dd-576a4b0a95b6");
	else if (T == "TypedEventHandler!(WebView, WebViewPermissionRequestedEventArgs)")
		return uuid("718c7a23-eb9f-50a6-8cf7-fbac104e59c3");
	else if (T == "TypedEventHandler!(WebView, WebViewUnsupportedUriSchemeIdentifiedEventArgs)")
		return uuid("d304027c-5714-502a-9312-68ca86397124");
	else if (T == "TypedEventHandler!(WebView, WebViewUnviewableContentIdentifiedEventArgs)")
		return uuid("f00e9fbf-d30e-5854-8927-c9512abd8118");
	else if (T == "AsyncOperationCompletedHandler!(IInspectable)")
		return uuid("3f08262e-a2e1-5134-9297-e9211f481a2d");
	else if (T == "IAsyncOperation!(IInspectable)")
		return uuid("abf53c57-ee50-5342-b52a-26e3b8cc024f");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(Transition)")
		return uuid("0f149913-d622-5dde-b6e3-7835c2ab54b7");
	else if (T == "IIterable!(Transition)")
		return uuid("feb51398-4fdb-5112-8a9b-6a8786ca01ce");
	else if (T == "IVectorView!(Transition)")
		return uuid("43b475a1-3811-5992-be44-ab41a825d355");
	else if (T == "IVector!(Transition)")
		return uuid("e798571f-7e3e-5e1a-aa55-cbc93b83f821");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IIterator!(Windows.Foundation.DateTime)")
		return uuid("f56158df-8947-5480-96ed-36c1057877ea");
	else if (T == "IIterable!(Windows.Foundation.DateTime)")
		return uuid("576a207d-977c-5b36-b54d-624ec86c53a3");
	else if (T == "IVectorView!(Windows.Foundation.DateTime)")
		return uuid("135a5f72-a818-54a8-b955-dff2593a3bf5");
	else if (T == "IVector!(Windows.Foundation.DateTime)")
		return uuid("94390dc5-e442-5870-88b6-007e232f902c");
	else if (T == "IIterator!(Windows.UI.Color)")
		return uuid("c4310b12-7ac2-5e5b-b511-e546eea473b4");
	else if (T == "IIterable!(Windows.UI.Color)")
		return uuid("932eef5e-2c2f-5eae-929a-74e973b57c27");
	else if (T == "IIterator!(IInspectable)")
		return uuid("44a94f2d-04f8-5091-b336-be7892dd10be");
	else if (T == "IIterable!(IInspectable)")
		return uuid("092b849b-60b1-52be-a44a-6fe8e933cbe4");
	else if (T == "IVectorView!(IInspectable)")
		return uuid("a6487363-b074-5c60-ab16-866dce4ee54d");
	else if (T == "IVector!(IInspectable)")
		return uuid("b32bdca4-5e52-5b27-bc5d-d66a1a268c2a");
	else if (T == "IIterator!(PageStackEntry)")
		return uuid("b89ca96c-ded1-53bd-8744-caa84e87ba87");
	else if (T == "IIterable!(PageStackEntry)")
		return uuid("dd2278a5-4c14-5967-8a41-9a47c3c5c4a7");
	else if (T == "IVectorView!(PageStackEntry)")
		return uuid("af6d7eac-086f-5c5f-be4b-0858af7506f7");
	else if (T == "IVector!(PageStackEntry)")
		return uuid("e561a13f-89a1-5ef2-a3fe-eba1b4539b46");
	else if (T == "VectorChangedEventHandler!(IInspectable)")
		return uuid("b423a801-d35e-56b9-813b-00889536cb98");
	else if (T == "IObservableVector!(IInspectable)")
		return uuid("7b81c56a-0985-518d-baa9-0da9ae009f65");
	else if (T == "IIterator!(DependencyObject)")
		return uuid("29f8d454-905d-587e-b9d8-bfd418805a65");
	else if (T == "IIterable!(DependencyObject)")
		return uuid("f66c6bd3-55b4-5bbb-b82a-6d9ce383091a");
	else if (T == "IVectorView!(DependencyObject)")
		return uuid("fe750d77-1307-5df2-a021-1c7a8d6b80ad");
	else if (T == "IVector!(DependencyObject)")
		return uuid("771b857e-ab5c-5db8-a021-397c92cdc44c");
	else if (T == "VectorChangedEventHandler!(DependencyObject)")
		return uuid("b62dec93-a7a5-5ff5-b2d2-6bd20ca0bd4d");
	else if (T == "IObservableVector!(DependencyObject)")
		return uuid("fac6f4d2-96fd-5ceb-80bf-46ac6529fc65");
	else if (T == "IIterator!(Brush)")
		return uuid("5d4853d4-3f43-5aba-a074-f21b30927bf6");
	else if (T == "IIterable!(Brush)")
		return uuid("b07e92d5-06b3-5dd2-8d49-349ffbd84634");
	else if (T == "IVectorView!(Brush)")
		return uuid("2c463363-ef52-5dd5-ba90-415d8933bec9");
	else if (T == "IVector!(Brush)")
		return uuid("a8cd84e4-3edf-5172-8f77-10e910e5dc5d");
	else if (T == "AsyncOperationCompletedHandler!(Windows.UI.Xaml.Data.LoadMoreItemsResult)")
		return uuid("10fb738b-a63b-506e-9ed7-2eab37915221");
	else if (T == "IAsyncOperation!(Windows.UI.Xaml.Data.LoadMoreItemsResult)")
		return uuid("c788089d-37ab-5ba2-b865-5a309acdfc4d");
	else if (T == "IIterator!(ItemIndexRange)")
		return uuid("9c223a26-0c81-59f6-a909-ba4966b4cf24");
	else if (T == "IIterable!(ItemIndexRange)")
		return uuid("273b8073-8c16-59c2-a616-0a534483c612");
	else if (T == "IVectorView!(ItemIndexRange)")
		return uuid("d0b26b06-16e8-5767-a60b-ee3e32e43dfb");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IIterator!(TimelineMarker)")
		return uuid("63e1e513-fca3-51c0-8c2b-09db5f8f4c40");
	else if (T == "IIterable!(TimelineMarker)")
		return uuid("946c5af5-4c09-5784-9cf2-506947378e8e");
	else if (T == "IVectorView!(TimelineMarker)")
		return uuid("fef8133f-98e9-5ca3-a667-0d234c5d1d96");
	else if (T == "IVector!(TimelineMarker)")
		return uuid("b2d8ddb4-d2b8-5930-942d-26118756bd46");
	else if (T == "IReference!(int)")
		return uuid("548cefbd-bc8a-5fa0-8df2-957440fc8bf4");
	else if (T == "TypedEventHandler!(MediaElement, PartialMediaFailureDetectedEventArgs)")
		return uuid("b402b0ca-beca-5537-8192-8f30f7cb5d0e");
	else if (T == "TypedEventHandler!(MediaTransportControls, MediaTransportControlsThumbnailRequestedEventArgs)")
		return uuid("c2925ff8-71f0-59d3-ba13-862b226eeba2");
	else if (T == "IIterator!(UIElement)")
		return uuid("1d1f9d60-d53b-57f7-b144-8f7c487846e8");
	else if (T == "IIterable!(UIElement)")
		return uuid("42e26ae1-d357-57e8-bb48-f75c9ff69d91");
	else if (T == "IVectorView!(UIElement)")
		return uuid("f3864c10-14a4-5516-b1d9-63b6579429b1");
	else if (T == "IVector!(UIElement)")
		return uuid("b4c1e3ac-8768-5b9d-a661-f63330b8507b");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "IIterator!(Block)")
		return uuid("798d518e-a9f8-5fc7-8ccc-2a49069aba05");
	else if (T == "IIterable!(Block)")
		return uuid("f7023b9a-e6d1-5e2d-8f41-b28c33323e04");
	else if (T == "IVectorView!(Block)")
		return uuid("995f73c4-7cf8-5b59-a0fb-7e0c6477172e");
	else if (T == "IVector!(Block)")
		return uuid("3ee78a34-160e-50ff-b5aa-09f263a669f8");
	else if (T == "IIterator!(float)")
		return uuid("42614e61-b0aa-5e72-9354-2771db20b7a8");
	else if (T == "IIterable!(float)")
		return uuid("b01bee51-063a-5fda-bd72-d76637bb8cb8");
	else if (T == "IVectorView!(float)")
		return uuid("7bca64fd-150c-5d50-b56b-9f4f474c5930");
	else if (T == "IVector!(float)")
		return uuid("61cf693f-db4c-579f-b905-5dd3d23cfd4d");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IReference!(float)")
		return uuid("719cc2ba-3e76-5def-9f1a-38d85a145ea8");
	else if (T == "TypedEventHandler!(SearchBox, RoutedEventArgs)")
		return uuid("a16eff3c-cc37-554c-8f10-0f7e6e2bcaad");
	else if (T == "IIterator!(Inline)")
		return uuid("f80dc964-2542-5c6a-ba65-b04824b5ed75");
	else if (T == "IIterable!(Inline)")
		return uuid("e1d2b910-18c2-5906-8f8a-d62a63f93f18");
	else if (T == "IVectorView!(Inline)")
		return uuid("c2dd082f-8cb4-51d6-b91b-7e2377780cee");
	else if (T == "IVector!(Inline)")
		return uuid("92ec9252-8ee3-55d6-84b4-30b635077778");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IIterator!(Uri)")
		return uuid("1c157d0f-5efe-5cec-bbd6-0c6ce9af07a5");
	else if (T == "IIterable!(Uri)")
		return uuid("b0d63b78-78ad-5e31-b6d8-e32a0e16c447");
	else if (T == "IVectorView!(Uri)")
		return uuid("4b8385bd-a2cd-5ff1-bf74-7ea580423e50");
	else if (T == "IVector!(Uri)")
		return uuid("0d82bd8d-fe62-5d67-a7b9-7886dd75bc4e");
	else if (T == "AsyncOperationCompletedHandler!(HSTRING)")
		return uuid("b79a741f-7fb5-50ae-9e99-911201ec3d41");
	else if (T == "IAsyncOperation!(HSTRING)")
		return uuid("3e1fe603-f897-5263-b328-0806426b8a79");
	else if (T == "AsyncOperationCompletedHandler!(DataPackage)")
		return uuid("a93a3b99-e946-57ce-aad9-c23d138c353e");
	else if (T == "IAsyncOperation!(DataPackage)")
		return uuid("a16f2d07-ead3-53e4-9490-75bdbaeb7a5b");
	else if (T == "IIterator!(MapElement)")
		return uuid("f916b428-3b74-5ad4-9d97-1b0a387aecb5");
	else if (T == "IIterable!(MapElement)")
		return uuid("81d25c25-a4b3-5d0d-92ab-26360c2a7fac");
	else if (T == "IIterator!(MapRouteView)")
		return uuid("af256095-4144-55a7-9139-89843b572db7");
	else if (T == "IIterable!(MapRouteView)")
		return uuid("090ad4b3-8fce-502d-8665-18650c51bea9");
	else if (T == "IIterator!(MapStyleSheet)")
		return uuid("e6c727e5-6a18-5333-aa6a-266e8c8bdd51");
	else if (T == "IIterable!(MapStyleSheet)")
		return uuid("05483d88-841c-5a0e-b9c7-5d828d9f2aff");
	else if (T == "IIterator!(MapTileSource)")
		return uuid("e5c7eba6-7c75-50bc-8b36-2d8ca1fa538b");
	else if (T == "IIterable!(MapTileSource)")
		return uuid("6d8a73f7-abd7-56c4-99a7-06c1fa77dcd2");
	else if (T == "IVectorView!(MapElement)")
		return uuid("cec120d8-ea73-5aa3-914a-37dd2554f686");
	else if (T == "IVectorView!(MapRouteView)")
		return uuid("bdbb45ea-0c73-56bc-a375-3f2a7beb6f2e");
	else if (T == "IVectorView!(MapTileSource)")
		return uuid("de7aa182-8e17-5565-9a9d-94a4ff25364a");
	else if (T == "IVector!(MapElement)")
		return uuid("02773f2d-bb17-56fd-96cc-89f1c47f9e11");
	else if (T == "IVector!(MapRouteView)")
		return uuid("8ce513b4-0a7d-5553-b735-79cd5a7fee3f");
	else if (T == "IVector!(MapTileSource)")
		return uuid("19f78a46-2c65-5f94-bf5b-963347a0a318");
	else if (T == "AsyncOperationCompletedHandler!(StreetsidePanorama)")
		return uuid("f6f3b17c-4527-5528-86aa-1cf1fb78a5eb");
	else if (T == "IAsyncOperation!(StreetsidePanorama)")
		return uuid("6ad8ea47-6670-51d8-a1db-33fe75491f0c");
	else if (T == "TypedEventHandler!(CustomMapTileDataSource, MapTileBitmapRequestedEventArgs)")
		return uuid("8d2d9655-2f82-5271-9e95-a2db39d872f0");
	else if (T == "TypedEventHandler!(HttpMapTileDataSource, MapTileUriRequestedEventArgs)")
		return uuid("4933a19a-00cc-5c21-a3df-b68f9939f6ef");
	else if (T == "TypedEventHandler!(LocalMapTileDataSource, MapTileUriRequestedEventArgs)")
		return uuid("76752fc4-b240-502c-9098-622c6c36e6a3");
	else if (T == "TypedEventHandler!(MapControl, IInspectable)")
		return uuid("f250dd93-e636-51ef-bc93-ee78d431a6bd");
	else if (T == "TypedEventHandler!(MapControl, MapActualCameraChangedEventArgs)")
		return uuid("1b536ae0-08b0-5c54-bb30-679e6a875d61");
	else if (T == "TypedEventHandler!(MapControl, MapActualCameraChangingEventArgs)")
		return uuid("78bfb71b-2d80-50e1-a2e9-e5667ff89ef2");
	else if (T == "TypedEventHandler!(MapControl, MapContextRequestedEventArgs)")
		return uuid("e5239641-ba1f-5d89-aae1-c7b499a47b0c");
	else if (T == "TypedEventHandler!(MapControl, MapControlBusinessLandmarkClickEventArgs)")
		return uuid("3a9d75c2-a41b-5708-8c1b-8e7c26e857d0");
	else if (T == "TypedEventHandler!(MapControl, MapControlBusinessLandmarkPointerEnteredEventArgs)")
		return uuid("fd7dabea-0014-5a30-9a59-bd4126a2ffb7");
	else if (T == "TypedEventHandler!(MapControl, MapControlBusinessLandmarkPointerExitedEventArgs)")
		return uuid("c4574b81-a192-5810-b0d9-cc99230fdcdc");
	else if (T == "TypedEventHandler!(MapControl, MapControlBusinessLandmarkRightTappedEventArgs)")
		return uuid("e3634a54-05ed-5e39-9d8a-03857f0ba0e7");
	else if (T == "TypedEventHandler!(MapControl, MapControlTransitFeatureClickEventArgs)")
		return uuid("3ec75af0-1679-53ff-bb0c-376b8c441980");
	else if (T == "TypedEventHandler!(MapControl, MapControlTransitFeaturePointerEnteredEventArgs)")
		return uuid("166ea60b-ab70-580c-bb70-2f79ee214cea");
	else if (T == "TypedEventHandler!(MapControl, MapControlTransitFeaturePointerExitedEventArgs)")
		return uuid("7553fcf8-a4c2-5cc1-9a3c-f0b36b756068");
	else if (T == "TypedEventHandler!(MapControl, MapControlTransitFeatureRightTappedEventArgs)")
		return uuid("a18b47d7-6326-5fc1-8a40-88af91bb0589");
	else if (T == "TypedEventHandler!(MapControl, MapCustomExperienceChangedEventArgs)")
		return uuid("272cf26f-18da-599e-896f-3bfbf6fb1326");
	else if (T == "TypedEventHandler!(MapControl, MapElementClickEventArgs)")
		return uuid("4c7821a1-d570-597d-acc7-068853c4ab27");
	else if (T == "TypedEventHandler!(MapControl, MapElementPointerEnteredEventArgs)")
		return uuid("ca2638e5-7c33-5b90-9b66-273731fc7091");
	else if (T == "TypedEventHandler!(MapControl, MapElementPointerExitedEventArgs)")
		return uuid("f6a7bfd1-2c79-5191-b382-75b141d18846");
	else if (T == "TypedEventHandler!(MapControl, MapInputEventArgs)")
		return uuid("b92f6816-4d0a-52c2-9868-94b5c942007e");
	else if (T == "TypedEventHandler!(MapControl, MapRightTappedEventArgs)")
		return uuid("efc52f2d-ad6b-59af-a0f0-2253d434414f");
	else if (T == "TypedEventHandler!(MapControl, MapTargetCameraChangedEventArgs)")
		return uuid("2671c2dd-e212-5e43-80e2-ab6ff3f3086c");
	else if (T == "TypedEventHandler!(MapScene, MapTargetCameraChangedEventArgs)")
		return uuid("766ed4a8-e810-5f78-bc96-9aff9f58cfca");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "IIterator!(DependencyObject)")
		return uuid("29f8d454-905d-587e-b9d8-bfd418805a65");
	else if (T == "IIterable!(DependencyObject)")
		return uuid("f66c6bd3-55b4-5bbb-b82a-6d9ce383091a");
	else if (T == "IVectorView!(DependencyObject)")
		return uuid("fe750d77-1307-5df2-a021-1c7a8d6b80ad");
	else if (T == "IVector!(DependencyObject)")
		return uuid("771b857e-ab5c-5db8-a021-397c92cdc44c");
	else if (T == "IReference!(Windows.UI.Xaml.Thickness)")
		return uuid("a19f7ba8-d8cd-5df2-ab44-fefd26644484");
	else if (T == "AsyncOperationCompletedHandler!(bool)")
		return uuid("c1d3d1a2-ae17-5a5f-b5a2-bdcc8844889a");
	else if (T == "IAsyncOperation!(bool)")
		return uuid("cdb5efb3-5788-509d-9be1-71ccb8a3362a");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IIterator!(LocalLocation)")
		return uuid("a23c2e87-a8e7-568f-96a1-69e98f86b9d3");
	else if (T == "IIterable!(LocalLocation)")
		return uuid("5474eefb-60f4-58ac-89e2-6e83f79fa76c");
	else if (T == "IVectorView!(LocalLocation)")
		return uuid("619192f2-4f9d-5629-ab01-b18512503d73");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IIterator!(Geopath)")
		return uuid("cf1d4402-4754-57e7-aae0-69ca42cbd8f2");
	else if (T == "IIterable!(Geopath)")
		return uuid("246fcfbd-a881-5e8e-9908-c1b9ebdfec78");
	else if (T == "IVectorView!(Geopath)")
		return uuid("a83321cb-1b54-5f68-9234-4a824d33e371");
	else if (T == "IVector!(Geopath)")
		return uuid("7ca97e6d-6893-5672-a0c7-625c5090381e");
	else if (T == "IIterator!(Geopoint)")
		return uuid("88225b39-8be9-5c03-9714-8f1642d8a43f");
	else if (T == "IIterable!(Geopoint)")
		return uuid("e7617fc9-2cc7-5bd1-bc5a-f47260834ed8");
	else if (T == "IIterator!(Popup)")
		return uuid("5bcb0970-5472-56e8-b184-d01fb81e408a");
	else if (T == "IIterable!(Popup)")
		return uuid("0af05ce9-3b0f-5a6d-a053-d01a1a554f8c");
	else if (T == "IVectorView!(Popup)")
		return uuid("7d899fb2-4666-5a3e-b36c-9886bcbc4663");
	else if (T == "TypedEventHandler!(FlyoutBase, FlyoutBaseClosingEventArgs)")
		return uuid("96e17fbc-78c7-5560-ac3a-587f46db70d6");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(IInspectable)")
		return uuid("44a94f2d-04f8-5091-b336-be7892dd10be");
	else if (T == "IIterable!(IInspectable)")
		return uuid("092b849b-60b1-52be-a44a-6fe8e933cbe4");
	else if (T == "IVectorView!(IInspectable)")
		return uuid("a6487363-b074-5c60-ab16-866dce4ee54d");
	else if (T == "IVector!(IInspectable)")
		return uuid("b32bdca4-5e52-5b27-bc5d-d66a1a268c2a");
	else if (T == "IIterator!(Transition)")
		return uuid("0f149913-d622-5dde-b6e3-7835c2ab54b7");
	else if (T == "IIterable!(Transition)")
		return uuid("feb51398-4fdb-5112-8a9b-6a8786ca01ce");
	else if (T == "IVectorView!(Transition)")
		return uuid("43b475a1-3811-5992-be44-ab41a825d355");
	else if (T == "IVector!(Transition)")
		return uuid("e798571f-7e3e-5e1a-aa55-cbc93b83f821");
	else if (T == "IIterator!(float)")
		return uuid("42614e61-b0aa-5e72-9354-2771db20b7a8");
	else if (T == "IIterable!(float)")
		return uuid("b01bee51-063a-5fda-bd72-d76637bb8cb8");
	else if (T == "IVectorView!(float)")
		return uuid("7bca64fd-150c-5d50-b56b-9f4f474c5930");
	else if (T == "IReference!(bool)")
		return uuid("3c00fd60-2950-5939-a21a-2d12c5a01b8a");
	else if (T == "IIterator!(ItemIndexRange)")
		return uuid("9c223a26-0c81-59f6-a909-ba4966b4cf24");
	else if (T == "IIterable!(ItemIndexRange)")
		return uuid("273b8073-8c16-59c2-a616-0a534483c612");
	else if (T == "IVectorView!(ItemIndexRange)")
		return uuid("d0b26b06-16e8-5767-a60b-ee3e32e43dfb");
	else if (T == "AsyncOperationCompletedHandler!(Windows.UI.Xaml.Data.LoadMoreItemsResult)")
		return uuid("10fb738b-a63b-506e-9ed7-2eab37915221");
	else if (T == "IAsyncOperation!(Windows.UI.Xaml.Data.LoadMoreItemsResult)")
		return uuid("c788089d-37ab-5ba2-b865-5a309acdfc4d");
	else if (T == "IIterator!(IInspectable)")
		return uuid("44a94f2d-04f8-5091-b336-be7892dd10be");
	else if (T == "IIterable!(IInspectable)")
		return uuid("092b849b-60b1-52be-a44a-6fe8e933cbe4");
	else if (T == "IVectorView!(IInspectable)")
		return uuid("a6487363-b074-5c60-ab16-866dce4ee54d");
	else if (T == "IVector!(IInspectable)")
		return uuid("b32bdca4-5e52-5b27-bc5d-d66a1a268c2a");
	else if (T == "VectorChangedEventHandler!(IInspectable)")
		return uuid("b423a801-d35e-56b9-813b-00889536cb98");
	else if (T == "IObservableVector!(IInspectable)")
		return uuid("7b81c56a-0985-518d-baa9-0da9ae009f65");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(Block)")
		return uuid("798d518e-a9f8-5fc7-8ccc-2a49069aba05");
	else if (T == "IIterable!(Block)")
		return uuid("f7023b9a-e6d1-5e2d-8f41-b28c33323e04");
	else if (T == "IIterator!(Inline)")
		return uuid("f80dc964-2542-5c6a-ba65-b04824b5ed75");
	else if (T == "IIterable!(Inline)")
		return uuid("e1d2b910-18c2-5906-8f8a-d62a63f93f18");
	else if (T == "IVectorView!(Block)")
		return uuid("995f73c4-7cf8-5b59-a0fb-7e0c6477172e");
	else if (T == "IVectorView!(Inline)")
		return uuid("c2dd082f-8cb4-51d6-b91b-7e2377780cee");
	else if (T == "IVector!(Block)")
		return uuid("3ee78a34-160e-50ff-b5aa-09f263a669f8");
	else if (T == "IVector!(Inline)")
		return uuid("92ec9252-8ee3-55d6-84b4-30b635077778");
	else if (T == "TypedEventHandler!(Hyperlink, HyperlinkClickEventArgs)")
		return uuid("5fead0d2-e657-5aef-a91b-7f52ead17fe3");
	else if (T == "TypedEventHandler!(TextElement, AccessKeyDisplayRequestedEventArgs)")
		return uuid("39ad7708-254e-560a-9e2e-73b1db31f935");
	else if (T == "TypedEventHandler!(TextElement, AccessKeyDisplayDismissedEventArgs)")
		return uuid("a8c9544b-7078-5316-beb6-d9ec916ab88a");
	else if (T == "TypedEventHandler!(TextElement, AccessKeyInvokedEventArgs)")
		return uuid("a72c6b01-2e3c-57b5-9ec4-948f6c6d930a");
	else if (T == "IIterator!(DependencyObject)")
		return uuid("29f8d454-905d-587e-b9d8-bfd418805a65");
	else if (T == "IIterable!(DependencyObject)")
		return uuid("f66c6bd3-55b4-5bbb-b82a-6d9ce383091a");
	else if (T == "IKeyValuePair!(IInspectable, IInspectable)")
		return uuid("59e7ae0c-c29d-5ad6-bef5-dedb52a198e1");
	else if (T == "IMapView!(IInspectable, IInspectable)")
		return uuid("efe76d10-cb60-50ad-8a4f-6885cd6212a1");
	else if (T == "IMap!(IInspectable, IInspectable)")
		return uuid("f5f69427-55ed-5512-8429-d4f6626dfcdd");
	else if (T == "IIterator!(ResourceDictionary)")
		return uuid("849a2f3a-2e5e-58a8-b76e-73450ea680c0");
	else if (T == "IIterable!(ResourceDictionary)")
		return uuid("eaf20635-a462-5397-bee1-f7a09504653b");
	else if (T == "IIterator!(SetterBase)")
		return uuid("3198322e-2527-58d1-8d92-9d22b977d255");
	else if (T == "IIterable!(SetterBase)")
		return uuid("aafe70cb-90a8-5719-bd3e-f0b066ed1626");
	else if (T == "IIterator!(StateTriggerBase)")
		return uuid("d78b9c25-3214-54c6-8405-479344309277");
	else if (T == "IIterable!(StateTriggerBase)")
		return uuid("073325bc-8f0f-56d8-b521-6be47644c554");
	else if (T == "IIterator!(TriggerAction)")
		return uuid("fa0c6c2e-f81a-543c-b8b6-5c18d36711b0");
	else if (T == "IIterable!(TriggerAction)")
		return uuid("a9d34579-8a6a-58bf-85fd-0f37324e2397");
	else if (T == "IIterator!(TriggerBase)")
		return uuid("d317c81a-5dda-59f6-8ce9-44f2877bfae8");
	else if (T == "IIterable!(TriggerBase)")
		return uuid("d697764f-4e15-5888-a2a5-7b4cf0eb07a5");
	else if (T == "IIterator!(UIElement)")
		return uuid("1d1f9d60-d53b-57f7-b144-8f7c487846e8");
	else if (T == "IIterable!(UIElement)")
		return uuid("42e26ae1-d357-57e8-bb48-f75c9ff69d91");
	else if (T == "IIterator!(VisualState)")
		return uuid("f20bd8bc-6dda-5c71-bd39-c57137c5a4ed");
	else if (T == "IIterable!(VisualState)")
		return uuid("1fb071a3-a064-5619-a94e-23c01a4cbf3a");
	else if (T == "IIterator!(VisualStateGroup)")
		return uuid("09e95afc-3096-50c1-b05a-acae1a8cb92e");
	else if (T == "IIterable!(VisualStateGroup)")
		return uuid("5d9ab411-e991-55b0-b16c-a400a50a93df");
	else if (T == "IIterator!(VisualTransition)")
		return uuid("5ae4cb71-a8b8-506b-b31b-62db11f66257");
	else if (T == "IIterable!(VisualTransition)")
		return uuid("017a8eb0-e942-5f25-a945-205a9470b9fc");
	else if (T == "IVectorView!(DependencyObject)")
		return uuid("fe750d77-1307-5df2-a021-1c7a8d6b80ad");
	else if (T == "IVector!(DependencyObject)")
		return uuid("771b857e-ab5c-5db8-a021-397c92cdc44c");
	else if (T == "VectorChangedEventHandler!(DependencyObject)")
		return uuid("b62dec93-a7a5-5ff5-b2d2-6bd20ca0bd4d");
	else if (T == "IObservableVector!(DependencyObject)")
		return uuid("fac6f4d2-96fd-5ceb-80bf-46ac6529fc65");
	else if (T == "IVectorView!(ResourceDictionary)")
		return uuid("36ce8ed8-c1a9-55b7-86dc-b41b8ed8edf4");
	else if (T == "IVectorView!(SetterBase)")
		return uuid("88eef29a-842b-55c2-a936-2b9d75e923e5");
	else if (T == "IVectorView!(StateTriggerBase)")
		return uuid("2bf3a979-a6dc-592b-98ee-cc7c3d9caab2");
	else if (T == "IVectorView!(TriggerAction)")
		return uuid("b6c7ce15-6a2f-5bbb-9efb-49be20b928a1");
	else if (T == "IVectorView!(TriggerBase)")
		return uuid("6c97f246-4010-5c09-9722-39fcc3d0647d");
	else if (T == "IVectorView!(UIElement)")
		return uuid("f3864c10-14a4-5516-b1d9-63b6579429b1");
	else if (T == "IVectorView!(VisualState)")
		return uuid("eb031bb8-8028-5164-9699-1eb288383fa8");
	else if (T == "IVectorView!(VisualStateGroup)")
		return uuid("adf1746e-8936-546a-9733-8626880c4ce1");
	else if (T == "IVectorView!(VisualTransition)")
		return uuid("bb3d4d2f-3406-5f29-812a-bb1e437863da");
	else if (T == "IVector!(ResourceDictionary)")
		return uuid("fe820a0c-694d-518b-8ec5-372993f6ceaf");
	else if (T == "IVector!(SetterBase)")
		return uuid("bd55a7fd-7501-5519-9ffb-d0074240db61");
	else if (T == "IVector!(StateTriggerBase)")
		return uuid("72dbaa30-9016-51d9-8500-4b215b5cb468");
	else if (T == "IVector!(TriggerAction)")
		return uuid("a488f35d-9ffc-5250-ac19-9416777b175a");
	else if (T == "IVector!(TriggerBase)")
		return uuid("9149863b-b78b-5fb6-a0a1-9ebf6bbc3407");
	else if (T == "IVector!(UIElement)")
		return uuid("b4c1e3ac-8768-5b9d-a661-f63330b8507b");
	else if (T == "IVector!(VisualState)")
		return uuid("5b6d19b8-bc0c-5a77-a406-c01c12fd46c3");
	else if (T == "IVector!(VisualStateGroup)")
		return uuid("729a0392-675e-58e4-b6a3-0457bb9ea968");
	else if (T == "IVector!(VisualTransition)")
		return uuid("5aebeb8c-7ef7-5975-ba0a-6c19a529bb72");
	else if (T == "IReference!(Windows.UI.Xaml.Thickness)")
		return uuid("a19f7ba8-d8cd-5df2-ab44-fefd26644484");
	else if (T == "TypedEventHandler!(SearchBox, RoutedEventArgs)")
		return uuid("a16eff3c-cc37-554c-8f10-0f7e6e2bcaad");
	else if (T == "TypedEventHandler!(FrameworkElement, IInspectable)")
		return uuid("c229f252-dede-5d42-a01a-8479d56a7d2f");
	else if (T == "TypedEventHandler!(FrameworkElement, DataContextChangedEventArgs)")
		return uuid("b01c8a21-de6f-5edd-8796-300e3fe66382");
	else if (T == "TypedEventHandler!(UIElement, DragStartingEventArgs)")
		return uuid("ecc4b13b-146c-5963-b8b3-024c5b9b95e4");
	else if (T == "TypedEventHandler!(UIElement, DropCompletedEventArgs)")
		return uuid("ffd72e78-ec1f-5bcc-9d13-ff5fbb040562");
	else if (T == "TypedEventHandler!(UIElement, RoutedEventArgs)")
		return uuid("657f28aa-8c76-501f-b032-d8dc93595e76");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IReference!(Windows.Foundation.Rect)")
		return uuid("80423f11-054f-5eac-afd3-63b6ce15e77b");
	else if (T == "IIterator!(Transition)")
		return uuid("0f149913-d622-5dde-b6e3-7835c2ab54b7");
	else if (T == "IIterable!(Transition)")
		return uuid("feb51398-4fdb-5112-8a9b-6a8786ca01ce");
	else if (T == "IVectorView!(Transition)")
		return uuid("43b475a1-3811-5992-be44-ab41a825d355");
	else if (T == "IVector!(Transition)")
		return uuid("e798571f-7e3e-5e1a-aa55-cbc93b83f821");
	else if (T == "IIterator!(Pointer)")
		return uuid("8cb1347d-8888-5fb3-bffd-e6caf61b4f03");
	else if (T == "IIterable!(Pointer)")
		return uuid("6cf9f859-2234-510d-860a-db328030cbcc");
	else if (T == "IVectorView!(Pointer)")
		return uuid("6250f79f-7668-51e9-86a3-3821217a6631");
	else if (T == "AsyncOperationCompletedHandler!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)")
		return uuid("add21d46-17df-5a43-a685-3262fce84643");
	else if (T == "IAsyncOperation!(Windows.ApplicationModel.DataTransfer.DataPackageOperation)")
		return uuid("8b98aea9-64f0-5672-b30e-dfd9c2e4f6fe");
	else if (T == "TypedEventHandler!(UIElement, ContextRequestedEventArgs)")
		return uuid("41d66b93-d17b-59b2-b916-8e813fecb9bd");
	else if (T == "TypedEventHandler!(UIElement, AccessKeyDisplayRequestedEventArgs)")
		return uuid("5871821a-2491-5cec-a457-21996ca4efaf");
	else if (T == "TypedEventHandler!(UIElement, AccessKeyDisplayDismissedEventArgs)")
		return uuid("2831903f-655e-5464-828c-56a8b4c65f1e");
	else if (T == "TypedEventHandler!(UIElement, AccessKeyInvokedEventArgs)")
		return uuid("a5c9a137-f716-5d8d-92c4-02f171936fa1");
	else if (T == "IIterator!(XamlLight)")
		return uuid("af1b4914-a3e9-5f74-b04d-e086ce23aba6");
	else if (T == "IIterable!(XamlLight)")
		return uuid("03229ead-2ba2-5101-9324-a2649db7e61d");
	else if (T == "IVectorView!(XamlLight)")
		return uuid("79432908-e055-5c13-bc00-255796d59f5b");
	else if (T == "IVector!(XamlLight)")
		return uuid("883f90ff-8f3e-5dd2-947c-d7b305daa504");
	else if (T == "TypedEventHandler!(UIElement, GettingFocusEventArgs)")
		return uuid("34f34b77-ec52-5eb6-affc-220cb52ca093");
	else if (T == "TypedEventHandler!(UIElement, LosingFocusEventArgs)")
		return uuid("a0f49f5f-c366-569a-895a-3a82d8801fe4");
	else if (T == "TypedEventHandler!(UIElement, NoFocusCandidateFoundEventArgs)")
		return uuid("d5de4415-b53c-5312-9e1b-ac2a19f04e71");
	else if (T == "IIterator!(Windows.Foundation.Point)")
		return uuid("c602b59e-0a8e-5e99-b478-2b564585278d");
	else if (T == "IIterable!(Windows.Foundation.Point)")
		return uuid("c192280d-3a09-5423-9dc5-67b83ebde41d");
	else if (T == "IKeyValuePair!(IInspectable, IInspectable)")
		return uuid("59e7ae0c-c29d-5ad6-bef5-dedb52a198e1");
	else if (T == "IMapView!(IInspectable, IInspectable)")
		return uuid("efe76d10-cb60-50ad-8a4f-6885cd6212a1");
	else if (T == "IMap!(IInspectable, IInspectable)")
		return uuid("f5f69427-55ed-5512-8429-d4f6626dfcdd");
	else if (T == "IIterator!(InputScopeName)")
		return uuid("7ac16ff4-5857-5001-b87f-327093f68392");
	else if (T == "IIterable!(InputScopeName)")
		return uuid("81416296-95d0-5100-b59b-bea1c27d2002");
	else if (T == "IIterator!(Pointer)")
		return uuid("8cb1347d-8888-5fb3-bffd-e6caf61b4f03");
	else if (T == "IIterable!(Pointer)")
		return uuid("6cf9f859-2234-510d-860a-db328030cbcc");
	else if (T == "IVectorView!(InputScopeName)")
		return uuid("fcd65a82-5328-53bc-a884-c209aafabf78");
	else if (T == "IVectorView!(Pointer)")
		return uuid("6250f79f-7668-51e9-86a3-3821217a6631");
	else if (T == "IVector!(InputScopeName)")
		return uuid("703fe123-d766-562f-b210-1980bb2a0d33");
	else if (T == "TypedEventHandler!(TextElement, AccessKeyDisplayDismissedEventArgs)")
		return uuid("a8c9544b-7078-5316-beb6-d9ec916ab88a");
	else if (T == "TypedEventHandler!(TextElement, AccessKeyDisplayRequestedEventArgs)")
		return uuid("39ad7708-254e-560a-9e2e-73b1db31f935");
	else if (T == "TypedEventHandler!(TextElement, AccessKeyInvokedEventArgs)")
		return uuid("a72c6b01-2e3c-57b5-9ec4-948f6c6d930a");
	else if (T == "TypedEventHandler!(UIElement, AccessKeyDisplayDismissedEventArgs)")
		return uuid("2831903f-655e-5464-828c-56a8b4c65f1e");
	else if (T == "TypedEventHandler!(UIElement, AccessKeyDisplayRequestedEventArgs)")
		return uuid("5871821a-2491-5cec-a457-21996ca4efaf");
	else if (T == "TypedEventHandler!(UIElement, AccessKeyInvokedEventArgs)")
		return uuid("a5c9a137-f716-5d8d-92c4-02f171936fa1");
	else if (T == "TypedEventHandler!(UIElement, ContextRequestedEventArgs)")
		return uuid("41d66b93-d17b-59b2-b916-8e813fecb9bd");
	else if (T == "TypedEventHandler!(UIElement, GettingFocusEventArgs)")
		return uuid("34f34b77-ec52-5eb6-affc-220cb52ca093");
	else if (T == "TypedEventHandler!(UIElement, LosingFocusEventArgs)")
		return uuid("a0f49f5f-c366-569a-895a-3a82d8801fe4");
	else if (T == "TypedEventHandler!(UIElement, NoFocusCandidateFoundEventArgs)")
		return uuid("d5de4415-b53c-5312-9e1b-ac2a19f04e71");
	else if (T == "TypedEventHandler!(IInspectable, IInspectable)")
		return uuid("c7e65ce2-fad5-5e3b-9c58-186ca8c1dd57");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(PointerPoint)")
		return uuid("721fe01c-5ad4-5262-b078-3ab345105db8");
	else if (T == "IIterable!(PointerPoint)")
		return uuid("f6f2cba6-7076-5b59-9631-f6ac32b57695");
	else if (T == "IVectorView!(PointerPoint)")
		return uuid("f0f57411-7786-5174-8752-4c5e834b6da2");
	else if (T == "IVector!(PointerPoint)")
		return uuid("dfa655cf-fde7-5048-b4bf-c909231b7edb");
	else if (T == "IIterator!(IRandomAccessStream)")
		return uuid("c875446a-587f-58da-897e-3bbe5ec7c30b");
	else if (T == "IIterable!(IRandomAccessStream)")
		return uuid("ba666a00-1555-5df4-81a5-07d23f7ffceb");
	else if (T == "IVectorView!(IRandomAccessStream)")
		return uuid("92cd0a46-2266-5cd6-9293-e111299f2793");
	else if (T == "IVector!(IRandomAccessStream)")
		return uuid("2736b66b-daa3-5e0c-9842-6a0f44b5440b");
	else if (T == "IIterator!(ColorKeyFrame)")
		return uuid("36a6440d-aa86-5bce-8df2-5de99206f151");
	else if (T == "IIterable!(ColorKeyFrame)")
		return uuid("1859dd08-582d-51dc-82a1-466111caf944");
	else if (T == "IIterator!(DoubleKeyFrame)")
		return uuid("ca007bbd-84a1-512f-977f-9bd728e1e73f");
	else if (T == "IIterable!(DoubleKeyFrame)")
		return uuid("5f1676da-a405-5b7a-baf1-968de4391fb7");
	else if (T == "IIterator!(ObjectKeyFrame)")
		return uuid("69c69834-8951-54a7-a2ca-922bacf9fc70");
	else if (T == "IIterable!(ObjectKeyFrame)")
		return uuid("9084a8e1-8f4d-5de3-b1c6-e5f05724caed");
	else if (T == "IIterator!(PointKeyFrame)")
		return uuid("e55a65ad-e742-5f78-876b-64d1681fc9e2");
	else if (T == "IIterable!(PointKeyFrame)")
		return uuid("b8de4dc9-8c69-55f3-af58-040f1319649c");
	else if (T == "IIterator!(Timeline)")
		return uuid("b0c22c25-ae1a-5326-bf81-394246cc3076");
	else if (T == "IIterable!(Timeline)")
		return uuid("a122a346-e6d5-5c54-857d-038e60f5d9c1");
	else if (T == "IIterator!(Transition)")
		return uuid("0f149913-d622-5dde-b6e3-7835c2ab54b7");
	else if (T == "IIterable!(Transition)")
		return uuid("feb51398-4fdb-5112-8a9b-6a8786ca01ce");
	else if (T == "IVectorView!(ColorKeyFrame)")
		return uuid("8d66a3ca-480c-5a76-98a2-9036c03ed7bd");
	else if (T == "IVectorView!(DoubleKeyFrame)")
		return uuid("c12407b6-145f-5420-9e16-d0a20bf13176");
	else if (T == "IVectorView!(ObjectKeyFrame)")
		return uuid("19130523-0862-5631-bc2e-097614b38b6d");
	else if (T == "IVectorView!(PointKeyFrame)")
		return uuid("b366e321-df42-500b-8ada-99854f6406ff");
	else if (T == "IVectorView!(Timeline)")
		return uuid("541af22b-280b-5276-bfcb-3e60a157d62c");
	else if (T == "IVectorView!(Transition)")
		return uuid("43b475a1-3811-5992-be44-ab41a825d355");
	else if (T == "IVector!(ColorKeyFrame)")
		return uuid("92d24fb8-af54-5180-9888-5756566a13ff");
	else if (T == "IVector!(DoubleKeyFrame)")
		return uuid("d7cbde22-86bf-572f-8473-079d15076c3e");
	else if (T == "IVector!(ObjectKeyFrame)")
		return uuid("5f733d3f-72a6-5303-9727-2b03eae7dd4c");
	else if (T == "IVector!(PointKeyFrame)")
		return uuid("b17e26de-9cd7-5456-bee0-49882a87f945");
	else if (T == "IVector!(Timeline)")
		return uuid("2005c7f9-c7d7-521b-a81c-2c9dad77a9e8");
	else if (T == "IVector!(Transition)")
		return uuid("e798571f-7e3e-5e1a-aa55-cbc93b83f821");
	else if (T == "TypedEventHandler!(ConnectedAnimation, IInspectable)")
		return uuid("44caa9ea-7598-517a-b78e-abd20d93d587");
	else if (T == "IReference!(Windows.UI.Color)")
		return uuid("ab8e5d11-b0c1-5a21-95ae-f16bf3a37624");
	else if (T == "IIterator!(UIElement)")
		return uuid("1d1f9d60-d53b-57f7-b144-8f7c487846e8");
	else if (T == "IIterable!(UIElement)")
		return uuid("42e26ae1-d357-57e8-bb48-f75c9ff69d91");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IReference!(Windows.Foundation.Point)")
		return uuid("84f14c22-a00a-5272-8d3d-82112e66df00");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(Brush)")
		return uuid("5d4853d4-3f43-5aba-a074-f21b30927bf6");
	else if (T == "IIterable!(Brush)")
		return uuid("b07e92d5-06b3-5dd2-8d49-349ffbd84634");
	else if (T == "IIterator!(Geometry)")
		return uuid("8726dcbf-961d-527a-a7cb-2db47e1c9092");
	else if (T == "IIterable!(Geometry)")
		return uuid("35340039-0dfc-52b4-8748-0d9a755db8a8");
	else if (T == "IIterator!(GradientStop)")
		return uuid("01dca32b-0938-5e4a-94ad-bb4906f651ed");
	else if (T == "IIterable!(GradientStop)")
		return uuid("9105bb93-ac26-5bae-8c1e-df8ecf00dee6");
	else if (T == "IIterator!(PathFigure)")
		return uuid("71bd579b-088e-5e59-8876-80613dcff83e");
	else if (T == "IIterable!(PathFigure)")
		return uuid("cd1dc421-d6e5-5b3f-a8c7-9938f28b2995");
	else if (T == "IIterator!(PathSegment)")
		return uuid("3cfedcfb-7a75-5bc7-a7e2-95ee9bc6dd32");
	else if (T == "IIterable!(PathSegment)")
		return uuid("37e2cb21-b9c9-5006-bed7-4c328981b551");
	else if (T == "IIterator!(TimelineMarker)")
		return uuid("63e1e513-fca3-51c0-8c2b-09db5f8f4c40");
	else if (T == "IIterable!(TimelineMarker)")
		return uuid("946c5af5-4c09-5784-9cf2-506947378e8e");
	else if (T == "IIterator!(Transform)")
		return uuid("2cdbd536-4598-5f0f-a236-11ec053c8e4b");
	else if (T == "IIterable!(Transform)")
		return uuid("fb8cacbc-d3ec-51b8-9778-99ede8463611");
	else if (T == "IIterator!(XamlLight)")
		return uuid("af1b4914-a3e9-5f74-b04d-e086ce23aba6");
	else if (T == "IIterable!(XamlLight)")
		return uuid("03229ead-2ba2-5101-9324-a2649db7e61d");
	else if (T == "IVectorView!(Brush)")
		return uuid("2c463363-ef52-5dd5-ba90-415d8933bec9");
	else if (T == "IVectorView!(Geometry)")
		return uuid("1905e02c-de78-5136-b761-7b7a33402583");
	else if (T == "IVectorView!(GradientStop)")
		return uuid("4c4a7b50-4bc3-52cb-8c81-2ea77702b566");
	else if (T == "IVectorView!(PathFigure)")
		return uuid("bfe78700-1265-548c-a06b-259cc2bd032b");
	else if (T == "IVectorView!(PathSegment)")
		return uuid("54735271-a3db-5e42-85be-4ff85432364b");
	else if (T == "IVectorView!(TimelineMarker)")
		return uuid("fef8133f-98e9-5ca3-a667-0d234c5d1d96");
	else if (T == "IVectorView!(Transform)")
		return uuid("b3a869c7-9c78-525b-943e-16a2c8979b03");
	else if (T == "IVectorView!(XamlLight)")
		return uuid("79432908-e055-5c13-bc00-255796d59f5b");
	else if (T == "IVector!(Brush)")
		return uuid("a8cd84e4-3edf-5172-8f77-10e910e5dc5d");
	else if (T == "IVector!(Geometry)")
		return uuid("84c6ac3a-8207-5599-9583-606ac2139ddd");
	else if (T == "IVector!(GradientStop)")
		return uuid("33422da4-24f3-5b52-9e8d-11dd71f08bb1");
	else if (T == "IVector!(PathFigure)")
		return uuid("de29d405-26dd-5e72-8bcb-495199d4e5b5");
	else if (T == "IVector!(PathSegment)")
		return uuid("11fdd506-b21d-564d-b6a8-ff991057b8f3");
	else if (T == "IVector!(TimelineMarker)")
		return uuid("b2d8ddb4-d2b8-5930-942d-26118756bd46");
	else if (T == "IVector!(Transform)")
		return uuid("62d7bbc1-71f5-5611-a984-e571c2de7baa");
	else if (T == "IVector!(XamlLight)")
		return uuid("883f90ff-8f3e-5dd2-947c-d7b305daa504");
	else if (T == "TypedEventHandler!(MediaElement, PartialMediaFailureDetectedEventArgs)")
		return uuid("b402b0ca-beca-5537-8192-8f30f7cb5d0e");
	else if (T == "TypedEventHandler!(MediaTransportControls, MediaTransportControlsThumbnailRequestedEventArgs)")
		return uuid("c2925ff8-71f0-59d3-ba13-862b226eeba2");
	else if (T == "TypedEventHandler!(LoadedImageSurface, LoadedImageSourceLoadCompletedEventArgs)")
		return uuid("0aa0c46e-1db6-5850-ae17-ec310ea3fd2d");
	else if (T == "EventHandler!(IInspectable)")
		return uuid("c50898f6-c536-5f47-8583-8b2c2438a13b");
	else if (T == "IIterator!(Windows.Foundation.Point)")
		return uuid("c602b59e-0a8e-5e99-b478-2b564585278d");
	else if (T == "IIterable!(Windows.Foundation.Point)")
		return uuid("c192280d-3a09-5423-9dc5-67b83ebde41d");
	else if (T == "IVectorView!(Windows.Foundation.Point)")
		return uuid("0b7b4c9d-182f-582a-bddb-42b1aac30cad");
	else if (T == "IVector!(Windows.Foundation.Point)")
		return uuid("c0d513a9-ec4a-5a5d-b6d5-b707defdb9f7");
	else if (T == "IIterator!(UIElement)")
		return uuid("1d1f9d60-d53b-57f7-b144-8f7c487846e8");
	else if (T == "IIterable!(UIElement)")
		return uuid("42e26ae1-d357-57e8-bb48-f75c9ff69d91");
	else if (T == "IIterator!(Popup)")
		return uuid("5bcb0970-5472-56e8-b184-d01fb81e408a");
	else if (T == "IIterable!(Popup)")
		return uuid("0af05ce9-3b0f-5a6d-a053-d01a1a554f8c");
	else if (T == "IVectorView!(Popup)")
		return uuid("7d899fb2-4666-5a3e-b36c-9886bcbc4663");
	else if (T == "IIterator!(double)")
		return uuid("638a2cf4-f474-5318-9055-141cb909ac4b");
	else if (T == "IIterable!(double)")
		return uuid("c738964e-9c64-5bce-b5ce-61e9a282ec4a");
	else if (T == "IVectorView!(double)")
		return uuid("af7586a8-6b21-5f61-bff1-1b682293ad96");
	else if (T == "IVector!(double)")
		return uuid("f452d23c-bf05-5f3e-88e7-d17a6716b911");
	else if (T == "AsyncOperationCompletedHandler!(Windows.UI.Xaml.Media.Imaging.SvgImageSourceLoadStatus)")
		return uuid("7c8bc668-4e0b-5924-b7e7-234a11d63d61");
	else if (T == "IAsyncOperation!(Windows.UI.Xaml.Media.Imaging.SvgImageSourceLoadStatus)")
		return uuid("f19df5c2-2b78-53a9-8d38-5ca8dbb5dbc6");
	else if (T == "TypedEventHandler!(SvgImageSource, SvgImageSourceFailedEventArgs)")
		return uuid("d723938d-efee-5a0c-ab3e-1e1db3c9a216");
	else if (T == "TypedEventHandler!(SvgImageSource, SvgImageSourceOpenedEventArgs)")
		return uuid("9e321151-8b27-5e18-9ea3-50520aceb7ef");
	else if (T == "AsyncOperationCompletedHandler!(IBuffer)")
		return uuid("51c3d2fd-b8a1-5620-b746-7ee6d533aca3");
	else if (T == "IAsyncOperation!(IBuffer)")
		return uuid("3bee8834-b9a7-5a80-a746-5ef097227878");
	else if (T == "IIterator!(PageStackEntry)")
		return uuid("b89ca96c-ded1-53bd-8744-caa84e87ba87");
	else if (T == "IIterable!(PageStackEntry)")
		return uuid("dd2278a5-4c14-5967-8a41-9a47c3c5c4a7");
	else if (T == "IVectorView!(PageStackEntry)")
		return uuid("af6d7eac-086f-5c5f-be4b-0858af7506f7");
	else if (T == "IVector!(PageStackEntry)")
		return uuid("e561a13f-89a1-5ef2-a3fe-eba1b4539b46");
	else if (T == "IIterator!(Windows.Foundation.Point)")
		return uuid("c602b59e-0a8e-5e99-b478-2b564585278d");
	else if (T == "IIterable!(Windows.Foundation.Point)")
		return uuid("c192280d-3a09-5423-9dc5-67b83ebde41d");
	else if (T == "IVectorView!(Windows.Foundation.Point)")
		return uuid("0b7b4c9d-182f-582a-bddb-42b1aac30cad");
	else if (T == "IVector!(Windows.Foundation.Point)")
		return uuid("c0d513a9-ec4a-5a5d-b6d5-b707defdb9f7");
	else if (T == "IIterator!(double)")
		return uuid("638a2cf4-f474-5318-9055-141cb909ac4b");
	else if (T == "IIterable!(double)")
		return uuid("c738964e-9c64-5bce-b5ce-61e9a282ec4a");
	else if (T == "IVectorView!(double)")
		return uuid("af7586a8-6b21-5f61-bff1-1b682293ad96");
	else if (T == "IVector!(double)")
		return uuid("f452d23c-bf05-5f3e-88e7-d17a6716b911");
	else if (T == "IIterator!(ResourceCollection)")
		return uuid("2b175876-0920-52f0-80bf-dfe79744128d");
	else if (T == "IIterable!(ResourceCollection)")
		return uuid("d4372a2d-7ab0-5d8e-bd5c-6e9c0a67a8d8");
	else if (T == "IIterator!(Workspace)")
		return uuid("0cc8c426-d68a-5136-9741-de326764ca32");
	else if (T == "IIterable!(Workspace)")
		return uuid("f02d0ebe-eac2-502f-9836-1c5482333bfe");
	else if (T == "IVectorView!(ResourceCollection)")
		return uuid("32f021c7-368b-5cfa-829c-4acf8a36c810");
	else if (T == "IVectorView!(Workspace)")
		return uuid("d0d7b58d-d97e-5761-be66-42b85b3d19c8");
	else if (T == "AsyncOperationProgressHandler!(ServiceDocument, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("dd2a6d54-55aa-5d09-b790-9520d4eb4f19");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(ServiceDocument, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("5f03b1d3-470d-5be7-8176-1c9a46010900");
	else if (T == "IAsyncOperationWithProgress!(ServiceDocument, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("da07abf4-91fa-5c96-84cb-459ea97b934d");
	else if (T == "AsyncOperationProgressHandler!(IInputStream, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("6136b327-4152-54e3-aa34-38a0c121dc4d");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(IInputStream, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("76772ec1-c26f-5f6e-8d3b-8314107cefeb");
	else if (T == "IAsyncOperationWithProgress!(IInputStream, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("f71cff65-e737-5345-b38f-fd445d2dc7e2");
	else if (T == "AsyncOperationProgressHandler!(SyndicationItem, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("b670d335-e83b-58b1-ad7b-840396085c65");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(SyndicationItem, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("9de7422b-4bc3-5546-87b8-2eebfd60be48");
	else if (T == "IAsyncOperationWithProgress!(SyndicationItem, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("44fa5a15-1204-521c-85e5-01259301d527");
	else if (T == "AsyncOperationProgressHandler!(SyndicationItem, Windows.Web.Syndication.TransferProgress)")
		return uuid("1ffb57b2-d2de-5559-8de2-50109c63539b");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(SyndicationItem, Windows.Web.Syndication.TransferProgress)")
		return uuid("8a796ea9-ff95-50ef-93ea-711bf7946473");
	else if (T == "IAsyncOperationWithProgress!(SyndicationItem, Windows.Web.Syndication.TransferProgress)")
		return uuid("e57d0717-27c0-561e-b4b3-72aa2b1e3fc9");
	else if (T == "AsyncActionProgressHandler!(Windows.Web.Syndication.TransferProgress)")
		return uuid("c1610085-94d0-5706-9ac6-10179d7deb92");
	else if (T == "AsyncActionWithProgressCompletedHandler!(Windows.Web.Syndication.TransferProgress)")
		return uuid("f1c031c8-90bf-5cae-adf6-155b4aedfb60");
	else if (T == "IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)")
		return uuid("b7eb83f5-a746-50f2-b91f-31803161ccc7");
	else if (T == "IIterator!(SyndicationCategory)")
		return uuid("2a9228fa-b088-5690-bb38-b7044e0b502b");
	else if (T == "IIterable!(SyndicationCategory)")
		return uuid("d151f7d1-eabd-5300-b55c-149eb289cc71");
	else if (T == "IVectorView!(SyndicationCategory)")
		return uuid("a1ac007c-9d94-552e-840e-139f109a9b88");
	else if (T == "IIterator!(HSTRING)")
		return uuid("8c304ebb-6615-50a4-8829-879ecd443236");
	else if (T == "IIterable!(HSTRING)")
		return uuid("e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e");
	else if (T == "IVectorView!(HSTRING)")
		return uuid("2f13c006-a03a-5f69-b090-75a43e33423e");
	else if (T == "AsyncOperationCompletedHandler!(IInputStream)")
		return uuid("d0bd0125-9049-57a3-bd66-e2525d98c814");
	else if (T == "IAsyncOperation!(IInputStream)")
		return uuid("a8fe0732-556d-5841-b7ee-b3450fb52666");
	else if (T == "IIterator!(HttpDiagnosticSourceLocation)")
		return uuid("807b6ed4-5f42-5199-b231-60cce2c76940");
	else if (T == "IIterable!(HttpDiagnosticSourceLocation)")
		return uuid("4286ca1a-a4c5-5ae8-9da9-5bfa24768e22");
	else if (T == "IVectorView!(HttpDiagnosticSourceLocation)")
		return uuid("e9af27d3-80e8-5aff-a7e5-1b221787f096");
	else if (T == "TypedEventHandler!(HttpDiagnosticProvider, HttpDiagnosticProviderRequestResponseCompletedEventArgs)")
		return uuid("2281ad23-9c8d-5d82-9b20-bcf157b04fd9");
	else if (T == "TypedEventHandler!(HttpDiagnosticProvider, HttpDiagnosticProviderRequestSentEventArgs)")
		return uuid("f8e10321-47bd-526a-a9b2-3bf12f725f8b");
	else if (T == "TypedEventHandler!(HttpDiagnosticProvider, HttpDiagnosticProviderResponseReceivedEventArgs)")
		return uuid("2eef1846-8176-52af-8d2b-e0c932512e9f");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IReference!(UINT64)")
		return uuid("6755e376-53bb-568b-a11d-17239868309e");
	else if (T == "TypedEventHandler!(HttpBaseProtocolFilter, HttpServerCustomValidationRequestedEventArgs)")
		return uuid("ed0260c6-41f2-5a04-9a8b-2930d7ff8a9e");
	else if (T == "IIterator!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("8bcad2b7-0e3b-5eae-bf69-e1f6d9c888f8");
	else if (T == "IIterable!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("2628f58f-3f02-54f2-808f-e1117709d6d0");
	else if (T == "IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("cb383486-c2bc-5756-912d-6a708a07e5bd");
	else if (T == "IVector!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("d7828cf7-4301-58d3-aab5-06e5eefcf79f");
	else if (T == "AsyncOperationProgressHandler!(HttpResponseMessage, Windows.Web.Http.HttpProgress)")
		return uuid("68e4606a-76ec-5816-b2fe-a04ecde4126a");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(HttpResponseMessage, Windows.Web.Http.HttpProgress)")
		return uuid("beadb572-f9a3-5e93-b6ca-e311b65933fc");
	else if (T == "IAsyncOperationWithProgress!(HttpResponseMessage, Windows.Web.Http.HttpProgress)")
		return uuid("5d144364-77d7-5eca-8b09-936a69446652");
	else if (T == "IIterator!(Certificate)")
		return uuid("676fc159-f15c-58bd-91a7-28f7e795c756");
	else if (T == "IIterable!(Certificate)")
		return uuid("0c7d1423-e8fd-5a91-b55c-8bfbe7ac2d40");
	else if (T == "IVectorView!(Certificate)")
		return uuid("963f7013-77c2-51c5-8038-b5bcef633edb");
	else if (T == "IReference!(UINT64)")
		return uuid("6755e376-53bb-568b-a11d-17239868309e");
	else if (T == "IIterator!(HttpCookie)")
		return uuid("626bc177-8403-5030-a88c-7485cc89d730");
	else if (T == "IIterable!(HttpCookie)")
		return uuid("0eb9fa36-88de-590d-8ea0-b613d0ab015f");
	else if (T == "IIterator!(HttpMethod)")
		return uuid("d13a880f-d612-50cf-a6f9-dd96f916f491");
	else if (T == "IIterable!(HttpMethod)")
		return uuid("c088bb1a-dc61-57e1-b967-78dab3541da5");
	else if (T == "IIterator!(IHttpContent)")
		return uuid("59f44f31-695e-5af7-a3c5-85c01939cec8");
	else if (T == "IIterable!(IHttpContent)")
		return uuid("f102157f-b482-5736-9d12-c683bc494942");
	else if (T == "IVectorView!(HttpCookie)")
		return uuid("0064c4f6-3fca-5823-9d92-86c40b28adbc");
	else if (T == "IVectorView!(HttpMethod)")
		return uuid("ef132fb7-d286-5327-b38a-be7d008328fe");
	else if (T == "IVector!(HttpCookie)")
		return uuid("98a6c2fe-469b-5bdd-a16d-7002c3a0853d");
	else if (T == "IVector!(HttpMethod)")
		return uuid("228a73a2-a509-5a78-bd7f-db94ba0bef21");
	else if (T == "AsyncOperationProgressHandler!(HSTRING, Windows.Web.Http.HttpProgress)")
		return uuid("cf0a03f6-a80a-5b46-9c80-f4ad9ed6e2d6");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(HSTRING, Windows.Web.Http.HttpProgress)")
		return uuid("98ab9acb-38db-588f-a5f9-9f484b2200cd");
	else if (T == "IAsyncOperationWithProgress!(HSTRING, Windows.Web.Http.HttpProgress)")
		return uuid("91ecbe45-e889-5518-bd8d-c5bde163109b");
	else if (T == "AsyncOperationProgressHandler!(IBuffer, Windows.Web.Http.HttpProgress)")
		return uuid("9eb2b852-e019-5440-8f88-0dd7d56fea47");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(IBuffer, Windows.Web.Http.HttpProgress)")
		return uuid("b0cf2f85-6992-52be-8f0b-93964b14d963");
	else if (T == "IAsyncOperationWithProgress!(IBuffer, Windows.Web.Http.HttpProgress)")
		return uuid("88d9bb75-afb4-5f32-9d7e-d3bf3785354c");
	else if (T == "AsyncOperationProgressHandler!(IInputStream, Windows.Web.Http.HttpProgress)")
		return uuid("04682e89-6e8b-54b1-a466-432e130cf9a6");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(IInputStream, Windows.Web.Http.HttpProgress)")
		return uuid("504a34ec-5499-5a16-bffc-3ccb64a3547a");
	else if (T == "IAsyncOperationWithProgress!(IInputStream, Windows.Web.Http.HttpProgress)")
		return uuid("0b97c784-df17-571f-8337-447dff068a9c");
	else if (T == "AsyncOperationProgressHandler!(HttpResponseMessage, Windows.Web.Http.HttpProgress)")
		return uuid("68e4606a-76ec-5816-b2fe-a04ecde4126a");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(HttpResponseMessage, Windows.Web.Http.HttpProgress)")
		return uuid("beadb572-f9a3-5e93-b6ca-e311b65933fc");
	else if (T == "IAsyncOperationWithProgress!(HttpResponseMessage, Windows.Web.Http.HttpProgress)")
		return uuid("5d144364-77d7-5eca-8b09-936a69446652");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "AsyncOperationProgressHandler!(UINT64, UINT64)")
		return uuid("ffb2b65d-4120-5d13-826d-107851e6bb1c");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(UINT64, UINT64)")
		return uuid("d2024e41-5500-5b5a-ba46-cb7009596a2f");
	else if (T == "IAsyncOperationWithProgress!(UINT64, UINT64)")
		return uuid("8f1db6e3-6556-5516-825c-1021ee27cd0c");
	else if (T == "AsyncOperationProgressHandler!(IBuffer, UINT64)")
		return uuid("d17f5eb6-b422-5e26-a817-7e0fd08f75d5");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(IBuffer, UINT64)")
		return uuid("abc81235-39c7-59bf-9948-2d14a93d40fd");
	else if (T == "IAsyncOperationWithProgress!(IBuffer, UINT64)")
		return uuid("ad960e7f-d73b-56e4-a58c-6ec7678cfd88");
	else if (T == "AsyncOperationProgressHandler!(IInputStream, UINT64)")
		return uuid("f9b2e7f6-762f-50db-95dd-7f6c6ec47090");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(IInputStream, UINT64)")
		return uuid("8db69706-3dd1-5a28-986a-93be0776d9c3");
	else if (T == "IAsyncOperationWithProgress!(IInputStream, UINT64)")
		return uuid("455aa601-f13e-5dee-b9cb-16b531996327");
	else if (T == "AsyncOperationProgressHandler!(HSTRING, UINT64)")
		return uuid("14da7de7-40df-5d4c-823f-cf310625ad39");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(HSTRING, UINT64)")
		return uuid("bd75eebe-e7b5-5af6-8415-a4b9c9045202");
	else if (T == "IAsyncOperationWithProgress!(HSTRING, UINT64)")
		return uuid("c8bbcb29-6b64-5ce2-a831-038f6e02199e");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IKeyValuePair!(HSTRING, IInspectable)")
		return uuid("09335560-6c6b-5a26-9348-97b781132b20");
	else if (T == "IMapView!(HSTRING, IInspectable)")
		return uuid("bb78502a-f79d-54fa-92c9-90c5039fdf7e");
	else if (T == "IMap!(HSTRING, IInspectable)")
		return uuid("1b0d3570-0877-5ec2-8a2c-3b9539506aca");
	else if (T == "IIterator!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("8bcad2b7-0e3b-5eae-bf69-e1f6d9c888f8");
	else if (T == "IIterable!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("2628f58f-3f02-54f2-808f-e1117709d6d0");
	else if (T == "IVectorView!(Windows.Security.Cryptography.Certificates.ChainValidationResult)")
		return uuid("cb383486-c2bc-5756-912d-6a708a07e5bd");
	else if (T == "IIterator!(Certificate)")
		return uuid("676fc159-f15c-58bd-91a7-28f7e795c756");
	else if (T == "IIterable!(Certificate)")
		return uuid("0c7d1423-e8fd-5a91-b55c-8bfbe7ac2d40");
	else if (T == "IVectorView!(Certificate)")
		return uuid("963f7013-77c2-51c5-8038-b5bcef633edb");
	else if (T == "IIterator!(HttpChallengeHeaderValue)")
		return uuid("6bc05705-2c6f-57e8-bf96-56a761e90e8f");
	else if (T == "IIterable!(HttpChallengeHeaderValue)")
		return uuid("17847e58-f0cf-52e7-81c0-9d06a081569f");
	else if (T == "IIterator!(HttpConnectionOptionHeaderValue)")
		return uuid("e95057be-e8bd-53df-a2f6-865a66a07c6b");
	else if (T == "IIterable!(HttpConnectionOptionHeaderValue)")
		return uuid("1afc512f-dfa2-5528-8aef-6e6a37789b3c");
	else if (T == "IIterator!(HttpContentCodingHeaderValue)")
		return uuid("e21ad0b2-c893-5360-a4fe-f083b308a9cd");
	else if (T == "IIterable!(HttpContentCodingHeaderValue)")
		return uuid("0e8960c2-76e5-56c1-9fe6-8cd9018a6786");
	else if (T == "IIterator!(HttpContentCodingWithQualityHeaderValue)")
		return uuid("3780c808-8b98-5327-84c7-055363fe32ad");
	else if (T == "IIterable!(HttpContentCodingWithQualityHeaderValue)")
		return uuid("916e6271-cef6-53b8-b93f-dc8dca559e50");
	else if (T == "IIterator!(HttpCookiePairHeaderValue)")
		return uuid("ed3b6323-b1c3-558b-9917-0826c4a9e8c0");
	else if (T == "IIterable!(HttpCookiePairHeaderValue)")
		return uuid("16773244-5011-5244-bb00-14db4cf71005");
	else if (T == "IIterator!(HttpExpectationHeaderValue)")
		return uuid("6b72326a-46b1-5d80-a162-c5f45be02e2b");
	else if (T == "IIterable!(HttpExpectationHeaderValue)")
		return uuid("0a391c2b-13c3-59b8-8662-13affb9d1754");
	else if (T == "IIterator!(HttpLanguageRangeWithQualityHeaderValue)")
		return uuid("a25503de-4aef-5ef4-9f06-5df4094051be");
	else if (T == "IIterable!(HttpLanguageRangeWithQualityHeaderValue)")
		return uuid("0c5a4a0d-dbb7-5abf-a5fd-c3b98d9c1487");
	else if (T == "IIterator!(HttpMediaTypeWithQualityHeaderValue)")
		return uuid("6a2084a3-941a-5528-a2ec-28cf1ff9b1a9");
	else if (T == "IIterable!(HttpMediaTypeWithQualityHeaderValue)")
		return uuid("ffc7dfde-58b8-51e9-b33b-65a5d6a4e24c");
	else if (T == "IIterator!(HttpNameValueHeaderValue)")
		return uuid("3bb0c8fa-5f1f-5c70-9950-5d1d1a703dd4");
	else if (T == "IIterable!(HttpNameValueHeaderValue)")
		return uuid("5838a126-b617-5417-b32e-ded2d27d40a3");
	else if (T == "IIterator!(HttpProductInfoHeaderValue)")
		return uuid("4f785951-b59c-5108-b0cd-1437578af49c");
	else if (T == "IIterable!(HttpProductInfoHeaderValue)")
		return uuid("bf97cf99-e614-5765-bad7-161ae3a93ae9");
	else if (T == "IIterator!(HttpTransferCodingHeaderValue)")
		return uuid("49e58dec-b5cd-5ba4-a603-365d1588ad4c");
	else if (T == "IIterable!(HttpTransferCodingHeaderValue)")
		return uuid("57402048-38bf-5055-acb6-5c4da765e388");
	else if (T == "IVectorView!(HttpChallengeHeaderValue)")
		return uuid("8b79423f-b4a3-501d-bac2-b88e78e13a21");
	else if (T == "IVectorView!(HttpConnectionOptionHeaderValue)")
		return uuid("1beae481-9d30-5ac8-942c-49a5f8737adf");
	else if (T == "IVectorView!(HttpContentCodingHeaderValue)")
		return uuid("dcdf2620-b6d0-5835-8bec-d3b946a50f55");
	else if (T == "IVectorView!(HttpContentCodingWithQualityHeaderValue)")
		return uuid("eb18569b-a7ab-58bb-8880-dd022f755b51");
	else if (T == "IVectorView!(HttpCookiePairHeaderValue)")
		return uuid("ad89192d-6ef8-56b5-a4dc-e48d0e85d569");
	else if (T == "IVectorView!(HttpExpectationHeaderValue)")
		return uuid("71a22f32-a3c0-574b-87b4-127199cc7d5e");
	else if (T == "IVectorView!(HttpLanguageRangeWithQualityHeaderValue)")
		return uuid("551fb7fb-ce42-5ffd-a2e0-2a6ce1698070");
	else if (T == "IVectorView!(HttpMediaTypeWithQualityHeaderValue)")
		return uuid("f1c1e9bd-01a6-5bd3-af7b-c14220a645c0");
	else if (T == "IVectorView!(HttpNameValueHeaderValue)")
		return uuid("1ef903c8-8eef-5e9e-b938-b9e428a77672");
	else if (T == "IVectorView!(HttpProductInfoHeaderValue)")
		return uuid("82fef9f0-e283-5279-aa50-f0b3e5726a86");
	else if (T == "IVectorView!(HttpTransferCodingHeaderValue)")
		return uuid("25c1a8d6-229b-5421-b3b3-b7ef078fad7f");
	else if (T == "IVector!(HttpChallengeHeaderValue)")
		return uuid("3737fc5e-0b27-52a3-9e40-cbb9844e6ab7");
	else if (T == "IVector!(HttpConnectionOptionHeaderValue)")
		return uuid("c312da8d-c82f-51c9-b705-5a26d52fbee6");
	else if (T == "IVector!(HttpContentCodingHeaderValue)")
		return uuid("b94e539f-44b6-54c6-9ad4-e2844b3e0be1");
	else if (T == "IVector!(HttpContentCodingWithQualityHeaderValue)")
		return uuid("33f9653d-0eed-5368-a51e-98385191f86f");
	else if (T == "IVector!(HttpCookiePairHeaderValue)")
		return uuid("bc196ace-8a56-5fd0-9878-c807edd8645a");
	else if (T == "IVector!(HttpExpectationHeaderValue)")
		return uuid("18e138ee-fec7-527d-8693-deebca4f3dcd");
	else if (T == "IVector!(HttpLanguageRangeWithQualityHeaderValue)")
		return uuid("b6df6da2-8d92-5270-9584-d6a9a931586d");
	else if (T == "IVector!(HttpMediaTypeWithQualityHeaderValue)")
		return uuid("c18538f7-c256-5666-8868-2225af3574b6");
	else if (T == "IVector!(HttpNameValueHeaderValue)")
		return uuid("2cf800d4-35d0-545c-ab82-f6793be74cba");
	else if (T == "IVector!(HttpProductInfoHeaderValue)")
		return uuid("69392060-6c0f-5de6-8ced-f14fc1b83376");
	else if (T == "IVector!(HttpTransferCodingHeaderValue)")
		return uuid("38e72562-e17c-5d68-aad1-8e8a860b8969");
	else if (T == "IReference!(Windows.Foundation.TimeSpan)")
		return uuid("604d0c4c-91de-5c2a-935f-362f13eaf800");
	else if (T == "IReference!(double)")
		return uuid("2f2d6c29-5473-5f3e-92e7-96572bb990e2");
	else if (T == "IReference!(UINT64)")
		return uuid("6755e376-53bb-568b-a11d-17239868309e");
	else if (T == "IKeyValuePair!(HSTRING, HSTRING)")
		return uuid("60310303-49c5-52e6-abc6-a9b36eccc716");
	else if (T == "IMapView!(HSTRING, HSTRING)")
		return uuid("ac7f26f2-feb7-5b2a-8ac4-345bc62caede");
	else if (T == "IMap!(HSTRING, HSTRING)")
		return uuid("f6d1f700-49c2-52ae-8154-826f9908773c");
	else if (T == "IIterator!(Language)")
		return uuid("30e99ae6-f414-5243-8db2-aab38ea3f1f1");
	else if (T == "IIterable!(Language)")
		return uuid("48409a10-61b6-5db1-a69d-8abc46ac608a");
	else if (T == "IVectorView!(Language)")
		return uuid("144b0f3d-2d59-5dd2-b012-908ec3e06435");
	else if (T == "IVector!(Language)")
		return uuid("dcf2525a-42c0-501d-9fcb-471fae060396");
	else if (T == "IReference!(Windows.Foundation.DateTime)")
		return uuid("5541d8a7-497c-5aa4-86fc-7713adbf2a2c");
	else if (T == "IIterator!(HttpMethod)")
		return uuid("d13a880f-d612-50cf-a6f9-dd96f916f491");
	else if (T == "IIterable!(HttpMethod)")
		return uuid("c088bb1a-dc61-57e1-b967-78dab3541da5");
	else if (T == "IVectorView!(HttpMethod)")
		return uuid("ef132fb7-d286-5327-b38a-be7d008328fe");
	else if (T == "IVector!(HttpMethod)")
		return uuid("228a73a2-a509-5a78-bd7f-db94ba0bef21");
	else if (T == "IReference!(UINT32)")
		return uuid("513ef3af-e784-5325-a91e-97c2b8111cf3");
	else if (T == "IIterator!(ISyndicationNode)")
		return uuid("2dc8d9d6-0f44-5692-933e-f8902ab7fb94");
	else if (T == "IIterable!(ISyndicationNode)")
		return uuid("b486569a-72b3-57aa-9950-cea0b3e4fc58");
	else if (T == "IIterator!(SyndicationAttribute)")
		return uuid("a76fcde8-f86f-5b75-aa7d-5787467a319d");
	else if (T == "IIterable!(SyndicationAttribute)")
		return uuid("329eabe1-efcc-539e-96ba-f6a44f221dbd");
	else if (T == "IIterator!(SyndicationCategory)")
		return uuid("2a9228fa-b088-5690-bb38-b7044e0b502b");
	else if (T == "IIterable!(SyndicationCategory)")
		return uuid("d151f7d1-eabd-5300-b55c-149eb289cc71");
	else if (T == "IIterator!(SyndicationItem)")
		return uuid("d5692aa3-d785-5db4-ac5c-b3832082e629");
	else if (T == "IIterable!(SyndicationItem)")
		return uuid("55463eef-ecb8-59cd-8d6b-74daacbe7d19");
	else if (T == "IIterator!(SyndicationLink)")
		return uuid("901642b7-6ca4-5b57-b8f1-73208342ba4a");
	else if (T == "IIterable!(SyndicationLink)")
		return uuid("c6919f6a-66d9-556a-9632-87d39af14638");
	else if (T == "IIterator!(SyndicationPerson)")
		return uuid("1745e807-f209-5da6-8855-7f99e25eb1fc");
	else if (T == "IIterable!(SyndicationPerson)")
		return uuid("e58e7844-eb34-5284-b09e-de6762d548ca");
	else if (T == "IVectorView!(ISyndicationNode)")
		return uuid("6b4bd4a1-b4f6-5433-afd7-bd2e501a1041");
	else if (T == "IVectorView!(SyndicationAttribute)")
		return uuid("c1d6d1cc-69ce-5486-9f35-c87e13111387");
	else if (T == "IVectorView!(SyndicationCategory)")
		return uuid("a1ac007c-9d94-552e-840e-139f109a9b88");
	else if (T == "IVectorView!(SyndicationItem)")
		return uuid("9496279b-567e-5652-b942-f6fb70c34173");
	else if (T == "IVectorView!(SyndicationLink)")
		return uuid("eb8b7ff6-fa64-576a-8be4-a055f7a04a73");
	else if (T == "IVectorView!(SyndicationPerson)")
		return uuid("0e450d3d-e750-5787-885b-488abc72b5b9");
	else if (T == "IVector!(ISyndicationNode)")
		return uuid("f4508afa-9f02-5eb8-a389-14bbe5193ac0");
	else if (T == "IVector!(SyndicationAttribute)")
		return uuid("2fe84e7b-2350-5941-94b5-a64677b585d1");
	else if (T == "IVector!(SyndicationCategory)")
		return uuid("72e456e4-0e52-52cb-b363-f3581327f033");
	else if (T == "IVector!(SyndicationItem)")
		return uuid("aa01130b-4631-5117-8c48-dc21b0295096");
	else if (T == "IVector!(SyndicationLink)")
		return uuid("b8fb25a5-01c3-5207-814e-892b2b5343f7");
	else if (T == "IVector!(SyndicationPerson)")
		return uuid("ab772cd6-8ce7-5db9-83ac-0db9e44a1b0c");
	else if (T == "AsyncActionProgressHandler!(Windows.Web.Syndication.TransferProgress)")
		return uuid("c1610085-94d0-5706-9ac6-10179d7deb92");
	else if (T == "AsyncActionWithProgressCompletedHandler!(Windows.Web.Syndication.TransferProgress)")
		return uuid("f1c031c8-90bf-5cae-adf6-155b4aedfb60");
	else if (T == "IAsyncActionWithProgress!(Windows.Web.Syndication.TransferProgress)")
		return uuid("b7eb83f5-a746-50f2-b91f-31803161ccc7");
	else if (T == "AsyncOperationProgressHandler!(IInputStream, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("6136b327-4152-54e3-aa34-38a0c121dc4d");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(IInputStream, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("76772ec1-c26f-5f6e-8d3b-8314107cefeb");
	else if (T == "IAsyncOperationWithProgress!(IInputStream, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("f71cff65-e737-5345-b38f-fd445d2dc7e2");
	else if (T == "AsyncOperationProgressHandler!(ServiceDocument, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("dd2a6d54-55aa-5d09-b790-9520d4eb4f19");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(ServiceDocument, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("5f03b1d3-470d-5be7-8176-1c9a46010900");
	else if (T == "IAsyncOperationWithProgress!(ServiceDocument, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("da07abf4-91fa-5c96-84cb-459ea97b934d");
	else if (T == "AsyncOperationProgressHandler!(SyndicationFeed, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("1017bbe0-9d10-543e-8f03-885122a082f3");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(SyndicationFeed, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("0e3d7f70-4e8c-5260-a7e5-786e05bded99");
	else if (T == "IAsyncOperationWithProgress!(SyndicationFeed, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("92eaf151-415e-5f87-8095-781623c88998");
	else if (T == "AsyncOperationProgressHandler!(SyndicationItem, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("b670d335-e83b-58b1-ad7b-840396085c65");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(SyndicationItem, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("9de7422b-4bc3-5546-87b8-2eebfd60be48");
	else if (T == "IAsyncOperationWithProgress!(SyndicationItem, Windows.Web.Syndication.RetrievalProgress)")
		return uuid("44fa5a15-1204-521c-85e5-01259301d527");
	else if (T == "AsyncOperationProgressHandler!(SyndicationItem, Windows.Web.Syndication.TransferProgress)")
		return uuid("1ffb57b2-d2de-5559-8de2-50109c63539b");
	else if (T == "AsyncOperationWithProgressCompletedHandler!(SyndicationItem, Windows.Web.Syndication.TransferProgress)")
		return uuid("8a796ea9-ff95-50ef-93ea-711bf7946473");
	else if (T == "IAsyncOperationWithProgress!(SyndicationItem, Windows.Web.Syndication.TransferProgress)")
		return uuid("e57d0717-27c0-561e-b4b3-72aa2b1e3fc9");
	else
		return GUID.init;
}