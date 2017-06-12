# Registers the app locally for quick testing
# When updating the exe file in the dist folder (like the build script does), the local version
# will update automatically and won't need to be repackaged again. This is good for testing.
Set-PSDebug -Trace 1
& cd dist
Remove-AppxPackage DWinRT_1.0.0.0_neutral__9nx41e4j3w2p4
Add-AppxPackage -Register .\AppxManifest.xml
& cd ..\