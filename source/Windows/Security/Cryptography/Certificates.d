module Windows.Security.Cryptography.Certificates;

import dwinrt;

@uuid("333f740c-04d8-43b3-b278-8c5fcc9be5a0")
@WinrtFactory("Windows.Security.Cryptography.Certificates.Certificate")
interface ICertificate : IInspectable
{
extern(Windows):
	HRESULT abi_BuildChainAsync(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates, Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.CertificateChain)* return_value);
	HRESULT abi_BuildChainWithParametersAsync(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates, Windows.Security.Cryptography.Certificates.ChainBuildingParameters parameters, Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.CertificateChain)* return_value);
	HRESULT get_SerialNumber(UINT32* out___valueSize, ubyte** return_value);
	HRESULT abi_GetHashValue(UINT32* out___valueSize, ubyte** return_value);
	HRESULT abi_GetHashValueWithAlgorithm(HSTRING hashAlgorithmName, UINT32* out___valueSize, ubyte** return_value);
	HRESULT abi_GetCertificateBlob(Windows.Storage.Streams.IBuffer* return_value);
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT get_Issuer(HSTRING* return_value);
	HRESULT get_HasPrivateKey(bool* return_value);
	HRESULT get_IsStronglyProtected(bool* return_value);
	HRESULT get_ValidFrom(Windows.Foundation.DateTime* return_value);
	HRESULT get_ValidTo(Windows.Foundation.DateTime* return_value);
	HRESULT get_EnhancedKeyUsages(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT set_FriendlyName(HSTRING value);
	HRESULT get_FriendlyName(HSTRING* return_value);
}

@uuid("17b8374c-8a25-4d96-a492-8fc29ac4fda6")
@WinrtFactory("Windows.Security.Cryptography.Certificates.Certificate")
interface ICertificate2 : IInspectable
{
extern(Windows):
	HRESULT get_IsSecurityDeviceBound(bool* return_value);
	HRESULT get_KeyUsages(Windows.Security.Cryptography.Certificates.CertificateKeyUsages* return_value);
	HRESULT get_KeyAlgorithmName(HSTRING* return_value);
	HRESULT get_SignatureAlgorithmName(HSTRING* return_value);
	HRESULT get_SignatureHashAlgorithmName(HSTRING* return_value);
	HRESULT get_SubjectAlternativeName(Windows.Security.Cryptography.Certificates.SubjectAlternativeNameInfo* return_value);
}

@uuid("be51a966-ae5f-4652-ace7-c6d7e7724cf3")
@WinrtFactory("Windows.Security.Cryptography.Certificates.Certificate")
interface ICertificate3 : IInspectable
{
extern(Windows):
	HRESULT get_IsPerUser(bool* return_value);
	HRESULT get_StoreName(HSTRING* return_value);
	HRESULT get_KeyStorageProviderName(HSTRING* return_value);
}

@uuid("20bf5385-3691-4501-a62c-fd97278b31ee")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateChain")
interface ICertificateChain : IInspectable
{
extern(Windows):
	HRESULT abi_Validate(Windows.Security.Cryptography.Certificates.ChainValidationResult* return_status);
	HRESULT abi_ValidateWithParameters(Windows.Security.Cryptography.Certificates.ChainValidationParameters parameter, Windows.Security.Cryptography.Certificates.ChainValidationResult* return_status);
	HRESULT abi_GetCertificates(bool includeRoot, Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_certificates);
}

@uuid("8846ef3f-a986-48fb-9fd7-9aec06935bf1")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateEnrollmentManager")
interface ICertificateEnrollmentManagerStatics : IInspectable
{
extern(Windows):
	HRESULT abi_CreateRequestAsync(Windows.Security.Cryptography.Certificates.CertificateRequestProperties request, Windows.Foundation.IAsyncOperation!(HSTRING)* return_value);
	HRESULT abi_InstallCertificateAsync(HSTRING certificate, Windows.Security.Cryptography.Certificates.InstallOptions installOption, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_ImportPfxDataAsync(HSTRING pfxData, HSTRING password, Windows.Security.Cryptography.Certificates.ExportOption exportable, Windows.Security.Cryptography.Certificates.KeyProtectionLevel keyProtectionLevel, Windows.Security.Cryptography.Certificates.InstallOptions installOption, HSTRING friendlyName, Windows.Foundation.IAsyncAction* return_value);
}

@uuid("dc5b1c33-6429-4014-999c-5d9735802d1d")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateEnrollmentManager")
interface ICertificateEnrollmentManagerStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_UserCertificateEnrollmentManager(Windows.Security.Cryptography.Certificates.UserCertificateEnrollmentManager* return_value);
	HRESULT abi_ImportPfxDataToKspAsync(HSTRING pfxData, HSTRING password, Windows.Security.Cryptography.Certificates.ExportOption exportable, Windows.Security.Cryptography.Certificates.KeyProtectionLevel keyProtectionLevel, Windows.Security.Cryptography.Certificates.InstallOptions installOption, HSTRING friendlyName, HSTRING keyStorageProvider, Windows.Foundation.IAsyncAction* return_value);
}

@uuid("fdec82be-617c-425a-b72d-398b26ac7264")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateEnrollmentManager")
interface ICertificateEnrollmentManagerStatics3 : IInspectable
{
extern(Windows):
	HRESULT abi_ImportPfxDataToKspWithParametersAsync(HSTRING pfxData, HSTRING password, Windows.Security.Cryptography.Certificates.PfxImportParameters pfxImportParameters, Windows.Foundation.IAsyncAction* return_value);
}

@uuid("84cf0656-a9e6-454d-8e45-2ea7c4bcd53b")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateExtension")
interface ICertificateExtension : IInspectable
{
extern(Windows):
	HRESULT get_ObjectId(HSTRING* return_value);
	HRESULT set_ObjectId(HSTRING value);
	HRESULT get_IsCritical(bool* return_value);
	HRESULT set_IsCritical(bool value);
	HRESULT abi_EncodeValue(HSTRING value);
	HRESULT get_Value(UINT32* out___valueSize, ubyte** return_value);
	HRESULT set_Value(UINT32 __valueSize, ubyte* value);
}

@uuid("17b4221c-4baf-44a2-9608-04fb62b16942")
@WinrtFactory("Windows.Security.Cryptography.Certificates.Certificate")
interface ICertificateFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCertificate(Windows.Storage.Streams.IBuffer certBlob, Windows.Security.Cryptography.Certificates.Certificate* return_certificate);
}

@uuid("6ac6206f-e1cf-486a-b485-a69c83e46fd1")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateKeyUsages")
interface ICertificateKeyUsages : IInspectable
{
extern(Windows):
	HRESULT get_EncipherOnly(bool* return_value);
	HRESULT set_EncipherOnly(bool value);
	HRESULT get_CrlSign(bool* return_value);
	HRESULT set_CrlSign(bool value);
	HRESULT get_KeyCertificateSign(bool* return_value);
	HRESULT set_KeyCertificateSign(bool value);
	HRESULT get_KeyAgreement(bool* return_value);
	HRESULT set_KeyAgreement(bool value);
	HRESULT get_DataEncipherment(bool* return_value);
	HRESULT set_DataEncipherment(bool value);
	HRESULT get_KeyEncipherment(bool* return_value);
	HRESULT set_KeyEncipherment(bool value);
	HRESULT get_NonRepudiation(bool* return_value);
	HRESULT set_NonRepudiation(bool value);
	HRESULT get_DigitalSignature(bool* return_value);
	HRESULT set_DigitalSignature(bool value);
}

@uuid("5b082a31-a728-4916-b5ee-ffcb8acf2417")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateQuery")
interface ICertificateQuery : IInspectable
{
extern(Windows):
	HRESULT get_EnhancedKeyUsages(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_IssuerName(HSTRING* return_value);
	HRESULT set_IssuerName(HSTRING value);
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT set_FriendlyName(HSTRING value);
	HRESULT get_Thumbprint(UINT32* out___valueSize, ubyte** return_value);
	HRESULT set_Thumbprint(UINT32 __valueSize, ubyte* value);
	HRESULT get_HardwareOnly(bool* return_value);
	HRESULT set_HardwareOnly(bool value);
}

@uuid("935a0af7-0bd9-4f75-b8c2-e27a7f74eecd")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateQuery")
interface ICertificateQuery2 : IInspectable
{
extern(Windows):
	HRESULT get_IncludeDuplicates(bool* return_value);
	HRESULT set_IncludeDuplicates(bool value);
	HRESULT get_IncludeExpiredCertificates(bool* return_value);
	HRESULT set_IncludeExpiredCertificates(bool value);
	HRESULT get_StoreName(HSTRING* return_value);
	HRESULT set_StoreName(HSTRING value);
}

@uuid("487e84f6-94e2-4dce-8833-1a700a37a29a")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateRequestProperties")
interface ICertificateRequestProperties : IInspectable
{
extern(Windows):
	HRESULT get_Subject(HSTRING* return_value);
	HRESULT set_Subject(HSTRING value);
	HRESULT get_KeyAlgorithmName(HSTRING* return_value);
	HRESULT set_KeyAlgorithmName(HSTRING value);
	HRESULT get_KeySize(UINT32* return_value);
	HRESULT set_KeySize(UINT32 value);
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT set_FriendlyName(HSTRING value);
	HRESULT get_HashAlgorithmName(HSTRING* return_value);
	HRESULT set_HashAlgorithmName(HSTRING value);
	HRESULT get_Exportable(Windows.Security.Cryptography.Certificates.ExportOption* return_value);
	HRESULT set_Exportable(Windows.Security.Cryptography.Certificates.ExportOption value);
	HRESULT get_KeyUsages(Windows.Security.Cryptography.Certificates.EnrollKeyUsages* return_value);
	HRESULT set_KeyUsages(Windows.Security.Cryptography.Certificates.EnrollKeyUsages value);
	HRESULT get_KeyProtectionLevel(Windows.Security.Cryptography.Certificates.KeyProtectionLevel* return_value);
	HRESULT set_KeyProtectionLevel(Windows.Security.Cryptography.Certificates.KeyProtectionLevel value);
	HRESULT get_KeyStorageProviderName(HSTRING* return_value);
	HRESULT set_KeyStorageProviderName(HSTRING value);
}

@uuid("3da0c954-d73f-4ff3-a0a6-0677c0ada05b")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateRequestProperties")
interface ICertificateRequestProperties2 : IInspectable
{
extern(Windows):
	HRESULT get_SmartcardReaderName(HSTRING* return_value);
	HRESULT set_SmartcardReaderName(HSTRING value);
	HRESULT get_SigningCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT set_SigningCertificate(Windows.Security.Cryptography.Certificates.Certificate value);
	HRESULT get_AttestationCredentialCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT set_AttestationCredentialCertificate(Windows.Security.Cryptography.Certificates.Certificate value);
}

@uuid("e687f616-734d-46b1-9d4c-6edfdbfc845b")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateRequestProperties")
interface ICertificateRequestProperties3 : IInspectable
{
extern(Windows):
	HRESULT get_CurveName(HSTRING* return_value);
	HRESULT set_CurveName(HSTRING value);
	HRESULT get_CurveParameters(UINT32* out___valueSize, ubyte** return_value);
	HRESULT set_CurveParameters(UINT32 __valueSize, ubyte* value);
	HRESULT get_ContainerNamePrefix(HSTRING* return_value);
	HRESULT set_ContainerNamePrefix(HSTRING value);
	HRESULT get_ContainerName(HSTRING* return_value);
	HRESULT set_ContainerName(HSTRING value);
	HRESULT get_UseExistingKey(bool* return_value);
	HRESULT set_UseExistingKey(bool value);
}

@uuid("4e429ad2-1c61-4fea-b8fe-135fb19cdce4")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateRequestProperties")
interface ICertificateRequestProperties4 : IInspectable
{
extern(Windows):
	HRESULT get_SuppressedDefaults(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_SubjectAlternativeName(Windows.Security.Cryptography.Certificates.SubjectAlternativeNameInfo* return_value);
	HRESULT get_Extensions(Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.CertificateExtension)* return_value);
}

@uuid("b0bff720-344e-4331-af14-a7f7a7ebc93a")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateStore")
interface ICertificateStore : IInspectable
{
extern(Windows):
	HRESULT abi_Add(Windows.Security.Cryptography.Certificates.Certificate certificate);
	HRESULT abi_Delete(Windows.Security.Cryptography.Certificates.Certificate certificate);
}

@uuid("c7e68e4a-417d-4d1a-babd-15687e549974")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateStore")
interface ICertificateStore2 : IInspectable
{
extern(Windows):
	HRESULT get_Name(HSTRING* return_value);
}

@uuid("fbecc739-c6fe-4de7-99cf-74c3e596e032")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateStores")
interface ICertificateStoresStatics : IInspectable
{
extern(Windows):
	HRESULT abi_FindAllAsync(Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate))* return_value);
	HRESULT abi_FindAllWithQueryAsync(Windows.Security.Cryptography.Certificates.CertificateQuery query, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate))* return_value);
	HRESULT get_TrustedRootCertificationAuthorities(Windows.Security.Cryptography.Certificates.CertificateStore* return_value);
	HRESULT get_IntermediateCertificationAuthorities(Windows.Security.Cryptography.Certificates.CertificateStore* return_value);
	HRESULT abi_GetStoreByName(HSTRING storeName, Windows.Security.Cryptography.Certificates.CertificateStore* return_value);
}

@uuid("fa900b79-a0d4-4b8c-bc55-c0a37eb141ed")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CertificateStores")
interface ICertificateStoresStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_GetUserStoreByName(HSTRING storeName, Windows.Security.Cryptography.Certificates.UserCertificateStore* return_result);
}

@uuid("422ba922-7c8d-47b7-b59b-b12703733ac3")
@WinrtFactory("Windows.Security.Cryptography.Certificates.ChainBuildingParameters")
interface IChainBuildingParameters : IInspectable
{
extern(Windows):
	HRESULT get_EnhancedKeyUsages(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_ValidationTimestamp(Windows.Foundation.DateTime* return_value);
	HRESULT set_ValidationTimestamp(Windows.Foundation.DateTime value);
	HRESULT get_RevocationCheckEnabled(bool* return_value);
	HRESULT set_RevocationCheckEnabled(bool value);
	HRESULT get_NetworkRetrievalEnabled(bool* return_value);
	HRESULT set_NetworkRetrievalEnabled(bool value);
	HRESULT get_AuthorityInformationAccessEnabled(bool* return_value);
	HRESULT set_AuthorityInformationAccessEnabled(bool value);
	HRESULT get_CurrentTimeValidationEnabled(bool* return_value);
	HRESULT set_CurrentTimeValidationEnabled(bool value);
	HRESULT get_ExclusiveTrustRoots(Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.Certificate)* return_certificates);
}

@uuid("c4743b4a-7eb0-4b56-a040-b9c8e655ddf3")
@WinrtFactory("Windows.Security.Cryptography.Certificates.ChainValidationParameters")
interface IChainValidationParameters : IInspectable
{
extern(Windows):
	HRESULT get_CertificateChainPolicy(Windows.Security.Cryptography.Certificates.CertificateChainPolicy* return_value);
	HRESULT set_CertificateChainPolicy(Windows.Security.Cryptography.Certificates.CertificateChainPolicy value);
	HRESULT get_ServerDnsName(Windows.Networking.HostName* return_value);
	HRESULT set_ServerDnsName(Windows.Networking.HostName value);
}

@uuid("61899d9d-3757-4ecb-bddc-0ca357d7a936")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CmsAttachedSignature")
interface ICmsAttachedSignature : IInspectable
{
extern(Windows):
	HRESULT get_Certificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
	HRESULT get_Content(UINT32* out___valueSize, ubyte** return_value);
	HRESULT get_Signers(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.CmsSignerInfo)* return_value);
	HRESULT abi_VerifySignature(Windows.Security.Cryptography.Certificates.SignatureValidationResult* return_value);
}

@uuid("d0c8fc15-f757-4c64-a362-52cc1c77cffb")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CmsAttachedSignature")
interface ICmsAttachedSignatureFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCmsAttachedSignature(Windows.Storage.Streams.IBuffer inputBlob, Windows.Security.Cryptography.Certificates.CmsAttachedSignature* return_cmsSignedData);
}

@uuid("87989c8e-b0ad-498d-a7f5-78b59bce4b36")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CmsAttachedSignature")
interface ICmsAttachedSignatureStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GenerateSignatureAsync(Windows.Storage.Streams.IBuffer data, Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.CmsSignerInfo) signers, Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_outputBlob);
}

@uuid("0f1ef154-f65e-4536-8339-5944081db2ca")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CmsDetachedSignature")
interface ICmsDetachedSignature : IInspectable
{
extern(Windows):
	HRESULT get_Certificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
	HRESULT get_Signers(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.CmsSignerInfo)* return_value);
	HRESULT abi_VerifySignatureAsync(Windows.Storage.Streams.IInputStream data, Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.SignatureValidationResult)* return_value);
}

@uuid("c4ab3503-ae7f-4387-ad19-00f150e48ebb")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CmsDetachedSignature")
interface ICmsDetachedSignatureFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateCmsDetachedSignature(Windows.Storage.Streams.IBuffer inputBlob, Windows.Security.Cryptography.Certificates.CmsDetachedSignature* return_cmsSignedData);
}

@uuid("3d114cfd-bf9b-4682-9be6-91f57c053808")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CmsDetachedSignature")
interface ICmsDetachedSignatureStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GenerateSignatureAsync(Windows.Storage.Streams.IInputStream data, Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.CmsSignerInfo) signers, Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates, Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer)* return_outputBlob);
}

@uuid("50d020db-1d2f-4c1a-b5c5-d0188ff91f47")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CmsSignerInfo")
interface ICmsSignerInfo : IInspectable
{
extern(Windows):
	HRESULT get_Certificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT set_Certificate(Windows.Security.Cryptography.Certificates.Certificate value);
	HRESULT get_HashAlgorithmName(HSTRING* return_value);
	HRESULT set_HashAlgorithmName(HSTRING value);
	HRESULT get_TimestampInfo(Windows.Security.Cryptography.Certificates.CmsTimestampInfo* return_value);
}

@uuid("2f5f00f2-2c18-4f88-8435-c534086076f5")
@WinrtFactory("Windows.Security.Cryptography.Certificates.CmsTimestampInfo")
interface ICmsTimestampInfo : IInspectable
{
extern(Windows):
	HRESULT get_SigningCertificate(Windows.Security.Cryptography.Certificates.Certificate* return_value);
	HRESULT get_Certificates(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)* return_value);
	HRESULT get_Timestamp(Windows.Foundation.DateTime* return_value);
}

@uuid("479065d7-7ac7-4581-8c3b-d07027140448")
@WinrtFactory("Windows.Security.Cryptography.Certificates.KeyAlgorithmNames")
interface IKeyAlgorithmNamesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Rsa(HSTRING* return_value);
	HRESULT get_Dsa(HSTRING* return_value);
	HRESULT get_Ecdh256(HSTRING* return_value);
	HRESULT get_Ecdh384(HSTRING* return_value);
	HRESULT get_Ecdh521(HSTRING* return_value);
	HRESULT get_Ecdsa256(HSTRING* return_value);
	HRESULT get_Ecdsa384(HSTRING* return_value);
	HRESULT get_Ecdsa521(HSTRING* return_value);
}

@uuid("c99b5686-e1fd-4a4a-893d-a26f33dd8bb4")
@WinrtFactory("Windows.Security.Cryptography.Certificates.KeyAlgorithmNames")
interface IKeyAlgorithmNamesStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_Ecdsa(HSTRING* return_value);
	HRESULT get_Ecdh(HSTRING* return_value);
}

@uuid("1648e246-f644-4326-88be-3af102d30e0c")
@WinrtFactory("Windows.Security.Cryptography.Certificates.KeyAttestationHelper")
interface IKeyAttestationHelperStatics : IInspectable
{
extern(Windows):
	HRESULT abi_DecryptTpmAttestationCredentialAsync(HSTRING credential, Windows.Foundation.IAsyncOperation!(HSTRING)* return_value);
	HRESULT abi_GetTpmAttestationCredentialId(HSTRING credential, HSTRING* return_value);
}

@uuid("9c590b2c-a6c6-4a5e-9e64-e85d5279df97")
@WinrtFactory("Windows.Security.Cryptography.Certificates.KeyAttestationHelper")
interface IKeyAttestationHelperStatics2 : IInspectable
{
extern(Windows):
	HRESULT abi_DecryptTpmAttestationCredentialWithContainerNameAsync(HSTRING credential, HSTRING containerName, Windows.Foundation.IAsyncOperation!(HSTRING)* return_value);
}

@uuid("af186ae0-5529-4602-bd94-0aab91957b5c")
@WinrtFactory("Windows.Security.Cryptography.Certificates.KeyStorageProviderNames")
interface IKeyStorageProviderNamesStatics : IInspectable
{
extern(Windows):
	HRESULT get_SoftwareKeyStorageProvider(HSTRING* return_value);
	HRESULT get_SmartcardKeyStorageProvider(HSTRING* return_value);
	HRESULT get_PlatformKeyStorageProvider(HSTRING* return_value);
}

@uuid("262d743d-9c2e-41cc-8812-c4d971dd7c60")
@WinrtFactory("Windows.Security.Cryptography.Certificates.KeyStorageProviderNames")
interface IKeyStorageProviderNamesStatics2 : IInspectable
{
extern(Windows):
	HRESULT get_PassportKeyStorageProvider(HSTRING* return_value);
}

@uuid("680d3511-9a08-47c8-864a-2edd4d8eb46c")
@WinrtFactory("Windows.Security.Cryptography.Certificates.PfxImportParameters")
interface IPfxImportParameters : IInspectable
{
extern(Windows):
	HRESULT get_Exportable(Windows.Security.Cryptography.Certificates.ExportOption* return_value);
	HRESULT set_Exportable(Windows.Security.Cryptography.Certificates.ExportOption value);
	HRESULT get_KeyProtectionLevel(Windows.Security.Cryptography.Certificates.KeyProtectionLevel* return_value);
	HRESULT set_KeyProtectionLevel(Windows.Security.Cryptography.Certificates.KeyProtectionLevel value);
	HRESULT get_InstallOptions(Windows.Security.Cryptography.Certificates.InstallOptions* return_value);
	HRESULT set_InstallOptions(Windows.Security.Cryptography.Certificates.InstallOptions value);
	HRESULT get_FriendlyName(HSTRING* return_value);
	HRESULT set_FriendlyName(HSTRING value);
	HRESULT get_KeyStorageProviderName(HSTRING* return_value);
	HRESULT set_KeyStorageProviderName(HSTRING value);
	HRESULT get_ContainerNamePrefix(HSTRING* return_value);
	HRESULT set_ContainerNamePrefix(HSTRING value);
	HRESULT get_ReaderName(HSTRING* return_value);
	HRESULT set_ReaderName(HSTRING value);
}

@uuid("0c154adb-a496-41f8-8fe5-9e96f36efbf8")
@WinrtFactory("Windows.Security.Cryptography.Certificates.StandardCertificateStoreNames")
interface IStandardCertificateStoreNamesStatics : IInspectable
{
extern(Windows):
	HRESULT get_Personal(HSTRING* return_value);
	HRESULT get_TrustedRootCertificationAuthorities(HSTRING* return_value);
	HRESULT get_IntermediateCertificationAuthorities(HSTRING* return_value);
}

@uuid("582859f1-569d-4c20-be7b-4e1c9a0bc52b")
@WinrtFactory("Windows.Security.Cryptography.Certificates.SubjectAlternativeNameInfo")
interface ISubjectAlternativeNameInfo : IInspectable
{
extern(Windows):
	HRESULT get_EmailName(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_IPAddress(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_Url(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_DnsName(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_DistinguishedName(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
	HRESULT get_PrincipalName(Windows.Foundation.Collections.IVectorView!(HSTRING)* return_value);
}

@uuid("437a78c6-1c51-41ea-b34a-3d654398a370")
@WinrtFactory("Windows.Security.Cryptography.Certificates.SubjectAlternativeNameInfo")
interface ISubjectAlternativeNameInfo2 : IInspectable
{
extern(Windows):
	HRESULT get_EmailNames(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_IPAddresses(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Urls(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_DnsNames(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_DistinguishedNames(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_PrincipalNames(Windows.Foundation.Collections.IVector!(HSTRING)* return_value);
	HRESULT get_Extension(Windows.Security.Cryptography.Certificates.CertificateExtension* return_value);
}

@uuid("96313718-22e1-4819-b20b-ab46a6eca06e")
@WinrtFactory("Windows.Security.Cryptography.Certificates.UserCertificateEnrollmentManager")
interface IUserCertificateEnrollmentManager : IInspectable
{
extern(Windows):
	HRESULT abi_CreateRequestAsync(Windows.Security.Cryptography.Certificates.CertificateRequestProperties request, Windows.Foundation.IAsyncOperation!(HSTRING)* return_value);
	HRESULT abi_InstallCertificateAsync(HSTRING certificate, Windows.Security.Cryptography.Certificates.InstallOptions installOption, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_ImportPfxDataAsync(HSTRING pfxData, HSTRING password, Windows.Security.Cryptography.Certificates.ExportOption exportable, Windows.Security.Cryptography.Certificates.KeyProtectionLevel keyProtectionLevel, Windows.Security.Cryptography.Certificates.InstallOptions installOption, HSTRING friendlyName, Windows.Foundation.IAsyncAction* return_value);
	HRESULT abi_ImportPfxDataToKspAsync(HSTRING pfxData, HSTRING password, Windows.Security.Cryptography.Certificates.ExportOption exportable, Windows.Security.Cryptography.Certificates.KeyProtectionLevel keyProtectionLevel, Windows.Security.Cryptography.Certificates.InstallOptions installOption, HSTRING friendlyName, HSTRING keyStorageProvider, Windows.Foundation.IAsyncAction* return_value);
}

@uuid("0dad9cb1-65de-492a-b86d-fc5c482c3747")
@WinrtFactory("Windows.Security.Cryptography.Certificates.UserCertificateEnrollmentManager")
interface IUserCertificateEnrollmentManager2 : IInspectable
{
extern(Windows):
	HRESULT abi_ImportPfxDataToKspWithParametersAsync(HSTRING pfxData, HSTRING password, Windows.Security.Cryptography.Certificates.PfxImportParameters pfxImportParameters, Windows.Foundation.IAsyncAction* return_value);
}

@uuid("c9fb1d83-789f-4b4e-9180-045a757aac6d")
@WinrtFactory("Windows.Security.Cryptography.Certificates.UserCertificateStore")
interface IUserCertificateStore : IInspectable
{
extern(Windows):
	HRESULT abi_RequestAddAsync(Windows.Security.Cryptography.Certificates.Certificate certificate, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT abi_RequestDeleteAsync(Windows.Security.Cryptography.Certificates.Certificate certificate, Windows.Foundation.IAsyncOperation!(bool)* return_result);
	HRESULT get_Name(HSTRING* return_value);
}

interface Certificate : Windows.Security.Cryptography.Certificates.ICertificate, Windows.Security.Cryptography.Certificates.ICertificate2, Windows.Security.Cryptography.Certificates.ICertificate3
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.CertificateChain) BuildChainAsync(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.CertificateChain) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).abi_BuildChainAsync(certificates, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.CertificateChain) BuildChainWithParametersAsync(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates, Windows.Security.Cryptography.Certificates.ChainBuildingParameters parameters)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.CertificateChain) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).abi_BuildChainWithParametersAsync(certificates, parameters, &_ret));
		return _ret;
	}
	final ubyte* SerialNumber(UINT32* out___valueSize)
	{
		ubyte* _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).get_SerialNumber(out___valueSize, &_ret));
		return _ret;
	}
	final ubyte* GetHashValue(UINT32* out___valueSize)
	{
		ubyte* _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).abi_GetHashValue(out___valueSize, &_ret));
		return _ret;
	}
	final ubyte* GetHashValueWithAlgorithm(HSTRING hashAlgorithmName, UINT32* out___valueSize)
	{
		ubyte* _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).abi_GetHashValueWithAlgorithm(hashAlgorithmName, out___valueSize, &_ret));
		return _ret;
	}
	final Windows.Storage.Streams.IBuffer GetCertificateBlob()
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).abi_GetCertificateBlob(&_ret));
		return _ret;
	}
	final HSTRING Subject()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).get_Subject(&_ret));
		return _ret;
	}
	final HSTRING Issuer()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).get_Issuer(&_ret));
		return _ret;
	}
	final bool HasPrivateKey()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).get_HasPrivateKey(&_ret));
		return _ret;
	}
	final bool IsStronglyProtected()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).get_IsStronglyProtected(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ValidFrom()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).get_ValidFrom(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ValidTo()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).get_ValidTo(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) EnhancedKeyUsages()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).get_EnhancedKeyUsages(&_ret));
		return _ret;
	}
	final void FriendlyName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).set_FriendlyName(value));
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate).get_FriendlyName(&_ret));
		return _ret;
	}
	final bool IsSecurityDeviceBound()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate2).get_IsSecurityDeviceBound(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.CertificateKeyUsages KeyUsages()
	{
		Windows.Security.Cryptography.Certificates.CertificateKeyUsages _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate2).get_KeyUsages(&_ret));
		return _ret;
	}
	final HSTRING KeyAlgorithmName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate2).get_KeyAlgorithmName(&_ret));
		return _ret;
	}
	final HSTRING SignatureAlgorithmName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate2).get_SignatureAlgorithmName(&_ret));
		return _ret;
	}
	final HSTRING SignatureHashAlgorithmName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate2).get_SignatureHashAlgorithmName(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.SubjectAlternativeNameInfo SubjectAlternativeName()
	{
		Windows.Security.Cryptography.Certificates.SubjectAlternativeNameInfo _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate2).get_SubjectAlternativeName(&_ret));
		return _ret;
	}
	final bool IsPerUser()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate3).get_IsPerUser(&_ret));
		return _ret;
	}
	final HSTRING StoreName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate3).get_StoreName(&_ret));
		return _ret;
	}
	final HSTRING KeyStorageProviderName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificate3).get_KeyStorageProviderName(&_ret));
		return _ret;
	}
}

interface CertificateChain : Windows.Security.Cryptography.Certificates.ICertificateChain
{
extern(Windows):
	final Windows.Security.Cryptography.Certificates.ChainValidationResult Validate()
	{
		Windows.Security.Cryptography.Certificates.ChainValidationResult _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateChain).abi_Validate(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.ChainValidationResult ValidateWithParameters(Windows.Security.Cryptography.Certificates.ChainValidationParameters parameter)
	{
		Windows.Security.Cryptography.Certificates.ChainValidationResult _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateChain).abi_ValidateWithParameters(parameter, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) GetCertificates(bool includeRoot)
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateChain).abi_GetCertificates(includeRoot, &_ret));
		return _ret;
	}
}

interface CertificateEnrollmentManager
{
	private static Windows.Security.Cryptography.Certificates.ICertificateEnrollmentManagerStatics _staticInstance;
	public static Windows.Security.Cryptography.Certificates.ICertificateEnrollmentManagerStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Certificates.ICertificateEnrollmentManagerStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) CreateRequestAsync(Windows.Security.Cryptography.Certificates.CertificateRequestProperties request)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.ICertificateEnrollmentManagerStatics).abi_CreateRequestAsync(request, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction InstallCertificateAsync(HSTRING certificate, Windows.Security.Cryptography.Certificates.InstallOptions installOption)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.ICertificateEnrollmentManagerStatics).abi_InstallCertificateAsync(certificate, installOption, &_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncAction ImportPfxDataAsync(HSTRING pfxData, HSTRING password, Windows.Security.Cryptography.Certificates.ExportOption exportable, Windows.Security.Cryptography.Certificates.KeyProtectionLevel keyProtectionLevel, Windows.Security.Cryptography.Certificates.InstallOptions installOption, HSTRING friendlyName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.ICertificateEnrollmentManagerStatics).abi_ImportPfxDataAsync(pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName, &_ret));
		return _ret;
	}
}

interface CertificateExtension : Windows.Security.Cryptography.Certificates.ICertificateExtension
{
extern(Windows):
	final HSTRING ObjectId()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateExtension).get_ObjectId(&_ret));
		return _ret;
	}
	final void ObjectId(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateExtension).set_ObjectId(value));
	}
	final bool IsCritical()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateExtension).get_IsCritical(&_ret));
		return _ret;
	}
	final void IsCritical(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateExtension).set_IsCritical(value));
	}
	final void EncodeValue(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateExtension).abi_EncodeValue(value));
	}
	final ubyte* Value(UINT32* out___valueSize)
	{
		ubyte* _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateExtension).get_Value(out___valueSize, &_ret));
		return _ret;
	}
	final void Value(UINT32 __valueSize, ubyte* value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateExtension).set_Value(__valueSize, value));
	}
}

interface CertificateKeyUsages : Windows.Security.Cryptography.Certificates.ICertificateKeyUsages
{
extern(Windows):
	final bool EncipherOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).get_EncipherOnly(&_ret));
		return _ret;
	}
	final void EncipherOnly(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).set_EncipherOnly(value));
	}
	final bool CrlSign()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).get_CrlSign(&_ret));
		return _ret;
	}
	final void CrlSign(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).set_CrlSign(value));
	}
	final bool KeyCertificateSign()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).get_KeyCertificateSign(&_ret));
		return _ret;
	}
	final void KeyCertificateSign(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).set_KeyCertificateSign(value));
	}
	final bool KeyAgreement()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).get_KeyAgreement(&_ret));
		return _ret;
	}
	final void KeyAgreement(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).set_KeyAgreement(value));
	}
	final bool DataEncipherment()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).get_DataEncipherment(&_ret));
		return _ret;
	}
	final void DataEncipherment(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).set_DataEncipherment(value));
	}
	final bool KeyEncipherment()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).get_KeyEncipherment(&_ret));
		return _ret;
	}
	final void KeyEncipherment(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).set_KeyEncipherment(value));
	}
	final bool NonRepudiation()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).get_NonRepudiation(&_ret));
		return _ret;
	}
	final void NonRepudiation(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).set_NonRepudiation(value));
	}
	final bool DigitalSignature()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).get_DigitalSignature(&_ret));
		return _ret;
	}
	final void DigitalSignature(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateKeyUsages).set_DigitalSignature(value));
	}
}

interface CertificateQuery : Windows.Security.Cryptography.Certificates.ICertificateQuery, Windows.Security.Cryptography.Certificates.ICertificateQuery2
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(HSTRING) EnhancedKeyUsages()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery).get_EnhancedKeyUsages(&_ret));
		return _ret;
	}
	final HSTRING IssuerName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery).get_IssuerName(&_ret));
		return _ret;
	}
	final void IssuerName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery).set_IssuerName(value));
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery).get_FriendlyName(&_ret));
		return _ret;
	}
	final void FriendlyName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery).set_FriendlyName(value));
	}
	final ubyte* Thumbprint(UINT32* out___valueSize)
	{
		ubyte* _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery).get_Thumbprint(out___valueSize, &_ret));
		return _ret;
	}
	final void Thumbprint(UINT32 __valueSize, ubyte* value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery).set_Thumbprint(__valueSize, value));
	}
	final bool HardwareOnly()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery).get_HardwareOnly(&_ret));
		return _ret;
	}
	final void HardwareOnly(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery).set_HardwareOnly(value));
	}
	final bool IncludeDuplicates()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery2).get_IncludeDuplicates(&_ret));
		return _ret;
	}
	final void IncludeDuplicates(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery2).set_IncludeDuplicates(value));
	}
	final bool IncludeExpiredCertificates()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery2).get_IncludeExpiredCertificates(&_ret));
		return _ret;
	}
	final void IncludeExpiredCertificates(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery2).set_IncludeExpiredCertificates(value));
	}
	final HSTRING StoreName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery2).get_StoreName(&_ret));
		return _ret;
	}
	final void StoreName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateQuery2).set_StoreName(value));
	}
}

interface CertificateRequestProperties : Windows.Security.Cryptography.Certificates.ICertificateRequestProperties, Windows.Security.Cryptography.Certificates.ICertificateRequestProperties2, Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3, Windows.Security.Cryptography.Certificates.ICertificateRequestProperties4
{
extern(Windows):
	final HSTRING Subject()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).get_Subject(&_ret));
		return _ret;
	}
	final void Subject(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).set_Subject(value));
	}
	final HSTRING KeyAlgorithmName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).get_KeyAlgorithmName(&_ret));
		return _ret;
	}
	final void KeyAlgorithmName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).set_KeyAlgorithmName(value));
	}
	final UINT32 KeySize()
	{
		UINT32 _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).get_KeySize(&_ret));
		return _ret;
	}
	final void KeySize(UINT32 value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).set_KeySize(value));
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).get_FriendlyName(&_ret));
		return _ret;
	}
	final void FriendlyName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).set_FriendlyName(value));
	}
	final HSTRING HashAlgorithmName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).get_HashAlgorithmName(&_ret));
		return _ret;
	}
	final void HashAlgorithmName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).set_HashAlgorithmName(value));
	}
	final Windows.Security.Cryptography.Certificates.ExportOption Exportable()
	{
		Windows.Security.Cryptography.Certificates.ExportOption _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).get_Exportable(&_ret));
		return _ret;
	}
	final void Exportable(Windows.Security.Cryptography.Certificates.ExportOption value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).set_Exportable(value));
	}
	final Windows.Security.Cryptography.Certificates.EnrollKeyUsages KeyUsages()
	{
		Windows.Security.Cryptography.Certificates.EnrollKeyUsages _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).get_KeyUsages(&_ret));
		return _ret;
	}
	final void KeyUsages(Windows.Security.Cryptography.Certificates.EnrollKeyUsages value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).set_KeyUsages(value));
	}
	final Windows.Security.Cryptography.Certificates.KeyProtectionLevel KeyProtectionLevel()
	{
		Windows.Security.Cryptography.Certificates.KeyProtectionLevel _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).get_KeyProtectionLevel(&_ret));
		return _ret;
	}
	final void KeyProtectionLevel(Windows.Security.Cryptography.Certificates.KeyProtectionLevel value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).set_KeyProtectionLevel(value));
	}
	final HSTRING KeyStorageProviderName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).get_KeyStorageProviderName(&_ret));
		return _ret;
	}
	final void KeyStorageProviderName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties).set_KeyStorageProviderName(value));
	}
	final HSTRING SmartcardReaderName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties2).get_SmartcardReaderName(&_ret));
		return _ret;
	}
	final void SmartcardReaderName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties2).set_SmartcardReaderName(value));
	}
	final Windows.Security.Cryptography.Certificates.Certificate SigningCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties2).get_SigningCertificate(&_ret));
		return _ret;
	}
	final void SigningCertificate(Windows.Security.Cryptography.Certificates.Certificate value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties2).set_SigningCertificate(value));
	}
	final Windows.Security.Cryptography.Certificates.Certificate AttestationCredentialCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties2).get_AttestationCredentialCertificate(&_ret));
		return _ret;
	}
	final void AttestationCredentialCertificate(Windows.Security.Cryptography.Certificates.Certificate value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties2).set_AttestationCredentialCertificate(value));
	}
	final HSTRING CurveName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3).get_CurveName(&_ret));
		return _ret;
	}
	final void CurveName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3).set_CurveName(value));
	}
	final ubyte* CurveParameters(UINT32* out___valueSize)
	{
		ubyte* _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3).get_CurveParameters(out___valueSize, &_ret));
		return _ret;
	}
	final void CurveParameters(UINT32 __valueSize, ubyte* value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3).set_CurveParameters(__valueSize, value));
	}
	final HSTRING ContainerNamePrefix()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3).get_ContainerNamePrefix(&_ret));
		return _ret;
	}
	final void ContainerNamePrefix(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3).set_ContainerNamePrefix(value));
	}
	final HSTRING ContainerName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3).get_ContainerName(&_ret));
		return _ret;
	}
	final void ContainerName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3).set_ContainerName(value));
	}
	final bool UseExistingKey()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3).get_UseExistingKey(&_ret));
		return _ret;
	}
	final void UseExistingKey(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3).set_UseExistingKey(value));
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) SuppressedDefaults()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties4).get_SuppressedDefaults(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.SubjectAlternativeNameInfo SubjectAlternativeName()
	{
		Windows.Security.Cryptography.Certificates.SubjectAlternativeNameInfo _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties4).get_SubjectAlternativeName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.CertificateExtension) Extensions()
	{
		Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.CertificateExtension) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateRequestProperties4).get_Extensions(&_ret));
		return _ret;
	}
}

interface CertificateStore : Windows.Security.Cryptography.Certificates.ICertificateStore, Windows.Security.Cryptography.Certificates.ICertificateStore2
{
extern(Windows):
	final void Add(Windows.Security.Cryptography.Certificates.Certificate certificate)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateStore).abi_Add(certificate));
	}
	final void Delete(Windows.Security.Cryptography.Certificates.Certificate certificate)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateStore).abi_Delete(certificate));
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICertificateStore2).get_Name(&_ret));
		return _ret;
	}
}

interface CertificateStores
{
	private static Windows.Security.Cryptography.Certificates.ICertificateStoresStatics _staticInstance;
	public static Windows.Security.Cryptography.Certificates.ICertificateStoresStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Certificates.ICertificateStoresStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)) FindAllAsync()
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.ICertificateStoresStatics).abi_FindAllAsync(&_ret));
		return _ret;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)) FindAllWithQueryAsync(Windows.Security.Cryptography.Certificates.CertificateQuery query)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate)) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.ICertificateStoresStatics).abi_FindAllWithQueryAsync(query, &_ret));
		return _ret;
	}
	static Windows.Security.Cryptography.Certificates.CertificateStore TrustedRootCertificationAuthorities()
	{
		Windows.Security.Cryptography.Certificates.CertificateStore _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.ICertificateStoresStatics).get_TrustedRootCertificationAuthorities(&_ret));
		return _ret;
	}
	static Windows.Security.Cryptography.Certificates.CertificateStore IntermediateCertificationAuthorities()
	{
		Windows.Security.Cryptography.Certificates.CertificateStore _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.ICertificateStoresStatics).get_IntermediateCertificationAuthorities(&_ret));
		return _ret;
	}
	static Windows.Security.Cryptography.Certificates.CertificateStore GetStoreByName(HSTRING storeName)
	{
		Windows.Security.Cryptography.Certificates.CertificateStore _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.ICertificateStoresStatics).abi_GetStoreByName(storeName, &_ret));
		return _ret;
	}
}

interface ChainBuildingParameters : Windows.Security.Cryptography.Certificates.IChainBuildingParameters
{
extern(Windows):
	final Windows.Foundation.Collections.IVector!(HSTRING) EnhancedKeyUsages()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).get_EnhancedKeyUsages(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime ValidationTimestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).get_ValidationTimestamp(&_ret));
		return _ret;
	}
	final void ValidationTimestamp(Windows.Foundation.DateTime value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).set_ValidationTimestamp(value));
	}
	final bool RevocationCheckEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).get_RevocationCheckEnabled(&_ret));
		return _ret;
	}
	final void RevocationCheckEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).set_RevocationCheckEnabled(value));
	}
	final bool NetworkRetrievalEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).get_NetworkRetrievalEnabled(&_ret));
		return _ret;
	}
	final void NetworkRetrievalEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).set_NetworkRetrievalEnabled(value));
	}
	final bool AuthorityInformationAccessEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).get_AuthorityInformationAccessEnabled(&_ret));
		return _ret;
	}
	final void AuthorityInformationAccessEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).set_AuthorityInformationAccessEnabled(value));
	}
	final bool CurrentTimeValidationEnabled()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).get_CurrentTimeValidationEnabled(&_ret));
		return _ret;
	}
	final void CurrentTimeValidationEnabled(bool value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).set_CurrentTimeValidationEnabled(value));
	}
	final Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.Certificate) ExclusiveTrustRoots()
	{
		Windows.Foundation.Collections.IVector!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainBuildingParameters).get_ExclusiveTrustRoots(&_ret));
		return _ret;
	}
}

interface ChainValidationParameters : Windows.Security.Cryptography.Certificates.IChainValidationParameters
{
extern(Windows):
	final Windows.Security.Cryptography.Certificates.CertificateChainPolicy CertificateChainPolicy()
	{
		Windows.Security.Cryptography.Certificates.CertificateChainPolicy _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainValidationParameters).get_CertificateChainPolicy(&_ret));
		return _ret;
	}
	final void CertificateChainPolicy(Windows.Security.Cryptography.Certificates.CertificateChainPolicy value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainValidationParameters).set_CertificateChainPolicy(value));
	}
	final Windows.Networking.HostName ServerDnsName()
	{
		Windows.Networking.HostName _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainValidationParameters).get_ServerDnsName(&_ret));
		return _ret;
	}
	final void ServerDnsName(Windows.Networking.HostName value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IChainValidationParameters).set_ServerDnsName(value));
	}
}

interface CmsAttachedSignature : Windows.Security.Cryptography.Certificates.ICmsAttachedSignature
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) Certificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsAttachedSignature).get_Certificates(&_ret));
		return _ret;
	}
	final ubyte* Content(UINT32* out___valueSize)
	{
		ubyte* _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsAttachedSignature).get_Content(out___valueSize, &_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.CmsSignerInfo) Signers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.CmsSignerInfo) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsAttachedSignature).get_Signers(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.SignatureValidationResult VerifySignature()
	{
		Windows.Security.Cryptography.Certificates.SignatureValidationResult _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsAttachedSignature).abi_VerifySignature(&_ret));
		return _ret;
	}

	private static Windows.Security.Cryptography.Certificates.ICmsAttachedSignatureStatics _staticInstance;
	public static Windows.Security.Cryptography.Certificates.ICmsAttachedSignatureStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Certificates.ICmsAttachedSignatureStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) GenerateSignatureAsync(Windows.Storage.Streams.IBuffer data, Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.CmsSignerInfo) signers, Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.ICmsAttachedSignatureStatics).abi_GenerateSignatureAsync(data, signers, certificates, &_ret));
		return _ret;
	}
}

interface CmsDetachedSignature : Windows.Security.Cryptography.Certificates.ICmsDetachedSignature
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) Certificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsDetachedSignature).get_Certificates(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.CmsSignerInfo) Signers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.CmsSignerInfo) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsDetachedSignature).get_Signers(&_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.SignatureValidationResult) VerifySignatureAsync(Windows.Storage.Streams.IInputStream data)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.SignatureValidationResult) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsDetachedSignature).abi_VerifySignatureAsync(data, &_ret));
		return _ret;
	}

	private static Windows.Security.Cryptography.Certificates.ICmsDetachedSignatureStatics _staticInstance;
	public static Windows.Security.Cryptography.Certificates.ICmsDetachedSignatureStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Certificates.ICmsDetachedSignatureStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) GenerateSignatureAsync(Windows.Storage.Streams.IInputStream data, Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.CmsSignerInfo) signers, Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Storage.Streams.IBuffer) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.ICmsDetachedSignatureStatics).abi_GenerateSignatureAsync(data, signers, certificates, &_ret));
		return _ret;
	}
}

interface CmsSignerInfo : Windows.Security.Cryptography.Certificates.ICmsSignerInfo
{
extern(Windows):
	final Windows.Security.Cryptography.Certificates.Certificate Certificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsSignerInfo).get_Certificate(&_ret));
		return _ret;
	}
	final void Certificate(Windows.Security.Cryptography.Certificates.Certificate value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsSignerInfo).set_Certificate(value));
	}
	final HSTRING HashAlgorithmName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsSignerInfo).get_HashAlgorithmName(&_ret));
		return _ret;
	}
	final void HashAlgorithmName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsSignerInfo).set_HashAlgorithmName(value));
	}
	final Windows.Security.Cryptography.Certificates.CmsTimestampInfo TimestampInfo()
	{
		Windows.Security.Cryptography.Certificates.CmsTimestampInfo _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsSignerInfo).get_TimestampInfo(&_ret));
		return _ret;
	}
}

interface CmsTimestampInfo : Windows.Security.Cryptography.Certificates.ICmsTimestampInfo
{
extern(Windows):
	final Windows.Security.Cryptography.Certificates.Certificate SigningCertificate()
	{
		Windows.Security.Cryptography.Certificates.Certificate _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsTimestampInfo).get_SigningCertificate(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) Certificates()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.Security.Cryptography.Certificates.Certificate) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsTimestampInfo).get_Certificates(&_ret));
		return _ret;
	}
	final Windows.Foundation.DateTime Timestamp()
	{
		Windows.Foundation.DateTime _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ICmsTimestampInfo).get_Timestamp(&_ret));
		return _ret;
	}
}

interface KeyAlgorithmNames
{
	private static Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics _staticInstance;
	public static Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics);
		return _staticInstance;
	}
	static HSTRING Rsa()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics).get_Rsa(&_ret));
		return _ret;
	}
	static HSTRING Dsa()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics).get_Dsa(&_ret));
		return _ret;
	}
	static HSTRING Ecdh256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics).get_Ecdh256(&_ret));
		return _ret;
	}
	static HSTRING Ecdh384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics).get_Ecdh384(&_ret));
		return _ret;
	}
	static HSTRING Ecdh521()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics).get_Ecdh521(&_ret));
		return _ret;
	}
	static HSTRING Ecdsa256()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics).get_Ecdsa256(&_ret));
		return _ret;
	}
	static HSTRING Ecdsa384()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics).get_Ecdsa384(&_ret));
		return _ret;
	}
	static HSTRING Ecdsa521()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics).get_Ecdsa521(&_ret));
		return _ret;
	}
}

interface KeyAttestationHelper
{
	private static Windows.Security.Cryptography.Certificates.IKeyAttestationHelperStatics _staticInstance;
	public static Windows.Security.Cryptography.Certificates.IKeyAttestationHelperStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Certificates.IKeyAttestationHelperStatics);
		return _staticInstance;
	}
	static Windows.Foundation.IAsyncOperation!(HSTRING) DecryptTpmAttestationCredentialAsync(HSTRING credential)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyAttestationHelperStatics).abi_DecryptTpmAttestationCredentialAsync(credential, &_ret));
		return _ret;
	}
	static HSTRING GetTpmAttestationCredentialId(HSTRING credential)
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyAttestationHelperStatics).abi_GetTpmAttestationCredentialId(credential, &_ret));
		return _ret;
	}
}

interface KeyStorageProviderNames
{
	private static Windows.Security.Cryptography.Certificates.IKeyStorageProviderNamesStatics _staticInstance;
	public static Windows.Security.Cryptography.Certificates.IKeyStorageProviderNamesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Certificates.IKeyStorageProviderNamesStatics);
		return _staticInstance;
	}
	static HSTRING SoftwareKeyStorageProvider()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyStorageProviderNamesStatics).get_SoftwareKeyStorageProvider(&_ret));
		return _ret;
	}
	static HSTRING SmartcardKeyStorageProvider()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyStorageProviderNamesStatics).get_SmartcardKeyStorageProvider(&_ret));
		return _ret;
	}
	static HSTRING PlatformKeyStorageProvider()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IKeyStorageProviderNamesStatics).get_PlatformKeyStorageProvider(&_ret));
		return _ret;
	}
}

interface PfxImportParameters : Windows.Security.Cryptography.Certificates.IPfxImportParameters
{
extern(Windows):
	final Windows.Security.Cryptography.Certificates.ExportOption Exportable()
	{
		Windows.Security.Cryptography.Certificates.ExportOption _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).get_Exportable(&_ret));
		return _ret;
	}
	final void Exportable(Windows.Security.Cryptography.Certificates.ExportOption value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).set_Exportable(value));
	}
	final Windows.Security.Cryptography.Certificates.KeyProtectionLevel KeyProtectionLevel()
	{
		Windows.Security.Cryptography.Certificates.KeyProtectionLevel _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).get_KeyProtectionLevel(&_ret));
		return _ret;
	}
	final void KeyProtectionLevel(Windows.Security.Cryptography.Certificates.KeyProtectionLevel value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).set_KeyProtectionLevel(value));
	}
	final Windows.Security.Cryptography.Certificates.InstallOptions InstallOptions()
	{
		Windows.Security.Cryptography.Certificates.InstallOptions _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).get_InstallOptions(&_ret));
		return _ret;
	}
	final void InstallOptions(Windows.Security.Cryptography.Certificates.InstallOptions value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).set_InstallOptions(value));
	}
	final HSTRING FriendlyName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).get_FriendlyName(&_ret));
		return _ret;
	}
	final void FriendlyName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).set_FriendlyName(value));
	}
	final HSTRING KeyStorageProviderName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).get_KeyStorageProviderName(&_ret));
		return _ret;
	}
	final void KeyStorageProviderName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).set_KeyStorageProviderName(value));
	}
	final HSTRING ContainerNamePrefix()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).get_ContainerNamePrefix(&_ret));
		return _ret;
	}
	final void ContainerNamePrefix(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).set_ContainerNamePrefix(value));
	}
	final HSTRING ReaderName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).get_ReaderName(&_ret));
		return _ret;
	}
	final void ReaderName(HSTRING value)
	{
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IPfxImportParameters).set_ReaderName(value));
	}
}

interface StandardCertificateStoreNames
{
	private static Windows.Security.Cryptography.Certificates.IStandardCertificateStoreNamesStatics _staticInstance;
	public static Windows.Security.Cryptography.Certificates.IStandardCertificateStoreNamesStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.Security.Cryptography.Certificates.IStandardCertificateStoreNamesStatics);
		return _staticInstance;
	}
	static HSTRING Personal()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IStandardCertificateStoreNamesStatics).get_Personal(&_ret));
		return _ret;
	}
	static HSTRING TrustedRootCertificationAuthorities()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IStandardCertificateStoreNamesStatics).get_TrustedRootCertificationAuthorities(&_ret));
		return _ret;
	}
	static HSTRING IntermediateCertificationAuthorities()
	{
		HSTRING _ret;
		Debug.OK(staticInstance.as!(Windows.Security.Cryptography.Certificates.IStandardCertificateStoreNamesStatics).get_IntermediateCertificationAuthorities(&_ret));
		return _ret;
	}
}

interface SubjectAlternativeNameInfo : Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo, Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo2
{
extern(Windows):
	final Windows.Foundation.Collections.IVectorView!(HSTRING) EmailName()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo).get_EmailName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) IPAddress()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo).get_IPAddress(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) Url()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo).get_Url(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) DnsName()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo).get_DnsName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) DistinguishedName()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo).get_DistinguishedName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(HSTRING) PrincipalName()
	{
		Windows.Foundation.Collections.IVectorView!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo).get_PrincipalName(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) EmailNames()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo2).get_EmailNames(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) IPAddresses()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo2).get_IPAddresses(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) Urls()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo2).get_Urls(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) DnsNames()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo2).get_DnsNames(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) DistinguishedNames()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo2).get_DistinguishedNames(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVector!(HSTRING) PrincipalNames()
	{
		Windows.Foundation.Collections.IVector!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo2).get_PrincipalNames(&_ret));
		return _ret;
	}
	final Windows.Security.Cryptography.Certificates.CertificateExtension Extension()
	{
		Windows.Security.Cryptography.Certificates.CertificateExtension _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo2).get_Extension(&_ret));
		return _ret;
	}
}

interface UserCertificateEnrollmentManager : Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager, Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager2
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(HSTRING) CreateRequestAsync(Windows.Security.Cryptography.Certificates.CertificateRequestProperties request)
	{
		Windows.Foundation.IAsyncOperation!(HSTRING) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager).abi_CreateRequestAsync(request, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction InstallCertificateAsync(HSTRING certificate, Windows.Security.Cryptography.Certificates.InstallOptions installOption)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager).abi_InstallCertificateAsync(certificate, installOption, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ImportPfxDataAsync(HSTRING pfxData, HSTRING password, Windows.Security.Cryptography.Certificates.ExportOption exportable, Windows.Security.Cryptography.Certificates.KeyProtectionLevel keyProtectionLevel, Windows.Security.Cryptography.Certificates.InstallOptions installOption, HSTRING friendlyName)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager).abi_ImportPfxDataAsync(pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ImportPfxDataToKspAsync(HSTRING pfxData, HSTRING password, Windows.Security.Cryptography.Certificates.ExportOption exportable, Windows.Security.Cryptography.Certificates.KeyProtectionLevel keyProtectionLevel, Windows.Security.Cryptography.Certificates.InstallOptions installOption, HSTRING friendlyName, HSTRING keyStorageProvider)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager).abi_ImportPfxDataToKspAsync(pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName, keyStorageProvider, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncAction ImportPfxDataToKspWithParametersAsync(HSTRING pfxData, HSTRING password, Windows.Security.Cryptography.Certificates.PfxImportParameters pfxImportParameters)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager2).abi_ImportPfxDataToKspWithParametersAsync(pfxData, password, pfxImportParameters, &_ret));
		return _ret;
	}
}

interface UserCertificateStore : Windows.Security.Cryptography.Certificates.IUserCertificateStore
{
extern(Windows):
	final Windows.Foundation.IAsyncOperation!(bool) RequestAddAsync(Windows.Security.Cryptography.Certificates.Certificate certificate)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IUserCertificateStore).abi_RequestAddAsync(certificate, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(bool) RequestDeleteAsync(Windows.Security.Cryptography.Certificates.Certificate certificate)
	{
		Windows.Foundation.IAsyncOperation!(bool) _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IUserCertificateStore).abi_RequestDeleteAsync(certificate, &_ret));
		return _ret;
	}
	final HSTRING Name()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.Security.Cryptography.Certificates.IUserCertificateStore).get_Name(&_ret));
		return _ret;
	}
}

enum CertificateChainPolicy
{
	Base = 0,
	Ssl = 1,
	NTAuthentication = 2,
	MicrosoftRoot = 3
}

enum ChainValidationResult
{
	Success = 0,
	Untrusted = 1,
	Revoked = 2,
	Expired = 3,
	IncompleteChain = 4,
	InvalidSignature = 5,
	WrongUsage = 6,
	InvalidName = 7,
	InvalidCertificateAuthorityPolicy = 8,
	BasicConstraintsError = 9,
	UnknownCriticalExtension = 10,
	RevocationInformationMissing = 11,
	RevocationFailure = 12,
	OtherErrors = 13
}

@bitflags
enum EnrollKeyUsages
{
	None = 0x0,
	Decryption = 0x1,
	Signing = 0x2,
	KeyAgreement = 0x4,
	All = 0xFFFFFF
}

enum ExportOption
{
	NotExportable = 0,
	Exportable = 1
}

@bitflags
enum InstallOptions
{
	None = 0x0,
	DeleteExpired = 0x1
}

enum KeyProtectionLevel
{
	NoConsent = 0,
	ConsentOnly = 1,
	ConsentWithPassword = 2,
	ConsentWithFingerprint = 3
}

enum KeySize
{
	Invalid = 0,
	Rsa2048 = 2048,
	Rsa4096 = 4096
}

enum SignatureValidationResult
{
	Success = 0,
	InvalidParameter = 1,
	BadMessage = 2,
	InvalidSignature = 3,
	OtherErrors = 4
}