rem Packages the application into an appx container for distribution
rem Create a certificate using makecert.ps1 (run as administrator) before running this
cd dist
MakeAppx pack /m AppxManifest.xml /f files.txt /p ..\dwinrt.appx
cd ..
SignTool sign /debug /fd SHA256 /a /f unsafecert.pfx /p unsafe_password123 dwinrt.appx