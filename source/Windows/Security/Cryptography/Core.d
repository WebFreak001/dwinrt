module Windows.Security.Cryptography.Core;

import dwinrt;

@uuid("caf6fce4-67c0-46aa-84f9-752e77449f9b")
@WinrtFactory("Windows.Security.Cryptography.Core.AsymmetricAlgorithmNames")
interface IAsymmetricAlgorithmNamesStatics : IInspectable
{
extern(Windows):
	HRESULT get_RsaPkcs1(HSTRING* return_value);
	HRESULT get_RsaOaepSha1(HSTRING* return_value);
	HRESULT get_RsaOaepSha256(HSTRING* return_value);
	HRESULT get_RsaOaepSha384(HSTRING* return_value);
	HRESULT get_RsaOaepSha512(HSTRING* return_value);
	HRESULT get_EcdsaP256Sha256(HSTRING* return_value);
	HRESULT get_EcdsaP384Sha384(HSTRING* return_value);
	HRESULT get_EcdsaP521Sha512(HSTRING* return_value);
	HRESULT get_DsaSha1(HSTRING* return_value);
	HRESULT get_DsaSha256(HSTRING* return_value);
	HRESULT get_RsaSignPkcs1Sha1(HSTRING* return_value);
	HRESULT get_RsaSignPkcs1Sha256(HSTRING* return_value);
	HRESULT get_RsaSignPkcs1Sha384(HSTRING* return_value);
	HRESULT get_RsaSignPkcs1Sha512(HSTRING* return_value);
	HRESULT get_RsaSignPssSha1(HSTRING* return_value);
	HRESULT get_RsaSignPssSha256(HSTRING* return_value);
	HRESULT get_RsaSignPssSha384(HSTRING* return_value);
	HRESULT get_RsaSignPssSha512(HSTRING* return_value);
}

@uuid("f141c0d6-4bff-4f23-ba66-6045b137d5df")
@WinrtFactory("Windows.Security.Cryptography.Core.AsymmetricAlgorithmNames")
interface IAsymmetricAlgorithmNamesStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_EcdsaSha256(HSTRING* return_value);
	HRESULT get_EcdsaSha384(HSTRING* return_value);
	HRESULT get_EcdsaSha512(HSTRING* return_value);
}

@uuid("e8d2ff37-6259-4e88-b7e0-94191fde699e")
@WinrtFactory("Windows.Security.Cryptography.Core.AsymmetricKeyAlgorithmProvider")
interface IAsymmetricKeyAlgorithmProvider : IInspectable
{
extern(Windows):
	HRESULT get_AlgorithmName(HSTRING* return_value);
	HRESULT abi_CreateKeyPair(UINT32 keySize, Windows.Security.Cryptography.Core.CryptographicKey* return_key);
	HRESULT abi_ImportDefaultPrivateKeyBlob(Windows.Storage.Streams.IBuffer keyBlob, Windows.Security.Cryptography.Core.CryptographicKey* return_key);
	HRESULT abi_ImportKeyPairWithBlobType(Windows.Storage.Streams.IBuffer keyBlob, Windows.Security.Cryptography.Core.CryptographicPrivateKeyBlobType BlobType, Windows.Security.Cryptography.Core.CryptographicKey* return_key);
	HRESULT abi_ImportDefaultPublicKeyBlob(Windows.Storage.Streams.IBuffer keyBlob, Windows.Security.Cryptography.Core.CryptographicKey* return_key);
	HRESULT abi_ImportPublicKeyWithBlobType(Windows.Storage.Streams.IBuffer keyBlob, Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType BlobType, Windows.Security.Cryptography.Core.CryptographicKey* return_key);
}

@uuid("4e322a7e-7c4d-4997-ac4f-1b848b36306e")
@WinrtFactory("Windows.Security.Cryptography.Core.AsymmetricKeyAlgorithmProvider")
interface IAsymmetricKeyAlgorithmProvider2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateKeyPairWithCurveName(HSTRING curveName, Windows.Security.Cryptography.Core.CryptographicKey* return_key);
	HRESULT abi_CreateKeyPairWithCurveParameters(UINT32 __parametersSize, ubyte* parameters, Windows.Security.Cryptography.Core.CryptographicKey* return_key);
}

@uuid("425bde18-a7f3-47a6-a8d2-c48d6033a65c")
@WinrtFactory("Windows.Security.Cryptography.Core.AsymmetricKeyAlgorithmProvider")
interface IAsymmetricKeyAlgorithmProviderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_OpenAlgorithm(HSTRING algorithm, Windows.Security.Cryptography.Core.AsymmetricKeyAlgorithmProvider* return_provider);
}

@uuid("9fea0639-6ff7-4c85-a095-95eb31715eb9")
@WinrtFactory("Windows.Security.Cryptography.Core.CryptographicEngine")
interface ICryptographicEngineStatics : IInspectable
{
extern(Windows):
	HRESULT abi_Encrypt(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer iv, Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_Decrypt(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer iv, Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_EncryptAndAuthenticate(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer nonce, Windows.Storage.Streams.IBuffer authenticatedData, Windows.Security.Cryptography.Core.EncryptedAndAuthenticatedData* return_value);
	HRESULT abi_DecryptAndAuthenticate(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer nonce, Windows.Storage.Streams.IBuffer authenticationTag, Windows.Storage.Streams.IBuffer authenticatedData, Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_Sign(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_VerifySignature(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer signature, bool* return_isAuthenticated);
	HRESULT abi_DeriveKeyMaterial(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Security.Cryptography.Core.KeyDerivationParameters parameters, UINT32 desiredKeySize, Windows.Storage.Streams.IBuffer* return_keyMaterial);
}

@uuid("675948fe-df9f-4191-92c7-6ce6f58420e0")
@WinrtFactory("Windows.Security.Cryptography.Core.CryptographicEngine")
interface ICryptographicEngineStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_SignHashedData(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_VerifySignatureWithHashInput(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer signature, bool* return_isAuthenticated);
	HRESULT abi_DecryptAsync(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer iv, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_value);
	HRESULT abi_SignAsync(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_value);
	HRESULT abi_SignHashedDataAsync(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_value);
}

@uuid("ed2a3b70-8e7b-4009-8401-ffd1a62eeb27")
@WinrtFactory("Windows.Security.Cryptography.Core.CryptographicKey")
interface ICryptographicKey : IInspectable
{
extern(Windows):
	HRESULT get_KeySize(UINT32* return_value);
	HRESULT abi_ExportDefaultPrivateKeyBlobType(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_ExportPrivateKeyWithBlobType(Windows.Security.Cryptography.Core.CryptographicPrivateKeyBlobType BlobType, Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_ExportDefaultPublicKeyBlobType(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_ExportPublicKeyWithBlobType(Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType BlobType, Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("b3ff930c-aeeb-409e-b7d4-9b95295aaecf")
@WinrtFactory("Windows.Security.Cryptography.Core.EccCurveNames")
interface IEccCurveNamesStatics : IInspectable
{
extern(Windows):
	HRESULT get_BrainpoolP160r1(HSTRING* return_value);
	HRESULT get_BrainpoolP160t1(HSTRING* return_value);
	HRESULT get_BrainpoolP192r1(HSTRING* return_value);
	HRESULT get_BrainpoolP192t1(HSTRING* return_value);
	HRESULT get_BrainpoolP224r1(HSTRING* return_value);
	HRESULT get_BrainpoolP224t1(HSTRING* return_value);
	HRESULT get_BrainpoolP256r1(HSTRING* return_value);
	HRESULT get_BrainpoolP256t1(HSTRING* return_value);
	HRESULT get_BrainpoolP320r1(HSTRING* return_value);
	HRESULT get_BrainpoolP320t1(HSTRING* return_value);
	HRESULT get_BrainpoolP384r1(HSTRING* return_value);
	HRESULT get_BrainpoolP384t1(HSTRING* return_value);
	HRESULT get_BrainpoolP512r1(HSTRING* return_value);
	HRESULT get_BrainpoolP512t1(HSTRING* return_value);
	HRESULT get_Curve25519(HSTRING* return_value);
	HRESULT get_Ec192wapi(HSTRING* return_value);
	HRESULT get_NistP192(HSTRING* return_value);
	HRESULT get_NistP224(HSTRING* return_value);
	HRESULT get_NistP256(HSTRING* return_value);
	HRESULT get_NistP384(HSTRING* return_value);
	HRESULT get_NistP521(HSTRING* return_value);
	HRESULT get_NumsP256t1(HSTRING* return_value);
	HRESULT get_NumsP384t1(HSTRING* return_value);
	HRESULT get_NumsP512t1(HSTRING* return_value);
	HRESULT get_SecP160k1(HSTRING* return_value);
	HRESULT get_SecP160r1(HSTRING* return_value);
	HRESULT get_SecP160r2(HSTRING* return_value);
	HRESULT get_SecP192k1(HSTRING* return_value);
	HRESULT get_SecP192r1(HSTRING* return_value);
	HRESULT get_SecP224k1(HSTRING* return_value);
	HRESULT get_SecP224r1(HSTRING* return_value);
	HRESULT get_SecP256k1(HSTRING* return_value);
	HRESULT get_SecP256r1(HSTRING* return_value);
	HRESULT get_SecP384r1(HSTRING* return_value);
	HRESULT get_SecP521r1(HSTRING* return_value);
	HRESULT get_Wtls7(HSTRING* return_value);
	HRESULT get_Wtls9(HSTRING* return_value);
	HRESULT get_Wtls12(HSTRING* return_value);
	HRESULT get_X962P192v1(HSTRING* return_value);
	HRESULT get_X962P192v2(HSTRING* return_value);
	HRESULT get_X962P192v3(HSTRING* return_value);
	HRESULT get_X962P239v1(HSTRING* return_value);
	HRESULT get_X962P239v2(HSTRING* return_value);
	HRESULT get_X962P239v3(HSTRING* return_value);
	HRESULT get_X962P256v1(HSTRING* return_value);
	HRESULT get_AllEccCurveNames(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("6fa42fe7-1ecb-4b00-bea5-60b83f862f17")
@WinrtFactory("Windows.Security.Cryptography.Core.EncryptedAndAuthenticatedData")
interface IEncryptedAndAuthenticatedData : IInspectable
{
extern(Windows):
	HRESULT get_EncryptedData(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_AuthenticationTag(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("6b5e0516-de96-4f0a-8d57-dcc9dae36c76")
@WinrtFactory("Windows.Security.Cryptography.Core.HashAlgorithmNames")
interface IHashAlgorithmNamesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Md5(HSTRING* return_value);
	HRESULT get_Sha1(HSTRING* return_value);
	HRESULT get_Sha256(HSTRING* return_value);
	HRESULT get_Sha384(HSTRING* return_value);
	HRESULT get_Sha512(HSTRING* return_value);
}

@uuid("be9b3080-b2c3-422b-bce1-ec90efb5d7b5")
@WinrtFactory("Windows.Security.Cryptography.Core.HashAlgorithmProvider")
interface IHashAlgorithmProvider : IInspectable
{
extern(Windows):
	HRESULT get_AlgorithmName(HSTRING* return_value);
	HRESULT get_HashLength(UINT32* return_value);
	HRESULT abi_HashData(Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer* return_value);
	HRESULT abi_CreateHash(Windows.Security.Cryptography.Core.CryptographicHash* return_Value);
}

@uuid("9fac9741-5cc4-4336-ae38-6212b75a915a")
@WinrtFactory("Windows.Security.Cryptography.Core.HashAlgorithmProvider")
interface IHashAlgorithmProviderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_OpenAlgorithm(HSTRING algorithm, Windows.Security.Cryptography.Core.HashAlgorithmProvider* return_provider);
}

@uuid("5904d1b6-ad31-4603-a3a4-b1bda98e2562")
@WinrtFactory("Windows.Security.Cryptography.Core.CryptographicHash")
interface IHashComputation : IInspectable
{
extern(Windows):
	HRESULT abi_Append(Windows.Storage.Streams.IBuffer data);
	HRESULT abi_GetValueAndReset(Windows.Storage.Streams.IBuffer* return_value);
}

@uuid("7b6e363e-94d2-4739-a57b-022e0c3a402a")
@WinrtFactory("Windows.Security.Cryptography.Core.KeyDerivationAlgorithmNames")
interface IKeyDerivationAlgorithmNamesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Pbkdf2Md5(HSTRING* return_value);
	HRESULT get_Pbkdf2Sha1(HSTRING* return_value);
	HRESULT get_Pbkdf2Sha256(HSTRING* return_value);
	HRESULT get_Pbkdf2Sha384(HSTRING* return_value);
	HRESULT get_Pbkdf2Sha512(HSTRING* return_value);
	HRESULT get_Sp800108CtrHmacMd5(HSTRING* return_value);
	HRESULT get_Sp800108CtrHmacSha1(HSTRING* return_value);
	HRESULT get_Sp800108CtrHmacSha256(HSTRING* return_value);
	HRESULT get_Sp800108CtrHmacSha384(HSTRING* return_value);
	HRESULT get_Sp800108CtrHmacSha512(HSTRING* return_value);
	HRESULT get_Sp80056aConcatMd5(HSTRING* return_value);
	HRESULT get_Sp80056aConcatSha1(HSTRING* return_value);
	HRESULT get_Sp80056aConcatSha256(HSTRING* return_value);
	HRESULT get_Sp80056aConcatSha384(HSTRING* return_value);
	HRESULT get_Sp80056aConcatSha512(HSTRING* return_value);
}

@uuid("57953fab-6044-466f-97f4-337b7808384d")
@WinrtFactory("Windows.Security.Cryptography.Core.KeyDerivationAlgorithmNames")
interface IKeyDerivationAlgorithmNamesStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_CapiKdfMd5(HSTRING* return_value);
	HRESULT get_CapiKdfSha1(HSTRING* return_value);
	HRESULT get_CapiKdfSha256(HSTRING* return_value);
	HRESULT get_CapiKdfSha384(HSTRING* return_value);
	HRESULT get_CapiKdfSha512(HSTRING* return_value);
}

@uuid("e1fba83b-4671-43b7-9158-763aaa98b6bf")
@WinrtFactory("Windows.Security.Cryptography.Core.KeyDerivationAlgorithmProvider")
interface IKeyDerivationAlgorithmProvider : IInspectable
{
extern(Windows):
	HRESULT get_AlgorithmName(HSTRING* return_value);
	HRESULT abi_CreateKey(Windows.Storage.Streams.IBuffer keyMaterial, Windows.Security.Cryptography.Core.CryptographicKey* return_key);
}

@uuid("0a22097a-0a1c-443b-9418-b9498aeb1603")
@WinrtFactory("Windows.Security.Cryptography.Core.KeyDerivationAlgorithmProvider")
interface IKeyDerivationAlgorithmProviderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_OpenAlgorithm(HSTRING algorithm, Windows.Security.Cryptography.Core.KeyDerivationAlgorithmProvider* return_provider);
}

@uuid("7bf05967-047b-4a8c-964a-469ffd5522e2")
@WinrtFactory("Windows.Security.Cryptography.Core.KeyDerivationParameters")
interface IKeyDerivationParameters : IInspectable
{
extern(Windows):
	HRESULT get_KdfGenericBinary(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT set_KdfGenericBinary(Windows.Storage.Streams.IBuffer value);
	HRESULT get_IterationCount(UINT32* return_value);
}

@uuid("cd4166d1-417e-4f4c-b666-c0d879f3f8e0")
@WinrtFactory("Windows.Security.Cryptography.Core.KeyDerivationParameters")
interface IKeyDerivationParameters2 : IInspectable
{
extern(Windows):
	HRESULT get_Capi1KdfTargetAlgorithm(Windows.Security.Cryptography.Core.Capi1KdfTargetAlgorithm* return_value);
	HRESULT set_Capi1KdfTargetAlgorithm(Windows.Security.Cryptography.Core.Capi1KdfTargetAlgorithm value);
}

@uuid("ea961fbe-f37f-4146-9dfe-a456f1735f4b")
@WinrtFactory("Windows.Security.Cryptography.Core.KeyDerivationParameters")
interface IKeyDerivationParametersStatics : IInspectable
{
extern(Windows):
	HRESULT abi_BuildForPbkdf2(Windows.Storage.Streams.IBuffer pbkdf2Salt, UINT32 iterationCount, Windows.Security.Cryptography.Core.KeyDerivationParameters* return_value);
	HRESULT abi_BuildForSP800108(Windows.Storage.Streams.IBuffer label, Windows.Storage.Streams.IBuffer context, Windows.Security.Cryptography.Core.KeyDerivationParameters* return_value);
	HRESULT abi_BuildForSP80056a(Windows.Storage.Streams.IBuffer algorithmId, Windows.Storage.Streams.IBuffer partyUInfo, Windows.Storage.Streams.IBuffer partyVInfo, Windows.Storage.Streams.IBuffer suppPubInfo, Windows.Storage.Streams.IBuffer suppPrivInfo, Windows.Security.Cryptography.Core.KeyDerivationParameters* return_value);
}

@uuid("a5783dd5-58e3-4efb-b283-a1653126e1be")
@WinrtFactory("Windows.Security.Cryptography.Core.KeyDerivationParameters")
interface IKeyDerivationParametersStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_BuildForCapi1Kdf(Windows.Security.Cryptography.Core.Capi1KdfTargetAlgorithm capi1KdfTargetAlgorithm, Windows.Security.Cryptography.Core.KeyDerivationParameters* return_value);
}

@uuid("41412678-fb1e-43a4-895e-a9026e4390a3")
@WinrtFactory("Windows.Security.Cryptography.Core.MacAlgorithmNames")
interface IMacAlgorithmNamesStatics : IInspectable
{
extern(Windows):
	HRESULT get_HmacMd5(HSTRING* return_value);
	HRESULT get_HmacSha1(HSTRING* return_value);
	HRESULT get_HmacSha256(HSTRING* return_value);
	HRESULT get_HmacSha384(HSTRING* return_value);
	HRESULT get_HmacSha512(HSTRING* return_value);
	HRESULT get_AesCmac(HSTRING* return_value);
}

@uuid("4a3fc5c3-1cbd-41ce-a092-aa0bc5d2d2f5")
@WinrtFactory("Windows.Security.Cryptography.Core.MacAlgorithmProvider")
interface IMacAlgorithmProvider : IInspectable
{
extern(Windows):
	HRESULT get_AlgorithmName(HSTRING* return_value);
	HRESULT get_MacLength(UINT32* return_value);
	HRESULT abi_CreateKey(Windows.Storage.Streams.IBuffer keyMaterial, Windows.Security.Cryptography.Core.CryptographicKey* return_macKey);
}

@uuid("6da32a15-d931-42ed-8e7e-c301caee119c")
@WinrtFactory("Windows.Security.Cryptography.Core.MacAlgorithmProvider")
interface IMacAlgorithmProvider2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateHash(Windows.Storage.Streams.IBuffer keyMaterial, Windows.Security.Cryptography.Core.CryptographicHash* return_value);
}

@uuid("c9bdc147-cc77-4df0-9e4e-b921e080644c")
@WinrtFactory("Windows.Security.Cryptography.Core.MacAlgorithmProvider")
interface IMacAlgorithmProviderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_OpenAlgorithm(HSTRING algorithm, Windows.Security.Cryptography.Core.MacAlgorithmProvider* return_provider);
}

@uuid("77274814-d9d4-4cf5-b668-e0457df30894")
@WinrtFactory("Windows.Security.Cryptography.Core.PersistedKeyProvider")
interface IPersistedKeyProviderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_OpenKeyPairFromCertificateAsync(Windows.Security.Cryptography.Certificates.Certificate certificate, HSTRING hashAlgorithmName, Windows.Security.Cryptography.Core.CryptographicPadding padding, Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Core.CryptographicKey)* return_operation);
	HRESULT abi_OpenPublicKeyFromCertificate(Windows.Security.Cryptography.Certificates.Certificate certificate, HSTRING hashAlgorithmName, Windows.Security.Cryptography.Core.CryptographicPadding padding, Windows.Security.Cryptography.Core.CryptographicKey* return_key);
}

@uuid("6870727b-c996-4eae-84d7-79b2aeb73b9c")
@WinrtFactory("Windows.Security.Cryptography.Core.SymmetricAlgorithmNames")
interface ISymmetricAlgorithmNamesStatics : IInspectable
{
extern(Windows):
	HRESULT get_DesCbc(HSTRING* return_value);
	HRESULT get_DesEcb(HSTRING* return_value);
	HRESULT get_TripleDesCbc(HSTRING* return_value);
	HRESULT get_TripleDesEcb(HSTRING* return_value);
	HRESULT get_Rc2Cbc(HSTRING* return_value);
	HRESULT get_Rc2Ecb(HSTRING* return_value);
	HRESULT get_AesCbc(HSTRING* return_value);
	HRESULT get_AesEcb(HSTRING* return_value);
	HRESULT get_AesGcm(HSTRING* return_value);
	HRESULT get_AesCcm(HSTRING* return_value);
	HRESULT get_AesCbcPkcs7(HSTRING* return_value);
	HRESULT get_AesEcbPkcs7(HSTRING* return_value);
	HRESULT get_DesCbcPkcs7(HSTRING* return_value);
	HRESULT get_DesEcbPkcs7(HSTRING* return_value);
	HRESULT get_TripleDesCbcPkcs7(HSTRING* return_value);
	HRESULT get_TripleDesEcbPkcs7(HSTRING* return_value);
	HRESULT get_Rc2CbcPkcs7(HSTRING* return_value);
	HRESULT get_Rc2EcbPkcs7(HSTRING* return_value);
	HRESULT get_Rc4(HSTRING* return_value);
}

@uuid("3d7e4a33-3bd0-4902-8ac8-470d50d21376")
@WinrtFactory("Windows.Security.Cryptography.Core.SymmetricKeyAlgorithmProvider")
interface ISymmetricKeyAlgorithmProvider : IInspectable
{
extern(Windows):
	HRESULT get_AlgorithmName(HSTRING* return_value);
	HRESULT get_BlockLength(UINT32* return_value);
	HRESULT abi_CreateSymmetricKey(Windows.Storage.Streams.IBuffer keyMaterial, Windows.Security.Cryptography.Core.CryptographicKey* return_key);
}

@uuid("8d3b2326-1f37-491f-b60e-f5431b26b483")
@WinrtFactory("Windows.Security.Cryptography.Core.SymmetricKeyAlgorithmProvider")
interface ISymmetricKeyAlgorithmProviderStatics : IInspectable
{
extern(Windows):
	HRESULT abi_OpenAlgorithm(HSTRING algorithm, Windows.Security.Cryptography.Core.SymmetricKeyAlgorithmProvider* return_provider);
}

interface AsymmetricAlgorithmNames
{
	private static Windows.Security.Cryptography.Core.IAsymmetricAlgorithmNamesStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IAsymmetricAlgorithmNamesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IAsymmetricAlgorithmNamesStatics);
		return _staticInstance;
	}
	static HSTRING RsaPkcs1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaPkcs1(&_ret));
		return _ret;
	}
	static HSTRING RsaOaepSha1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaOaepSha1(&_ret));
		return _ret;
	}
	static HSTRING RsaOaepSha256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaOaepSha256(&_ret));
		return _ret;
	}
	static HSTRING RsaOaepSha384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaOaepSha384(&_ret));
		return _ret;
	}
	static HSTRING RsaOaepSha512()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaOaepSha512(&_ret));
		return _ret;
	}
	static HSTRING EcdsaP256Sha256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_EcdsaP256Sha256(&_ret));
		return _ret;
	}
	static HSTRING EcdsaP384Sha384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_EcdsaP384Sha384(&_ret));
		return _ret;
	}
	static HSTRING EcdsaP521Sha512()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_EcdsaP521Sha512(&_ret));
		return _ret;
	}
	static HSTRING DsaSha1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DsaSha1(&_ret));
		return _ret;
	}
	static HSTRING DsaSha256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DsaSha256(&_ret));
		return _ret;
	}
	static HSTRING RsaSignPkcs1Sha1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaSignPkcs1Sha1(&_ret));
		return _ret;
	}
	static HSTRING RsaSignPkcs1Sha256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaSignPkcs1Sha256(&_ret));
		return _ret;
	}
	static HSTRING RsaSignPkcs1Sha384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaSignPkcs1Sha384(&_ret));
		return _ret;
	}
	static HSTRING RsaSignPkcs1Sha512()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaSignPkcs1Sha512(&_ret));
		return _ret;
	}
	static HSTRING RsaSignPssSha1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaSignPssSha1(&_ret));
		return _ret;
	}
	static HSTRING RsaSignPssSha256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaSignPssSha256(&_ret));
		return _ret;
	}
	static HSTRING RsaSignPssSha384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaSignPssSha384(&_ret));
		return _ret;
	}
	static HSTRING RsaSignPssSha512()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_RsaSignPssSha512(&_ret));
		return _ret;
	}
}

interface AsymmetricKeyAlgorithmProvider : Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider, Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider2
{
extern(Windows):
	final HSTRING AlgorithmName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider)this.asInterface(uuid("e8d2ff37-6259-4e88-b7e0-94191fde699e"))).get_AlgorithmName(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Core.CryptographicKey CreateKeyPair(UINT32 keySize)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider)this.asInterface(uuid("e8d2ff37-6259-4e88-b7e0-94191fde699e"))).abi_CreateKeyPair(keySize, &_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Core.CryptographicKey ImportDefaultPrivateKeyBlob(Windows.Storage.Streams.IBuffer keyBlob)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider)this.asInterface(uuid("e8d2ff37-6259-4e88-b7e0-94191fde699e"))).abi_ImportDefaultPrivateKeyBlob(keyBlob, &_ret));
		return _ret;
	}
	alias ImportKeyPair = ImportDefaultPrivateKeyBlob;
	final Windows.Security.Cryptography.Core.CryptographicKey ImportKeyPairWithBlobType(Windows.Storage.Streams.IBuffer keyBlob, Windows.Security.Cryptography.Core.CryptographicPrivateKeyBlobType BlobType)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider)this.asInterface(uuid("e8d2ff37-6259-4e88-b7e0-94191fde699e"))).abi_ImportKeyPairWithBlobType(keyBlob, BlobType, &_ret));
		return _ret;
	}
	alias ImportKeyPair = ImportKeyPairWithBlobType;
	final Windows.Security.Cryptography.Core.CryptographicKey ImportDefaultPublicKeyBlob(Windows.Storage.Streams.IBuffer keyBlob)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider)this.asInterface(uuid("e8d2ff37-6259-4e88-b7e0-94191fde699e"))).abi_ImportDefaultPublicKeyBlob(keyBlob, &_ret));
		return _ret;
	}
	alias ImportPublicKey = ImportDefaultPublicKeyBlob;
	final Windows.Security.Cryptography.Core.CryptographicKey ImportPublicKeyWithBlobType(Windows.Storage.Streams.IBuffer keyBlob, Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType BlobType)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider)this.asInterface(uuid("e8d2ff37-6259-4e88-b7e0-94191fde699e"))).abi_ImportPublicKeyWithBlobType(keyBlob, BlobType, &_ret));
		return _ret;
	}
	alias ImportPublicKey = ImportPublicKeyWithBlobType;
	final Windows.Security.Cryptography.Core.CryptographicKey CreateKeyPairWithCurveName(HSTRING curveName)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider2)this.asInterface(uuid("4e322a7e-7c4d-4997-ac4f-1b848b36306e"))).abi_CreateKeyPairWithCurveName(curveName, &_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Core.CryptographicKey CreateKeyPairWithCurveParameters(UINT32 __parametersSize, ubyte* parameters)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider2)this.asInterface(uuid("4e322a7e-7c4d-4997-ac4f-1b848b36306e"))).abi_CreateKeyPairWithCurveParameters(__parametersSize, parameters, &_ret));
		return _ret;
	}

	private static Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProviderStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProviderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProviderStatics);
		return _staticInstance;
	}
	static Windows.Security.Cryptography.Core.AsymmetricKeyAlgorithmProvider OpenAlgorithm(HSTRING algorithm)
	{
		Windows.Security.Cryptography.Core.AsymmetricKeyAlgorithmProvider _ret;
		Debug.OK(staticInstance.abi_OpenAlgorithm(algorithm, &_ret));
		return _ret;
	}
}

interface CryptographicEngine
{
	private static Windows.Security.Cryptography.Core.ICryptographicEngineStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.ICryptographicEngineStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.ICryptographicEngineStatics);
		return _staticInstance;
	}
	static Windows.Storage.Streams.IBuffer Encrypt(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer iv)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(staticInstance.abi_Encrypt(key, data, iv, &_ret));
		return _ret;
	}
	static Windows.Storage.Streams.IBuffer Decrypt(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer iv)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(staticInstance.abi_Decrypt(key, data, iv, &_ret));
		return _ret;
	}
	static Windows.Security.Cryptography.Core.EncryptedAndAuthenticatedData EncryptAndAuthenticate(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer nonce, Windows.Storage.Streams.IBuffer authenticatedData)
	{
		Windows.Security.Cryptography.Core.EncryptedAndAuthenticatedData _ret;
		Debug.OK(staticInstance.abi_EncryptAndAuthenticate(key, data, nonce, authenticatedData, &_ret));
		return _ret;
	}
	static Windows.Storage.Streams.IBuffer DecryptAndAuthenticate(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer nonce, Windows.Storage.Streams.IBuffer authenticationTag, Windows.Storage.Streams.IBuffer authenticatedData)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(staticInstance.abi_DecryptAndAuthenticate(key, data, nonce, authenticationTag, authenticatedData, &_ret));
		return _ret;
	}
	static Windows.Storage.Streams.IBuffer Sign(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(staticInstance.abi_Sign(key, data, &_ret));
		return _ret;
	}
	static bool VerifySignature(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Storage.Streams.IBuffer data, Windows.Storage.Streams.IBuffer signature)
	{
		bool _ret;
		Debug.OK(staticInstance.abi_VerifySignature(key, data, signature, &_ret));
		return _ret;
	}
	static Windows.Storage.Streams.IBuffer DeriveKeyMaterial(Windows.Security.Cryptography.Core.CryptographicKey key, Windows.Security.Cryptography.Core.KeyDerivationParameters parameters, UINT32 desiredKeySize)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(staticInstance.abi_DeriveKeyMaterial(key, parameters, desiredKeySize, &_ret));
		return _ret;
	}
}

interface CryptographicHash : Windows.Security.Cryptography.Core.IHashComputation
{
extern(Windows):
	final void Append(Windows.Storage.Streams.IBuffer data)
	{
		Debug.OK((cast(Windows.Security.Cryptography.Core.IHashComputation)this.asInterface(uuid("5904d1b6-ad31-4603-a3a4-b1bda98e2562"))).abi_Append(data));
	}
	final Windows.Storage.Streams.IBuffer GetValueAndReset()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IHashComputation)this.asInterface(uuid("5904d1b6-ad31-4603-a3a4-b1bda98e2562"))).abi_GetValueAndReset(&_ret));
		return _ret;
	}
}

interface CryptographicKey : Windows.Security.Cryptography.Core.ICryptographicKey
{
extern(Windows):
	final UINT32 KeySize()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.ICryptographicKey)this.asInterface(uuid("ed2a3b70-8e7b-4009-8401-ffd1a62eeb27"))).get_KeySize(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer ExportDefaultPrivateKeyBlobType()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.ICryptographicKey)this.asInterface(uuid("ed2a3b70-8e7b-4009-8401-ffd1a62eeb27"))).abi_ExportDefaultPrivateKeyBlobType(&_ret));
		return _ret;
	}
	alias Export = ExportDefaultPrivateKeyBlobType;
	final Windows.Storage.Streams.IBuffer ExportPrivateKeyWithBlobType(Windows.Security.Cryptography.Core.CryptographicPrivateKeyBlobType BlobType)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.ICryptographicKey)this.asInterface(uuid("ed2a3b70-8e7b-4009-8401-ffd1a62eeb27"))).abi_ExportPrivateKeyWithBlobType(BlobType, &_ret));
		return _ret;
	}
	alias Export = ExportPrivateKeyWithBlobType;
	final Windows.Storage.Streams.IBuffer ExportDefaultPublicKeyBlobType()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.ICryptographicKey)this.asInterface(uuid("ed2a3b70-8e7b-4009-8401-ffd1a62eeb27"))).abi_ExportDefaultPublicKeyBlobType(&_ret));
		return _ret;
	}
	alias ExportPublicKey = ExportDefaultPublicKeyBlobType;
	final Windows.Storage.Streams.IBuffer ExportPublicKeyWithBlobType(Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType BlobType)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.ICryptographicKey)this.asInterface(uuid("ed2a3b70-8e7b-4009-8401-ffd1a62eeb27"))).abi_ExportPublicKeyWithBlobType(BlobType, &_ret));
		return _ret;
	}
	alias ExportPublicKey = ExportPublicKeyWithBlobType;
}

interface EccCurveNames
{
	private static Windows.Security.Cryptography.Core.IEccCurveNamesStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IEccCurveNamesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IEccCurveNamesStatics);
		return _staticInstance;
	}
	static HSTRING BrainpoolP160r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP160r1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP160t1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP160t1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP192r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP192r1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP192t1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP192t1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP224r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP224r1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP224t1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP224t1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP256r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP256r1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP256t1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP256t1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP320r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP320r1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP320t1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP320t1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP384r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP384r1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP384t1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP384t1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP512r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP512r1(&_ret));
		return _ret;
	}
	static HSTRING BrainpoolP512t1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_BrainpoolP512t1(&_ret));
		return _ret;
	}
	static HSTRING Curve25519()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Curve25519(&_ret));
		return _ret;
	}
	static HSTRING Ec192wapi()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Ec192wapi(&_ret));
		return _ret;
	}
	static HSTRING NistP192()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NistP192(&_ret));
		return _ret;
	}
	static HSTRING NistP224()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NistP224(&_ret));
		return _ret;
	}
	static HSTRING NistP256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NistP256(&_ret));
		return _ret;
	}
	static HSTRING NistP384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NistP384(&_ret));
		return _ret;
	}
	static HSTRING NistP521()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NistP521(&_ret));
		return _ret;
	}
	static HSTRING NumsP256t1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NumsP256t1(&_ret));
		return _ret;
	}
	static HSTRING NumsP384t1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NumsP384t1(&_ret));
		return _ret;
	}
	static HSTRING NumsP512t1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_NumsP512t1(&_ret));
		return _ret;
	}
	static HSTRING SecP160k1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP160k1(&_ret));
		return _ret;
	}
	static HSTRING SecP160r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP160r1(&_ret));
		return _ret;
	}
	static HSTRING SecP160r2()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP160r2(&_ret));
		return _ret;
	}
	static HSTRING SecP192k1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP192k1(&_ret));
		return _ret;
	}
	static HSTRING SecP192r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP192r1(&_ret));
		return _ret;
	}
	static HSTRING SecP224k1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP224k1(&_ret));
		return _ret;
	}
	static HSTRING SecP224r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP224r1(&_ret));
		return _ret;
	}
	static HSTRING SecP256k1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP256k1(&_ret));
		return _ret;
	}
	static HSTRING SecP256r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP256r1(&_ret));
		return _ret;
	}
	static HSTRING SecP384r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP384r1(&_ret));
		return _ret;
	}
	static HSTRING SecP521r1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_SecP521r1(&_ret));
		return _ret;
	}
	static HSTRING Wtls7()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Wtls7(&_ret));
		return _ret;
	}
	static HSTRING Wtls9()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Wtls9(&_ret));
		return _ret;
	}
	static HSTRING Wtls12()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Wtls12(&_ret));
		return _ret;
	}
	static HSTRING X962P192v1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_X962P192v1(&_ret));
		return _ret;
	}
	static HSTRING X962P192v2()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_X962P192v2(&_ret));
		return _ret;
	}
	static HSTRING X962P192v3()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_X962P192v3(&_ret));
		return _ret;
	}
	static HSTRING X962P239v1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_X962P239v1(&_ret));
		return _ret;
	}
	static HSTRING X962P239v2()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_X962P239v2(&_ret));
		return _ret;
	}
	static HSTRING X962P239v3()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_X962P239v3(&_ret));
		return _ret;
	}
	static HSTRING X962P256v1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_X962P256v1(&_ret));
		return _ret;
	}
	static Windows.Foundation.Collections.IVectorView!(HSTRING) AllEccCurveNames()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(staticInstance.get_AllEccCurveNames(&_ret));
		return _ret;
	}
}

interface EncryptedAndAuthenticatedData : Windows.Security.Cryptography.Core.IEncryptedAndAuthenticatedData
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer EncryptedData()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IEncryptedAndAuthenticatedData)this.asInterface(uuid("6fa42fe7-1ecb-4b00-bea5-60b83f862f17"))).get_EncryptedData(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer AuthenticationTag()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IEncryptedAndAuthenticatedData)this.asInterface(uuid("6fa42fe7-1ecb-4b00-bea5-60b83f862f17"))).get_AuthenticationTag(&_ret));
		return _ret;
	}
}

interface HashAlgorithmNames
{
	private static Windows.Security.Cryptography.Core.IHashAlgorithmNamesStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IHashAlgorithmNamesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IHashAlgorithmNamesStatics);
		return _staticInstance;
	}
	static HSTRING Md5()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Md5(&_ret));
		return _ret;
	}
	static HSTRING Sha1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sha1(&_ret));
		return _ret;
	}
	static HSTRING Sha256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sha256(&_ret));
		return _ret;
	}
	static HSTRING Sha384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sha384(&_ret));
		return _ret;
	}
	static HSTRING Sha512()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sha512(&_ret));
		return _ret;
	}
}

interface HashAlgorithmProvider : Windows.Security.Cryptography.Core.IHashAlgorithmProvider
{
extern(Windows):
	final HSTRING AlgorithmName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IHashAlgorithmProvider)this.asInterface(uuid("be9b3080-b2c3-422b-bce1-ec90efb5d7b5"))).get_AlgorithmName(&_ret));
		return _ret;
	}
	final UINT32 HashLength()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IHashAlgorithmProvider)this.asInterface(uuid("be9b3080-b2c3-422b-bce1-ec90efb5d7b5"))).get_HashLength(&_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer HashData(Windows.Storage.Streams.IBuffer data)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IHashAlgorithmProvider)this.asInterface(uuid("be9b3080-b2c3-422b-bce1-ec90efb5d7b5"))).abi_HashData(data, &_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Core.CryptographicHash CreateHash()
	{
		Windows.Security.Cryptography.Core.CryptographicHash _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IHashAlgorithmProvider)this.asInterface(uuid("be9b3080-b2c3-422b-bce1-ec90efb5d7b5"))).abi_CreateHash(&_ret));
		return _ret;
	}

	private static Windows.Security.Cryptography.Core.IHashAlgorithmProviderStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IHashAlgorithmProviderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IHashAlgorithmProviderStatics);
		return _staticInstance;
	}
	static Windows.Security.Cryptography.Core.HashAlgorithmProvider OpenAlgorithm(HSTRING algorithm)
	{
		Windows.Security.Cryptography.Core.HashAlgorithmProvider _ret;
		Debug.OK(staticInstance.abi_OpenAlgorithm(algorithm, &_ret));
		return _ret;
	}
}

interface KeyDerivationAlgorithmNames
{
	private static Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmNamesStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmNamesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmNamesStatics);
		return _staticInstance;
	}
	static HSTRING Pbkdf2Md5()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Pbkdf2Md5(&_ret));
		return _ret;
	}
	static HSTRING Pbkdf2Sha1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Pbkdf2Sha1(&_ret));
		return _ret;
	}
	static HSTRING Pbkdf2Sha256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Pbkdf2Sha256(&_ret));
		return _ret;
	}
	static HSTRING Pbkdf2Sha384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Pbkdf2Sha384(&_ret));
		return _ret;
	}
	static HSTRING Pbkdf2Sha512()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Pbkdf2Sha512(&_ret));
		return _ret;
	}
	static HSTRING Sp800108CtrHmacMd5()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sp800108CtrHmacMd5(&_ret));
		return _ret;
	}
	static HSTRING Sp800108CtrHmacSha1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sp800108CtrHmacSha1(&_ret));
		return _ret;
	}
	static HSTRING Sp800108CtrHmacSha256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sp800108CtrHmacSha256(&_ret));
		return _ret;
	}
	static HSTRING Sp800108CtrHmacSha384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sp800108CtrHmacSha384(&_ret));
		return _ret;
	}
	static HSTRING Sp800108CtrHmacSha512()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sp800108CtrHmacSha512(&_ret));
		return _ret;
	}
	static HSTRING Sp80056aConcatMd5()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sp80056aConcatMd5(&_ret));
		return _ret;
	}
	static HSTRING Sp80056aConcatSha1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sp80056aConcatSha1(&_ret));
		return _ret;
	}
	static HSTRING Sp80056aConcatSha256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sp80056aConcatSha256(&_ret));
		return _ret;
	}
	static HSTRING Sp80056aConcatSha384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sp80056aConcatSha384(&_ret));
		return _ret;
	}
	static HSTRING Sp80056aConcatSha512()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Sp80056aConcatSha512(&_ret));
		return _ret;
	}
}

interface KeyDerivationAlgorithmProvider : Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmProvider
{
extern(Windows):
	final HSTRING AlgorithmName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmProvider)this.asInterface(uuid("e1fba83b-4671-43b7-9158-763aaa98b6bf"))).get_AlgorithmName(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Core.CryptographicKey CreateKey(Windows.Storage.Streams.IBuffer keyMaterial)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmProvider)this.asInterface(uuid("e1fba83b-4671-43b7-9158-763aaa98b6bf"))).abi_CreateKey(keyMaterial, &_ret));
		return _ret;
	}

	private static Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmProviderStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmProviderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmProviderStatics);
		return _staticInstance;
	}
	static Windows.Security.Cryptography.Core.KeyDerivationAlgorithmProvider OpenAlgorithm(HSTRING algorithm)
	{
		Windows.Security.Cryptography.Core.KeyDerivationAlgorithmProvider _ret;
		Debug.OK(staticInstance.abi_OpenAlgorithm(algorithm, &_ret));
		return _ret;
	}
}

interface KeyDerivationParameters : Windows.Security.Cryptography.Core.IKeyDerivationParameters, Windows.Security.Cryptography.Core.IKeyDerivationParameters2
{
extern(Windows):
	final Windows.Storage.Streams.IBuffer KdfGenericBinary()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IKeyDerivationParameters)this.asInterface(uuid("7bf05967-047b-4a8c-964a-469ffd5522e2"))).get_KdfGenericBinary(&_ret));
		return _ret;
	}
	final void KdfGenericBinary(Windows.Storage.Streams.IBuffer value)
	{
		Debug.OK((cast(Windows.Security.Cryptography.Core.IKeyDerivationParameters)this.asInterface(uuid("7bf05967-047b-4a8c-964a-469ffd5522e2"))).set_KdfGenericBinary(value));
	}
	final UINT32 IterationCount()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IKeyDerivationParameters)this.asInterface(uuid("7bf05967-047b-4a8c-964a-469ffd5522e2"))).get_IterationCount(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Core.Capi1KdfTargetAlgorithm Capi1KdfTargetAlgorithm()
	{
		Windows.Security.Cryptography.Core.Capi1KdfTargetAlgorithm _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IKeyDerivationParameters2)this.asInterface(uuid("cd4166d1-417e-4f4c-b666-c0d879f3f8e0"))).get_Capi1KdfTargetAlgorithm(&_ret));
		return _ret;
	}
	final void Capi1KdfTargetAlgorithm(Windows.Security.Cryptography.Core.Capi1KdfTargetAlgorithm value)
	{
		Debug.OK((cast(Windows.Security.Cryptography.Core.IKeyDerivationParameters2)this.asInterface(uuid("cd4166d1-417e-4f4c-b666-c0d879f3f8e0"))).set_Capi1KdfTargetAlgorithm(value));
	}

	private static Windows.Security.Cryptography.Core.IKeyDerivationParametersStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IKeyDerivationParametersStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IKeyDerivationParametersStatics);
		return _staticInstance;
	}
	static Windows.Security.Cryptography.Core.KeyDerivationParameters BuildForPbkdf2(Windows.Storage.Streams.IBuffer pbkdf2Salt, UINT32 iterationCount)
	{
		Windows.Security.Cryptography.Core.KeyDerivationParameters _ret;
		Debug.OK(staticInstance.abi_BuildForPbkdf2(pbkdf2Salt, iterationCount, &_ret));
		return _ret;
	}
	static Windows.Security.Cryptography.Core.KeyDerivationParameters BuildForSP800108(Windows.Storage.Streams.IBuffer label, Windows.Storage.Streams.IBuffer context)
	{
		Windows.Security.Cryptography.Core.KeyDerivationParameters _ret;
		Debug.OK(staticInstance.abi_BuildForSP800108(label, context, &_ret));
		return _ret;
	}
	static Windows.Security.Cryptography.Core.KeyDerivationParameters BuildForSP80056a(Windows.Storage.Streams.IBuffer algorithmId, Windows.Storage.Streams.IBuffer partyUInfo, Windows.Storage.Streams.IBuffer partyVInfo, Windows.Storage.Streams.IBuffer suppPubInfo, Windows.Storage.Streams.IBuffer suppPrivInfo)
	{
		Windows.Security.Cryptography.Core.KeyDerivationParameters _ret;
		Debug.OK(staticInstance.abi_BuildForSP80056a(algorithmId, partyUInfo, partyVInfo, suppPubInfo, suppPrivInfo, &_ret));
		return _ret;
	}
}

interface MacAlgorithmNames
{
	private static Windows.Security.Cryptography.Core.IMacAlgorithmNamesStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IMacAlgorithmNamesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IMacAlgorithmNamesStatics);
		return _staticInstance;
	}
	static HSTRING HmacMd5()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HmacMd5(&_ret));
		return _ret;
	}
	static HSTRING HmacSha1()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HmacSha1(&_ret));
		return _ret;
	}
	static HSTRING HmacSha256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HmacSha256(&_ret));
		return _ret;
	}
	static HSTRING HmacSha384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HmacSha384(&_ret));
		return _ret;
	}
	static HSTRING HmacSha512()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_HmacSha512(&_ret));
		return _ret;
	}
	static HSTRING AesCmac()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AesCmac(&_ret));
		return _ret;
	}
}

interface MacAlgorithmProvider : Windows.Security.Cryptography.Core.IMacAlgorithmProvider, Windows.Security.Cryptography.Core.IMacAlgorithmProvider2
{
extern(Windows):
	final HSTRING AlgorithmName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IMacAlgorithmProvider)this.asInterface(uuid("4a3fc5c3-1cbd-41ce-a092-aa0bc5d2d2f5"))).get_AlgorithmName(&_ret));
		return _ret;
	}
	final UINT32 MacLength()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IMacAlgorithmProvider)this.asInterface(uuid("4a3fc5c3-1cbd-41ce-a092-aa0bc5d2d2f5"))).get_MacLength(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Core.CryptographicKey CreateKey(Windows.Storage.Streams.IBuffer keyMaterial)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IMacAlgorithmProvider)this.asInterface(uuid("4a3fc5c3-1cbd-41ce-a092-aa0bc5d2d2f5"))).abi_CreateKey(keyMaterial, &_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Core.CryptographicHash CreateHash(Windows.Storage.Streams.IBuffer keyMaterial)
	{
		Windows.Security.Cryptography.Core.CryptographicHash _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.IMacAlgorithmProvider2)this.asInterface(uuid("6da32a15-d931-42ed-8e7e-c301caee119c"))).abi_CreateHash(keyMaterial, &_ret));
		return _ret;
	}

	private static Windows.Security.Cryptography.Core.IMacAlgorithmProviderStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IMacAlgorithmProviderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IMacAlgorithmProviderStatics);
		return _staticInstance;
	}
	static Windows.Security.Cryptography.Core.MacAlgorithmProvider OpenAlgorithm(HSTRING algorithm)
	{
		Windows.Security.Cryptography.Core.MacAlgorithmProvider _ret;
		Debug.OK(staticInstance.abi_OpenAlgorithm(algorithm, &_ret));
		return _ret;
	}
}

interface PersistedKeyProvider
{
	private static Windows.Security.Cryptography.Core.IPersistedKeyProviderStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.IPersistedKeyProviderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.IPersistedKeyProviderStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Core.CryptographicKey) OpenKeyPairFromCertificateAsync(Windows.Security.Cryptography.Certificates.Certificate certificate, HSTRING hashAlgorithmName, Windows.Security.Cryptography.Core.CryptographicPadding padding)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Core.CryptographicKey) _ret;
		Debug.OK(staticInstance.abi_OpenKeyPairFromCertificateAsync(certificate, hashAlgorithmName, padding, &_ret));
		return _ret;
	}
	static Windows.Security.Cryptography.Core.CryptographicKey OpenPublicKeyFromCertificate(Windows.Security.Cryptography.Certificates.Certificate certificate, HSTRING hashAlgorithmName, Windows.Security.Cryptography.Core.CryptographicPadding padding)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK(staticInstance.abi_OpenPublicKeyFromCertificate(certificate, hashAlgorithmName, padding, &_ret));
		return _ret;
	}
}

interface SymmetricAlgorithmNames
{
	private static Windows.Security.Cryptography.Core.ISymmetricAlgorithmNamesStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.ISymmetricAlgorithmNamesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.ISymmetricAlgorithmNamesStatics);
		return _staticInstance;
	}
	static HSTRING DesCbc()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DesCbc(&_ret));
		return _ret;
	}
	static HSTRING DesEcb()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DesEcb(&_ret));
		return _ret;
	}
	static HSTRING TripleDesCbc()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TripleDesCbc(&_ret));
		return _ret;
	}
	static HSTRING TripleDesEcb()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TripleDesEcb(&_ret));
		return _ret;
	}
	static HSTRING Rc2Cbc()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Rc2Cbc(&_ret));
		return _ret;
	}
	static HSTRING Rc2Ecb()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Rc2Ecb(&_ret));
		return _ret;
	}
	static HSTRING AesCbc()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AesCbc(&_ret));
		return _ret;
	}
	static HSTRING AesEcb()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AesEcb(&_ret));
		return _ret;
	}
	static HSTRING AesGcm()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AesGcm(&_ret));
		return _ret;
	}
	static HSTRING AesCcm()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AesCcm(&_ret));
		return _ret;
	}
	static HSTRING AesCbcPkcs7()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AesCbcPkcs7(&_ret));
		return _ret;
	}
	static HSTRING AesEcbPkcs7()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_AesEcbPkcs7(&_ret));
		return _ret;
	}
	static HSTRING DesCbcPkcs7()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DesCbcPkcs7(&_ret));
		return _ret;
	}
	static HSTRING DesEcbPkcs7()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_DesEcbPkcs7(&_ret));
		return _ret;
	}
	static HSTRING TripleDesCbcPkcs7()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TripleDesCbcPkcs7(&_ret));
		return _ret;
	}
	static HSTRING TripleDesEcbPkcs7()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_TripleDesEcbPkcs7(&_ret));
		return _ret;
	}
	static HSTRING Rc2CbcPkcs7()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Rc2CbcPkcs7(&_ret));
		return _ret;
	}
	static HSTRING Rc2EcbPkcs7()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Rc2EcbPkcs7(&_ret));
		return _ret;
	}
	static HSTRING Rc4()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.get_Rc4(&_ret));
		return _ret;
	}
}

interface SymmetricKeyAlgorithmProvider : Windows.Security.Cryptography.Core.ISymmetricKeyAlgorithmProvider
{
extern(Windows):
	final HSTRING AlgorithmName()
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.ISymmetricKeyAlgorithmProvider)this.asInterface(uuid("3d7e4a33-3bd0-4902-8ac8-470d50d21376"))).get_AlgorithmName(&_ret));
		return _ret;
	}
	final UINT32 BlockLength()
	{
		UINT32 _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.ISymmetricKeyAlgorithmProvider)this.asInterface(uuid("3d7e4a33-3bd0-4902-8ac8-470d50d21376"))).get_BlockLength(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Core.CryptographicKey CreateSymmetricKey(Windows.Storage.Streams.IBuffer keyMaterial)
	{
		Windows.Security.Cryptography.Core.CryptographicKey _ret;
		Debug.OK((cast(Windows.Security.Cryptography.Core.ISymmetricKeyAlgorithmProvider)this.asInterface(uuid("3d7e4a33-3bd0-4902-8ac8-470d50d21376"))).abi_CreateSymmetricKey(keyMaterial, &_ret));
		return _ret;
	}

	private static Windows.Security.Cryptography.Core.ISymmetricKeyAlgorithmProviderStatics _staticInstance;
	public static Windows.Security.Cryptography.Core.ISymmetricKeyAlgorithmProviderStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Core.ISymmetricKeyAlgorithmProviderStatics);
		return _staticInstance;
	}
	static Windows.Security.Cryptography.Core.SymmetricKeyAlgorithmProvider OpenAlgorithm(HSTRING algorithm)
	{
		Windows.Security.Cryptography.Core.SymmetricKeyAlgorithmProvider _ret;
		Debug.OK(staticInstance.abi_OpenAlgorithm(algorithm, &_ret));
		return _ret;
	}
}

enum Capi1KdfTargetAlgorithm
{
	NotAes = 0,
	Aes = 1
}

enum CryptographicPadding
{
	None = 0,
	RsaOaep = 1,
	RsaPkcs1V15 = 2,
	RsaPss = 3
}

enum CryptographicPrivateKeyBlobType
{
	Pkcs8RawPrivateKeyInfo = 0,
	Pkcs1RsaPrivateKey = 1,
	BCryptPrivateKey = 2,
	Capi1PrivateKey = 3,
	BCryptEccFullPrivateKey = 4
}

enum CryptographicPublicKeyBlobType
{
	X509SubjectPublicKeyInfo = 0,
	Pkcs1RsaPublicKey = 1,
	BCryptPublicKey = 2,
	Capi1PublicKey = 3,
	BCryptEccFullPublicKey = 4
}