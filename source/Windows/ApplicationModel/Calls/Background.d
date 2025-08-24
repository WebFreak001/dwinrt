module Windows.ApplicationModel.Calls.Background;

import dwinrt;

@uuid("a4a690a2-e4c1-427f-864e-e470477ddb67")
@WinrtFactory("Windows.ApplicationModel.Calls.Background.PhoneCallBlockedTriggerDetails")
interface IPhoneCallBlockedTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_PhoneNumber(HSTRING* return_value);
	HRESULT get_LineId(GUID* return_value);
	HRESULT get_CallBlockedReason(Windows.ApplicationModel.Calls.Background.PhoneCallBlockedReason* return_value);
}

@uuid("6e9b5b3f-c54b-4e82-4cc9-e329a4184592")
@WinrtFactory("Windows.ApplicationModel.Calls.Background.PhoneCallOriginDataRequestTriggerDetails")
interface IPhoneCallOriginDataRequestTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_RequestId(GUID* return_result);
	HRESULT get_PhoneNumber(HSTRING* return_result);
}

@uuid("c6d321e7-d11d-40d8-b2b7-e40a01d66249")
@WinrtFactory("Windows.ApplicationModel.Calls.Background.PhoneLineChangedTriggerDetails")
interface IPhoneLineChangedTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_LineId(GUID* return_result);
	HRESULT get_ChangeType(Windows.ApplicationModel.Calls.Background.PhoneLineChangeKind* return_result);
	HRESULT abi_HasLinePropertyChanged(Windows.ApplicationModel.Calls.Background.PhoneLineProperties lineProperty, bool* return_result);
}

@uuid("13a8c01b-b831-48d3-8ba9-8d22a6580dcf")
@WinrtFactory("Windows.ApplicationModel.Calls.Background.PhoneNewVoicemailMessageTriggerDetails")
interface IPhoneNewVoicemailMessageTriggerDetails : IInspectable
{
extern(Windows):
	HRESULT get_LineId(GUID* return_result);
	HRESULT get_VoicemailCount(INT32* return_result);
	HRESULT get_OperatorMessage(HSTRING* return_result);
}

interface PhoneCallBlockedTriggerDetails : Windows.ApplicationModel.Calls.Background.IPhoneCallBlockedTriggerDetails
{
extern(Windows):
	final wstring PhoneNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneCallBlockedTriggerDetails)this.asInterface(uuid("a4a690a2-e4c1-427f-864e-e470477ddb67"))).get_PhoneNumber(&_ret));
		return hstring(_ret).d_str;
	}
	final GUID LineId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneCallBlockedTriggerDetails)this.asInterface(uuid("a4a690a2-e4c1-427f-864e-e470477ddb67"))).get_LineId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Calls.Background.PhoneCallBlockedReason CallBlockedReason()
	{
		Windows.ApplicationModel.Calls.Background.PhoneCallBlockedReason _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneCallBlockedTriggerDetails)this.asInterface(uuid("a4a690a2-e4c1-427f-864e-e470477ddb67"))).get_CallBlockedReason(&_ret));
		return _ret;
	}
}

interface PhoneCallOriginDataRequestTriggerDetails : Windows.ApplicationModel.Calls.Background.IPhoneCallOriginDataRequestTriggerDetails
{
extern(Windows):
	final GUID RequestId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneCallOriginDataRequestTriggerDetails)this.asInterface(uuid("6e9b5b3f-c54b-4e82-4cc9-e329a4184592"))).get_RequestId(&_ret));
		return _ret;
	}
	final wstring PhoneNumber()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneCallOriginDataRequestTriggerDetails)this.asInterface(uuid("6e9b5b3f-c54b-4e82-4cc9-e329a4184592"))).get_PhoneNumber(&_ret));
		return hstring(_ret).d_str;
	}
}

interface PhoneLineChangedTriggerDetails : Windows.ApplicationModel.Calls.Background.IPhoneLineChangedTriggerDetails
{
extern(Windows):
	final GUID LineId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneLineChangedTriggerDetails)this.asInterface(uuid("c6d321e7-d11d-40d8-b2b7-e40a01d66249"))).get_LineId(&_ret));
		return _ret;
	}
	final Windows.ApplicationModel.Calls.Background.PhoneLineChangeKind ChangeType()
	{
		Windows.ApplicationModel.Calls.Background.PhoneLineChangeKind _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneLineChangedTriggerDetails)this.asInterface(uuid("c6d321e7-d11d-40d8-b2b7-e40a01d66249"))).get_ChangeType(&_ret));
		return _ret;
	}
	final bool HasLinePropertyChanged(Windows.ApplicationModel.Calls.Background.PhoneLineProperties lineProperty)
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneLineChangedTriggerDetails)this.asInterface(uuid("c6d321e7-d11d-40d8-b2b7-e40a01d66249"))).abi_HasLinePropertyChanged(lineProperty, &_ret));
		return _ret;
	}
}

interface PhoneNewVoicemailMessageTriggerDetails : Windows.ApplicationModel.Calls.Background.IPhoneNewVoicemailMessageTriggerDetails
{
extern(Windows):
	final GUID LineId()
	{
		GUID _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneNewVoicemailMessageTriggerDetails)this.asInterface(uuid("13a8c01b-b831-48d3-8ba9-8d22a6580dcf"))).get_LineId(&_ret));
		return _ret;
	}
	final INT32 VoicemailCount()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneNewVoicemailMessageTriggerDetails)this.asInterface(uuid("13a8c01b-b831-48d3-8ba9-8d22a6580dcf"))).get_VoicemailCount(&_ret));
		return _ret;
	}
	final wstring OperatorMessage()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.ApplicationModel.Calls.Background.IPhoneNewVoicemailMessageTriggerDetails)this.asInterface(uuid("13a8c01b-b831-48d3-8ba9-8d22a6580dcf"))).get_OperatorMessage(&_ret));
		return hstring(_ret).d_str;
	}
}

enum PhoneCallBlockedReason
{
	InCallBlockingList = 0,
	PrivateNumber = 1,
	UnknownNumber = 2
}

enum PhoneLineChangeKind
{
	Added = 0,
	Removed = 1,
	PropertiesChanged = 2
}

@bitflags
enum PhoneLineProperties
{
	None = 0x0,
	BrandingOptions = 0x1,
	CanDial = 0x2,
	CellularDetails = 0x4,
	DisplayColor = 0x8,
	DisplayName = 0x10,
	NetworkName = 0x20,
	NetworkState = 0x40,
	Transport = 0x80,
	Voicemail = 0x100
}

enum PhoneTriggerType
{
	NewVoicemailMessage = 0,
	CallHistoryChanged = 1,
	LineChanged = 2,
	AirplaneModeDisabledForEmergencyCall = 3,
	CallOriginDataRequest = 4,
	CallBlocked = 5
}