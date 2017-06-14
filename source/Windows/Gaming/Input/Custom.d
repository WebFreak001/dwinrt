module Windows.Gaming.Input.Custom;

import dwinrt;

struct GameControllerVersionInfo
{
	UINT16 Major;
	UINT16 Minor;
	UINT16 Build;
	UINT16 Revision;
}

struct GipFirmwareUpdateProgress
{
	double PercentCompleted;
	UINT32 CurrentComponentId;
}

@uuid("69a0ae5e-758e-4cbe-ace6-62155fe9126f")
interface ICustomGameControllerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateGameController(Windows.Gaming.Input.Custom.IGameControllerProvider provider, IInspectable* return_value);
	HRESULT abi_OnGameControllerAdded(Windows.Gaming.Input.IGameController value);
	HRESULT abi_OnGameControllerRemoved(Windows.Gaming.Input.IGameController value);
}

@uuid("36cb66e3-d0a1-4986-a24c-40b137deba9e")
@WinrtFactory("Windows.Gaming.Input.Custom.GameControllerFactoryManager")
interface IGameControllerFactoryManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_RegisterCustomFactoryForGipInterface(Windows.Gaming.Input.Custom.ICustomGameControllerFactory factory, GUID interfaceId);
	HRESULT abi_RegisterCustomFactoryForHardwareId(Windows.Gaming.Input.Custom.ICustomGameControllerFactory factory, UINT16 hardwareVendorId, UINT16 hardwareProductId);
	HRESULT abi_RegisterCustomFactoryForXusbType(Windows.Gaming.Input.Custom.ICustomGameControllerFactory factory, Windows.Gaming.Input.Custom.XusbDeviceType xusbType, Windows.Gaming.Input.Custom.XusbDeviceSubtype xusbSubtype);
}

@uuid("eace5644-19df-4115-b32a-2793e2aea3bb")
@WinrtFactory("Windows.Gaming.Input.Custom.GameControllerFactoryManager")
interface IGameControllerFactoryManagerStatics2_Base : IInspectable
{
extern(Windows):
	HRESULT abi_TryGetFactoryControllerFromGameController(Windows.Gaming.Input.Custom.ICustomGameControllerFactory factory, Windows.Gaming.Input.IGameController gameController, Windows.Gaming.Input.IGameController* return_factoryController);
}
interface IGameControllerFactoryManagerStatics2 : IGameControllerFactoryManagerStatics2_Base, Windows.Gaming.Input.Custom.IGameControllerFactoryManagerStatics {}

@uuid("1ff6f922-c640-4c78-a820-9a715c558bcb")
interface IGameControllerInputSink : IInspectable
{
extern(Windows):
	HRESULT abi_OnInputResumed(UINT64 timestamp);
	HRESULT abi_OnInputSuspended(UINT64 timestamp);
}

@uuid("e6d73982-2996-4559-b16c-3e57d46e58d6")
interface IGameControllerProvider : IInspectable
{
extern(Windows):
	HRESULT get_FirmwareVersionInfo(Windows.Gaming.Input.Custom.GameControllerVersionInfo* return_value);
	HRESULT get_HardwareProductId(UINT16* return_value);
	HRESULT get_HardwareVendorId(UINT16* return_value);
	HRESULT get_HardwareVersionInfo(Windows.Gaming.Input.Custom.GameControllerVersionInfo* return_value);
	HRESULT get_IsConnected(bool* return_value);
}

@uuid("6b794d32-8553-4292-8e03-e16651a2f8bc")
@WinrtFactory("Windows.Gaming.Input.Custom.GipFirmwareUpdateResult")
interface IGipFirmwareUpdateResult : IInspectable
{
extern(Windows):
	HRESULT get_ExtendedErrorCode(UINT32* return_value);
	HRESULT get_FinalComponentId(UINT32* return_value);
	HRESULT get_Status(Windows.Gaming.Input.Custom.GipFirmwareUpdateStatus* return_value);
}

@uuid("a2108abf-09f1-43bc-a140-80f899ec36fb")
interface IGipGameControllerInputSink_Base : IInspectable
{
extern(Windows):
	HRESULT abi_OnKeyReceived(UINT64 timestamp, BYTE keyCode, bool isPressed);
	HRESULT abi_OnMessageReceived(UINT64 timestamp, Windows.Gaming.Input.Custom.GipMessageClass messageClass, BYTE messageId, BYTE sequenceId, UINT32 __messageBufferSize, BYTE* messageBuffer);
}
interface IGipGameControllerInputSink : IGipGameControllerInputSink_Base, Windows.Gaming.Input.Custom.IGameControllerInputSink {}

@uuid("dbcf1e19-1af5-45a8-bf02-a0ee50c823fc")
@WinrtFactory("Windows.Gaming.Input.Custom.GipGameControllerProvider")
interface IGipGameControllerProvider_Base : IInspectable
{
extern(Windows):
	HRESULT abi_SendMessage(Windows.Gaming.Input.Custom.GipMessageClass messageClass, BYTE messageId, UINT32 __messageBufferSize, BYTE* messageBuffer);
	HRESULT abi_SendReceiveMessage(Windows.Gaming.Input.Custom.GipMessageClass messageClass, BYTE messageId, UINT32 __requestMessageBufferSize, BYTE* requestMessageBuffer, UINT32 __responseMessageBufferSize, BYTE* out_responseMessageBuffer);
	HRESULT abi_UpdateFirmwareAsync(Windows.Storage.Streams.IInputStream firmwareImage, Windows.Foundation.IAsyncOperationWithProgress!(Windows.Gaming.Input.Custom.GipFirmwareUpdateResult, Windows.Gaming.Input.Custom.GipFirmwareUpdateProgress)* return_result);
}
interface IGipGameControllerProvider : IGipGameControllerProvider_Base, Windows.Gaming.Input.Custom.IGameControllerProvider {}

@uuid("f754c322-182d-40e4-a126-fcee4ffa1e31")
interface IHidGameControllerInputSink_Base : IInspectable
{
extern(Windows):
	HRESULT abi_OnInputReportReceived(UINT64 timestamp, BYTE reportId, UINT32 __reportBufferSize, BYTE* reportBuffer);
}
interface IHidGameControllerInputSink : IHidGameControllerInputSink_Base, Windows.Gaming.Input.Custom.IGameControllerInputSink {}

@uuid("95ce3af4-abf0-4b68-a081-3b7de73ff0e7")
@WinrtFactory("Windows.Gaming.Input.Custom.HidGameControllerProvider")
interface IHidGameControllerProvider_Base : IInspectable
{
extern(Windows):
	HRESULT get_UsageId(UINT16* return_value);
	HRESULT get_UsagePage(UINT16* return_value);
	HRESULT abi_GetFeatureReport(BYTE reportId, UINT32 __reportBufferSize, BYTE* out_reportBuffer);
	HRESULT abi_SendFeatureReport(BYTE reportId, UINT32 __reportBufferSize, BYTE* reportBuffer);
	HRESULT abi_SendOutputReport(BYTE reportId, UINT32 __reportBufferSize, BYTE* reportBuffer);
}
interface IHidGameControllerProvider : IHidGameControllerProvider_Base, Windows.Gaming.Input.Custom.IGameControllerProvider {}

@uuid("b2ac1d95-6ecb-42b3-8aab-025401ca4712")
interface IXusbGameControllerInputSink_Base : IInspectable
{
extern(Windows):
	HRESULT abi_OnInputReceived(UINT64 timestamp, BYTE reportId, UINT32 __inputBufferSize, BYTE* inputBuffer);
}
interface IXusbGameControllerInputSink : IXusbGameControllerInputSink_Base, Windows.Gaming.Input.Custom.IGameControllerInputSink {}

@uuid("6e2971eb-0efb-48b4-808b-837643b2f216")
@WinrtFactory("Windows.Gaming.Input.Custom.XusbGameControllerProvider")
interface IXusbGameControllerProvider_Base : IInspectable
{
extern(Windows):
	HRESULT abi_SetVibration(double lowFrequencyMotorSpeed, double highFrequencyMotorSpeed);
}
interface IXusbGameControllerProvider : IXusbGameControllerProvider_Base, Windows.Gaming.Input.Custom.IGameControllerProvider {}

interface GameControllerFactoryManager
{
}

interface GipFirmwareUpdateResult : Windows.Gaming.Input.Custom.IGipFirmwareUpdateResult
{
extern(Windows):
	final UINT32 ExtendedErrorCode()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGipFirmwareUpdateResult).get_ExtendedErrorCode(&_ret));
		return _ret;
	}
	final UINT32 FinalComponentId()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGipFirmwareUpdateResult).get_FinalComponentId(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.Custom.GipFirmwareUpdateStatus Status()
	{
		Windows.Gaming.Input.Custom.GipFirmwareUpdateStatus _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGipFirmwareUpdateResult).get_Status(&_ret));
		return _ret;
	}
}

interface GipGameControllerProvider : Windows.Gaming.Input.Custom.IGipGameControllerProvider, Windows.Gaming.Input.Custom.IGameControllerProvider
{
extern(Windows):
	final void SendMessage(Windows.Gaming.Input.Custom.GipMessageClass messageClass, BYTE messageId, UINT32 __messageBufferSize, BYTE* messageBuffer)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGipGameControllerProvider).abi_SendMessage(messageClass, messageId, __messageBufferSize, messageBuffer));
	}
	final void SendReceiveMessage(Windows.Gaming.Input.Custom.GipMessageClass messageClass, BYTE messageId, UINT32 __requestMessageBufferSize, BYTE* requestMessageBuffer, UINT32 __responseMessageBufferSize, BYTE* out_responseMessageBuffer)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGipGameControllerProvider).abi_SendReceiveMessage(messageClass, messageId, __requestMessageBufferSize, requestMessageBuffer, __responseMessageBufferSize, out_responseMessageBuffer));
	}
	final Windows.Foundation.IAsyncOperationWithProgress!(Windows.Gaming.Input.Custom.GipFirmwareUpdateResult, Windows.Gaming.Input.Custom.GipFirmwareUpdateProgress) UpdateFirmwareAsync(Windows.Storage.Streams.IInputStream firmwareImage)
	{
		Windows.Foundation.IAsyncOperationWithProgress!(Windows.Gaming.Input.Custom.GipFirmwareUpdateResult, Windows.Gaming.Input.Custom.GipFirmwareUpdateProgress) _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGipGameControllerProvider).abi_UpdateFirmwareAsync(firmwareImage, &_ret));
		return _ret;
	}
	final Windows.Gaming.Input.Custom.GameControllerVersionInfo FirmwareVersionInfo()
	{
		Windows.Gaming.Input.Custom.GameControllerVersionInfo _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_FirmwareVersionInfo(&_ret));
		return _ret;
	}
	final UINT16 HardwareProductId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_HardwareProductId(&_ret));
		return _ret;
	}
	final UINT16 HardwareVendorId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_HardwareVendorId(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.Custom.GameControllerVersionInfo HardwareVersionInfo()
	{
		Windows.Gaming.Input.Custom.GameControllerVersionInfo _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_HardwareVersionInfo(&_ret));
		return _ret;
	}
	final bool IsConnected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_IsConnected(&_ret));
		return _ret;
	}
}

interface HidGameControllerProvider : Windows.Gaming.Input.Custom.IHidGameControllerProvider, Windows.Gaming.Input.Custom.IGameControllerProvider
{
extern(Windows):
	final UINT16 UsageId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IHidGameControllerProvider).get_UsageId(&_ret));
		return _ret;
	}
	final UINT16 UsagePage()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IHidGameControllerProvider).get_UsagePage(&_ret));
		return _ret;
	}
	final void GetFeatureReport(BYTE reportId, UINT32 __reportBufferSize, BYTE* out_reportBuffer)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IHidGameControllerProvider).abi_GetFeatureReport(reportId, __reportBufferSize, out_reportBuffer));
	}
	final void SendFeatureReport(BYTE reportId, UINT32 __reportBufferSize, BYTE* reportBuffer)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IHidGameControllerProvider).abi_SendFeatureReport(reportId, __reportBufferSize, reportBuffer));
	}
	final void SendOutputReport(BYTE reportId, UINT32 __reportBufferSize, BYTE* reportBuffer)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IHidGameControllerProvider).abi_SendOutputReport(reportId, __reportBufferSize, reportBuffer));
	}
	final Windows.Gaming.Input.Custom.GameControllerVersionInfo FirmwareVersionInfo()
	{
		Windows.Gaming.Input.Custom.GameControllerVersionInfo _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_FirmwareVersionInfo(&_ret));
		return _ret;
	}
	final UINT16 HardwareProductId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_HardwareProductId(&_ret));
		return _ret;
	}
	final UINT16 HardwareVendorId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_HardwareVendorId(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.Custom.GameControllerVersionInfo HardwareVersionInfo()
	{
		Windows.Gaming.Input.Custom.GameControllerVersionInfo _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_HardwareVersionInfo(&_ret));
		return _ret;
	}
	final bool IsConnected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_IsConnected(&_ret));
		return _ret;
	}
}

interface XusbGameControllerProvider : Windows.Gaming.Input.Custom.IXusbGameControllerProvider, Windows.Gaming.Input.Custom.IGameControllerProvider
{
extern(Windows):
	final void SetVibration(double lowFrequencyMotorSpeed, double highFrequencyMotorSpeed)
	{
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IXusbGameControllerProvider).abi_SetVibration(lowFrequencyMotorSpeed, highFrequencyMotorSpeed));
	}
	final Windows.Gaming.Input.Custom.GameControllerVersionInfo FirmwareVersionInfo()
	{
		Windows.Gaming.Input.Custom.GameControllerVersionInfo _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_FirmwareVersionInfo(&_ret));
		return _ret;
	}
	final UINT16 HardwareProductId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_HardwareProductId(&_ret));
		return _ret;
	}
	final UINT16 HardwareVendorId()
	{
		UINT16 _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_HardwareVendorId(&_ret));
		return _ret;
	}
	final Windows.Gaming.Input.Custom.GameControllerVersionInfo HardwareVersionInfo()
	{
		Windows.Gaming.Input.Custom.GameControllerVersionInfo _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_HardwareVersionInfo(&_ret));
		return _ret;
	}
	final bool IsConnected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Gaming.Input.Custom.IGameControllerProvider).get_IsConnected(&_ret));
		return _ret;
	}
}

enum GipFirmwareUpdateStatus
{
	Completed = 0,
	UpToDate = 1,
	Failed = 2
}

enum GipMessageClass
{
	Command = 0,
	LowLatency = 1,
	StandardLatency = 2
}

enum XusbDeviceSubtype
{
	Unknown = 0,
	Gamepad = 1,
	ArcadePad = 2,
	ArcadeStick = 3,
	FlightStick = 4,
	Wheel = 5,
	Guitar = 6,
	GuitarAlternate = 7,
	GuitarBass = 8,
	DrumKit = 9,
	DancePad = 10
}

enum XusbDeviceType
{
	Unknown = 0,
	Gamepad = 1
}