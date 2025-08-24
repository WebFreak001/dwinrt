module Windows.ApplicationModel.Appointments.AppointmentsProvider;

import dwinrt;

@uuid("ec4a9af3-620d-4c69-add7-9794e918081f")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentsProvider.AddAppointmentOperation")
interface IAddAppointmentOperation : IInspectable
{
extern(Windows):
	HRESULT get_AppointmentInformation(Windows.ApplicationModel.Appointments.Appointment* return_value);
	HRESULT get_SourcePackageFamilyName(HSTRING* return_value);
	HRESULT abi_ReportCompleted(HSTRING itemId);
	HRESULT abi_ReportCanceled();
	HRESULT abi_ReportError(HSTRING value);
	HRESULT abi_DismissUI();
}

@uuid("36dbba28-9e2e-49c6-8ef7-3ab7a5dcc8b8")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentsProvider.AppointmentsProviderLaunchActionVerbs")
interface IAppointmentsProviderLaunchActionVerbsStatics : IInspectable
{
extern(Windows):
	HRESULT get_AddAppointment(HSTRING* return_value);
	HRESULT get_ReplaceAppointment(HSTRING* return_value);
	HRESULT get_RemoveAppointment(HSTRING* return_value);
	HRESULT get_ShowTimeFrame(HSTRING* return_value);
}

@uuid("ef9049a4-af21-473c-88dc-76cd89f60ca5")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentsProvider.AppointmentsProviderLaunchActionVerbs")
interface IAppointmentsProviderLaunchActionVerbsStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_ShowAppointmentDetails(HSTRING* return_value);
}

@uuid("08b66aba-fe33-46cd-a50c-a8ffb3260537")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentsProvider.RemoveAppointmentOperation")
interface IRemoveAppointmentOperation : IInspectable
{
extern(Windows):
	HRESULT get_AppointmentId(HSTRING* return_value);
	HRESULT get_InstanceStartDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_SourcePackageFamilyName(HSTRING* return_value);
	HRESULT abi_ReportCompleted();
	HRESULT abi_ReportCanceled();
	HRESULT abi_ReportError(HSTRING value);
	HRESULT abi_DismissUI();
}

@uuid("f4903d9b-9e61-4de2-a732-2687c07d1de8")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentsProvider.ReplaceAppointmentOperation")
interface IReplaceAppointmentOperation : IInspectable
{
extern(Windows):
	HRESULT get_AppointmentId(HSTRING* return_value);
	HRESULT get_AppointmentInformation(Windows.ApplicationModel.Appointments.Appointment* return_value);
	HRESULT get_InstanceStartDate(Windows.Foundation.IReference!(Windows.Foundation.DateTime)* return_value);
	HRESULT get_SourcePackageFamilyName(HSTRING* return_value);
	HRESULT abi_ReportCompleted(HSTRING itemId);
	HRESULT abi_ReportCanceled();
	HRESULT abi_ReportError(HSTRING value);
	HRESULT abi_DismissUI();
}

interface AddAppointmentOperation : Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation
{
extern(Windows):
	final Windows.ApplicationModel.Appointments.Appointment AppointmentInformation()
	{
		Windows.ApplicationModel.Appointments.Appointment _ret;
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation)this.asInterface(uuid("ec4a9af3-620d-4c69-add7-9794e918081f"))).get_AppointmentInformation(&_ret));
		return _ret;
	}
	final wstring SourcePackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation)this.asInterface(uuid("ec4a9af3-620d-4c69-add7-9794e918081f"))).get_SourcePackageFamilyName(&_ret));
		return hstring(_ret).d_str;
	}
	final void ReportCompleted(wstring itemId)
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation)this.asInterface(uuid("ec4a9af3-620d-4c69-add7-9794e918081f"))).abi_ReportCompleted(hstring(itemId).handle));
	}
	final void ReportCanceled()
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation)this.asInterface(uuid("ec4a9af3-620d-4c69-add7-9794e918081f"))).abi_ReportCanceled());
	}
	final void ReportError(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation)this.asInterface(uuid("ec4a9af3-620d-4c69-add7-9794e918081f"))).abi_ReportError(hstring(value).handle));
	}
	final void DismissUI()
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation)this.asInterface(uuid("ec4a9af3-620d-4c69-add7-9794e918081f"))).abi_DismissUI());
	}
}

interface AppointmentsProviderLaunchActionVerbs
{
	private static Windows.ApplicationModel.Appointments.AppointmentsProvider.IAppointmentsProviderLaunchActionVerbsStatics _staticInstance;
	public static Windows.ApplicationModel.Appointments.AppointmentsProvider.IAppointmentsProviderLaunchActionVerbsStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAppointmentsProviderLaunchActionVerbsStatics);
		return _staticInstance;
	}
	static wstring AddAppointment()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AddAppointment(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ReplaceAppointment()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ReplaceAppointment(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring RemoveAppointment()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RemoveAppointment(&_ret));
		return hstring(_ret).d_str;
	}
	static wstring ShowTimeFrame()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_ShowTimeFrame(&_ret));
		return hstring(_ret).d_str;
	}
}

interface RemoveAppointmentOperation : Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation
{
extern(Windows):
	final wstring AppointmentId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation)this.asInterface(uuid("08b66aba-fe33-46cd-a50c-a8ffb3260537"))).get_AppointmentId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) InstanceStartDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation)this.asInterface(uuid("08b66aba-fe33-46cd-a50c-a8ffb3260537"))).get_InstanceStartDate(&_ret));
		return _ret;
	}
	final wstring SourcePackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation)this.asInterface(uuid("08b66aba-fe33-46cd-a50c-a8ffb3260537"))).get_SourcePackageFamilyName(&_ret));
		return hstring(_ret).d_str;
	}
	final void ReportCompleted()
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation)this.asInterface(uuid("08b66aba-fe33-46cd-a50c-a8ffb3260537"))).abi_ReportCompleted());
	}
	final void ReportCanceled()
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation)this.asInterface(uuid("08b66aba-fe33-46cd-a50c-a8ffb3260537"))).abi_ReportCanceled());
	}
	final void ReportError(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation)this.asInterface(uuid("08b66aba-fe33-46cd-a50c-a8ffb3260537"))).abi_ReportError(hstring(value).handle));
	}
	final void DismissUI()
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation)this.asInterface(uuid("08b66aba-fe33-46cd-a50c-a8ffb3260537"))).abi_DismissUI());
	}
}

interface ReplaceAppointmentOperation : Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation
{
extern(Windows):
	final wstring AppointmentId()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation)this.asInterface(uuid("f4903d9b-9e61-4de2-a732-2687c07d1de8"))).get_AppointmentId(&_ret));
		return hstring(_ret).d_str;
	}
	final Windows.ApplicationModel.Appointments.Appointment AppointmentInformation()
	{
		Windows.ApplicationModel.Appointments.Appointment _ret;
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation)this.asInterface(uuid("f4903d9b-9e61-4de2-a732-2687c07d1de8"))).get_AppointmentInformation(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) InstanceStartDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation)this.asInterface(uuid("f4903d9b-9e61-4de2-a732-2687c07d1de8"))).get_InstanceStartDate(&_ret));
		return _ret;
	}
	final wstring SourcePackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation)this.asInterface(uuid("f4903d9b-9e61-4de2-a732-2687c07d1de8"))).get_SourcePackageFamilyName(&_ret));
		return hstring(_ret).d_str;
	}
	final void ReportCompleted(wstring itemId)
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation)this.asInterface(uuid("f4903d9b-9e61-4de2-a732-2687c07d1de8"))).abi_ReportCompleted(hstring(itemId).handle));
	}
	final void ReportCanceled()
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation)this.asInterface(uuid("f4903d9b-9e61-4de2-a732-2687c07d1de8"))).abi_ReportCanceled());
	}
	final void ReportError(wstring value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation)this.asInterface(uuid("f4903d9b-9e61-4de2-a732-2687c07d1de8"))).abi_ReportError(hstring(value).handle));
	}
	final void DismissUI()
	{
		Debug.OK((cast(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation)this.asInterface(uuid("f4903d9b-9e61-4de2-a732-2687c07d1de8"))).abi_DismissUI());
	}
}