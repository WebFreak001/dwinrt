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
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation).get_AppointmentInformation(&_ret));
		return _ret;
	}
	final HSTRING SourcePackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation).get_SourcePackageFamilyName(&_ret));
		return _ret;
	}
	final void ReportCompleted(HSTRING itemId)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation).abi_ReportCompleted(itemId));
	}
	final void ReportCanceled()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation).abi_ReportCanceled());
	}
	final void ReportError(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation).abi_ReportError(value));
	}
	final void DismissUI()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IAddAppointmentOperation).abi_DismissUI());
	}
}

interface AppointmentsProviderLaunchActionVerbs
{
}

interface RemoveAppointmentOperation : Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation
{
extern(Windows):
	final HSTRING AppointmentId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation).get_AppointmentId(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) InstanceStartDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation).get_InstanceStartDate(&_ret));
		return _ret;
	}
	final HSTRING SourcePackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation).get_SourcePackageFamilyName(&_ret));
		return _ret;
	}
	final void ReportCompleted()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation).abi_ReportCompleted());
	}
	final void ReportCanceled()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation).abi_ReportCanceled());
	}
	final void ReportError(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation).abi_ReportError(value));
	}
	final void DismissUI()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IRemoveAppointmentOperation).abi_DismissUI());
	}
}

interface ReplaceAppointmentOperation : Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation
{
extern(Windows):
	final HSTRING AppointmentId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation).get_AppointmentId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Appointments.Appointment AppointmentInformation()
	{
		Windows.ApplicationModel.Appointments.Appointment _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation).get_AppointmentInformation(&_ret));
		return _ret;
	}
	final Windows.Foundation.IReference!(Windows.Foundation.DateTime) InstanceStartDate()
	{
		Windows.Foundation.IReference!(Windows.Foundation.DateTime) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation).get_InstanceStartDate(&_ret));
		return _ret;
	}
	final HSTRING SourcePackageFamilyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation).get_SourcePackageFamilyName(&_ret));
		return _ret;
	}
	final void ReportCompleted(HSTRING itemId)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation).abi_ReportCompleted(itemId));
	}
	final void ReportCanceled()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation).abi_ReportCanceled());
	}
	final void ReportError(HSTRING value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation).abi_ReportError(value));
	}
	final void DismissUI()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Appointments.AppointmentsProvider.IReplaceAppointmentOperation).abi_DismissUI());
	}
}