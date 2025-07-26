module Windows.ApplicationModel.Background;

import dwinrt;

@uuid("a6c4bac0-51f8-4c57-ac3f-156dd1680c4f")
interface BackgroundTaskCanceledEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.ApplicationModel.Background.IBackgroundTaskInstance sender, Windows.ApplicationModel.Background.BackgroundTaskCancellationReason reason);
}

@uuid("5b38e929-a086-46a7-a678-439135822bcf")
interface BackgroundTaskCompletedEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.ApplicationModel.Background.BackgroundTaskRegistration sender, Windows.ApplicationModel.Background.BackgroundTaskCompletedEventArgs args);
}

@uuid("46e0683c-8a88-4c99-804c-76897f6277a6")
interface BackgroundTaskProgressEventHandler : IUnknown
{
extern(Windows):
	HRESULT abi_Invoke(Windows.ApplicationModel.Background.BackgroundTaskRegistration sender, Windows.ApplicationModel.Background.BackgroundTaskProgressEventArgs args);
}

@uuid("d0dd4342-e37b-4823-a5fe-6b31dfefdeb0")
@WinrtFactory("Windows.ApplicationModel.Background.ActivitySensorTrigger")
interface IActivitySensorTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_SubscribedActivities(Windows.Foundation.Collections.IVector!(Windows.Devices.Sensors.ActivityType)* return_value);
	HRESULT get_ReportInterval(UINT32* return_value);
	HRESULT get_SupportedActivities(Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.ActivityType)* return_value);
	HRESULT get_MinimumReportInterval(UINT32* return_value);
}
@uuid("d0dd4342-e37b-4823-a5fe-6b31dfefdeb0")
@WinrtFactory("Windows.ApplicationModel.Background.ActivitySensorTrigger")
interface IActivitySensorTrigger : IActivitySensorTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("a72691c3-3837-44f7-831b-0132cc872bc3")
@WinrtFactory("Windows.ApplicationModel.Background.ActivitySensorTrigger")
interface IActivitySensorTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 reportIntervalInMilliseconds, Windows.ApplicationModel.Background.ActivitySensorTrigger* return_activityTrigger);
}

@uuid("ca03fa3b-cce6-4de2-b09b-9628bd33bbbe")
@WinrtFactory("Windows.ApplicationModel.Background.AlarmApplicationManager")
interface IAlarmApplicationManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.AlarmAccessStatus)* return_operation);
	HRESULT abi_GetAccessStatus(Windows.ApplicationModel.Background.AlarmAccessStatus* return_status);
}

@uuid("74d4f496-8d37-44ec-9481-2a0b9854eb48")
@WinrtFactory("Windows.ApplicationModel.Background.AppBroadcastTrigger")
interface IAppBroadcastTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT set_ProviderInfo(Windows.ApplicationModel.Background.AppBroadcastTriggerProviderInfo value);
	HRESULT get_ProviderInfo(Windows.ApplicationModel.Background.AppBroadcastTriggerProviderInfo* return_value);
}
@uuid("74d4f496-8d37-44ec-9481-2a0b9854eb48")
@WinrtFactory("Windows.ApplicationModel.Background.AppBroadcastTrigger")
interface IAppBroadcastTrigger : IAppBroadcastTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("280b9f44-22f4-4618-a02e-e7e411eb7238")
@WinrtFactory("Windows.ApplicationModel.Background.AppBroadcastTrigger")
interface IAppBroadcastTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAppBroadcastTrigger(HSTRING providerKey, Windows.ApplicationModel.Background.AppBroadcastTrigger* return_broadcastTrigger);
}

@uuid("f219352d-9de8-4420-9ce2-5eff8f17376b")
@WinrtFactory("Windows.ApplicationModel.Background.AppBroadcastTriggerProviderInfo")
interface IAppBroadcastTriggerProviderInfo : IInspectable
{
extern(Windows):
	HRESULT set_DisplayNameResource(HSTRING value);
	HRESULT get_DisplayNameResource(HSTRING* return_value);
	HRESULT set_LogoResource(HSTRING value);
	HRESULT get_LogoResource(HSTRING* return_value);
	HRESULT set_VideoKeyFrameInterval(Windows.Foundation.TimeSpan value);
	HRESULT get_VideoKeyFrameInterval(Windows.Foundation.TimeSpan* return_value);
	HRESULT set_MaxVideoBitrate(UINT32 value);
	HRESULT get_MaxVideoBitrate(UINT32* return_value);
	HRESULT set_MaxVideoWidth(UINT32 value);
	HRESULT get_MaxVideoWidth(UINT32* return_value);
	HRESULT set_MaxVideoHeight(UINT32 value);
	HRESULT get_MaxVideoHeight(UINT32* return_value);
}

@uuid("0b468630-9574-492c-9e93-1a3ae6335fe9")
@WinrtFactory("Windows.ApplicationModel.Background.ApplicationTrigger")
interface IApplicationTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.ApplicationTriggerResult)* return_result);
	HRESULT abi_RequestAsyncWithArguments(Windows.Foundation.Collections.ValueSet arguments, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.ApplicationTriggerResult)* return_result);
}
@uuid("0b468630-9574-492c-9e93-1a3ae6335fe9")
@WinrtFactory("Windows.ApplicationModel.Background.ApplicationTrigger")
interface IApplicationTrigger : IApplicationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("97dc6ab2-2219-4a9e-9c5e-41d047f76e82")
@WinrtFactory("Windows.ApplicationModel.Background.ApplicationTriggerDetails")
interface IApplicationTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_Arguments(Windows.Foundation.Collections.ValueSet* return_value);
}

@uuid("64d4040c-c201-42ad-aa2a-e21ba3425b6d")
@WinrtFactory("Windows.ApplicationModel.Background.AppointmentStoreNotificationTrigger")
interface IAppointmentStoreNotificationTrigger_Base : IInspectable
{
}
@uuid("64d4040c-c201-42ad-aa2a-e21ba3425b6d")
@WinrtFactory("Windows.ApplicationModel.Background.AppointmentStoreNotificationTrigger")
interface IAppointmentStoreNotificationTrigger : IAppointmentStoreNotificationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("ae48a1ee-8951-400a-8302-9c9c9a2a3a3b")
interface IBackgroundCondition : IInspectable
{
}

@uuid("e826ea58-66a9-4d41-83d4-b4c18c87b846")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundExecutionManager")
interface IBackgroundExecutionManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAccessAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.BackgroundAccessStatus)* return_operation);
	HRESULT abi_RequestAccessForApplicationAsync(HSTRING applicationId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.BackgroundAccessStatus)* return_operation);
	HRESULT abi_RemoveAccess();
	HRESULT abi_RemoveAccessForApplication(HSTRING applicationId);
	HRESULT abi_GetAccessStatus(Windows.ApplicationModel.Background.BackgroundAccessStatus* return_status);
	HRESULT abi_GetAccessStatusForApplication(HSTRING applicationId, Windows.ApplicationModel.Background.BackgroundAccessStatus* return_status);
}

@uuid("7d13d534-fd12-43ce-8c22-ea1ff13c06df")
interface IBackgroundTask : IInspectable
{
extern(Windows):
	HRESULT abi_Run(Windows.ApplicationModel.Background.IBackgroundTaskInstance taskInstance);
}

@uuid("0351550e-3e64-4572-a93a-84075a37c917")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskBuilder")
interface IBackgroundTaskBuilder : IInspectable
{
extern(Windows):
	HRESULT set_TaskEntryPoint(HSTRING value);
	HRESULT get_TaskEntryPoint(HSTRING* return_value);
	HRESULT abi_SetTrigger(Windows.ApplicationModel.Background.IBackgroundTrigger trigger);
	HRESULT abi_AddCondition(Windows.ApplicationModel.Background.IBackgroundCondition condition);
	HRESULT set_Name(HSTRING value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_Register(Windows.ApplicationModel.Background.BackgroundTaskRegistration* return_task);
}

@uuid("6ae7cfb1-104f-406d-8db6-844a570f42bb")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskBuilder")
interface IBackgroundTaskBuilder2_Base : IInspectable
{
extern(Windows):
	HRESULT set_CancelOnConditionLoss(bool value);
	HRESULT get_CancelOnConditionLoss(bool* return_value);
}
@uuid("6ae7cfb1-104f-406d-8db6-844a570f42bb")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskBuilder")
interface IBackgroundTaskBuilder2 : IBackgroundTaskBuilder2_Base, Windows.ApplicationModel.Background.IBackgroundTaskBuilder {}

@uuid("28c74f4a-8ba9-4c09-a24f-19683e2c924c")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskBuilder")
interface IBackgroundTaskBuilder3_Base : IInspectable
{
extern(Windows):
	HRESULT set_IsNetworkRequested(bool value);
	HRESULT get_IsNetworkRequested(bool* return_value);
}
@uuid("28c74f4a-8ba9-4c09-a24f-19683e2c924c")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskBuilder")
interface IBackgroundTaskBuilder3 : IBackgroundTaskBuilder3_Base, Windows.ApplicationModel.Background.IBackgroundTaskBuilder {}

@uuid("4755e522-cba2-4e35-bd16-a6da7f1c19aa")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskBuilder")
interface IBackgroundTaskBuilder4_Base : IInspectable
{
extern(Windows):
	HRESULT get_TaskGroup(Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup* return_value);
	HRESULT set_TaskGroup(Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup value);
}
@uuid("4755e522-cba2-4e35-bd16-a6da7f1c19aa")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskBuilder")
interface IBackgroundTaskBuilder4 : IBackgroundTaskBuilder4_Base, Windows.ApplicationModel.Background.IBackgroundTaskBuilder {}

@uuid("565d25cf-f209-48f4-9967-2b184f7bfbf0")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskCompletedEventArgs")
interface IBackgroundTaskCompletedEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InstanceId(GUID* return_value);
	HRESULT abi_CheckResult();
}

@uuid("93cc156d-af27-4dd3-846e-24ee40cadd25")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskDeferral")
interface IBackgroundTaskDeferral : IInspectable
{
extern(Windows):
	HRESULT abi_Complete();
}

@uuid("865bda7a-21d8-4573-8f32-928a1b0641f6")
interface IBackgroundTaskInstance : IInspectable
{
extern(Windows):
	HRESULT get_InstanceId(GUID* return_value);
	HRESULT get_Task(Windows.ApplicationModel.Background.BackgroundTaskRegistration* return_task);
	HRESULT get_Progress(UINT32* return_value);
	HRESULT set_Progress(UINT32 value);
	HRESULT get_TriggerDetails(IInspectable* return_triggerDetails);
	HRESULT add_Canceled(Windows.ApplicationModel.Background.BackgroundTaskCanceledEventHandler cancelHandler, EventRegistrationToken* return_cookie);
	HRESULT remove_Canceled(EventRegistrationToken cookie);
	HRESULT get_SuspendedCount(UINT32* return_value);
	HRESULT abi_GetDeferral(Windows.ApplicationModel.Background.BackgroundTaskDeferral* return_deferral);
}

@uuid("4f7d0176-0c76-4fb4-896d-5de1864122f6")
interface IBackgroundTaskInstance2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_GetThrottleCount(Windows.ApplicationModel.Background.BackgroundTaskThrottleCounter counter, UINT32* return_value);
}
@uuid("4f7d0176-0c76-4fb4-896d-5de1864122f6")
interface IBackgroundTaskInstance2 : IBackgroundTaskInstance2_Base, Windows.ApplicationModel.Background.IBackgroundTaskInstance {}

@uuid("7f29f23c-aa04-4b08-97b0-06d874cdabf5")
interface IBackgroundTaskInstance4_Base : IInspectable
{
extern(Windows):
	HRESULT get_User(Windows.System.User* return_value);
}
@uuid("7f29f23c-aa04-4b08-97b0-06d874cdabf5")
interface IBackgroundTaskInstance4 : IBackgroundTaskInstance4_Base, Windows.ApplicationModel.Background.IBackgroundTaskInstance {}

@uuid("fb1468ac-8332-4d0a-9532-03eae684da31")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskProgressEventArgs")
interface IBackgroundTaskProgressEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_InstanceId(GUID* return_value);
	HRESULT get_Progress(UINT32* return_value);
}

@uuid("10654cc2-a26e-43bf-8c12-1fb40dbfbfa0")
interface IBackgroundTaskRegistration : IInspectable
{
extern(Windows):
	HRESULT get_TaskId(GUID* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT add_Progress(Windows.ApplicationModel.Background.BackgroundTaskProgressEventHandler handler, EventRegistrationToken* return_cookie);
	HRESULT remove_Progress(EventRegistrationToken cookie);
	HRESULT add_Completed(Windows.ApplicationModel.Background.BackgroundTaskCompletedEventHandler handler, EventRegistrationToken* return_cookie);
	HRESULT remove_Completed(EventRegistrationToken cookie);
	HRESULT abi_Unregister(bool cancelTask);
}

@uuid("6138c703-bb86-4112-afc3-7f939b166e3b")
interface IBackgroundTaskRegistration2_Base : IInspectable
{
extern(Windows):
	HRESULT get_Trigger(Windows.ApplicationModel.Background.IBackgroundTrigger* return_value);
}
@uuid("6138c703-bb86-4112-afc3-7f939b166e3b")
interface IBackgroundTaskRegistration2 : IBackgroundTaskRegistration2_Base, Windows.ApplicationModel.Background.IBackgroundTaskRegistration {}

@uuid("fe338195-9423-4d8b-830d-b1dd2c7badd5")
interface IBackgroundTaskRegistration3_Base : IInspectable
{
extern(Windows):
	HRESULT get_TaskGroup(Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup* return_value);
}
@uuid("fe338195-9423-4d8b-830d-b1dd2c7badd5")
interface IBackgroundTaskRegistration3 : IBackgroundTaskRegistration3_Base, Windows.ApplicationModel.Background.IBackgroundTaskRegistration {}

@uuid("2ab1919a-871b-4167-8a76-055cd67b5b23")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup")
interface IBackgroundTaskRegistrationGroup : IInspectable
{
extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Name(HSTRING* return_value);
	HRESULT add_BackgroundActivated(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup, Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_BackgroundActivated(EventRegistrationToken token);
	HRESULT get_AllTasks(Windows.Foundation.Collections.IMapView!(GUID, Windows.ApplicationModel.Background.BackgroundTaskRegistration)* return_value);
}

@uuid("83d92b69-44cf-4631-9740-03c7d8741bc5")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup")
interface IBackgroundTaskRegistrationGroupFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING id, Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup* return_group);
	HRESULT abi_CreateWithName(HSTRING id, HSTRING name, Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup* return_group);
}

@uuid("4c542f69-b000-42ba-a093-6a563c65e3f8")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskRegistration")
interface IBackgroundTaskRegistrationStatics : IInspectable
{
extern(Windows):
	HRESULT get_AllTasks(Windows.Foundation.Collections.IMapView!(GUID, Windows.ApplicationModel.Background.IBackgroundTaskRegistration)* return_tasks);
}

@uuid("174b671e-b20d-4fa9-ad9a-e93ad6c71e01")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundTaskRegistration")
interface IBackgroundTaskRegistrationStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_AllTaskGroups(Windows.Foundation.Collections.IMapView!(HSTRING, Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup)* return_value);
	HRESULT abi_GetTaskGroup(HSTRING groupId, Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup* return_value);
}

@uuid("84b3a058-6027-4b87-9790-bdf3f757dbd7")
interface IBackgroundTrigger : IInspectable
{
}

@uuid("c740a662-c310-4b82-b3e3-3bcfb9e4c77d")
@WinrtFactory("Windows.ApplicationModel.Background.BackgroundWorkCost")
interface IBackgroundWorkCostStatics : IInspectable
{
extern(Windows):
	HRESULT get_CurrentBackgroundWorkCost(Windows.ApplicationModel.Background.BackgroundWorkCostValue* return_value);
}

@uuid("ab3e2612-25d3-48ae-8724-d81877ae6129")
@WinrtFactory("Windows.ApplicationModel.Background.BluetoothLEAdvertisementPublisherTrigger")
interface IBluetoothLEAdvertisementPublisherTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_Advertisement(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement* return_value);
}
@uuid("ab3e2612-25d3-48ae-8724-d81877ae6129")
@WinrtFactory("Windows.ApplicationModel.Background.BluetoothLEAdvertisementPublisherTrigger")
interface IBluetoothLEAdvertisementPublisherTrigger : IBluetoothLEAdvertisementPublisherTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("1aab1819-bce1-48eb-a827-59fb7cee52a6")
@WinrtFactory("Windows.ApplicationModel.Background.BluetoothLEAdvertisementWatcherTrigger")
interface IBluetoothLEAdvertisementWatcherTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_MinSamplingInterval(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_MaxSamplingInterval(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_MinOutOfRangeTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_MaxOutOfRangeTimeout(Windows.Foundation.TimeSpan* return_value);
	HRESULT get_SignalStrengthFilter(Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter* return_value);
	HRESULT set_SignalStrengthFilter(Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter value);
	HRESULT get_AdvertisementFilter(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter* return_value);
	HRESULT set_AdvertisementFilter(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter value);
}
@uuid("1aab1819-bce1-48eb-a827-59fb7cee52a6")
@WinrtFactory("Windows.ApplicationModel.Background.BluetoothLEAdvertisementWatcherTrigger")
interface IBluetoothLEAdvertisementWatcherTrigger : IBluetoothLEAdvertisementWatcherTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("e21caeeb-32f2-4d31-b553-b9e01bde37e0")
@WinrtFactory("Windows.ApplicationModel.Background.CachedFileUpdaterTrigger")
interface ICachedFileUpdaterTrigger_Base : IInspectable
{
}
@uuid("e21caeeb-32f2-4d31-b553-b9e01bde37e0")
@WinrtFactory("Windows.ApplicationModel.Background.CachedFileUpdaterTrigger")
interface ICachedFileUpdaterTrigger : ICachedFileUpdaterTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("71838c13-1314-47b4-9597-dc7e248c17cc")
@WinrtFactory("Windows.ApplicationModel.Background.CachedFileUpdaterTriggerDetails")
interface ICachedFileUpdaterTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_UpdateTarget(Windows.Storage.Provider.CachedFileTarget* return_value);
	HRESULT get_UpdateRequest(Windows.Storage.Provider.FileUpdateRequest* return_value);
	HRESULT get_CanRequestUserInput(bool* return_value);
}

@uuid("513b43bf-1d40-5c5d-78f5-c923fee3739e")
@WinrtFactory("Windows.ApplicationModel.Background.ChatMessageNotificationTrigger")
interface IChatMessageNotificationTrigger_Base : IInspectable
{
}
@uuid("513b43bf-1d40-5c5d-78f5-c923fee3739e")
@WinrtFactory("Windows.ApplicationModel.Background.ChatMessageNotificationTrigger")
interface IChatMessageNotificationTrigger : IChatMessageNotificationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("3ea3760e-baf5-4077-88e9-060cf6f0c6d5")
@WinrtFactory("Windows.ApplicationModel.Background.ChatMessageReceivedNotificationTrigger")
interface IChatMessageReceivedNotificationTrigger_Base : IInspectable
{
}
@uuid("3ea3760e-baf5-4077-88e9-060cf6f0c6d5")
@WinrtFactory("Windows.ApplicationModel.Background.ChatMessageReceivedNotificationTrigger")
interface IChatMessageReceivedNotificationTrigger : IChatMessageReceivedNotificationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("c833419b-4705-4571-9a16-06b997bf9c96")
@WinrtFactory("Windows.ApplicationModel.Background.ContactStoreNotificationTrigger")
interface IContactStoreNotificationTrigger_Base : IInspectable
{
}
@uuid("c833419b-4705-4571-9a16-06b997bf9c96")
@WinrtFactory("Windows.ApplicationModel.Background.ContactStoreNotificationTrigger")
interface IContactStoreNotificationTrigger : IContactStoreNotificationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("710627ee-04fa-440b-80c0-173202199e5d")
@WinrtFactory("Windows.ApplicationModel.Background.ContentPrefetchTrigger")
interface IContentPrefetchTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_WaitInterval(Windows.Foundation.TimeSpan* return_waitInterval);
}
@uuid("710627ee-04fa-440b-80c0-173202199e5d")
@WinrtFactory("Windows.ApplicationModel.Background.ContentPrefetchTrigger")
interface IContentPrefetchTrigger : IContentPrefetchTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("c2643eda-8a03-409e-b8c4-88814c28ccb6")
@WinrtFactory("Windows.ApplicationModel.Background.ContentPrefetchTrigger")
interface IContentPrefetchTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Foundation.TimeSpan waitInterval, Windows.ApplicationModel.Background.ContentPrefetchTrigger* return_trigger);
}

@uuid("90875e64-3cdd-4efb-ab1c-5b3b6a60ce34")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceConnectionChangeTrigger")
interface IDeviceConnectionChangeTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_DeviceId(HSTRING* return_value);
	HRESULT get_CanMaintainConnection(bool* return_value);
	HRESULT get_MaintainConnection(bool* return_value);
	HRESULT set_MaintainConnection(bool value);
}
@uuid("90875e64-3cdd-4efb-ab1c-5b3b6a60ce34")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceConnectionChangeTrigger")
interface IDeviceConnectionChangeTrigger : IDeviceConnectionChangeTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("c3ea246a-4efd-4498-aa60-a4e4e3b17ab9")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceConnectionChangeTrigger")
interface IDeviceConnectionChangeTriggerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FromIdAsync(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceConnectionChangeTrigger)* return_deviceChangeTrigger);
}

@uuid("81278ab5-41ab-16da-86c2-7f7bf0912f5b")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceManufacturerNotificationTrigger")
interface IDeviceManufacturerNotificationTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_TriggerQualifier(HSTRING* return_value);
	HRESULT get_OneShot(bool* return_oneShot);
}
@uuid("81278ab5-41ab-16da-86c2-7f7bf0912f5b")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceManufacturerNotificationTrigger")
interface IDeviceManufacturerNotificationTrigger : IDeviceManufacturerNotificationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("7955de75-25bb-4153-a1a2-3029fcabb652")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceManufacturerNotificationTrigger")
interface IDeviceManufacturerNotificationTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING triggerQualifier, bool oneShot, Windows.ApplicationModel.Background.DeviceManufacturerNotificationTrigger* return_trigger);
}

@uuid("1ab217ad-6e34-49d3-9e6f-17f1b6dfa881")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceServicingTrigger")
interface IDeviceServicingTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAsyncSimple(HSTRING deviceId, Windows.Foundation.TimeSpan expectedDuration, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult)* return_result);
	HRESULT abi_RequestAsyncWithArguments(HSTRING deviceId, Windows.Foundation.TimeSpan expectedDuration, HSTRING arguments, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult)* return_result);
}
@uuid("1ab217ad-6e34-49d3-9e6f-17f1b6dfa881")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceServicingTrigger")
interface IDeviceServicingTrigger : IDeviceServicingTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("0da68011-334f-4d57-b6ec-6dca64b412e4")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceUseTrigger")
interface IDeviceUseTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAsyncSimple(HSTRING deviceId, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult)* return_result);
	HRESULT abi_RequestAsyncWithArguments(HSTRING deviceId, HSTRING arguments, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult)* return_result);
}
@uuid("0da68011-334f-4d57-b6ec-6dca64b412e4")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceUseTrigger")
interface IDeviceUseTrigger : IDeviceUseTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("a4617fdd-8573-4260-befc-5bec89cb693d")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceWatcherTrigger")
interface IDeviceWatcherTrigger_Base : IInspectable
{
}
@uuid("a4617fdd-8573-4260-befc-5bec89cb693d")
@WinrtFactory("Windows.ApplicationModel.Background.DeviceWatcherTrigger")
interface IDeviceWatcherTrigger : IDeviceWatcherTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("986d06da-47eb-4268-a4f2-f3f77188388a")
@WinrtFactory("Windows.ApplicationModel.Background.EmailStoreNotificationTrigger")
interface IEmailStoreNotificationTrigger_Base : IInspectable
{
}
@uuid("986d06da-47eb-4268-a4f2-f3f77188388a")
@WinrtFactory("Windows.ApplicationModel.Background.EmailStoreNotificationTrigger")
interface IEmailStoreNotificationTrigger : IEmailStoreNotificationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("e25f8fc8-0696-474f-a732-f292b0cebc5d")
@WinrtFactory("Windows.ApplicationModel.Background.GattCharacteristicNotificationTrigger")
interface IGattCharacteristicNotificationTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_Characteristic(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic* return_value);
}
@uuid("e25f8fc8-0696-474f-a732-f292b0cebc5d")
@WinrtFactory("Windows.ApplicationModel.Background.GattCharacteristicNotificationTrigger")
interface IGattCharacteristicNotificationTrigger : IGattCharacteristicNotificationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("9322a2c4-ae0e-42f2-b28c-f51372e69245")
@WinrtFactory("Windows.ApplicationModel.Background.GattCharacteristicNotificationTrigger")
interface IGattCharacteristicNotificationTrigger2 : IInspectable
{
extern(Windows):
	HRESULT get_EventTriggeringMode(Windows.Devices.Bluetooth.Background.BluetoothEventTriggeringMode* return_value);
}

@uuid("57ba1995-b143-4575-9f6b-fd59d93ace1a")
@WinrtFactory("Windows.ApplicationModel.Background.GattCharacteristicNotificationTrigger")
interface IGattCharacteristicNotificationTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic characteristic, Windows.ApplicationModel.Background.GattCharacteristicNotificationTrigger* return_gattCharacteristicNotificationTrigger);
}

@uuid("5998e91f-8a53-4e9f-a32c-23cd33664cee")
@WinrtFactory("Windows.ApplicationModel.Background.GattCharacteristicNotificationTrigger")
interface IGattCharacteristicNotificationTriggerFactory2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWithEventTriggeringMode(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic characteristic, Windows.Devices.Bluetooth.Background.BluetoothEventTriggeringMode eventTriggeringMode, Windows.ApplicationModel.Background.GattCharacteristicNotificationTrigger* return_result);
}

@uuid("ddc6a3e9-1557-4bd8-8542-468aa0c696f6")
@WinrtFactory("Windows.ApplicationModel.Background.GattServiceProviderTrigger")
interface IGattServiceProviderTrigger : IInspectable
{
extern(Windows):
	HRESULT get_TriggerId(HSTRING* return_value);
	HRESULT get_Service(Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService* return_value);
	HRESULT set_AdvertisingParameters(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters value);
	HRESULT get_AdvertisingParameters(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters* return_value);
}

@uuid("3c4691b1-b198-4e84-bad4-cf4ad299ed3a")
@WinrtFactory("Windows.ApplicationModel.Background.GattServiceProviderTriggerResult")
interface IGattServiceProviderTriggerResult : IInspectable
{
extern(Windows):
	HRESULT get_Trigger(Windows.ApplicationModel.Background.GattServiceProviderTrigger* return_value);
	HRESULT get_Error(Windows.Devices.Bluetooth.BluetoothError* return_value);
}

@uuid("b413a36a-e294-4591-a5a6-64891a828153")
@WinrtFactory("Windows.ApplicationModel.Background.GattServiceProviderTrigger")
interface IGattServiceProviderTriggerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateAsync(HSTRING triggerId, GUID serviceUuid, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.GattServiceProviderTriggerResult)* return_operation);
}

@uuid("47666a1c-6877-481e-8026-ff7e14a811a0")
@WinrtFactory("Windows.ApplicationModel.Background.LocationTrigger")
interface ILocationTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_TriggerType(Windows.ApplicationModel.Background.LocationTriggerType* return_triggerType);
}
@uuid("47666a1c-6877-481e-8026-ff7e14a811a0")
@WinrtFactory("Windows.ApplicationModel.Background.LocationTrigger")
interface ILocationTrigger : ILocationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("1106bb07-ff69-4e09-aa8b-1384ea475e98")
@WinrtFactory("Windows.ApplicationModel.Background.LocationTrigger")
interface ILocationTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.ApplicationModel.Background.LocationTriggerType triggerType, Windows.ApplicationModel.Background.LocationTrigger* return_locationTrigger);
}

@uuid("68184c83-fc22-4ce5-841a-7239a9810047")
@WinrtFactory("Windows.ApplicationModel.Background.MaintenanceTrigger")
interface IMaintenanceTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_FreshnessTime(UINT32* return_freshnessTime);
	HRESULT get_OneShot(bool* return_oneShot);
}
@uuid("68184c83-fc22-4ce5-841a-7239a9810047")
@WinrtFactory("Windows.ApplicationModel.Background.MaintenanceTrigger")
interface IMaintenanceTrigger : IMaintenanceTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("4b3ddb2e-97dd-4629-88b0-b06cf9482ae5")
@WinrtFactory("Windows.ApplicationModel.Background.MaintenanceTrigger")
interface IMaintenanceTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 freshnessTime, bool oneShot, Windows.ApplicationModel.Background.MaintenanceTrigger* return_trigger);
}

@uuid("9a95be65-8a52-4b30-9011-cf38040ea8b0")
@WinrtFactory("Windows.ApplicationModel.Background.MediaProcessingTrigger")
interface IMediaProcessingTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAsync(Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.MediaProcessingTriggerResult)* return_result);
	HRESULT abi_RequestAsyncWithArguments(Windows.Foundation.Collections.ValueSet arguments, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.MediaProcessingTriggerResult)* return_result);
}
@uuid("9a95be65-8a52-4b30-9011-cf38040ea8b0")
@WinrtFactory("Windows.ApplicationModel.Background.MediaProcessingTrigger")
interface IMediaProcessingTrigger : IMediaProcessingTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("e756c791-3001-4de5-83c7-de61d88831d0")
@WinrtFactory("Windows.ApplicationModel.Background.NetworkOperatorHotspotAuthenticationTrigger")
interface INetworkOperatorHotspotAuthenticationTrigger_Base : IInspectable
{
}
@uuid("e756c791-3001-4de5-83c7-de61d88831d0")
@WinrtFactory("Windows.ApplicationModel.Background.NetworkOperatorHotspotAuthenticationTrigger")
interface INetworkOperatorHotspotAuthenticationTrigger : INetworkOperatorHotspotAuthenticationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("90089cc6-63cd-480c-95d1-6e6aef801e4a")
@WinrtFactory("Windows.ApplicationModel.Background.NetworkOperatorNotificationTrigger")
interface INetworkOperatorNotificationTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_NetworkAccountId(HSTRING* return_value);
}
@uuid("90089cc6-63cd-480c-95d1-6e6aef801e4a")
@WinrtFactory("Windows.ApplicationModel.Background.NetworkOperatorNotificationTrigger")
interface INetworkOperatorNotificationTrigger : INetworkOperatorNotificationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("0a223e00-27d7-4353-adb9-9265aaea579d")
@WinrtFactory("Windows.ApplicationModel.Background.NetworkOperatorNotificationTrigger")
interface INetworkOperatorNotificationTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING networkAccountId, Windows.ApplicationModel.Background.NetworkOperatorNotificationTrigger* return_trigger);
}

@uuid("8dcfe99b-d4c5-49f1-b7d3-82e87a0e9dde")
@WinrtFactory("Windows.ApplicationModel.Background.PhoneTrigger")
interface IPhoneTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_OneShot(bool* return_value);
	HRESULT get_TriggerType(Windows.ApplicationModel.Calls.Background.PhoneTriggerType* return_result);
}
@uuid("8dcfe99b-d4c5-49f1-b7d3-82e87a0e9dde")
@WinrtFactory("Windows.ApplicationModel.Background.PhoneTrigger")
interface IPhoneTrigger : IPhoneTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("a0d93cda-5fc1-48fb-a546-32262040157b")
@WinrtFactory("Windows.ApplicationModel.Background.PhoneTrigger")
interface IPhoneTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.ApplicationModel.Calls.Background.PhoneTriggerType type, bool oneShot, Windows.ApplicationModel.Background.PhoneTrigger* return_result);
}

@uuid("6dd8ed1b-458e-4fc2-bc2e-d5664f77ed19")
@WinrtFactory("Windows.ApplicationModel.Background.PushNotificationTrigger")
interface IPushNotificationTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING applicationId, Windows.ApplicationModel.Background.PushNotificationTrigger* return_trigger);
}

@uuid("986d0d6a-b2f6-467f-a978-a44091c11a66")
@WinrtFactory("Windows.ApplicationModel.Background.RcsEndUserMessageAvailableTrigger")
interface IRcsEndUserMessageAvailableTrigger_Base : IInspectable
{
}
@uuid("986d0d6a-b2f6-467f-a978-a44091c11a66")
@WinrtFactory("Windows.ApplicationModel.Background.RcsEndUserMessageAvailableTrigger")
interface IRcsEndUserMessageAvailableTrigger : IRcsEndUserMessageAvailableTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("e8c4cae2-0b53-4464-9394-fd875654de64")
@WinrtFactory("Windows.ApplicationModel.Background.RfcommConnectionTrigger")
interface IRfcommConnectionTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_InboundConnection(Windows.Devices.Bluetooth.Background.RfcommInboundConnectionInformation* return_value);
	HRESULT get_OutboundConnection(Windows.Devices.Bluetooth.Background.RfcommOutboundConnectionInformation* return_value);
	HRESULT get_AllowMultipleConnections(bool* return_value);
	HRESULT set_AllowMultipleConnections(bool value);
	HRESULT get_ProtectionLevel(Windows.Networking.Sockets.SocketProtectionLevel* return_value);
	HRESULT set_ProtectionLevel(Windows.Networking.Sockets.SocketProtectionLevel value);
	HRESULT get_RemoteHostName(Windows.Networking.HostName* return_value);
	HRESULT set_RemoteHostName(Windows.Networking.HostName value);
}
@uuid("e8c4cae2-0b53-4464-9394-fd875654de64")
@WinrtFactory("Windows.ApplicationModel.Background.RfcommConnectionTrigger")
interface IRfcommConnectionTrigger : IRfcommConnectionTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("f237f327-5181-4f24-96a7-700a4e5fac62")
@WinrtFactory("Windows.ApplicationModel.Background.SecondaryAuthenticationFactorAuthenticationTrigger")
interface ISecondaryAuthenticationFactorAuthenticationTrigger_Base : IInspectable
{
}
@uuid("f237f327-5181-4f24-96a7-700a4e5fac62")
@WinrtFactory("Windows.ApplicationModel.Background.SecondaryAuthenticationFactorAuthenticationTrigger")
interface ISecondaryAuthenticationFactorAuthenticationTrigger : ISecondaryAuthenticationFactorAuthenticationTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("5bc0f372-d48b-4b7f-abec-15f9bacc12e2")
@WinrtFactory("Windows.ApplicationModel.Background.SensorDataThresholdTrigger")
interface ISensorDataThresholdTrigger_Base : IInspectable
{
}
@uuid("5bc0f372-d48b-4b7f-abec-15f9bacc12e2")
@WinrtFactory("Windows.ApplicationModel.Background.SensorDataThresholdTrigger")
interface ISensorDataThresholdTrigger : ISensorDataThresholdTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("921fe675-7df0-4da3-97b3-e544ee857fe6")
@WinrtFactory("Windows.ApplicationModel.Background.SensorDataThresholdTrigger")
interface ISensorDataThresholdTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Sensors.ISensorDataThreshold threshold, Windows.ApplicationModel.Background.SensorDataThresholdTrigger* return_trigger);
}

@uuid("ea3ad8c8-6ba4-4ab2-8d21-bc6b09c77564")
@WinrtFactory("Windows.ApplicationModel.Background.SmsMessageReceivedTrigger")
interface ISmsMessageReceivedTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Devices.Sms.SmsFilterRules filterRules, Windows.ApplicationModel.Background.SmsMessageReceivedTrigger* return_value);
}

@uuid("a9bbf810-9dde-4f8a-83e3-b0e0e7a50d70")
@WinrtFactory("Windows.ApplicationModel.Background.SocketActivityTrigger")
interface ISocketActivityTrigger : IInspectable
{
extern(Windows):
	HRESULT get_IsWakeFromLowPowerSupported(bool* return_value);
}

@uuid("1637e0a7-829c-45bc-929b-a1e7ea78d89b")
@WinrtFactory("Windows.ApplicationModel.Background.StorageLibraryContentChangedTrigger")
interface IStorageLibraryContentChangedTrigger_Base : IInspectable
{
}
@uuid("1637e0a7-829c-45bc-929b-a1e7ea78d89b")
@WinrtFactory("Windows.ApplicationModel.Background.StorageLibraryContentChangedTrigger")
interface IStorageLibraryContentChangedTrigger : IStorageLibraryContentChangedTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("7f9f1b39-5f90-4e12-914e-a7d8e0bbfb18")
@WinrtFactory("Windows.ApplicationModel.Background.StorageLibraryContentChangedTrigger")
interface IStorageLibraryContentChangedTriggerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.Storage.StorageLibrary storageLibrary, Windows.ApplicationModel.Background.StorageLibraryContentChangedTrigger* return_result);
	HRESULT abi_CreateFromLibraries(Windows.Foundation.Collections.IIterable!(Windows.Storage.StorageLibrary) storageLibraries, Windows.ApplicationModel.Background.StorageLibraryContentChangedTrigger* return_result);
}

@uuid("c15fb476-89c5-420b-abd3-fb3030472128")
@WinrtFactory("Windows.ApplicationModel.Background.SystemCondition")
interface ISystemCondition_Base : IInspectable
{
extern(Windows):
	HRESULT get_ConditionType(Windows.ApplicationModel.Background.SystemConditionType* return_conditionType);
}
@uuid("c15fb476-89c5-420b-abd3-fb3030472128")
@WinrtFactory("Windows.ApplicationModel.Background.SystemCondition")
interface ISystemCondition : ISystemCondition_Base, Windows.ApplicationModel.Background.IBackgroundCondition {}

@uuid("d269d1f1-05a7-49ae-87d7-16b2b8b9a553")
@WinrtFactory("Windows.ApplicationModel.Background.SystemCondition")
interface ISystemConditionFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.ApplicationModel.Background.SystemConditionType conditionType, Windows.ApplicationModel.Background.SystemCondition* return_condition);
}

@uuid("1d80c776-3748-4463-8d7e-276dc139ac1c")
@WinrtFactory("Windows.ApplicationModel.Background.SystemTrigger")
interface ISystemTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_OneShot(bool* return_oneShot);
	HRESULT get_TriggerType(Windows.ApplicationModel.Background.SystemTriggerType* return_triggerType);
}
@uuid("1d80c776-3748-4463-8d7e-276dc139ac1c")
@WinrtFactory("Windows.ApplicationModel.Background.SystemTrigger")
interface ISystemTrigger : ISystemTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("e80423d4-8791-4579-8126-87ec8aaa407a")
@WinrtFactory("Windows.ApplicationModel.Background.SystemTrigger")
interface ISystemTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.ApplicationModel.Background.SystemTriggerType triggerType, bool oneShot, Windows.ApplicationModel.Background.SystemTrigger* return_trigger);
}

@uuid("656e5556-0b2a-4377-ba70-3b45a935547f")
@WinrtFactory("Windows.ApplicationModel.Background.TimeTrigger")
interface ITimeTrigger_Base : IInspectable
{
extern(Windows):
	HRESULT get_FreshnessTime(UINT32* return_freshnessTime);
	HRESULT get_OneShot(bool* return_oneShot);
}
@uuid("656e5556-0b2a-4377-ba70-3b45a935547f")
@WinrtFactory("Windows.ApplicationModel.Background.TimeTrigger")
interface ITimeTrigger : ITimeTrigger_Base, Windows.ApplicationModel.Background.IBackgroundTrigger {}

@uuid("38c682fe-9b54-45e6-b2f3-269b87a6f734")
@WinrtFactory("Windows.ApplicationModel.Background.TimeTrigger")
interface ITimeTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(UINT32 freshnessTime, bool oneShot, Windows.ApplicationModel.Background.TimeTrigger* return_trigger);
}

@uuid("b09dfc27-6480-4349-8125-97b3efaa0a3a")
@WinrtFactory("Windows.ApplicationModel.Background.ToastNotificationActionTrigger")
interface IToastNotificationActionTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING applicationId, Windows.ApplicationModel.Background.ToastNotificationActionTrigger* return_trigger);
}

@uuid("81c6faad-8797-4785-81b4-b0cccb73d1d9")
@WinrtFactory("Windows.ApplicationModel.Background.ToastNotificationHistoryChangedTrigger")
interface IToastNotificationHistoryChangedTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(HSTRING applicationId, Windows.ApplicationModel.Background.ToastNotificationHistoryChangedTrigger* return_trigger);
}

@uuid("cad4436c-69ab-4e18-a48a-5ed2ac435957")
@WinrtFactory("Windows.ApplicationModel.Background.UserNotificationChangedTrigger")
interface IUserNotificationChangedTriggerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_Create(Windows.UI.Notifications.NotificationKinds notificationKinds, Windows.ApplicationModel.Background.UserNotificationChangedTrigger* return_trigger);
}

interface ActivitySensorTrigger : Windows.ApplicationModel.Background.IActivitySensorTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(Windows.Devices.Sensors.ActivityType) SubscribedActivities()
	{
		Windows.Foundation.Collections.IVector!(Windows.Devices.Sensors.ActivityType) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IActivitySensorTrigger)this.asInterface(uuid("d0dd4342-e37b-4823-a5fe-6b31dfefdeb0"))).get_SubscribedActivities(&_ret));
		return _ret;
	}
	final UINT32 ReportInterval()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IActivitySensorTrigger)this.asInterface(uuid("d0dd4342-e37b-4823-a5fe-6b31dfefdeb0"))).get_ReportInterval(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.ActivityType) SupportedActivities()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Devices.Sensors.ActivityType) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IActivitySensorTrigger)this.asInterface(uuid("d0dd4342-e37b-4823-a5fe-6b31dfefdeb0"))).get_SupportedActivities(&_ret));
		return _ret;
	}
	final UINT32 MinimumReportInterval()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IActivitySensorTrigger)this.asInterface(uuid("d0dd4342-e37b-4823-a5fe-6b31dfefdeb0"))).get_MinimumReportInterval(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.ActivitySensorTrigger New(UINT32 reportIntervalInMilliseconds)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IActivitySensorTriggerFactory);
		Windows.ApplicationModel.Background.ActivitySensorTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IActivitySensorTriggerFactory)factory.asInterface(uuid("a72691c3-3837-44f7-831b-0132cc872bc3"))).abi_Create(reportIntervalInMilliseconds, &_ret));
		return _ret;
	}
}

interface AlarmApplicationManager
{
	private static Windows.ApplicationModel.Background.IAlarmApplicationManagerStatics _staticInstance;
	public static Windows.ApplicationModel.Background.IAlarmApplicationManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Background.IAlarmApplicationManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.AlarmAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.AlarmAccessStatus) _ret;
		Debug.OK(staticInstance.abi_RequestAccessAsync(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.AlarmAccessStatus GetAccessStatus()
	{
		Windows.ApplicationModel.Background.AlarmAccessStatus _ret;
		Debug.OK(staticInstance.abi_GetAccessStatus(&_ret));
		return _ret;
	}
}

interface AppBroadcastTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger, Windows.ApplicationModel.Background.IAppBroadcastTrigger
{
extern(Windows):
	final void ProviderInfo(Windows.ApplicationModel.Background.AppBroadcastTriggerProviderInfo value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTrigger)this.asInterface(uuid("74d4f496-8d37-44ec-9481-2a0b9854eb48"))).set_ProviderInfo(value));
	}
	final Windows.ApplicationModel.Background.AppBroadcastTriggerProviderInfo ProviderInfo()
	{
		Windows.ApplicationModel.Background.AppBroadcastTriggerProviderInfo _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTrigger)this.asInterface(uuid("74d4f496-8d37-44ec-9481-2a0b9854eb48"))).get_ProviderInfo(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.AppBroadcastTrigger New(HSTRING providerKey)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IAppBroadcastTriggerFactory);
		Windows.ApplicationModel.Background.AppBroadcastTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerFactory)factory.asInterface(uuid("280b9f44-22f4-4618-a02e-e7e411eb7238"))).abi_CreateAppBroadcastTrigger(providerKey, &_ret));
		return _ret;
	}
}

interface AppBroadcastTriggerProviderInfo : Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo
{
extern(Windows):
	final void DisplayNameResource(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).set_DisplayNameResource(value));
	}
	final HSTRING DisplayNameResource()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).get_DisplayNameResource(&_ret));
		return _ret;
	}
	final void LogoResource(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).set_LogoResource(value));
	}
	final HSTRING LogoResource()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).get_LogoResource(&_ret));
		return _ret;
	}
	final void VideoKeyFrameInterval(Windows.Foundation.TimeSpan value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).set_VideoKeyFrameInterval(value));
	}
	final Windows.Foundation.TimeSpan VideoKeyFrameInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).get_VideoKeyFrameInterval(&_ret));
		return _ret;
	}
	final void MaxVideoBitrate(UINT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).set_MaxVideoBitrate(value));
	}
	final UINT32 MaxVideoBitrate()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).get_MaxVideoBitrate(&_ret));
		return _ret;
	}
	final void MaxVideoWidth(UINT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).set_MaxVideoWidth(value));
	}
	final UINT32 MaxVideoWidth()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).get_MaxVideoWidth(&_ret));
		return _ret;
	}
	final void MaxVideoHeight(UINT32 value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).set_MaxVideoHeight(value));
	}
	final UINT32 MaxVideoHeight()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IAppBroadcastTriggerProviderInfo)this.asInterface(uuid("f219352d-9de8-4420-9ce2-5eff8f17376b"))).get_MaxVideoHeight(&_ret));
		return _ret;
	}
}

interface ApplicationTrigger : Windows.ApplicationModel.Background.IApplicationTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.ApplicationTriggerResult) RequestAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.ApplicationTriggerResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IApplicationTrigger)this.asInterface(uuid("0b468630-9574-492c-9e93-1a3ae6335fe9"))).abi_RequestAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.ApplicationTriggerResult) RequestAsyncWithArguments(Windows.Foundation.Collections.ValueSet arguments)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.ApplicationTriggerResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IApplicationTrigger)this.asInterface(uuid("0b468630-9574-492c-9e93-1a3ae6335fe9"))).abi_RequestAsyncWithArguments(arguments, &_ret));
		return _ret;
	}
	alias RequestAsync = RequestAsyncWithArguments;
	static ApplicationTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ApplicationTrigger).abi_ActivateInstance(&ret));
		return cast(ApplicationTrigger) ret;
	}
}

interface ApplicationTriggerDetails : Windows.ApplicationModel.Background.IApplicationTriggerDetails
{
extern(Windows):
	final Windows.Foundation.Collections.ValueSet Arguments()
	{
		Windows.Foundation.Collections.ValueSet _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IApplicationTriggerDetails)this.asInterface(uuid("97dc6ab2-2219-4a9e-9c5e-41d047f76e82"))).get_Arguments(&_ret));
		return _ret;
	}
}

interface AppointmentStoreNotificationTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger, Windows.ApplicationModel.Background.IAppointmentStoreNotificationTrigger
{
	static AppointmentStoreNotificationTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(AppointmentStoreNotificationTrigger).abi_ActivateInstance(&ret));
		return cast(AppointmentStoreNotificationTrigger) ret;
	}
}

interface BackgroundExecutionManager
{
	private static Windows.ApplicationModel.Background.IBackgroundExecutionManagerStatics _staticInstance;
	public static Windows.ApplicationModel.Background.IBackgroundExecutionManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Background.IBackgroundExecutionManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.BackgroundAccessStatus) RequestAccessAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.BackgroundAccessStatus) _ret;
		Debug.OK(staticInstance.abi_RequestAccessAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.BackgroundAccessStatus) RequestAccessForApplicationAsync(HSTRING applicationId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.BackgroundAccessStatus) _ret;
		Debug.OK(staticInstance.abi_RequestAccessForApplicationAsync(applicationId, &_ret));
		return _ret;
	}
	alias RequestAccessAsync = RequestAccessForApplicationAsync;
	static void RemoveAccess()
	{
		Debug.OK(staticInstance.abi_RemoveAccess());
	}
	static void RemoveAccessForApplication(HSTRING applicationId)
	{
		Debug.OK(staticInstance.abi_RemoveAccessForApplication(applicationId));
	}
	alias RemoveAccess = RemoveAccessForApplication;
	static Windows.ApplicationModel.Background.BackgroundAccessStatus GetAccessStatus()
	{
		Windows.ApplicationModel.Background.BackgroundAccessStatus _ret;
		Debug.OK(staticInstance.abi_GetAccessStatus(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.BackgroundAccessStatus GetAccessStatusForApplication(HSTRING applicationId)
	{
		Windows.ApplicationModel.Background.BackgroundAccessStatus _ret;
		Debug.OK(staticInstance.abi_GetAccessStatusForApplication(applicationId, &_ret));
		return _ret;
	}
	alias GetAccessStatus = GetAccessStatusForApplication;
}

interface BackgroundTaskBuilder : Windows.ApplicationModel.Background.IBackgroundTaskBuilder, Windows.ApplicationModel.Background.IBackgroundTaskBuilder2, Windows.ApplicationModel.Background.IBackgroundTaskBuilder3, Windows.ApplicationModel.Background.IBackgroundTaskBuilder4
{
extern(Windows):
	final void TaskEntryPoint(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder)this.asInterface(uuid("0351550e-3e64-4572-a93a-84075a37c917"))).set_TaskEntryPoint(value));
	}
	final HSTRING TaskEntryPoint()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder)this.asInterface(uuid("0351550e-3e64-4572-a93a-84075a37c917"))).get_TaskEntryPoint(&_ret));
		return _ret;
	}
	final void SetTrigger(Windows.ApplicationModel.Background.IBackgroundTrigger trigger)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder)this.asInterface(uuid("0351550e-3e64-4572-a93a-84075a37c917"))).abi_SetTrigger(trigger));
	}
	final void AddCondition(Windows.ApplicationModel.Background.IBackgroundCondition condition)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder)this.asInterface(uuid("0351550e-3e64-4572-a93a-84075a37c917"))).abi_AddCondition(condition));
	}
	final void Name(HSTRING value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder)this.asInterface(uuid("0351550e-3e64-4572-a93a-84075a37c917"))).set_Name(value));
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder)this.asInterface(uuid("0351550e-3e64-4572-a93a-84075a37c917"))).get_Name(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Background.BackgroundTaskRegistration Register()
	{
		Windows.ApplicationModel.Background.BackgroundTaskRegistration _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder)this.asInterface(uuid("0351550e-3e64-4572-a93a-84075a37c917"))).abi_Register(&_ret));
		return _ret;
	}
	final void CancelOnConditionLoss(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder2)this.asInterface(uuid("6ae7cfb1-104f-406d-8db6-844a570f42bb"))).set_CancelOnConditionLoss(value));
	}
	final bool CancelOnConditionLoss()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder2)this.asInterface(uuid("6ae7cfb1-104f-406d-8db6-844a570f42bb"))).get_CancelOnConditionLoss(&_ret));
		return _ret;
	}
	final void IsNetworkRequested(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder3)this.asInterface(uuid("28c74f4a-8ba9-4c09-a24f-19683e2c924c"))).set_IsNetworkRequested(value));
	}
	final bool IsNetworkRequested()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder3)this.asInterface(uuid("28c74f4a-8ba9-4c09-a24f-19683e2c924c"))).get_IsNetworkRequested(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup TaskGroup()
	{
		Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder4)this.asInterface(uuid("4755e522-cba2-4e35-bd16-a6da7f1c19aa"))).get_TaskGroup(&_ret));
		return _ret;
	}
	final void TaskGroup(Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskBuilder4)this.asInterface(uuid("4755e522-cba2-4e35-bd16-a6da7f1c19aa"))).set_TaskGroup(value));
	}
	static BackgroundTaskBuilder New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BackgroundTaskBuilder).abi_ActivateInstance(&ret));
		return cast(BackgroundTaskBuilder) ret;
	}
}

interface BackgroundTaskCompletedEventArgs : Windows.ApplicationModel.Background.IBackgroundTaskCompletedEventArgs
{
extern(Windows):
	final GUID InstanceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskCompletedEventArgs)this.asInterface(uuid("565d25cf-f209-48f4-9967-2b184f7bfbf0"))).get_InstanceId(&_ret));
		return _ret;
	}
	final void CheckResult()
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskCompletedEventArgs)this.asInterface(uuid("565d25cf-f209-48f4-9967-2b184f7bfbf0"))).abi_CheckResult());
	}
}

interface BackgroundTaskDeferral : Windows.ApplicationModel.Background.IBackgroundTaskDeferral
{
extern(Windows):
	final void Complete()
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskDeferral)this.asInterface(uuid("93cc156d-af27-4dd3-846e-24ee40cadd25"))).abi_Complete());
	}
}

interface BackgroundTaskProgressEventArgs : Windows.ApplicationModel.Background.IBackgroundTaskProgressEventArgs
{
extern(Windows):
	final GUID InstanceId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskProgressEventArgs)this.asInterface(uuid("fb1468ac-8332-4d0a-9532-03eae684da31"))).get_InstanceId(&_ret));
		return _ret;
	}
	final UINT32 Progress()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskProgressEventArgs)this.asInterface(uuid("fb1468ac-8332-4d0a-9532-03eae684da31"))).get_Progress(&_ret));
		return _ret;
	}
}

interface BackgroundTaskRegistration : Windows.ApplicationModel.Background.IBackgroundTaskRegistration, Windows.ApplicationModel.Background.IBackgroundTaskRegistration2, Windows.ApplicationModel.Background.IBackgroundTaskRegistration3
{
extern(Windows):
	final GUID TaskId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistration)this.asInterface(uuid("10654cc2-a26e-43bf-8c12-1fb40dbfbfa0"))).get_TaskId(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistration)this.asInterface(uuid("10654cc2-a26e-43bf-8c12-1fb40dbfbfa0"))).get_Name(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnProgress(void delegate(Windows.ApplicationModel.Background.BackgroundTaskRegistration, Windows.ApplicationModel.Background.BackgroundTaskProgressEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistration)this.asInterface(uuid("10654cc2-a26e-43bf-8c12-1fb40dbfbfa0"))).add_Progress(event!(Windows.ApplicationModel.Background.BackgroundTaskProgressEventHandler, Windows.ApplicationModel.Background.BackgroundTaskRegistration, Windows.ApplicationModel.Background.BackgroundTaskProgressEventArgs)(fn), &tok));
		return tok;
	}
	final void removeProgress(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistration)this.asInterface(uuid("10654cc2-a26e-43bf-8c12-1fb40dbfbfa0"))).remove_Progress(cookie));
	}
	final EventRegistrationToken OnCompleted(void delegate(Windows.ApplicationModel.Background.BackgroundTaskRegistration, Windows.ApplicationModel.Background.BackgroundTaskCompletedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistration)this.asInterface(uuid("10654cc2-a26e-43bf-8c12-1fb40dbfbfa0"))).add_Completed(event!(Windows.ApplicationModel.Background.BackgroundTaskCompletedEventHandler, Windows.ApplicationModel.Background.BackgroundTaskRegistration, Windows.ApplicationModel.Background.BackgroundTaskCompletedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeCompleted(EventRegistrationToken cookie)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistration)this.asInterface(uuid("10654cc2-a26e-43bf-8c12-1fb40dbfbfa0"))).remove_Completed(cookie));
	}
	final void Unregister(bool cancelTask)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistration)this.asInterface(uuid("10654cc2-a26e-43bf-8c12-1fb40dbfbfa0"))).abi_Unregister(cancelTask));
	}
	final Windows.ApplicationModel.Background.IBackgroundTrigger Trigger()
	{
		Windows.ApplicationModel.Background.IBackgroundTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistration2)this.asInterface(uuid("6138c703-bb86-4112-afc3-7f939b166e3b"))).get_Trigger(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup TaskGroup()
	{
		Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistration3)this.asInterface(uuid("fe338195-9423-4d8b-830d-b1dd2c7badd5"))).get_TaskGroup(&_ret));
		return _ret;
	}

	private static Windows.ApplicationModel.Background.IBackgroundTaskRegistrationStatics _staticInstance;
	public static Windows.ApplicationModel.Background.IBackgroundTaskRegistrationStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Background.IBackgroundTaskRegistrationStatics);
		return _staticInstance;
	}
	static Windows.Foundation.Collections.IMapView!(GUID, Windows.ApplicationModel.Background.IBackgroundTaskRegistration) AllTasks()
	{
		Windows.Foundation.Collections.IMapView!(GUID, Windows.ApplicationModel.Background.IBackgroundTaskRegistration) _ret;
		Debug.OK(staticInstance.get_AllTasks(&_ret));
		return _ret;
	}
}

interface BackgroundTaskRegistrationGroup : Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroup
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroup)this.asInterface(uuid("2ab1919a-871b-4167-8a76-055cd67b5b23"))).get_Id(&_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroup)this.asInterface(uuid("2ab1919a-871b-4167-8a76-055cd67b5b23"))).get_Name(&_ret));
		return _ret;
	}
	final EventRegistrationToken OnBackgroundActivated(void delegate(Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup, Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroup)this.asInterface(uuid("2ab1919a-871b-4167-8a76-055cd67b5b23"))).add_BackgroundActivated(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup, Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs), Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup, Windows.ApplicationModel.Activation.BackgroundActivatedEventArgs)(fn), &tok));
		return tok;
	}
	final void removeBackgroundActivated(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroup)this.asInterface(uuid("2ab1919a-871b-4167-8a76-055cd67b5b23"))).remove_BackgroundActivated(token));
	}
	final Windows.Foundation.Collections.IMapView!(GUID, Windows.ApplicationModel.Background.BackgroundTaskRegistration) AllTasks()
	{
		Windows.Foundation.Collections.IMapView!(GUID, Windows.ApplicationModel.Background.BackgroundTaskRegistration) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroup)this.asInterface(uuid("2ab1919a-871b-4167-8a76-055cd67b5b23"))).get_AllTasks(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup New(HSTRING id)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroupFactory);
		Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroupFactory)factory.asInterface(uuid("83d92b69-44cf-4631-9740-03c7d8741bc5"))).abi_Create(id, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup New(HSTRING id, HSTRING name)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroupFactory);
		Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBackgroundTaskRegistrationGroupFactory)factory.asInterface(uuid("83d92b69-44cf-4631-9740-03c7d8741bc5"))).abi_CreateWithName(id, name, &_ret));
		return _ret;
	}
}

interface BackgroundWorkCost
{
	private static Windows.ApplicationModel.Background.IBackgroundWorkCostStatics _staticInstance;
	public static Windows.ApplicationModel.Background.IBackgroundWorkCostStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Background.IBackgroundWorkCostStatics);
		return _staticInstance;
	}
	static Windows.ApplicationModel.Background.BackgroundWorkCostValue CurrentBackgroundWorkCost()
	{
		Windows.ApplicationModel.Background.BackgroundWorkCostValue _ret;
		Debug.OK(staticInstance.get_CurrentBackgroundWorkCost(&_ret));
		return _ret;
	}
}

interface BluetoothLEAdvertisementPublisherTrigger : Windows.ApplicationModel.Background.IBluetoothLEAdvertisementPublisherTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement Advertisement()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisement _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBluetoothLEAdvertisementPublisherTrigger)this.asInterface(uuid("ab3e2612-25d3-48ae-8724-d81877ae6129"))).get_Advertisement(&_ret));
		return _ret;
	}
	static BluetoothLEAdvertisementPublisherTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BluetoothLEAdvertisementPublisherTrigger).abi_ActivateInstance(&ret));
		return cast(BluetoothLEAdvertisementPublisherTrigger) ret;
	}
}

interface BluetoothLEAdvertisementWatcherTrigger : Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final Windows.Foundation.TimeSpan MinSamplingInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger)this.asInterface(uuid("1aab1819-bce1-48eb-a827-59fb7cee52a6"))).get_MinSamplingInterval(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan MaxSamplingInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger)this.asInterface(uuid("1aab1819-bce1-48eb-a827-59fb7cee52a6"))).get_MaxSamplingInterval(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan MinOutOfRangeTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger)this.asInterface(uuid("1aab1819-bce1-48eb-a827-59fb7cee52a6"))).get_MinOutOfRangeTimeout(&_ret));
		return _ret;
	}
	final Windows.Foundation.TimeSpan MaxOutOfRangeTimeout()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger)this.asInterface(uuid("1aab1819-bce1-48eb-a827-59fb7cee52a6"))).get_MaxOutOfRangeTimeout(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter SignalStrengthFilter()
	{
		Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger)this.asInterface(uuid("1aab1819-bce1-48eb-a827-59fb7cee52a6"))).get_SignalStrengthFilter(&_ret));
		return _ret;
	}
	final void SignalStrengthFilter(Windows.Devices.Bluetooth.BluetoothSignalStrengthFilter value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger)this.asInterface(uuid("1aab1819-bce1-48eb-a827-59fb7cee52a6"))).set_SignalStrengthFilter(value));
	}
	final Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter AdvertisementFilter()
	{
		Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger)this.asInterface(uuid("1aab1819-bce1-48eb-a827-59fb7cee52a6"))).get_AdvertisementFilter(&_ret));
		return _ret;
	}
	final void AdvertisementFilter(Windows.Devices.Bluetooth.Advertisement.BluetoothLEAdvertisementFilter value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IBluetoothLEAdvertisementWatcherTrigger)this.asInterface(uuid("1aab1819-bce1-48eb-a827-59fb7cee52a6"))).set_AdvertisementFilter(value));
	}
	static BluetoothLEAdvertisementWatcherTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(BluetoothLEAdvertisementWatcherTrigger).abi_ActivateInstance(&ret));
		return cast(BluetoothLEAdvertisementWatcherTrigger) ret;
	}
}

interface CachedFileUpdaterTrigger : Windows.ApplicationModel.Background.ICachedFileUpdaterTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static CachedFileUpdaterTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(CachedFileUpdaterTrigger).abi_ActivateInstance(&ret));
		return cast(CachedFileUpdaterTrigger) ret;
	}
}

interface CachedFileUpdaterTriggerDetails : Windows.ApplicationModel.Background.ICachedFileUpdaterTriggerDetails
{
extern(Windows):
	final Windows.Storage.Provider.CachedFileTarget UpdateTarget()
	{
		Windows.Storage.Provider.CachedFileTarget _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ICachedFileUpdaterTriggerDetails)this.asInterface(uuid("71838c13-1314-47b4-9597-dc7e248c17cc"))).get_UpdateTarget(&_ret));
		return _ret;
	}
	final Windows.Storage.Provider.FileUpdateRequest UpdateRequest()
	{
		Windows.Storage.Provider.FileUpdateRequest _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ICachedFileUpdaterTriggerDetails)this.asInterface(uuid("71838c13-1314-47b4-9597-dc7e248c17cc"))).get_UpdateRequest(&_ret));
		return _ret;
	}
	final bool CanRequestUserInput()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ICachedFileUpdaterTriggerDetails)this.asInterface(uuid("71838c13-1314-47b4-9597-dc7e248c17cc"))).get_CanRequestUserInput(&_ret));
		return _ret;
	}
}

interface ChatMessageNotificationTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger, Windows.ApplicationModel.Background.IChatMessageNotificationTrigger
{
	static ChatMessageNotificationTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ChatMessageNotificationTrigger).abi_ActivateInstance(&ret));
		return cast(ChatMessageNotificationTrigger) ret;
	}
}

interface ChatMessageReceivedNotificationTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger, Windows.ApplicationModel.Background.IChatMessageReceivedNotificationTrigger
{
	static ChatMessageReceivedNotificationTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ChatMessageReceivedNotificationTrigger).abi_ActivateInstance(&ret));
		return cast(ChatMessageReceivedNotificationTrigger) ret;
	}
}

interface ContactStoreNotificationTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger, Windows.ApplicationModel.Background.IContactStoreNotificationTrigger
{
	static ContactStoreNotificationTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ContactStoreNotificationTrigger).abi_ActivateInstance(&ret));
		return cast(ContactStoreNotificationTrigger) ret;
	}
}

interface ContentPrefetchTrigger : Windows.ApplicationModel.Background.IContentPrefetchTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final Windows.Foundation.TimeSpan WaitInterval()
	{
		Windows.Foundation.TimeSpan _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IContentPrefetchTrigger)this.asInterface(uuid("710627ee-04fa-440b-80c0-173202199e5d"))).get_WaitInterval(&_ret));
		return _ret;
	}
	static ContentPrefetchTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ContentPrefetchTrigger).abi_ActivateInstance(&ret));
		return cast(ContentPrefetchTrigger) ret;
	}
	static Windows.ApplicationModel.Background.ContentPrefetchTrigger New(Windows.Foundation.TimeSpan waitInterval)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IContentPrefetchTriggerFactory);
		Windows.ApplicationModel.Background.ContentPrefetchTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IContentPrefetchTriggerFactory)factory.asInterface(uuid("c2643eda-8a03-409e-b8c4-88814c28ccb6"))).abi_Create(waitInterval, &_ret));
		return _ret;
	}
}

interface DeviceConnectionChangeTrigger : Windows.ApplicationModel.Background.IDeviceConnectionChangeTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final HSTRING DeviceId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceConnectionChangeTrigger)this.asInterface(uuid("90875e64-3cdd-4efb-ab1c-5b3b6a60ce34"))).get_DeviceId(&_ret));
		return _ret;
	}
	final bool CanMaintainConnection()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceConnectionChangeTrigger)this.asInterface(uuid("90875e64-3cdd-4efb-ab1c-5b3b6a60ce34"))).get_CanMaintainConnection(&_ret));
		return _ret;
	}
	final bool MaintainConnection()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceConnectionChangeTrigger)this.asInterface(uuid("90875e64-3cdd-4efb-ab1c-5b3b6a60ce34"))).get_MaintainConnection(&_ret));
		return _ret;
	}
	final void MaintainConnection(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceConnectionChangeTrigger)this.asInterface(uuid("90875e64-3cdd-4efb-ab1c-5b3b6a60ce34"))).set_MaintainConnection(value));
	}

	private static Windows.ApplicationModel.Background.IDeviceConnectionChangeTriggerStatics _staticInstance;
	public static Windows.ApplicationModel.Background.IDeviceConnectionChangeTriggerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Background.IDeviceConnectionChangeTriggerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceConnectionChangeTrigger) FromIdAsync(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceConnectionChangeTrigger) _ret;
		Debug.OK(staticInstance.abi_FromIdAsync(deviceId, &_ret));
		return _ret;
	}
}

interface DeviceManufacturerNotificationTrigger : Windows.ApplicationModel.Background.IDeviceManufacturerNotificationTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final HSTRING TriggerQualifier()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceManufacturerNotificationTrigger)this.asInterface(uuid("81278ab5-41ab-16da-86c2-7f7bf0912f5b"))).get_TriggerQualifier(&_ret));
		return _ret;
	}
	final bool OneShot()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceManufacturerNotificationTrigger)this.asInterface(uuid("81278ab5-41ab-16da-86c2-7f7bf0912f5b"))).get_OneShot(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.DeviceManufacturerNotificationTrigger New(HSTRING triggerQualifier, bool oneShot)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IDeviceManufacturerNotificationTriggerFactory);
		Windows.ApplicationModel.Background.DeviceManufacturerNotificationTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceManufacturerNotificationTriggerFactory)factory.asInterface(uuid("7955de75-25bb-4153-a1a2-3029fcabb652"))).abi_Create(triggerQualifier, oneShot, &_ret));
		return _ret;
	}
}

interface DeviceServicingTrigger : Windows.ApplicationModel.Background.IDeviceServicingTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult) RequestAsyncSimple(HSTRING deviceId, Windows.Foundation.TimeSpan expectedDuration)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceServicingTrigger)this.asInterface(uuid("1ab217ad-6e34-49d3-9e6f-17f1b6dfa881"))).abi_RequestAsyncSimple(deviceId, expectedDuration, &_ret));
		return _ret;
	}
	alias RequestAsync = RequestAsyncSimple;
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult) RequestAsyncWithArguments(HSTRING deviceId, Windows.Foundation.TimeSpan expectedDuration, HSTRING arguments)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceServicingTrigger)this.asInterface(uuid("1ab217ad-6e34-49d3-9e6f-17f1b6dfa881"))).abi_RequestAsyncWithArguments(deviceId, expectedDuration, arguments, &_ret));
		return _ret;
	}
	alias RequestAsync = RequestAsyncWithArguments;
	static DeviceServicingTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(DeviceServicingTrigger).abi_ActivateInstance(&ret));
		return cast(DeviceServicingTrigger) ret;
	}
}

interface DeviceUseTrigger : Windows.ApplicationModel.Background.IDeviceUseTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult) RequestAsyncSimple(HSTRING deviceId)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceUseTrigger)this.asInterface(uuid("0da68011-334f-4d57-b6ec-6dca64b412e4"))).abi_RequestAsyncSimple(deviceId, &_ret));
		return _ret;
	}
	alias RequestAsync = RequestAsyncSimple;
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult) RequestAsyncWithArguments(HSTRING deviceId, HSTRING arguments)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.DeviceTriggerResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IDeviceUseTrigger)this.asInterface(uuid("0da68011-334f-4d57-b6ec-6dca64b412e4"))).abi_RequestAsyncWithArguments(deviceId, arguments, &_ret));
		return _ret;
	}
	alias RequestAsync = RequestAsyncWithArguments;
	static DeviceUseTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(DeviceUseTrigger).abi_ActivateInstance(&ret));
		return cast(DeviceUseTrigger) ret;
	}
}

interface DeviceWatcherTrigger : Windows.ApplicationModel.Background.IDeviceWatcherTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
}

interface EmailStoreNotificationTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger, Windows.ApplicationModel.Background.IEmailStoreNotificationTrigger
{
	static EmailStoreNotificationTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(EmailStoreNotificationTrigger).abi_ActivateInstance(&ret));
		return cast(EmailStoreNotificationTrigger) ret;
	}
}

interface GattCharacteristicNotificationTrigger : Windows.ApplicationModel.Background.IGattCharacteristicNotificationTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger, Windows.ApplicationModel.Background.IGattCharacteristicNotificationTrigger2
{
extern(Windows):
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic Characteristic()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IGattCharacteristicNotificationTrigger)this.asInterface(uuid("e25f8fc8-0696-474f-a732-f292b0cebc5d"))).get_Characteristic(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.Background.BluetoothEventTriggeringMode EventTriggeringMode()
	{
		Windows.Devices.Bluetooth.Background.BluetoothEventTriggeringMode _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IGattCharacteristicNotificationTrigger2)this.asInterface(uuid("9322a2c4-ae0e-42f2-b28c-f51372e69245"))).get_EventTriggeringMode(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.GattCharacteristicNotificationTrigger New(Windows.Devices.Bluetooth.GenericAttributeProfile.GattCharacteristic characteristic)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IGattCharacteristicNotificationTriggerFactory);
		Windows.ApplicationModel.Background.GattCharacteristicNotificationTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IGattCharacteristicNotificationTriggerFactory)factory.asInterface(uuid("57ba1995-b143-4575-9f6b-fd59d93ace1a"))).abi_Create(characteristic, &_ret));
		return _ret;
	}
	alias Create = New;
}

interface GattServiceProviderTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger, Windows.ApplicationModel.Background.IGattServiceProviderTrigger
{
extern(Windows):
	final HSTRING TriggerId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IGattServiceProviderTrigger)this.asInterface(uuid("ddc6a3e9-1557-4bd8-8542-468aa0c696f6"))).get_TriggerId(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService Service()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattLocalService _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IGattServiceProviderTrigger)this.asInterface(uuid("ddc6a3e9-1557-4bd8-8542-468aa0c696f6"))).get_Service(&_ret));
		return _ret;
	}
	final void AdvertisingParameters(Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IGattServiceProviderTrigger)this.asInterface(uuid("ddc6a3e9-1557-4bd8-8542-468aa0c696f6"))).set_AdvertisingParameters(value));
	}
	final Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters AdvertisingParameters()
	{
		Windows.Devices.Bluetooth.GenericAttributeProfile.GattServiceProviderAdvertisingParameters _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IGattServiceProviderTrigger)this.asInterface(uuid("ddc6a3e9-1557-4bd8-8542-468aa0c696f6"))).get_AdvertisingParameters(&_ret));
		return _ret;
	}

	private static Windows.ApplicationModel.Background.IGattServiceProviderTriggerStatics _staticInstance;
	public static Windows.ApplicationModel.Background.IGattServiceProviderTriggerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Background.IGattServiceProviderTriggerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.GattServiceProviderTriggerResult) CreateAsync(HSTRING triggerId, GUID serviceUuid)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.GattServiceProviderTriggerResult) _ret;
		Debug.OK(staticInstance.abi_CreateAsync(triggerId, serviceUuid, &_ret));
		return _ret;
	}
}

interface GattServiceProviderTriggerResult : Windows.ApplicationModel.Background.IGattServiceProviderTriggerResult
{
extern(Windows):
	final Windows.ApplicationModel.Background.GattServiceProviderTrigger Trigger()
	{
		Windows.ApplicationModel.Background.GattServiceProviderTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IGattServiceProviderTriggerResult)this.asInterface(uuid("3c4691b1-b198-4e84-bad4-cf4ad299ed3a"))).get_Trigger(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.BluetoothError Error()
	{
		Windows.Devices.Bluetooth.BluetoothError _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IGattServiceProviderTriggerResult)this.asInterface(uuid("3c4691b1-b198-4e84-bad4-cf4ad299ed3a"))).get_Error(&_ret));
		return _ret;
	}
}

interface LocationTrigger : Windows.ApplicationModel.Background.ILocationTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final Windows.ApplicationModel.Background.LocationTriggerType TriggerType()
	{
		Windows.ApplicationModel.Background.LocationTriggerType _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ILocationTrigger)this.asInterface(uuid("47666a1c-6877-481e-8026-ff7e14a811a0"))).get_TriggerType(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.LocationTrigger New(Windows.ApplicationModel.Background.LocationTriggerType triggerType)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.ILocationTriggerFactory);
		Windows.ApplicationModel.Background.LocationTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ILocationTriggerFactory)factory.asInterface(uuid("1106bb07-ff69-4e09-aa8b-1384ea475e98"))).abi_Create(triggerType, &_ret));
		return _ret;
	}
}

interface MaintenanceTrigger : Windows.ApplicationModel.Background.IMaintenanceTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final UINT32 FreshnessTime()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IMaintenanceTrigger)this.asInterface(uuid("68184c83-fc22-4ce5-841a-7239a9810047"))).get_FreshnessTime(&_ret));
		return _ret;
	}
	final bool OneShot()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IMaintenanceTrigger)this.asInterface(uuid("68184c83-fc22-4ce5-841a-7239a9810047"))).get_OneShot(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.MaintenanceTrigger New(UINT32 freshnessTime, bool oneShot)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IMaintenanceTriggerFactory);
		Windows.ApplicationModel.Background.MaintenanceTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IMaintenanceTriggerFactory)factory.asInterface(uuid("4b3ddb2e-97dd-4629-88b0-b06cf9482ae5"))).abi_Create(freshnessTime, oneShot, &_ret));
		return _ret;
	}
}

interface MediaProcessingTrigger : Windows.ApplicationModel.Background.IMediaProcessingTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.MediaProcessingTriggerResult) RequestAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.MediaProcessingTriggerResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IMediaProcessingTrigger)this.asInterface(uuid("9a95be65-8a52-4b30-9011-cf38040ea8b0"))).abi_RequestAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.MediaProcessingTriggerResult) RequestAsyncWithArguments(Windows.Foundation.Collections.ValueSet arguments)
	{
		Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Background.MediaProcessingTriggerResult) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IMediaProcessingTrigger)this.asInterface(uuid("9a95be65-8a52-4b30-9011-cf38040ea8b0"))).abi_RequestAsyncWithArguments(arguments, &_ret));
		return _ret;
	}
	alias RequestAsync = RequestAsyncWithArguments;
	static MediaProcessingTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MediaProcessingTrigger).abi_ActivateInstance(&ret));
		return cast(MediaProcessingTrigger) ret;
	}
}

interface MobileBroadbandDeviceServiceNotificationTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static MobileBroadbandDeviceServiceNotificationTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MobileBroadbandDeviceServiceNotificationTrigger).abi_ActivateInstance(&ret));
		return cast(MobileBroadbandDeviceServiceNotificationTrigger) ret;
	}
}

interface MobileBroadbandPinLockStateChangeTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static MobileBroadbandPinLockStateChangeTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MobileBroadbandPinLockStateChangeTrigger).abi_ActivateInstance(&ret));
		return cast(MobileBroadbandPinLockStateChangeTrigger) ret;
	}
}

interface MobileBroadbandRadioStateChangeTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static MobileBroadbandRadioStateChangeTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MobileBroadbandRadioStateChangeTrigger).abi_ActivateInstance(&ret));
		return cast(MobileBroadbandRadioStateChangeTrigger) ret;
	}
}

interface MobileBroadbandRegistrationStateChangeTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static MobileBroadbandRegistrationStateChangeTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(MobileBroadbandRegistrationStateChangeTrigger).abi_ActivateInstance(&ret));
		return cast(MobileBroadbandRegistrationStateChangeTrigger) ret;
	}
}

interface NetworkOperatorHotspotAuthenticationTrigger : Windows.ApplicationModel.Background.INetworkOperatorHotspotAuthenticationTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static NetworkOperatorHotspotAuthenticationTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(NetworkOperatorHotspotAuthenticationTrigger).abi_ActivateInstance(&ret));
		return cast(NetworkOperatorHotspotAuthenticationTrigger) ret;
	}
}

interface NetworkOperatorNotificationTrigger : Windows.ApplicationModel.Background.INetworkOperatorNotificationTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final HSTRING NetworkAccountId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.INetworkOperatorNotificationTrigger)this.asInterface(uuid("90089cc6-63cd-480c-95d1-6e6aef801e4a"))).get_NetworkAccountId(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.NetworkOperatorNotificationTrigger New(HSTRING networkAccountId)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.INetworkOperatorNotificationTriggerFactory);
		Windows.ApplicationModel.Background.NetworkOperatorNotificationTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.INetworkOperatorNotificationTriggerFactory)factory.asInterface(uuid("0a223e00-27d7-4353-adb9-9265aaea579d"))).abi_Create(networkAccountId, &_ret));
		return _ret;
	}
}

interface PhoneTrigger : Windows.ApplicationModel.Background.IPhoneTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final bool OneShot()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IPhoneTrigger)this.asInterface(uuid("8dcfe99b-d4c5-49f1-b7d3-82e87a0e9dde"))).get_OneShot(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Calls.Background.PhoneTriggerType TriggerType()
	{
		Windows.ApplicationModel.Calls.Background.PhoneTriggerType _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IPhoneTrigger)this.asInterface(uuid("8dcfe99b-d4c5-49f1-b7d3-82e87a0e9dde"))).get_TriggerType(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.PhoneTrigger New(Windows.ApplicationModel.Calls.Background.PhoneTriggerType type, bool oneShot)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IPhoneTriggerFactory);
		Windows.ApplicationModel.Background.PhoneTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IPhoneTriggerFactory)factory.asInterface(uuid("a0d93cda-5fc1-48fb-a546-32262040157b"))).abi_Create(type, oneShot, &_ret));
		return _ret;
	}
}

interface PushNotificationTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static PushNotificationTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(PushNotificationTrigger).abi_ActivateInstance(&ret));
		return cast(PushNotificationTrigger) ret;
	}
	static Windows.ApplicationModel.Background.PushNotificationTrigger New(HSTRING applicationId)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IPushNotificationTriggerFactory);
		Windows.ApplicationModel.Background.PushNotificationTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IPushNotificationTriggerFactory)factory.asInterface(uuid("6dd8ed1b-458e-4fc2-bc2e-d5664f77ed19"))).abi_Create(applicationId, &_ret));
		return _ret;
	}
}

interface RcsEndUserMessageAvailableTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger, Windows.ApplicationModel.Background.IRcsEndUserMessageAvailableTrigger
{
	static RcsEndUserMessageAvailableTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RcsEndUserMessageAvailableTrigger).abi_ActivateInstance(&ret));
		return cast(RcsEndUserMessageAvailableTrigger) ret;
	}
}

interface RfcommConnectionTrigger : Windows.ApplicationModel.Background.IRfcommConnectionTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final Windows.Devices.Bluetooth.Background.RfcommInboundConnectionInformation InboundConnection()
	{
		Windows.Devices.Bluetooth.Background.RfcommInboundConnectionInformation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IRfcommConnectionTrigger)this.asInterface(uuid("e8c4cae2-0b53-4464-9394-fd875654de64"))).get_InboundConnection(&_ret));
		return _ret;
	}
	final Windows.Devices.Bluetooth.Background.RfcommOutboundConnectionInformation OutboundConnection()
	{
		Windows.Devices.Bluetooth.Background.RfcommOutboundConnectionInformation _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IRfcommConnectionTrigger)this.asInterface(uuid("e8c4cae2-0b53-4464-9394-fd875654de64"))).get_OutboundConnection(&_ret));
		return _ret;
	}
	final bool AllowMultipleConnections()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IRfcommConnectionTrigger)this.asInterface(uuid("e8c4cae2-0b53-4464-9394-fd875654de64"))).get_AllowMultipleConnections(&_ret));
		return _ret;
	}
	final void AllowMultipleConnections(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IRfcommConnectionTrigger)this.asInterface(uuid("e8c4cae2-0b53-4464-9394-fd875654de64"))).set_AllowMultipleConnections(value));
	}
	final Windows.Networking.Sockets.SocketProtectionLevel ProtectionLevel()
	{
		Windows.Networking.Sockets.SocketProtectionLevel _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IRfcommConnectionTrigger)this.asInterface(uuid("e8c4cae2-0b53-4464-9394-fd875654de64"))).get_ProtectionLevel(&_ret));
		return _ret;
	}
	final void ProtectionLevel(Windows.Networking.Sockets.SocketProtectionLevel value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IRfcommConnectionTrigger)this.asInterface(uuid("e8c4cae2-0b53-4464-9394-fd875654de64"))).set_ProtectionLevel(value));
	}
	final Windows.Networking.HostName RemoteHostName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IRfcommConnectionTrigger)this.asInterface(uuid("e8c4cae2-0b53-4464-9394-fd875654de64"))).get_RemoteHostName(&_ret));
		return _ret;
	}
	final void RemoteHostName(Windows.Networking.HostName value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Background.IRfcommConnectionTrigger)this.asInterface(uuid("e8c4cae2-0b53-4464-9394-fd875654de64"))).set_RemoteHostName(value));
	}
	static RfcommConnectionTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(RfcommConnectionTrigger).abi_ActivateInstance(&ret));
		return cast(RfcommConnectionTrigger) ret;
	}
}

interface SecondaryAuthenticationFactorAuthenticationTrigger : Windows.ApplicationModel.Background.ISecondaryAuthenticationFactorAuthenticationTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static SecondaryAuthenticationFactorAuthenticationTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SecondaryAuthenticationFactorAuthenticationTrigger).abi_ActivateInstance(&ret));
		return cast(SecondaryAuthenticationFactorAuthenticationTrigger) ret;
	}
}

interface SensorDataThresholdTrigger : Windows.ApplicationModel.Background.ISensorDataThresholdTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static Windows.ApplicationModel.Background.SensorDataThresholdTrigger New(Windows.Devices.Sensors.ISensorDataThreshold threshold)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.ISensorDataThresholdTriggerFactory);
		Windows.ApplicationModel.Background.SensorDataThresholdTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ISensorDataThresholdTriggerFactory)factory.asInterface(uuid("921fe675-7df0-4da3-97b3-e544ee857fe6"))).abi_Create(threshold, &_ret));
		return _ret;
	}
}

interface SmsMessageReceivedTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static Windows.ApplicationModel.Background.SmsMessageReceivedTrigger New(Windows.Devices.Sms.SmsFilterRules filterRules)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.ISmsMessageReceivedTriggerFactory);
		Windows.ApplicationModel.Background.SmsMessageReceivedTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ISmsMessageReceivedTriggerFactory)factory.asInterface(uuid("ea3ad8c8-6ba4-4ab2-8d21-bc6b09c77564"))).abi_Create(filterRules, &_ret));
		return _ret;
	}
}

interface SocketActivityTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger, Windows.ApplicationModel.Background.ISocketActivityTrigger
{
extern(Windows):
	final bool IsWakeFromLowPowerSupported()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ISocketActivityTrigger)this.asInterface(uuid("a9bbf810-9dde-4f8a-83e3-b0e0e7a50d70"))).get_IsWakeFromLowPowerSupported(&_ret));
		return _ret;
	}
	static SocketActivityTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(SocketActivityTrigger).abi_ActivateInstance(&ret));
		return cast(SocketActivityTrigger) ret;
	}
}

interface StorageLibraryContentChangedTrigger : Windows.ApplicationModel.Background.IStorageLibraryContentChangedTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
	private static Windows.ApplicationModel.Background.IStorageLibraryContentChangedTriggerStatics _staticInstance;
	public static Windows.ApplicationModel.Background.IStorageLibraryContentChangedTriggerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Background.IStorageLibraryContentChangedTriggerStatics);
		return _staticInstance;
	}
	static Windows.ApplicationModel.Background.StorageLibraryContentChangedTrigger Create(Windows.Storage.StorageLibrary storageLibrary)
	{
		Windows.ApplicationModel.Background.StorageLibraryContentChangedTrigger _ret;
		Debug.OK(staticInstance.abi_Create(storageLibrary, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.StorageLibraryContentChangedTrigger CreateFromLibraries(Windows.Foundation.Collections.IIterable!(Windows.Storage.StorageLibrary) storageLibraries)
	{
		Windows.ApplicationModel.Background.StorageLibraryContentChangedTrigger _ret;
		Debug.OK(staticInstance.abi_CreateFromLibraries(storageLibraries, &_ret));
		return _ret;
	}
}

interface SystemCondition : Windows.ApplicationModel.Background.ISystemCondition, Windows.ApplicationModel.Background.IBackgroundCondition
{
extern(Windows):
	final Windows.ApplicationModel.Background.SystemConditionType ConditionType()
	{
		Windows.ApplicationModel.Background.SystemConditionType _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ISystemCondition)this.asInterface(uuid("c15fb476-89c5-420b-abd3-fb3030472128"))).get_ConditionType(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.SystemCondition New(Windows.ApplicationModel.Background.SystemConditionType conditionType)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.ISystemConditionFactory);
		Windows.ApplicationModel.Background.SystemCondition _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ISystemConditionFactory)factory.asInterface(uuid("d269d1f1-05a7-49ae-87d7-16b2b8b9a553"))).abi_Create(conditionType, &_ret));
		return _ret;
	}
}

interface SystemTrigger : Windows.ApplicationModel.Background.ISystemTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final bool OneShot()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ISystemTrigger)this.asInterface(uuid("1d80c776-3748-4463-8d7e-276dc139ac1c"))).get_OneShot(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Background.SystemTriggerType TriggerType()
	{
		Windows.ApplicationModel.Background.SystemTriggerType _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ISystemTrigger)this.asInterface(uuid("1d80c776-3748-4463-8d7e-276dc139ac1c"))).get_TriggerType(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.SystemTrigger New(Windows.ApplicationModel.Background.SystemTriggerType triggerType, bool oneShot)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.ISystemTriggerFactory);
		Windows.ApplicationModel.Background.SystemTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ISystemTriggerFactory)factory.asInterface(uuid("e80423d4-8791-4579-8126-87ec8aaa407a"))).abi_Create(triggerType, oneShot, &_ret));
		return _ret;
	}
}

interface TimeTrigger : Windows.ApplicationModel.Background.ITimeTrigger, Windows.ApplicationModel.Background.IBackgroundTrigger
{
extern(Windows):
	final UINT32 FreshnessTime()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ITimeTrigger)this.asInterface(uuid("656e5556-0b2a-4377-ba70-3b45a935547f"))).get_FreshnessTime(&_ret));
		return _ret;
	}
	final bool OneShot()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ITimeTrigger)this.asInterface(uuid("656e5556-0b2a-4377-ba70-3b45a935547f"))).get_OneShot(&_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Background.TimeTrigger New(UINT32 freshnessTime, bool oneShot)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.ITimeTriggerFactory);
		Windows.ApplicationModel.Background.TimeTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.ITimeTriggerFactory)factory.asInterface(uuid("38c682fe-9b54-45e6-b2f3-269b87a6f734"))).abi_Create(freshnessTime, oneShot, &_ret));
		return _ret;
	}
}

interface ToastNotificationActionTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static ToastNotificationActionTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ToastNotificationActionTrigger).abi_ActivateInstance(&ret));
		return cast(ToastNotificationActionTrigger) ret;
	}
	static Windows.ApplicationModel.Background.ToastNotificationActionTrigger New(HSTRING applicationId)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IToastNotificationActionTriggerFactory);
		Windows.ApplicationModel.Background.ToastNotificationActionTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IToastNotificationActionTriggerFactory)factory.asInterface(uuid("b09dfc27-6480-4349-8125-97b3efaa0a3a"))).abi_Create(applicationId, &_ret));
		return _ret;
	}
}

interface ToastNotificationHistoryChangedTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static ToastNotificationHistoryChangedTrigger New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(ToastNotificationHistoryChangedTrigger).abi_ActivateInstance(&ret));
		return cast(ToastNotificationHistoryChangedTrigger) ret;
	}
	static Windows.ApplicationModel.Background.ToastNotificationHistoryChangedTrigger New(HSTRING applicationId)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IToastNotificationHistoryChangedTriggerFactory);
		Windows.ApplicationModel.Background.ToastNotificationHistoryChangedTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IToastNotificationHistoryChangedTriggerFactory)factory.asInterface(uuid("81c6faad-8797-4785-81b4-b0cccb73d1d9"))).abi_Create(applicationId, &_ret));
		return _ret;
	}
}

interface UserNotificationChangedTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger
{
	static Windows.ApplicationModel.Background.UserNotificationChangedTrigger New(Windows.UI.Notifications.NotificationKinds notificationKinds)
	{
		auto factory = factory!(Windows.ApplicationModel.Background.IUserNotificationChangedTriggerFactory);
		Windows.ApplicationModel.Background.UserNotificationChangedTrigger _ret;
		Debug.OK((cast(Windows.ApplicationModel.Background.IUserNotificationChangedTriggerFactory)factory.asInterface(uuid("cad4436c-69ab-4e18-a48a-5ed2ac435957"))).abi_Create(notificationKinds, &_ret));
		return _ret;
	}
}

enum AlarmAccessStatus
{
	Unspecified = 0,
	AllowedWithWakeupCapability = 1,
	AllowedWithoutWakeupCapability = 2,
	Denied = 3
}

enum ApplicationTriggerResult
{
	Allowed = 0,
	CurrentlyRunning = 1,
	DisabledByPolicy = 2,
	UnknownError = 3
}

enum BackgroundAccessStatus
{
	Unspecified = 0,
	AllowedWithAlwaysOnRealTimeConnectivity = 1,
	AllowedMayUseActiveRealTimeConnectivity = 2,
	Denied = 3,
	AlwaysAllowed = 4,
	AllowedSubjectToSystemPolicy = 5,
	DeniedBySystemPolicy = 6,
	DeniedByUser = 7
}

enum BackgroundTaskCancellationReason
{
	Abort = 0,
	Terminating = 1,
	LoggingOff = 2,
	ServicingUpdate = 3,
	IdleTask = 4,
	Uninstall = 5,
	ConditionLoss = 6,
	SystemPolicy = 7,
	QuietHoursEntered = 8,
	ExecutionTimeExceeded = 9,
	ResourceRevocation = 10,
	EnergySaver = 11
}

enum BackgroundTaskThrottleCounter
{
	All = 0,
	Cpu = 1,
	Network = 2
}

enum BackgroundWorkCostValue
{
	Low = 0,
	Medium = 1,
	High = 2
}

enum DeviceTriggerResult
{
	Allowed = 0,
	DeniedByUser = 1,
	DeniedBySystem = 2,
	LowBattery = 3
}

enum LocationTriggerType
{
	Geofence = 0
}

enum MediaProcessingTriggerResult
{
	Allowed = 0,
	CurrentlyRunning = 1,
	DisabledByPolicy = 2,
	UnknownError = 3
}

enum SystemConditionType
{
	Invalid = 0,
	UserPresent = 1,
	UserNotPresent = 2,
	InternetAvailable = 3,
	InternetNotAvailable = 4,
	SessionConnected = 5,
	SessionDisconnected = 6,
	FreeNetworkAvailable = 7,
	BackgroundWorkCostNotHigh = 8
}

enum SystemTriggerType
{
	Invalid = 0,
	SmsReceived = 1,
	UserPresent = 2,
	UserAway = 3,
	NetworkStateChange = 4,
	ControlChannelReset = 5,
	InternetAvailable = 6,
	SessionConnected = 7,
	ServicingComplete = 8,
	LockScreenApplicationAdded = 9,
	LockScreenApplicationRemoved = 10,
	TimeZoneChange = 11,
	OnlineIdConnectedStateChange = 12,
	BackgroundWorkCostChange = 13,
	PowerStateChange = 14,
	DefaultSignInAccountChange = 15
}