module Windows.ApplicationModel.Appointments.AppointmentsProvider;

import dwinrt;

@uuid("ec4a9af3-620d-4c69-add7-9794e918081f")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentsProvider.AddAppointmentOperation")
interface IAddAppointmentOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_ShowAppointmentDetails(HSTRING* return_value);
}

@uuid("08b66aba-fe33-46cd-a50c-a8ffb3260537")
@WinrtFactory("Windows.ApplicationModel.Appointments.AppointmentsProvider.RemoveAppointmentOperation")
interface IRemoveAppointmentOperation : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

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
	mixin(generateRTMethods!(typeof(this)));

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

interface AddAppointmentOperation
{
}

interface RemoveAppointmentOperation
{
}

interface ReplaceAppointmentOperation
{
}