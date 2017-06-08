module Windows.Security.Cryptography.Certificates;

import dwinrt;

@uuid("333f740c-04d8-43b3-b278-8c5fcc9be5a0")
@WinrtFactory("Windows.Security.Cryptography.Certificates.Certificate")
interface ICertificate : IInspectable
{
extern(Windows):
	HRESULT abi_BuildChainAsync(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates, Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.CertificateChain)* return_value);
	HRESULT abi_BuildChainWithParametersAsync(Windows.Foundation.Collections.IIterable!(Windows.Security.Cryptography.Certificates.Certificate) certificates, Windows.Security.Cryptography.Certificates.ChainBuildingParameters parameters, Windows.Foundation.IAsyncOperation!(Windows.Security.Cryptography.Certificates.CertificateChain)* return_value);
	HRESULT get_SerialNumber(UINT32* out___valueSize, BYTE** return_value);
	HRESULT abi_GetHashValue(UINT32* out___valueSize, BYTE** return_value);
	HRESULT abi_GetHashValueWithAlgorithm(HSTRING hashAlgorithmName, UINT32* out___valueSize, BYTE** return_value);
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
	HRESULT get_Value(UINT32* out___valueSize, BYTE** return_value);
	HRESULT set_Value(UINT32 __valueSize, BYTE* value);
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
	HRESULT get_Thumbprint(UINT32* out___valueSize, BYTE** return_value);
	HRESULT set_Thumbprint(UINT32 __valueSize, BYTE* value);
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
	HRESULT get_CurveParameters(UINT32* out___valueSize, BYTE** return_value);
	HRESULT set_CurveParameters(UINT32 __valueSize, BYTE* value);
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
	HRESULT get_Content(UINT32* out___valueSize, BYTE** return_value);
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
}

interface CertificateChain : Windows.Security.Cryptography.Certificates.ICertificateChain
{
}

interface CertificateEnrollmentManager
{
}

interface CertificateExtension : Windows.Security.Cryptography.Certificates.ICertificateExtension
{
}

interface CertificateKeyUsages : Windows.Security.Cryptography.Certificates.ICertificateKeyUsages
{
}

interface CertificateQuery : Windows.Security.Cryptography.Certificates.ICertificateQuery, Windows.Security.Cryptography.Certificates.ICertificateQuery2
{
}

interface CertificateRequestProperties : Windows.Security.Cryptography.Certificates.ICertificateRequestProperties, Windows.Security.Cryptography.Certificates.ICertificateRequestProperties2, Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3, Windows.Security.Cryptography.Certificates.ICertificateRequestProperties4
{
}

interface CertificateStore : Windows.Security.Cryptography.Certificates.ICertificateStore, Windows.Security.Cryptography.Certificates.ICertificateStore2
{
}

interface CertificateStores
{
}

interface ChainBuildingParameters : Windows.Security.Cryptography.Certificates.IChainBuildingParameters
{
}

interface ChainValidationParameters : Windows.Security.Cryptography.Certificates.IChainValidationParameters
{
}

interface CmsAttachedSignature : Windows.Security.Cryptography.Certificates.ICmsAttachedSignature
{
}

interface CmsDetachedSignature : Windows.Security.Cryptography.Certificates.ICmsDetachedSignature
{
}

interface CmsSignerInfo : Windows.Security.Cryptography.Certificates.ICmsSignerInfo
{
}

interface CmsTimestampInfo : Windows.Security.Cryptography.Certificates.ICmsTimestampInfo
{
}

interface KeyAlgorithmNames
{
}

interface KeyAttestationHelper
{
}

interface KeyStorageProviderNames
{
}

interface PfxImportParameters : Windows.Security.Cryptography.Certificates.IPfxImportParameters
{
}

interface StandardCertificateStoreNames
{
}

interface SubjectAlternativeNameInfo : Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo, Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo2
{
}

interface UserCertificateEnrollmentManager : Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager, Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager2
{
}

interface UserCertificateStore : Windows.Security.Cryptography.Certificates.IUserCertificateStore
{
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