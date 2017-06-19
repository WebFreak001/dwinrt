# Script to generate a new certificate file (run as administrator, only need to run once)
New-SelfSignedCertificate -Type Custom -Subject "CN=WebFreak" -KeyUsage DigitalSignature -FriendlyName WebFreak -CertStoreLocation "Cert:\LocalMachine\My"
$pwd = ConvertTo-SecureString -String unsafe_password123 -Force -AsPlainText
$hash = Read-Host -Prompt 'Enter Thumbprint (The one it just printed)'
Export-PfxCertificate -cert "Cert:\LocalMachine\My\$hash" -FilePath unsafecert.pfx -Password $pwd