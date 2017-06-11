module Windows.Security.Credentials;

import dwinrt;

@uuid("54ef13a1-bf26-47b5-97dd-de779b7cad58")
@WinrtFactory("Windows.Security.Credentials.PasswordCredential")
interface ICredentialFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreatePasswordCredential(HSTRING resource, HSTRING userName, HSTRING password, Windows.Security.Credentials.PasswordCredential* return_credential);
}

@uuid("9585ef8d-457b-4847-b11a-fa960bbdb138")
@WinrtFactory("Windows.Security.Credentials.KeyCredential")
interface IKeyCredential : IInspectable
{
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
extern(Windows):
	HRESULT get_CertificateChainBuffer(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_AttestationBuffer(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Status(Windows.Security.Credentials.KeyCredentialAttestationStatus* return_value);
}

@uuid("6aac468b-0ef1-4ce0-8290-4106da6a63b5")
@WinrtFactory("Windows.Security.Credentials.KeyCredentialManager")
interface IKeyCredentialManagerStatics : IInspectable
{
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
extern(Windows):
	HRESULT get_Result(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Status(Windows.Security.Credentials.KeyCredentialStatus* return_value);
}

@uuid("58cd7703-8d87-4249-9b58-f6598cc9644e")
@WinrtFactory("Windows.Security.Credentials.KeyCredentialRetrievalResult")
interface IKeyCredentialRetrievalResult : IInspectable
{
extern(Windows):
	HRESULT get_Credential(Windows.Security.Credentials.KeyCredential* return_value);
	HRESULT get_Status(Windows.Security.Credentials.KeyCredentialStatus* return_value);
}

@uuid("6ab18989-c720-41a7-a6c1-feadb36329a0")
@WinrtFactory("Windows.Security.Credentials.PasswordCredential")
interface IPasswordCredential : IInspectable
{
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
extern(Windows):
	HRESULT get_WebAccountProvider(Windows.Security.Credentials.WebAccountProvider* return_value);
	HRESULT get_UserName(HSTRING* return_value);
	HRESULT get_State(Windows.Security.Credentials.WebAccountState* return_value);
}

@uuid("7b56d6f8-990b-4eb5-94a7-5621f3a8b824")
@WinrtFactory("Windows.Security.Credentials.WebAccount")
interface IWebAccount2 : IInspectable
{
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
extern(Windows):
	HRESULT abi_CreateWebAccount(Windows.Security.Credentials.WebAccountProvider webAccountProvider, HSTRING userName, Windows.Security.Credentials.WebAccountState state, Windows.Security.Credentials.WebAccount* return_instance);
}

@uuid("29dcc8c3-7ab9-4a7c-a336-b942f9dbf7c7")
@WinrtFactory("Windows.Security.Credentials.WebAccountProvider")
interface IWebAccountProvider : IInspectable
{
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
extern(Windows):
	HRESULT get_DisplayPurpose(HSTRING* return_value);
	HRESULT get_Authority(HSTRING* return_value);
}

@uuid("da1c518b-970d-4d49-825c-f2706f8ca7fe")
@WinrtFactory("Windows.Security.Credentials.WebAccountProvider")
interface IWebAccountProvider3 : IInspectable
{
extern(Windows):
	HRESULT get_User(Windows.System.User* return_user);
}

@uuid("1d767df1-e1e1-4b9a-a774-5c7c7e3bf371")
@WinrtFactory("Windows.Security.Credentials.WebAccountProvider")
interface IWebAccountProviderFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateWebAccountProvider(HSTRING id, HSTRING displayName, Windows.Foundation.Uri iconUri, Windows.Security.Credentials.WebAccountProvider* return_instance);
}

interface KeyCredential : Windows.Security.Credentials.IKeyCredential
{
extern(Windows):
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredential).get_Name(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RetrievePublicKeyWithDefaultBlobType()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredential).abi_RetrievePublicKeyWithDefaultBlobType(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer RetrievePublicKeyWithBlobType(Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType blobType)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredential).abi_RetrievePublicKeyWithBlobType(blobType, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.KeyCredentialOperationResult) RequestSignAsync(Windows.Storage.Streams.IBuffer data)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.KeyCredentialOperationResult) _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredential).abi_RequestSignAsync(data, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.KeyCredentialAttestationResult) GetAttestationAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Credentials.KeyCredentialAttestationResult) _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredential).abi_GetAttestationAsync(&_ret));
		return _ret;
	}
}

interface KeyCredentialAttestationResult : Windows.Security.Credentials.IKeyCredentialAttestationResult
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer CertificateChainBuffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredentialAttestationResult).get_CertificateChainBuffer(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer AttestationBuffer()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredentialAttestationResult).get_AttestationBuffer(&_ret));
		return _ret;
	}
	final Windows.Security.Credentials.KeyCredentialAttestationStatus Status()
	{
		Windows.Security.Credentials.KeyCredentialAttestationStatus _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredentialAttestationResult).get_Status(&_ret));
		return _ret;
	}
}

interface KeyCredentialManager
{
}

interface KeyCredentialOperationResult : Windows.Security.Credentials.IKeyCredentialOperationResult
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer Result()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredentialOperationResult).get_Result(&_ret));
		return _ret;
	}
	final Windows.Security.Credentials.KeyCredentialStatus Status()
	{
		Windows.Security.Credentials.KeyCredentialStatus _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredentialOperationResult).get_Status(&_ret));
		return _ret;
	}
}

interface KeyCredentialRetrievalResult : Windows.Security.Credentials.IKeyCredentialRetrievalResult
{
extern(Windows):
	final Windows.Security.Credentials.KeyCredential Credential()
	{
		Windows.Security.Credentials.KeyCredential _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredentialRetrievalResult).get_Credential(&_ret));
		return _ret;
	}
	final Windows.Security.Credentials.KeyCredentialStatus Status()
	{
		Windows.Security.Credentials.KeyCredentialStatus _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IKeyCredentialRetrievalResult).get_Status(&_ret));
		return _ret;
	}
}

interface PasswordCredential : Windows.Security.Credentials.IPasswordCredential
{
extern(Windows):
	final HSTRING Resource()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordCredential).get_Resource(&_ret));
		return _ret;
	}
	final void Resource(HSTRING resource)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordCredential).set_Resource(resource));
	}
	final HSTRING UserName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordCredential).get_UserName(&_ret));
		return _ret;
	}
	final void UserName(HSTRING userName)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordCredential).set_UserName(userName));
	}
	final HSTRING Password()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordCredential).get_Password(&_ret));
		return _ret;
	}
	final void Password(HSTRING password)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordCredential).set_Password(password));
	}
	final void RetrievePassword()
	{
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordCredential).abi_RetrievePassword());
	}
	final Windows.Foundation.Collections.IPropertySet Properties()
	{
		Windows.Foundation.Collections.IPropertySet _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordCredential).get_Properties(&_ret));
		return _ret;
	}
}

interface PasswordCredentialPropertyStore : Windows.Foundation.Collections.IPropertySet, Windows.Foundation.Collections.IObservableMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IMap!(HSTRING, IInspectable), Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))
{
extern(Windows):
	final  IInspectable Lookup(HSTRING key)
	{
		 IInspectable _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Lookup(key, &_ret));
		return _ret;
	}
	final uint Size()
	{
		uint _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).get_Size(&_ret));
		return _ret;
	}
	final bool HasKey(HSTRING key)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_HasKey(key, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING,	 IInspectable) GetView()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING,  IInspectable) _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_GetView(&_ret));
		return _ret;
	}
	final bool Insert(HSTRING key,	IInspectable value)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Insert(key, value, &_ret));
		return _ret;
	}
	final void Remove(HSTRING key)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Remove(key));
	}
	final void Clear()
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IMap!(HSTRING, IInspectable)).abi_Clear());
	}
	final void First(Windows.Foundation.Collections.IIterator!(Windows.Foundation.IWwwFormUrlDecoderEntry)* out_first)
	{
		Debug.OK(this.as!(Windows.Foundation.Collections.IIterable!(Windows.Foundation.Collections.IKeyValuePair!(HSTRING, IInspectable))).abi_First(out_first));
	}
}

interface PasswordVault : Windows.Security.Credentials.IPasswordVault
{
extern(Windows):
	final void Add(Windows.Security.Credentials.PasswordCredential credential)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordVault).abi_Add(credential));
	}
	final void Remove(Windows.Security.Credentials.PasswordCredential credential)
	{
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordVault).abi_Remove(credential));
	}
	final Windows.Security.Credentials.PasswordCredential Retrieve(HSTRING resource, HSTRING userName)
	{
		Windows.Security.Credentials.PasswordCredential _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordVault).abi_Retrieve(resource, userName, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.PasswordCredential) FindAllByResource(HSTRING resource)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.PasswordCredential) _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordVault).abi_FindAllByResource(resource, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.PasswordCredential) FindAllByUserName(HSTRING userName)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.PasswordCredential) _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordVault).abi_FindAllByUserName(userName, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.PasswordCredential) RetrieveAll()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Credentials.PasswordCredential) _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IPasswordVault).abi_RetrieveAll(&_ret));
		return _ret;
	}
}

interface WebAccount : Windows.Security.Credentials.IWebAccount, Windows.Security.Credentials.IWebAccount2
{
extern(Windows):
	final Windows.Security.Credentials.WebAccountProvider WebAccountProvider()
	{
		Windows.Security.Credentials.WebAccountProvider _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccount).get_WebAccountProvider(&_ret));
		return _ret;
	}
	final HSTRING UserName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccount).get_UserName(&_ret));
		return _ret;
	}
	final Windows.Security.Credentials.WebAccountState State()
	{
		Windows.Security.Credentials.WebAccountState _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccount).get_State(&_ret));
		return _ret;
	}
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccount2).get_Id(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) Properties()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccount2).get_Properties(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) GetPictureAsync(Windows.Security.Credentials.WebAccountPictureSize desizedSize)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IRandomAccessStream) _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccount2).abi_GetPictureAsync(desizedSize, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SignOutAsync()
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccount2).abi_SignOutAsync(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction SignOutWithClientIdAsync(HSTRING clientId)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccount2).abi_SignOutWithClientIdAsync(clientId, &_ret));
		return _ret;
	}
}

interface WebAccountProvider : Windows.Security.Credentials.IWebAccountProvider, Windows.Security.Credentials.IWebAccountProvider2, Windows.Security.Credentials.IWebAccountProvider3
{
extern(Windows):
	final HSTRING Id()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccountProvider).get_Id(&_ret));
		return _ret;
	}
	final HSTRING DisplayName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccountProvider).get_DisplayName(&_ret));
		return _ret;
	}
	deprecated("IconUri may be altered or unavailable for releases after Windows 8.2. Instead, use Icon.")
	final Windows.Foundation.Uri IconUri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccountProvider).get_IconUri(&_ret));
		return _ret;
	}
	final HSTRING DisplayPurpose()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccountProvider2).get_DisplayPurpose(&_ret));
		return _ret;
	}
	final HSTRING Authority()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccountProvider2).get_Authority(&_ret));
		return _ret;
	}
	final Windows.System.User User()
	{
		Windows.System.User _ret;
		Debug.OK(this.as!(Windows.Security.Credentials.IWebAccountProvider3).get_User(&_ret));
		return _ret;
	}
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