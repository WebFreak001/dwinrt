module Windows.Security.Credentials;

import dwinrt;

@uuid("54ef13a1-bf26-47b5-97dd-de779b7cad58")
@WinrtFactory("Windows.Security.Credentials.PasswordCredential")
interface ICredentialFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreatePasswordCredential(HSTRING resource, HSTRING userName, HSTRING password, Windows.Security.Credentials.PasswordCredential* return_credential);
}

@uuid("9585ef8d-457b-4847-b11a-fa960bbdb138")
@WinrtFactory("Windows.Security.Credentials.KeyCredential")
interface IKeyCredential : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
	HRESULT abi_RetrievePublicKeyWithDefaultBlobType(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_RetrievePublicKeyWithBlobType(Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType blobType, Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_RequestSignAsync(Windows.Storage.Streams.IBuffer data, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.KeyCredentialOperationResult)* return_value);
	HRESULT abi_GetAttestationAsync(Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.KeyCredentialAttestationResult)* return_value);
}

@uuid("78aab3a1-a3c1-4103-b6cc-472c44171cbb")
@WinrtFactory("Windows.Security.Credentials.KeyCredentialAttestationResult")
interface IKeyCredentialAttestationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CertificateChainBuffer(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_AttestationBuffer(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Status(Windows.Security.Credentials.KeyCredentialAttestationStatus* return_value);
}

@uuid("6aac468b-0ef1-4ce0-8290-4106da6a63b5")
@WinrtFactory("Windows.Security.Credentials.KeyCredentialManager")
interface IKeyCredentialManagerStatics : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_IsSupportedAsync(Windows.Foundation.IAsyncOperation!(bool)* return_value);
	HRESULT abi_RenewAttestationAsync(Windows.Foundation.IAsyncAction* return_operation);
	HRESULT abi_RequestCreateAsync(HSTRING name, Windows.Security.Credentials.KeyCredentialCreationOption option, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.KeyCredentialRetrievalResult)* return_value);
	HRESULT abi_OpenAsync(HSTRING name, Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.KeyCredentialRetrievalResult)* return_value);
	HRESULT abi_DeleteAsync(HSTRING name, Windows.Foundation.IAsyncAction* return_operation);
}

@uuid("f53786c1-5261-4cdd-976d-cc909ac71620")
@WinrtFactory("Windows.Security.Credentials.KeyCredentialOperationResult")
interface IKeyCredentialOperationResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Result(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Status(Windows.Security.Credentials.KeyCredentialStatus* return_value);
}

@uuid("58cd7703-8d87-4249-9b58-f6598cc9644e")
@WinrtFactory("Windows.Security.Credentials.KeyCredentialRetrievalResult")
interface IKeyCredentialRetrievalResult : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Credential(Windows.Security.Credentials.KeyCredential* return_value);
	HRESULT get_Status(Windows.Security.Credentials.KeyCredentialStatus* return_value);
}

@uuid("6ab18989-c720-41a7-a6c1-feadb36329a0")
@WinrtFactory("Windows.Security.Credentials.PasswordCredential")
interface IPasswordCredential : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Resource(HSTRING* return_resource);
	HRESULT set_Resource(HSTRING resource);
	HRESULT get_UserName(HSTRING* return_userName);
	HRESULT set_UserName(HSTRING userName);
	HRESULT get_Password(HSTRING* return_password);
	HRESULT set_Password(HSTRING password);
	HRESULT abi_RetrievePassword();
	HRESULT get_Properties(Windows.Foundation.Collections.IPropertySet* return_props);
}

@uuid("61fd2c0b-c8d4-48c1-a54f-bc5a64205af2")
@WinrtFactory("Windows.Security.Credentials.PasswordVault")
interface IPasswordVault : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_Add(Windows.Security.Credentials.PasswordCredential credential);
	HRESULT abi_Remove(Windows.Security.Credentials.PasswordCredential credential);
	HRESULT abi_Retrieve(HSTRING resource, HSTRING userName, Windows.Security.Credentials.PasswordCredential* return_credential);
	HRESULT abi_FindAllByResource(HSTRING resource, Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.PasswordCredential)* return_credentials);
	HRESULT abi_FindAllByUserName(HSTRING userName, Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.PasswordCredential)* return_credentials);
	HRESULT abi_RetrieveAll(Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.PasswordCredential)* return_credentials);
}

@uuid("69473eb2-8031-49be-80bb-96cb46d99aba")
interface IWebAccount : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_WebAccountProvider(Windows.Security.Credentials.WebAccountProvider* return_value);
	HRESULT get_UserName(HSTRING* return_value);
	HRESULT get_State(Windows.Security.Credentials.WebAccountState* return_value);
}

@uuid("7b56d6f8-990b-4eb5-94a7-5621f3a8b824")
@WinrtFactory("Windows.Security.Credentials.WebAccount")
interface IWebAccount2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_Properties(Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING)* return_value);
	HRESULT abi_GetPictureAsync(Windows.Security.Credentials.WebAccountPictureSize desizedSize, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream)* return_asyncInfo);
	HRESULT abi_SignOutAsync(Windows.Foundation.IAsyncAction* return_asyncInfo);
	HRESULT abi_SignOutWithClientIdAsync(HSTRING clientId, Windows.Foundation.IAsyncAction* return_asyncInfo);
}

@uuid("ac9afb39-1de9-4e92-b78f-0581a87f6e5c")
@WinrtFactory("Windows.Security.Credentials.WebAccount")
interface IWebAccountFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWebAccount(Windows.Security.Credentials.WebAccountProvider webAccountProvider, HSTRING userName, Windows.Security.Credentials.WebAccountState state, Windows.Security.Credentials.WebAccount* return_instance);
}

@uuid("29dcc8c3-7ab9-4a7c-a336-b942f9dbf7c7")
@WinrtFactory("Windows.Security.Credentials.WebAccountProvider")
interface IWebAccountProvider : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_Id(HSTRING* return_value);
	HRESULT get_DisplayName(HSTRING* return_value);
	deprecated("IconUri may be altered or unavailable for releases after Windows 8.2. Instead, use Icon.")
	HRESULT get_IconUri(Windows.Foundation.Uri* return_value);
}

@uuid("4a01eb05-4e42-41d4-b518-e008a5163614")
@WinrtFactory("Windows.Security.Credentials.WebAccountProvider")
interface IWebAccountProvider2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_DisplayPurpose(HSTRING* return_value);
	HRESULT get_Authority(HSTRING* return_value);
}

@uuid("da1c518b-970d-4d49-825c-f2706f8ca7fe")
@WinrtFactory("Windows.Security.Credentials.WebAccountProvider")
interface IWebAccountProvider3 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_User(Windows.System.User* return_user);
}

@uuid("1d767df1-e1e1-4b9a-a774-5c7c7e3bf371")
@WinrtFactory("Windows.Security.Credentials.WebAccountProvider")
interface IWebAccountProviderFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateWebAccountProvider(HSTRING id, HSTRING displayName, Windows.Foundation.Uri iconUri, Windows.Security.Credentials.WebAccountProvider* return_instance);
}

interface KeyCredential
{
}

interface KeyCredentialAttestationResult
{
}

interface KeyCredentialOperationResult
{
}

interface KeyCredentialRetrievalResult
{
}

interface PasswordCredential
{
}

interface PasswordCredentialPropertyStore
{
}

interface PasswordVault
{
}

interface WebAccount
{
}

interface WebAccountProvider
{
}

enum KeyCredentialAttestationStatus
{
	Success = 0,
	UnknownError = 1,
	NotSupported = 2,
	TemporaryFailure = 3
}

enum KeyCredentialCreationOption
{
	ReplaceExisting = 0,
	FailIfExists = 1
}

enum KeyCredentialStatus
{
	Success = 0,
	UnknownError = 1,
	NotFound = 2,
	UserCanceled = 3,
	UserPrefersPassword = 4,
	CredentialAlreadyExists = 5,
	SecurityDeviceLocked = 6
}

enum WebAccountPictureSize
{
	Size64x64 = 64,
	Size208x208 = 208,
	Size424x424 = 424,
	Size1080x1080 = 1080
}

enum WebAccountState
{
	None = 0,
	Connected = 1,
	Error = 2
}