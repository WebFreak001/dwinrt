module Windows.ApplicationModel.Store.LicenseManagement;

import dwinrt;

@uuid("b5ac3ae0-da47-4f20-9a23-09182c9476ff")
@WinrtFactory("Windows.ApplicationModel.Store.LicenseManagement.LicenseManager")
interface ILicenseManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_AddLicenseAsync(Windows.Storage.Streams.IBuffer license, Windows.Foundation.IAsyncAction* return_action);
	HRESULT abi_GetSatisfactionInfosAsync(Windows.Foundation.Collections.IIterable!(HSTRING) contentIds, Windows.Foundation.Collections.IIterable!(HSTRING) keyIds, Windows.Foundation.IAsyncOperation!(Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionResult)* return_operation);
}

@uuid("ab2ec47b-1f79-4480-b87e-2c499e601ba3")
@WinrtFactory("Windows.ApplicationModel.Store.LicenseManagement.LicenseManager")
interface ILicenseManagerStatics2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_RefreshLicensesAsync(Windows.ApplicationModel.Store.LicenseManagement.LicenseRefreshOption refreshOption, Windows.Foundation.IAsyncAction* return_action);
}

@uuid("3ccbb08f-db31-48d5-8384-fa17c81474e2")
@WinrtFactory("Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionInfo")
interface ILicenseSatisfactionInfo : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_SatisfiedByDevice(bool* return_value);
	HRESULT get_SatisfiedByOpenLicense(bool* return_value);
	HRESULT get_SatisfiedByTrial(bool* return_value);
	HRESULT get_SatisfiedByPass(bool* return_value);
	HRESULT get_SatisfiedByInstallMedia(bool* return_value);
	HRESULT get_SatisfiedBySignedInUser(bool* return_value);
	HRESULT get_IsSatisfied(bool* return_value);
}

@uuid("3c674f73-3c87-4ee1-8201-f428359bd3af")
@WinrtFactory("Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionResult")
interface ILicenseSatisfactionResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_LicenseSatisfactionInfos(Windows.Foundation.Collections.IMapView!(HSTRING,Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionInfo*)* return_value);
	HRESULT get_ExtendedError(HRESULT* return_value);
}

interface LicenseSatisfactionInfo
{
}

interface LicenseSatisfactionResult
{
}

enum LicenseRefreshOption
{
	RunningLicenses = 0,
	AllLicenses = 1
}